-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 10:39 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exbo_gaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `messageid` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`messageid`, `name`, `email`, `message`) VALUES
('M1001', 'Hansika Perera', 'madhuhanz@gmail.com', 'madhawa booruwek');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` varchar(10) NOT NULL,
  `gameName` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `gameName`, `category`, `tag`) VALUES
('G010', 'HYUNDAI CAR', 'Other', 'car race'),
('G02', 'QWE RTY', 'Action', 'qwerty'),
('G03', 'ABCD EFG', 'Racing', 'car race'),
('G04', 'ABCD EFG', 'Racing', 'car race'),
('G05', 'POPUP Car', 'Sport', 'car race'),
('G06', 'POPUP Car', 'Sport', 'car race'),
('G07', 'Need for Speed', 'Racing', 'Mosa Wanted'),
('G08', 'Call of Duty', 'Action', 'Shooting'),
('G09', 'HYUNDAI CAR', 'Other', 'car race');

-- --------------------------------------------------------

--
-- Table structure for table `gameurl`
--

CREATE TABLE `gameurl` (
  `gameID` varchar(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gameurl`
--

INSERT INTO `gameurl` (`gameID`, `code`) VALUES
('G02', 'commandorush'),
('G03', 'abcdefg'),
('G04', 'abcdefg'),
('G05', 'popupcar'),
('G06', 'popupcar'),
('G08', 'black ops'),
('G09', 'hyundaicar'),
('G010', 'hyundaicar');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(11) NOT NULL,
  `cardnumber` int(11) NOT NULL,
  `hname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `exdate` varchar(45) NOT NULL,
  `ccv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`id`, `cardnumber`, `hname`, `email`, `exdate`, `ccv`) VALUES
(1, 11111, 'Dhnauka madhushan', 'madhuhanz@gmail.com', '02/12', 123);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `userId` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `platform` varchar(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`userId`, `firstName`, `lastName`, `gender`, `platform`, `userName`, `email`, `password`, `type`) VALUES
('U00', 'ssfs', 'dfs', 'sdfa', 'saf', 'afa', 'afgad', '123', 'user'),
('U001', 'asd', 'lkj', 'Female', 'PC', 'asdlkj', 'asd123', 'asd@gmail.com', 'user'),
('U003', 'haaai', 'maan', 'male', 'PC', 'haiman', 'madhuhanz@gmail.com', 'haiman123', 'user'),
('U004', 'kasun', 'thilina', 'male', 'PC', 'kassa', 'kasun@gmail.com', 'kassa123', 'user'),
('U005', 'Hansika', 'Perera', 'male', 'PC', 'Hansi', 'madhuhanz@gmail.com', 'hansi123', 'user'),
('U006', 'madhawa', 'uura', 'Female', 'PC', 'doni', 'donige@baba.com', 'doni123', 'user'),
('U007', 'jgh', 'jfhril', 'malle', 'djl', 'efjel', 'fhrlgjl', 'rf/gl', 'user'),
('U009', 'ADMIN', 'admin', 'Female', 'PC', 'Admin', 'ADMIN@gmail.com', 'admin123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
