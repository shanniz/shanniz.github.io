-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2019 at 10:00 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_sales`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStoreSales` (IN `store` VARCHAR(45))  NO SQL
SELECT * FROM Store_Information
WHERE Store_Information.Store_Name=store$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Geography`
--

CREATE TABLE `Geography` (
  `id` int(11) NOT NULL,
  `Region_Name` varchar(50) NOT NULL,
  `Store_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Geography`
--

INSERT INTO `Geography` (`id`, `Region_Name`, `Store_Name`) VALUES
(1, 'East', 'Boston'),
(2, 'East', 'New York'),
(3, 'West', 'Los Angeles'),
(4, 'West', 'San Diego');

-- --------------------------------------------------------

--
-- Table structure for table `Internet_Sales`
--

CREATE TABLE `Internet_Sales` (
  `id` int(11) NOT NULL,
  `Txn_Date` date NOT NULL,
  `Sales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Internet_Sales`
--

INSERT INTO `Internet_Sales` (`id`, `Txn_Date`, `Sales`) VALUES
(1, '1999-01-07', 250),
(2, '1999-01-10', 535),
(3, '1999-01-11', 320),
(4, '1999-01-12', 750);

-- --------------------------------------------------------

--
-- Table structure for table `Store_Information`
--

CREATE TABLE `Store_Information` (
  `id` int(11) NOT NULL,
  `Store_Name` varchar(155) NOT NULL,
  `Sales` int(55) NOT NULL,
  `Txn_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Store_Information`
--

INSERT INTO `Store_Information` (`id`, `Store_Name`, `Sales`, `Txn_Date`) VALUES
(1, 'Los Angeles', 1500, '1999-01-05'),
(2, 'Los Angeles', 300, '1999-01-07'),
(3, 'San Diego', 250, '1999-01-05'),
(4, 'Boston', 700, '1999-01-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Geography`
--
ALTER TABLE `Geography`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Internet_Sales`
--
ALTER TABLE `Internet_Sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Store_Information`
--
ALTER TABLE `Store_Information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Geography`
--
ALTER TABLE `Geography`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Internet_Sales`
--
ALTER TABLE `Internet_Sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Store_Information`
--
ALTER TABLE `Store_Information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
