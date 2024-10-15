import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { EmpresaModule } from './pages/empresa/cadastroLoginE/cadastroE.module';
import { LoginCModule } from './pages/candidato/loginC/loginC.module';
import { LoginEModule } from './pages/empresa/loginE/loginE.module';
import { VagaModule } from './pages/empresa/vaga/vaga.module'

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
      synchronize: true, 
    }),
    LoginCModule,
    EmpresaModule,
    LoginEModule,
   VagaModule,   
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
