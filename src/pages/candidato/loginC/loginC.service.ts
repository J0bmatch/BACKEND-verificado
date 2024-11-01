import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';

@Injectable()
export class LoginCService {
  constructor(
    @InjectRepository(Candidato)
    private readonly candidatoRepository: Repository<Candidato>,
  ) {}

  // Verifica login com RM e data de nascimento
  async verificarLogin(rm: string, dataNascimento: string): Promise<{ mensagem: string }> {
    const candidato = await this.candidatoRepository.findOne({
      where: { rm, dataNascimento},
    });

    // Verifica se o candidato existe no banco de dados
    if (!candidato) {
      return { mensagem: 'Candidato não registrado.' };
    }

    // Verifica se é o primeiro acesso com base no campo 'experiencia'
    const primeiroAcesso = !candidato.bio;
    if (primeiroAcesso) {
      return { mensagem: 'Primeiro acesso', };
    } else {
      return { mensagem: 'Acesso já realizado anteriormente', };
    }
  }

  // Atualiza os dados do candidato
  async atualizarCadastro(rm: string, dados: Partial<Candidato>): Promise<{ mensagem: string }> {
    const candidato = await this.candidatoRepository.findOne({ where: { rm} });


    if (!candidato) {
      return { mensagem: 'Candidato não encontrado.' };
    }

    // Atualiza os dados do candidato
    await this.candidatoRepository.update(candidato.id, dados);

    return { mensagem: 'Dados atualizados com sucesso.' };
  }
  async buscarCandidatoPorRm(rm: string): Promise<Candidato> {
    return this.candidatoRepository.findOne({ where: { rm } });
  }
   
  
}
