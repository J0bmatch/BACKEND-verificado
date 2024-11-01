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
exports.Interesses = exports.Habilidades = exports.Endereco = void 0;
const vaga_entity_1 = require("../empresa/vaga.entity");
const typeorm_1 = require("typeorm");
let Endereco = class Endereco {
};
exports.Endereco = Endereco;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Endereco.prototype, "endereco_id", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 9 }),
    __metadata("design:type", String)
], Endereco.prototype, "cep", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Endereco.prototype, "rua", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Endereco.prototype, "bairro", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Endereco.prototype, "cidade", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 2 }),
    __metadata("design:type", String)
], Endereco.prototype, "estado", void 0);
exports.Endereco = Endereco = __decorate([
    (0, typeorm_1.Entity)('endereco')
], Endereco);
let Habilidades = class Habilidades {
};
exports.Habilidades = Habilidades;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Habilidades.prototype, "id", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Habilidades.prototype, "descricao", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Habilidades.prototype, "tipo", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => vaga_entity_1.Vaga, vaga => vaga.habilidades),
    __metadata("design:type", Array)
], Habilidades.prototype, "vagas", void 0);
exports.Habilidades = Habilidades = __decorate([
    (0, typeorm_1.Entity)('habilidades')
], Habilidades);
let Interesses = class Interesses {
};
exports.Interesses = Interesses;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], Interesses.prototype, "id", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Interesses.prototype, "descricao", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 20 }),
    __metadata("design:type", String)
], Interesses.prototype, "tipo", void 0);
__decorate([
    (0, typeorm_1.ManyToMany)(() => vaga_entity_1.Vaga, vaga => vaga.interesses),
    __metadata("design:type", Array)
], Interesses.prototype, "vagas", void 0);
exports.Interesses = Interesses = __decorate([
    (0, typeorm_1.Entity)('interesses')
], Interesses);
//# sourceMappingURL=compartilhado.entity.js.map