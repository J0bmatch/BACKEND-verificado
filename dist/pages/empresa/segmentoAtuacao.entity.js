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
exports.SegmentoAtuacao = void 0;
const typeorm_1 = require("typeorm");
let SegmentoAtuacao = class SegmentoAtuacao {
};
exports.SegmentoAtuacao = SegmentoAtuacao;
__decorate([
    (0, typeorm_1.PrimaryGeneratedColumn)(),
    __metadata("design:type", Number)
], SegmentoAtuacao.prototype, "id", void 0);
__decorate([
    (0, typeorm_1.Column)('text'),
    __metadata("design:type", String)
], SegmentoAtuacao.prototype, "descricao", void 0);
__decorate([
    (0, typeorm_1.Column)({ length: 15 }),
    __metadata("design:type", String)
], SegmentoAtuacao.prototype, "setor", void 0);
exports.SegmentoAtuacao = SegmentoAtuacao = __decorate([
    (0, typeorm_1.Entity)('segmentoatuacao')
], SegmentoAtuacao);
//# sourceMappingURL=segmentoAtuacao.entity.js.map