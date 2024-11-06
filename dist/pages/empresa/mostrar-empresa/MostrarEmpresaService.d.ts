import { Repository } from 'typeorm';
import { Empresa } from '../empresa.entity';
export declare class MostrarEmpresaService {
    private empresaRepository;
    constructor(empresaRepository: Repository<Empresa>);
    mostrar(id: number): Promise<Empresa>;
}
