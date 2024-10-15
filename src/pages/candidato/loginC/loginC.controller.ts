import { Controller, Post, Body } from '@nestjs/common';
import { LoginCService } from './loginC.service';
import { Candidato } from '../candidato.entity';

@Controller('login')
export class LoginCController {
  constructor(private readonly loginCService: LoginCService) {}

  // Rota para verificar login
  @Post('verificar')
  async verificarLogin(
    @Body('rm') rm: string,
    @Body('dataNascimento') dataNascimento: string,
  ) {
    return this.loginCService.verificarLogin(rm, dataNascimento);
  }

  // Rota para atualizar cadastro do candidato
  @Post('atualizar')
  async atualizarCadastro(
    @Body('rm') rm: string,
    @Body() dados: Partial<Candidato>,
  ) {
    return this.loginCService.atualizarCadastro(rm, dados);
  }
}
