import { Repository } from 'typeorm';
import { Vaga } from '../vaga.entity';
import { Habilidades } from '../../ambos/compartilhado.entity';
import { Interesses } from '../../ambos/compartilhado.entity';
import { Empresa } from '../empresa.entity';
export declare class VagaService {
    private readonly vagaRepository;
    private readonly habilidadesRepository;
    private readonly interessesRepository;
    private readonly empresaRepository;
    constructor(vagaRepository: Repository<Vaga>, habilidadesRepository: Repository<Habilidades>, interessesRepository: Repository<Interesses>, empresaRepository: Repository<Empresa>);
    findAll(): Promise<Vaga[]>;
    createVaga(vagaData: any): Promise<Vaga>;
}
