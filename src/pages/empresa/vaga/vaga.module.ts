import { Module } from '@nestjs/common';
import { VagaService } from './vaga.service';
import { VagaController } from './vaga.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Vaga } from '../vaga.entity';
import { Habilidades, Interesses } from 'src/pages/ambos/compartilhado.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Vaga, Habilidades, Interesses,])],
  controllers: [VagaController],
  providers: [VagaService],
})
export class VagaModule {}
