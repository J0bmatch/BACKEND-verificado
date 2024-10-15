import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Vaga } from '../vaga.entity';
import { Habilidades } from '../../ambos/compartilhado.entity';
import { Interesses } from '../../ambos/compartilhado.entity';
import { Empresa } from '../empresa.entity';

@Injectable()
export class VagaService {
  constructor(
    @InjectRepository(Vaga)
    private readonly vagaRepository: Repository<Vaga>,
    @InjectRepository(Habilidades)
    private readonly habilidadesRepository: Repository<Habilidades>,
    @InjectRepository(Interesses)
    private readonly interessesRepository: Repository<Interesses>,
    @InjectRepository(Empresa)
    private readonly empresaRepository: Repository<Empresa>,
  ) {}

  async findAll(): Promise<Vaga[]> {
    return await this.vagaRepository.find({
        relations: ['habilidades', 'interesses', 'empresa'], // Inclua as relações se necessário
    });
}

  async createVaga(vagaData: any): Promise<Vaga> {
    // Obtém habilidades a partir do repositório
    const habilidades = await this.habilidadesRepository.findByIds(vagaData.habilidades_ids);
    if (!habilidades || habilidades.length === 0) {
        throw new NotFoundException('Habilidades não encontradas');
    }

    // Obtém interesses a partir do repositório
    const interesses = await this.interessesRepository.findByIds(vagaData.interesses_ids);
    if (!interesses || interesses.length === 0) {
        throw new NotFoundException('Interesses não encontrados');
    }

    // Obtém a empresa a partir do repositório usando um objeto de filtro
    const empresa = await this.empresaRepository.findOne({ where: { id: vagaData.empresa_id } });
    if (!empresa) {
        throw new NotFoundException('Empresa não encontrada');
    }

    // Cria a nova vaga com todas as propriedades
    const vaga = this.vagaRepository.create({
        descricao: vagaData.descricao,
        exigencias: vagaData.exigencias,
        funcao: vagaData.funcao,
        salario: vagaData.salario,
        riscos: vagaData.riscos,
        googleForm: vagaData.googleForm,
        habilidades,
        interesses,
        empresa,
    });

    // Salva a vaga no banco de dados
    return await this.vagaRepository.save(vaga);
}
}
