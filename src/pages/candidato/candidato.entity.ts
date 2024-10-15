// src/loginC/candidato.entity.ts
import { Habilidades } from '../ambos/compartilhado.entity'; // Supondo que você tenha uma entity para habilidades
import { Interesses } from '../ambos/compartilhado.entity';
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn } from 'typeorm';
/* as chaves primarias e @manyTo algo, tem problema pq falta
 fazer as importacoes das entitys de outras tabelas*/


@Entity('candidato')
export class Candidato {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 50 })
  nome: string;

  @Column({ length: 30 })
  email: string;

  @Column({ length: 11 })
  telefone: string;

  @Column({ length: 15 })
  idiomas: string;

  @Column({ length: 50 })
  bio: string;


  @Column({ length: 15 })
  fluencia: string;

  @Column({ nullable: true })
  experiencia: string;

  @Column({ length: 18 })
  senha: string;


  @Column({ length: 50 })
  nomesocial: string;

  @Column({ length: 4 })
  numero: string;

  @Column({ length: 50 })
  dataNascimento: string;

  @Column({ length: 50 })
  rm: string;

  @Column({ length: 50 })
  tipodeficiencia: string;

  @Column({ length: 50 })
  graudeficiencia: string;

  @Column({ length: 50 })
  adaptacaodeficiencia: string;

  @OneToOne(() => Interesses)
  @JoinColumn({ name: 'interesses_id' })
  interesses: Interesses;

  @OneToOne(() => Habilidades)
  @JoinColumn({ name: 'habilidades_id' })
  habilidades: Habilidades;

  
}