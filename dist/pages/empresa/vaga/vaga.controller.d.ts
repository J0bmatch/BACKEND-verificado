import { VagaService } from './vaga.service';
import { Vaga } from '../vaga.entity';
export declare class VagaController {
    private readonly vagaService;
    constructor(vagaService: VagaService);
    getVagasByEmpresa(empresa_id: number): Promise<Vaga[]>;
    createVaga(vagaData: Partial<Vaga>): Promise<Vaga>;
    deleteVaga(id: number): Promise<void>;
}
