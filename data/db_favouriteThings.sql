-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 16, 2020 at 01:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favouriteThings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

CREATE TABLE `tbl_things` (
  `ID` int(11) NOT NULL,
  `Title` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Title`, `Name`, `Description`, `Image`) VALUES
(4, 'Baseball', 'Toronto Blue Jays', 'I’ve been enjoying the world of baseball since the day I opened my eyes. To this day, I enjoy attending live games (pre-covid), as well as watching and cheering on the Toronto Blue Jays.', '../images/baseball.png'),
(5, 'Travel', 'Anywhere the wind takes me...', 'I have the travel bug (thank goodness not covid). So far, my favourite destination has been Cabo San Lucas. Up next, the world...', '../images/travel.png'),
(6, 'Dogs', 'Chichi and Blue', 'If you DON’T love dogs, then we have an issue. Meet my rescue Chichi and my Mastiff baby Blue (though he’s 100lbs and no where near full grown). Ironically, the Chihuahua thinks she’s the biggest in the house…', '../images/dogs.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_things`
--
ALTER TABLE `tbl_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_things`
--
ALTER TABLE `tbl_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
