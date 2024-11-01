import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';
export declare class LoginCService {
    private readonly candidatoRepository;
    constructor(candidatoRepository: Repository<Candidato>);
    verificarLogin(rm: string, dataNascimento: string): Promise<{
        mensagem: string;
    }>;
    atualizarCadastro(rm: string, dados: Partial<Candidato>): Promise<{
        mensagem: string;
    }>;
    buscarCandidatoPorRm(rm: string): Promise<Candidato>;
}
