"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MostrarCandidatoModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const mostrar_candidato_service_1 = require("./mostrar-candidato.service");
const mostrar_candidato_controller_1 = require("./mostrar-candidato.controller");
const candidato_entity_1 = require("../candidato.entity");
let MostrarCandidatoModule = class MostrarCandidatoModule {
};
exports.MostrarCandidatoModule = MostrarCandidatoModule;
exports.MostrarCandidatoModule = MostrarCandidatoModule = __decorate([
    (0, common_1.Module)({
        imports: [typeorm_1.TypeOrmModule.forFeature([candidato_entity_1.Candidato])],
        controllers: [mostrar_candidato_controller_1.MostrarCandidatoController],
        providers: [mostrar_candidato_service_1.MostrarCandidatoService],
    })
], MostrarCandidatoModule);
//# sourceMappingURL=mostrar-candidato.module.js.map