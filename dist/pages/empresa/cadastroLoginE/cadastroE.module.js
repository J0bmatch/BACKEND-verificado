"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.EmpresaModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const cadastroE_controller_1 = require("./cadastroE.controller");
const cadastroE_service_1 = require("./cadastroE.service");
const empresa_entity_1 = require("../empresa.entity");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
const segmentoAtuacao_entity_1 = require("../segmentoAtuacao.entity");
let EmpresaModule = class EmpresaModule {
};
exports.EmpresaModule = EmpresaModule;
exports.EmpresaModule = EmpresaModule = __decorate([
    (0, common_1.Module)({
        imports: [
            typeorm_1.TypeOrmModule.forFeature([empresa_entity_1.Empresa, compartilhado_entity_1.Endereco, segmentoAtuacao_entity_1.SegmentoAtuacao]),
        ],
        controllers: [cadastroE_controller_1.EmpresaController],
        providers: [cadastroE_service_1.EmpresaService],
    })
], EmpresaModule);
//# sourceMappingURL=cadastroE.module.js.map