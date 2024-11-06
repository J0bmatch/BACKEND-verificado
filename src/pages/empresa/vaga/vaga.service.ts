import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Vaga } from '../vaga.entity';
// 71 72 in: 1 2
@Injectable()
export class VagaService {
  constructor(
    @InjectRepository(Vaga)
    private vagaRepository: Repository<Vaga>,
  ) {}

  async findByEmpresaId(empresaId: number): Promise<Vaga[]> {
    return this.vagaRepository.find({
      where: { empresa: { id: empresaId } }, // Usamos o relacionamento com `Empresa`
      relations: ['empresa', 'habilidades', 'interesses'], // Carrega as relações associadas
    });
  }

  async createVaga(vagaData: Partial<Vaga>): Promise<Vaga> {
    // Verifica se o campo `empresa` e `empresa.id` estão presentes
    if (!vagaData.empresa || !vagaData.empresa.id) {
      throw new Error("O campo 'empresa' com um ID válido é obrigatório.");
    }
  
    const novaVaga = this.vagaRepository.create({
      descricao: vagaData.descricao,
      exigencias: vagaData.exigencias,
      funcao: vagaData.funcao,
      salario: vagaData.salario,
      riscos: vagaData.riscos,
      googleForm: vagaData.googleForm,
      empresa: { id: vagaData.empresa.id },
      habilidades: vagaData.habilidades,
      interesses: vagaData.interesses,
    });
  
    return this.vagaRepository.save(novaVaga);
  }
  
  

  async deleteVaga(id: number): Promise<void> {
    const vaga = await this.vagaRepository.findOne({ where: { id } });
    if (!vaga) {
      throw new NotFoundException('Vaga não encontrada.');
    }
    await this.vagaRepository.remove(vaga);
  }
  }

