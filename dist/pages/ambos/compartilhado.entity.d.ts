import { Vaga } from '../empresa/vaga.entity';
export declare class Endereco {
    endereco_id: number;
    cep: string;
    rua: string;
    bairro: string;
    cidade: string;
    estado: string;
}
export declare class Habilidades {
    id: number;
    descricao: string;
    tipo: string;
    vagas: Vaga[];
}
export declare class Interesses {
    id: number;
    descricao: string;
    tipo: string;
    vagas: Vaga[];
}
