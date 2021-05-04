-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 05:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `auth_id` int(110) NOT NULL,
  `auth_code` varchar(205) NOT NULL,
  `new` datetime NOT NULL,
  `expire` datetime NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`auth_id`, `auth_code`, `new`, `expire`, `user_id`) VALUES
(70, 'bjzlyq', '2021-04-29 18:21:47', '2021-04-29 18:26:47', 19),
(71, 'e76lrq', '2021-05-01 11:06:20', '2021-05-01 11:11:20', 20),
(72, 'e8orqx', '2021-05-01 11:33:26', '2021-05-01 11:38:26', 20),
(73, 'o61j3z', '2021-05-01 11:34:11', '2021-05-01 11:39:11', 20),
(74, '4ezjiw', '2021-05-01 11:35:10', '2021-05-01 11:40:10', 20),
(75, 'x6ngy3', '2021-05-01 11:44:48', '2021-05-01 11:49:48', 20);

-- --------------------------------------------------------

--
-- Table structure for table `event_log`
--

CREATE TABLE `event_log` (
  `event_id` int(110) NOT NULL,
  `event_user` varchar(250) NOT NULL,
  `event_act` varchar(230) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_log`
--

INSERT INTO `event_log` (`event_id`, `event_user`, `event_act`, `date`) VALUES
(51, 'SenpaiChris', 'Registered', '2021-05-01 11:06:13'),
(52, 'SenpaiChris', 'Signed-In', '2021-05-01 11:06:18'),
(53, 'SenpaiChris', 'Signed-Out', '2021-05-01 11:06:52'),
(54, 'SenpaiChris', 'Change Password', '2021-05-01 11:07:51'),
(55, 'SenpaiChris', 'Signed-In', '2021-05-01 11:15:11'),
(56, 'SenpaiChris', 'Change Password', '2021-05-01 11:18:48'),
(57, 'SenpaiChris', 'Signed-In', '2021-05-01 11:29:09'),
(58, 'SenpaiChris', 'Signed-Out', '2021-05-01 11:44:39'),
(59, 'SenpaiChris', 'Signed-In', '2021-05-01 11:44:47'),
(60, 'SenpaiChris', 'Signed-Out', '2021-05-01 11:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `question` varchar(230) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `question`, `answer`, `date`) VALUES
(19, 'moy', 'cedcapistrano27@gmail.com', 'Mama27', 'mom\'s name', 'maria', '2021-04-29'),
(20, 'SenpaiChris', 'wodota1922@gmail.com', 'Abc123', 'sino ka', 'ako to', '2021-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`auth_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `auth_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
  MODIFY `event_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentication`
--
ALTER TABLE `authentication`
  ADD CONSTRAINT `authentication_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
