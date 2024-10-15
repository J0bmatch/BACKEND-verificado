import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Vaga } from '../vaga.entity';
import { VagaService } from './vaga.service';
import { VagaController } from './vaga.controller';
import { Habilidades } from '../../ambos/compartilhado.entity';
import { Interesses } from '../../ambos/compartilhado.entity';
import { Empresa } from '../empresa.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([Vaga, Habilidades, Interesses, Empresa]),
  ],
  providers: [VagaService],
  controllers: [VagaController],
})
export class VagaModule {}
