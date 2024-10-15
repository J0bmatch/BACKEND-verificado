import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Empresa } from '../empresa.entity';
import { Endereco } from '../../ambos/compartilhado.entity';
import { SegmentoAtuacao } from '../segmentoAtuacao.entity';

@Injectable()
export class EmpresaService {
  constructor(
    @InjectRepository(Empresa)
    private readonly empresaRepository: Repository<Empresa>,
    
    @InjectRepository(Endereco)
    private readonly enderecoRepository: Repository<Endereco>,
    
    @InjectRepository(SegmentoAtuacao)
    private readonly segmentoAtuacaoRepository: Repository<SegmentoAtuacao>,
  ) {}

  async cadastrarEmpresa(dados: any): Promise<Empresa> {
    // Primeiro, vamos verificar se já existe um registro de endereço com o CEP fornecido
    let endereco = await this.enderecoRepository.findOne({
      where: { cep: dados.cep },
    });

    // Se não houver um endereço, criamos um novo
    if (!endereco) {
      endereco = this.enderecoRepository.create({
        cep: dados.cep,
        rua: dados.rua,
        bairro: dados.bairro,
        cidade: dados.cidade,
        estado: dados.estado,
      });
      await this.enderecoRepository.save(endereco);
    }

    // Em seguida, verificamos se existe um segmento de atuação com a descrição fornecida
    let segmentoAtuacao = await this.segmentoAtuacaoRepository.findOne({
      where: { setor: dados.setor },
    });

    // Se não houver um segmento de atuação, criamos um novo
    if (!segmentoAtuacao) {
      segmentoAtuacao = this.segmentoAtuacaoRepository.create({
        descricao: dados.descricaoSegmento,
        setor: dados.setor,
      });
      await this.segmentoAtuacaoRepository.save(segmentoAtuacao);
    }

    // Agora criamos a entidade Empresa e associamos o endereço e segmento de atuação
    const novaEmpresa = this.empresaRepository.create({
      cnpj: dados.cnpj,
      telefone: dados.telefone,
      email: dados.email,
      fotoperfil: dados.fotoperfil,
      nomeUltilizador: dados.nomeUltilizador,
      senha: dados.senha,
      nomeEmpresa: dados.nomeEmpresa,
      numero: dados.numero,
      complemento: dados.complemento,
      descricao: dados.descricao,
      endereco: endereco, // Associando o endereço
      segmentoAtuacao: segmentoAtuacao, // Associando o segmento de atuação
    });

    // Salva a empresa no banco de dados
    await this.empresaRepository.save(novaEmpresa);

    return novaEmpresa;
  }
}