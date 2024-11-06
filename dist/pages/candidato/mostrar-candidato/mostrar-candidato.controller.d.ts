import { MostrarCandidatoService } from './mostrar-candidato.service';
export declare class MostrarCandidatoController {
    private readonly mostrarCandidatoService;
    constructor(mostrarCandidatoService: MostrarCandidatoService);
    mostrar(id: number): Promise<import("../candidato.entity").Candidato>;
}
