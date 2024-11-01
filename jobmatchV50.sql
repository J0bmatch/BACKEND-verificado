-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Nov-2024 às 20:53
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
  `interesses_id` int(11) DEFAULT NULL,
  `habilidades_id` int(11) DEFAULT NULL,
  `bio` varchar(50) NOT NULL,
  `experiencia` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `dataNascimento` varchar(11) NOT NULL,
  `rm` varchar(5) NOT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  `curso` varchar(20) NOT NULL,
  `instituicao` varchar(50) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`id`, `nome`, `email`, `idiomas`, `fluencia`, `nomesocial`, `numero`, `tipodeficiencia`, `graudeficiencia`, `adaptacaodeficiencia`, `interesses_id`, `habilidades_id`, `bio`, `experiencia`, `telefone`, `dataNascimento`, `rm`, `endereco_id`, `curso`, `instituicao`, `cidade`, `estado`) VALUES
(1, 'João da Silva', 'joao.silva@example.com', 'Português, Ingl', 'Avançado', 'João', '1234', 'Nenhuma', 'Nenhuma', 'Não necessária', 1, 1, 'Desenvolvedor de software com interesse em novas t', '2 anos de experiência em desenvolvimento web', '', '1990-01-01', 'RM123', NULL, '', '', '', ''),
(2, 'Maria Souza', 'maria.souza@example.com', 'Português, Espa', 'Intermediário', 'Maria', '5678', 'Nenhuma', 'Nenhuma', 'Não necessária', 2, 2, '', NULL, '', '', '', NULL, '', '', '', ''),
(3, 'Carlos Lima', 'carlos.lima@example.com', 'Português, Fran', 'Básico', 'Carlos', '9101', 'Nenhuma', 'Nenhuma', 'Não necessária', 3, 3, '', NULL, '', '', '', NULL, '', '', '', '');

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
  `descricao` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `habilidades`
--

INSERT INTO `habilidades` (`id`, `descricao`, `tipo`) VALUES
(1, 'Programação', 'Técnica'),
(2, 'Comunicação', 'Soft Skill'),
(3, 'Design Gráfico', 'Criativo');

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
(13, 'Descrição da vaga', 'Exigências da vaga', 3000, 'Riscos da vaga', 1, 'Função da vaga', 'Link do formulário');

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
(4, 3);

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
(4, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_0c6395836826495afaee5c405a` (`interesses_id`),
  ADD UNIQUE KEY `REL_cc6b2bb8173c57589ea69c63a4` (`habilidades_id`),
  ADD UNIQUE KEY `REL_20bea763739ba952ded05fd68b` (`endereco_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `FK_0c6395836826495afaee5c405a2` FOREIGN KEY (`interesses_id`) REFERENCES `interesses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_20bea763739ba952ded05fd68b4` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`endereco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cc6b2bb8173c57589ea69c63a48` FOREIGN KEY (`habilidades_id`) REFERENCES `habilidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_c4b9b035f5892d1ba3620902073` FOREIGN KEY (`segmentoatuacao_id`) REFERENCES `segmentoatuacao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vaga`
--
ALTER TABLE `vaga`
  ADD CONSTRAINT `FK_976dff194a4c7e9b8c8dbd95077` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
