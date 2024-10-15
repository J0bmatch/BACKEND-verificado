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
exports.VagaService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const vaga_entity_1 = require("../vaga.entity");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
const compartilhado_entity_2 = require("../../ambos/compartilhado.entity");
const empresa_entity_1 = require("../empresa.entity");
let VagaService = class VagaService {
    constructor(vagaRepository, habilidadesRepository, interessesRepository, empresaRepository) {
        this.vagaRepository = vagaRepository;
        this.habilidadesRepository = habilidadesRepository;
        this.interessesRepository = interessesRepository;
        this.empresaRepository = empresaRepository;
    }
    async findAll() {
        return await this.vagaRepository.find({
            relations: ['habilidades', 'interesses', 'empresa'],
        });
    }
    async createVaga(vagaData) {
        const habilidades = await this.habilidadesRepository.findByIds(vagaData.habilidades_ids);
        if (!habilidades || habilidades.length === 0) {
            throw new common_1.NotFoundException('Habilidades não encontradas');
        }
        const interesses = await this.interessesRepository.findByIds(vagaData.interesses_ids);
        if (!interesses || interesses.length === 0) {
            throw new common_1.NotFoundException('Interesses não encontrados');
        }
        const empresa = await this.empresaRepository.findOne({ where: { id: vagaData.empresa_id } });
        if (!empresa) {
            throw new common_1.NotFoundException('Empresa não encontrada');
        }
        const vaga = this.vagaRepository.create({
            descricao: vagaData.descricao,
            exigencias: vagaData.exigencias,
            funcao: vagaData.funcao,
            salario: vagaData.salario,
            riscos: vagaData.riscos,
            googleForm: vagaData.googleForm,
            habilidades,
            interesses,
            empresa,
        });
        return await this.vagaRepository.save(vaga);
    }
};
exports.VagaService = VagaService;
exports.VagaService = VagaService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(vaga_entity_1.Vaga)),
    __param(1, (0, typeorm_1.InjectRepository)(compartilhado_entity_1.Habilidades)),
    __param(2, (0, typeorm_1.InjectRepository)(compartilhado_entity_2.Interesses)),
    __param(3, (0, typeorm_1.InjectRepository)(empresa_entity_1.Empresa)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository])
], VagaService);
//# sourceMappingURL=vaga.service.js.map