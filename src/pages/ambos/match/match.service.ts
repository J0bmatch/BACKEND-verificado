/*import { Injectable } from '@nestjs/common';
import { VagaService } from 'src/pages/empresa/vaga/vaga.service';
import { Candidato } from 'src/pages/candidato/candidato.entity';
import { Vaga } from '../../empresa/vaga.entity';
import { CandidatoService } from './candidatoService';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Habilidades } from '../compartilhado.entity';
import { Interesses } from '../compartilhado.entity';

@Injectable()
export class MatchService {
  constructor(
    private readonly vagaService: VagaService,
    @InjectRepository(Candidato)
    private readonly candidatoRepository: Repository<Candidato>,
    @InjectRepository(Habilidades)
    private readonly habilidadesRepository: Repository<Habilidades>,
    @InjectRepository(Interesses)
    private readonly interessesRepository: Repository<Interesses>
  ) {}

  async findBestMatchesForCandidato(candidatoId: number): Promise<Vaga[]> {
    // Buscando o candidato com as suas habilidades e interesses
    const candidato = await this.candidatoRepository.findOne({
      where: { id: candidatoId },
      relations: ['habilidades', 'interesses'], // Certifique-se de que as relações estão definidas corretamente
    });

    if (!candidato) {
      return [];
    }

    // Obtém todas as vagas disponíveis
    const vagas = await this.vagaService.findAll();

    // Filtra as vagas que têm uma correspondência com o candidato
    const vagasCompatíveis = vagas.filter((vaga) =>
      this.hasMatchingHabilidades(vaga.habilidades, candidato.habilidades) &&
      this.hasMatchingInteresses(vaga.interesses, candidato.interesses)
    );

    // Ordena as vagas por relevância
    const vagasOrdenadas = vagasCompatíveis.sort((a, b) =>
      this.calculateMatchScore(b, candidato) - this.calculateMatchScore(a, candidato)
    );

    // Retorna até 50 vagas compatíveis
    return vagasOrdenadas.slice(0, 50);
  }

  private hasMatchingHabilidades(
    vagaHabilidades: Habilidades[],
    candidatoHabilidade: Habilidades // Alterado para ser um único objeto
  ): boolean {
    return vagaHabilidades.some((habilidade) =>
      habilidade.id === candidatoHabilidade.id // Comparar com o id da habilidade única
    );
  }

  private hasMatchingInteresses(
    vagaInteresses: Interesses[],
    candidatoInteresse: Interesses // Alterado para ser um único objeto
  ): boolean {
    return vagaInteresses.some((interesse) =>
      interesse.id === candidatoInteresse.id // Comparar com o id do interesse único
    );
  }

  private calculateMatchScore(vaga: Vaga, candidato: Candidato): number {
    const matchingHabilidades = vaga.habilidades.filter((habilidade) =>
      habilidade.id === candidato.habilidades.id // Comparar com o id da habilidade única
    ).length;

    const matchingInteresses = vaga.interesses.filter((interesse) =>
      interesse.id === candidato.interesses.id // Comparar com o id do interesse único
    ).length;

    // Ajuste o cálculo conforme a relevância desejada dos critérios
    return matchingHabilidades + matchingInteresses;
  }
}*/