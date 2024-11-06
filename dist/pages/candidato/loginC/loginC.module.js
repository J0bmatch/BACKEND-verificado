"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.LoginCModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const loginC_service_1 = require("./loginC.service");
const loginC_controller_1 = require("./loginC.controller");
const candidato_entity_1 = require("../candidato.entity");
const compartilhado_entity_1 = require("../../ambos/compartilhado.entity");
let LoginCModule = class LoginCModule {
};
exports.LoginCModule = LoginCModule;
exports.LoginCModule = LoginCModule = __decorate([
    (0, common_1.Module)({
        imports: [typeorm_1.TypeOrmModule.forFeature([candidato_entity_1.Candidato, compartilhado_entity_1.Habilidades, compartilhado_entity_1.Interesses])],
        controllers: [loginC_controller_1.LoginCController],
        providers: [loginC_service_1.LoginCService],
    })
], LoginCModule);
//# sourceMappingURL=loginC.module.js.map