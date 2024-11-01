import { LoginCService } from './loginC.service';
import { Candidato } from '../candidato.entity';
export declare class LoginCController {
    private readonly loginCService;
    constructor(loginCService: LoginCService);
    verificarLogin(rm: string, dataNascimento: string): Promise<{
        mensagem: string;
    }>;
    atualizarCadastro(rm: string, dados: Partial<Candidato>): Promise<{
        mensagem: string;
    }>;
    buscarCandidato(rm: string): Promise<Candidato>;
}
