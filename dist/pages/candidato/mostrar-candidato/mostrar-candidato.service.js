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
exports.MostrarCandidatoService = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const candidato_entity_1 = require("../candidato.entity");
let MostrarCandidatoService = class MostrarCandidatoService {
    constructor(candidatoRepository) {
        this.candidatoRepository = candidatoRepository;
    }
    async mostrar(id) {
        const candidato = await this.candidatoRepository.findOne({
            where: { id },
            relations: ['habilidades', 'interesses'],
        });
        if (!candidato) {
            throw new common_1.NotFoundException(`Candidato com ID ${id} não encontrado`);
        }
        return candidato;
    }
};
exports.MostrarCandidatoService = MostrarCandidatoService;
exports.MostrarCandidatoService = MostrarCandidatoService = __decorate([
    (0, common_1.Injectable)(),
    __param(0, (0, typeorm_1.InjectRepository)(candidato_entity_1.Candidato)),
    __metadata("design:paramtypes", [typeorm_2.Repository])
], MostrarCandidatoService);
//# sourceMappingURL=mostrar-candidato.service.js.map