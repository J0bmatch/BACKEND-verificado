import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { ConfirmMatch } from '../matching.entity';
import { Candidato } from '../../candidato/candidato.entity';

@Injectable()
export class CandidatoService {
  constructor(
    @InjectRepository(Candidato)
    private readonly confirmMatchRepository: Repository<ConfirmMatch>,
    private readonly candidatoRepository: Repository<Candidato>,
  ) {}

  // Busca um candidato pelo ID
  async findCandidatoById(id: number): Promise<Candidato | undefined> {
    return this.candidatoRepository.findOne({ where: { id } });
  }

  async findCandidatosByVaga(vagaId: number): Promise<Candidato[]> {
    const confirmMatches = await this.confirmMatchRepository.find({
      where: { vaga: { id: vagaId } },
      relations: ['candidato'], // Carrega a relação do candidato
    });

    return confirmMatches.map(match => match.candidato);
  }

  // Retorna todos os candidatos
  async getAllCandidatos(): Promise<Candidato[]> {
    return this.candidatoRepository.find();
  }
}
