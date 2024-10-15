import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { LoginCService } from './loginC.service';
import { LoginCController } from './loginC.controller';
import { Candidato } from '../candidato.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Candidato])],
  controllers: [LoginCController],
  providers: [LoginCService],
})
export class LoginCModule {}
