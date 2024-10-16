//receber os dados module
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
//import { receberDadosEService } from './receberDadosE.service';
//import { receberDadosEController } from './receberDadosE.controller';
import { Empresa } from '../empresa.entity';
import { Endereco } from '../../ambos/compartilhado.entity';
import { SegmentoAtuacao } from '../segmentoAtuacao.entity';
/*
@Module({
  imports: [
    TypeOrmModule.forFeature([Empresa, Endereco, SegmentoAtuacao]),
  ],
  controllers: [receberDadosEController],
  providers: [receberDadosEService],
})
*/