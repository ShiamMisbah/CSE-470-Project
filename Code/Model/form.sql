-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 09:07 PM
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
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyaccessories`
--

CREATE TABLE `buyaccessories` (
  `ID` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `part` enum('RGB LIGHT','HELMET','WATER CASE','HEADLIGHT','LOCK') NOT NULL,
  `area` enum('dhanmondi','mirpur','uttara','gulshan','banani','tejgaon','mohakhali','paltan','panthapath','bashundhara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyaccessories`
--

INSERT INTO `buyaccessories` (`ID`, `email`, `fname`, `lname`, `phone`, `part`, `area`) VALUES
(1, '', '', '', 0, 'HEADLIGHT', 'dhanmondi'),
(2, '', '', '', 0, 'WATER CASE', 'dhanmondi');

-- --------------------------------------------------------

--
-- Table structure for table `buylist`
--

CREATE TABLE `buylist` (
  `ID` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `model` enum('bike1','bike2','bike3','bike4','bike5','bike6') NOT NULL,
  `area` enum('dhanmondi','mirpur','uttara','gulshan','banani','tejgaon','mohakhali','paltan','panthapath','bashundhara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buylist`
--

INSERT INTO `buylist` (`ID`, `email`, `fname`, `lname`, `phone`, `model`, `area`) VALUES
(1, '', '', '', 0, 'bike3', 'dhanmondi'),
(2, '', '', '', 0, 'bike2', 'dhanmondi');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `event` enum('rally 1','rally 2','mela','tournament') NOT NULL,
  `query` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `email`, `fname`, `lname`, `phone`, `event`, `query`) VALUES
(1, '', '', '', 0, 'mela', ''),
(2, '', '', '', 0, 'mela', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `fname` varchar(11) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` int(30) NOT NULL,
  `area` enum('dhanmondi','mirpur','uttara','gulshan','banani','tejgaon','mohakhali','paltan','panthapath','bashundhara') NOT NULL,
  `address` varchar(200) NOT NULL,
  `delivery_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `fname`, `lname`, `age`, `phone`, `area`, `address`, `delivery_date`) VALUES
(1, '', '', '', 0, 0, 'uttara', '', '2021-02-17T01:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyaccessories`
--
ALTER TABLE `buyaccessories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `buylist`
--
ALTER TABLE `buylist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyaccessories`
--
ALTER TABLE `buyaccessories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buylist`
--
ALTER TABLE `buylist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
