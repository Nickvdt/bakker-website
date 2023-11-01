-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                11.1.2-MariaDB-1:11.1.2+maria~ubu2204 - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Versie:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Databasestructuur van newsletters wordt geschreven
CREATE DATABASE IF NOT EXISTS `newsletters` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `newsletters`;

-- Structuur van  tabel newsletters.Producten wordt geschreven
CREATE TABLE IF NOT EXISTS `Producten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `introtekst` varchar(120) DEFAULT NULL,
  `omschrijving` varchar(120) DEFAULT NULL,
  `Titel` varchar(120) DEFAULT NULL,
  `foto` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumpen data van tabel newsletters.Producten: ~5 rows (ongeveer)
INSERT INTO `Producten` (`id`, `slug`, `introtekst`, `omschrijving`, `Titel`, `foto`) VALUES
	(1, 'croissant', 'Are you going to finish that Croissant?', 'broodje van bladerdeeg', 'Croissant', 'croissant.webp'),
	(2, 'muffin-naturel', 'Make every day a muffin day, it’s the only way.', ' licht gezoet klein broodje of cakeje', 'Muffin', 'muffin.webp'),
	(3, 'stokbrood', 'stokbroodje? lekker man!', 'Vers uit Frankrijk', 'Stokbrood', 'stokbrood.webp'),
	(4, 'wafel', 'hou je waffel!', 'het is Lekkah', 'Wafel', 'wafel.webp'),
	(5, 'tarwebrood', 'wist je dat tarwebrood gemaakt is van tarwe? I know right!!', 'Lekker broodje uit de oven', 'Tarwebrood', 'tarwebrood.webp');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
