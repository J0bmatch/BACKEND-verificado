import { Vaga } from '../empresa/vaga.entity';
import { Candidato } from '../candidato/candidato.entity';
export declare class Endereco {
    endereco_id: number;
    cep: string;
    rua: string;
    bairro: string;
    cidade: string;
    estado: string;
    candidato: Candidato;
}
export declare class Habilidades {
    id: number;
    descricao: string;
    tipo: string;
    candidato: Candidato;
    vagas: Vaga[];
}
export declare class Interesses {
    id: number;
    descricao: string;
    tipo: string;
    candidato: Candidato;
    vagas: Vaga[];
}
