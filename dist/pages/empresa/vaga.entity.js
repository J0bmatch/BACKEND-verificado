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
exports.Vaga = void 0;
const typeorm_1 = require("typeorm");
const compartilhado_entity_1 = require("../ambos/compartilhado.entity");
const compartilhado_entity_2 = require("../ambos/compartilhado.entity");
const empresa_entity_1 = require("./empresa.entity");
let Vaga = class Vaga {
};
exports.Vaga = Vaga;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Vaga.prototype, "id", void 0);
__decorate([
    (0, typeorm_1.Column)('text'),
    __metadata("design:type", String)
], Vaga.prototype, "descricao", void 0);
__decorate([
    (0, typeorm_1.Column)('text'),
    __metadata("design:type", String)
], Vaga.prototype, "exigencias", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 30 }),
    __metadata("design:type", String)
], Vaga.prototype, "funcao", void 0);
__decorate([
    (0, typeorm_1.Column)('float', { precision: 5 }),
    __metadata("design:type", Number)
], Vaga.prototype, "salario", void 0);
__decorate([
    (0, typeorm_1.Column)('text'),
    __metadata("design:type", String)
], Vaga.prototype, "riscos", void 0);
__decorate([
    (0, typeorm_1.Column)('text'),
    __metadata("design:type", String)
], Vaga.prototype, "googleForm", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => compartilhado_entity_1.Habilidades, { eager: true }),
    (0, typeorm_1.JoinTable)({
        name: 'vaga_habilidades',
        joinColumn: { name: 'vaga_id', referencedColumnName: 'id' },
        inverseJoinColumn: { name: 'habilidades_id', referencedColumnName: 'id' },
    }),
    __metadata("design:type", Array)
], Vaga.prototype, "habilidades", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => compartilhado_entity_2.Interesses, { eager: true }),
    (0, typeorm_1.JoinTable)({
        name: 'vaga_interesses',
        joinColumn: { name: 'vaga_id', referencedColumnName: 'id' },
        inverseJoinColumn: { name: 'interesses_id', referencedColumnName: 'id' },
    }),
    __metadata("design:type", Array)
], Vaga.prototype, "interesses", void 0);
__decorate([
    (0, typeorm_1.ManyToOne)(() => empresa_entity_1.Empresa, { eager: true }),
    (0, typeorm_1.JoinColumn)({ name: 'empresa_id' }),
    __metadata("design:type", empresa_entity_1.Empresa)
], Vaga.prototype, "empresa", void 0);
exports.Vaga = Vaga = __decorate([
    (0, typeorm_1.Entity)('vaga')
], Vaga);
//# sourceMappingURL=vaga.entity.js.map