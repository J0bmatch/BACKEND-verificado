import { EmpresaService } from './cadastroE.service';
export declare class EmpresaController {
    private readonly empresaService;
    constructor(empresaService: EmpresaService);
    cadastrar(dadosEmpresa: any): Promise<import("../empresa.entity").Empresa>;
}
