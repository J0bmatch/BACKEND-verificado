// src/pages/ambos/entities.ts
//tabelas de: endereço, habilidades e interesses
import { Vaga } from '../empresa/vaga.entity';

import { Entity, Column, PrimaryGeneratedColumn, ManyToMany } from 'typeorm';

@Entity('endereco')
export class Endereco {
  @PrimaryGeneratedColumn()
  endereco_id: number;

  @Column({ length: 9 })
  cep: string;

  @Column({ length: 20 })
  rua: string;

  @Column({ length: 20 })
  bairro: string;

  @Column({ length: 20 })
  cidade: string;

  @Column({ length: 2 })
  estado: string;
}

@Entity('habilidades')
export class Habilidades {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 20 })
  descricao: string;

  @Column({ length: 20 })
  tipo: string;

  @ManyToMany(() => Vaga, vaga => vaga.habilidades) // Relação inversa com Vaga
  vagas: Vaga[];
  
}

@Entity('interesses')
export class Interesses {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 20 })
  descricao: string;

  @Column({ length: 20 })
  tipo: string;

  @ManyToMany(() => Vaga, vaga => vaga.interesses) // Relação inversa com Vaga
  vagas: Vaga[];
}