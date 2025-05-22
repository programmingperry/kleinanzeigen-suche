-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2025 at 03:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello-javascript`
--

-- --------------------------------------------------------

--
-- Table structure for table `anzeige`
--

CREATE TABLE `anzeige` (
  `anzeigeId` int(11) NOT NULL,
  `titel` char(255) NOT NULL,
  `beschreibung` varchar(535) NOT NULL,
  `bildUrl` varchar(255) NOT NULL,
  `bildBeschreibung` varchar(535) NOT NULL,
  `preisInEuro` int(11) NOT NULL,
  `istPreisVerhandelbar` tinyint(1) NOT NULL DEFAULT 0,
  `creationDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anzeige`
--

INSERT INTO `anzeige` (`anzeigeId`, `titel`, `beschreibung`, `bildUrl`, `bildBeschreibung`, `preisInEuro`, `istPreisVerhandelbar`, `creationDate`) VALUES
(1, 'Fahrrad für Bastler', 'Ich verkaufe mein altes Fahrrad. Gangschaltung kaputt. Müsste mal repariert werden.', 'fahrrad.jpg', 'Ein rostiges Fahrrad', 20, 1, '2025-05-05'),
(2, 'Neues Fahrrad', 'Verkaufe hier mein schönes neues Fahrrad.', 'fahrrad2.jpg', 'Ein sportliches schwarzes Fahrrad', 180, 1, '2025-05-18'),
(3, 'Übrig gebliebene Pizza', 'Pizza von gestern, ist noch was da. Nur Sebstabholung. Festpreis.', 'pizza.jpg', 'Eine bunt belegte Pizza in einem Karton.', 5, 0, '2025-05-18'),
(4, 'Schild "Pizza" in Neonschrift', 'Verkaufe ein Leuchtschild, siehe Foto.', 'pizza2.jpg', 'Ein rot leuchtendes Neonschild mit dem Wort Pizza und zwei Blitzen, die aus den Z-Buchstaben kommen.', 55, 1, '2025-05-18'),
(5, 'Leuchtschild Neon "Laugh"', 'Neonschild zu verkaufen', 'schild.jpg', 'Das Wort LAUGH als rotes Neonschild, in Großbuchstaben.', 70, 0, '2025-05-18'),
(6, 'Schuhe / Sneaker / Chucks', 'Verkaufe meine roten Chucks', 'schuhe.jpg', 'Rote low top Chucks, sehr gut erhalten.', 25, 0, '2025-05-18'),
(7, 'Diverse Sneaker und Chucks', 'Verkaufe meine Sneaker-Sammlung, frisch gewaschen', 'schuhe2.jpg', 'Ein Korb mit mehreren Schuhpaaren. Es sind schwarze, rote und weiße low top Chucks.', 60, 0, '2025-05-18'),
(8, 'Sneaker von Nike', 'Muss mich leider von meinen geliebten Nike-Sneakern trennen. Wie neu, nie getragen.', 'schuhe3.jpg', 'High-top Sneaker in hellgrau mit gelbem Nike-Logo.', 150, 0, '2025-05-18'),
(9, 'Kaffeetassen', 'Verkaufe zwei Kaffeetassen mit Untertassen.', 'tassen.jpg', 'Eine schwarze und eine dunkelrote kleine Kaffeetasse. Unter den Tassen sind zwei Untertassen in gleicher Farbe.', 8, 1, '2025-05-18');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `anzeige`
--
ALTER TABLE `anzeige`
  ADD PRIMARY KEY (`anzeigeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anzeige`
--
ALTER TABLE `anzeige`
  MODIFY `anzeigeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
