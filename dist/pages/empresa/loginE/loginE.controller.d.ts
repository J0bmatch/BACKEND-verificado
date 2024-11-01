import { LoginEService } from './loginE.service';
export declare class LoginEController {
    private readonly loginEService;
    constructor(loginEService: LoginEService);
    login(loginData: {
        email: string;
        senha: string;
    }): Promise<any>;
}
