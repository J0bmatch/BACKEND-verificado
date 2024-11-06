import { Habilidades, Interesses, Endereco } from '../ambos/compartilhado.entity';
export declare class Candidato {
    getAllCandidatos(): void;
    id: number;
    nome: string;
    email: string;
    telefone: string;
    idiomas: string;
    bio: string;
    fluencia: string;
    experiencia: string;
    curso: string;
    instituicao: string;
    nomesocial: string;
    numero: string;
    dataNascimento: string;
    rm: string;
    tipodeficiencia: string;
    graudeficiencia: string;
    adaptacaodeficiencia: string;
    interesses: Interesses[];
    habilidades: Habilidades[];
    endereco: Endereco;
}
