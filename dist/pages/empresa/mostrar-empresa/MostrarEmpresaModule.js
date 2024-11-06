"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MostrarEmpresaModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const MostrarEmpresaService_1 = require("./MostrarEmpresaService");
const MostrarEmpresaController_1 = require("./MostrarEmpresaController");
const empresa_entity_1 = require("../empresa.entity");
const segmentoAtuacao_entity_1 = require("../segmentoAtuacao.entity");
let MostrarEmpresaModule = class MostrarEmpresaModule {
};
exports.MostrarEmpresaModule = MostrarEmpresaModule;
exports.MostrarEmpresaModule = MostrarEmpresaModule = __decorate([
    (0, common_1.Module)({
        imports: [typeorm_1.TypeOrmModule.forFeature([empresa_entity_1.Empresa, segmentoAtuacao_entity_1.SegmentoAtuacao])],
        controllers: [MostrarEmpresaController_1.MostrarEmpresaController],
        providers: [MostrarEmpresaService_1.MostrarEmpresaService],
    })
], MostrarEmpresaModule);
//# sourceMappingURL=MostrarEmpresaModule.js.map