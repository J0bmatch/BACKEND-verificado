import { Repository } from 'typeorm';
import { Vaga } from '../../empresa/vaga.entity';
import { Candidato } from '../../candidato/candidato.entity';
export declare class MatchService {
    private readonly vagaRepository;
    private readonly candidatoRepository;
    constructor(vagaRepository: Repository<Vaga>, candidatoRepository: Repository<Candidato>);
    findMatchingVagas(candidatoId: number): Promise<Vaga[]>;
}
