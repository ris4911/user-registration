-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2024 at 05:00 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `email_verified`, `verification_token`) VALUES
(2, 'ris', 'raval', 'ris@gmail.com', '$2a$08$5zU.3mmouwR3nMydf1/FA.vEgFkccgxSmC3aAIBG7xAQT61WfXYDC', 'admin', 0, NULL),
(3, 'mahek', 'sharma', 'mahek@gmail.com', '$2a$08$nbmxD2LP4w/sjcuEOVUmU.EvmHtZJkaBYe5fd6k73zG/1lpNWWFsu', 'admin', 0, NULL),
(5, 'nik', 'patel', 'nik@gmail.com', '$2a$08$Rue3YjT8Iw.MTLuetqMCU.Y2BrVT9lKYC.ztVyWvs7kOx7ICkPloC', 'customer', 0, NULL),
(7, 'alex', 'jones', 'alex@gmail.com', '$2a$08$d4Gsnt1DegG1MWEApVz7CujSx5YByJmDfRl0Xc66j80rE5pvZna9m', 'customer', 0, 'b7e123b9253c5dbea5001c1b2e05689574284dc0c4323f05eae8a428bc2d1b46'),
(10, 'rushi', 'raval', 'rushiraval4911@gmail.com', '$2a$08$0dDY9Btthw92MmjywzmRW.yE2FLFIQGEW4/lrGR6kN043sCDe/UyW', 'customer', 0, '09d4046d1c3c776329caa8f6ce1dbde16448f0f1675434da729515e4a6328a6f'),
(11, 'rushi', 'raval', 'rushi@gmail.com', '$2a$08$LxzcNWhGx1YRx2RM5uplg.FcNQneh2vlCNxsIdscAf5kZFQ60SrOa', 'admin', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
