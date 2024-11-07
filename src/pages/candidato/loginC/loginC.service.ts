import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';
import { Habilidades, Interesses, Endereco} from '../../ambos/compartilhado.entity'; // Importe a entidade Habilidades

@Injectable()
export class LoginCService {
  constructor(
    @InjectRepository(Candidato)
    private readonly candidatoRepository: Repository<Candidato>,
    
    @InjectRepository(Habilidades)  // Injeção do repositório de Habilidades
    private readonly habilidadesRepository: Repository<Habilidades>,

    @InjectRepository(Interesses)  // Injeção do repositório de Habilidades
    private readonly interessesRepository: Repository<Interesses>,

    @InjectRepository(Endereco)
    private readonly enderecoRepository: Repository<Endereco>,
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
  
    // Atualizando os dados do candidato
    if (dados.nome) candidato.nome = dados.nome;
    if (dados.email) candidato.email = dados.email;
    if (dados.telefone) candidato.telefone = dados.telefone;
    if (dados.bio) candidato.bio = dados.bio;
    if (dados.experiencia) candidato.experiencia = dados.experiencia;
    if (dados.idiomas) candidato.idiomas = dados.idiomas;
    if (dados.fluencia) candidato.fluencia = dados.fluencia;
  
    // Atualizando habilidades
    if (dados.habilidades) {
      const habilidades = await this.habilidadesRepository.findByIds(dados.habilidades);
      candidato.habilidades = habilidades;
    }
  
    // Atualizando interesses
    if (dados.interesses) {
      const interesses = await this.interessesRepository.findByIds(dados.interesses);
      candidato.interesses = interesses;
    }
  
    // Atualizando o endereço (se enviado)
    if (dados.cep) candidato.cep = dados.cep;
    if (dados.rua) candidato.rua = dados.rua;
    if (dados.bairro) candidato.bairro = dados.bairro;
    if (dados.cidade) candidato.cidade = dados.cidade;
    if (dados.estado) candidato.estado = dados.estado;
  
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
