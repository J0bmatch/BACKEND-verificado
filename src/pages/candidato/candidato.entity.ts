import { Habilidades, Interesses, Endereco } from '../ambos/compartilhado.entity';
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany } from 'typeorm';

@Entity('candidato')
export class Candidato {
  getAllCandidatos() {
    throw new Error('Method not implemented.');
  }
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 50 })
  nome: string;

  @Column({ length: 30 })
  email: string;

  @Column({ length: 15 })
  telefone: string;

  @Column({ length: 15 })
  idiomas: string;

  @Column({ length: 50 })
  bio: string;

  @Column({ length: 15 })
  fluencia: string;

  @Column({ nullable: true })
  experiencia: string;
//
  @Column({ length: 20 })
  curso: string;

  @Column({ length: 50 })
  instituicao: string;

  @Column({ length: 20 })
  cidade: string;

  @Column({ length: 2 })
  estado: string;
//
  @Column({ length: 50 })
  nomesocial: string;

  @Column({ length: 4 })
  numero: string;

  @Column({ length: 11 })
  dataNascimento: string;


  @Column({ length: 5 })
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

  @OneToOne(() => Endereco)
  @JoinColumn({ name: 'endereco_id' })  // Define o relacionamento com a tabela endereco
  endereco: Endereco;
  
}
