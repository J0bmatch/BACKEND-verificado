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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.VagaController = void 0;
const common_1 = require("@nestjs/common");
const vaga_service_1 = require("./vaga.service");
let VagaController = class VagaController {
    constructor(vagaService) {
        this.vagaService = vagaService;
    }
    async createVaga(vagaData) {
        return await this.vagaService.createVaga(vagaData);
    }
    async findAll() {
        return await this.vagaService.findAll();
    }
};
exports.VagaController = VagaController;
__decorate([
    (0, common_1.Post)('criar'),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", Promise)
], VagaController.prototype, "createVaga", null);
__decorate([
    (0, common_1.Get)('todas'),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], VagaController.prototype, "findAll", null);
exports.VagaController = VagaController = __decorate([
    (0, common_1.Controller)('vaga'),
    __metadata("design:paramtypes", [vaga_service_1.VagaService])
], VagaController);
//# sourceMappingURL=vaga.controller.js.map