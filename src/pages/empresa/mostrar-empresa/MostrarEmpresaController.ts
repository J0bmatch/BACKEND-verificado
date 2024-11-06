import { Controller, Get, Param, ParseIntPipe } from '@nestjs/common';
import { MostrarEmpresaService } from './MostrarEmpresaService';

@Controller('mostrar-empresa')
export class MostrarEmpresaController {
  constructor(private readonly mostrarEmpresaService: MostrarEmpresaService) {}

  @Get(':id')
  async mostrar(@Param('id', ParseIntPipe) id: number) {
    return await this.mostrarEmpresaService.mostrar(id);
  }
}
