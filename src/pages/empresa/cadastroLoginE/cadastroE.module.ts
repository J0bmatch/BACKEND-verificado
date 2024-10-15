import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EmpresaController } from './cadastroE.controller';
import { EmpresaService } from './cadastroE.service';
import { Empresa } from '../empresa.entity';
import { Endereco } from '../../ambos/compartilhado.entity';
import { SegmentoAtuacao } from '../segmentoAtuacao.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Empresa, Endereco, SegmentoAtuacao]),
  ],
  controllers: [EmpresaController],
  providers: [EmpresaService],
})
export class EmpresaModule {}
