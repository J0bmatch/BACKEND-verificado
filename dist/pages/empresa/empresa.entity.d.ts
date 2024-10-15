import { Endereco } from '../ambos/compartilhado.entity';
import { SegmentoAtuacao } from './segmentoAtuacao.entity';
export declare class Empresa {
    id: number;
    cnpj: string;
    telefone: string;
    email: string;
    fotoperfil: string;
    nomeUltilizador: string;
    senha: string;
    nomeEmpresa: string;
    numero: string;
    complemento: string;
    descricao: string;
    endereco: Endereco;
    segmentoAtuacao: SegmentoAtuacao;
}
