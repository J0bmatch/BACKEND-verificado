import { Module } from '@nestjs/common';
import { MatchService } from './match.service';
import { MatchController } from './match.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Vaga } from '../../empresa/vaga.entity';
import { Candidato } from '../../candidato/candidato.entity';
import { ConfirmMatch } from '../matching.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Vaga, Candidato, ConfirmMatch])],
  controllers: [MatchController],
  providers: [MatchService],
})
export class MatchModule {}
