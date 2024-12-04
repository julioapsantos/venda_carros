-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/12/2024 às 20:22
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `venda_carros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `unico_dono` tinyint(1) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `quilometragem` int(11) DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `tipo_cambio` enum('manual','auto') DEFAULT NULL,
  `opcionais` text NOT NULL,
  `imagens` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `titulo`, `preco`, `descricao`, `unico_dono`, `marca`, `modelo`, `quilometragem`, `data_compra`, `tipo_cambio`, `opcionais`, `imagens`) VALUES
(1, 'vendo fox 2010', 25000.00, 'veiculo em estado de seminovo', 1, 'volkswagen', 'fox', 135000, '2021-04-01', 'manual', 'alarm, ac, eletric_window, speakers', 'uploads/Captura de tela 2024-10-11 155513.png'),
(2, 'vendo classic 2008', 15000.00, 'veiculo em bom estado de conservação', 0, 'chevrolet', 'classic', 158000, '2023-09-10', 'manual', 'ac, eletric_lock', 'uploads/Captura de tela 2024-10-11 155513.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
