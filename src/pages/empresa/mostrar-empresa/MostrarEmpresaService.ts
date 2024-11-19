import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Empresa } from '../empresa.entity'; // Ajuste o caminho conforme necessário

@Injectable()
export class MostrarEmpresaService {
  constructor(
    @InjectRepository(Empresa)
    private empresaRepository: Repository<Empresa>,
  ) {}

  async mostrar(id: number): Promise<Empresa> {
    const empresa = await this.empresaRepository.findOne({
      where: { id },
      relations: ['segmentoAtuacao'],
    });

    if (!empresa) {
      throw new NotFoundException(`Empresa com ID ${id} não encontrada`);
    }

    return empresa;
  }
}
