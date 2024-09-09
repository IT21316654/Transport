-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 02:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buses`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `employeeId` varchar(20) NOT NULL,
  `jobPost` varchar(20) NOT NULL,
  `dateOfBirth` varchar(30) NOT NULL,
  `email` varchar(44) NOT NULL,
  `mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `fullName`, `address`, `nic`, `employeeId`, `jobPost`, `dateOfBirth`, `email`, `mobile`) VALUES
(10, 'Januyan', 'jaffna', '991640100V', '123', 'Cleqner', '2022-11-11 00:00:00', 'admin01@gmail.com', 764107966),
(11, 'Sinthujan', 'dsccscefv', '993121212v', '1234', 'Driver', '2022-11-13 00:00:00', 'admin01@gmail.com', 762793202);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `invoiceId` varchar(40) NOT NULL,
  `month` varchar(44) NOT NULL,
  `division` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `type` varchar(40) NOT NULL,
  `total` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `invoiceId`, `month`, `division`, `quantity`, `type`, `total`) VALUES
(11, 'I002', 'February', 'aqwewe', 3, 'Chair', 700.00),
(12, 'I002', 'March', 'aqwewe', 12, 'Chair', 12000.00);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `invoiceId` varchar(50) NOT NULL,
  `month` varchar(44) NOT NULL,
  `division` varchar(30) NOT NULL,
  `total` double(10,2) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `invoiceId`, `month`, `division`, `total`, `remark`) VALUES
(2, 'I001', 'january', 'center', 1200.00, 'No'),
(7, 'I001', 'january', 'West', 1200.00, 'gfhgavbn'),
(10, 'I001', 'February', 'West', 300.00, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `inventoryName` varchar(50) NOT NULL,
  `supplierName` varchar(44) NOT NULL,
  `supplierId` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `inventoryName`, `supplierName`, `supplierId`, `date`, `qty`) VALUES
(3, 'Wire', 'Januyan', 'S002', '2021-09-06 00:00:00', 100),
(4, 'janu', 'abi', '1234', '2022-11-10 00:00:00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `checkIn` varchar(20) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noOfKm` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `fullName`, `checkIn`, `nic`, `cost`, `email`, `noOfKm`) VALUES
(17, 'Januyan', '2022-09-11 00:00:00', '991640100V', 1200.00, 'admin01@gmail.com', 12),
(18, 'Sinthujan', '2022-09-16 00:00:00', '993121212v', 1200.00, 'abi@gmail.com', 12),
(19, 'Januyan', '2022-11-23 00:00:00', '993121212v', 1200.00, 'abi@gmail.com', 12),
(20, 'Sinthujan', '2022-11-13 00:00:00', '993121212v', 1234400.00, 'janu@gmail.com', 12344),
(21, 'Januyan', '2022-11-09 00:00:00', '991640100V', 20000.00, 'admin01@gmail.com', 200),
(22, 'zxczxczxc', '2022-11-10 00:00:00', '991640100V', 1200.00, 'admin01@gmail.com', 12),
(23, 'asas', '2022-11-09 00:00:00', '991640100V', 1200.00, 'abi@gmail.com', 12);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `vehicleName` varchar(44) NOT NULL,
  `vehicleNumber` varchar(50) NOT NULL,
  `facilities` varchar(44) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `vehicleType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `vehicleName`, `vehicleNumber`, `facilities`, `cost`, `vehicleType`) VALUES
(25, 'Audi', 'WE-1234', 'Acasasasasas', 200.00, 'Luxury Semi'),
(26, 'Audi', 'WE-1234', 'asdasd', 2222.00, 'semi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
