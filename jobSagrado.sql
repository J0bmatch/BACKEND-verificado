-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2024 às 22:07
-- Versão do servidor: 8.0.36
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jobmatch`
--
CREATE DATABASE IF NOT EXISTS `jobmatch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jobmatch`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `id` int NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `idiomas` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fluencia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nomesocial` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `tipodeficiencia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `graudeficiencia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `adaptacaodeficiencia` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bio` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `experiencia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `dataNascimento` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `rm` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `curso` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `instituicao` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `endereco_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`id`, `nome`, `email`, `idiomas`, `fluencia`, `nomesocial`, `numero`, `tipodeficiencia`, `graudeficiencia`, `adaptacaodeficiencia`, `bio`, `experiencia`, `telefone`, `dataNascimento`, `rm`, `curso`, `instituicao`, `endereco_id`) VALUES
(1, 'João Silva', 'joao.silva@email.com', 'Inglês, Espanho', 'Fluente', 'Joãozinho', '1234', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Candidato com grande experiência em desenvolviment', 'Experiência de 5 anos como desenvolvedor fullstack.', '999999999', '1998-03-15', '12345', 'Ciência da Computaçã', 'Universidade XYZ', 1),
(2, 'Maria Oliveira', 'maria.oliveira@email.com', 'Português, Ingl', 'Intermediário', 'Maria', '5678', 'Deficiência Auditiva', 'Média', 'Requer adaptações no ambiente de trabalho para com', 'Experiência de 3 anos em marketing digital e gestã', 'Trabalhou em empresas de marketing e agência de SEO.', '987654321', '1995-06-22', '67890', 'Marketing Digital', 'Instituto ABC', 2),
(3, 'Pedro Souza', 'pedro.souza@email.com', 'Português', 'Básico', 'Pedro', '4321', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Candidato com conhecimento básico em administração', 'Sem experiência profissional formal.', '123123123', '2000-09-05', '11223', 'Administração', 'Faculdade ABC', 3),
(4, 'Ana Costa', 'ana.costa@email.com', 'Português, Ingl', 'Fluente', 'Ana', '6789', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Experiência de 7 anos em gestão de projetos de TI.', 'Gestora de projetos de TI, liderou equipes em empresas multinacionais.', '345678901', '1990-02-18', '22334', 'Gestão de TI', 'Universidade DEF', 4),
(5, 'Carlos Almeida', 'carlos.almeida@email.com', 'Português, Espa', 'Avançado', 'Carlos', '2345', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Especialista em redes de computadores e segurança ', '5 anos de experiência em segurança da informação e redes.', '876543210', '1988-12-10', '33445', 'Segurança da Informa', 'Faculdade GHI', 5),
(6, 'Julia Santos', 'julia.santos@email.com', 'Português, Ingl', 'Intermediário', 'Júlia', '5432', 'Deficiência Motora', 'Leve', 'Necessita de adaptações para acessibilidade.', 'Experiência em design gráfico e UI/UX.', 'Atuou como designer em empresas de publicidade.', '654321987', '1996-07-30', '44556', 'Design Gráfico', 'Instituto XYZ', 6),
(7, 'Felipe Lima', 'felipe.lima@email.com', 'Português', 'Fluente', 'Felipe', '1357', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Experiência de 4 anos em análise de dados e busine', 'Analista de dados, trabalhou com grandes volumes de dados em empresas de tecnologia.', '123987456', '1997-08-25', '55667', 'Análise de Dados', 'Universidade JKL', 7),
(8, 'Gabriela Pereira', 'gabriela.pereira@email.com', 'Português', 'Básico', 'Gabriela', '2468', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Estagiária em administração, buscando experiência ', 'Sem experiência formal, mas com boa formação acadêmica em administração.', '321654987', '1999-05-17', '66778', 'Administração', 'Universidade MNO', 8),
(9, 'Rodrigo Oliveira', 'rodrigo.oliveira@email.com', 'Português, Ingl', 'Avançado', 'Rodrigo', '9876', 'Nenhuma', 'Nenhuma', 'Nenhuma', 'Experiência de 6 anos como desenvolvedor mobile.', 'Desenvolvimento de aplicativos móveis para diversas plataformas.', '654987321', '1994-11-10', '77889', 'Desenvolvimento de S', 'Faculdade PQR', 9),
(10, 'Fernanda Silva', 'fernanda.silva@email.com', 'Português', 'Intermediário', 'Fernanda', '8642', 'Deficiência Visual', 'Moderada', 'Necessita de tecnologias assistivas para leitura d', 'Profissional com experiência em consultoria de TI ', 'Atuou em empresas de TI com foco em suporte técnico e infraestrutura.', '159753486', '1995-02-12', '88990', 'Consultoria de TI', 'Universidade STU', 10),
(11, 'Carlos Silva', '', '', '', '', '', 'Visual', 'Moderada', 'Necessita de software de leitura.', '', NULL, '', '1995-08-15', '12345', 'Tecnologia da Inform', 'Faculdade ABC', NULL),
(12, 'Ana Costa', '', '', '', '', '', '', '', '', '', NULL, '', '1994-03-22', '12346', '', '', NULL),
(13, 'Bruno Santos', '', '', '', '', '', '', '', '', '', NULL, '', '1996-11-10', '12347', 'Engenharia', 'Universidade XYZ', NULL),
(14, 'Mariana Oliveira', '', '', '', '', '', 'Auditiva', 'Leve', 'Precisa de intérprete de Libras.', '', NULL, '', '1997-07-25', '12348', '', '', NULL),
(15, 'Lucas Almeida', '', '', '', '', '', '', '', '', '', NULL, '', '1993-02-18', '12349', '', '', NULL),
(16, 'Fernanda Lima', '', '', '', '', '', '', '', '', '', NULL, '', '1995-12-03', '12350', 'Administração', 'Instituto DEF', NULL),
(17, 'Rafael Gonçalves', '', '', '', '', '', '', '', '', '', NULL, '', '1994-05-13', '12351', '', '', NULL),
(18, 'Juliana Martins', '', '', '', '', '', '', '', '', '', NULL, '', '1996-09-29', '12352', 'Direito', 'Universidade ABC', NULL),
(19, 'Gabriel Souza', '', '', '', '', '', 'Visual', 'Grave', 'Necessita de documentos em braile.', '', NULL, '', '1994-11-21', '12353', '', '', NULL),
(20, 'Patricia Rocha', '', '', '', '', '', '', '', '', '', NULL, '', '1993-04-08', '12354', '', '', NULL),
(21, 'Renato Ferreira', '', '', '', '', '', '', '', '', '', NULL, '', '1995-06-19', '12355', 'Ciências da Computaç', 'Faculdade GHI', NULL),
(22, 'Larissa Sousa', '', '', '', '', '', 'Motora', 'Moderada', 'Necessita de adaptações ergonômicas.', '', NULL, '', '1997-10-30', '12356', '', '', NULL),
(23, 'Thiago Pereira', '', '', '', '', '', '', '', '', '', NULL, '', '1996-12-09', '12357', '', '', NULL),
(24, 'Aline Farias', '', '', '', '', '', '', '', '', '', NULL, '', '1995-04-11', '12358', 'Psicologia', 'Faculdade JKL', NULL),
(25, 'Bruna Campos', '', '', '', '', '', '', '', '', '', NULL, '', '1994-01-05', '12359', '', '', NULL),
(26, 'Eduardo Ribeiro', '', '', '', '', '', '', '', '', '', NULL, '', '1993-08-17', '12360', '', '', NULL),
(27, 'Sofia Mendes', '', '', '', '', '', '', '', '', '', NULL, '', '1997-02-23', '12361', 'Medicina', 'Universidade MNO', NULL),
(28, 'Vitor Moreira', '', '', '', '', '', '', '', '', '', NULL, '', '1994-06-12', '12362', '', '', NULL),
(29, 'Isabela Pinto', '', '', '', '', '', 'Auditiva', 'Leve', 'Utiliza aparelhos auditivos.', '', NULL, '', '1995-09-04', '12363', '', '', NULL),
(30, 'Rogério Borges', '', '', '', '', '', '', '', '', '', NULL, '', '1996-03-26', '12364', '', '', NULL),
(31, 'Natalia Andrade', '', '', '', '', '', '', '', '', '', NULL, '', '1994-07-14', '12365', '', '', NULL),
(32, 'Ricardo Lopes', '', '', '', '', '', '', '', '', '', NULL, '', '1993-11-01', '12366', 'Engenharia Civil', 'Instituto QRS', NULL),
(33, 'Daniel Barreto', '', '', '', '', '', '', '', '', '', NULL, '', '1995-05-30', '12367', '', '', NULL),
(34, 'Raquel Araújo', '', '', '', '', '', '', '', '', '', NULL, '', '1997-04-21', '12368', 'Matemática', 'Faculdade UVW', NULL),
(35, 'Fabio Machado', '', '', '', '', '', '', '', '', '', NULL, '', '1996-01-18', '12369', '', '', NULL),
(36, 'Clarissa Santana', '', '', '', '', '', '', '', '', '', NULL, '', '1994-09-08', '12370', '', '', NULL),
(37, 'Marcelo Vieira', '', '', '', '', '', '', '', '', '', NULL, '', '1993-12-12', '12371', '', '', NULL),
(38, 'Alice Teixeira', '', '', '', '', '', '', '', '', '', NULL, '', '1995-07-22', '12372', 'Engenharia de Softwa', 'Universidade XYZ', NULL),
(39, 'Otávio Cavalcante', '', '', '', '', '', '', '', '', '', NULL, '', '1997-06-15', '12373', '', '', NULL),
(40, 'Melissa Bezerra', '', '', '', '', '', 'Visual', 'Grave', 'Necessita de documentos acessíveis.', '', NULL, '', '1994-10-02', '12374', '', '', NULL),
(41, 'Enzo Rezende', '', '', '', '', '', '', '', '', '', NULL, '', '1993-03-30', '12375', 'Física', 'Universidade DEF', NULL),
(42, 'Beatriz Cunha', '', '', '', '', '', '', '', '', '', NULL, '', '1995-08-06', '12376', '', '', NULL),
(43, 'Cauã Lima', '', '', '', '', '', '', '', '', '', NULL, '', '1994-04-27', '12377', '', '', NULL),
(44, 'Lívia Xavier', '', '', '', '', '', '', '', '', '', NULL, '', '1996-10-19', '12378', '', '', NULL),
(45, 'Diego Campos', '', '', '', '', '', '', '', '', '', NULL, '', '1993-09-09', '12379', '', '', NULL),
(46, 'Tatiane Oliveira', '', '', '', '', '', '', '', '', '', NULL, '', '1995-02-14', '12380', '', '', NULL),
(47, 'Leandro Cardoso', '', '', '', '', '', '', '', '', '', NULL, '', '1994-05-01', '12381', '', '', NULL),
(48, 'Paula Aguiar', '', '', '', '', '', 'Motora', 'Leve', 'Necessita adaptações de mobilidade.', '', NULL, '', '1997-08-24', '12382', 'Fisioterapia', 'Universidade ABC', NULL),
(49, 'Murilo Monteiro', '', '', '', '', '', '', '', '', '', NULL, '', '1996-06-17', '12383', '', '', NULL),
(50, 'Camila Pires', '', '', '', '', '', '', '', '', '', NULL, '', '1995-11-12', '12384', '', '', NULL),
(51, 'Felipe Prado', '', '', '', '', '', '', '', '', '', NULL, '', '1994-12-23', '12385', '', '', NULL),
(52, 'Luana Barbosa', '', '', '', '', '', '', '', '', '', NULL, '', '1993-07-01', '12386', '', '', NULL),
(53, 'Renata Ferreira', '', '', '', '', '', '', '', '', '', NULL, '', '1996-05-29', '12387', '', '', NULL),
(54, 'Gustavo Nogueira', '', '', '', '', '', '', '', '', '', NULL, '', '1994-08-14', '12388', '', '', NULL),
(55, 'Priscila Silva', '', '', '', '', '', '', '', '', '', NULL, '', '1995-01-25', '12389', '', '', NULL),
(56, 'André Moreira', '', '', '', '', '', '', '', '', '', NULL, '', '1996-02-07', '12390', '', '', NULL),
(57, 'Rita de Cássia', '', '', '', '', '', '', '', '', '', NULL, '', '1997-05-19', '12391', '', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_endereco`
--

