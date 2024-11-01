import { SegmentoAtuacao } from './segmentoAtuacao.entity';
export declare class Empresa {
    id: number;
    cnpj: string;
    telefone: string;
    email: string;
    cep: string;
    rua: string;
    bairro: string;
    cidade: string;
    estado: string;
    pais: string;
    fotoperfil: string;
    nomeUltilizador: string;
    senha: string;
    nomeEmpresa: string;
    numero: string;
    complemento: string;
    descricao: string;
    segmentoAtuacao: SegmentoAtuacao;
}
