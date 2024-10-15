import { Habilidades } from '../ambos/compartilhado.entity';
import { Interesses } from '../ambos/compartilhado.entity';
export declare class Candidato {
    id: number;
    nome: string;
    email: string;
    telefone: string;
    idiomas: string;
    bio: string;
    fluencia: string;
    experiencia: string;
    senha: string;
    nomesocial: string;
    numero: string;
    dataNascimento: string;
    rm: string;
    tipodeficiencia: string;
    graudeficiencia: string;
    adaptacaodeficiencia: string;
    interesses: Interesses;
    habilidades: Habilidades;
}
