-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 23, 2023 at 10:21 AM
-- Server version: 10.10.2-MariaDB
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todolist`
--

DROP TABLE IF EXISTS `tbl_todolist`;
CREATE TABLE IF NOT EXISTS `tbl_todolist` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'PENDING',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_completed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_todolist`
--

INSERT INTO `tbl_todolist` (`id`, `item`, `status`, `date_added`, `date_completed`) VALUES
(54, 'Play TFT', 'COMPLETED', '2023-12-23 04:35:56', '2023-12-23 04:35:57'),
(55, 'Watch some basic HTML CSS in youtube', 'COMPLETED', '2023-12-23 04:36:21', '2023-12-23 04:45:07'),
(53, 'Insert all the activities', 'PENDING', '2023-12-23 04:35:46', NULL),
(52, 'Make a portfolio', 'COMPLETED', '2023-12-23 04:35:32', '2023-12-23 04:35:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
