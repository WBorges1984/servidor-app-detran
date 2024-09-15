-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2024 às 05:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_detran`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `dt_prova` date NOT NULL,
  `tempo` int(11) NOT NULL,
  `acertos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `result`
--

INSERT INTO `result` (`id`, `user`, `dt_prova`, `tempo`, `acertos`) VALUES
(1, 1, '2024-09-09', 21, 21),
(2, 1, '2024-09-02', 28, 18),
(3, 1, '2024-09-04', 24, 29),
(4, 1, '2024-09-03', 26, 12),
(5, 1, '2024-09-06', 28, 29),
(6, 1, '2024-09-06', 25, 24),
(7, 1, '2024-09-11', 27, 29),
(8, 1, '2024-09-08', 24, 27);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
