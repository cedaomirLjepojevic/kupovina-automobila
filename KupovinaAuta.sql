-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 01:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `KupovinaAuta`
--

-- --------------------------------------------------------

--
-- Table structure for table `Prodaja`
--

CREATE TABLE `Prodaja` (
  `ID` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Cena` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `ProdavacID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodaja`
--

INSERT INTO `Prodaja` (`ID`, `Datum`, `Cena`, `Kolicina`, `ProdavacID`) VALUES
(1, '2021-03-01', 45000, 3, 2),
(2, '2022-08-16', 39900, 7, 3),
(3, '2023-10-29', 25000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Prodavac`
--

CREATE TABLE `Prodavac` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Automobil` varchar(50) NOT NULL,
  `Boja` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodavac`
--

INSERT INTO `Prodavac` (`ID`, `Ime`, `Prezime`, `Automobil`, `Boja`) VALUES
(1, 'Petar', 'Petrovic', 'BMW', 'Crna'),
(2, 'Jovana', 'Stevic', 'Mercedes', 'Siva'),
(3, 'Stefan', 'Markovic', 'Audi', 'Bela');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProdavacID` (`ProdavacID`);

--
-- Indexes for table `Prodavac`
--
ALTER TABLE `Prodavac`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Prodavac`
--
ALTER TABLE `Prodavac`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD CONSTRAINT `prodaja_ibfk_1` FOREIGN KEY (`ProdavacID`) REFERENCES `Prodavac` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
