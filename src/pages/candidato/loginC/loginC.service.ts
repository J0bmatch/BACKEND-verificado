import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';
import { Habilidades, Interesses} from '../../ambos/compartilhado.entity'; // Importe a entidade Habilidades

@Injectable()
export class LoginCService {
  constructor(
    @InjectRepository(Candidato)
    private readonly candidatoRepository: Repository<Candidato>,
    
    @InjectRepository(Habilidades)  // Injeção do repositório de Habilidades
    private readonly habilidadesRepository: Repository<Habilidades>,

    @InjectRepository(Interesses)  // Injeção do repositório de Habilidades
    private readonly interessesRepository: Repository<Interesses>,
  ) {}


  // Verifica login com RM e data de nascimento
  async verificarLogin(rm: string, dataNascimento: string): Promise<{ mensagem: string }> {
    const candidato = await this.candidatoRepository.findOne({
      where: { rm, dataNascimento },
    });

    if (!candidato) {
      return { mensagem: 'Candidato não registrado.' };
    }

    const primeiroAcesso = !candidato.bio;
    if (primeiroAcesso) {
      return { mensagem: 'Primeiro acesso' };
    } else {
      return { mensagem: 'Acesso já realizado anteriormente' };
    }
  }

  // Atualiza os dados do candidato
  async atualizarCadastro(rm: string, dados: Partial<Candidato>): Promise<{ mensagem: string }> {
    const candidato = await this.candidatoRepository.findOne({
      where: { rm },
      relations: ['habilidades', 'interesses'], // Carregar as habilidades e interesses
    });
  
    if (!candidato) {
      throw new NotFoundException('Candidato não encontrado.');
    }
  
    // Atualizando apenas os campos que vieram nos dados
    if (dados.nome) candidato.nome = dados.nome;
    if (dados.email) candidato.email = dados.email;
    if (dados.telefone) candidato.telefone = dados.telefone;
    if (dados.bio) candidato.bio = dados.bio;
    if (dados.experiencia) candidato.experiencia = dados.experiencia;
  
    // Atualizando habilidades
    if (dados.habilidades) {
      const habilidades = await this.habilidadesRepository.findByIds(dados.habilidades);
      candidato.habilidades = habilidades; // Atualiza a relação ManyToMany
    }
  
    // Atualizando interesses
    if (dados.interesses) {
      const interesses = await this.interessesRepository.findByIds(dados.interesses);
      candidato.interesses = interesses; // Atualiza a relação ManyToMany
    }
  
    // Salvar as alterações no banco
    await this.candidatoRepository.save(candidato);
  
    return { mensagem: 'Dados atualizados com sucesso.' };
  }

  async buscarCandidatoPorRm(rm: string): Promise<Candidato> {
  // Busca do candidato com as relações de habilidades e interesses
  return this.candidatoRepository.findOne({
    where: { rm },
    relations: ['habilidades', 'interesses'], // Relacionando corretamente com as tabelas de habilidades e interesses
  });
}
}
