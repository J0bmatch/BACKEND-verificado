import { Repository } from 'typeorm';
import { Vaga } from '../vaga.entity';
export declare class VagaService {
    private vagaRepository;
    constructor(vagaRepository: Repository<Vaga>);
    findByEmpresaId(empresaId: number): Promise<Vaga[]>;
    createVaga(vagaData: Partial<Vaga>): Promise<Vaga>;
    deleteVaga(id: number): Promise<void>;
}
