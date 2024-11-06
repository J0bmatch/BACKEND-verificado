import { MostrarEmpresaService } from './MostrarEmpresaService';
export declare class MostrarEmpresaController {
    private readonly mostrarEmpresaService;
    constructor(mostrarEmpresaService: MostrarEmpresaService);
    mostrar(id: number): Promise<import("../empresa.entity").Empresa>;
}
