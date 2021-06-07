-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jun-2021 às 05:03
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd-comment`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(300) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `hora` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `data`, `hora`) VALUES
(44, 'Iuri', 'Teste.', '2021-06-06', '22:29:32'),
(45, 'Iuri', 'Em busca de me tornar um Desenvolvedor Full Stack. / Cursando Analise e Desenvolvimento de Sistemas na Universidade Unicesumar. / Trabalhando na Universidade Unicesumar como Técnico de Suporte Remoto na área de Infraestrutura de redes. / Lo-Fi, Bring Me The Horizon, Asking Alexandria. / \"Pretendo um dia me tornar um grande criador, fazer algo que permaneça mesmo depois que eu me for.\" - Iuri Monteiro', '2021-06-06', '22:29:32'),
(46, 'Iuri', 'Teste data.', '2021-06-06', '22:29:32'),
(49, 'Iuri', 'Teste DateTime 1.', '2021-06-06', '22:29:32'),
(58, 'Iuri', 'Teste data e hora.', '2021-06-06', '22:42:11'),
(61, 'Iuri', 'Teste.', '2021-06-07', '00:01:09');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
