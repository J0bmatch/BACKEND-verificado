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
Object.defineProperty(exports, "__esModule", { value: true });
exports.Candidato = void 0;
const compartilhado_entity_1 = require("../ambos/compartilhado.entity");
const typeorm_1 = require("typeorm");
let Candidato = class Candidato {
    getAllCandidatos() {
        throw new Error('Method not implemented.');
    }
};
exports.Candidato = Candidato;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Candidato.prototype, "id", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "nome", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 30 }),
    __metadata("design:type", String)
], Candidato.prototype, "email", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 15 }),
    __metadata("design:type", String)
], Candidato.prototype, "telefone", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 15 }),
    __metadata("design:type", String)
], Candidato.prototype, "idiomas", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "bio", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 15 }),
    __metadata("design:type", String)
], Candidato.prototype, "fluencia", void 0);
__decorate([
    (0, typeorm_1.Column)({ nullable: true }),
    __metadata("design:type", String)
], Candidato.prototype, "experiencia", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Candidato.prototype, "curso", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "instituicao", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "nomesocial", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 4 }),
    __metadata("design:type", String)
], Candidato.prototype, "numero", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 11 }),
    __metadata("design:type", String)
], Candidato.prototype, "dataNascimento", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 5 }),
    __metadata("design:type", String)
], Candidato.prototype, "rm", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "tipodeficiencia", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "graudeficiencia", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 50 }),
    __metadata("design:type", String)
], Candidato.prototype, "adaptacaodeficiencia", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => compartilhado_entity_1.Interesses),
    (0, typeorm_1.JoinTable)({ name: 'candidato_interesses' }),
    __metadata("design:type", Array)
], Candidato.prototype, "interesses", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => compartilhado_entity_1.Habilidades),
    (0, typeorm_1.JoinTable)({ name: 'candidato_habilidades' }),
    __metadata("design:type", Array)
], Candidato.prototype, "habilidades", void 0);
__decorate([
    (0, typeorm_1.OneToOne)(() => compartilhado_entity_1.Endereco),
    (0, typeorm_1.JoinColumn)({ name: 'endereco_id' }),
    __metadata("design:type", compartilhado_entity_1.Endereco)
], Candidato.prototype, "endereco", void 0);
exports.Candidato = Candidato = __decorate([
    (0, typeorm_1.Entity)('candidato')
], Candidato);
//# sourceMappingURL=candidato.entity.js.map