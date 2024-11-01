import { EmpresaService } from './cadastroempresa.service';
import { Empresa } from '../Empresa.entity';
export declare class EmpresaController {
    private readonly EmpresaService;
    constructor(EmpresaService: EmpresaService);
    create(createDto: Empresa): Promise<Empresa>;
}
