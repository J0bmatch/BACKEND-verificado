import { Controller, Post, Body, Param } from '@nestjs/common';
import { ConfirmMatchService } from './confirmaMatch.service';
import { ConfirmMatch } from '../matching.entity';


@Controller('confirmMatch')
export class ConfirmMatchController {
  constructor(private readonly confirmMatchService: ConfirmMatchService) {}

  @Post('confirmar-match')
  async confirmarMatch(
    @Body('vagaId') vagaId: number,
    @Body('candidatoId') candidatoId: number,
  ): Promise<ConfirmMatch> { // Corrigido o tipo de retorno para `ConfirmMatch`
    console.log('Parâmetros recebidos no controlador - vagaId:', vagaId, 'candidatoId:', candidatoId);
    return this.confirmMatchService.confirmarMatch(vagaId, candidatoId); // Chamando o método corretamente
  }

  @Post(':id/contratar')
  async contratarMatch(@Param('id') id: number): Promise<ConfirmMatch> {
    return this.confirmMatchService.contratarMatch(id);
  }
}
