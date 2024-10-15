import { Controller, Post, Body, Get } from '@nestjs/common';
import { VagaService } from './vaga.service';
import { Vaga } from '../vaga.entity';

@Controller('vaga')
export class VagaController {
  constructor(private readonly vagaService: VagaService) {}

  @Post('criar')
  async createVaga(@Body() vagaData: any): Promise<Vaga> {
    return await this.vagaService.createVaga(vagaData);
  }

  @Get('todas')
  async findAll(): Promise<Vaga[]> {
    return await this.vagaService.findAll();
  }
}
