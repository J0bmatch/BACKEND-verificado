import { Controller, Get, Post, Delete, Param, Body } from '@nestjs/common';
import { VagaService } from './vaga.service';
import { Vaga } from '../vaga.entity';

@Controller('vagas')
export class VagaController {
  constructor(private readonly vagaService: VagaService) {}

  @Get(':empresa_id')
  async getVagasByEmpresa(@Param('empresa_id') empresa_id: number): Promise<Vaga[]> {
    return this.vagaService.findByEmpresaId(empresa_id);
  }

  @Post()
  async createVaga(@Body() vagaData: Partial<Vaga>): Promise<Vaga> {
    return this.vagaService.createVaga(vagaData);
  }

  @Delete(':id')
  async deleteVaga(@Param('id') id: number): Promise<void> {
    return this.vagaService.deleteVaga(id);
  }
}
