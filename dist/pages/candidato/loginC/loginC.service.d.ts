import { Repository } from 'typeorm';
import { Candidato } from '../candidato.entity';
import { Habilidades, Interesses } from '../../ambos/compartilhado.entity';
export declare class LoginCService {
    private readonly candidatoRepository;
    private readonly habilidadesRepository;
    private readonly interessesRepository;
    constructor(candidatoRepository: Repository<Candidato>, habilidadesRepository: Repository<Habilidades>, interessesRepository: Repository<Interesses>);
    verificarLogin(rm: string, dataNascimento: string): Promise<{
        mensagem: string;
    }>;
    atualizarCadastro(rm: string, dados: Partial<Candidato>): Promise<{
        mensagem: string;
    }>;
    buscarCandidatoPorRm(rm: string): Promise<Candidato>;
}