CREATE TABLE `candidato_endereco` (
  `candidatoId` int NOT NULL,
  `enderecoEnderecoId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_habilidades`
--

CREATE TABLE `candidato_habilidades` (
  `candidatoId` int NOT NULL,
  `habilidadesId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato_habilidades`
--

INSERT INTO `candidato_habilidades` (`candidatoId`, `habilidadesId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_id`
--

CREATE TABLE `candidato_id` (
  `candidatoId` int NOT NULL,
  `enderecoEnderecoId` int NOT NULL,
  `habilidadesId` int NOT NULL,
  `interessesId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_interesses`
--

CREATE TABLE `candidato_interesses` (
  `candidatoId` int NOT NULL,
  `interessesId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato_interesses`
--

INSERT INTO `candidato_interesses` (`candidatoId`, `interessesId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `confirmmatch`
--

CREATE TABLE `confirmmatch` (
  `id` int NOT NULL,
  `vaga_id` int NOT NULL,
  `candidato_id` int NOT NULL,
  `iscontratado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `confirmmatch`
--

INSERT INTO `confirmmatch` (`id`, `vaga_id`, `candidato_id`, `iscontratado`) VALUES
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci NOT NULL,
  `segmentoatuacao_id` int DEFAULT NULL,
  `cnpj` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fotoperfil` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomeUltilizador` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomeEmpresa` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `rua` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id`, `descricao`, `segmentoatuacao_id`, `cnpj`, `telefone`, `email`, `fotoperfil`, `nomeUltilizador`, `senha`, `nomeEmpresa`, `numero`, `complemento`, `cep`, `rua`, `bairro`, `cidade`, `estado`, `pais`) VALUES
(1, 'Empresa 1 descrição', 1, '12.345.678/0001-90', '(11) 98765-4321', 'empresa1@email.com', 'foto1.jpg', 'usuario1', 'senha1', 'Empresa 1', '100', 'Complemento 1', '01010-010', 'Rua A', 'Bairro A', 'Cidade A', 'Estado A', 'Brasil'),
(2, 'Empresa 2 descrição', 2, '23.456.789/0001-01', '(21) 91234-5678', 'empresa2@email.com', 'foto2.jpg', 'usuario2', 'senha2', 'Empresa 2', '200', 'Complemento 2', '02020-020', 'Rua B', 'Bairro B', 'Cidade B', 'Estado B', 'Brasil'),
(3, 'Empresa 3 descrição', 3, '34.567.890/0001-12', '(31) 93456-7890', 'empresa3@email.com', 'foto3.jpg', 'usuario3', 'senha3', 'Empresa 3', '300', 'Complemento 3', '03030-030', 'Rua C', 'Bairro C', 'Cidade C', 'Estado C', 'Brasil'),
(4, 'Empresa 4 descrição', 4, '45.678.901/0001-23', '(41) 94567-8901', 'empresa4@email.com', 'foto4.jpg', 'usuario4', 'senha4', 'Empresa 4', '400', 'Complemento 4', '04040-040', 'Rua D', 'Bairro D', 'Cidade D', 'Estado D', 'Brasil'),
(5, 'Empresa 5 descrição', 5, '56.789.012/0001-34', '(51) 95678-9012', 'empresa5@email.com', 'foto5.jpg', 'usuario5', 'senha5', 'Empresa 5', '500', 'Complemento 5', '05050-050', 'Rua E', 'Bairro E', 'Cidade E', 'Estado E', 'Brasil'),
(6, 'Empresa 6 descrição', 6, '67.890.123/0001-45', '(61) 96789-0123', 'empresa6@email.com', 'foto6.jpg', 'usuario6', 'senha6', 'Empresa 6', '600', 'Complemento 6', '06060-060', 'Rua F', 'Bairro F', 'Cidade F', 'Estado F', 'Brasil'),
(7, 'Empresa 7 descrição', 7, '78.901.234/0001-56', '(71) 97890-1234', 'empresa7@email.com', 'foto7.jpg', 'usuario7', 'senha7', 'Empresa 7', '700', 'Complemento 7', '07070-070', 'Rua G', 'Bairro G', 'Cidade G', 'Estado G', 'Brasil'),
(8, 'Empresa 8 descrição', 8, '89.012.345/0001-67', '(81) 98901-2345', 'empresa8@email.com', 'foto8.jpg', 'usuario8', 'senha8', 'Empresa 8', '800', 'Complemento 8', '08080-080', 'Rua H', 'Bairro H', 'Cidade H', 'Estado H', 'Brasil'),
(9, 'Empresa 9 descrição', 9, '90.123.456/0001-78', '(91) 99012-3456', 'empresa9@email.com', 'foto9.jpg', 'usuario9', 'senha9', 'Empresa 9', '900', 'Complemento 9', '09090-090', 'Rua I', 'Bairro I', 'Cidade I', 'Estado I', 'Brasil'),
(10, 'Empresa 10 descrição', 10, '01.234.567/0001-89', '(11) 91234-5678', 'empresa10@email.com', 'foto10.jpg', 'usuario10', 'senha10', 'Empresa 10', '1000', 'Complemento 10', '10010-100', 'Rua J', 'Bairro J', 'Cidade J', 'Estado J', 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `endereco_id` int NOT NULL,
  `cep` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `rua` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`endereco_id`, `cep`, `rua`, `bairro`, `cidade`, `estado`) VALUES
(1, '12345-678', 'Rua das Flores', 'Jardim das Oliveiras', 'São Paulo', 'SP'),
(2, '23456-789', 'Avenida Brasil', 'Centro', 'Rio de Janeiro', 'RJ'),
(3, '34567-890', 'Rua da Paz', 'Vila Nova', 'Belo Horizonte', 'MG'),
(4, '45678-901', 'Praça da Sé', 'Centro Histórico', 'Salvador', 'BA'),
(5, '56789-012', 'Rua dos Três Coraçõe', 'Bairro Novo', 'Porto Alegre', 'RS'),
(6, '00000-000', 'Rua Sem Nome', 'Bairro Inexistente', 'Cidade Fantasma', 'XX'),
(7, '11111-111', 'Rua Desconhecida', 'Bairro Imaginário', 'Utopia', 'YY'),
(8, '22222-222', 'Rua do Vazio', 'Bairro Sem Sentido', 'Inexistência', 'ZZ'),
(9, '33333-333', 'Rua do Engano', 'Bairro Misterioso', 'Ilusão', 'AA'),
(10, '44444-444', 'Rua do Nada', 'Bairro da Falsa Espe', 'Desconhecido', 'BB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formacaoacademica`
--

CREATE TABLE `formacaoacademica` (
  `id` int NOT NULL,
  `curso` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instituicao` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cidade` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formacao_academica`
--

CREATE TABLE `formacao_academica` (
  `id` int NOT NULL,
  `curso` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `instituicao` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `habilidades`
--

INSERT INTO `habilidades` (`id`, `tipo`, `descricao`) VALUES
(1, 'Habilidades Técnicas', 'Programação/Codifica'),
(2, 'Habilidades Técnicas', 'Análise de Dados'),
(3, 'Habilidades Técnicas', 'Contabilidade/Finanç'),
(4, 'Habilidades Técnicas', 'Design Gráfico'),
(5, 'Habilidades Técnicas', 'Redação Técnica'),
(6, 'Habilidades Técnicas', 'Conhecimento de info'),
(7, 'Habilidades Técnicas', 'Operação de Máquinas'),
(8, 'Habilidades Técnicas', 'Gestão de Projetos'),
(9, 'Habilidades Técnicas', 'Vendas e Marketing'),
(10, 'Habilidades Técnicas', 'Idiomas Estrangeiros'),
(11, 'Habilidades Interpessoais', 'Comunicação'),
(12, 'Habilidades Interpessoais', 'Trabalho em equipe'),
(13, 'Habilidades Interpessoais', 'Liderança'),
(14, 'Habilidades Interpessoais', 'Negociação'),
(15, 'Habilidades Interpessoais', 'Resolução de conflit'),
(16, 'Habilidades Interpessoais', 'Empatia'),
(17, 'Habilidades Interpessoais', 'Adaptabilidade'),
(18, 'Habilidades Interpessoais', 'Inteligência emocion'),
(19, 'Habilidades Interpessoais', 'Persuasão'),
(20, 'Habilidades Interpessoais', 'Relacionamento inter'),
(21, 'Habilidades Cognitivas', 'Pensamento Crítico'),
(22, 'Habilidades Cognitivas', 'Resolução de Problem'),
(23, 'Habilidades Cognitivas', 'Tomada de Decisões'),
(24, 'Habilidades Cognitivas', 'Planejamento e Organ'),
(25, 'Habilidades Cognitivas', 'Criatividade'),
(26, 'Habilidades Cognitivas', 'Aprendizagem Rápida'),
(27, 'Habilidades Cognitivas', 'Memória'),
(28, 'Habilidades Cognitivas', 'Atenção aos Detalhes'),
(29, 'Habilidades Cognitivas', 'Adaptabilidade'),
(30, 'Habilidades Gerencia', 'Liderança'),
(31, 'Habilidades Gerencia', 'Gestão de Projetos'),
(32, 'Habilidades Gerencia', 'Planejamento Estraté'),
(33, 'Habilidades Gerencia', 'Gestão de Recursos'),
(34, 'Habilidades Gerencia', 'Tomada de Decisões'),
(35, 'Habilidades Gerencia', 'Negociação'),
(36, 'Habilidades Gerencia', 'Mentoria'),
(37, 'Habilidades Gerencia', 'Desenvolvimento de T'),
(38, 'Habilidades Operacio', 'Operação de Equipame'),
(39, 'Habilidades Operacio', 'Manutenção Técnica'),
(40, 'Habilidades Operacio', 'Segurança no Trabalh'),
(41, 'Habilidades Operacio', 'Logística e Distribu'),
(42, 'Habilidades Operacio', 'Controle de Qualidad'),
(43, 'Habilidades Operacio', 'Produção'),
(44, 'Habilidades Operacio', 'Gestão de Estoques'),
(45, 'Habilidades Operacio', 'Processos de Fabrica'),
(46, 'Habilidades Operacio', 'Operação de Software'),
(47, 'Habilidades Operacio', 'Manuseio de Materiai'),
(48, 'Habilidades Pessoais', 'Autodisciplina'),
(49, 'Habilidades Pessoais', 'Motivação'),
(50, 'Habilidades Pessoais', 'Autoconhecimento'),
(51, 'Habilidades Pessoais', 'Gestão do Estresse'),
(52, 'Habilidades Pessoais', 'Inteligência Emocion'),
(53, 'Habilidades Pessoais', 'Resiliência'),
(54, 'Habilidades Pessoais', 'Curiosidade e Aprend'),
(55, 'Habilidades Pessoais', 'Ética e Integridade'),
(56, 'Habilidades Pessoais', 'Confiança'),
(57, 'Habilidades Pessoais', 'Proatividade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesses`
--

CREATE TABLE `interesses` (
  `id` int NOT NULL,
  `descricao` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `interesses`
--

INSERT INTO `interesses` (`id`, `descricao`, `tipo`) VALUES
(1, 'Jornalismo', 'Comunicação e Mídia'),
(2, 'Produção de Vídeo', 'Comunicação e Mídia'),
(3, 'Publicidade', 'Comunicação e Mídia'),
(4, 'Relações Públicas', 'Comunicação e Mídia'),
(5, 'Redação Criativa', 'Comunicação e Mídia'),
(6, 'Design Gráfico', 'Comunicação e Mídia'),
(7, 'Ensino', 'Educação e Desenvolv'),
(8, 'Desenvolvimento Pess', 'Educação e Desenvolv'),
(9, 'Coaching', 'Educação e Desenvolv'),
(10, 'Mentoria', 'Educação e Desenvolv'),
(11, 'Energia Renovável', 'Sustentabilidade e M'),
(12, 'Conservação da Natur', 'Sustentabilidade e M'),
(13, 'Agricultura Sustentá', 'Sustentabilidade e M'),
(14, 'Gestão de Resíduos', 'Sustentabilidade e M'),
(15, 'Educação Ambiental', 'Sustentabilidade e M'),
(16, 'Direito Internaciona', 'Direito e Ciências P'),
(17, 'Direitos Humanos', 'Direito e Ciências P'),
(18, 'Políticas Públicas', 'Direito e Ciências P'),
(19, 'Ciência Política', 'Direito e Ciências P'),
(20, 'Criminologia', 'Direito e Ciências P'),
(21, 'Turismo Sustentável', 'Viagens e Cultura'),
(22, 'Estudos Culturais', 'Viagens e Cultura'),
(23, 'Línguas Estrangeiras', 'Viagens e Cultura'),
(24, 'Fotografia de Viagen', 'Viagens e Cultura'),
(25, 'Gastronomia', 'Viagens e Cultura'),
(26, 'Desenvolvimento de S', 'Tecnologia e Inovaçã'),
(27, 'Inteligência Artific', 'Tecnologia e Inovaçã'),
(28, 'Cibersegurança', 'Tecnologia e Inovaçã'),
(29, 'Computação em Nuvem', 'Tecnologia e Inovaçã'),
(30, 'Internet das Coisas', 'Tecnologia e Inovaçã'),
(31, 'Blockchain', 'Tecnologia e Inovaçã'),
(32, 'Gestão de Projetos', 'Negócios e Finanças'),
(33, 'Finanças', 'Negócios e Finanças'),
(34, 'Empreendedorismo', 'Negócios e Finanças'),
(35, 'Marketing Digital', 'Negócios e Finanças'),
(36, 'Consultoria Empresar', 'Negócios e Finanças'),
(37, 'Nutrição', 'Saúde e Bem-estar'),
(38, 'Fitness', 'Saúde e Bem-estar'),
(39, 'Saúde Mental', 'Saúde e Bem-estar'),
(40, 'Medicina Preventiva', 'Saúde e Bem-estar'),
(41, 'Fitoterapia', 'Saúde e Bem-estar'),
(42, 'Terapias', 'Saúde e Bem-estar'),
(43, 'Biotecnologia', 'Ciências e Engenhari'),
(44, 'Engenharia Ambiental', 'Ciências e Engenhari'),
(45, 'Física', 'Ciências e Engenhari'),
(46, 'Química', 'Ciências e Engenhari'),
(47, 'Ciência dos Materiai', 'Ciências e Engenhari'),
(48, 'Literatura', 'Artes e Humanidades'),
(49, 'História da Arte', 'Artes e Humanidades'),
(50, 'Filosofia', 'Artes e Humanidades'),
(51, 'Música', 'Artes e Humanidades'),
(52, 'Teatro', 'Artes e Humanidades'),
(53, 'Fotografia', 'Artes e Humanidades');

-- --------------------------------------------------------

--
-- Estrutura da tabela `segmentoatuacao`
--

CREATE TABLE `segmentoatuacao` (
  `id` int NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci NOT NULL,
  `setor` varchar(15) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `segmentoatuacao`
--

INSERT INTO `segmentoatuacao` (`id`, `descricao`, `setor`) VALUES
(1, 'Descrição 430', 'RH'),
(2, 'Descrição 266', 'Vendas'),
(3, 'Descrição 330', 'Logística'),
(4, 'Descrição 609', 'TI'),
(5, 'Descrição 642', 'Logística'),
(6, 'Descrição 320', 'Financeiro'),
(7, 'Descrição 98', 'Logística'),
(8, 'Descrição 219', 'Vendas'),
(9, 'Descrição 964', 'TI'),
(10, 'Descrição 200', 'Pesquisa e Dese');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga`
--

CREATE TABLE `vaga` (
  `id` int NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci NOT NULL,
  `exigencias` text COLLATE utf8mb4_general_ci NOT NULL,
  `salario` float NOT NULL,
  `riscos` text COLLATE utf8mb4_general_ci NOT NULL,
  `empresa_id` int DEFAULT NULL,
  `funcao` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `googleForm` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga`
--

INSERT INTO `vaga` (`id`, `descricao`, `exigencias`, `salario`, `riscos`, `empresa_id`, `funcao`, `googleForm`) VALUES
(1, 'Desenvolvedor Fullstack', 'Conhecimento em JavaScript, Node.js, React, e banco de dados MySQL', 4500, 'Trabalho remoto com prazos apertados', 1, 'Desenvolvedor', 'https://forms.gle/abcd1234'),
(2, 'Analista de Marketing Digital', 'Experiência com campanhas no Google Ads, SEO e Marketing de Conteúdo', 3000, 'Necessário estar disponível para viagens', 2, 'Analista de Marketing', 'https://forms.gle/abcd1235'),
(3, 'Engenheiro de Software', 'Conhecimentos avançados em Python e C++, experiência com desenvolvimento ágil', 7500, 'Possibilidade de trabalho em projetos internacionais', 3, 'Engenheiro', 'https://forms.gle/abcd1236'),
(4, 'Designer Gráfico', 'Domínio de ferramentas como Adobe Photoshop e Illustrator', 3500, 'Ambiente criativo com prazos curtos', 4, 'Designer', 'https://forms.gle/abcd1237'),
(5, 'Coordenador de Projetos', 'Experiência com gestão de equipes e projetos de TI', 6000, 'Gestão de projetos de alta complexidade', 5, 'Coordenador', 'https://forms.gle/abcd1238'),
(6, 'Analista Financeiro', 'Conhecimento em Excel avançado, controle de fluxo de caixa e planejamento financeiro', 4000, 'Trabalho em escritório com possibilidade de viagens', 6, 'Analista', 'https://forms.gle/abcd1239'),
(7, 'Assistente de RH', 'Experiência com recrutamento e seleção, entrevistas e onboarding', 2800, 'Ambiente corporativo dinâmico', 7, 'Assistente', 'https://forms.gle/abcd1240'),
(8, 'Especialista em SEO', 'Conhecimento profundo de otimização de motores de busca e Google Analytics', 5500, 'Trabalho remoto com reuniões online', 8, 'Especialista', 'https://forms.gle/abcd1241'),
(9, 'Gerente de TI', 'Experiência em gestão de infraestrutura de TI e liderança de equipe', 9000, 'Gestão de projetos complexos', 9, 'Gerente', 'https://forms.gle/abcd1242'),
(10, 'Consultor de Vendas', 'Experiência em vendas B2B e comunicação interpessoal', 3200, 'Deslocamento frequente entre filiais', 10, 'Consultor', 'https://forms.gle/abcd1243');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga_habilidades`
--

CREATE TABLE `vaga_habilidades` (
  `vaga_id` int NOT NULL,
  `habilidades_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga_habilidades`
--

INSERT INTO `vaga_habilidades` (`vaga_id`, `habilidades_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga_interesses`
--

CREATE TABLE `vaga_interesses` (
  `vaga_id` int NOT NULL,
  `interesses_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga_interesses`
--

INSERT INTO `vaga_interesses` (`vaga_id`, `interesses_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_20bea763739ba952ded05fd68b` (`endereco_id`);

--
-- Índices para tabela `candidato_endereco`
--
ALTER TABLE `candidato_endereco`
  ADD PRIMARY KEY (`candidatoId`,`enderecoEnderecoId`),
  ADD KEY `IDX_15e229f3a5ece39a7a88ed1040` (`candidatoId`),
  ADD KEY `IDX_f205b8e5dc2571fa5e9a4a3c63` (`enderecoEnderecoId`);

--
-- Índices para tabela `candidato_habilidades`
--
ALTER TABLE `candidato_habilidades`
  ADD PRIMARY KEY (`candidatoId`,`habilidadesId`),
  ADD KEY `IDX_eae83eccd2405638ff9873857b` (`candidatoId`),
  ADD KEY `IDX_701f651ddefd853c531c1561c8` (`habilidadesId`);

--
-- Índices para tabela `candidato_id`
--
ALTER TABLE `candidato_id`
  ADD PRIMARY KEY (`interessesId`,`candidatoId`),
  ADD KEY `IDX_1b1de203b9c7c62178f3a751fb` (`candidatoId`),
  ADD KEY `IDX_913638c1edd9f0a15cb759dcf3` (`enderecoEnderecoId`),
  ADD KEY `IDX_18be7c534276cd9446b61f8dd4` (`habilidadesId`),
  ADD KEY `IDX_4f96a9fcadb480d28bfa1d99d2` (`interessesId`);

--
-- Índices para tabela `candidato_interesses`
--
ALTER TABLE `candidato_interesses`
  ADD PRIMARY KEY (`candidatoId`,`interessesId`),
  ADD KEY `IDX_41bf39b22738e2be065dd805c4` (`candidatoId`),
  ADD KEY `IDX_6116b19138c66c034df5358a56` (`interessesId`);

--
-- Índices para tabela `confirmmatch`
--
ALTER TABLE `confirmmatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaga_id` (`vaga_id`),
  ADD KEY `candidato_id` (`candidato_id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_c4b9b035f5892d1ba3620902073` (`segmentoatuacao_id`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`endereco_id`);

--
-- Índices para tabela `formacaoacademica`
--
ALTER TABLE `formacaoacademica`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `formacao_academica`
--
ALTER TABLE `formacao_academica`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `interesses`
--
ALTER TABLE `interesses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `segmentoatuacao`
--
ALTER TABLE `segmentoatuacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vaga`
--
ALTER TABLE `vaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_976dff194a4c7e9b8c8dbd95077` (`empresa_id`);

--
-- Índices para tabela `vaga_habilidades`
--
ALTER TABLE `vaga_habilidades`
  ADD PRIMARY KEY (`vaga_id`,`habilidades_id`),
  ADD KEY `IDX_3a77dc49796e16dc9b855fd46a` (`vaga_id`),
  ADD KEY `IDX_71cc27fe84d3ca6633fbd86b65` (`habilidades_id`);

--
-- Índices para tabela `vaga_interesses`
--
ALTER TABLE `vaga_interesses`
  ADD PRIMARY KEY (`vaga_id`,`interesses_id`),
  ADD KEY `IDX_bf6bfea9911f754569d5c3018d` (`vaga_id`),
  ADD KEY `IDX_d04ef7d8eabb493102d0d9af46` (`interesses_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `confirmmatch`
--
ALTER TABLE `confirmmatch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `endereco_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `formacaoacademica`
--
ALTER TABLE `formacaoacademica`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formacao_academica`
--
ALTER TABLE `formacao_academica`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `interesses`
--
ALTER TABLE `interesses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `segmentoatuacao`
--
ALTER TABLE `segmentoatuacao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `vaga`
--
ALTER TABLE `vaga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `FK_20bea763739ba952ded05fd68b4` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`endereco_id`);

--
-- Limitadores para a tabela `candidato_habilidades`
--
ALTER TABLE `candidato_habilidades`
  ADD CONSTRAINT `FK_701f651ddefd853c531c1561c80` FOREIGN KEY (`habilidadesId`) REFERENCES `habilidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_eae83eccd2405638ff9873857be` FOREIGN KEY (`candidatoId`) REFERENCES `candidato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `candidato_id`
--
ALTER TABLE `candidato_id`
  ADD CONSTRAINT `FK_18be7c534276cd9446b61f8dd41` FOREIGN KEY (`habilidadesId`) REFERENCES `habilidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_1b1de203b9c7c62178f3a751fb1` FOREIGN KEY (`candidatoId`) REFERENCES `candidato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_4f96a9fcadb480d28bfa1d99d29` FOREIGN KEY (`interessesId`) REFERENCES `interesses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_913638c1edd9f0a15cb759dcf3e` FOREIGN KEY (`enderecoEnderecoId`) REFERENCES `endereco` (`endereco_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `candidato_interesses`
--
ALTER TABLE `candidato_interesses`
  ADD CONSTRAINT `FK_41bf39b22738e2be065dd805c47` FOREIGN KEY (`candidatoId`) REFERENCES `candidato` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6116b19138c66c034df5358a564` FOREIGN KEY (`interessesId`) REFERENCES `interesses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `confirmmatch`
--
ALTER TABLE `confirmmatch`
  ADD CONSTRAINT `confirmmatch_ibfk_1` FOREIGN KEY (`vaga_id`) REFERENCES `vaga` (`id`),
  ADD CONSTRAINT `confirmmatch_ibfk_2` FOREIGN KEY (`candidato_id`) REFERENCES `candidato` (`id`);

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_c4b9b035f5892d1ba3620902073` FOREIGN KEY (`segmentoatuacao_id`) REFERENCES `segmentoatuacao` (`id`);

--
-- Limitadores para a tabela `vaga`
--
ALTER TABLE `vaga`
  ADD CONSTRAINT `FK_976dff194a4c7e9b8c8dbd95077` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`);

--
-- Limitadores para a tabela `vaga_habilidades`
--
ALTER TABLE `vaga_habilidades`
  ADD CONSTRAINT `FK_3a77dc49796e16dc9b855fd46ad` FOREIGN KEY (`vaga_id`) REFERENCES `vaga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_71cc27fe84d3ca6633fbd86b65f` FOREIGN KEY (`habilidades_id`) REFERENCES `habilidades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vaga_interesses`
--
ALTER TABLE `vaga_interesses`
  ADD CONSTRAINT `FK_bf6bfea9911f754569d5c3018dc` FOREIGN KEY (`vaga_id`) REFERENCES `vaga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d04ef7d8eabb493102d0d9af463` FOREIGN KEY (`interesses_id`) REFERENCES `interesses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
