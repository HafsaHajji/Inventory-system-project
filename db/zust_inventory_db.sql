-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zust_inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(11) NOT NULL,
  `customername` varchar(30) DEFAULT NULL,
  `tell` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` int(11) NOT NULL,
  `empname` varchar(30) DEFAULT NULL,
  `tell` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `jobtitle` varchar(20) DEFAULT NULL,
  `placeofbirth` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `storeid` int(11) DEFAULT NULL,
  `oldqty` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `newqty` int(11) DEFAULT NULL,
  `remainedqty` int(11) DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `oldbalance` float DEFAULT NULL,
  `paid` float DEFAULT NULL,
  `remained` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `suppid` int(11) DEFAULT NULL,
  `itemtype` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `ppqty` float DEFAULT NULL,
  `totalprice` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salaryid` int(11) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `basicsalary` float DEFAULT NULL,
  `paid` float DEFAULT NULL,
  `remained` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeid` int(11) NOT NULL,
  `storename` varchar(30) DEFAULT NULL,
  `purchaseid` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `newprice` float DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `suppname` varchar(30) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fullname`, `username`, `password`, `regdate`) VALUES
(1, 'Osmaan Saciid osmaan', 'osmaan', '1111', '2024-12-11'),
(3, 'Yuusuf Ahmed Ali', 'kamaal', '123', '2024-12-11'),
(4, 'Raage Bashiir Ali', 'osmaan', 'kljuyghtfg', '2024-12-11'),
(5, 'Raage Bashiir Ali 55', 'raage111', '123', '2024-12-11'),
(6, 'ahmed jaamac', 'ahmed', '03de6c570bfe24bfc328', '2024-12-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salaryid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`suppid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salaryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `storeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `suppid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
