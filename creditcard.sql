-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 06:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creditcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `#` int(11) NOT NULL,
  `ccnum` varchar(100) NOT NULL,
  `expdate` date NOT NULL,
  `seccode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`#`, `ccnum`, `expdate`, `seccode`) VALUES
(1, 'a5sfethw6x98d6sk4jv0lms65h7cjshn', '2021-02-28', '389'),
(3, 'bc07a3e35d042e602bd5615f62b36c0a', '2024-01-01', '222'),
(4, '33f65987d1661568f6c6701b27b25986', '2023-01-01', '365'),
(5, 'ffce3761be56d210c2e029a92a02884e', '2025-01-01', '124'),
(6, '073bf95a0b72ef9baad9400b02fb34fd', '2024-01-01', '111'),
(7, '6f6a7ac54e3be7e765a370546bd13bf1', '2022-07-01', '111'),
(8, 'bc07a3e35d042e602bd5615f62b36c0a', '2025-01-01', '789'),
(9, '714fcff4d34246c49d79b113f130cc92', '2025-01-01', '784'),
(10, '1bb8963136f0bd3cd4c0f86e9dbea441', '2024-01-01', '2122'),
(11, 'bc07a3e35d042e602bd5615f62b36c0a', '2024-01-01', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`#`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
