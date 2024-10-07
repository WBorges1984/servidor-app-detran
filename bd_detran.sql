-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/10/2024 às 21:50
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
  `selected_option` int(5) NOT NULL,
  `pagina` int(10) NOT NULL
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
(32, 8, 'D', 'automóveis.'),
(37, 10, 'A', 'fiscalização e a redução dos níveis de poluição atmosférica e sonora resultantes dos veículos'),
(38, 10, 'B', 'determinação de que a administração do trânsito seja responsabilidade somente dos estados'),
(39, 10, 'C', 'aplicação do conceito de sustentabilidade ambiental mais áreas servidas por vias terrestres de tráfego de veículos'),
(40, 10, 'D', 'criação de centros de pesquisa e desenvolvimento de novas tecnologias para combater os efeitos dos poluentes'),
(41, 11, 'A', 'aguardar socorro especializado e não remover o capacete'),
(42, 11, 'B', 'remover o capacete somente em caso de muita dor'),
(43, 11, 'C', 'remover o capacete para facilitar a respiração'),
(44, 11, 'D', 'mudar a posição do motociclista para acomodá-lo melhor'),
(45, 12, 'A', 'controlar periodicamente a pressão dos pneus'),
(46, 12, 'B', 'manter o motor desregulado'),
(47, 12, 'C', 'reduzir constantemente a marcha'),
(48, 12, 'D', 'conservar o óleo do motor em nível elevado'),
(49, 13, 'A', 'o condutor e o passageiro devem vestir, preferencialmente, roupas claras'),
(50, 13, 'B', 'o uso do farol é facultativo durante o dia'),
(51, 13, 'C', 'o uso do capacete é obrigatório para o condutor e opcional para o passageiro'),
(52, 13, 'D', 'a circulação na via de trânsito rápido é proibida'),
(53, 14, 'A', 'incorreta, pois não fixou o cinto nas crianças e voltou-se para trás, pondo em risco a segurança de todos'),
(54, 14, 'B', 'correta, pois as crianças devem ser transportadas no banco traseiro e em silêncio'),
(55, 14, 'C', 'correta, pois essa atitude é recomendada na cartilha de Direção Defensiva'),
(56, 14, 'D', 'incorreta, pois a mãe deveria ter repreendido as crianças somente ao chegar em casa'),
(57, 15, 'A', 'afrouxar as roupas, deixando livre principalmente o pescoço'),
(58, 15, 'B', 'colocar um pedaço de pano quente sobre o ferimento'),
(59, 15, 'C', 'deitar a vítima, com a cabeça mais baixa que o restante do corpo'),
(60, 15, 'D', 'pressionar o ferimento'),
(61, 16, 'A', 'procurar conhecer todos os comandos do veículo antes de conduzi-lo, bem como fazer os devidos ajustes nos espelhos retrovisores e no banco do condutor'),
(62, 16, 'B', 'portar o CRV, o CRLV, a CNH do proprietário do veículo; portar o manual do veículo, caso necessite consultá-lo; e dirigir com habilidade'),
(63, 16, 'C', 'dirigir com atenção, uma vez que os carros modernos são equipados com comandos complicados'),
(64, 16, 'D', 'procurar conhecer todos os comandos do veículo antes de conduzi-lo, bem como fazer os devidos ajustes nos espelhos retrovisores e no banco do condutor'),
(65, 17, 'A', 'reduzir a velocidade'),
(66, 17, 'B', 'aumentar a velocidade'),
(67, 17, 'C', 'estacionar o veículo'),
(68, 17, 'D', 'manter a mesma velocidade'),
(69, 18, 'A', 'de transporte de passageiros, no exercício de sua profissão ou atividade'),
(70, 18, 'B', 'em mau estado de conservação'),
(71, 18, 'C', 'sem estar devidamente licenciado'),
(72, 18, 'D', 'com excesso de carga'),
(73, 19, 'A', 'o catalisador'),
(74, 19, 'B', 'o carburador'),
(75, 19, 'C', 'o filtro de ar'),
(76, 19, 'D', 'a ventoinha'),
(77, 20, 'A', 'nos bordos da pista de rolamento em fila única'),
(78, 20, 'B', 'nos bordos da pista de rolamento e no mesmo sentido de circulação dos veículos adjacentes'),
(79, 20, 'C', 'na pista de rolamento, porém com a prioridade de passagem aos veículos'),
(80, 20, 'D', 'na pista de rolamento e apenas no período diurno, porém com prioridade sobre os veículos'),
(81, 21, 'A', 'o condutor do veículo PRETO não está dirigindo em velocidade compatível com a via e o condutor do veículo VERMELHO não está guardando distância de segurança'),
(82, 21, 'B', 'o condutor do veículo PRETO e o condutor do veículo VERMELHO estão em velocidade compatível com a via'),
(83, 21, 'C', 'o condutor do veículo VERMELHO está mantendo a distância de segurança em relação ao veículo PRETO que vai à sua frente'),
(84, 21, 'D', 'o condutor do veículo PRETO está dirigindo em velocidade compatível com a via e o condutor do veículo VERMELHO está guardando distância de segurança'),
(85, 22, 'A', 'o nível de ruído e a emissão de gases poluentes'),
(86, 22, 'B', 'o nível de ruído e a potência do motor'),
(87, 22, 'C', 'a poluição do solo e o consumo de combustível'),
(88, 22, 'D', 'a potência do motor e a poluição do solo'),
(89, 23, 'A', 'Uma pessoa cuida da cabeça e do pescoço, outra do tronco e braços e a terceira cuida das pernas da vítima.'),
(90, 23, 'B', 'Uma pessoa ergue a vítima pelos braços, a segunda levanta as duas pernas e a terceira dá apoio às costas.'),
(91, 23, 'C', 'Uma segura as pernas, a outra os braços e a terceira orienta.'),
(92, 23, 'D', 'Duas pessoas dão apoio – uma de cada lado – abraçando a vítima em pé e a terceira apoia as pernas.'),
(93, 24, 'A', 'se reprovada no exame teórico de legislação de trânsito, deverá repeti-lo a qualquer tempo'),
(94, 24, 'B', 'ter aulas de direção veicular com instrutor pertencente somente à entidade credenciada'),
(95, 24, 'C', 'se candidatar na Categoria D'),
(96, 24, 'D', 'se inscrever num CFC com cursos opcionais de primeiros socorros e meio ambiente'),
(97, 25, 'A', 'um entroncamento oblíquo à esquerda'),
(98, 25, 'B', 'um estacionamento regulamentado'),
(99, 25, 'C', 'um entroncamento oblíquo à direita'),
(100, 25, 'D', 'uma confluência à direita'),
(101, 26, 'A', 'excesso de velocidade, falta de atenção e ação evasiva'),
(102, 26, 'B', 'vias mal sinalizadas, falta de atenção e falta de sinalização'),
(103, 26, 'C', 'falta de sinalização, chuva e ação evasiva inadequada'),
(104, 26, 'D', 'falta de atenção, pneus em mau estado e excesso de velocidade'),
(105, 27, 'A', 'gravíssima'),
(106, 27, 'B', 'grave'),
(107, 27, 'C', 'média'),
(108, 27, 'D', 'leve'),
(109, 28, 'A', 'O rebaixamento da suspensão e a mudança de cor.'),
(110, 28, 'B', 'A instalação de rádio.'),
(111, 28, 'C', 'O pneu liso.'),
(112, 28, 'D', 'A descarga livre.'),
(113, 29, 'A', '10 vezes'),
(114, 29, 'B', '5 vezes'),
(115, 29, 'C', '7 vezes'),
(116, 29, 'D', '3 vezes'),
(117, 30, 'A', 'evitar o fenômeno de aquaplanagem, garantindo a aderência adequada do veículo ao solo.'),
(118, 30, 'B', 'a correta marcação de quilometragem no hodômetro.'),
(119, 30, 'C', 'o conforto dos passageiros.'),
(120, 30, 'D', 'a conservação das pistas de rolamento.'),
(121, 31, 'A', 'a Polícia Militar'),
(122, 31, 'B', 'a Polícia Rodoviária Federal'),
(123, 31, 'C', 'o Corpo de Bombeiros'),
(124, 31, 'D', 'o SAMU'),
(125, 32, 'A', 'pedestres e ciclistas'),
(126, 32, 'B', 'caminhões'),
(127, 32, 'C', 'ônibus'),
(128, 32, 'D', 'sidecar'),
(129, 33, 'A', 'reação mais lenta e início de euforia'),
(130, 33, 'B', 'reflexos muitos lentos e condução perigosa'),
(131, 33, 'C', 'problemas na percepção da distância e velocidade'),
(132, 33, 'D', 'visão dupla, desorientação e condução impossível'),
(133, 34, 'A', 'o esforço legal'),
(134, 34, 'B', 'a educação'),
(135, 34, 'C', 'o governo federal'),
(136, 34, 'D', 'o poder judiciário'),
(137, 35, 'A', 'antes de atravessar a rua, ele deve olhar para os dois lados, mesmo quando a rua for de mão única'),
(138, 35, 'B', 'onde não houver faixa, ele deverá cruzar a via no sentido paralelo ao de seu eixo'),
(139, 35, 'C', 'na área urbana sem calçada, a circulação de pedestres na pista de rolamento será feita com preferência sobre os veículos, em fila dupla'),
(140, 35, 'D', 'se eles estiverem atravessando a via sobre as faixas delimitadas para esse fim terão prioridade de passagem, inclusive nos locais com semáforo'),
(141, 36, 'A', 'proibido parar e estacionar'),
(142, 36, 'B', 'parada obrigatória'),
(143, 36, 'C', 'proibido estacionar'),
(144, 36, 'D', 'proibido parar'),
(145, 37, 'A', 'as luzes baixas dos faróis'),
(146, 37, 'B', 'o limpador de para-brisa'),
(147, 37, 'C', 'alternadamente, as luzes baixas e altas dos faróis'),
(148, 37, 'D', 'as luzes de emergência');

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
(3, 'Algumas vezes, o condutor enfrenta condições adversas da via, como:', NULL, 'A'),
(4, 'O extintor de incêndio é um equipamento:', NULL, 'A'),
(5, 'A altura, a carga, a largura e o peso máximo que devem ser obedecidos pelo condutor do veículo constam na sinalização vertical de:', NULL, 'A'),
(6, 'A placa à direita, indica aos usuários da via que há:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-de-servico-auxiliar-transporte-sobre-agua-S-12-300x300.jpg', 'A'),
(7, 'De acordo com a situação ao lado, é correto afirmar que:', 'QUESTAO_1161', 'A'),
(8, 'O condutor de veículo que estiver habilitado na categoria “E” NÃO poderá dirigir:', NULL, 'A'),
(10, 'O Código de Trânsito Brasileiro prevê medidas para a melhoria das condições ambientais. Dentre elas, pode-se citar a:', NULL, 'A'),
(11, 'Em acidente envolvendo motociclista, o procedimento adequado é:', NULL, 'A'),
(12, 'Faz parte da manutenção preventiva:', NULL, 'A'),
(13, 'Uma regra de segurança para condutores de motocicletas e ciclomotores é:', NULL, 'A'),
(14, 'Vera foi buscar seus filhos na escola. Durante um engarrafamento, as crianças brincavam soltas no banco traseiro. Com o veículo em movimento, a mãe se voltou para trás e pediu para que as crianças parassem. Esta atitude foi:', NULL, 'A'),
(15, 'Quando o socorrista se deparar com uma vítima ferida na cabeça, deve adotar , dentre outras, a seguinte atitude:', NULL, 'A'),
(16, 'Vitor vai conduzir pela primeira vez um veículo diferente do seu, bem mais moderno. Segundo os preceitos da Direção Defensiva, o procedimento correto a adotar é:', NULL, 'A'),
(17, 'Para evitar acidentes em cruzamentos não sinalizados, os condutores deverão:', NULL, 'A'),
(18, 'No homicídio culposo cometido na direção de veículo automotor, a pena é aumentada de um terço à metade, se o agente estiver conduzindo veículo:', NULL, 'A'),
(19, 'O item do veículo responsável por filtrar os gases tóxicos gerados pelo motor é:', NULL, 'A'),
(20, 'Em via urbana sinalizada e sem passeios, a circulação de pedestres deverá ocorrer:', NULL, 'A'),
(21, 'Analise a animação ao lado e marque a alternativa que aponta as condutas dos motoristas dos veículos PRETO e VERMELHO que estão trafegando na via de trânsito rápido:', 'http://simulado-online.detran.rj.gov.br/img/placas/QUESTAO_994.GIF', 'A'),
(22, 'É importante fazer a manutenção do sistema de escapamento do veículo, pois a danificação do mesmo, contribui para aumentar:', NULL, 'A'),
(23, 'Quando houver necessidade de mover uma vítima de acidente de trânsito, com três pessoas para ajudar, qual o procedimento correto?', NULL, 'A'),
(24, 'Márcia completou 18 anos de idade, o que ela mais deseja fazer neste momento é dar entrada no seu processo de habilitação. O Código de Trânsito Brasileiro dedica um capítulo para esta finalidade. Para Márcia agir corretamente, ela deverá:', NULL, 'A'),
(25, 'A placa de advertência à direita, alerta aos usuários da via que há:', 'http://simulado-online.detran.rj.gov.br/img/placas/A10A.GIF', 'A'),
(26, 'Dentre as principais falhas humanas causadoras de acidentes, podemos citar:', NULL, 'A'),
(27, 'Dirigir sob o efeito de álcool ou substância psicoativa que determine dependência constitui uma infração:', NULL, 'A'),
(28, 'Significa mudança de característica do veículo:', NULL, 'A'),
(29, 'João realizou a perigosa mistura álcool e direção. Nessa situação, João será autuado e deverá pagar uma multa, cujo valor fixado na legislação corresponde a multiplicada por:', NULL, 'A'),
(30, 'O estado de conservação dos pneus é importante para:', NULL, 'A'),
(31, 'Ao discar para o o telefone 190, o condutor estará acionando:', NULL, 'A'),
(32, 'O condutor cederá passagem ao realizar uma mudança de faixa de circulação para:', NULL, 'A'),
(33, 'O álcool produz muitos efeitos sobre o condutor. A ingestão de 6 a 8 dg de álcool, que é considerado crime de trânsito, está relacionada diretamente à produção de:', NULL, 'A'),
(34, 'A área responsável por regulamentar, autuar, fiscalizar e aplicar as penalidades previstas no Códigode Trânsito Brasileiro é:', NULL, 'A'),
(35, 'Em relação ao pedestre é correto afirmar que:', NULL, 'A'),
(36, 'A placa de regulamentação à direita, informa aos usuários da via:', 'http://simulado-online.detran.rj.gov.br/img/placas/R6C.GIF', 'A'),
(37, 'Em caso de neblina, recomenda-se ao condutor acionar:', NULL, 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `prova_nr` int(11) NOT NULL,
  `dt_prova` date NOT NULL,
  `tempo` int(11) NOT NULL,
  `acertos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `result`
--

INSERT INTO `result` (`id`, `user`, `prova_nr`, `dt_prova`, `tempo`, `acertos`) VALUES
(1, 1, 1, '2024-09-09', 21, 21),
(2, 1, 2, '2024-09-02', 28, 18),
(3, 1, 3, '2024-09-04', 24, 29),
(4, 1, 4, '2024-09-03', 26, 12),
(5, 1, 5, '2024-09-06', 28, 29),
(6, 1, 6, '2024-09-06', 25, 24),
(7, 1, 7, '2024-09-11', 27, 29),
(8, 1, 8, '2024-09-08', 24, 27);

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
(1, 'Willian Borges', 'willian@willian.com', '123456'),
(2, 'Elay Borges', 'elay@elay.com', '654321'),
(3, 'Debora Alves', 'debby@debby.com', '123456'),
(4, '1', '1', '1'),
(16, 'o', 'o', 'o');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
