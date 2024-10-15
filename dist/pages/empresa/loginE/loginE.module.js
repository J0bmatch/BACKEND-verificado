"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.LoginEModule = void 0;
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const empresa_entity_1 = require("../empresa.entity");
const loginE_controller_1 = require("./loginE.controller");
const loginE_service_1 = require("./loginE.service");
let LoginEModule = class LoginEModule {
};
exports.LoginEModule = LoginEModule;
exports.LoginEModule = LoginEModule = __decorate([
    (0, common_1.Module)({
        imports: [typeorm_1.TypeOrmModule.forFeature([empresa_entity_1.Empresa])],
        controllers: [loginE_controller_1.LoginEController],
        providers: [loginE_service_1.LoginEService],
    })
], LoginEModule);
//# sourceMappingURL=loginE.module.js.map