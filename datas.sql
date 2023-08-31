-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravelauth
CREATE DATABASE IF NOT EXISTS `laravelauth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravelauth`;

-- Dumping structure for table laravelauth.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelauth.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'razha', 'razha10@gmail.com', NULL, '$2y$10$Xr72iGJMD/ZW05WKXjklxOW5bYnPFYZBHY0r3L5bmjw7SkNMUnBmO', 2, NULL, '2023-08-31 21:27:24', '2023-08-31 21:27:24'),
	(2, 'User', 'user@techsolutionstuff.com', NULL, '$2y$10$iujkrWM7lx0uRRSMALwd0ujSrYinCfv9c6FTJ4yG033yHWviNtr/y', 0, NULL, '2023-08-31 21:33:13', '2023-08-31 21:33:13'),
	(3, 'Super Admin', 'super-admin@techsolutionstuff.com', NULL, '$2y$10$F5LTu8qW60Z0qWqZ6uJAIuqi0VjFNChpH4dOaYjmMLbrWeC7iu7rC', 1, NULL, '2023-08-31 21:33:13', '2023-08-31 21:33:13'),
	(4, 'Manager', 'manager@techsolutionstuff.com', NULL, '$2y$10$pW2Iu88dmF4f479Ve0ag2.S/IqkR0dZX.iEWYOh7ZxEFM6J1T9Gty', 2, NULL, '2023-08-31 21:33:13', '2023-08-31 21:33:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
