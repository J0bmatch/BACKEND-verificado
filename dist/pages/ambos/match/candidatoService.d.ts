import { Repository } from 'typeorm';
import { Candidato } from '../../candidato/candidato.entity';
export declare class CandidatoService {
    private readonly candidatoRepository;
    constructor(candidatoRepository: Repository<Candidato>);
    findCandidatoById(id: number): Promise<Candidato | undefined>;
    getAllCandidatos(): Promise<Candidato[]>;
}
