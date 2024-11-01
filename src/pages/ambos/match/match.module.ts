/*import { Controller, Module } from '@nestjs/common';
import { MatchService } from './match.service';
import { MatchController } from './match.controller';
import { VagaModule } from 'src/pages/empresa/vaga/vaga.module';
import { Candidato} from '../../candidato/candidato.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CandidatoService } from './candidatoService';
import { VagaService } from 'src/pages/empresa/vaga/vaga.service';

@Module({
    imports: [
      VagaModule,
      TypeOrmModule.forFeature([Candidato]),
      VagaModule,
    ],
    controllers: [MatchController],
    providers: [MatchService, CandidatoService , VagaService],
  })
  export class MatchModule {}
*/