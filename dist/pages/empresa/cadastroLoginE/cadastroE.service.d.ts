import { Repository } from 'typeorm';
import { Empresa } from '../empresa.entity';
import { Endereco } from '../../ambos/compartilhado.entity';
import { SegmentoAtuacao } from '../segmentoAtuacao.entity';
export declare class EmpresaService {
    private readonly empresaRepository;
    private readonly enderecoRepository;
    private readonly segmentoAtuacaoRepository;
    constructor(empresaRepository: Repository<Empresa>, enderecoRepository: Repository<Endereco>, segmentoAtuacaoRepository: Repository<SegmentoAtuacao>);
    cadastrarEmpresa(dados: any): Promise<Empresa>;
}
