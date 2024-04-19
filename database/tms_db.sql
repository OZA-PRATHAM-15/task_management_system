-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2024 at 07:28 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

DROP TABLE IF EXISTS `project_list`;
CREATE TABLE IF NOT EXISTS `project_list` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(1, 'web development', '', 0, '2024-02-29', '2021-08-31', 2, '5,3,4', '2020-12-03 09:56:56'),
(2, 'app developement', '', 0, '2024-03-02', '2024-07-31', 2, '3,4', '2020-12-03 13:51:54'),
(0, 'Seraphic', '											', 0, '2024-04-17', '2024-05-17', 2, '5,3,4', '2024-04-17 12:41:57'),
(0, 'RBL', '											', 3, '2024-04-17', '2025-04-17', 2, '5,3,4', '2024-04-17 12:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

DROP TABLE IF EXISTS `task_list`;
CREATE TABLE IF NOT EXISTS `task_list` (
  `id` int NOT NULL,
  `project_id` int NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'TASK', '', 1, '2020-12-03 11:08:58'),
(2, 1, 'TASK1', '				Sample Task 2										', 2, '2020-12-03 13:50:15'),
(3, 2, 'database', '', 2, '2020-12-03 13:52:25'),
(4, 2, 'Optimization', '', 2, '2020-12-03 13:52:40'),
(0, 2, 'Homepage', '							', 2, '2024-04-17 12:45:07'),
(0, 0, 'Topic discussion', '							', 2, '2024-04-17 12:47:22'),
(0, 2, 'Homepage', '														', 3, '2024-04-17 12:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(0, 'Pratham', 'Oza', 'pratham@gmail.com', 'd6a13195780809d796fe3bad0b5ccec3', 1, '', '2024-04-17 12:38:54'),
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 'no-image-available.png', '2020-11-26 10:57:04'),
(2, 'Chetan', 'Mohnot', 'chetan@gmail.com', '58a39bfab24f8c96bfdd68b0c296cf7e', 2, '1606978560_avatar.jpg', '2020-12-03 09:26:03'),
(3, 'Atharv ', 'More', 'atharv@gmail.com', 'e940e545623aec19f23894c1345cc7e4', 3, '1606958760_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 09:26:42'),
(4, 'Khushii', 'Nikhade', 'khushii@gmail.com', '16e41fdca14d9dd1b30a5183cd8958a3', 3, '1606963560_avatar.jpg', '2020-12-03 10:46:41'),
(5, 'Anurag', 'Pal', 'anurag@gmail.com', '9cc817dabcdf2058d53f7292762bec63', 3, '1606963620_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-03 10:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

DROP TABLE IF EXISTS `user_productivity`;
CREATE TABLE IF NOT EXISTS `user_productivity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `task_id` int NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 2, 3, '													', 'one login page', '2024-04-17', '10:30:00', '17:30:00', 1, 7, '2024-04-17 12:44:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
