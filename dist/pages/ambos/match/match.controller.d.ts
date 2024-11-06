import { MatchService } from './match.service';
import { Vaga } from '../../empresa/vaga.entity';
export declare class MatchController {
    private readonly matchService;
    constructor(matchService: MatchService);
    getMatchingVagas(candidatoId: number): Promise<Vaga[]>;
}
