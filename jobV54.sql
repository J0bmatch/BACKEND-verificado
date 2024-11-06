-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2024 às 02:09
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

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
CREATE DATABASE `jobmatch`;
USE `jobmatch`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idiomas` varchar(15) NOT NULL,
  `fluencia` varchar(15) NOT NULL,
  `nomesocial` varchar(50) NOT NULL,
  `numero` varchar(4) NOT NULL,
  `tipodeficiencia` varchar(50) NOT NULL,
  `graudeficiencia` varchar(50) NOT NULL,
  `adaptacaodeficiencia` varchar(50) NOT NULL,
  `bio` varchar(50) NOT NULL,
  `experiencia` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `dataNascimento` varchar(11) NOT NULL,
  `rm` varchar(5) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `instituicao` varchar(50) NOT NULL,
  `endereco_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`id`, `nome`, `email`, `idiomas`, `fluencia`, `nomesocial`, `numero`, `tipodeficiencia`, `graudeficiencia`, `adaptacaodeficiencia`, `bio`, `experiencia`, `telefone`, `dataNascimento`, `rm`, `curso`, `instituicao`, `endereco_id`) VALUES
(1, 'João a', 'joava@example.com', 'Portuguêês', 'Avado', 'João', '1234', 'Nenhuma', 'Nenhuma', 'Não necessária', 'Desenvo ologias.', '2e experiênolvimento web', '154321', '1990-01-01', 'RM123', '', '', NULL),
(2, 'Maria Souza', 'maria.souza@example.com', 'Português, Espa', 'Intermediário', 'Maria', '5678', 'Nenhuma', 'Nenhuma', 'Não necessária', '', NULL, '', '', '', '', '', NULL),
(3, 'Carlos Lima', 'carlos.lima@example.com', 'Português, Fran', 'Básico', 'Carlos', '9101', 'Nenhuma', 'Nenhuma', 'Não necessária', '', NULL, '', '', '', '', '', NULL),
(4, 'João a', 'joava@example.com', 'Portuguêês', 'Avado', 'João', '1234', 'Nenhuma', 'Nenhuma', 'Não necessária', 'Desenvo ologias.', '2e experiênolvimento web', '154321', '2006-01-15', '12345', '', '', NULL),
(5, 'João', 'joava@example.com', 'Portuguêês', 'Avado', 'João', '1234', 'Nenhuma', 'Nenhuma', 'Não necessária', 'Desenvo ologias.', '2e experiênolvimento web', '154321', '2002-07-23', '54321', '', '', NULL),
(6, 'hhhhhhhhhhhhhao', 'jple.com', '', '', '', '', '', '', '', 'Desenvo ologias.', '2e experiênolvimento web', '1', '2004-03-11', '13579', '', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_endereco`
--

CREATE TABLE `candidato_endereco` (
  `candidatoId` int(11) NOT NULL,
  `enderecoEnderecoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_habilidades`
--

CREATE TABLE `candidato_habilidades` (
  `candidatoId` int(11) NOT NULL,
  `habilidadesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato_habilidades`
--

INSERT INTO `candidato_habilidades` (`candidatoId`, `habilidadesId`) VALUES
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 71);

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_id`
--

CREATE TABLE `candidato_id` (
  `candidatoId` int(11) NOT NULL,
  `enderecoEnderecoId` int(11) NOT NULL,
  `habilidadesId` int(11) NOT NULL,
  `interessesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato_interesses`
--

CREATE TABLE `candidato_interesses` (
  `candidatoId` int(11) NOT NULL,
  `interessesId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato_interesses`
--

INSERT INTO `candidato_interesses` (`candidatoId`, `interessesId`) VALUES
(5, 1),
(5, 2),
(6, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `segmentoatuacao_id` int(11) DEFAULT NULL,
  `cnpj` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fotoperfil` varchar(255) NOT NULL,
  `nomeUltilizador` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nomeEmpresa` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`id`, `descricao`, `segmentoatuacao_id`, `cnpj`, `telefone`, `email`, `fotoperfil`, `nomeUltilizador`, `senha`, `nomeEmpresa`, `numero`, `complemento`, `cep`, `rua`, `bairro`, `cidade`, `estado`, `pais`) VALUES
(1, 'Desenvolvimento de software customizado', 1, '', '', 'empresa@exemplo.com', '', '', 'senhaSegura', '', '', '', '', '', '', '', '', ''),
(2, 'Consultoria de marketing e vendas', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Agência de design e branding', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Descrição da empresa.', 1, '12345678901234', '123456789', 'empresa@exemplo.com', 'foto.jpg', 'usuario123', 'senhaSegura', 'Empresa Exemplo', '123', 'Sala 1', '', '', '', '', '', ''),
(5, 'Descrição da empresa', NULL, '12.345.678/0001-90', '(11) 91234-5678', 'empresa@example.com', 'link_para_a_foto_perfil', 'usuario_exemplo', 'senha_secreta', 'Nome da Empresa', '123', 'Sala 1', '', '', '', '', '', ''),
(6, 'Descrição da empresa', NULL, '12.345.678', '(11) 91234-5678', 'empresa@example.com', 'link_para_a_foto_perfil', 'usuario_exemplo', 'senha_secreta', 'Nome da Empresa', '123', 'Sala 1', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `endereco_id` int(11) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(20) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`endereco_id`, `cep`, `rua`, `bairro`, `cidade`, `estado`) VALUES
(1, '12345-678', 'Rua A', 'Bairro A', 'São Paulo', 'SP'),
(2, '23456-789', 'Rua B', 'Bairro B', 'Curitiba', 'PR'),
(3, '34567-890', 'Rua C', 'Bairro C', 'Rio de Janeiro', 'RJ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formacaoacademica`
--

CREATE TABLE `formacaoacademica` (
  `id` int(11) NOT NULL,
  `curso` varchar(20) DEFAULT NULL,
  `instituicao` varchar(50) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `formacaoacademica`
--

INSERT INTO `formacaoacademica` (`id`, `curso`, `instituicao`, `cidade`, `estado`) VALUES
(1, 'Engenharia de Softwa', 'Universidade A', 'São Paulo', 'SP'),
(2, 'Marketing', 'Universidade B', 'Curitiba', 'PR'),
(3, 'Design Gráfico', 'Universidade C', 'Rio de Janeiro', 'RJ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formacao_academica`
--

CREATE TABLE `formacao_academica` (
  `id` int(11) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `instituicao` varchar(50) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `habilidades`
--

INSERT INTO `habilidades` (`id`, `tipo`, `descricao`) VALUES
(1, 'Técnica', ''),
(2, 'Soft Skill', ''),
(3, 'Criativo', ''),
(64, 'Gerenciais', ''),
(65, 'Gerenciais', ''),
(66, 'Gerenciais', ''),
(67, 'Gerenciais', ''),
(68, 'Gerenciais', ''),
(69, 'Gerenciais', ''),
(70, 'Gerenciais', ''),
(71, 'Gerenciais', ''),
(72, 'Gerenciais', ''),
(73, 'Gerenciais', ''),
(74, 'Operacionais', ''),
(75, 'Operacionais', ''),
(76, 'Operacionais', ''),
(77, 'Operacionais', ''),
(78, 'Operacionais', ''),
(79, 'Operacionais', ''),
(80, 'Operacionais', ''),
(81, 'Operacionais', ''),
(82, 'Operacionais', ''),
(83, 'Operacionais', ''),
(84, 'Pessoais', ''),
(85, 'Pessoais', ''),
(86, 'Pessoais', ''),
(87, 'Pessoais', ''),
(88, 'Pessoais', ''),
(89, 'Pessoais', ''),
(90, 'Pessoais', ''),
(91, 'Pessoais', ''),
(92, 'Pessoais', ''),
(93, 'Pessoais', ''),
(94, 'Habilidades Técnicas', 'Programação/Codifica'),
(95, 'Habilidades Técnicas', 'Análise de Dados'),
(96, 'Habilidades Técnicas', 'Contabilidade/Finanç'),
(97, 'Habilidades Técnicas', 'Design Gráfico'),
(98, 'Habilidades Técnicas', 'Redação Técnica'),
(99, 'Habilidades Técnicas', 'Conhecimento de info'),
(100, 'Habilidades Técnicas', 'Operação de Máquinas'),
(101, 'Habilidades Técnicas', 'Gestão de Projetos'),
(102, 'Habilidades Técnicas', 'Vendas e Marketing'),
(103, 'Habilidades Técnicas', 'Idiomas Estrangeiros'),
(104, 'Habilidades Interpes', 'Comunicação'),
(105, 'Habilidades Interpes', 'Trabalho em equipe'),
(106, 'Habilidades Interpes', 'Liderança'),
(107, 'Habilidades Interpes', 'Negociação'),
(108, 'Habilidades Interpes', 'Resolução de conflit'),
(109, 'Habilidades Interpes', 'Empatia'),
(110, 'Habilidades Interpes', 'Adaptabilidade'),
(111, 'Habilidades Interpes', 'Inteligência emocion'),
(112, 'Habilidades Interpes', 'Persuasão'),
(113, 'Habilidades Interpes', 'Relacionamento inter'),
(114, 'Habilidades Cognitiv', 'Pensamento Crítico'),
(115, 'Habilidades Cognitiv', 'Resolução de Problem'),
(116, 'Habilidades Cognitiv', 'Tomada de Decisões'),
(117, 'Habilidades Cognitiv', 'Planejamento e Organ'),
(118, 'Habilidades Cognitiv', 'Criatividade'),
(119, 'Habilidades Cognitiv', 'Aprendizagem Rápida'),
(120, 'Habilidades Cognitiv', 'Memória'),
(121, 'Habilidades Cognitiv', 'Atenção aos Detalhes'),
(122, 'Habilidades Cognitiv', 'Adaptabilidade'),
(123, 'Habilidades Gerencia', 'Liderança'),
(124, 'Habilidades Gerencia', 'Gestão de Projetos'),
(125, 'Habilidades Gerencia', 'Planejamento Estraté'),
(126, 'Habilidades Gerencia', 'Gestão de Recursos'),
(127, 'Habilidades Gerencia', 'Tomada de Decisões'),
(128, 'Habilidades Gerencia', 'Negociação'),
(129, 'Habilidades Gerencia', 'Mentoria'),
(130, 'Habilidades Gerencia', 'Desenvolvimento de T'),
(131, 'Habilidades Operacio', 'Operação de Equipame'),
(132, 'Habilidades Operacio', 'Manutenção Técnica'),
(133, 'Habilidades Operacio', 'Segurança no Trabalh'),
(134, 'Habilidades Operacio', 'Logística e Distribu'),
(135, 'Habilidades Operacio', 'Controle de Qualidad'),
(136, 'Habilidades Operacio', 'Produção'),
(137, 'Habilidades Operacio', 'Gestão de Estoques'),
(138, 'Habilidades Operacio', 'Processos de Fabrica'),
(139, 'Habilidades Operacio', 'Operação de Software'),
(140, 'Habilidades Operacio', 'Manuseio de Materiai'),
(141, 'Habilidades Pessoais', 'Autodisciplina'),
(142, 'Habilidades Pessoais', 'Motivação'),
(143, 'Habilidades Pessoais', 'Autoconhecimento'),
(144, 'Habilidades Pessoais', 'Gestão do Estresse'),
(145, 'Habilidades Pessoais', 'Inteligência Emocion'),
(146, 'Habilidades Pessoais', 'Resiliência'),
(147, 'Habilidades Pessoais', 'Curiosidade e Aprend'),
(148, 'Habilidades Pessoais', 'Ética e Integridade'),
(149, 'Habilidades Pessoais', 'Confiança'),
(150, 'Habilidades Pessoais', 'Proatividade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesses`
--

CREATE TABLE `interesses` (
  `id` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `interesses`
--

INSERT INTO `interesses` (`id`, `descricao`, `tipo`) VALUES
(1, 'Desenvolvimento Web', 'Profissional'),
(2, 'Marketing Digital', 'Profissional'),
(3, 'Jogos de Tabuleiro', 'Pessoal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `segmentoatuacao`
--

CREATE TABLE `segmentoatuacao` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `setor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `segmentoatuacao`
--

INSERT INTO `segmentoatuacao` (`id`, `descricao`, `setor`) VALUES
(1, 'Desenvolvimento de software para empresas', 'Tecnologia'),
(2, 'Consultoria de marketing', 'Consultoria'),
(3, 'Design e produção gráfica', 'Criativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga`
--

CREATE TABLE `vaga` (
  `id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `exigencias` text NOT NULL,
  `salario` float NOT NULL,
  `riscos` text NOT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `funcao` varchar(30) NOT NULL,
  `googleForm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga`
--

INSERT INTO `vaga` (`id`, `descricao`, `exigencias`, `salario`, `riscos`, `empresa_id`, `funcao`, `googleForm`) VALUES
(4, 'Desenvolvedor Backend', 'Experiência em Node.js', 5000, 'Trabalho em equipe', 1, 'Desenvolvedor', 'https://link-para-o-formulario'),
(7, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(8, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(9, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(10, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(11, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(13, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário'),
(16, 'Desenvolvedor Backend para sistemas financeiros', 'Experiência com Node.js, TypeScript e bancos de dados SQL.', 8000, 'Baixa exposição a riscos físicos.', 1, 'Dese', 'https://docs.google.com/forms/d/e/1FAIpQLSdf3vJHg/formResponse'),
(17, 'Desenvolvedor Backend para sistemas financeiros', 'Experiência com Node.js, TypeScript e bancos de dados SQL.', 8000, 'Baixa exposição a riscos físicos.', 1, 'Dese', 'https://docs.google.com/forms/d/e/1FAIpQLSdf3vJHg/formResponse'),
(20, 'Desenvolvedor Backend para sistemas financeiros', 'Experiência com Node.js, TypeScript e bancos de dados SQL.', 8000, 'Baixa exposição a riscos físicos.', 1, 'Dese', 'https://docs.google.com/forms/d/e/1FAIpQLSdf3vJHg/formResponse'),
(21, 'CUCUCUCUCUCUCpara sistemas financeiros', 'Experiência com Node.js, TypeScript e bancos de dados SQL.', 8000, 'Baixa exposição a riscos físicos.', 1, 'Dese', 'https://docs.google.com/forms/d/e/1FAIpQLSdf3vJHg/formResponse');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga_habilidades`
--

CREATE TABLE `vaga_habilidades` (
  `vaga_id` int(11) NOT NULL,
  `habilidades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga_habilidades`
--

INSERT INTO `vaga_habilidades` (`vaga_id`, `habilidades_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(20, 71),
(20, 72),
(21, 71),
(21, 72);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vaga_interesses`
--

CREATE TABLE `vaga_interesses` (
  `vaga_id` int(11) NOT NULL,
  `interesses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vaga_interesses`
--

INSERT INTO `vaga_interesses` (`vaga_id`, `interesses_id`) VALUES
(4, 1),
(4, 2),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(20, 1),
(20, 2),
(21, 1),
(21, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `endereco_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `formacaoacademica`
--
ALTER TABLE `formacaoacademica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `formacao_academica`
--
ALTER TABLE `formacao_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de tabela `interesses`
--
ALTER TABLE `interesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `segmentoatuacao`
--
ALTER TABLE `segmentoatuacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `vaga`
--
ALTER TABLE `vaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
