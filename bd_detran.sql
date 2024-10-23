-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/10/2024 às 21:41
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
(148, 37, 'D', 'as luzes de emergência'),
(149, 38, 'A', 'bonde'),
(150, 38, 'B', 'uma passagem de nível com barreira'),
(151, 38, 'C', 'trem'),
(152, 38, 'D', 'ônibus'),
(153, 39, 'A', 'agasalhar a vítima'),
(154, 39, 'B', 'medir a temperatura'),
(155, 39, 'C', 'deixá-la em jejum'),
(156, 39, 'D', 'umedecer a testa'),
(157, 40, 'A', 'multa, somente'),
(158, 40, 'B', 'multa e advertência oral'),
(159, 40, 'C', 'multa e retenção do veículo'),
(160, 40, 'D', 'multa e remoção do veículo'),
(161, 41, 'A', 'remoção do veículo e multa'),
(162, 41, 'B', 'remoção do veículo, apenas'),
(163, 41, 'C', 'multa, apenas'),
(164, 41, 'D', 'apreensão do veículo e multa'),
(165, 42, 'A', 'utilizar-se de veículo para demonstrar ou exibir manobra perigosa, mediante arrancada brusca, derrapagem ou frenagem com deslizamento ou arrastamento de pneus'),
(166, 42, 'B', 'dirigir ameaçando os pedestres que estejam atravessando a via pública, ou os demais veículos'),
(167, 42, 'C', 'ultrapassar pela contramão outro veículo nas faixas de pedestre'),
(168, 42, 'D', 'ultrapassar outro veículo pelo acostamento'),
(169, 43, 'A', 'se há pessoas presas nas ferragens'),
(170, 43, 'B', 'o número correto de veículos envolvidos'),
(171, 43, 'C', 'os nomes das vítimas'),
(172, 43, 'D', 'a rota do acidente'),
(173, 44, 'A', 'deve circular obedecendo às regras de trânsito'),
(174, 44, 'B', 'goza de livre circulação, estacionamento e parada'),
(175, 44, 'C', 'pode ultrapassar o limite de velocidade regulamentado, apenas no período noturno'),
(176, 44, 'D', 'pode ultrapassar o limite de velocidade regulamentado'),
(177, 45, 'A', '193'),
(178, 45, 'B', '190'),
(179, 45, 'C', '199'),
(180, 45, 'D', '191'),
(181, 46, 'A', 'fumaça escura'),
(182, 46, 'B', 'vapor de água'),
(183, 46, 'C', 'fumaça branca'),
(184, 46, 'D', 'faíscas'),
(185, 47, 'A', 'o desrespeito às normas de trânsito é o fator responsável pela maioria dos acidentes'),
(186, 47, 'B', 'a redução dos acidentes de trânsito é responsabilidade exclusiva dos condutores'),
(187, 47, 'C', 'a senhora estava correta ao realizar a travessia entre os veículos'),
(188, 47, 'D', 'costurar\" no trânsito é uma atitude correta e prevista no Código de Trânsito Brasileiro'),
(189, 48, 'A', 'fazer rodízio, alinhamento e balanceamento, periodicamente.'),
(190, 48, 'B', 'aquecê-los sempre antes de sair.'),
(191, 48, 'C', 'retardar as freadas.'),
(192, 48, 'D', 'calibrá-los a cada 5.000 quilômetros.'),
(193, 49, 'A', 'facilitar a propagação de infecções gripais'),
(194, 49, 'B', 'causar tonturas e vertigens'),
(195, 49, 'C', 'causar danos irreversíveis aos pulmões'),
(196, 49, 'D', 'provocar irritação na pele'),
(197, 50, 'A', 'a emissão excessiva de gases nocivos na atmosfera, além de economizar no consumo de combustível'),
(198, 50, 'B', 'o desgate dos freios e pneus'),
(199, 50, 'C', 'a decomposição de gases poluentes'),
(200, 50, 'D', 'o desperdício e a poluição por óleo'),
(201, 51, 'A', 'gravíssima'),
(202, 51, 'B', 'leve'),
(203, 51, 'C', 'média'),
(204, 51, 'D', 'gravíssima, agravada em 3 vezes o valor da multa'),
(205, 52, 'A', 'no banco dianteiro, com cuidados especiais'),
(206, 52, 'B', 'maiores de 10 anos, somente'),
(207, 52, 'C', 'menores de 10 anos de idade, somente no colo de um adulto'),
(208, 52, 'D', 'somente se o veículo tiver \"air-bag\"'),
(209, 53, 'A', 'As ruas, as avenidas, os logradouros, os caminhos, as passagens, as estradas e as rodovias.'),
(210, 53, 'B', 'Os caminhos e as passagens, somente.'),
(211, 53, 'C', 'As avenidas e as rodovias, somente.'),
(212, 53, 'D', 'As estradas e as rodovias, somente.'),
(213, 54, 'A', 'Melhora a coordenação motora.'),
(214, 54, 'B', 'Há falta de concentração.'),
(215, 54, 'C', 'A maioria das pessoas alcoolizadas acredita que está com reflexos e reações normais.'),
(216, 54, 'D', 'Há diminuição ou perda do espírito crítico'),
(217, 55, 'A', 'do ângulo camber'),
(218, 55, 'B', 'da árvore secundária'),
(219, 55, 'C', 'da posição do diferencial'),
(220, 55, 'D', 'do virabrequim'),
(221, 56, 'A', 'planejar o percurso antes de sair de casa e, em viagens longas, planejar também as paradas para repouso'),
(222, 56, 'B', 'levar seu veículo à oficina mecânica quando algum equipamento não estiver em boas condições, não realizando a manutenção preventiva'),
(223, 56, 'C', 'colaborar com a ambulância, indo à frente dela, abrindo caminho para a sua passagem'),
(224, 56, 'D', 'se preocupar com seu estado físico e mental e prestar atenção somente nos ocupantes de seu veículo'),
(225, 57, 'A', 'desconhecimento das preferências'),
(226, 57, 'B', 'manobra esperada do outro veículo'),
(227, 57, 'C', 'conhecimento das técnicas de direção defensiva'),
(228, 57, 'D', 'desconhecimento do limite de velocidade da via'),
(229, 58, 'A', 'diminuir a velocidade, acender o farol baixo e prosseguir'),
(230, 58, 'B', 'parar na pista e sinalizar com o triângulo'),
(231, 58, 'C', 'acender o farol alto e prosseguir'),
(232, 58, 'D', 'parar na pista e ligar o pisca-alerta'),
(233, 59, 'A', 'qualquer ser humano é mais importante do que qualquer máquina'),
(234, 59, 'B', 'a calçada e as ruas são vias de trânsito de veículos e qualquer pedestre é um risco à segurança no trânsito'),
(235, 59, 'C', 'os pedestres, principalmente os idosos, somente devem circular em horários de pouco fluxo de veículos'),
(236, 59, 'D', 'muitos condutores cometem infrações de trânsito que deveriam ser atribuídas somente aos pedestres'),
(237, 60, 'A', 'Quarenta quilômetros por hora, nas vias coletoras.'),
(238, 60, 'B', 'Sessenta quilômetros por hora, nas vias coletoras.'),
(239, 60, 'C', 'Quarenta quilômetros por hora, mas vias de trânsito rápido.'),
(240, 60, 'D', 'Oitenta quilômetros por hora, nas vias arteriais.'),
(241, 61, 'A', 'assegurar-se da existência de combustível suficiente para chegar ao local de destino'),
(242, 61, 'B', 'se certificar que pelo menos o passageiro que esteja posicionado no banco central traseiro, esteja utilizando o cinto de segurança'),
(243, 61, 'C', 'embarcar passageiros pelo lado direito da via'),
(244, 61, 'D', 'buzinar visando avisar a partida do veículo'),
(245, 62, 'A', 'CNH e CRLV, quando no momento da fiscalização, não for possível ter acesso ao sistema informatizado'),
(246, 62, 'B', 'Carteira de Identidade e Seguro obrigatório de Danos Pessoais'),
(247, 62, 'C', 'Imposto sobre propriedade de Veículos Automotores (IPVA) e Carteira de Identidade'),
(248, 62, 'D', 'Imposto sobre propriedade de Veículos Automotores (IPVA) e Certificado de Registro de Veículo'),
(249, 63, 'A', 'avançar na faixa de pedestre'),
(250, 63, 'B', 'respeitar a lei'),
(251, 63, 'C', 'deixar o cruzamento livre'),
(252, 63, 'D', 'aguardar a sua vez de passar'),
(253, 64, 'A', 'não retirar o capacete, porque movimentar a cabeça pode agravar uma lesão da coluna'),
(254, 64, 'B', 'fazer movimentos circulares com a cabeça'),
(255, 64, 'C', 'retirar o capacete, se o motociclista estiver se sentindo bem'),
(256, 64, 'D', 'só encaminhá-lo a um profissional de saúde, caso não consiga retirar o capacete'),
(257, 65, 'A', 'for definitivamente desmontado'),
(258, 65, 'B', 'for realizada a compra e venda'),
(259, 65, 'C', 'estiver sem manutenção'),
(260, 65, 'D', 'estiver com mais de 3 anos de vida útil'),
(261, 66, 'A', 'Sexo, raça e cor.'),
(262, 66, 'B', 'Personalidade, inteligência e caráter.'),
(263, 66, 'C', 'Caráter, temperamento e raça.'),
(264, 66, 'D', 'Cultura, inteligência e temperamento.'),
(265, 67, 'A', 'regular o motor, o nível do óleo e fazer manutenção do sistema de ignição do veículo'),
(266, 67, 'B', 'esquentar o motor antes de transitar com o veículo'),
(267, 67, 'C', 'esquentar o motor depois de transitar com o veículo'),
(268, 67, 'D', 'regular o motor, o nível de óleo e manter a bomba injetora em aceleração'),
(269, 68, 'A', 'orientar a vítima a não se movimentar e aguardar o socorro especializado no local'),
(270, 68, 'B', 'acompanhar a vítima até sua casa e explicar o ocorrido a um familiar'),
(271, 68, 'C', 'orientar a vítima a se movimentar devagar e oferecer-lhe água com açúcar'),
(272, 68, 'D', 'colocar a vítima em um táxi que a leve para casa'),
(273, 69, 'A', 'não sinalizar com antecedência a manobra pretendida ou sinalizá-la incorretamente'),
(274, 69, 'B', 'avançar sobre o meio fio'),
(275, 69, 'C', 'dar partida ao veículo com a engrenagem de tração ligada'),
(276, 69, 'D', 'desengrenar o veículo nos declives'),
(277, 70, 'A', 'julgar os recursos interpostos pelos infratores'),
(278, 70, 'B', 'cumprir e fazer cumprir a legislação de trânsito e as normas estabelecidas pelo Conselho Nacional de Trânsito - CONTRAN'),
(279, 70, 'C', 'estabelecer em conjunto com os policiais militares as diretrizes para o policiamento ostensivo de trânsito'),
(280, 70, 'D', 'administrar fundo de âmbito nacional destinado à segurança e à educação de trânsito'),
(281, 71, 'A', 'recolhimento da Carteira Nacional de Habilitação e remoção do veículo'),
(282, 71, 'B', 'retenção do veículo e cassação da Carteira Nacional de Habilitação'),
(283, 71, 'C', 'recolhimento do Certificado de Registro do veículo e multa'),
(284, 71, 'D', 'suspensão do direito de dirigir e apreensão do veículo'),
(285, 72, 'A', 'ver, pensar e agir'),
(286, 72, 'B', 'ver, pensar e dirigir'),
(287, 72, 'C', 'planejar, dirigir e agir'),
(288, 72, 'D', 'dirigir, ver e agir'),
(289, 73, 'A', 'garantir a segurança; pedir socorro; controlar a situação'),
(290, 73, 'B', 'localizar as vítimas; examinar as vítimas; proteger as vítimas'),
(291, 73, 'C', 'movimentar a vítima; conversar com a vítima; sinalizar o local'),
(292, 73, 'D', 'pedir ajuda das pessoas; movimentar a vítima; acionar o socorro'),
(293, 74, 'A', 'dar preferência ao veículo que já esteja circulando na área da rotatória'),
(294, 74, 'B', 'prosseguir na marcha, com atenção, sob luz amarela do semáforo'),
(295, 74, 'C', 'dar a preferência ao veículo que vem da esquerda, se não houver sinalização'),
(296, 74, 'D', 'reduzir a velocidade e cruzar lentamente, se houver placa \"PARE\" no sentido de direção do condutor'),
(297, 75, 'A', 'multa, somente'),
(298, 75, 'B', 'multa e remoção do veículo'),
(299, 75, 'C', 'multa e apreensão do veículo'),
(300, 75, 'D', 'multa e advertência oral'),
(301, 76, 'A', 'semanalmente e a cada 10.000 km'),
(302, 76, 'B', 'semanalmente e a cada 30.000 km'),
(303, 76, 'C', 'diariamente e a cada 5.000 km'),
(304, 76, 'D', 'mensalmente e a cada 25.000 km'),
(305, 77, 'A', 'catalisador'),
(306, 77, 'B', 'cárter'),
(307, 77, 'C', 'neutralizador'),
(308, 77, 'D', 'escapamento'),
(309, 78, 'A', 'testar antecipadamente os freios e descer engrenado'),
(310, 78, 'B', 'manter o motor desengrenado'),
(311, 78, 'C', 'desengrenar o motor, exceto se for realizar ultrapassagem'),
(312, 78, 'D', 'somente desengrenar o motor caso não existam outros veículos à frente no trecho em declive'),
(313, 79, 'A', 'isso é normal, pois até o próprio fabricante do veículo especifica no manual a proporção desse consumo por quilômetros rodados'),
(314, 79, 'B', 'pode haver vazamentos internos no motor que não aparecem externamente'),
(315, 79, 'C', 'existe algum problema sério no motor, pois somente motores desgatados consomem óleo'),
(316, 79, 'D', 'o óleo aplicado tem viscosidade acima da recomendada pelo fabricante, aumentando o consumo'),
(317, 80, 'A', 'o comprimento máximo permitido'),
(318, 80, 'B', 'a largura máxima permitida'),
(319, 80, 'C', 'a altura máxima permitida'),
(320, 80, 'D', 'o peso máximo permitido por eixo'),
(321, 81, 'A', 'ultrapassar'),
(322, 81, 'B', 'trânsito de caminhões'),
(323, 81, 'C', 'estacionar'),
(324, 81, 'D', 'trânsito de máquinas agrícolas'),
(325, 82, 'A', 'o ciclista desmontado empurrando a bicicleta equipara-se ao pedestre em direitos e deveres'),
(326, 82, 'B', 'nas vias rurais sem acostamento, a passagem deverá ser feita em fila dupla e no mesmo sentido dos veículos'),
(327, 82, 'C', 'é facultativa a passagem de pedestres em faixas próprias ou passarelas'),
(328, 82, 'D', 'o pedestre sempre terá preferência de passagem em relação aos veículos'),
(329, 83, 'A', 'impulsivo'),
(330, 83, 'B', 'agressivo'),
(331, 83, 'C', 'passivo'),
(332, 83, 'D', 'frustado'),
(333, 84, 'A', 'paralisia dos membros'),
(334, 84, 'B', 'dor nos braços e pernas'),
(335, 84, 'C', 'inflamação da coluna vertebral'),
(336, 84, 'D', 'desvio da coluna vertebral'),
(337, 85, 'A', 'que irão entrar para circular em rotatórias'),
(338, 85, 'B', 'precedidos de batedores ou com sirenes ligadas'),
(339, 85, 'C', 'que trafegam sobre trilhos'),
(340, 85, 'D', 'que circulam por via de fluxo de trânsito preferencial'),
(341, 86, 'A', 'preservar a vida'),
(342, 86, 'B', 'transportar para o hospital'),
(343, 86, 'C', 'aliviar a dor'),
(344, 86, 'D', 'diminuir as lesões'),
(345, 87, 'A', 'um início de pista dupla'),
(346, 87, 'B', 'uma mão dupla adiante'),
(347, 87, 'C', 'um fim de pista dupla'),
(348, 87, 'D', 'uma pista dividida'),
(349, 88, 'A', 'uma rápida perda de pressão ou um estouro'),
(350, 88, 'B', 'a redução de aderência em pista molhada'),
(351, 88, 'C', 'o desgaste de outros componentes da suspensão'),
(352, 88, 'D', 'a diminuição da estabilidade do veículo'),
(353, 89, 'A', 'para que haja tempo e distância de reação, no caso de freada brusca, evitando colisão'),
(354, 89, 'B', 'para que os veículos que venham no sentido contrário tenham melhor visibilidade'),
(355, 89, 'C', 'para eliminar a possibilidade de erro por parte do condutor'),
(356, 89, 'D', 'para poder se livrar do trânsito pesado'),
(357, 90, 'A', '6 a 8 horas'),
(358, 90, 'B', '10 a 12 horas'),
(359, 90, 'C', '30 a 60 minutos'),
(360, 90, 'D', '2 a 4 horas'),
(361, 91, 'A', '24 meses da cassação da Carteira Nacional de Habilitação.'),
(362, 91, 'B', '18 meses da cassação da Carteira Nacional de Habilitação.'),
(363, 91, 'C', '10 meses da cassação da Carteira Nacional de Habilitação.'),
(364, 91, 'D', '6 meses da cassação da Carteira Nacional de Habilitação.');

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
(7, 'De acordo com a situação ao lado, é correto afirmar que:', 'https://raw.githubusercontent.com/WBorges1984/imgAppDetran/refs/heads/main/QUESTAO_1161.gif', 'A'),
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
(21, 'Analise a animação ao lado e marque a alternativa que aponta as condutas dos motoristas dos veículos PRETO e VERMELHO que estão trafegando na via de trânsito rápido:', 'https://github.com/WBorges1984/imgAppDetran/blob/main/QUESTAO_994.gif?raw=true', 'A'),
(22, 'É importante fazer a manutenção do sistema de escapamento do veículo, pois a danificação do mesmo, contribui para aumentar:', NULL, 'A'),
(23, 'Quando houver necessidade de mover uma vítima de acidente de trânsito, com três pessoas para ajudar, qual o procedimento correto?', NULL, 'A'),
(24, 'Márcia completou 18 anos de idade, o que ela mais deseja fazer neste momento é dar entrada no seu processo de habilitação. O Código de Trânsito Brasileiro dedica um capítulo para esta finalidade. Para Márcia agir corretamente, ela deverá:', NULL, 'A'),
(25, 'A placa de advertência à direita, alerta aos usuários da via que há:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-entroncamento-obliquo-a-esquerda-A-10a-300x300.jpg', 'A'),
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
(36, 'A placa de regulamentação à direita, informa aos usuários da via:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/10/Placa-proibido-parar-e-estacionar-R-6c-300x300.jpg', 'A'),
(37, 'Em caso de neblina, recomenda-se ao condutor acionar:', NULL, 'A'),
(38, 'A placa de advertência alerta sobre a presença de:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-bonde-A-16-150x150.jpg', 'A'),
(39, 'Quando uma vítima de acidente de trânsito apresenta febre, o procedimento que NÃO se deve fazer é:', NULL, 'A'),
(40, 'sar o veículo para arremessar, sobre os pedestres ou veículos, água ou detritos, é uma infração que tem como penalidade:', NULL, 'A'),
(41, 'Se você estacionar seu veículo junto aos pontos de embarque ou desembarque de coletivos, terá como punição:', NULL, 'A'),
(42, 'É uma infração gravíssima que tem a sua multa agravada em 10 vezes:', NULL, 'A'),
(43, 'No caso de um acidente, ao solicitar o socorro, os atendentes do chamado irão fazer algumas perguntas para ajudar a prestar um socorro mais adequado e eficiente. Dentre elas:', NULL, 'A'),
(44, 'Um condutor de veículo oficial, transportando autoridades, deve saber que esse tipo de veículo:', NULL, 'A'),
(45, 'Em caso de acidente de trânsito com vítima, para acionar o Corpo de Bombeiros, deve-se ligar para:', NULL, 'A'),
(46, 'Um dos indícios de que o motor está queimando mais combustível do que o necessário, é quando sai do escapamento:', NULL, 'A'),
(47, 'Uma senhora decide atravessar uma rua congestionada com 3 filas de veículos parados. Ao passar pela segunda fila, ela é atropelada por uma motocicleta que vinha \"costurando\" entre os veículos. De acordo com esta situação, podemos afirmar que:', NULL, 'A'),
(48, 'Para prolongar a vida útil dos pneus, deve-se:', NULL, 'A'),
(49, 'A fuligem é composta por partículas sólidas e líquidas. Ela fica suspensa na atmosfera e pode:', NULL, 'A'),
(50, 'Manter o motor bem regulado evita:', NULL, 'A'),
(51, 'Transitar com o veículo derramando, lançando ou arrastando sobre a via combustível ou lubrificante que esteja utilizando, é uma infração:', NULL, 'A'),
(52, 'O condutor de veículos, os quais não possuam banco traseiro, deve transportar crianças:', NULL, 'A'),
(53, 'São vias terrestres urbanas e rurais:', NULL, 'A'),
(54, 'Em relação aos efeitos do álcool no organismo do condutor, é INCORRETO afirmar que:', NULL, 'A'),
(55, 'Um motorista profissional percebeu que o veículo com que trabalha está apresentando desgaste irregular no pneu dianteiro direito pelo lado de fora. Nesse caso, deverá solicitar a aferição:', NULL, 'A'),
(56, 'Um bom condutor deve:', NULL, 'A'),
(57, 'Uma das principais causas de colisão nos cruzamentos é:', NULL, 'A'),
(58, 'Caso esteja trafegando sob nevoeiro intenso em pistas onde não haja acostamento, o condutor deve proceder da seguinte forma:', NULL, 'A'),
(59, 'De acordo com os princípios de Direção Defensiva, assinale a alternativa correta:', NULL, 'A'),
(60, 'Onde não existir sinalização regulamentadora, a velocidade máxima será de:', NULL, 'A'),
(61, 'Antes de colocar o veículo em circulação nas vias públicas o condutor deverá:', NULL, 'A'),
(62, 'Dentre os documentos de porte obrigatório do condutor do veículo, pode-se citar:', NULL, 'A'),
(63, 'Mesmo com o sinal verde e, em caso de engarrafamento no cruzamento, o condutor NÃO deverá:', NULL, 'A'),
(64, 'Em caso de um motociclista acidentado, a atitude correta a ser tomada é:', NULL, 'A'),
(65, 'O proprietário deverá solicitar a baixa do registro do seu veículo quando:', NULL, 'A'),
(66, 'A personalidade é o conjunto dos processos psicológicos do indivíduo, que lhe permite condutas próprias. A personalidade é construída a partir de aspectos inatos e adquiridos. Assinale abaixo a alternativa que elenca somente os aspectos inatos.', NULL, 'A'),
(67, 'Para evitar o lançamento excessivo de monóxido de carbono e outros gases poluentes, o condutor deve:', NULL, 'A'),
(68, 'Após ser atropelada por uma motocicleta, a vítima tenta se movimentar e ir embora, afirmando sentir-se bem, apesar da dor nas costas e pernas. Nesse caso, aconselha-se:', NULL, 'A'),
(69, 'O candidato a obtenção da CNH cometerá uma falta grave,em seu exame de direção, quando:', NULL, 'A'),
(70, 'É competência das JARI:', NULL, 'A'),
(71, 'Jorge usou seu carro para participar de corrida por espírito de competição. Nessa situação, Jorge cometeu uma infração gravíssima que ocasiona as seguintes medidas administrativas:', NULL, 'A'),
(72, 'De acordo com os conceitos da direção defensiva, o método básico para prevenção de acidentes é:', NULL, 'A'),
(73, 'Uma boa sequencia no atendimento ou auxílio inicial em caso de acidente de trânsito é:', NULL, 'A'),
(74, 'Ao se aproximar de um cruzamento de vias, o condutor deve:', NULL, 'A'),
(75, 'Usar o veículo para arremessar, sobre os pedestres ou veículos, água ou detritos, é uma infração que tem como penalidade:', NULL, 'A'),
(76, 'Os pneus dos automóveis possuem um tempo de vida útil. Para que esse tempo não seja diminuído, a correta calibração e o devido rodízio devem ser feitos, respectivamente:', NULL, 'A'),
(77, 'É obrigatório na fabricação dos novos automóveis e tem por função reduzir a emissão de monóxido de carbono. Esse equipamento é chamado de:', NULL, 'A'),
(78, 'Caso constate que há um longo declive à frente na rodovia pela qual trafega, o condutor deve:', NULL, 'A'),
(79, 'Ao verificar o nível de óleo do motor, periodicamente, nota-se que houve um pequeno consumo e, aparentemente, não existem vazamentos. Logo, devemos entender que:', NULL, 'A'),
(80, 'A placa de regulamentação à direita, informa aos usuários da via:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/10/Placa-comprimento-maximo-permitido-R-18-150x150.jpg', 'A'),
(81, 'A placa de regulamentação informa aos usuários da via que é proibido:', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-bonde-A-16-150x150.jpg', 'A'),
(82, 'Em relação à circulação de pedestres, pode-se afirmar que:', NULL, 'A'),
(83, 'O condutor que não reflete sobre suas ações é:', NULL, 'A'),
(84, 'Ao movimentar um acidentado com suspeita de fratura na região da coluna vertebral, as pessoas que o socorreram danificaram a medula da vítima. A consequencia mais grave desse procedimento errado é:', NULL, 'A'),
(85, 'Em relação as regras de circulação, tem preferência sobre os demais veículos, os seguintes veículos, MENOS os:', NULL, 'A'),
(86, 'Ao atender uma vítima de acidente, o indivíduo que presta socorro tem como finalidade principal:', NULL, 'A'),
(87, 'A placa de advertência à direita, alerta aos usuários da via que há', 'https://blog.sinalcenter.com.br/wp-content/uploads/2023/11/Placa-fim-de-pista-dupla-A-42b-150x150.jpg', 'A'),
(88, 'Todo motorista deverá conferir a situação de cada pneu do seu veículo. Caso os pneus apresentarem em suas carcaças deformações ou bolhas poderão ocasionar:', NULL, 'A'),
(89, '\"Por que devo respeitar as distâncias de segurança?\". Considerando o CTB e os preceitos de Direção Defensiva, a resposta correta para a questão acima é:', NULL, 'A'),
(90, 'O processo de eliminação do álcool demora de:', NULL, 'A'),
(91, 'Um infrator poderá se candidatar à reabilitação decorridos:', NULL, 'A');

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
(17, 'willian', 'willian.borges@hotmail.com.br', '123'),
(18, 'Willian borges', 'willian@empresafacil.com.br', '123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
