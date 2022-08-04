-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2022 at 06:28 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.3.33-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Contact_Application`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` text NOT NULL,
  `work` varchar(200) NOT NULL,
  `home` varchar(100) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dob` varchar(50) NOT NULL,
  `bio` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`id`, `user_id`, `name`, `mobile`, `work`, `home`, `group_name`, `city`, `picture`, `email`, `dob`, `bio`) VALUES
(23, 1, 'abc', '766899444310', 'web developer', 'afafa eta', 'Morning', 'Mohali', 'chat-popup.png07-21-2022_12:06:42png', 'root@gmail.com423132', '2022-07-20', '                                        '),
(28, 1, 'zebra', '9781948706', '', '', 'Morning', 'Mohali', 'tree-736885__480.jpg07-21-2022_12:04:06jpg', 'root@gmail.com', '', '                                        '),
(36, 1, 'lp][l', '76689944[io0p', '', '', 'Morning', 'Mohali', '1884_928_1.25.png', 'kartik@123.com.l', '', '                                            '),
(42, 1, 'abc', '76689944ADADA', '', '', 'Morning', 'Mohali', 'tree-736885__480.jpg07-21-2022_11:46:17jpg', 'root@gmail.comSDAD', '', '                                            '),
(45, 1, 'John', '9781948706agf', '', '', 'Morning', 'Mohali', 'down-arrow (1).png07-21-2022_12:31:33jpg', 'rofggaft@gmail.com', '', '                                            '),
(46, 1, 'John', '9781948706agfafa', '', '', 'Morning', 'Mohali', 'down-arrow (1).png07-21-2022_12:34:01jpg', 'rofgfafgaft@gmail.com', '', '                                            '),
(47, 1, 'zebra', '97819487063af', 'web developer', 'ambala', 'Afternoon', 'Ambala', 'Adding_Provider.png07-21-2022_17:30:34jpg', 'kartafafik@123.com', '232332-02-11', '                                            gfwetfgtgatrqgt v');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'jatinder', 'jatinder1901243@gmail.com', 'root'),
(2, 'abc', 'ravleen@88gmail.com', 'root'),
(3, 'abc', 'jatnder45343@gmail.com', 'root'),
(4, 'abc', 'root@gmail.com', 'root'),
(5, 'John', 'afffa@gmail.com', 'root'),
(6, 'abc', 'jarindew@GMAIL.COM', 'root'),
(7, 'abc', 'afafhh@gmail.com', 'root'),
(8, 'abc', 'jatnder45343@gmail.com23', 'root'),
(9, 'abc', 'root@g2mail.com', 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `contact_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
