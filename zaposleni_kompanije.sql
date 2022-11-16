-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 11:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaposleni_kompanije`
--

-- --------------------------------------------------------

--
-- Table structure for table `kompanija`
--

CREATE TABLE `kompanija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `lokacija` varchar(100) NOT NULL,
  `broj_zaposlenih` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kompanija`
--

INSERT INTO `kompanija` (`id`, `naziv`, `lokacija`, `broj_zaposlenih`) VALUES
(1, 'Comtrade System Integration', 'Savski nasip 7, Beograd', 15),
(2, 'Simens', 'Postdam, Berlin', 50),
(3, 'Adacta', 'Mekenzijeva 13', 80),
(4, 'Telekom', 'Takovska 2, Beograd', 436);

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `plata` double(15,2) NOT NULL,
  `kompanija_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zaposleni`
--

INSERT INTO `zaposleni` (`id`, `ime`, `prezime`, `plata`, `kompanija_id`) VALUES
(54, 'Andjela', 'Mrdak', 23400000.00, 1),
(57, 'Andjela', 'Jovanovic', 70000.00, 3),
(58, 'Tijana', 'Martinovic', 44000.00, 4),
(59, 'Sandra', 'Tomic', 70000.00, 1),
(60, 'Aleksa', 'Miletic', 69000.00, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kompanija`
--
ALTER TABLE `kompanija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zaposleni_kompanija_foreign_key` (`kompanija_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kompanija`
--
ALTER TABLE `kompanija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zaposleni`
--
ALTER TABLE `zaposleni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD CONSTRAINT `zaposleni_kompanija_foreign_key` FOREIGN KEY (`kompanija_id`) REFERENCES `kompanija` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
