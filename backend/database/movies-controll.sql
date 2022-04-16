-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Abr-2022 às 03:36
-- Versão do servidor: 8.0.28
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `movies-controll`
--
CREATE DATABASE IF NOT EXISTS `movies-controll` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `movies-controll`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total_ep` int DEFAULT NULL,
  `atual_ep` int DEFAULT NULL,
  `total_temp` int DEFAULT NULL,
  `atual_temp` int DEFAULT NULL,
  `last_view` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `total_temp`, `atual_temp`, `last_view`) VALUES
(1, 0, 'Game of Thrones', 73, 1, 8, 1, '2021-12-15 20:12:35'),
(2, 1, 'O Senhor dos Anéis: A Sociedade do Anel', NULL, NULL, NULL, NULL, '2022-01-15 10:13:28'),
(3, 1, 'O Senhor dos Anéis: As Duas Torres', NULL, NULL, NULL, NULL, '2022-01-31 19:24:14'),
(4, 1, 'O Senhor dos Anéis: O Retorno do Rei', NULL, NULL, NULL, NULL, '2022-02-01 20:25:17'),
(5, 0, 'Stranger Things', 34, 25, 4, 3, '2022-04-15 23:27:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
