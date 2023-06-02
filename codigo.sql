-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.28 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for api
CREATE DATABASE IF NOT EXISTS `api` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `api`;

-- Dumping structure for table api.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_date` datetime DEFAULT NULL,
  `m_message` text,
  `r_id` int NOT NULL DEFAULT '0',
  `u_id` int DEFAULT NULL,
  `m_active` tinyint DEFAULT '1',
  PRIMARY KEY (`m_id`),
  KEY `u_id` (`u_id`),
  KEY `FK_2` (`r_id`),
  CONSTRAINT `FK_2` FOREIGN KEY (`r_id`) REFERENCES `rooms` (`r_id`),
  CONSTRAINT `FK_3` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table api.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(100) DEFAULT NULL,
  `u_id` int DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `FK_1` (`u_id`),
  CONSTRAINT `FK_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table api.users
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_name` varchar(100) DEFAULT NULL,
  `u_username` varchar(100) DEFAULT NULL,
  `u_pass` varchar(100) DEFAULT NULL,
  `u_avatar` varchar(256) DEFAULT NULL,
  `u_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
