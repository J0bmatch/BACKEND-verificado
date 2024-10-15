"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.VagaModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const vaga_entity_1 = require("../vaga.entity");
const vaga_service_1 = require("./vaga.service");
const vaga_controller_1 = require("./vaga.controller");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
const compartilhado_entity_2 = require("../../ambos/compartilhado.entity");
const empresa_entity_1 = require("../empresa.entity");
let VagaModule = class VagaModule {
};
exports.VagaModule = VagaModule;
exports.VagaModule = VagaModule = __decorate([
    (0, common_1.Module)({
        imports: [
            typeorm_1.TypeOrmModule.forFeature([vaga_entity_1.Vaga, compartilhado_entity_1.Habilidades, compartilhado_entity_2.Interesses, empresa_entity_1.Empresa]),
        ],
        providers: [vaga_service_1.VagaService],
        controllers: [vaga_controller_1.VagaController],
    })
], VagaModule);
//# sourceMappingURL=vaga.module.js.map