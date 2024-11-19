import { Controller, Get, Param } from '@nestjs/common';
import { MatchService } from './match.service';
import { Vaga } from '../../empresa/vaga.entity';
import { ConfirmMatch } from '../matching.entity';
import{ Candidato } from "../../candidato/candidato.entity";

@Controller('match')
export class MatchController {
  constructor(private readonly matchService: MatchService) {}

  @Get(':candidatoId')
  async getMatchingVagas(@Param('candidatoId') candidatoId: number): Promise<Vaga[]> {
    return this.matchService.findMatchingVagas(candidatoId);
  }

  @Get('/candidatosPorVaga/:vagaId')
  async getCandidatosByVaga(@Param('vagaId') vagaId: number): Promise<Candidato[]> {
    return this.matchService.findCandidatosByVaga(vagaId);
  }
}