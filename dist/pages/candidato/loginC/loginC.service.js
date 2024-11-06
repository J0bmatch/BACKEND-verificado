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
exports.LoginCService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const candidato_entity_1 = require("../candidato.entity");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
let LoginCService = class LoginCService {
    constructor(candidatoRepository, habilidadesRepository, interessesRepository) {
        this.candidatoRepository = candidatoRepository;
        this.habilidadesRepository = habilidadesRepository;
        this.interessesRepository = interessesRepository;
    }
    async verificarLogin(rm, dataNascimento) {
        const candidato = await this.candidatoRepository.findOne({
            where: { rm, dataNascimento },
        });
        if (!candidato) {
            return { mensagem: 'Candidato não registrado.' };
        }
        const primeiroAcesso = !candidato.bio;
        if (primeiroAcesso) {
            return { mensagem: 'Primeiro acesso' };
        }
        else {
            return { mensagem: 'Acesso já realizado anteriormente' };
        }
    }
    async atualizarCadastro(rm, dados) {
        const candidato = await this.candidatoRepository.findOne({
            where: { rm },
            relations: ['habilidades', 'interesses'],
        });
        if (!candidato) {
            throw new common_1.NotFoundException('Candidato não encontrado.');
        }
        if (dados.nome)
            candidato.nome = dados.nome;
        if (dados.email)
            candidato.email = dados.email;
        if (dados.telefone)
            candidato.telefone = dados.telefone;
        if (dados.bio)
            candidato.bio = dados.bio;
        if (dados.experiencia)
            candidato.experiencia = dados.experiencia;
        if (dados.habilidades) {
            const habilidades = await this.habilidadesRepository.findByIds(dados.habilidades);
            candidato.habilidades = habilidades;
        }
        if (dados.interesses) {
            const interesses = await this.interessesRepository.findByIds(dados.interesses);
            candidato.interesses = interesses;
        }
        await this.candidatoRepository.save(candidato);
        return { mensagem: 'Dados atualizados com sucesso.' };
    }
    async buscarCandidatoPorRm(rm) {
        return this.candidatoRepository.findOne({
            where: { rm },
            relations: ['habilidades', 'interesses'],
        });
    }
};
exports.LoginCService = LoginCService;
exports.LoginCService = LoginCService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(candidato_entity_1.Candidato)),
    __param(1, (0, typeorm_1.InjectRepository)(compartilhado_entity_1.Habilidades)),
    __param(2, (0, typeorm_1.InjectRepository)(compartilhado_entity_1.Interesses)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository])
], LoginCService);
//# sourceMappingURL=loginC.service.js.map