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
let VagaService = class VagaService {
    constructor(vagaRepository) {
        this.vagaRepository = vagaRepository;
    }
    async findByEmpresaId(empresaId) {
        return this.vagaRepository.find({
            where: { empresa: { id: empresaId } },
            relations: ['empresa', 'habilidades', 'interesses'],
        });
    }
    async createVaga(vagaData) {
        if (!vagaData.empresa || !vagaData.empresa.id) {
            throw new Error("O campo 'empresa' com um ID válido é obrigatório.");
        }
        const novaVaga = this.vagaRepository.create({
            descricao: vagaData.descricao,
            exigencias: vagaData.exigencias,
            funcao: vagaData.funcao,
            salario: vagaData.salario,
            riscos: vagaData.riscos,
            googleForm: vagaData.googleForm,
            empresa: { id: vagaData.empresa.id },
            habilidades: vagaData.habilidades,
            interesses: vagaData.interesses,
        });
        return this.vagaRepository.save(novaVaga);
    }
    async deleteVaga(id) {
        const vaga = await this.vagaRepository.findOne({ where: { id } });
        if (!vaga) {
            throw new common_1.NotFoundException('Vaga não encontrada.');
        }
        await this.vagaRepository.remove(vaga);
    }
};
exports.VagaService = VagaService;
exports.VagaService = VagaService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(vaga_entity_1.Vaga)),
    __metadata("design:paramtypes", [typeorm_2.Repository])
], VagaService);
//# sourceMappingURL=vaga.service.js.map