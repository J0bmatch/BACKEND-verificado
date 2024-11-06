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
exports.MatchService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const vaga_entity_1 = require("../../empresa/vaga.entity");
const candidato_entity_1 = require("../../candidato/candidato.entity");
let MatchService = class MatchService {
    constructor(vagaRepository, candidatoRepository) {
        this.vagaRepository = vagaRepository;
        this.candidatoRepository = candidatoRepository;
    }
    async findMatchingVagas(candidatoId) {
        const candidato = await this.candidatoRepository.findOne({
            where: { id: candidatoId },
            relations: ['habilidades', 'interesses'],
        });
        if (!candidato) {
            throw new Error('Candidato não encontrado.');
        }
        const candidatoHabilidades = candidato.habilidades.map(h => h.id);
        const candidatoInteresses = candidato.interesses.map(i => i.id);
        const vagas = await this.vagaRepository
            .createQueryBuilder('vaga')
            .leftJoinAndSelect('vaga.habilidades', 'habilidade')
            .leftJoinAndSelect('vaga.interesses', 'interesse')
            .where('habilidade.id IN (:...habilidades)', { habilidades: candidatoHabilidades })
            .orWhere('interesse.id IN (:...interesses)', { interesses: candidatoInteresses })
            .getMany();
        const vagasComPontuacao = vagas.map(vaga => {
            const matchingHabilidades = vaga.habilidades.filter(h => candidatoHabilidades.includes(h.id)).length;
            const matchingInteresses = vaga.interesses.filter(i => candidatoInteresses.includes(i.id)).length;
            const totalMatch = matchingHabilidades + matchingInteresses;
            return { vaga, totalMatch };
        });
        const vagasOrdenadas = vagasComPontuacao
            .sort((a, b) => b.totalMatch - a.totalMatch)
            .slice(0, 20)
            .map(v => v.vaga);
        return vagasOrdenadas;
    }
};
exports.MatchService = MatchService;
exports.MatchService = MatchService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(vaga_entity_1.Vaga)),
    __param(1, (0, typeorm_1.InjectRepository)(candidato_entity_1.Candidato)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository])
], MatchService);
//# sourceMappingURL=match.service.js.map