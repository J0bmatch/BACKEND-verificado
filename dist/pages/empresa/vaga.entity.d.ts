import { Habilidades } from '../ambos/compartilhado.entity';
import { Interesses } from '../ambos/compartilhado.entity';
import { Empresa } from './empresa.entity';
export declare class Vaga {
    id: number;
    descricao: string;
    exigencias: string;
    funcao: string;
    salario: number;
    riscos: string;
    googleForm: string;
    habilidades: Habilidades[];
    interesses: Interesses[];
    empresa: Empresa;
}
