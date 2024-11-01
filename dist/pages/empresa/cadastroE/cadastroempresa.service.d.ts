import { Repository } from 'typeorm';
import { Empresa } from '../Empresa.entity';
export declare class EmpresaService {
    private EmpresaRepository;
    constructor(EmpresaRepository: Repository<Empresa>);
    create(data: Empresa): Promise<Empresa>;
}
