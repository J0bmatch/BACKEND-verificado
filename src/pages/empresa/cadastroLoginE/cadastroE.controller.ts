import { Controller, Post, Body } from '@nestjs/common';
import { EmpresaService } from './cadastroE.service';


@Controller('cadastro/empresa')
export class EmpresaController {
  constructor(private readonly empresaService: EmpresaService) {}

  @Post('cadastro')
  async cadastrar(@Body() dadosEmpresa: any) {
    return this.empresaService.cadastrarEmpresa(dadosEmpresa);
  
  }
}