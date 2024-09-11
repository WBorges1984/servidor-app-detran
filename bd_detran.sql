-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/09/2024 às 22:51
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
-- Estrutura para tabela `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selected_option` char(1) NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_letter` char(1) NOT NULL,
  `option_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_letter`, `option_text`) VALUES
(1, 1, 'A', 'acidente causado pela falta de habilidade do condutor'),
(2, 1, 'B', 'dirigir com sono'),
(3, 1, 'C', 'desobedecer à sinalização'),
(4, 1, 'D', 'dirigir sob efeito de droga'),
(5, 2, 'A', 'aprovado, desde que não cometa nenhuma outra falta, de qualquer natureza'),
(6, 2, 'B', 'reprovado, devendo realizar novo exame'),
(7, 2, 'C', 'aprovado, desde que não cometa nenhuma outra falta grave'),
(8, 2, 'D', 'aprovado, desde que não cometa nenhuma outra falta leve'),
(9, 3, 'A', 'pista escorregadia'),
(10, 3, 'B', 'calor intenso'),
(11, 3, 'C', 'motor do veículo desregulado'),
(12, 3, 'D', 'muitos caminhões transitando'),
(13, 4, 'A', 'de uso facultativo para automóveis e obrigatório para caminhões e ônibus.'),
(14, 4, 'B', 'opcional para os veículos de transporte escolar.'),
(15, 4, 'C', 'obrigatório para todos os veículos automotores e sua falta é uma infração, de acordo com a Legislação de Trânsito.'),
(16, 4, 'D', 'obrigatório apenas para automóveis'),
(17, 5, 'A', 'regulamentação'),
(18, 5, 'B', 'serviços'),
(19, 5, 'C', 'complementação'),
(20, 5, 'D', 'indicação'),
(21, 6, 'A', 'um transporte sobre água'),
(22, 6, 'B', 'uma pista escorregadia'),
(23, 6, 'C', 'um estacionamento de trailer'),
(24, 6, 'D', 'uma área de estacionamento'),
(25, 7, 'A', 'a conversão que o veículo AZUL irá fazer está correta'),
(26, 7, 'B', 'a conversão que o veículo AMARELO irá fazer está correta'),
(27, 7, 'C', 'a conversão que os veículos AZUL e AMARELO irão fazer estão corretas'),
(28, 7, 'D', 'a conversão que o veículo AZUL irá fazer está incorreta'),
(29, 8, 'A', 'motocicletas.'),
(30, 8, 'B', 'veículo motorizado com peso bruto total até 3.500 kg.'),
(31, 8, 'C', 'veículo de carga com peso bruto total superior a 3.500 kg.'),
(32, 8, 'D', 'automóveis.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `correct_option` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `image_url`, `correct_option`) VALUES
(1, 'Indica imperícia do condutor do veículo:', NULL, 'A'),
(2, 'Um candidato à obtenção da CNH, durante o Exame de Direção Veicular para a categoria B, comete uma falta grave, com a perda de 3 pontos. Nessas condições, ele será:', NULL, 'A'),
(3, '	Algumas vezes, o condutor enfrenta condições adversas da via, como:', NULL, 'A'),
(4, 'O extintor de incêndio é um equipamento:', NULL, 'A'),
(5, 'A altura, a carga, a largura e o peso máximo que devem ser obedecidos pelo condutor do veículo constam na sinalização vertical de:', NULL, 'A'),
(6, 'A placa à direita, indica aos usuários da via que há:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-de-servico-auxiliar-transporte-sobre-agua-S-12-300x300.jpg', 'A'),
(7, 'De acordo com a situação ao lado, é correto afirmar que:', 'https://simulado-online.detran.rj.gov.br/img/placas/QUESTAO_1161.GIF', 'A'),
(8, 'O condutor de veículo que estiver habilitado na categoria “E” NÃO poderá dirigir:', NULL, 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `dt_prova` date NOT NULL,
  `tempo` datetime NOT NULL,
  `acertos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `result`
--

INSERT INTO `result` (`id`, `user`, `dt_prova`, `tempo`, `acertos`) VALUES
(1, 0, '2024-09-09', '2024-09-10 14:00:11', 21),
(2, 0, '2024-09-02', '2024-09-10 11:00:11', 18),
(3, 0, '2024-09-04', '2024-09-10 06:02:00', 29),
(4, 0, '2024-09-03', '2024-09-10 16:02:00', 12),
(5, 0, '2024-09-06', '2024-09-10 04:02:00', 29),
(6, 0, '2024-09-06', '2024-09-10 07:14:00', 24);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Willian', 'willian@willian.com', '123456'),
(2, 'Elay', 'elay@elay.com', '654321');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Índices de tabela `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Índices de tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Restrições para tabelas `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
