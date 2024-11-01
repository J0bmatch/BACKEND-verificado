/*import { Controller, Get, Param } from '@nestjs/common';
import { MatchService } from './match.service';

@Controller('match')
export class MatchController {
  constructor(private readonly matchService: MatchService) {}

  @Get('candidato/:id')
  async findBestMatches(@Param('id') id: string) {
    const candidatoId = parseInt(id, 10); // Convertendo id para número
    return this.matchService.findBestMatchesForCandidato(candidatoId);
  }
}*/