import { Repository } from 'typeorm';
import { Empresa } from '../empresa.entity';
export declare class LoginEService {
    private readonly empresaRepository;
    constructor(empresaRepository: Repository<Empresa>);
    login(email: string, senha: string): Promise<any>;
}
