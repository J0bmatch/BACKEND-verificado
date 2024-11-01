import { Module } from '@nestjs/common';
import { VagaService } from './vaga.service';
import { VagaController } from './vaga.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Vaga } from '../vaga.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Vaga])],
  controllers: [VagaController],
  providers: [VagaService],
})
export class VagaModule {}
