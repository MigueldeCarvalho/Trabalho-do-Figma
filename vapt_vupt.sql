-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 06-Jul-2022 às 14:35
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vapt_vupt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cardapio`
--

CREATE TABLE `cardapio` (
  `id_cardapio` int(11) NOT NULL,
  `prato_cardapio` varchar(50) NOT NULL,
  `preco_cardapio` float NOT NULL,
  `categoria_cardapio` varchar(50) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `promocao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cardapio`
--

INSERT INTO `cardapio` (`id_cardapio`, `prato_cardapio`, `preco_cardapio`, `categoria_cardapio`, `id_restaurante`, `promocao`) VALUES
(1, 'Hamburguer de Picanha', 50, 'hamburguer', 3, 1),
(2, 'Hamburguer de Picanha', 100, 'hamburguer', 1, 0),
(3, 'Feijoada', 24, 'brasileira', 2, 0),
(4, 'Risoto de Frango', 33, 'brasileira', 2, 1),
(5, 'Batata Frita', 10, 'acompanhamento', 1, 0),
(6, 'Batata Frita', 5, 'acompanhamento', 3, 1),
(7, 'Salada Grega', 10, 'salada', 2, 1),
(8, 'Hamburguer de Javali', 39, 'hamburguer', 3, 0),
(9, 'Feijoada', 26, 'brasileira', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `id_entrega` int(11) NOT NULL,
  `id_pedidos` int(11) NOT NULL,
  `id_motoboy` int(11) NOT NULL,
  `status_entrega` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`id_entrega`, `id_pedidos`, `id_motoboy`, `status_entrega`) VALUES
(1, 1, 2, 'Em rota'),
(2, 2, 3, 'Concluido '),
(3, 3, 2, 'Em rota');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens`
--

CREATE TABLE `itens` (
  `id_itens` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_cardapio` int(11) NOT NULL,
  `quantidade_itens` int(11) NOT NULL,
  `precoDia_itens` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens`
--

INSERT INTO `itens` (`id_itens`, `id_pedido`, `id_cardapio`, `quantidade_itens`, `precoDia_itens`) VALUES
(1, 1, 1, 1, 50),
(2, 2, 1, 1, 50),
(3, 3, 5, 2, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motoboy`
--

CREATE TABLE `motoboy` (
  `id_motoboy` int(11) NOT NULL,
  `nome_motoboy` varchar(50) NOT NULL,
  `avaliacao_motoboy` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `motoboy`
--

INSERT INTO `motoboy` (`id_motoboy`, `nome_motoboy`, `avaliacao_motoboy`) VALUES
(1, 'Gabriel', 7.2),
(2, 'Lucas', 8.5),
(3, 'Taudo', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `numero_pedido` int(11) NOT NULL,
  `status_pedido` varchar(30) NOT NULL,
  `pagamento_pedido` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_motoboy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_restaurante`, `numero_pedido`, `status_pedido`, `pagamento_pedido`, `id_usuario`, `id_motoboy`) VALUES
(1, 1, 1, 'Andamento', 'Dinheiro', 1, 1),
(2, 2, 2, 'Concluido', 'Cartão Crédito', 2, 2),
(3, 3, 3, 'Andamento', 'Dinheiro', 3, 3),
(4, 2, 223, '', '', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_restaurante`
--

CREATE TABLE `pedido_restaurante` (
  `id_cardapio` int(11) NOT NULL,
  `id_restaurante` int(11) NOT NULL,
  `preco_cardapio` int(11) NOT NULL,
  `prato_cardapio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `restaurante`
--

CREATE TABLE `restaurante` (
  `id_restaurante` int(11) NOT NULL,
  `nome_restaurante` varchar(50) NOT NULL,
  `localizacao_restaurante` varchar(50) NOT NULL,
  `horario_restaurante` varchar(30) NOT NULL,
  `entrega_gratis` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `restaurante`
--

INSERT INTO `restaurante` (`id_restaurante`, `nome_restaurante`, `localizacao_restaurante`, `horario_restaurante`, `entrega_gratis`) VALUES
(1, 'Madero', 'R. Presidente de Moraes 281', '11:00 até 18:00', 0),
(2, 'Giraffas', 'R. Marques da Costa 281', '10:00 até 16:00', 0),
(3, 'MacDonald\'s', 'R. Guaíra 523', '00:00 até 00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(50) NOT NULL,
  `telefone_usuario` varchar(15) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `cpf_usuario` bigint(11) NOT NULL,
  `endereco_usuario` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `senha_usuario`, `telefone_usuario`, `nome_usuario`, `cpf_usuario`, `endereco_usuario`) VALUES
(1, 'jandir@gmail.com', '10203040', '4798874302', 'Jandir Neto', 12332145621, ''),
(2, 'lisboa@gmail.com', '40302010', '4798721621', 'Lisboa da Costa', 10320579323, ''),
(3, 'bianca@gmail.com', '23501203', '4797219691', 'Bianca Gonçalves', 64212682382, ''),
(4, 'rafael@gmail.com', '121313123213', '123213213', 'Rafael Kerstenn', 213215213, 'rafael'),
(5, 'gaui@gmail.com', 'Ga@siue204', '(43) 9438-5849', 'guaiu', 23486940567, 'Rua Carlos'),
(7, 'dfiner@gmail.com', 'UIbsda@si34', '(47) 9483-3248', 'Djefnninfer', 234674634, 'Rua do Rafael'),
(8, 'gaga@gmail.com', 'Br@sil324', '(47) 8433-4345', 'gaga', 342535, 'Rya');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`id_cardapio`),
  ADD KEY `id_restaurante` (`id_restaurante`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id_entrega`),
  ADD KEY `id_pedidos` (`id_pedidos`),
  ADD KEY `id_motoboy` (`id_motoboy`);

--
-- Índices para tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id_itens`),
  ADD KEY `id_cardapio` (`id_cardapio`),
  ADD KEY `id_pedidos_itens` (`id_pedido`);

--
-- Índices para tabela `motoboy`
--
ALTER TABLE `motoboy`
  ADD PRIMARY KEY (`id_motoboy`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_motoboy` (`id_motoboy`),
  ADD KEY `id_restaurante` (`id_restaurante`);

--
-- Índices para tabela `pedido_restaurante`
--
ALTER TABLE `pedido_restaurante`
  ADD PRIMARY KEY (`id_cardapio`);

--
-- Índices para tabela `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id_restaurante`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `id_cardapio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `entrega`
--
ALTER TABLE `entrega`
  MODIFY `id_entrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id_itens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `motoboy`
--
ALTER TABLE `motoboy`
  MODIFY `id_motoboy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedido_restaurante`
--
ALTER TABLE `pedido_restaurante`
  MODIFY `id_cardapio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id_restaurante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD CONSTRAINT `id_restaurante` FOREIGN KEY (`id_restaurante`) REFERENCES `restaurante` (`id_restaurante`);

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `id_motoboy` FOREIGN KEY (`id_motoboy`) REFERENCES `motoboy` (`id_motoboy`),
  ADD CONSTRAINT `id_pedidos` FOREIGN KEY (`id_pedidos`) REFERENCES `pedido` (`id_pedido`);

--
-- Limitadores para a tabela `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `id_cardapio` FOREIGN KEY (`id_cardapio`) REFERENCES `cardapio` (`id_cardapio`),
  ADD CONSTRAINT `id_pedidos_itens` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_motoboy`) REFERENCES `motoboy` (`id_motoboy`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_restaurante`) REFERENCES `restaurante` (`id_restaurante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
