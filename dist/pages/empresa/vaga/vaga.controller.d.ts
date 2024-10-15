import { VagaService } from './vaga.service';
import { Vaga } from '../vaga.entity';
export declare class VagaController {
    private readonly vagaService;
    constructor(vagaService: VagaService);
    createVaga(vagaData: any): Promise<Vaga>;
    findAll(): Promise<Vaga[]>;
}
