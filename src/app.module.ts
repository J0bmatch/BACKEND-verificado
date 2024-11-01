import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { LoginCModule } from './pages/candidato/loginC/loginC.module';
import { LoginEModule } from './pages/empresa/loginE/loginE.module';
import { VagaModule } from './pages/empresa/vaga/vaga.module'
import { CadastroEmpresaModule } from './pages/empresa/cadastroE/cadastroempresa.module';
//import { MatchModule } from './pages/ambos/match/match.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306, 
      username: 'root',
      password: '',
      database: 'jobmatch',
      entities: [__dirname + '/**/*.entity{.ts,.js}'], 
      synchronize: true, //testar BD depois
    }),
    LoginCModule,
    LoginEModule,
    VagaModule,
    CadastroEmpresaModule,
    //MatchModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
