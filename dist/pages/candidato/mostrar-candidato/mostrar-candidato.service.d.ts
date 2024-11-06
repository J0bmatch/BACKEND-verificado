import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';
export declare class MostrarCandidatoService {
    private candidatoRepository;
    constructor(candidatoRepository: Repository<Candidato>);
    mostrar(id: number): Promise<Candidato>;
}
