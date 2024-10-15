"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.EmpresaService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const empresa_entity_1 = require("../empresa.entity");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
const segmentoAtuacao_entity_1 = require("../segmentoAtuacao.entity");
let EmpresaService = class EmpresaService {
    constructor(empresaRepository, enderecoRepository, segmentoAtuacaoRepository) {
        this.empresaRepository = empresaRepository;
        this.enderecoRepository = enderecoRepository;
        this.segmentoAtuacaoRepository = segmentoAtuacaoRepository;
    }
    async cadastrarEmpresa(dados) {
        let endereco = await this.enderecoRepository.findOne({
            where: { cep: dados.cep },
        });
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
        let segmentoAtuacao = await this.segmentoAtuacaoRepository.findOne({
            where: { setor: dados.setor },
        });
        if (!segmentoAtuacao) {
            segmentoAtuacao = this.segmentoAtuacaoRepository.create({
                descricao: dados.descricaoSegmento,
                setor: dados.setor,
            });
            await this.segmentoAtuacaoRepository.save(segmentoAtuacao);
        }
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
            endereco: endereco,
            segmentoAtuacao: segmentoAtuacao,
        });
        await this.empresaRepository.save(novaEmpresa);
        return novaEmpresa;
    }
};
exports.EmpresaService = EmpresaService;
exports.EmpresaService = EmpresaService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(empresa_entity_1.Empresa)),
    __param(1, (0, typeorm_1.InjectRepository)(compartilhado_entity_1.Endereco)),
    __param(2, (0, typeorm_1.InjectRepository)(segmentoAtuacao_entity_1.SegmentoAtuacao)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository])
], EmpresaService);
//# sourceMappingURL=cadastroE.service.js.map