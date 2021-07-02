-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 03:19 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adb`
--
CREATE DATABASE IF NOT EXISTS `adb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `adb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'mehul', 'msherdiwala16@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09'),
(2, 'harsh', 'harsh@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`) VALUES
(2, 'mehul', 'sherdiwala'),
(4, 'mann', 'soni'),
(12, 'mehul', 'sherdiwala'),
(14, 'mehul', 'sherdiwala'),
(16, 'mehul', 'sherdiwala'),
(18, 'mehul', 'sherdiwala'),
(20, 'mehul', 'soni'),
(22, 'mehul', 'soni'),
(24, 'mehul', 'soni'),
(26, 'mehul', 'soni'),
(28, 'mehul', 'soni'),
(34, 'mehul', 'sherdiwala'),
(36, 'mehul', 'soni'),
(38, 'Harsh', 'Chevli'),
(39, 'mehul', 'soni');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`name`, `password`) VALUES
('Mehul', '123'),
('Harsh', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Database: `ahar`
--
CREATE DATABASE IF NOT EXISTS `ahar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ahar`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `cat_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `fid` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `pay_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `salesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rid` int(11) NOT NULL,
  `rname` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `pwd` int(11) NOT NULL,
  `address` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'restaurant type',
  `food_cate` int(11) NOT NULL COMMENT '0=veg,1=non veg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_item`
--

CREATE TABLE `sale_item` (
  `itemid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `catid` (`catid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `salesid` (`salesid`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `sale_item`
--
ALTER TABLE `sale_item`
  ADD PRIMARY KEY (`itemid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `salesid` (`salesid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_item`
--
ALTER TABLE `sale_item`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `aromafabs`
--
CREATE DATABASE IF NOT EXISTS `aromafabs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aromafabs`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `MobNo` varchar(10) DEFAULT NULL,
  `EmailId` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Name`, `MobNo`, `EmailId`, `Password`, `Image`) VALUES
(1, 'Swadhin Sahu', '8401310845', 'sahu@7405', '123', NULL),
(2, 'Mehul', '9427289583', 'msherdiwala@gmail.com', '123456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AreaId` mediumint(5) NOT NULL,
  `CityId` tinyint(3) NOT NULL,
  `AreaName` varchar(30) NOT NULL,
  `AreaCode` int(11) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AreaId`, `CityId`, `AreaName`, `AreaCode`, `EntryDate`, `Status`) VALUES
(1, 5, 'BHATAR6', 5, '2017-02-12 11:51:51', 1),
(5, 5, 'Housing', 395442, '2017-02-17 20:38:29', 1),
(6, 5, 'UDHANA', 395415, '2017-02-17 20:40:19', 1),
(8, 4, 'sdfsf', 4555, '2017-04-03 05:20:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BrandId` smallint(5) NOT NULL,
  `BrandName` varchar(30) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandId`, `BrandName`, `EntryDate`, `Status`) VALUES
(6, 'ANARKALI', '2017-01-24 03:25:43', 1),
(8, 'ROOPKALA', '2017-01-27 05:50:59', 1),
(9, 'INDUSDIVA', '2017-01-27 07:59:02', 1),
(10, 'SUDARSHAN SILK', '2017-01-29 18:53:10', 1),
(11, 'KAJAL SAREES', '2017-01-29 18:53:28', 1),
(13, 'AHANA FASHION', '2017-03-30 23:24:33', 1),
(15, 'MAHARAK FASHION', '2017-04-02 11:43:34', 1),
(16, 'KANCHIVARAM', '2017-04-02 16:12:12', 1),
(17, 'VISHAL PRINTS FASHION', '2017-04-02 20:05:05', 1),
(18, 'TRIBENI SAREES', '2017-04-21 15:42:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Qty` smallint(4) NOT NULL,
  `TotalAmount` double(6,0) NOT NULL,
  `Entrydate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('pending','ordered','delivered') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartId`, `ProductId`, `UserId`, `Qty`, `TotalAmount`, `Entrydate`, `Status`) VALUES
(43, 17, 11, 1, 0, '2017-04-24 08:08:48', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryId` smallint(5) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`, `EntryDate`, `Status`) VALUES
(1, 'Sarees', '2017-02-14 03:30:23', 1),
(2, 'Salwar Suits', '2017-02-16 18:31:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CityId` tinyint(3) NOT NULL,
  `CityName` varchar(15) NOT NULL,
  `StateId` tinyint(2) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityId`, `CityName`, `StateId`, `EntryDate`, `Status`) VALUES
(2, 'AHEMADABAD', 1, '2017-02-12 10:20:20', 1),
(3, 'asdsad', 2, '2017-02-12 11:14:43', 1),
(4, 'RAJKOT', 1, '2017-02-17 18:06:00', 1),
(5, 'SURAT', 1, '2017-02-17 18:41:49', 1),
(6, 'Bardoli', 1, '2017-04-02 20:32:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `ColorId` tinyint(2) NOT NULL,
  `ColorName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`ColorId`, `ColorName`) VALUES
(1, 'RED'),
(2, 'PINK'),
(3, 'BLACK'),
(4, 'GREEN'),
(5, 'MAROON'),
(6, 'ORANGE'),
(7, 'PURPLE'),
(8, 'BLUE'),
(9, 'BROWN'),
(10, 'White'),
(11, 'Orange');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `Comment` varchar(400) NOT NULL,
  `EntryDate` date DEFAULT NULL,
  `Status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `FullName`, `EmailId`, `MobileNo`, `Comment`, `EntryDate`, `Status`) VALUES
(1, 'mlkmlk', 'sahuswadhin22@gmail.com', 2147483647, 'sfsdfsfs', NULL, '1'),
(2, 'mmmlk', 'sa@gmail.com', 2147483647, 'sfdsfsdfs', '2017-04-17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `faloric`
--

CREATE TABLE `faloric` (
  `FaloricId` tinyint(2) NOT NULL,
  `FaloricName` varchar(15) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faloric`
--

INSERT INTO `faloric` (`FaloricId`, `FaloricName`, `EntryDate`, `Status`) VALUES
(4, 'SILK', '2017-01-31 16:42:34', 1),
(5, 'NET', '2017-01-31 16:42:34', 1),
(6, 'COTTON', '2017-02-05 16:11:29', 1),
(7, 'SYNTHETIC', '2017-02-05 17:25:07', 1),
(8, 'CHIFFON', '2017-02-12 02:42:11', 1),
(9, 'CREPE', '2017-02-12 16:26:08', 1),
(10, 'CHANDERI', '2017-02-12 16:26:55', 1),
(11, 'NYLON', '2017-02-12 16:27:10', 1),
(12, 'SYNTHETIC', '2017-02-12 16:27:27', 1),
(13, 'ART SILK', '2017-02-18 15:58:19', 1),
(14, 'BHAGALPURI SILK', '2017-04-21 15:15:50', 1),
(16, 'Georgette', '2017-04-21 15:17:58', 0),
(17, 'KHADI', '2017-04-21 15:18:36', 0),
(18, 'POLY COTTON', '2017-04-21 15:18:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `ImgId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProdctImage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occasion`
--

CREATE TABLE `occasion` (
  `OccasionId` smallint(4) NOT NULL,
  `OccasionName` varchar(20) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occasion`
--

INSERT INTO `occasion` (`OccasionId`, `OccasionName`, `EntryDate`, `Status`) VALUES
(1, 'Party', '2017-02-14 05:07:23', 1),
(2, 'Night', '2017-02-14 05:08:41', 1),
(3, 'morning', '2017-02-14 05:08:41', 1),
(4, 'Wedding', '2017-02-14 05:37:16', 1),
(5, 'Casual', '2017-02-14 05:40:42', 1),
(6, 'Festival & Party', '2017-02-14 05:42:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `OfferId` int(11) NOT NULL,
  `OfferTitle` varchar(200) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  `BrandId` int(11) NOT NULL,
  `Discount` tinyint(2) NOT NULL,
  `Image` text NOT NULL,
  `StartDate` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`OfferId`, `OfferTitle`, `Description`, `CategoryId`, `BrandId`, `Discount`, `Image`, `StartDate`, `Status`) VALUES
(5, 'Flat 20% Offer', 'snkfnskfnskjdnfk', 1, 6, 20, 'sidhi-vinayaka-sarees.jpg', '2017-04-18', 1),
(7, 'Happy Summer Offers', '			Summer Sale', 2, 8, 50, 'hotsummer.png', '2017-04-18', 1),
(9, '50% off Sarees', '						dfdfdsfdsfs', 1, 11, 50, '4_home_1414513472.jpg', '2017-04-18', 1),
(10, 'fddff', '						sddfdf', 2, 10, 36, 'banner-about.jpg', '2017-04-18', 0),
(11, 'Happy Deal Summer Offers', 'sfsfsdf', 1, 13, 20, 'images.jpg', '2017-04-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `OrderNo` int(6) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `TotalAmount` double(6,0) NOT NULL,
  `PermanentAddress` varchar(150) NOT NULL,
  `ShippingAddress` varchar(150) NOT NULL,
  `StateId` tinyint(4) NOT NULL,
  `CityId` smallint(6) NOT NULL,
  `AreaId` int(11) NOT NULL,
  `ZipCode` int(6) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `MobNo` varchar(10) NOT NULL,
  `EntryDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DeliveryDate` date DEFAULT NULL,
  `Delivercharge` smallint(6) NOT NULL DEFAULT '0',
  `Status` enum('Ordered','Confirmed','Dispatched','Delivered','Paid','Cancled') NOT NULL DEFAULT 'Ordered',
  `PaymentMethod` enum('COD','NB','DC') DEFAULT 'COD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderId`, `OrderNo`, `UserId`, `Fname`, `Lname`, `TotalAmount`, `PermanentAddress`, `ShippingAddress`, `StateId`, `CityId`, `AreaId`, `ZipCode`, `EmailId`, `MobNo`, `EntryDate`, `DeliveryDate`, `Delivercharge`, `Status`, `PaymentMethod`) VALUES
(1, 1009, 12, 'vishal', 'rajput', 1200, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'vishal@gmail.com', '8401310845', '2017-04-25 00:32:09', NULL, 100, 'Cancled', 'COD'),
(2, 4382, 12, 'samir', 'patel', 1900, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'samir@gmail.coms', '6500170087', '2017-04-25 00:57:42', NULL, 100, 'Ordered', ''),
(3, 6499, 12, 'vishal', 'rajput', 15600, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'vishal@gmail.com', '7405686898', '2017-04-25 00:16:51', NULL, 0, 'Ordered', 'COD'),
(4, 8230, 12, 'samir', 'patel', 2284, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'samir@gmail.com', '6500170086', '2017-04-25 00:55:29', NULL, 100, 'Ordered', 'COD'),
(5, 5275, 12, 'samir', 'patel', 1450, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'samir@gmail.com', '6500170089', '2017-04-25 01:09:11', NULL, 100, 'Ordered', 'COD'),
(6, 7243, 12, 'swadhinn', 'sahu', 3600, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'sahu@gmail.com', '8401310845', '2017-04-25 01:24:27', NULL, 0, 'Ordered', 'COD'),
(7, 8519, 12, 'swadhinn', 'sahu', 4340, '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', '36,Panchasil Nagar, Bamroli Road, Housing,Pandesara.', 1, 5, 1, 395012, 'sahu@gmail.com', '8401310845', '2017-04-25 02:53:42', NULL, 0, 'Ordered', '');

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE `pattern` (
  `PatternId` smallint(5) NOT NULL,
  `PatternName` varchar(20) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattern`
--

INSERT INTO `pattern` (`PatternId`, `PatternName`, `EntryDate`, `Status`) VALUES
(1, 'Animal Print', '2017-02-12 16:15:48', 1),
(2, 'Plain', '2017-02-12 16:16:03', 1),
(3, 'Printed', '2017-02-13 06:45:52', 1),
(4, 'Ambroidered', '2017-02-18 17:58:44', 1),
(5, 'Graphic Print', '2017-02-18 17:59:14', 1),
(6, 'Woven', '2017-02-18 17:59:40', 1),
(7, 'Self Design', '2017-02-18 18:00:12', 1),
(8, 'Checked', '2017-03-29 23:30:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` int(11) NOT NULL,
  `ProductTitle` varchar(50) NOT NULL,
  `BrandId` smallint(4) NOT NULL,
  `CategoryId` smallint(4) NOT NULL,
  `OccasionId` smallint(3) DEFAULT NULL,
  `FaloricId` tinyint(3) NOT NULL,
  `ColorId` tinyint(2) NOT NULL,
  `PatternId` smallint(4) DEFAULT NULL,
  `Qty` tinyint(3) NOT NULL,
  `Price` int(6) NOT NULL DEFAULT '0',
  `Discount` tinyint(2) NOT NULL DEFAULT '0',
  `LongDesc` text NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  `ProductImage1` varchar(150) NOT NULL,
  `ProductImage2` text,
  `ProductImage3` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `ProductTitle`, `BrandId`, `CategoryId`, `OccasionId`, `FaloricId`, `ColorId`, `PatternId`, `Qty`, `Price`, `Discount`, `LongDesc`, `EntryDate`, `Status`, `ProductImage1`, `ProductImage2`, `ProductImage3`) VALUES
(17, 'Off White Embroidered Kurta Churidar Dupatta', 13, 2, 5, 6, 10, 4, 7, 6200, 30, 'The intricate and delicately done embroidery on the front will catch your fancy at a single glance. Featuring trendy beaded tassels on the dupatta, this suit set will lend you a look worth flaunting. Made from cotton blend, this suit set can be comfortably worn all day long.\r\n\r\n', '2017-03-11 18:31:54', 1, 'Ritu-Kumar-Off-White.jpg', '4_home_1414513472.jpg', ''),
(18, 'The Hem With Pants And Chiffon Dupatta', 6, 2, 3, 6, 10, 3, 10, 2299, 5, 'The intricate contrast coloured thread embroidery around the placket makes this off-white suit set from Sangria a true value for money. Designed using soft and durable cotton fabric, this suit set is a summer delight. It can be best worn with nude stilettos.\r\n\r\n    The short-sleeved kameez featuring stitch detailing on band collar, contrast solid button placket\r\n    Short sleeves with contrast coloured taping on cuffs\r\n    Contrast coloured floral print on hem\r\n', '2017-03-11 18:34:22', 1, 'Sangria-Short-Sleeves-Band.jpg', '', NULL),
(19, 'Indusdiva Maroon Printed Saree', 9, 1, 3, 13, 5, 8, 5, 3600, 50, 'Drape this beautiful saree featuring a classy print all over and look pretty like never before. This saree from the house of Inddus is quite comfortable to wear and easy to drape as well.\r\n Pair it with casual heels and earrings for a complete enchanting look.\r\n\r\n', '2017-03-11 18:36:25', 1, 'Inddus-Maroon-Printed-Saree-4671-2489472-1-pdp_slider_l.jpg', 'Inddus-Maroon-Printed-Saree-4671-2489472-2-pdp_slider_l.jpg', ''),
(20, 'mmsfsdfjsdkjfnk', 6, 1, 1, 8, 6, 5, 17, 1500, 10, 'sdfsfsd', '2017-03-11 18:39:55', 1, 'Shaily-Yellow-Printed.jpg', NULL, NULL),
(21, 'fsdfdsfsflskjl', 9, 1, 4, 9, 9, 6, 20, 5000, 30, 'sflksjfsdfsdjk', '2017-03-11 18:43:52', 1, 'NANDA-SILK-MILLS-Olive-Striped.jpg', NULL, NULL),
(22, 'klsjfksjdkf', 10, 2, 5, 10, 6, 7, 7, 15000, 10, 'fddsfkjkjkl', '2017-03-11 18:45:21', 1, 'Sangria-Block-Printed.jpg', NULL, NULL),
(23, 'Off White Solid Churidar Kameez Dupatta', 8, 2, 3, 10, 10, 2, 10, 2499, 50, 'Be the cynosure of all eyes by wearing suit set by Trishaa By Pantaloons. Crafted from chanderi fabric, it is light in weight and will be soft against your skin. This suit set has a soothing colour and will lend you a fresh look this season.\r\n\r\n', '2017-03-11 18:49:32', 1, 'Trishaa-By-.jpg', '', NULL),
(24, 'Cream Printed Chanderi Silk Churidar Kameez Dupatt', 9, 2, 5, 10, 5, 3, 5, 2995, 20, ' The Chanderi silk kurta has a mandarin collar and full sleeves that complete it with a touch of class. Comprising a kurta, a churidar and a dupatta, this suit set will look perfect with minimal jewellery and brown stilettos.', '2017-03-11 18:51:10', 1, 'F-Loop-Cream-Printed.jpg', 'Silk-Churidar.jpg', 'Printed-Chanderi-Silk.jpg'),
(25, 'Off White Embroidered Polyester Cotton Salwar Kame', 11, 2, 5, 6, 10, 4, 9, 4500, 20, 'Gear up for this festive season by wearing this off-white coloured suit set from BIBA that features intricate embroidery on the neckline. Made from polycotton, this suit set comprises three pieces namely kurta, churidar and dupatta. Style this suit set with heels and accessories. \r\n•    Polycotton\r\n•    Kurta: Embroidered neckline, mandarin neck, 3/4th sleeves, golden piping on the neckline, red and yellow stripes on the hem and sleeves. \r\n•    Bottom: Churidar bottoms with elasticated waist \r\n•    Dupatta: Dupatta with golden taping and pink border\r\n\r\n', '2017-03-11 18:52:49', 1, 'Biba-Off-White-Embroidered.jpg', '', NULL),
(26, 'dsdfjsdfjklk', 9, 1, 6, 10, 6, 6, 8, 1000, 30, 'nfksdnfksd?flksdklfsjlkf', '2017-03-11 19:36:58', 1, 'Swaron-Yellow-Checked-Saree.jpg', 'delivery_man.png', 'stock-vector-summer-sale-banner-special-offer-design-template-discount-sticker-vector-background-408316540.jpg'),
(27, 'Off blue Animal print  Salwar Suits', 17, 1, 5, 9, 8, 1, 10, 2300, 30, 'Flaunt a new ethnic look wearing this saree from Saree Swarg. Featuring a beautiful mix of prints, this saree is a must-have in your ethnic wear collection. Made from georgette, this saree is easy to drape. This trendy saree measures 5.5 m and comes with a 0.80 m blouse piece.\r\n\r\n', '2017-04-09 15:45:40', 1, 'Inddus-Turquoise-Embellished-Saree-5927-8873882-1-pdp_slider_l.jpg', 'Inddus-Turquoise-Embellished-Saree-5927-8873882-2-pdp_slider_l.jpg', 'Inddus-Turquoise-Embellished-Saree-5927-8873882-3-pdp_slider_l.jpg'),
(28, 'Ahana Fashion Embellished Saree', 13, 1, 3, 5, 7, 8, 12, 2200, 50, 'Embodying traditional elegance, this purple sarees  with a subtle print all over. Fashioned from cotton fabric, this set is designed to provide sheer comfort all day long. Complement this set with high heels.', '2017-04-12 05:07:21', 1, 'Indian-Women-By-Bahubali-Green-Embellished-Saree-0192-6967902-1-pdp_slider_l.jpg', 'Indian-Women-By-Bahubali-Green-Embellished-Saree-0193-6967902-2-pdp_slider_l.jpg', 'Indian-Women-By-Bahubali-Green-Embellished-Saree-0195-6967902-4-pdp_slider_l.jpg'),
(29, 'Vishal Pink Cotton Suits', 17, 2, 5, 6, 2, 2, 12, 3500, 40, 'Fashioned from cotton fabric, this set is designed to provide sheer comfort all day long. Complement this set with high heels. three quarter sleeves and a full button placket', '2017-04-19 14:51:32', 1, 'Biba-Fuchsia-Embroidered-Cotton-Salwar-Kameez-Dupatta-7948-171430003-2-pdp_slider_l.jpg', 'Biba-Fuchsia-Embroidered-Cotton-Salwar-Kameez-Dupatta-7948-171430003-4-pdp_slider_l.jpg', 'Biba-Fuchsia-Embroidered-Cotton-Salwar-Kameez-Dupatta-7948-171430003-3-pdp_slider_l.jpg'),
(30, 'Ahana Fashion white Solid Saree', 13, 1, 2, 11, 10, 6, 15, 2800, 50, 'Mandarin Collar 3/4Th Sleeves Off White Gold Printed Sa With Rayon Orange Tie Dye Palazzo And Dupatta', '2017-04-19 15:24:33', 1, 'Inddus-Beige-Printed-Saree-6150-9123392-1-pdp_slider_l.jpg', 'Inddus-Beige-Printed-Saree-6150-9123392-2-pdp_slider_l.jpg', 'Inddus-Beige-Printed-Saree-6150-9123392-3-pdp_slider_l.jpg'),
(31, 'Off White Embroidered Suit Set', 15, 2, 5, 6, 10, 4, 12, 3000, 20, 'Gorgeously mesmerising is what you will look at the next social function by wearing off white coloured suit set by Ritu Kumar. Made of premium quality cotton, this suit set is high on comfort. Club it with platform heels to look astonishingly charming.\r\n\r\n', '2017-04-21 15:11:48', 1, 'Ritu-Kumar-Off-White-Embroidered-Suit-Set-9417-4200572-1-pdp_slider_l.jpg', 'Ritu-Kumar-Off-White-Embroidered-Suit-Set-9417-4200572-2-pdp_slider_l.jpg', 'Ritu-Kumar-Off-White-Embroidered-Suit-Set-9417-4200572-3-pdp_slider_l.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `productoffer`
--

CREATE TABLE `productoffer` (
  `OfferId` int(11) NOT NULL,
  `BrandId` smallint(6) NOT NULL,
  `CategoryId` smallint(6) NOT NULL,
  `SubCategoryId` smallint(6) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Discount` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sliderimage`
--

CREATE TABLE `sliderimage` (
  `SliderId` int(11) NOT NULL,
  `SliderImage` char(200) NOT NULL,
  `SliderTitle` varchar(200) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderimage`
--

INSERT INTO `sliderimage` (`SliderId`, `SliderImage`, `SliderTitle`, `EntryDate`, `Status`) VALUES
(2, 'Chrysanthemum3.jpg', 'ssadasssssssssssss', '2017-01-31 10:49:21', 0),
(3, 'Desert3.jpg', 'dsfsfs', '2017-02-06 10:50:14', 0),
(4, 'Salwar_Kameez_Singapore_banner1.png', 'vvvvvs', '2017-02-06 10:50:36', 1),
(6, 'Meghdoot-sarees-new-year-banner-9DG.png', 'sds', '2017-02-06 11:04:40', 1),
(7, 'Silk-Sarees-Banner.jpg', 'Silk Sarees', '2017-02-14 14:10:16', 1),
(8, 'artsilk.jpg', 'Art Silk Sarees ', '2017-02-14 14:30:58', 1),
(9, 'Online-Saree-Sale-Banner2_1.jpg', 'k;ldsk;lds', '2017-04-09 05:22:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `StateId` tinyint(1) NOT NULL,
  `StateName` varchar(15) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateId`, `StateName`, `EntryDate`, `Status`) VALUES
(1, 'GUJRAT', '2017-02-12 09:37:57', 1),
(2, 'M.P', '2017-02-12 09:39:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `storecart`
--

CREATE TABLE `storecart` (
  `scartid` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `TotalAmount` mediumint(6) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('Ordered','Confirmed','Dispatched','Delivered','Cancled') NOT NULL DEFAULT 'Ordered'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storecart`
--

INSERT INTO `storecart` (`scartid`, `ProductId`, `UserId`, `OrderNo`, `Qty`, `TotalAmount`, `EntryDate`, `Status`) VALUES
(54, 28, 12, 8433, 1, 2200, '2017-04-24 17:47:05', 'Ordered'),
(55, 21, 12, 9237, 1, 5000, '2017-04-24 17:57:41', 'Ordered'),
(58, 25, 12, 4515, 1, 4500, '2017-04-24 18:59:46', 'Ordered'),
(59, 28, 12, 1009, 1, 2200, '2017-04-24 19:02:09', 'Ordered'),
(60, 29, 12, 7704, 1, 3500, '2017-04-24 19:06:47', 'Ordered'),
(61, 18, 12, 8230, 1, 2299, '2017-04-24 19:25:29', 'Ordered'),
(62, 19, 12, 4382, 1, 3600, '2017-04-24 19:27:42', 'Ordered'),
(63, 20, 12, 5275, 1, 1500, '2017-04-24 19:39:11', 'Ordered'),
(65, 17, 12, 8519, 1, 6200, '2017-04-24 21:23:42', 'Ordered');

-- --------------------------------------------------------

--
-- Table structure for table `userreview`
--

CREATE TABLE `userreview` (
  `ReviewId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ReviewDesc` varchar(150) NOT NULL,
  `Rating` int(11) NOT NULL,
  `EntryDate` date NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreview`
--

INSERT INTO `userreview` (`ReviewId`, `UserId`, `ProductId`, `ReviewDesc`, `Rating`, `EntryDate`, `Status`) VALUES
(1, 3, 17, '10', 2, '2017-04-11', 1),
(2, 6, 17, '2', 5, '2017-04-10', 1),
(3, 1, 27, 'This is the best product ,but have some problem.\r\n      As per my knowledge  may br  it is expensive..', 2, '2017-04-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserFirstName` varchar(20) NOT NULL,
  `UserLastName` varchar(20) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserFirstName`, `UserLastName`, `EmailId`, `Password`, `EntryDate`) VALUES
(2, 'dasdas', 'asdsa', 'ab5@gmail.com', '546546', '2017-02-15 11:41:02'),
(3, 'manoj', 'patel', 'manoj@gmail.com', 'patel@7405', '2017-02-18 06:29:38'),
(4, 'sfsdf', 'fsdfsdf', 'sahuswadhin22@gmail.', 'sfsd', '2017-03-12 09:57:53'),
(6, 'acsdc', 'sddsfs', 'sa@gmail.com', '456', '2017-03-12 10:02:14'),
(8, 'csdcsd', 'fsd', 'ab@ac.com', '555', '2017-03-12 10:06:22'),
(9, 'dsfsdfds', 'sdfs', 'Hasan@gmail.com', '535353', '2017-03-12 10:08:28'),
(10, 'Samir', 'patel', 'samir@patel', '456', '2017-03-31 06:27:05'),
(11, 'neeraj', 'rajput', 'neeraj@gmail.com', 'neeraj', '2017-04-07 04:30:13'),
(12, 'vishal', 'rajput', 'vishal@gmail.com', 'vishal', '2017-04-07 04:39:43'),
(13, 'sidhanta', 'sahu', 'sidhanta@gmail.com', 'sidhant', '2017-04-09 19:08:53'),
(14, '', '', '', '', '2017-04-12 04:25:41'),
(15, 'Ajay', 'Koli', 'ajay@gmail.com', '123', '2017-04-19 04:10:41'),
(16, 'Mehul', 'Sherdiwala', 'msherdiwala@gmail.co', '123456', '2019-09-24 13:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Qty` tinyint(2) NOT NULL,
  `EntryDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`Id`, `UserId`, `ProductId`, `Qty`, `EntryDate`) VALUES
(15, 12, 18, 1, '2017-04-20'),
(17, 12, 31, 1, '2017-04-23'),
(18, 12, 28, 1, '2017-04-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AreaId`),
  ADD KEY `CityId` (`CityId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartId`),
  ADD KEY `ProductId` (`ProductId`,`UserId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityId`),
  ADD KEY `StateId` (`StateId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`ColorId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faloric`
--
ALTER TABLE `faloric`
  ADD PRIMARY KEY (`FaloricId`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`ImgId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `occasion`
--
ALTER TABLE `occasion`
  ADD PRIMARY KEY (`OccasionId`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`OfferId`),
  ADD KEY `BrandId` (`BrandId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD UNIQUE KEY `OrderNo` (`OrderNo`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `StateId` (`StateId`),
  ADD KEY `CityId` (`CityId`),
  ADD KEY `AreaId` (`AreaId`);

--
-- Indexes for table `pattern`
--
ALTER TABLE `pattern`
  ADD PRIMARY KEY (`PatternId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `BrandId` (`BrandId`,`CategoryId`,`FaloricId`,`ColorId`),
  ADD KEY `BrandId_2` (`BrandId`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `FaloricId` (`FaloricId`),
  ADD KEY `ColorId` (`ColorId`),
  ADD KEY `PatternId` (`PatternId`),
  ADD KEY `OccasionId` (`OccasionId`),
  ADD KEY `OccasionId_2` (`OccasionId`);

--
-- Indexes for table `productoffer`
--
ALTER TABLE `productoffer`
  ADD KEY `OfferId` (`OfferId`,`BrandId`,`CategoryId`,`SubCategoryId`);

--
-- Indexes for table `sliderimage`
--
ALTER TABLE `sliderimage`
  ADD PRIMARY KEY (`SliderId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`StateId`);

--
-- Indexes for table `storecart`
--
ALTER TABLE `storecart`
  ADD PRIMARY KEY (`scartid`),
  ADD KEY `ProductId` (`ProductId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `Orderno` (`OrderNo`);

--
-- Indexes for table `userreview`
--
ALTER TABLE `userreview`
  ADD PRIMARY KEY (`ReviewId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `MobileNo` (`EmailId`),
  ADD UNIQUE KEY `EmailId` (`EmailId`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`,`ProductId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AreaId` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `BrandId` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CityId` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `ColorId` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faloric`
--
ALTER TABLE `faloric`
  MODIFY `FaloricId` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `ImgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occasion`
--
ALTER TABLE `occasion`
  MODIFY `OccasionId` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `OfferId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `PatternId` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sliderimage`
--
ALTER TABLE `sliderimage`
  MODIFY `SliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `StateId` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `storecart`
--
ALTER TABLE `storecart`
  MODIFY `scartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `userreview`
--
ALTER TABLE `userreview`
  MODIFY `ReviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `city` (`CityId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`StateId`) REFERENCES `state` (`StateId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`BrandId`) REFERENCES `brand` (`BrandId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`FaloricId`) REFERENCES `faloric` (`FaloricId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`ColorId`) REFERENCES `color` (`ColorId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_6` FOREIGN KEY (`PatternId`) REFERENCES `pattern` (`PatternId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `book`
--
CREATE DATABASE IF NOT EXISTS `book` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `book`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'mehul', '123'),
(2, 'mehul9583', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `book_mst`
--

CREATE TABLE `book_mst` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `auth_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_mst`
--

INSERT INTO `book_mst` (`book_id`, `book_name`, `auth_name`, `price`, `qty`) VALUES
(1, 'ASP ', 'Harshil', 150, 15),
(6, 'C language', 'Mann', 1500, 120),
(7, 'Data Structure', 'Mehul Sherdiwala', 16, 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custId`, `name`, `balance`) VALUES
(2, 'Harsh', 1548),
(4, 'new', 1548);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `rno` int(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `marks` int(30) DEFAULT NULL,
  `hobby` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`rno`, `name`, `marks`, `hobby`, `gender`) VALUES
(10, 'dsfsdgsd', 22, 'CRICKET', 'MALE'),
(1, '', 0, '', ''),
(100, 'Hello', 199, 'CRICKET', 'MALE'),
(1001, 'asd', 3252, 'CRICKET', 'MALE'),
(1001, 'asdas', 234, 'CRICKET', 'MALE'),
(101, 'Mehul', 600, 'CRICKET', 'MALE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_mst`
--
ALTER TABLE `book_mst`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_mst`
--
ALTER TABLE `book_mst`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `brs`
--
CREATE DATABASE IF NOT EXISTS `brs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `brs`;

-- --------------------------------------------------------

--
-- Table structure for table `architect`
--

CREATE TABLE `architect` (
  `arc_id` int(11) NOT NULL,
  `arc_code` varchar(20) NOT NULL,
  `company_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `tele_no` varchar(11) NOT NULL,
  `comp_add` text NOT NULL,
  `website` varchar(40) NOT NULL,
  `gst_no` varchar(25) NOT NULL,
  `pan_no` varchar(25) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(25) NOT NULL,
  `bank_id` varchar(25) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_detail`
--

CREATE TABLE `bank_detail` (
  `bank_id` int(20) NOT NULL,
  `ano` varchar(20) NOT NULL,
  `ac_name` text NOT NULL,
  `ifsc` varchar(25) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_add` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_detail`
--

INSERT INTO `bank_detail` (`bank_id`, `ano`, `ac_name`, `ifsc`, `bank_name`, `bank_add`) VALUES
(36, '2147483647', '', 'dfdc5v4', 'sdvsv', 'sdvcbuugv  yb  fchv'),
(37, '5445499', '', '5s4sd48vx8', 'fdcv', 'sdmvhsfdgg'),
(38, '2147483647', '', 'dfdc5v4', 'sdvsv', 'sdvcbuugv  yb  fchv'),
(39, '5445499', '', '5s4sd48vx8', 'fdcv', 'sdmvhsfdgg'),
(40, '2147483647', '', 'dfdc5v4', 'sdvsv', 'sdvcbuugv  yb  fchv'),
(41, '5445499', '', '5s4sd48vx8', 'fdcv', 'sdmvhsfdgg'),
(47, '9578549', '', 's4zd54', 'dxvhdh', 'sdzx5c4'),
(50, '2147483647', '', 's4zd54', 'gfarrgr', 'EAFDZXC'),
(64, '1234567898', 'Harsh', 'ICICI12456', 'ICICI', 'surat'),
(65, '1234567898', 'Harsh', 'SBIN12345', 'SBI', 'Surat'),
(66, '1234567898', 'Harsh', 'ICICI12456', 'ICICI', 'surat'),
(67, '123456789', 'Harsh', 'SBIN12345', 'SBI', 'Surat'),
(68, '1234567898', 'Mehul', 'ICICI12456', 'ICICI', 'surat'),
(69, '2147483647', 'Mehul', 's4zd54', 'gfarrgr', 'EAFDZXC'),
(74, '1211244155', '', 'sbiv22254', 'SBI', 'Surat'),
(77, '2147483647', 'Mehul', 's4zd54', 'gfarrgr', 'EAFDZXC'),
(78, '1234567898', 'Harsh', '1234567', 'ICICI', 'Surat'),
(80, '123456789123', 'LAXMI SNACKS PVT. LTD.', 'BKDN0003945', 'DENA BANK', 'STATION ROAD, NADIAD'),
(84, '1234567898', 'Mehul', 'ICICI124567', 'ICICI', 'Surat'),
(85, '1234567898', 'Harsh', '12345678975', 'SBI', 'dxcscvscv'),
(93, '1234567898', 'Mehul', 'ICICI124567', 'ICICI', 'Surat'),
(94, '1234567898', 'Mehul', 'ICICI12456', 'sd', 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `boq_annexure`
--

CREATE TABLE `boq_annexure` (
  `boq_an_id` int(11) NOT NULL,
  `an_no` int(11) NOT NULL,
  `an_name` varchar(100) NOT NULL,
  `boq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_annexure`
--

INSERT INTO `boq_annexure` (`boq_an_id`, `an_no`, `an_name`, `boq_id`) VALUES
(24, 1, 'A1', 0),
(25, 2, 'A2', 0),
(79, 1, '', 41),
(136, 1, 'A1', 5),
(137, 2, 'A2', 5),
(138, 1, 'A1', 6),
(139, 2, 'A2', 6),
(140, 1, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `boq_des`
--

CREATE TABLE `boq_des` (
  `boq_des_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `gst_rate` int(11) NOT NULL,
  `l_gst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_des`
--

INSERT INTO `boq_des` (`boq_des_id`, `title`, `sub_title`, `hsn_code`, `description`, `unit`, `gst_rate`, `l_gst`) VALUES
(1, 'test', 'sub test', 0, 'zfhcvh  hbxv ibdibizdfbf isc', 'sqmt', 36, 18),
(2, 'Test2', 'svsv', 0, 'sjsfcvjf jjfdvfjvj', 'sqmt', 24, 18),
(3, 'sdv', 'fvfd', 0, 'dfbxdgbdxb', 'sqmt', 18, 18),
(8, 'ABC New', 'Updated', 0, 'sdhbfgdx New', 'sqmt', 32, 18),
(9, 'ffsc', 'fdvcx', 0, 'erfdvc New', 'sqmt', 36, 18),
(10, 'zfvzdfb', 'fzdgb', 0, 'fgvfd', 'sqmt', 32, 18),
(11, 'Temp2', 'Temp2', 0, 'fcvfsxcv', 'reference', 22, 18),
(12, 'new Updated', 'new rfcx v', 0, 'khjfcvkh', 'sqmt', 24, 18),
(13, 'fsytg', 'ygy', 0, 'hgyg', 'sqmt', 18, 18),
(15, 't1', 't1', 0, 't1', 'fresh', 18, 18),
(16, 't2', 't2', 0, 't2', 'sqmt', 20, 18),
(21, 't5', 't5', 3214, 't5', 'sqmt', 28, 18),
(22, 'temp', 'fcxv', 0, 'fxcv x', 'fresh', 18, 18),
(23, 'Temp3', 'Temp3', 0, 'sdhbfgdx', 'sqmt', 32, 18),
(24, 'ABC ', 'New', 2154, 'sdhbfgdx', 'reference', 32, 18),
(29, 'New', 'gcg', 0, 'sdhbfgdxhgchc', 'reference', 32, 18),
(30, 'Temp4', 'Temp4', 0, 'sdhbfgdx', 'fresh', 32, 18),
(31, 'Temp5', 'Temp5', 0, 'sdhbfgdx', 'sqmt', 32, 18),
(34, 'ABC sdhvsgndc', 'New hjdsvc', 6241, 'sdhbfgdx', 'fresh', 32, 18),
(35, 'test new', 'test new', 0, 'test new', 'fresh', 28, 18),
(36, 'test 5', 'test 5', 0, 'test 5', 'sqmt', 28, 18),
(38, 'test new 2', 'test new 2', 0, 'test new 2 sdzbvjh b', 'fresh', 28, 18),
(39, 'ABC dsa', 'New Updated', 0, 'Mehul', 'reference', 32, 18),
(40, 'New', 'New', 1234, 'New', 'reference', 28, 18),
(41, 'New2', 'New2', 2001, 'bchdvhg', 'sqmt', 28, 18);

-- --------------------------------------------------------

--
-- Table structure for table `boq_des_add_data`
--

CREATE TABLE `boq_des_add_data` (
  `boq_des_add_data_id` int(11) NOT NULL,
  `add_description` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `base_rate` float NOT NULL,
  `profit` float NOT NULL,
  `other_charges` float NOT NULL,
  `base_inst_rate` float NOT NULL,
  `profit_inst` float NOT NULL,
  `boq_des_add_data_des_id` int(11) NOT NULL,
  `boq_sec_id` int(11) NOT NULL,
  `boq_an_id` int(11) NOT NULL,
  `boq_des_id` int(11) NOT NULL,
  `boq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_des_add_data`
--

INSERT INTO `boq_des_add_data` (`boq_des_add_data_id`, `add_description`, `quantity`, `base_rate`, `profit`, `other_charges`, `base_inst_rate`, `profit_inst`, `boq_des_add_data_des_id`, `boq_sec_id`, `boq_an_id`, `boq_des_id`, `boq_id`) VALUES
(245, '1', 1, 100, 10, 0, 300, 0, 87, 142, 136, 40, 5),
(246, '2', 3, 111, 10, 0, 100, 20, 87, 142, 136, 40, 5),
(247, '3', 10, 200, 10, 0, 130, 0, 87, 142, 136, 40, 5),
(248, '1', 1, 100, 10, 100, 100, 10, 88, 144, 138, 34, 6),
(249, '2', 2, 200, 10, 100, 100, 0, 88, 144, 138, 34, 6),
(250, '3', 10, 400, 20, 300, 10, 0, 88, 144, 138, 34, 6),
(251, '1', 1, 100, 10, 0, 300, 0, 89, 145, 138, 40, 6),
(252, '2', 3, 111, 10, 0, 100, 20, 89, 145, 138, 40, 6),
(253, '3', 10, 200, 10, 0, 130, 0, 89, 145, 138, 40, 6);

-- --------------------------------------------------------

--
-- Table structure for table `boq_des_add_data_des`
--

CREATE TABLE `boq_des_add_data_des` (
  `boq_des_add_data_des_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_description` varchar(200) NOT NULL,
  `boq_an_id` int(11) NOT NULL,
  `boq_sec_id` int(11) NOT NULL,
  `boq_des_id` int(11) NOT NULL,
  `boq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_des_add_data_des`
--

INSERT INTO `boq_des_add_data_des` (`boq_des_add_data_des_id`, `srno`, `add_description`, `boq_an_id`, `boq_sec_id`, `boq_des_id`, `boq_id`) VALUES
(87, 3, 'New', 136, 142, 40, 5),
(88, 5, 'sdhbfgdx', 138, 144, 34, 6),
(89, 3, 'New', 138, 145, 24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `boq_des_data`
--

CREATE TABLE `boq_des_data` (
  `boq_des_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_description` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `base_rate` float NOT NULL,
  `profit` float NOT NULL,
  `other_charges` float NOT NULL,
  `base_inst_rate` float NOT NULL,
  `profit_inst` float NOT NULL,
  `boq_sec_id` int(11) NOT NULL,
  `boq_an_id` int(11) NOT NULL,
  `boq_des_id` int(11) NOT NULL,
  `boq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_des_data`
--

INSERT INTO `boq_des_data` (`boq_des_data_id`, `srno`, `add_description`, `quantity`, `base_rate`, `profit`, `other_charges`, `base_inst_rate`, `profit_inst`, `boq_sec_id`, `boq_an_id`, `boq_des_id`, `boq_id`) VALUES
(222, 1, 'test new 2 sdzbvjh b', 1, 100, 10, 0, 100, 10, 141, 136, 38, 5),
(223, 2, 'sdhbfgdx', 1, 100, 10, 200, 200, 0, 141, 136, 31, 5),
(224, 3, 't5', 2, 300, 10, 300, 210, 0, 141, 136, 21, 5),
(225, 4, 'New', 1, 244, 10, 200, 300, 2, 141, 136, 40, 5),
(226, 1, 'sdhbfgdx New', 3, 200, 10, 0, 100, 2, 142, 136, 8, 5),
(227, 2, 'sdhbfgdx', 2, 300, 10, 0, 200, 0, 142, 136, 24, 5),
(228, 1, 't5', 1, 100, 10, 0, 100, 0, 143, 137, 21, 5),
(229, 2, 'sdhbfgdx', 10, 100, 10, 0, 200, 0, 143, 137, 34, 5),
(230, 3, 'sdhbfgdx', 1, 200, 10, 0, 300, 0, 143, 137, 34, 5),
(231, 4, 'sdhbfgdx', 5, 300, 10, 0, 100, 0, 143, 137, 30, 5),
(232, 1, 'test new 2 sdzbvjh b', 1, 100, 10, 0, 100, 10, 144, 138, 38, 6),
(233, 2, 'sdhbfgdx', 1, 100, 10, 200, 200, 0, 144, 138, 31, 6),
(234, 3, 't5', 2, 300, 10, 300, 210, 0, 144, 138, 21, 6),
(235, 4, 'New', 1, 244, 10, 200, 300, 2, 144, 138, 40, 6),
(236, 1, 'sdhbfgdx New', 3, 200, 10, 0, 100, 2, 145, 138, 8, 6),
(237, 2, 'sdhbfgdx', 2, 300, 10, 0, 200, 0, 145, 138, 24, 6),
(238, 1, 't5', 1, 100, 10, 0, 100, 0, 146, 139, 21, 6),
(239, 2, 'sdhbfgdx', 10, 100, 10, 0, 200, 0, 146, 139, 34, 6),
(240, 3, 'sdhbfgdx', 1, 200, 10, 0, 300, 0, 146, 139, 34, 6),
(241, 4, 'sdhbfgdx', 5, 300, 10, 0, 100, 0, 146, 139, 30, 6);

-- --------------------------------------------------------

--
-- Table structure for table `boq_mst`
--

CREATE TABLE `boq_mst` (
  `boq_id` int(11) NOT NULL,
  `boq_code` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `boq_status` varchar(20) NOT NULL,
  `boq_name` varchar(50) NOT NULL,
  `boq_remark` varchar(100) NOT NULL,
  `client_type` varchar(20) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `sit_name` varchar(100) NOT NULL,
  `site_location` varchar(50) NOT NULL,
  `client_contact_no` varchar(13) NOT NULL,
  `ref_client_name` varchar(50) NOT NULL,
  `ref_client_contact_no` varchar(13) NOT NULL,
  `ref_client_contact_person` varchar(40) NOT NULL,
  `billing_address` varchar(150) NOT NULL,
  `site_address` varchar(150) NOT NULL,
  `ref_client_address` varchar(150) NOT NULL,
  `order_status` varchar(25) NOT NULL,
  `ex_verbal_loi_po_date` datetime NOT NULL,
  `re_verbal_loi_po_date` datetime NOT NULL,
  `ex_loi_po_date` datetime NOT NULL,
  `re_loi_po_date` datetime NOT NULL,
  `ex_work_order_date` datetime NOT NULL,
  `re_work_order_date` datetime NOT NULL,
  `work_start_date` datetime NOT NULL,
  `work_end_date` datetime NOT NULL,
  `due_day` datetime NOT NULL,
  `targeted_date` datetime NOT NULL,
  `files` text NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_mst`
--

INSERT INTO `boq_mst` (`boq_id`, `boq_code`, `created_date`, `boq_status`, `boq_name`, `boq_remark`, `client_type`, `client_name`, `sit_name`, `site_location`, `client_contact_no`, `ref_client_name`, `ref_client_contact_no`, `ref_client_contact_person`, `billing_address`, `site_address`, `ref_client_address`, `order_status`, `ex_verbal_loi_po_date`, `re_verbal_loi_po_date`, `ex_loi_po_date`, `re_loi_po_date`, `ex_work_order_date`, `re_work_order_date`, `work_start_date`, `work_end_date`, `due_day`, `targeted_date`, `files`, `terms`) VALUES
(2, 'BRS-BOQ002-2018-19', '2018-10-25 09:23:05', 'Revised Submitted', 'Testing Updated', 'Testing', 'reference', 'Mehul Updated', 'Raf', 'Surat', '94272895286', 'Mann', '64545864', 'skejdfgbk', '         etdhedh', 'drfgbdxfcvsxfcv', 'drfgxh', 'Bided', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'mehul|mehul|niufghc|Updated'),
(5, 'BRS-BOQ003-2018-19', '2018-11-22 15:10:55', 'Pending to Submit', 'Testing', 'Testing', 'existing', 'Mehul', 'Raf', 'Surat', '94272895286', '', '', '', 'ADAgxbvg', 'fxgvbxd', '', 'Bided', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9864_10. 6474-EL-UOE-0001_R3.dwg|2789_1. 6474-EL-UFA-0001 _R2.dwg', 'test|test'),
(6, 'BRS-BOQ004-2018-19', '2018-11-24 08:28:51', 'Pending to Submit', 'Testing', 'khk kbikh', 'fresh', 'dc', 'n jh', 'jhbhjb', 'bjhbj', '', '', '', 'h j ', 'bjhj', '', 'Bided', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'test|test|test2|test3'),
(7, 'BRS-BOQ005-2018-19', '2018-11-24 18:14:59', 'Pending to Submit', '', '', 'existing', '', '', '', '', '', '', '', 'dear sir,\r\n                I am Mehul sherdiwala', '', '', 'Bided', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `boq_section`
--

CREATE TABLE `boq_section` (
  `boq_sec_id` int(11) NOT NULL,
  `sec_no` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `section_description` varchar(100) NOT NULL,
  `boq_an_id` int(11) NOT NULL,
  `boq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boq_section`
--

INSERT INTO `boq_section` (`boq_sec_id`, `sec_no`, `section_name`, `section_description`, `boq_an_id`, `boq_id`) VALUES
(9, 1, 'sec1', 'des2', 24, 0),
(10, 2, 'sec2', 'des2', 24, 0),
(11, 1, 'sec1', 'des1', 25, 0),
(71, 1, '', '', 79, 41),
(141, 1, 'sec1', 'des1', 136, 5),
(142, 2, 'sec2', 'des2', 136, 5),
(143, 1, 'sec1', 'des1', 137, 5),
(144, 1, 'sec1', 'des1', 138, 6),
(145, 2, 'sec2', 'des2', 138, 6),
(146, 1, 'sec1', 'des1', 139, 6),
(147, 1, '', '', 140, 7);

-- --------------------------------------------------------

--
-- Table structure for table `client_mst`
--

CREATE TABLE `client_mst` (
  `client_id` int(11) NOT NULL,
  `client_code` varchar(20) NOT NULL,
  `client_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `reg_add` text NOT NULL,
  `billing_add` text NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state_code` int(11) NOT NULL,
  `tele_no` varchar(13) NOT NULL,
  `phone1` varchar(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `type_company` int(2) NOT NULL,
  `ref_by_company` text NOT NULL,
  `ref_person_name` varchar(40) NOT NULL,
  `ref_person_contact_no` varchar(11) NOT NULL,
  `pf_code_no` varchar(30) NOT NULL,
  `esic_code_no` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `reason` text NOT NULL,
  `cpurd_name` varchar(50) NOT NULL,
  `cpurd_mobile_no` varchar(11) NOT NULL,
  `cpurd_email_id` varchar(50) NOT NULL,
  `cad_name` varchar(50) NOT NULL,
  `cad_mobile_no` varchar(11) NOT NULL,
  `cad_email_id` varchar(50) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(30) NOT NULL,
  `bank_id` varchar(30) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL,
  `gst_id` varchar(30) NOT NULL,
  `remark` varchar(30) NOT NULL,
  `attachment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_mst`
--

INSERT INTO `client_mst` (`client_id`, `client_code`, `client_name`, `category_company`, `reg_add`, `billing_add`, `city`, `state`, `country`, `state_code`, `tele_no`, `phone1`, `pincode`, `type_company`, `ref_by_company`, `ref_person_name`, `ref_person_contact_no`, `pf_code_no`, `esic_code_no`, `website`, `email_id`, `status`, `reason`, `cpurd_name`, `cpurd_mobile_no`, `cpurd_email_id`, `cad_name`, `cad_mobile_no`, `cad_email_id`, `company_person`, `other_person`, `bank_id`, `bank_contact_person_name`, `bank_contact_person_contact_no`, `gst_id`, `remark`, `attachment`) VALUES
(1, 'BRS-C0001', 'BALAJI WAFERS PRIVATE LIMTED updated', 4, 'qeaedzxfvsfxcv', 'qeaedzxfvsfxcv', 'surat', 'Gujarat', 'India', 24, '5641', '24568', 48656, 3, 'dxcsvc', 'svd', '24', 'c5v51', 'f4cv', 'www.xyz.com', 'wsdvsv', 'Active', '', 'sadv', '123', 'sdfc', 'asdf', '13', 'aef', 4, '29', '69', 'sdfv', '15751', '35', '', ''),
(2, 'BRS-C0002', 'Mehul', 3, 'Surat', 'Surat', 'Surat', 'Gujarat', 'India', 24, '2277223', '1234567899', 395001, 1, '', '', '0', 'asd123', 'as123', 'www.example.com', 'example@gmail.com', 'Active', '', 'Test2', '123456789', 'example@gmail.com', 'Test3', '1234567889', 'example@gmail.com', 5, '32,33', '74', 'Test1', '12345678', '38', 'Khatodra', '5851_25.jpeg|6078_14.jpeg'),
(3, 'BRS-C0003', 'Harsh', 5, 'Surat', 'Surat', 'Surat', 'Gujarat', 'India', 24, '9427289', '1234567895', 395002, 1, '', '', '0', '', '', '', '', 'De-Active', 'reason', 'Zena', '2147483647', 'Info@gmail.com', 'Krish', '2147483647', '', 7, '', '', '', '', '39', '', ''),
(5, 'BRS-C0005', 'BALAJI WAFERS PRIVATE LIMTED ', 4, 'Surat', 'Surat', 'surat', 'Gujarat', 'India', 23, '', '24568', 48656, 3, 'dxcsvc', 'svd', '23', 'c5v51', 'f4cv', 'www.xyz.com', 'wsdvsv', 'Active', '', 'sadv', '123', 'sdfc', 'asdf', '13', 'aef', 9, '35', '77,78', 'sdfv', '15751', '41', 'udhana', ''),
(6, 'BRS-C0006', 'Raj Sherdiwala', 3, 'surat', 'surat', 'Surat', 'Gujarat', 'India', 24, '9427289583', '9427289583', 395002, 3, '/*!-S$%%#@!', 'mehu@222', '123456', '', '', '', '', 'Active', '', '', '', '', '', '', '', 10, '', '94', '', '', '42', '', ''),
(7, 'BRS-C0007', 'LAXMI SNACKS PVT. LTD.', 3, 'PIJ CHOKDI, NH-8, VILLAGE: TUNDEL, NADIAD', 'PIJ CHOKDI, NH-8, VILLAGE: TUNDEL, NADIAD', 'NADIAD', 'GUJARAT', 'INDIA', 24, '0261-2483597', '9825326126', 387230, 1, '', '', '', '', '', 'www.lspl.com', 'maintenance@realnamkeen.com', 'Active', '', 'HIRAL SHAH', '9173377883', 'purchase@realnamkeen.com', 'AKHIL GHOR', '9876543210', 'akhil@realnamkeen.com', 11, '', '80', 'AKHIL GHOR', '9876543210', '43', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_person_detail`
--

CREATE TABLE `company_person_detail` (
  `cpd_id` int(11) NOT NULL,
  `cpd_name` varchar(50) NOT NULL,
  `cpd_mobile_no` varchar(11) NOT NULL,
  `cpd_email_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_person_detail`
--

INSERT INTO `company_person_detail` (`cpd_id`, `cpd_name`, `cpd_mobile_no`, `cpd_email_id`) VALUES
(3, 'scv', '9421', 'zvzdvc2sdcv'),
(4, 'sdfv', '15751', 'adx4fc'),
(5, 'Test1', '12345678', 'example@gmail.com'),
(6, '12', '12', '12'),
(7, '', '1234567898', ''),
(9, 'sdfv', '15751', 'adx4fc'),
(10, '', '0', ''),
(11, 'AKHIL GHOR', '7211166777', 'md@realnamkeen.com'),
(12, 'Harsh', '9898697705', 'example@gmail.com'),
(13, 'Harsh', '9898697705', 'example@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL,
  `complain_code` varchar(20) NOT NULL,
  `client_name` text NOT NULL,
  `problem` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(70) NOT NULL,
  `date` datetime NOT NULL,
  `comp_status` varchar(10) NOT NULL,
  `allocated_date` datetime NOT NULL,
  `solution` varchar(70) NOT NULL,
  `complete_date` datetime NOT NULL,
  `report_no` varchar(13) NOT NULL,
  `report_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complain_id`, `complain_code`, `client_name`, `problem`, `phone`, `address`, `date`, `comp_status`, `allocated_date`, `solution`, `complete_date`, `report_no`, `report_date`) VALUES
(68, 'BRS-COMP001-2018-19', 'Mehul', 'Testing', '1234567891', 'Surat', '2019-03-31 17:24:32', 'Completed', '2019-04-01 16:58:58', 's1|s2', '2019-04-01 20:00:10', 'r1|r2', '2019-04-01|2019-01-01'),
(69, 'BRS-COMP0001-2019-20', 'BALAJI WAFERS PRIVATE LIMTED updated', 'Testing', '1234567899', 'Katargam', '2019-04-01 17:30:06', 'Allocated', '2019-04-03 22:38:09', '', '2019-04-01 22:24:09', '', ''),
(70, 'BRS-COMP0002-2019-20', 'Mehul New', 'sdvcj nbvzi ', '1234567898', 'Surat', '2019-04-01 22:44:02', 'Allocated', '2019-04-02 18:58:22', '', '0000-00-00 00:00:00', '', ''),
(71, 'BRS-COMP0003-2019-20', 'BALAJI WAFERS PRIVATE LIMTED updated', 'Testing', '9427289500', 'khatodara, surat', '2019-04-04 16:38:21', 'Allocated', '2019-04-04 22:29:55', '', '0000-00-00 00:00:00', '', ''),
(72, 'BRS-COMP0004-2019-20', 'Mehul', 'Testing', '9427289583', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', '2019-07-03 17:52:18', 'Pending', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', ''),
(73, 'BRS-COMP0005-2019-20', 'Raj Sherdiwala', 'TEST', '8905769129', 'surat', '2019-07-03 18:03:11', 'Pending', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', ''),
(74, 'BRS-COMP0006-2019-20', 'BALAJI WAFERS PRIVATE LIMTED ', 'Testing', '9427289583', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', '2019-08-17 15:07:25', 'Pending', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comp_allocate`
--

CREATE TABLE `comp_allocate` (
  `al_id` int(11) NOT NULL,
  `emp_id` varchar(20) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `allocation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_allocate`
--

INSERT INTO `comp_allocate` (`al_id`, `emp_id`, `complain_id`, `allocation_date`) VALUES
(1, '5', 45, '2018-07-08 10:32:16'),
(3, '3', 45, '2018-07-08 10:32:59'),
(5, '6', 45, '2018-07-08 10:34:18'),
(7, '6', 45, '2018-07-08 10:35:26'),
(8, '5', 49, '2018-07-08 11:09:25'),
(9, '2', 47, '2018-07-08 13:05:18'),
(11, '6', 48, '2018-07-08 13:28:07'),
(12, '5', 51, '2018-07-09 15:20:56'),
(21, '5', 53, '2018-11-06 22:22:14'),
(52, '4,9', 55, '2018-11-07 19:06:01'),
(55, '2,5', 62, '2018-11-09 12:11:42'),
(57, '1,2', 68, '2019-04-01 16:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `comp_subvisitor`
--

CREATE TABLE `comp_subvisitor` (
  `vid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `visitor_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_subvisitor`
--

INSERT INTO `comp_subvisitor` (`vid`, `user_id`, `complain_id`, `visitor_status`) VALUES
(11, 5, 62, 0),
(12, 5, 63, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comp_visitor`
--

CREATE TABLE `comp_visitor` (
  `vid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `visitor_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_visitor`
--

INSERT INTO `comp_visitor` (`vid`, `user_id`, `complain_id`, `visitor_status`) VALUES
(85, 4, 51, 1),
(87, 4, 52, 1),
(95, 4, 56, 1),
(99, 4, 58, 1),
(107, 4, 61, 1),
(109, 4, 62, 1),
(111, 4, 63, 1),
(113, 4, 64, 1),
(115, 4, 65, 1),
(117, 4, 66, 1),
(118, 1, 67, 1),
(119, 4, 67, 1),
(120, 1, 68, 1),
(121, 4, 68, 1),
(123, 4, 69, 1),
(124, 1, 70, 1),
(125, 4, 70, 1),
(126, 1, 71, 1),
(127, 4, 71, 1),
(129, 4, 72, 1),
(131, 4, 73, 1),
(133, 4, 74, 0);

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `const_id` int(11) NOT NULL,
  `const_code` varchar(20) NOT NULL,
  `company_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `tele_no` varchar(11) NOT NULL,
  `comp_add` text NOT NULL,
  `website` varchar(40) NOT NULL,
  `gst_no` varchar(25) NOT NULL,
  `pan_no` varchar(25) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(25) NOT NULL,
  `bank_id` varchar(25) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `cont_id` int(11) NOT NULL,
  `cont_code` varchar(20) NOT NULL,
  `cont_type` int(2) NOT NULL,
  `other_type` varchar(40) NOT NULL,
  `company_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `tele_no` varchar(11) NOT NULL,
  `reg_add` text NOT NULL,
  `billing_add` text NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `type_company` int(2) NOT NULL,
  `ref_by_company` text NOT NULL,
  `ref_person_name` varchar(40) NOT NULL,
  `ref_person_contact_no` varchar(11) NOT NULL,
  `gst_no` varchar(25) NOT NULL,
  `pan_no` varchar(25) NOT NULL,
  `pf_code_no` varchar(30) NOT NULL,
  `esic_code_no` varchar(30) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(30) NOT NULL,
  `bank_id` varchar(30) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL,
  `emp_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`cont_id`, `cont_code`, `cont_type`, `other_type`, `company_name`, `category_company`, `tele_no`, `reg_add`, `billing_add`, `city`, `state`, `country`, `pincode`, `type_company`, `ref_by_company`, `ref_person_name`, `ref_person_contact_no`, `gst_no`, `pan_no`, `pf_code_no`, `esic_code_no`, `company_person`, `other_person`, `bank_id`, `bank_contact_person_name`, `bank_contact_person_contact_no`, `emp_id`) VALUES
(2, 'BRS-CON  T001', 1, 'other', 'MS Pvt Ltd', 3, '2147483647', ' surat', ' surat', 'Surat', 'Gujarat', 'India', 395002, 3, '12', '12', '12', '12', '12', '2', '12', 6, '27,28', '64,65', '12', '12', '23');

-- --------------------------------------------------------

--
-- Table structure for table `cont_emp`
--

CREATE TABLE `cont_emp` (
  `cont_emp_id` int(11) NOT NULL,
  `emp_name` varchar(40) NOT NULL,
  `emp_designation` varchar(30) NOT NULL,
  `emp_mobile_no` varchar(11) NOT NULL,
  `emp_add` text NOT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_id_card` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cont_emp`
--

INSERT INTO `cont_emp` (`cont_emp_id`, `emp_name`, `emp_designation`, `emp_mobile_no`, `emp_add`, `emp_age`, `emp_id_card`) VALUES
(5, 'rsdfcgv', 'rsfcgv', '544', 'dsfxzvjcb', 0, ''),
(6, 'sdfx', 'sdxzf', '5621', 'scvx5d1v', 0, ''),
(7, 'dsf', 'ss', '21', 'asxc', 0, ''),
(21, 'rsdfcgv', 'rsfcgv', '544', 'dsfxzvjcb', 35, '1607_4.txt|3164_3S49CKZVLK12345.txt'),
(22, 'sdfx', 'sdxzf', '5621', 'scvx5d1v', 22, '9053_1.txt|7762_1.txt'),
(23, 'mm', 'kk', '1232465', 'sdxc', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `dash_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` int(2) NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`dash_id`, `user_id`, `user_type`, `links`) VALUES
(1, 1, 1, '15,1,8,9,3,14');

-- --------------------------------------------------------

--
-- Table structure for table `dc_add_data`
--

CREATE TABLE `dc_add_data` (
  `dc_a_d_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_discription` text NOT NULL,
  `qua` int(11) NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `dc_dis_id` int(11) NOT NULL,
  `dc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_add_data`
--

INSERT INTO `dc_add_data` (`dc_a_d_id`, `srno`, `add_discription`, `qua`, `unit`, `unit_price`, `dc_dis_id`, `dc_id`) VALUES
(61, 3, 'ms pipe', 111, 4, 1500, 28, 18),
(62, 4, 'xyz', 20, 4, 2000, 28, 18);

-- --------------------------------------------------------

--
-- Table structure for table `dc_data`
--

CREATE TABLE `dc_data` (
  `dc_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `add_pdt_name` text NOT NULL,
  `qua` varchar(30) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `unit_price` varchar(12) NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `dc_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_data`
--

INSERT INTO `dc_data` (`dc_data_id`, `srno`, `dis_val_type`, `pdt_add_dis`, `add_pdt_name`, `qua`, `unit`, `unit_price`, `gst_rate2`, `dc_id`, `pdt_id`) VALUES
(45, 1, '', '', 'Hitachi', '100', '1', '1000', 0, 18, 3),
(46, 2, '', '', 'Multi V_CST_Mechanical Part', '1000', '1', '1000', 0, 18, 4),
(50, 1, '0', 'Make : MM12LL44', 'Acoustic', '100', '2', '3000', 0, 19, 20),
(51, 2, '1', 'MK1102,,', 'Multi V_CST_Mechanical Part', '130', '2', '200', 0, 19, 4),
(52, 3, '1', 'ESCD522,DDD55,SSS66', 'new', '10', '2', '1155', 0, 19, 24),
(53, 4, '', '', 'Multi V_CST_Mechanical Part', '1000', '2', '10000', 0, 19, 4),
(54, 1, '0', 'Make : MM12LL44', 'Acoustic', '100', '2', '3000', 0, 20, 20),
(55, 2, '1', 'MK1102,,', 'Multi V_CST_Mechanical Part', '130', '2', '200', 0, 20, 4),
(56, 3, '1', 'ESCD522,DDD55,SSS66', 'new', '10', '2', '1155', 0, 20, 24),
(57, 4, '', '', 'Multi V_CST_Mechanical Part', '1000', '2', '10000', 0, 20, 4),
(61, 1, '0', 'Make : MM12LL44', 'Acoustic', '100', '2', '3000', 36, 21, 20),
(62, 2, '1', 'MK1102,,', 'Multi V_CST_Mechanical Part', '130', '2', '200', 18, 21, 4),
(63, 3, '1', 'ESCD522,DDD55,SSS66', 'XPLE plan', '60', '2', '2000', 24, 21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `dc_dis`
--

CREATE TABLE `dc_dis` (
  `dc_dis_id` int(11) NOT NULL,
  `discription` text NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dc_dis`
--

INSERT INTO `dc_dis` (`dc_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `gst_rate2`, `pdt_id`) VALUES
(14, 'MS ', '', '', 0, 5),
(15, 'XPLE plan', '', '', 0, 21),
(19, 'Acoustic', '1', '1,20,0305', 0, 20),
(25, 'Acoustic', '1', '1,20,0305', 0, 20),
(26, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(28, 'pipes', '', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_challan`
--

CREATE TABLE `delivery_challan` (
  `dc_id` int(11) NOT NULL,
  `dc_code` varchar(17) NOT NULL,
  `con_add` text NOT NULL,
  `cp_no` varchar(11) NOT NULL,
  `cp_name` varchar(40) NOT NULL,
  `con_city` varchar(30) NOT NULL,
  `con_pincode` int(11) NOT NULL,
  `con_state` varchar(30) NOT NULL,
  `po_no` varchar(20) NOT NULL,
  `po_date` datetime NOT NULL,
  `dc_date` datetime NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `carrier_name` varchar(30) NOT NULL,
  `lr_no` varchar(20) NOT NULL,
  `lr_date` datetime NOT NULL,
  `ewaybill` varchar(30) NOT NULL,
  `ewaybill_date` datetime NOT NULL,
  `final_amount` float NOT NULL,
  `discount` float NOT NULL,
  `pf` float NOT NULL,
  `freight` float NOT NULL,
  `other_charges` float NOT NULL,
  `cancel` int(2) NOT NULL,
  `client_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_challan`
--

INSERT INTO `delivery_challan` (`dc_id`, `dc_code`, `con_add`, `cp_no`, `cp_name`, `con_city`, `con_pincode`, `con_state`, `po_no`, `po_date`, `dc_date`, `vehicle_no`, `carrier_name`, `lr_no`, `lr_date`, `ewaybill`, `ewaybill_date`, `final_amount`, `discount`, `pf`, `freight`, `other_charges`, `cancel`, `client_id`, `quo_id`) VALUES
(10, 'BRS-DC004-2018-19', 'Surat', '', '', 'Surat', 395001, '', '', '2019-03-12 23:03:14', '2019-03-12 23:03:14', 'GJ-05-AB-1234', 'testing', 'dx gv', '2019-03-11 23:03:14', 'szmcnv j', '2019-03-10 23:03:14', 0, 0, 0, 0, 0, 1, 2, 30),
(11, 'BRS-DC005-2018-19', 'qeaedzxfvsfxcv', '1234568792', 'ABC', 'Rajkot', 395871, 'Gujarat new', 'ANC123 updated', '2019-03-01 21:05:40', '2019-03-13 21:05:40', 'GJ-05-AB-1234', 'testing', 'dx gv', '2019-03-13 21:05:40', 'szmcnv j', '2019-03-13 21:05:40', 0, 0, 0, 0, 0, 0, 1, 30),
(17, 'BRS-DC001-2019-20', 'Surat', '', '', 'Surat', 395002, 'Gujarat', '', '2019-04-07 13:34:50', '2019-04-07 13:34:50', 'GJ-05-AB-1234', 'testing', 'dx gv', '2019-03-13 13:34:50', 'szmcnv j', '2019-03-13 13:34:50', 0, 0, 0, 0, 0, 0, 3, 0),
(18, 'BRS-DC002-2019-20', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', '09427289583', 'Krish', 'Surat', 395002, 'Gujarat', '', '2019-06-23 17:06:55', '2019-06-23 17:06:55', 'GJ-05-AB-123', 'cnjhdxc', 'xc', '2019-06-16 17:06:55', 'daxc', '2019-06-16 17:06:55', 1684840, 0, 0, 0, 0, 0, 2, 0),
(19, 'BRS-DC003-2019-20', 'qeaedzxfvsfxcv', '09427289583', 'Krish', 'surat', 48656, 'Gujarat', '', '2019-06-23 17:40:30', '2019-06-23 17:40:30', 'GJ-05-AB-123', 'cnjhdxc', 'xc', '2019-06-17 17:40:30', 'daxc', '2019-06-10 17:40:30', 13232500, 0, 0, 0, 0, 0, 1, 31),
(20, 'BRS-DC004-2019-20', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', '09427289583', 'sdfv', 'Surat', 395002, 'Gujarat', '', '2019-06-23 17:41:11', '2019-06-23 17:41:11', 'GJ-05-AB-123', 'cnjhdxc', 'xc', '2019-06-17 17:41:11', 'daxc', '2019-06-10 17:41:11', 13232500, 0, 0, 0, 0, 0, 1, 0),
(21, 'BRS-DC005-2019-20', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', '09427289583', 'Krish', 'Surat', 395002, 'Gujarat', '', '2019-06-30 00:33:36', '2019-06-30 00:33:36', '', '', '', '2019-06-30 00:33:36', '', '2019-06-30 00:33:36', 587480, 0, 0, 0, 0, 0, 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(12) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `emp_email_id` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `adhar_no` int(12) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `department` varchar(35) NOT NULL,
  `emp_present_add` text NOT NULL,
  `emp_permanent_add` text NOT NULL,
  `emp_status` varchar(10) NOT NULL,
  `emp_reason` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `doj` datetime NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `cp_name` varchar(40) NOT NULL,
  `cp_no` varchar(13) NOT NULL,
  `experience` varchar(30) NOT NULL,
  `uan_no` varchar(30) NOT NULL,
  `esic_no` varchar(30) NOT NULL,
  `remark` text NOT NULL,
  `attachment` text NOT NULL,
  `photo` text NOT NULL,
  `bank_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_code`, `emp_name`, `emp_email_id`, `phone`, `adhar_no`, `designation`, `department`, `emp_present_add`, `emp_permanent_add`, `emp_status`, `emp_reason`, `dob`, `doj`, `qualification`, `cp_name`, `cp_no`, `experience`, `uan_no`, `esic_no`, `remark`, `attachment`, `photo`, `bank_id`) VALUES
(1, 'BRS-EMP0001', 'Harsh', 'msh@gmail.com', '9427289583', 2147483647, 'Technician', 'Installation', 'Khatodara, surat', 'Khatodara, surat', 'Active', 'reason', '1999-03-18 19:19:30', '2018-03-12 19:19:30', 'Masters', 'Mehul', '123456789', '15', 'abc123', 'afc1223', 'Test updated', '3425_3.txt|5543_7.txt', '1531_2decb99a6ae593357d95e6a8df544b3e.jpg', '66,67'),
(2, 'BRS-EMP0002', 'Mehul', 'example@gmail.com', '9494949556', 2147483647, 'Site Supervisor', 'Installation', 'surat', 'surat', 'Active', '', '1999-04-01 16:57:54', '2015-04-01 16:57:54', 'Man', '', '', '', '', '', '', '', '9147_avatar.jpg', '68');

-- --------------------------------------------------------

--
-- Table structure for table `gst_detail`
--

CREATE TABLE `gst_detail` (
  `gst_id` int(11) NOT NULL,
  `gst_no` varchar(25) NOT NULL,
  `pan_no` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst_detail`
--

INSERT INTO `gst_detail` (`gst_id`, `gst_no`, `pan_no`) VALUES
(2, '654', '545'),
(3, 'fdc654', 'd6x5v4'),
(4, '51srd', 'sdz3f551'),
(5, 'dsdzfx24', 'dx4'),
(21, 'dkvji34', 'jfv43'),
(22, 'nv4hhd4', 'jkjb4hsd4'),
(26, 'ssr68fd4f', 'srs6d884'),
(27, 'dx5f4d', 'd54xfd'),
(28, 'dx5f4d', 'd54xfd'),
(29, '54', 'fcv4edf'),
(30, 'vs5fvf5', 'sdz5v1sssdv'),
(31, 'shdzhvu', 'jgvgzj'),
(32, 'shdzhvu', 'jgvgzj'),
(33, 'shdzhvu', 'jgvgzj'),
(34, '24dxnc5d4cd555', '5zx4c5d4c'),
(35, '24dxnc5d4cd555', '5zx4c5d4c updated'),
(37, 'dddad4ss', 'sdc4sd'),
(38, 'ak225751a4', 'a11s47a'),
(39, '123456789123422', '1234567891'),
(41, '24dxnc5d4cd555', '5zx4c5d4c updated'),
(43, '24AAACL7151N1ZC', 'AAACL7151N'),
(44, '411111111wernew', 'sd44567894'),
(45, '411111111wernew', 'sd44567894');

-- --------------------------------------------------------

--
-- Table structure for table `gst_rate`
--

CREATE TABLE `gst_rate` (
  `gst_rate_id` int(11) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `gst_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst_rate`
--

INSERT INTO `gst_rate` (`gst_rate_id`, `hsn_code`, `gst_rate`) VALUES
(1, 1234567, 24),
(2, 12345678, 30),
(3, 5252525, 28),
(4, 942728958, 36);

-- --------------------------------------------------------

--
-- Table structure for table `indoor_vrf`
--

CREATE TABLE `indoor_vrf` (
  `in_vrf_id` int(11) NOT NULL,
  `model_no` text NOT NULL,
  `serial_no` text NOT NULL,
  `location_installation` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indoor_vrf`
--

INSERT INTO `indoor_vrf` (`in_vrf_id`, `model_no`, `serial_no`, `location_installation`) VALUES
(1, 'fsxcv', 'sfcvz', 'zfscvx'),
(2, 'Sfcxv', 'SDcv', 'SDcv'),
(3, 'sdZV', 'DZV', 'DZV');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `inv_id` int(11) NOT NULL,
  `inv_code` varchar(20) NOT NULL,
  `despatch_document` varchar(30) NOT NULL,
  `despatch_through` varchar(20) NOT NULL,
  `vehicle_no` varchar(12) NOT NULL,
  `payment_term` varchar(60) NOT NULL,
  `cons_add` varchar(200) NOT NULL,
  `con_phone` varchar(11) NOT NULL,
  `con_city` varchar(20) NOT NULL,
  `con_state` varchar(20) NOT NULL,
  `con_pincode` int(11) NOT NULL,
  `final_amount` float NOT NULL,
  `discount` float NOT NULL,
  `pf` float NOT NULL,
  `freight` float NOT NULL,
  `other_charges` float NOT NULL,
  `inv_date` datetime NOT NULL,
  `buyer_order_no` varchar(20) NOT NULL,
  `buyer_order_date` datetime NOT NULL,
  `dc_id` varchar(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `cancel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`inv_id`, `inv_code`, `despatch_document`, `despatch_through`, `vehicle_no`, `payment_term`, `cons_add`, `con_phone`, `con_city`, `con_state`, `con_pincode`, `final_amount`, `discount`, `pf`, `freight`, `other_charges`, `inv_date`, `buyer_order_no`, `buyer_order_date`, `dc_id`, `client_id`, `quo_id`, `cancel`) VALUES
(26, 'BRS-INV007-2018-19', '10', '10', 'fxcvf', '30', '', '', '', '', 0, 0, 0, 0, 0, 0, '2019-02-13 21:13:48', '23', '2019-02-04 21:13:48', '', 1, 19, 1),
(27, 'BRS-INV008-2018-19', '120', '123', 'GJ-05-AB-123', 'abc', 'qeaedzxfvsfxcv', '', '', '', 0, 73408, 10, 200, 300, 200, '2019-03-07 22:48:25', 'ABC1125', '2019-03-07 22:48:25', '', 1, 30, 0),
(28, 'BRS-INV001-2019-20', '', '', '', '', 'Bharuch', '9492945584', 'Bharuch', 'Gujarat', 404041, 1126890, 10, 0, 0, 0, '2019-04-12 23:48:41', '', '2019-04-12 23:48:41', '', 2, 30, 0),
(29, 'BRS-INV002-2019-20', '', '', '', '', 'Surat', '2277223000', 'Surat', 'Gujarat', 395001, 4132080, 10, 0, 0, 0, '2019-06-17 09:35:09', '', '2019-06-17 09:35:09', '', 2, 0, 0),
(30, 'BRS-INV003-2019-20', '', '', '', '', 'qeaedzxfvsfxcv', '5641561234', 'surat', 'Gujarat', 486560, 1887480, 0, 0, 0, 0, '2019-06-29 17:52:10', 'po101', '2019-04-19 17:52:10', '', 1, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_add_data`
--

CREATE TABLE `invoice_add_data` (
  `inv_a_d_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_discription` text NOT NULL,
  `qua` float NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `inv_dis_id` int(11) NOT NULL,
  `inv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_add_data`
--

INSERT INTO `invoice_add_data` (`inv_a_d_id`, `srno`, `add_discription`, `qua`, `unit`, `unit_price`, `inv_dis_id`, `inv_id`) VALUES
(62, 2, 'b h gs', 1, 0, 2000, 24, 23),
(63, 3, 'svcs', 1, 0, 3500, 24, 23),
(64, 4, 'advdc', 2, 0, 300, 24, 23),
(157, 1, 'test', 100, 0, 3000, 71, 28),
(158, 2, 'tt', 300, 0, 2001, 71, 28),
(159, 4, 'ttttg', 300, 0, 200, 72, 28),
(160, 5, 'b h gs', 1, 0, 2000, 73, 28),
(161, 6, 'svcs', 1, 0, 3500, 73, 28),
(162, 7, 'advdc', 2, 0, 300, 73, 28),
(163, 1, 'Acoustic', 100, 0, 300, 74, 27),
(164, 2, 'ABC', 50, 0, 700, 74, 27),
(167, 2, 'test', 1000, 4, 1000, 76, 29),
(168, 3, 'dd', 100, 4, 300, 76, 29);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_data`
--

CREATE TABLE `invoice_data` (
  `inv_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `add_pdt_name` text NOT NULL,
  `qua` float NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `inv_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_data`
--

INSERT INTO `invoice_data` (`inv_data_id`, `srno`, `dis_val_type`, `pdt_add_dis`, `add_pdt_name`, `qua`, `unit`, `unit_price`, `gst_rate2`, `inv_id`, `pdt_id`) VALUES
(51, 1, '', '', 'Multi V_CST_Mechanical Part', 5, 0, 1000, 0, 23, 4),
(52, 5, 'product', 'xv,,vfvv', 'pipes', 1, 0, 3000, 0, 23, 6),
(53, 6, 'random', 'sdzvcv', 'Multi V_CST_Mechanical Part', 1, 0, 200, 0, 23, 4),
(57, 1, '', '', 'Multi V_CST_Mechanical Part', 5, 0, 1000, 0, 25, 4),
(58, 2, 'product', 'xv,,vfvv', 'pipes', 1, 0, 3000, 0, 25, 6),
(59, 3, 'random', 'sdzvcv', 'Multi V_CST_Mechanical Part', 1, 0, 200, 0, 25, 4),
(114, 3, 'random', 'sdzvcv', 'new', 20, 0, 355, 0, 28, 14),
(115, 8, '', '', 'Multi V_CST_Mechanical Part', 1, 200, 200, 0, 28, 4),
(116, 9, '', '', 'gi', 13, 0, 300, 0, 28, 4),
(118, 1, '', '', 'Multi V_CST_Mechanical Part', 10, 3, 1000, 0, 29, 4),
(119, 4, '', '', 'new', 100, 2, 10000, 0, 29, 14),
(120, 5, '', '', 'ABC', 100, 1, 15000, 0, 29, 17),
(124, 1, '0', 'Make : MM12LL44', 'Acoustic', 100, 2, 3000, 36, 30, 20),
(125, 2, '1', 'MK1102,,', 'Multi V_CST_Mechanical Part', 130, 2, 200, 18, 30, 4),
(126, 3, '1', 'ESCD522,DDD55,SSS66', 'XPLE plan', 60, 2, 2000, 24, 30, 21),
(127, 4, '', '', 'Hitachi', 1000, 1, 1000, 30, 30, 3),
(128, 5, '', '', '', 0, 0, 0, 0, 30, 0),
(129, 6, '', '', '', 0, 0, 0, 0, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_dis`
--

CREATE TABLE `inv_dis` (
  `inv_dis_id` int(11) NOT NULL,
  `discription` text NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_dis`
--

INSERT INTO `inv_dis` (`inv_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `gst_rate2`, `pdt_id`) VALUES
(10, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(11, 'MS ', '', '', 0, 5),
(12, 'Hitachi', '', '', 0, 3),
(13, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(14, 'MS ', '', '', 0, 5),
(18, 'Hitachi', '', '', 0, 3),
(19, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(20, 'MS ', '', '', 0, 5),
(21, 'gi', 'product', 'xcv,,fcxv', 0, 11),
(24, 'gi', 'product', 'xcv,,fcxv', 0, 6),
(71, 'Acoustic', 'product', 'xcv,ABC,fcxv', 0, 20),
(72, 'XPLE plan', 'product', 'xcv,ABC,fcxv', 0, 21),
(73, 'gi', 'product', 'xcv,,fcxv', 0, 6),
(74, 'Acoustic Acoustic Test Test Test Test Test Test Test Test Test Acoustic Test Test Test Test Test Test Test Test Test', '1', '123,CC22,', 0, 1),
(76, 'Multi V_CST_Mechanical Part', '', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `item_adp`
--

CREATE TABLE `item_adp` (
  `iadp_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `moc` int(2) NOT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `diameter` float NOT NULL,
  `lunit` varchar(10) NOT NULL,
  `wunit` varchar(10) NOT NULL,
  `hunit` varchar(10) NOT NULL,
  `dunit` varchar(10) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `color` varchar(40) NOT NULL,
  `slot_size` varchar(20) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_copper`
--

CREATE TABLE `item_copper` (
  `ic_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `size` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_copper`
--

INSERT INTO `item_copper` (`ic_id`, `category`, `size`, `quantity`, `unit`, `remark`) VALUES
(1, 2, 15.9, 12, 'RMT', 'adfc');

-- --------------------------------------------------------

--
-- Table structure for table `item_ducting`
--

CREATE TABLE `item_ducting` (
  `id_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `thicness` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_insulation`
--

CREATE TABLE `item_insulation` (
  `ii_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `thickness` float NOT NULL,
  `size` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_metal_accessories`
--

CREATE TABLE `item_metal_accessories` (
  `ima_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `moc` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `pcdSize` varchar(10) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_metal_accessories`
--

INSERT INTO `item_metal_accessories` (`ima_id`, `category`, `moc`, `size`, `pcdSize`, `quantity`, `unit`, `remark`) VALUES
(4, 2, 2, '25', '', 11, 'Nos.', ''),
(5, 10, 1, '400', '', 111, 'Nos.', 'bjcth');

-- --------------------------------------------------------

--
-- Table structure for table `item_ms_structure`
--

CREATE TABLE `item_ms_structure` (
  `ims_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_ms_structure`
--

INSERT INTO `item_ms_structure` (`ims_id`, `category`, `size`, `quantity`, `unit`, `remark`) VALUES
(0, 4, '30', 37, 'Set', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_other`
--

CREATE TABLE `item_other` (
  `io_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_pipe`
--

CREATE TABLE `item_pipe` (
  `ip_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `size` float NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_valves`
--

CREATE TABLE `item_valves` (
  `iv_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(10) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `comp_per` int(11) NOT NULL,
  `amc_per` int(11) NOT NULL,
  `action_per` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`user_id`, `username`, `password`, `name`, `email`, `mobileno`, `comp_per`, `amc_per`, `action_per`) VALUES
(1, 'mehul', 'f626f4ab367c4cf89ea50330054f2056', 'Mehul', 'msherdiwala@gmail.com', '9898956859', 1, 1, 1),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin@gmail.com', '9898955357', 0, 0, 0),
(4, 'test', '098f6bcd4621d373cade4e832627b4f6', 'Tester', 'test@gmail.com', '9595959595', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_acceptance`
--

CREATE TABLE `order_acceptance` (
  `oa_id` int(11) NOT NULL,
  `oa_code` varchar(20) NOT NULL,
  `oa_date` datetime NOT NULL,
  `po_no` varchar(40) NOT NULL,
  `po_date` datetime NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_acceptance`
--

INSERT INTO `order_acceptance` (`oa_id`, `oa_code`, `oa_date`, `po_no`, `po_date`, `quo_id`) VALUES
(8, 'BRS-OA001-2018-19', '2019-03-19 08:35:17', '', '0000-00-00 00:00:00', 30),
(10, 'BRS-OA001-2019-20', '2019-06-29 23:30:27', '', '0000-00-00 00:00:00', 33),
(11, 'BRS-OA002-2019-20', '2019-06-29 23:47:33', '', '0000-00-00 00:00:00', 34),
(12, 'BRS-OA003-2019-20', '2019-06-29 23:48:54', 'po123', '2019-06-28 23:48:54', 34),
(13, 'BRS-OA004-2019-20', '2019-06-30 00:11:12', 'po123', '2019-06-27 00:11:12', 31);

-- --------------------------------------------------------

--
-- Table structure for table `other_perosn_detail`
--

CREATE TABLE `other_perosn_detail` (
  `opd_id` int(11) NOT NULL,
  `opd_name` varchar(40) NOT NULL,
  `opd_designation` varchar(30) NOT NULL,
  `opd_mobile_no` varchar(11) NOT NULL,
  `opd_email_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_perosn_detail`
--

INSERT INTO `other_perosn_detail` (`opd_id`, `opd_name`, `opd_designation`, `opd_mobile_no`, `opd_email_id`) VALUES
(5, 'fdv', 'df', '4322', 'fsv'),
(6, 'wedf', 'scv', '12344554', 'wadf2fc'),
(7, 'scv', 'sfcv', '59844', 'fcvdv2b11v'),
(8, 'fdv', 'df', '4322', 'fsv'),
(9, 'wedf', 'scv', '12344554', 'wadf2fc'),
(10, 'new', 'sxc', '15646', 'as1ca'),
(11, 'scv', 'sfcv', '59844', 'fcvdv2b11v'),
(12, 'fdv', 'df', '4322', 'fsv'),
(13, 'wedf', 'scv', '12344554', 'wadf2fc'),
(19, 'New', 'New', '94785', 's5d4sd'),
(22, '123', 'adf12', '143', 'weasdf'),
(28, '11', '11', '11', 'example@gmail.com'),
(29, '123', 'adf12', '143', 'weasdf'),
(32, 'Test4', 'CEO', '1234567899', 'example@gmail.com'),
(33, '12', '12', '12', 'example@gmail.com'),
(35, '123', 'adf12', '2147483647', 'weasdf'),
(39, 'Vardhandhanadhan', 'ddccc', '884854845', ''),
(45, 'Vardhandhanadhan', 'ddccc', '884854845', '');

-- --------------------------------------------------------

--
-- Table structure for table `outdoor_vrf`
--

CREATE TABLE `outdoor_vrf` (
  `out_vrf_id` int(11) NOT NULL,
  `model_no` text NOT NULL,
  `serial_no` text NOT NULL,
  `location_installation` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outdoor_vrf`
--

INSERT INTO `outdoor_vrf` (`out_vrf_id`, `model_no`, `serial_no`, `location_installation`) VALUES
(1, 'sddzx', 'dxz4c4', 'dxzc'),
(2, 'dfc4s4d', 'dxcdc', 'adfc'),
(3, 'aDZCV', 'DVZC', 'SDV');

-- --------------------------------------------------------

--
-- Table structure for table `pi`
--

CREATE TABLE `pi` (
  `pi_id` int(11) NOT NULL,
  `pi_code` varchar(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `cp_name` varchar(50) NOT NULL,
  `cp_no` varchar(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `discount` float NOT NULL,
  `pf` float NOT NULL,
  `freight` float NOT NULL,
  `other_charges` float NOT NULL,
  `po_no` varchar(30) NOT NULL,
  `po_date` datetime NOT NULL,
  `less_text` text NOT NULL,
  `less_amount` text NOT NULL,
  `terms` text NOT NULL,
  `pi_date` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pi`
--

INSERT INTO `pi` (`pi_id`, `pi_code`, `delivery_address`, `cp_name`, `cp_no`, `final_amount`, `discount`, `pf`, `freight`, `other_charges`, `po_no`, `po_date`, `less_text`, `less_amount`, `terms`, `pi_date`, `client_id`, `quo_id`) VALUES
(6, 'BRS-PI003-2018-19', 'Surat ', '', '', 55601, 10, 200, 300, 100, 'ABC120', '2019-03-16 22:52:53', '||ðŸ˜‰', '1,000 |30,000 ', 'Term1|Term2', '2019-03-16 20:54:10', 1, 30),
(7, 'BRS-PI004-2018-19', ' ', '', '', 1149205, 10, 0, 0, 200, '', '2019-03-16 23:08:48', 'ðŸ˜‰||ðŸ˜‰', '30,000|1,000 ', 'Term1', '2019-03-16 23:08:48', 2, 30);

-- --------------------------------------------------------

--
-- Table structure for table `pi_add_data`
--

CREATE TABLE `pi_add_data` (
  `pi_a_d_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_discription` text NOT NULL,
  `qua` int(11) NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `pi_dis_id` int(11) NOT NULL,
  `pi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pi_add_data`
--

INSERT INTO `pi_add_data` (`pi_a_d_id`, `srno`, `add_discription`, `qua`, `unit`, `unit_price`, `pi_dis_id`, `pi_id`) VALUES
(7, 0, 'test', 2, 0, 99, 3, 1),
(8, 0, 'Test2', 3, 0, 60, 3, 1),
(9, 0, 'Test3', 1, 0, 200, 3, 1),
(16, 2, 'b h gs', 1, 0, 2000, 6, 3),
(17, 3, 'svcs', 1, 0, 3500, 6, 3),
(18, 4, 'advdc', 2, 0, 300, 6, 3),
(21, 1, 'Test1', 100, 0, 300, 8, 6),
(22, 2, 'Test2', 80, 0, 200, 8, 6),
(23, 1, 'test', 100, 0, 3000, 9, 7),
(24, 2, 'tt', 300, 0, 2001, 9, 7),
(25, 4, 'ttttg', 300, 0, 200, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pi_data`
--

CREATE TABLE `pi_data` (
  `pi_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `add_pdt_name` text NOT NULL,
  `qua` varchar(30) NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pi_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pi_data`
--

INSERT INTO `pi_data` (`pi_data_id`, `srno`, `dis_val_type`, `pdt_add_dis`, `add_pdt_name`, `qua`, `unit`, `unit_price`, `gst_rate2`, `pi_id`, `pdt_id`) VALUES
(21, 1, '', '', 'Hitachi', '1', 0, 1000, 0, 5, 3),
(22, 2, '', '', 'Multi V_CST_Mechanical Part', '300', 0, 250, 0, 5, 4),
(26, 1, '', '', 'Multi V_CST_Mechanical Part', '5', 0, 1000, 0, 3, 4),
(27, 5, '1', 'xv,sfc,vfvv', 'pipes', '1', 0, 3000, 0, 3, 6),
(28, 6, '0', 'sdzvcv', 'Multi V_CST_Mechanical Part', '1', 0, 200, 0, 3, 4),
(30, 3, '', '', 'Multi V_CST_Mechanical Part', '13', 0, 300, 0, 6, 4),
(31, 3, '0', 'sdzvcv', 'new', '20', 0, 355, 0, 7, 14),
(32, 5, '', '', 'Multi V_CST_Mechanical Part', '100', 0, 300, 0, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pi_dis`
--

CREATE TABLE `pi_dis` (
  `pi_dis_id` int(11) NOT NULL,
  `discription` text NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pi_dis`
--

INSERT INTO `pi_dis` (`pi_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `gst_rate2`, `pdt_id`) VALUES
(3, 'Hitachi', '', '', 0, 3),
(6, 'gi', '1', 'xcv,sdxv,fcxv', 0, 6),
(8, 'test', '', '', 0, 10),
(9, 'Acoustic', '', '', 0, 20),
(10, 'XPLE plan', '1', 'xcv,,fcxv', 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `pmc`
--

CREATE TABLE `pmc` (
  `pmc_id` int(11) NOT NULL,
  `pmc_code` varchar(20) NOT NULL,
  `company_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `tele_no` varchar(11) NOT NULL,
  `comp_add` text NOT NULL,
  `website` varchar(40) NOT NULL,
  `gst_no` varchar(25) NOT NULL,
  `pan_no` varchar(25) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(25) NOT NULL,
  `bank_id` varchar(25) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_add_data`
--

CREATE TABLE `po_add_data` (
  `po_a_d_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_discription` text NOT NULL,
  `qua` float NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `po_dis_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_add_data`
--

INSERT INTO `po_add_data` (`po_a_d_id`, `srno`, `add_discription`, `qua`, `unit`, `unit_price`, `po_dis_id`, `po_id`) VALUES
(1, 2, 'hshd', 30, 0, 200, 1, 5),
(2, 3, 'dnc', 5, 0, 600, 1, 5),
(18, 1, 'mmeh', 120, 0, 300, 12, 9),
(19, 2, 'scv', 100, 0, 100, 12, 9),
(20, 3, 'dcx', 33, 0, 100, 13, 9),
(21, 2, 'www', 150, 6, 1500, 14, 10),
(22, 3, 'sds', 60, 3, 6000, 14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `po_data`
--

CREATE TABLE `po_data` (
  `po_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `add_pdt_name` text NOT NULL,
  `qua` varchar(30) NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_data`
--

INSERT INTO `po_data` (`po_data_id`, `srno`, `dis_val_type`, `pdt_add_dis`, `add_pdt_name`, `qua`, `unit`, `unit_price`, `gst_rate2`, `po_id`, `pdt_id`) VALUES
(1, 1, '', '', 'Hitachi', '10', 0, 300, 0, 5, 3),
(2, 4, '', '', 'LG', '13', 0, 220, 0, 7, 1),
(3, 4, '', '', 'LG', '10', 0, 300, 0, 9, 1),
(4, 1, '', '', 'new', '100', 1, 1000, 30, 10, 2),
(5, 4, '', '', 'gi', '100', 4, 200, 28, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `po_dis`
--

CREATE TABLE `po_dis` (
  `po_dis_id` int(11) NOT NULL,
  `discription` text NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_dis`
--

INSERT INTO `po_dis` (`po_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `gst_rate2`, `pdt_id`) VALUES
(1, 'pipes', '', '', 0, 6),
(12, 'gi updated', '', '', 0, 1),
(13, 'LG', '', '', 0, 1),
(14, 'new gst', '', '', 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pr`
--

CREATE TABLE `pr` (
  `pr_id` int(11) NOT NULL,
  `pr_code` varchar(20) NOT NULL,
  `project_name` text NOT NULL,
  `order_date` datetime NOT NULL,
  `ordered_by` varchar(40) NOT NULL,
  `items` text NOT NULL,
  `status` varchar(15) NOT NULL,
  `order_date2` datetime NOT NULL,
  `estimated_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Purchase Requisitions ';

--
-- Dumping data for table `pr`
--

INSERT INTO `pr` (`pr_id`, `pr_code`, `project_name`, `order_date`, `ordered_by`, `items`, `status`, `order_date2`, `estimated_time`) VALUES
(3, 'BRS-PR0003', 'jhhfxv', '2019-02-11 05:42:57', '1:1', '8:1/6:4/6:5/4:0', 'Order Pending', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pdt_id` int(11) NOT NULL,
  `pdt_code` varchar(15) NOT NULL,
  `pdt_name` varchar(120) NOT NULL,
  `gst_rate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pdt_id`, `pdt_code`, `pdt_name`, `gst_rate_id`) VALUES
(1, 'BRS-PDT00001', 'LG', 1),
(3, 'BRS-PDT00002', 'Hitachi', 2),
(4, 'BRS-PDT00004', 'Multi V_CST_Mechanical Part', 3),
(5, 'BRS-PDT00005', 'MS ', 1),
(6, 'BRS-PDT00006', 'pipes', 2),
(10, 'BRS-PDT00007', 'test', 3),
(11, 'BRS-PDT00011', 'gi', 1),
(14, 'BRS-PDT00014', 'new', 1),
(17, 'BRS-PDT00017', 'ABC', 2),
(20, 'BRS-PDT00018', 'Acoustic Test Test Test Test Test Test Test Test Test', 2),
(21, 'BRS-PDT00019', 'XPLE plan', 2),
(23, 'BRS-PDT0002', 'new', 3),
(24, 'BRS-PDT0003', 'new', 3),
(25, 'BRS-PDT0004', 'new gst', 2),
(26, 'BRS-PDT0005', 'pi', 1),
(27, 'BRS-PDT0006', 'qw', 2),
(28, 'BRS-PDT0007', 'pipe new', 3),
(29, 'BRS-PDT0008', 'pipe 3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `productsuppler`
--

CREATE TABLE `productsuppler` (
  `pdt_id` int(11) NOT NULL,
  `pdt_code` varchar(15) NOT NULL,
  `pdt_name` text NOT NULL,
  `gst_rate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsuppler`
--

INSERT INTO `productsuppler` (`pdt_id`, `pdt_code`, `pdt_name`, `gst_rate_id`) VALUES
(1, 'BRS-PDT0001', 'gi updated', 1),
(2, 'BRS-PDT0002', 'new', 2),
(3, 'BRS-PDT0003', 'gi', 3),
(4, 'BRS-PDT0004', 'new gst', 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `po_id` int(11) NOT NULL,
  `po_code` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `ref_no` varchar(40) NOT NULL,
  `ref_date` datetime NOT NULL,
  `final_amount` float NOT NULL,
  `discount` float NOT NULL,
  `pf` float NOT NULL,
  `freight` float NOT NULL,
  `other_charges` float NOT NULL,
  `delivery_period` varchar(50) NOT NULL,
  `da_status` int(2) NOT NULL,
  `other_add` text NOT NULL,
  `cp_name` varchar(70) NOT NULL,
  `cp_no` varchar(11) NOT NULL,
  `loading_unloading` int(1) NOT NULL,
  `terms` text NOT NULL,
  `tax_status` varchar(17) NOT NULL,
  `freight_status` varchar(17) NOT NULL,
  `pf_status` varchar(17) NOT NULL,
  `installation_status` varchar(17) NOT NULL,
  `po_date` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`po_id`, `po_code`, `type`, `ref_no`, `ref_date`, `final_amount`, `discount`, `pf`, `freight`, `other_charges`, `delivery_period`, `da_status`, `other_add`, `cp_name`, `cp_no`, `loading_unloading`, `terms`, `tax_status`, `freight_status`, `pf_status`, `installation_status`, `po_date`, `client_id`) VALUES
(9, 'BRS-PO003-2018-19', 'fcv ', 'zdxv', '2019-03-15 20:08:27', 58567, 10, 0, 0, 200, '1 Month', 1, '', 'M s', '1234567899', 0, 'Term1|Term2|Term3', '1', '1', '1', '0', '2019-03-15 20:08:27', 1),
(10, 'BRS-PO001-2019-20', '', '', '2019-06-30 10:05:06', 904400, 0, 0, 0, 0, '', 1, '', '', '', 1, '', '1', '0', '0', '0', '2019-06-30 10:05:06', 7);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `quo_id` int(11) NOT NULL,
  `quo_code` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `attent` varchar(30) NOT NULL,
  `remark` varchar(30) NOT NULL,
  `title_description` varchar(500) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `discount` float NOT NULL,
  `pf` float NOT NULL,
  `freight` float NOT NULL,
  `other_charges` float NOT NULL,
  `delivery_period` varchar(50) NOT NULL,
  `validity` varchar(50) NOT NULL,
  `tax_status` varchar(17) NOT NULL,
  `freight_status` varchar(17) NOT NULL,
  `pf_status` varchar(17) NOT NULL,
  `installation_status` varchar(17) NOT NULL,
  `quo_date` datetime NOT NULL,
  `terms` varchar(500) NOT NULL,
  `client_id` int(11) NOT NULL,
  `re` int(3) NOT NULL,
  `finalize` int(2) NOT NULL,
  `po_no` varchar(40) NOT NULL,
  `po_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`quo_id`, `quo_code`, `type`, `subject`, `attent`, `remark`, `title_description`, `final_amount`, `discount`, `pf`, `freight`, `other_charges`, `delivery_period`, `validity`, `tax_status`, `freight_status`, `pf_status`, `installation_status`, `quo_date`, `terms`, `client_id`, `re`, `finalize`, `po_no`, `po_date`) VALUES
(21, 'BRS-QUO001-2018-19', 'cvds', 'scvv', 'vsv', 'vfs', '', 10193, 10, 100, 300, 50, '', '', '0', '1', '1', '0', '2018-11-17 16:37:04', '', 22, 1, 0, '', '0000-00-00 00:00:00'),
(23, 'BRS-QUO003-2018-19', 'vuuygy', 'sfvcjhbj', 'vsv', 'scvsdg', 'Dear sir, Im Mehul Sherdiwala This is only for testing.', 20429, 10, 100, 200, 3000, 'xcv', 'sxcv', '1', '0', '0', '1', '2018-12-07 17:56:14', 'test1|test3|test2', 23, 0, 0, '', '0000-00-00 00:00:00'),
(27, 'BRS-QUO003-2018-19', 'Normal', 'sfvcjhbj', 'vsv', 'scvsdg', 'Dear sir, Im Mehul Sherdiwala This is only for testing.', 20429, 10, 100, 200, 3000, 'xcv', 'sxcv', '1', '0', '0', '0', '2018-12-17 10:18:02', 'test1|test3|test2', 1, 1, 1, '', '0000-00-00 00:00:00'),
(28, 'BRS-QUO004-2018-19', 'dcb', 'sfvcjhbj', 'vsv', '', 'zdxvcb ', 5404, 0, 0, 0, 0, '', '', '1', '1', '1', '1', '2019-02-09 01:13:11', '', 1, 0, 0, '', '0000-00-00 00:00:00'),
(29, 'BRS-QUO005-2018-19', 'Test', 'sub1', 'xv h', 'adzxc', 'Dear sir,\r\n	Hello Sir......', 1094857, 10, 3000, 0, 200, '1 Month', '2 Month', '1', '1', '0', '1', '2019-03-07 09:28:14', 'term 1|term 2|term 3|term 4', 2, 0, 0, '', '0000-00-00 00:00:00'),
(30, 'BRS-QUO006-2018-19', 'Test', 'sub1', 'xv h', 'Khatodra', 'Dear sir,\r\n	Hello Sir......', 1126834, 10, 0, 0, 200, '1 Month', '2 Month', '1', '1', '1', '0', '2019-03-07 22:55:08', 'term 1|term 2|term 3', 3, 0, 1, '', '0000-00-00 00:00:00'),
(31, 'BRS-QUO007-2018-19', 'mmmmdjisfd', 'test', 'fcmvnik', '', 'Dear Sir,\r\n              Hello World ........................\r\n                   Nave a nice day.............', 705560, 0, 3000, 0, 1000, '1 Month', '2 Month', '1', '1', '0', '1', '2019-03-31 17:07:29', 'Term1|Term2|Term3|Term4', 1, 0, 1, 'po123', '2019-06-27 00:11:12'),
(32, 'BRS-QUO008-2018-19', 'mmmmdjisfd', 'test', 'fcmvnik', 'Test nbdxvbubshdbcyb', 'Dear Sir,\r\n              Hello World ........................\r\n                   Nave a nice day.............', 705560, 0, 3000, 0, 1000, '1 Month', '2 Month', '1', '1', '0', '1', '2019-03-31 10:37:53', 'Term1|Term2|Term3|Term4|', 1, 0, 0, '', '0000-00-00 00:00:00'),
(33, 'BRS-QUO009-2018-19', '', '', '', '', '', 124000, 0, 0, 0, 0, '', '', '1', '1', '1', '1', '2019-03-31 09:48:28', 'Term1|Term3|term|term|term|term|term|term', 1, 0, 1, '', '0000-00-00 00:00:00'),
(34, 'BRS-QUO001-2019-20', '', '', '', '', 'Dear Sir, As Per your Above Subject Requirement, we are pleased to submit you our best discounted offer for the same as under. ', 1991650, 0, 0, 0, 0, '', '', '1', '1', '1', '1', '2019-06-29 23:56:42', '', 1, 0, 0, '', '2019-06-28 23:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_add_data`
--

CREATE TABLE `quotation_add_data` (
  `quo_a_d_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `add_discription` text NOT NULL,
  `qua` float NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `quo_dis_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_add_data`
--

INSERT INTO `quotation_add_data` (`quo_a_d_id`, `srno`, `add_discription`, `qua`, `unit`, `unit_price`, `quo_dis_id`, `quo_id`) VALUES
(76, 2, 'b h gs', 1, 0, 2000, 40, 23),
(77, 3, 'svcs', 1, 0, 3500, 40, 23),
(78, 4, 'advdc', 2, 0, 300, 40, 23),
(92, 3, 'Test1', 50, 0, 300, 50, 32),
(93, 4, 'Test2', 60, 0, 500, 50, 32),
(94, 5, 'test3', 90, 0, 600, 50, 32),
(111, 1, 'test', 100, 0, 3000, 58, 29),
(112, 2, 'tt', 300, 0, 2001, 58, 29),
(113, 1, 'test', 100, 0, 3000, 59, 30),
(114, 2, 'tt', 300, 0, 2001, 59, 30),
(115, 4, 'ttttg', 300, 0, 200, 60, 30),
(116, 5, 'b h gs', 1, 0, 2000, 61, 30),
(117, 6, 'svcs', 1, 0, 3500, 61, 30),
(118, 7, 'advdc', 2, 0, 300, 61, 30),
(119, 3, 'Test1', 50, 4, 300, 62, 31),
(120, 4, 'Test2', 60, 4, 500, 62, 31),
(121, 5, 'test3', 90, 1, 600, 62, 31),
(124, 3, 'new', 1500, 4, 1000, 64, 34);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_data`
--

CREATE TABLE `quotation_data` (
  `quo_data_id` int(11) NOT NULL,
  `srno` int(11) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `add_pdt_name` text NOT NULL,
  `qua` varchar(30) NOT NULL,
  `unit` int(2) NOT NULL,
  `unit_price` float NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_data`
--

INSERT INTO `quotation_data` (`quo_data_id`, `srno`, `dis_val_type`, `pdt_add_dis`, `add_pdt_name`, `qua`, `unit`, `unit_price`, `gst_rate2`, `quo_id`, `pdt_id`) VALUES
(94, 1, '', '', 'Multi V_CST_Mechanical Part', '5', 0, 1000, 0, 27, 4),
(95, 5, '1', 'xv,,vfvv', 'pipes', '1', 0, 3000, 0, 27, 6),
(96, 6, '0', 'sdzvcv', 'Multi V_CST_Mechanical Part', '1', 0, 200, 0, 27, 4),
(106, 1, '', '', 'Acoustic', '100', 0, 3000, 0, 32, 20),
(107, 2, '', '', 'Multi V_CST_Mechanical Part', '130', 0, 200, 0, 32, 4),
(108, 6, '', '', 'XPLE plan', '60', 0, 2000, 0, 32, 21),
(127, 3, '', '', 'new', '20', 0, 355, 0, 29, 14),
(128, 4, '', '', 'ABC', '13', 0, 3000, 0, 29, 17),
(132, 1, '', '', 'LG', '100', 0, 1000, 0, 33, 1),
(133, 3, '0', 'sdzvcv', 'new', '20', 0, 355, 0, 30, 14),
(134, 8, '', '', 'Multi V_CST_Mechanical Part', '1', 200, 200, 0, 30, 4),
(135, 9, '', '', 'gi', '13', 0, 300, 0, 30, 4),
(136, 1, '0', 'Make : MM12LL44', 'Acoustic', '100', 2, 3000, 36, 31, 20),
(137, 2, '1', 'MK1102,,', 'Multi V_CST_Mechanical Part', '130', 2, 200, 18, 31, 4),
(138, 6, '1', 'ESCD522,DDD55,SSS66', 'XPLE plan', '60', 2, 2000, 24, 31, 21),
(143, 1, '', '', 'LG', '10', 2, 1000, 24, 34, 1),
(144, 2, '', '', 'ABC', '15', 3, 1500, 30, 34, 17);

-- --------------------------------------------------------

--
-- Table structure for table `quo_dis`
--

CREATE TABLE `quo_dis` (
  `quo_dis_id` int(11) NOT NULL,
  `discription` text NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` text NOT NULL,
  `gst_rate2` int(11) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quo_dis`
--

INSERT INTO `quo_dis` (`quo_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `gst_rate2`, `pdt_id`) VALUES
(4, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(6, 'LG', '', ',,', 0, 1),
(7, 'Hitachi', '', ',,', 0, 3),
(8, 'MS ', '', ',,', 0, 5),
(9, 'Multi V_CST_Mechanical Part', '', ',,', 0, 4),
(14, 'Hitachi', '', '', 0, 3),
(15, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(16, 'MS ', '', '', 0, 5),
(17, 'Hitachi', '', '', 0, 3),
(18, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(19, 'MS ', '', '', 0, 5),
(20, 'Hitachi', '', '', 0, 3),
(21, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(22, 'MS ', '', '', 0, 5),
(23, 'Hitachi', '', '', 0, 3),
(24, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(25, 'Multi V_CST_Mechanical Part', '', '', 0, 4),
(29, 'pipes', '', '', 0, 6),
(30, 'gi', '1', 'xcv,,fcxv', 0, 6),
(31, 'pipes', '', '', 0, 6),
(32, 'gi', '1', 'xcv,,fcxv', 0, 6),
(33, 'pipes', '', '', 0, 6),
(34, 'gi', '1', 'xcv,,fcxv', 0, 6),
(37, 'gi', '1', 'xcv,,fcxv', 0, 6),
(40, 'gi', '1', 'xcv,,fcxv', 0, 6),
(50, 'MS ', '0', 'wedxkcbib', 0, 5),
(58, 'Acoustic', '', '', 0, 20),
(59, 'Acoustic', '1', 'xcv,ABC,fcxv', 0, 20),
(60, 'XPLE plan', '1', 'xcv,ABC,fcxv', 0, 21),
(61, 'gi', '1', 'xcv,,fcxv', 0, 6),
(62, 'MS ', '1', ',SS25S26,Testing', 30, 5),
(64, 'pipes', '', '', 30, 6);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `search_id` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`search_id`, `sname`, `link`, `icon`) VALUES
(1, 'Add Client', '../client/client_form', 'fa-users'),
(2, 'View Client ', '../client/client_list', 'fa-users'),
(3, 'Add Product', '../product/add_product', 'fa-shopping-cart'),
(4, 'View Product', '../product/product_list', 'fa-shopping-cart'),
(5, 'Add Supplier Product', '../productSupplier/add_product', 'fa-shopping-cart'),
(6, 'View Supplier Product', '../productSupplier/product_list', 'fa-shopping-cart'),
(7, 'Delivery Challan', '../billing/delivery_challan_list', 'fa-receipt'),
(8, 'Tax Invoice', '../billing/invoice_list', 'fa-receipt'),
(9, 'Quotation', '../billing/quotation_list', 'fa-receipt'),
(10, 'Order Acceptance', '../billing/order_acceptance', 'fa-receipt'),
(11, 'Purchase Order', '../billing/po_list', 'fa-receipt'),
(12, 'Proforma Invoice', '../billing/pi_list', 'fa-receipt'),
(13, 'Add BOQ', '../boq/add_boq', 'fa-file-invoice-dollar'),
(14, 'View BOQ', '../boq/boq_list', 'fa-file-invoice-dollar'),
(15, 'Add Employee', '../employee/add_employee', 'fa-users-cog'),
(16, 'View Employee', '../employee/employee_list', 'fa-users-cog'),
(17, 'Add Complaint', '../complain/add_complaint', 'fa-exclamation-circle'),
(18, 'View Complaint', '../complain/complaint_list', 'fa-exclamation-circle'),
(19, 'Allocate Complaint', '../complain/report', 'fa-exclamation-circle'),
(20, 'Add Supplier', '../supplier/add_supplier', 'fa-shipping-fast'),
(21, 'View Supplier', '../supplier/supplier_list', 'fa-shipping-fast'),
(22, 'Order Requisition', '../purchase_requisition/purchase_requisition', 'fa-shipping-fast'),
(23, 'View Requisition', '../purchase_requisition/requisition_list', 'fa-shipping-fast'),
(24, 'Add VRF Equipments', '../vrf/add_vrf', 'fa-cog'),
(25, 'View VRF Equipments', '../vrf/vrf_list', 'fa-cog'),
(26, 'Add Contractor', '../contractor/contractor', ''),
(27, 'View Contractor', '../contractor/contractor_list', ''),
(28, 'Add Consultant', '../consultant/consultant', ''),
(29, 'View Consultant', '../consultant/consultant_list', ''),
(30, 'Add Architect', '../architect/architect', ''),
(31, 'View Architect', '../architect/architect_list', ''),
(32, 'Add PMC', '../pmc/pmc', ''),
(33, 'View PMC', '../pmc/pmc_list', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_user`
--

CREATE TABLE `sub_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `from_day` varchar(10) NOT NULL,
  `to_day` varchar(10) NOT NULL,
  `from_time` varchar(7) NOT NULL,
  `to_time` varchar(7) NOT NULL,
  `comp_per` int(11) NOT NULL,
  `amc_per` int(11) NOT NULL,
  `action_per` int(11) NOT NULL,
  `add_time` varchar(5) NOT NULL,
  `add_time_start` datetime NOT NULL,
  `add_time_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_user`
--

INSERT INTO `sub_user` (`user_id`, `username`, `password`, `from_day`, `to_day`, `from_time`, `to_time`, `comp_per`, `amc_per`, `action_per`, `add_time`, `add_time_start`, `add_time_end`) VALUES
(2, 'msherdiwala@gmail.com', 'aa9f1cddd1de97c2606354ca248fdc35', 'Mon', 'Sat', '17:00', '19:00', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'raj', '65a1223dae83b8092c4edba0823a793c', 'Tue', 'Thu', '08:00', '21:00', 0, 1, 1, '', '2018-07-11 00:24:58', '1970-01-01 05:30:00'),
(5, 'mann', '53b606c783f6ba918212d37d727d500c', 'Mon', 'Sun', '08:00', '23:00', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'rajan@123', '0deceab661e21cee66e1287572545a67', 'Mon', 'Sat', '08:00', '21:00', 0, 0, 0, '', '2018-07-10 23:46:37', '0000-00-00 00:00:00'),
(10, 'harsh', 'd4e3730e8cba214f85cddae5f9331d74', 'Mon', 'Sat', '08:00', '21:00', 0, 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'mehul2', '3be1fd1feb3f50db009b899b72bcd645', 'Mon', 'Sat', '00:00', '10:26', 0, 0, 0, '30', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_mst`
--

CREATE TABLE `supplier_mst` (
  `supplier_id` int(11) NOT NULL,
  `supplier_code` varchar(20) NOT NULL,
  `supplier_name` text NOT NULL,
  `category_company` int(2) NOT NULL,
  `reg_add` text NOT NULL,
  `billing_add` text NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `tele_no` varchar(11) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `establishment_year` varchar(15) NOT NULL,
  `establishment_no` varchar(30) NOT NULL,
  `establishment_date` datetime NOT NULL,
  `website` varchar(50) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `cst_no` varchar(30) NOT NULL,
  `vat_no` varchar(35) NOT NULL,
  `service_tax_no` varchar(50) NOT NULL,
  `ecc_no` varchar(50) NOT NULL,
  `ecc_range` varchar(50) NOT NULL,
  `ecc_division` varchar(50) NOT NULL,
  `excise` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `reason` text NOT NULL,
  `cad_name` varchar(50) NOT NULL,
  `cad_mobile_no` varchar(11) NOT NULL,
  `cad_email_id` varchar(50) NOT NULL,
  `company_person` int(11) NOT NULL,
  `other_person` varchar(30) NOT NULL,
  `bank_id` varchar(30) NOT NULL,
  `bank_contact_person_name` varchar(40) NOT NULL,
  `bank_contact_person_contact_no` varchar(11) NOT NULL,
  `gst_id` varchar(30) NOT NULL,
  `attachment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_mst`
--

INSERT INTO `supplier_mst` (`supplier_id`, `supplier_code`, `supplier_name`, `category_company`, `reg_add`, `billing_add`, `city`, `state`, `country`, `tele_no`, `pincode`, `establishment_year`, `establishment_no`, `establishment_date`, `website`, `email_id`, `cst_no`, `vat_no`, `service_tax_no`, `ecc_no`, `ecc_range`, `ecc_division`, `excise`, `status`, `reason`, `cad_name`, `cad_mobile_no`, `cad_email_id`, `company_person`, `other_person`, `bank_id`, `bank_contact_person_name`, `bank_contact_person_contact_no`, `gst_id`, `attachment`) VALUES
(1, 'BRS-S0001', 'Mehul new', 3, 'Surat new\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Surat new\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Surat new', 'Gujarat new', 'INDIA new', '', '395002', '2016', 'new', '2019-06-28 17:57:59', 'www.xyznew.com', 'mple@gmail.com', 'sdxvsdd56x5c1new', 'sdsxvz651new', 'fc1dxv1new', 'sf6cv161new', 's6dx1v6new', 'd6sfcv16new', 's6dv161new', 'Active', '', 'Mehulnew', '9427289583', 'example@gmail.com', 12, '39', '84,85', 'Mehulnew', '9427289583', '44', ''),
(2, 'BRS-S0002', 'Mehul ', 3, 'Surat ', 'Surat ', 'Surat', 'Gujarat ', 'INDIA ', '9888899898', '395002', '2016', 'new', '2019-06-28 00:02:40', 'www.xyz.com', 'mple@gmail.com', 'sdxvsdd56x5c1', 'sdsxvz651new', 'fc1dxv1new', 'sf6cv161new', 's6dx1v6new', 'd6sfcv16new', 's6dv161new', 'De-Active', 'reason', 'Mehulnew', '9427289583', 'example@gmail.com', 13, '45', '93', 'Mehulnew', '9427289583', '45', '');

-- --------------------------------------------------------

--
-- Table structure for table `vrf`
--

CREATE TABLE `vrf` (
  `vrf_id` int(11) NOT NULL,
  `vrf_code` varchar(20) NOT NULL,
  `entry_date` datetime NOT NULL,
  `handed_over_date` datetime NOT NULL,
  `warranty_period` datetime NOT NULL,
  `commissioning_date` datetime NOT NULL,
  `circuit_capacity` varchar(50) NOT NULL,
  `reminder_time` varchar(20) NOT NULL,
  `reminder_type` varchar(20) NOT NULL,
  `outdoor_unit` text NOT NULL,
  `indoor_unit` text NOT NULL,
  `files` text NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vrf`
--

INSERT INTO `vrf` (`vrf_id`, `vrf_code`, `entry_date`, `handed_over_date`, `warranty_period`, `commissioning_date`, `circuit_capacity`, `reminder_time`, `reminder_type`, `outdoor_unit`, `indoor_unit`, `files`, `client_id`) VALUES
(1, 'BRS-VRF001', '2019-02-13 19:49:28', '2019-02-13 00:00:00', '2019-02-19 19:49:28', '2019-02-20 19:49:28', '50mhz', '10', '1', '1,2', '1,2', '4198_1.txt|6665_5.txt|1452_8.txt', 1),
(2, 'BRS-VRF001-2018-19', '2019-02-16 12:54:19', '2019-02-16 23:59:59', '2019-03-07 23:59:59', '2019-02-16 12:54:19', 'dxc', '10', '1', '3', '3', '6890_WhatsApp Image 2019-02-12 at 5.46.27 PM.jpeg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `architect`
--
ALTER TABLE `architect`
  ADD PRIMARY KEY (`arc_id`);

--
-- Indexes for table `bank_detail`
--
ALTER TABLE `bank_detail`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `boq_annexure`
--
ALTER TABLE `boq_annexure`
  ADD PRIMARY KEY (`boq_an_id`),
  ADD KEY `boq_id` (`boq_id`);

--
-- Indexes for table `boq_des`
--
ALTER TABLE `boq_des`
  ADD PRIMARY KEY (`boq_des_id`);

--
-- Indexes for table `boq_des_add_data`
--
ALTER TABLE `boq_des_add_data`
  ADD PRIMARY KEY (`boq_des_add_data_id`),
  ADD KEY `boq_sec_id` (`boq_sec_id`),
  ADD KEY `boq_des_id` (`boq_des_id`),
  ADD KEY `boq_id` (`boq_id`),
  ADD KEY `boq_an_id` (`boq_an_id`),
  ADD KEY `boq_des_add_data_des_id` (`boq_des_add_data_des_id`);

--
-- Indexes for table `boq_des_add_data_des`
--
ALTER TABLE `boq_des_add_data_des`
  ADD PRIMARY KEY (`boq_des_add_data_des_id`),
  ADD KEY `boq_sec_id` (`boq_sec_id`),
  ADD KEY `boq_des_id` (`boq_des_id`),
  ADD KEY `boq_id` (`boq_id`),
  ADD KEY `boq_an_id` (`boq_an_id`);

--
-- Indexes for table `boq_des_data`
--
ALTER TABLE `boq_des_data`
  ADD PRIMARY KEY (`boq_des_data_id`),
  ADD KEY `boq_des_id` (`boq_des_id`),
  ADD KEY `boq_id` (`boq_id`),
  ADD KEY `boq_sec_id` (`boq_sec_id`),
  ADD KEY `boq_an_id` (`boq_an_id`);

--
-- Indexes for table `boq_mst`
--
ALTER TABLE `boq_mst`
  ADD PRIMARY KEY (`boq_id`);

--
-- Indexes for table `boq_section`
--
ALTER TABLE `boq_section`
  ADD PRIMARY KEY (`boq_sec_id`),
  ADD KEY `boq_id` (`boq_id`),
  ADD KEY `boq_an_id` (`boq_an_id`);

--
-- Indexes for table `client_mst`
--
ALTER TABLE `client_mst`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `company_person_detail`
--
ALTER TABLE `company_person_detail`
  ADD PRIMARY KEY (`cpd_id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `comp_allocate`
--
ALTER TABLE `comp_allocate`
  ADD PRIMARY KEY (`al_id`),
  ADD KEY `complain_id` (`complain_id`);

--
-- Indexes for table `comp_subvisitor`
--
ALTER TABLE `comp_subvisitor`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `complain_id` (`complain_id`);

--
-- Indexes for table `comp_visitor`
--
ALTER TABLE `comp_visitor`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `complain_id` (`complain_id`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`const_id`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `cont_emp`
--
ALTER TABLE `cont_emp`
  ADD PRIMARY KEY (`cont_emp_id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`dash_id`);

--
-- Indexes for table `dc_add_data`
--
ALTER TABLE `dc_add_data`
  ADD PRIMARY KEY (`dc_a_d_id`),
  ADD KEY `dc_dis_id` (`dc_dis_id`),
  ADD KEY `dc_id` (`dc_id`);

--
-- Indexes for table `dc_data`
--
ALTER TABLE `dc_data`
  ADD PRIMARY KEY (`dc_data_id`),
  ADD KEY `dc_id` (`dc_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `dc_dis`
--
ALTER TABLE `dc_dis`
  ADD PRIMARY KEY (`dc_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `delivery_challan`
--
ALTER TABLE `delivery_challan`
  ADD PRIMARY KEY (`dc_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `gst_detail`
--
ALTER TABLE `gst_detail`
  ADD PRIMARY KEY (`gst_id`);

--
-- Indexes for table `gst_rate`
--
ALTER TABLE `gst_rate`
  ADD PRIMARY KEY (`gst_rate_id`);

--
-- Indexes for table `indoor_vrf`
--
ALTER TABLE `indoor_vrf`
  ADD PRIMARY KEY (`in_vrf_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `invoice_add_data`
--
ALTER TABLE `invoice_add_data`
  ADD PRIMARY KEY (`inv_a_d_id`),
  ADD KEY `inv_dis_id` (`inv_dis_id`),
  ADD KEY `inv_id` (`inv_id`);

--
-- Indexes for table `invoice_data`
--
ALTER TABLE `invoice_data`
  ADD PRIMARY KEY (`inv_data_id`),
  ADD KEY `inv_id` (`inv_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `inv_dis`
--
ALTER TABLE `inv_dis`
  ADD PRIMARY KEY (`inv_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `item_adp`
--
ALTER TABLE `item_adp`
  ADD PRIMARY KEY (`iadp_id`);

--
-- Indexes for table `item_copper`
--
ALTER TABLE `item_copper`
  ADD PRIMARY KEY (`ic_id`);

--
-- Indexes for table `item_ducting`
--
ALTER TABLE `item_ducting`
  ADD PRIMARY KEY (`id_id`);

--
-- Indexes for table `item_insulation`
--
ALTER TABLE `item_insulation`
  ADD PRIMARY KEY (`ii_id`);

--
-- Indexes for table `item_metal_accessories`
--
ALTER TABLE `item_metal_accessories`
  ADD PRIMARY KEY (`ima_id`);

--
-- Indexes for table `item_pipe`
--
ALTER TABLE `item_pipe`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `item_valves`
--
ALTER TABLE `item_valves`
  ADD PRIMARY KEY (`iv_id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `order_acceptance`
--
ALTER TABLE `order_acceptance`
  ADD PRIMARY KEY (`oa_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `other_perosn_detail`
--
ALTER TABLE `other_perosn_detail`
  ADD PRIMARY KEY (`opd_id`);

--
-- Indexes for table `outdoor_vrf`
--
ALTER TABLE `outdoor_vrf`
  ADD PRIMARY KEY (`out_vrf_id`);

--
-- Indexes for table `pi`
--
ALTER TABLE `pi`
  ADD PRIMARY KEY (`pi_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `pi_add_data`
--
ALTER TABLE `pi_add_data`
  ADD PRIMARY KEY (`pi_a_d_id`),
  ADD KEY `pi_dis_id` (`pi_dis_id`),
  ADD KEY `pi_id` (`pi_id`);

--
-- Indexes for table `pi_data`
--
ALTER TABLE `pi_data`
  ADD PRIMARY KEY (`pi_data_id`),
  ADD KEY `pi_id` (`pi_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `pi_dis`
--
ALTER TABLE `pi_dis`
  ADD PRIMARY KEY (`pi_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `pmc`
--
ALTER TABLE `pmc`
  ADD PRIMARY KEY (`pmc_id`);

--
-- Indexes for table `po_add_data`
--
ALTER TABLE `po_add_data`
  ADD PRIMARY KEY (`po_a_d_id`),
  ADD KEY `po_id` (`po_id`),
  ADD KEY `po_dis_id` (`po_dis_id`);

--
-- Indexes for table `po_data`
--
ALTER TABLE `po_data`
  ADD PRIMARY KEY (`po_data_id`),
  ADD KEY `pdt_id` (`pdt_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `po_dis`
--
ALTER TABLE `po_dis`
  ADD PRIMARY KEY (`po_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `pr`
--
ALTER TABLE `pr`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pdt_id`),
  ADD KEY `gst_rate_id` (`gst_rate_id`);

--
-- Indexes for table `productsuppler`
--
ALTER TABLE `productsuppler`
  ADD PRIMARY KEY (`pdt_id`),
  ADD KEY `gst_rate_id` (`gst_rate_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`quo_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `quotation_add_data`
--
ALTER TABLE `quotation_add_data`
  ADD PRIMARY KEY (`quo_a_d_id`),
  ADD KEY `quo_dis_id` (`quo_dis_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `quotation_data`
--
ALTER TABLE `quotation_data`
  ADD PRIMARY KEY (`quo_data_id`),
  ADD KEY `quo_id` (`quo_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `quo_dis`
--
ALTER TABLE `quo_dis`
  ADD PRIMARY KEY (`quo_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `sub_user`
--
ALTER TABLE `sub_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `supplier_mst`
--
ALTER TABLE `supplier_mst`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `vrf`
--
ALTER TABLE `vrf`
  ADD PRIMARY KEY (`vrf_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `architect`
--
ALTER TABLE `architect`
  MODIFY `arc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_detail`
--
ALTER TABLE `bank_detail`
  MODIFY `bank_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `boq_annexure`
--
ALTER TABLE `boq_annexure`
  MODIFY `boq_an_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `boq_des`
--
ALTER TABLE `boq_des`
  MODIFY `boq_des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `boq_des_add_data`
--
ALTER TABLE `boq_des_add_data`
  MODIFY `boq_des_add_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `boq_des_add_data_des`
--
ALTER TABLE `boq_des_add_data_des`
  MODIFY `boq_des_add_data_des_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `boq_des_data`
--
ALTER TABLE `boq_des_data`
  MODIFY `boq_des_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `boq_mst`
--
ALTER TABLE `boq_mst`
  MODIFY `boq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `boq_section`
--
ALTER TABLE `boq_section`
  MODIFY `boq_sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `client_mst`
--
ALTER TABLE `client_mst`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_person_detail`
--
ALTER TABLE `company_person_detail`
  MODIFY `cpd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `comp_allocate`
--
ALTER TABLE `comp_allocate`
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `comp_subvisitor`
--
ALTER TABLE `comp_subvisitor`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comp_visitor`
--
ALTER TABLE `comp_visitor`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `const_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractor`
--
ALTER TABLE `contractor`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cont_emp`
--
ALTER TABLE `cont_emp`
  MODIFY `cont_emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `dash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dc_add_data`
--
ALTER TABLE `dc_add_data`
  MODIFY `dc_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `dc_data`
--
ALTER TABLE `dc_data`
  MODIFY `dc_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `dc_dis`
--
ALTER TABLE `dc_dis`
  MODIFY `dc_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `delivery_challan`
--
ALTER TABLE `delivery_challan`
  MODIFY `dc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gst_detail`
--
ALTER TABLE `gst_detail`
  MODIFY `gst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `gst_rate`
--
ALTER TABLE `gst_rate`
  MODIFY `gst_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `indoor_vrf`
--
ALTER TABLE `indoor_vrf`
  MODIFY `in_vrf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `invoice_add_data`
--
ALTER TABLE `invoice_add_data`
  MODIFY `inv_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `invoice_data`
--
ALTER TABLE `invoice_data`
  MODIFY `inv_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `inv_dis`
--
ALTER TABLE `inv_dis`
  MODIFY `inv_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `item_adp`
--
ALTER TABLE `item_adp`
  MODIFY `iadp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_copper`
--
ALTER TABLE `item_copper`
  MODIFY `ic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_ducting`
--
ALTER TABLE `item_ducting`
  MODIFY `id_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_insulation`
--
ALTER TABLE `item_insulation`
  MODIFY `ii_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_metal_accessories`
--
ALTER TABLE `item_metal_accessories`
  MODIFY `ima_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_pipe`
--
ALTER TABLE `item_pipe`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_valves`
--
ALTER TABLE `item_valves`
  MODIFY `iv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_acceptance`
--
ALTER TABLE `order_acceptance`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `other_perosn_detail`
--
ALTER TABLE `other_perosn_detail`
  MODIFY `opd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `outdoor_vrf`
--
ALTER TABLE `outdoor_vrf`
  MODIFY `out_vrf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pi`
--
ALTER TABLE `pi`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pi_add_data`
--
ALTER TABLE `pi_add_data`
  MODIFY `pi_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pi_data`
--
ALTER TABLE `pi_data`
  MODIFY `pi_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pi_dis`
--
ALTER TABLE `pi_dis`
  MODIFY `pi_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pmc`
--
ALTER TABLE `pmc`
  MODIFY `pmc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `po_add_data`
--
ALTER TABLE `po_add_data`
  MODIFY `po_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `po_data`
--
ALTER TABLE `po_data`
  MODIFY `po_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `po_dis`
--
ALTER TABLE `po_dis`
  MODIFY `po_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pr`
--
ALTER TABLE `pr`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `productsuppler`
--
ALTER TABLE `productsuppler`
  MODIFY `pdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `quo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quotation_add_data`
--
ALTER TABLE `quotation_add_data`
  MODIFY `quo_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `quotation_data`
--
ALTER TABLE `quotation_data`
  MODIFY `quo_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `quo_dis`
--
ALTER TABLE `quo_dis`
  MODIFY `quo_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sub_user`
--
ALTER TABLE `sub_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supplier_mst`
--
ALTER TABLE `supplier_mst`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vrf`
--
ALTER TABLE `vrf`
  MODIFY `vrf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quotation_add_data`
--
ALTER TABLE `quotation_add_data`
  ADD CONSTRAINT `quotation_add_data_ibfk_1` FOREIGN KEY (`quo_dis_id`) REFERENCES `quo_dis` (`quo_dis_id`);
--
-- Database: `cab`
--
CREATE DATABASE IF NOT EXISTS `cab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cab`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `pickup` int(11) NOT NULL,
  `pickup_datetime` int(11) NOT NULL,
  `dropoff` int(11) NOT NULL,
  `dropoff_datetime` int(11) NOT NULL,
  `vtid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `did` int(11) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `vtid` int(11) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `pay_type` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `vtid` int(11) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `vtid` (`vtid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`did`),
  ADD KEY `vtid` (`vtid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vtid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vtid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `chatapp`
--
CREATE DATABASE IF NOT EXISTS `chatapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chatapp`;

-- --------------------------------------------------------

--
-- Table structure for table `chat_msg`
--

CREATE TABLE `chat_msg` (
  `chatid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `from_uid` int(11) NOT NULL,
  `chat_msg` text NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_msg`
--

INSERT INTO `chat_msg` (`chatid`, `to_uid`, `from_uid`, `chat_msg`, `timestamp`, `status`) VALUES
(1, 2, 1, 'Hiii....', '0000-00-00 00:00:00', 1),
(2, 1, 2, 'Heyy... Dude', '0000-00-00 00:00:00', 1),
(3, 2, 1, 'How are you???!!!', '0000-00-00 00:00:00', 1),
(4, 2, 1, 'I\'m Mehul', '2019-11-21 04:11:21', 1),
(5, 2, 1, 'Heyy', '2019-11-21 04:11:21', 1),
(6, 2, 1, 'Heyy', '2019-11-21 04:11:21', 1),
(7, 2, 1, 'Heyy', '2019-11-21 04:11:21', 1),
(8, 1, 2, 'I\'m Harsh', '2019-11-21 04:11:21', 1),
(9, 2, 1, 'Hmm', '2019-11-21 05:11:21', 1),
(10, 2, 1, 'Hmm', '2019-11-21 05:11:21', 1),
(11, 2, 1, 'Bolo', '2019-11-21 05:11:21', 1),
(12, 1, 2, 'Tu Bol', '2019-11-21 05:11:21', 1),
(13, 2, 1, 'Hmm', '2019-11-21 05:11:21', 1),
(14, 2, 1, 'Hmm', '2019-11-21 05:11:21', 1),
(15, 2, 1, 'Hmm', '2019-11-21 05:00:00', 1),
(16, 2, 1, 'Hmm', '2019-11-21 05:00:00', 1),
(17, 2, 1, 'aww', '2019-11-21 05:00:00', 1),
(18, 2, 1, 'Heee', '0000-00-00 00:00:00', 1),
(19, 2, 1, 'Oww', '0000-00-00 00:00:00', 1),
(20, 1, 2, 'Tu Bol', '0000-00-00 00:00:00', 1),
(21, 1, 2, 'Heyyy ', '0000-00-00 00:00:00', 1),
(22, 1, 2, 'Dude', '0000-00-00 00:00:00', 1),
(23, 1, 2, 'Welcome', '0000-00-00 00:00:00', 1),
(24, 2, 1, 'Thanks', '0000-00-00 00:00:00', 1),
(25, 1, 2, 'Where are you now', '0000-00-00 00:00:00', 1),
(26, 2, 1, 'At Home', '0000-00-00 00:00:00', 1),
(27, 1, 2, 'Great then i\'m comming', '0000-00-00 00:00:00', 1),
(28, 2, 1, 'Okk', '0000-00-00 00:00:00', 1),
(29, 2, 1, 'np', '0000-00-00 00:00:00', 1),
(30, 2, 1, 'Are you online??', '0000-00-00 00:00:00', 1),
(33, 1, 2, 'sry dude', '0000-00-00 00:00:00', 1),
(34, 2, 1, 'Okk', '0000-00-00 00:00:00', 1),
(35, 3, 1, 'Heyyy Mann', '0000-00-00 00:00:00', 1),
(36, 1, 3, 'Hiii', '0000-00-00 00:00:00', 1),
(37, 3, 1, 'How are you??', '0000-00-00 00:00:00', 1),
(38, 1, 3, 'I\'m Fine...\n what about you??', '0000-00-00 00:00:00', 1),
(39, 3, 1, 'I\'m also good', '0000-00-00 00:00:00', 1),
(40, 1, 2, 'Heyy dude', '0000-00-00 00:00:00', 1),
(41, 1, 2, 'Good morning ', '0000-00-00 00:00:00', 1),
(42, 2, 1, 'Very Good morning', '0000-00-00 00:00:00', 1),
(43, 1, 2, 'Heyy Dude', '0000-00-00 00:00:00', 1),
(44, 1, 2, 'What are you doing', '0000-00-00 00:00:00', 1),
(45, 2, 1, 'Hii', '0000-00-00 00:00:00', 1),
(46, 2, 1, 'Nothing', '0000-00-00 00:00:00', 1),
(47, 1, 2, 'Okk', '0000-00-00 00:00:00', 1),
(48, 1, 2, 'Today can we meet', '0000-00-00 00:00:00', 1),
(49, 2, 1, 'Okk', '0000-00-00 00:00:00', 1),
(50, 2, 3, 'Hello Dear...', '2019-11-22 17:32:21', 1),
(51, 3, 2, 'Hello', '2019-11-22 17:32:27', 1),
(52, 3, 1, 'Hii Babs', '2019-11-22 18:13:10', 1),
(53, 1, 3, 'Hii \n', '2019-11-22 18:13:20', 1),
(55, 3, 1, 'Hiii', '2019-11-23 00:02:25', 1),
(56, 3, 1, 'Heyy', '2019-11-23 00:25:54', 1),
(57, 1, 3, 'Hiii', '2019-11-23 00:28:12', 1),
(58, 1, 3, 'Bol', '2019-11-23 00:28:41', 1),
(59, 3, 1, 'Nothig', '2019-11-23 00:29:33', 1),
(60, 3, 1, 'Just Checking', '2019-11-23 00:29:41', 1),
(62, 3, 2, 'Hiii', '2019-11-23 00:38:28', 1),
(63, 2, 3, 'Bol Babs', '2019-11-23 00:38:40', 1),
(64, 3, 2, 'Nothig', '2019-11-23 00:38:48', 1),
(65, 1, 2, 'Heyy', '2019-11-23 00:41:04', 1),
(66, 2, 1, 'hiii', '2019-11-23 21:44:05', 1),
(67, 1, 2, 'Hiii', '2019-11-23 21:44:37', 1),
(68, 1, 3, 'Hiii', '2019-12-14 10:14:38', 1),
(69, 3, 1, 'Bol', '2019-12-14 10:14:50', 1),
(70, 1, 3, 'Hiii', '2020-03-21 17:15:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `email`, `pwd`, `timestamp`, `status`) VALUES
(1, 'Mehul', 'm@g.com', '123456', '2020-03-21 23:24:00', 0),
(2, 'Harsh', 'h@g.com', '123456', '2019-11-23 23:02:00', 0),
(3, 'Mann', 'mn@g.com', '123456', '2020-03-22 00:08:31', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_msg`
--
ALTER TABLE `chat_msg`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_msg`
--
ALTER TABLE `chat_msg`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `cs`
--
CREATE DATABASE IF NOT EXISTS `cs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `comp_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(70) NOT NULL,
  `date` datetime NOT NULL,
  `problem` varchar(70) NOT NULL,
  `comp_status` varchar(10) NOT NULL,
  `solution` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`comp_id`, `name`, `email`, `phone`, `address`, `date`, `problem`, `comp_status`, `solution`) VALUES
(2, 'Mehul', 'mehul@gmail.com', '9586547852', 'hcbv jfhcvjb', '2018-07-14 13:56:34', 'hJHvdjhvjJhvsvdjhjbvj', 'Pending', ''),
(3, 'Mehul', 'mehul@gmail.com', '9586547852', 'hcbv jfhcvjb', '2018-07-14 13:57:24', 'hJHvdjhvjJhvsvdjhjbvj', 'Done', 'Teasted');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_add_data`
--

CREATE TABLE `quotation_add_data` (
  `quo_a_d_id` int(11) NOT NULL,
  `add_discription` varchar(200) NOT NULL,
  `qua` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `taxable_value` float NOT NULL,
  `gst_amount` float NOT NULL,
  `total_amount` float NOT NULL,
  `quo_dis_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_add_data`
--

INSERT INTO `quotation_add_data` (`quo_a_d_id`, `add_discription`, `qua`, `unit_price`, `taxable_value`, `gst_amount`, `total_amount`, `quo_dis_id`, `quo_id`) VALUES
(1, '25mm', 2, 45, 90, 21.6, 111.6, 1, 12),
(2, '30mm', 5, 40, 200, 48, 248, 1, 12),
(3, 'new', 55, 10, 550, 154, 704, 2, 12),
(4, 'bdfub', 20, 12, 240, 67.2, 307.2, 2, 12),
(7, '15mm', 5, 12, 60, 16.8, 76.8, 4, 14),
(8, '36mm', 12, 130, 1560, 436.8, 1996.8, 4, 14),
(11, '5mm', 1, 12.8, 12.8, 3.07, 15.87, 6, 16),
(12, '6mm', 2, 125, 250, 60, 310, 6, 16),
(13, '10m', 12, 125.3, 1503.6, 360.86, 1864.46, 7, 16),
(14, '20mm', 1, 120, 120, 38.4, 158.4, 8, 17),
(15, '30mm', 2, 110, 220, 70.4, 290.4, 8, 17),
(16, '122mm', 1, 15, 15, 4.8, 19.8, 8, 17),
(17, '10m', 1, 120, 120, 33.6, 153.6, 9, 17),
(18, '2m', 1, 200, 200, 56, 256, 9, 17),
(29, 'test', 2, 99, 198, 47.52, 245.52, 14, 18),
(30, 'Test2', 3, 60, 180, 43.2, 223.2, 14, 18),
(31, 'Test3', 1, 200, 200, 48, 248, 14, 18),
(32, '10m', 1, 120, 120, 33.6, 153.6, 15, 18),
(33, '2m', 1, 200, 200, 56, 256, 15, 18),
(34, '20mm', 1, 120, 120, 38.4, 158.4, 16, 18),
(35, '30mm', 2, 110, 220, 70.4, 290.4, 16, 18),
(36, '122mm', 1, 15, 15, 4.8, 19.8, 16, 18);

-- --------------------------------------------------------

--
-- Table structure for table `quo_dis`
--

CREATE TABLE `quo_dis` (
  `quo_dis_id` int(11) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `dis_val_type` varchar(20) NOT NULL,
  `pdt_add_dis` varchar(200) NOT NULL,
  `pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quo_dis`
--

INSERT INTO `quo_dis` (`quo_dis_id`, `discription`, `dis_val_type`, `pdt_add_dis`, `pdt_id`) VALUES
(1, 'Hitachi', '', '', 3),
(2, 'Multi V_CST_Mechanical Part', '', '', 4),
(4, 'Multi V_CST_Mechanical Part', '', '', 4),
(6, 'LG', '', ',,', 1),
(7, 'Hitachi', '', ',,', 3),
(8, 'MS ', '', ',,', 5),
(9, 'Multi V_CST_Mechanical Part', '', ',,', 4),
(14, 'Hitachi', '', '', 3),
(15, 'Multi V_CST_Mechanical Part', '', '', 4),
(16, 'MS ', '', '', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `quotation_add_data`
--
ALTER TABLE `quotation_add_data`
  ADD PRIMARY KEY (`quo_a_d_id`),
  ADD KEY `quo_dis_id` (`quo_dis_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `quo_dis`
--
ALTER TABLE `quo_dis`
  ADD PRIMARY KEY (`quo_dis_id`),
  ADD KEY `pdt_id` (`pdt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotation_add_data`
--
ALTER TABLE `quotation_add_data`
  MODIFY `quo_a_d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quo_dis`
--
ALTER TABLE `quo_dis`
  MODIFY `quo_dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `pickup` int(11) NOT NULL,
  `pickup_datetime` int(11) NOT NULL,
  `dropoff` int(11) NOT NULL,
  `dropoff_datetime` int(11) NOT NULL,
  `vtid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `did` int(11) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `vtid` int(11) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `subject`, `text`, `status`) VALUES
(1, 'Test', 'eaasxfcd', 1),
(2, 'Test2', 'gvhhbg', 1),
(3, 'Test3', 'vchchc\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `pay_type` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `price`, `qty`) VALUES
(1, 'Raju', 'Human', 12000, 1),
(2, 'Hondas', 'Bike', 20111, 20),
(3, 'Suzuki', 'Car', 200000, 1100),
(4, 'XioMi', 'Mobile', 12000, 2000),
(5, 'Vivo', 'mobile', 15000, 200),
(6, 'ifv', 'nikn', 152, 15),
(7, 'tv', 'hbh', 511, 641),
(8, 'djhg', 'idun', 15, 156),
(9, 'odn', 'ljdnvv', 16, 65),
(10, 'sd', 'khj', 654, 685),
(11, 'dfj', 'jhdbd', 515, 651),
(12, 'fkvjc', 'kjkd', 6565, 651),
(13, 'sdzkj', 'kjd', 655, 65),
(14, 'kfjk', 'kjnfc', 64, 61),
(15, 'dfj', 'jkdfj', 5, 651),
(16, 'ggvj', 'jvb', 51, 51);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `vtid` int(11) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `vtid` (`vtid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`did`),
  ADD KEY `vtid` (`vtid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`vtid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `vtid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `edunet`
--
CREATE DATABASE IF NOT EXISTS `edunet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `edunet`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `emailid` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`a_id`, `a_name`, `emailid`, `password`) VALUES
(1, 'Chintu Thakkar', 'brindachanchad00@gmail.com', 'YnJpbmRhNTUwMA==');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_photo_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`category_id`, `category_name`, `category_photo_path`) VALUES
(3, 'design', '15917312139468809195edfe40d728e9download.png'),
(5, 'Operating System', '15917811896519576025ee0a74584795256758_e35d_5.jpg'),
(6, 'programing', '1592027077145030595ee467c52de07programing.jpg'),
(9, 'security', '15928313572439681215ef0ad7d03b49download.jpg'),
(10, 'game development', '159354419221301733045efb8e00a1761download.jpg'),
(11, 'hardware', '15935442334834141415efb8e2926096download.jpg'),
(12, 'network', '159354437314582024635efb8eb5f2901download.jpg'),
(13, 'other', '15927142552312223605eeee40fabd5fdownload.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcertificate`
--

CREATE TABLE `tblcertificate` (
  `certificate_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_description` varchar(50) NOT NULL,
  `course_full_description` varchar(200) NOT NULL,
  `course_photo_path` varchar(150) NOT NULL,
  `course_status` varchar(20) NOT NULL,
  `course_start_date` date NOT NULL,
  `course_end_date` date NOT NULL,
  `course_prize` int(11) NOT NULL,
  `course_t_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`course_id`, `course_name`, `course_description`, `course_full_description`, `course_photo_path`, `course_status`, `course_start_date`, `course_end_date`, `course_prize`, `course_t_id`, `category_id`) VALUES
(1011, 'programing c', 'course for 1 month ', 'fregregre', '15921559775029724405ee65f49b9d2115920275221648089305ee4698224d0fc.jpg', 'Active', '2020-07-30', '2020-08-30', 300, 1014, 6),
(1013, 'unix course', 'course for unix', 'Introduction to UNIX Course. In this course, students study the fundamentals of the UNIX operating system, such as file editing, data retrieval, executing processes and creating directories. ', '1592167571313845245ee68c93c4f11675244_6b34_3.jpg', 'De-Active', '2020-06-30', '2020-08-03', 250, 1015, 5),
(1015, 'Spring & Hibernate', 'The Spring Framework is an application framework', 'The frameworks core features can be used by any Java application, but there are extensions for building web applications on top of the Java EE platform. ', '15926602641376079655eee1128eccaadownload.png', 'Active', '2020-07-18', '2020-08-20', 250, 1032, 6),
(1016, 'Bootstrap', 'In this course, you’ll see how Bootstrap makes it ', 'You’ll learn about Bootstrap’s grid system to construct complex layouts. Then, you’ll style and populate your site using Bootstrap’s utility classes and components.', '159354296913343299375efb893920dacdownload (1).jpg', 'De-Active', '2020-07-05', '2020-08-05', 350, 1032, 3),
(1018, 'mysql using cmd', 'Learn how to Create, Use and Handle a MySQL.', 'MySQL Database Being the Second most widely used Relational Database makes it one of the database to learn if you are looking forward to develop a database driven application.', '159608490814205462305f2252ac09e27download.png', 'Active', '2020-08-15', '2020-09-15', 120, 1036, 13),
(1019, 'art for videogame', 'Imagine how cool your game would look in pixel art', 'This section was added by popular demand as something that was missing from the course. Thank you for you patience, I wanted to make sure everything was as good as I could make it. Enjoy!', '15967767694329097055f2ce14194172397936_513f_3.jpg', 'Active', '2020-09-23', '2020-10-23', 420, 1015, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblcredit`
--

CREATE TABLE `tblcredit` (
  `credit_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `no_of_credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcredit`
--

INSERT INTO `tblcredit` (`credit_id`, `u_id`, `no_of_credit`) VALUES
(6, 10050, 300),
(9, 10060, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditdemo`
--

CREATE TABLE `tblcreditdemo` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditexam`
--

CREATE TABLE `tblcreditexam` (
  `ce_id` int(11) NOT NULL,
  `ce_question` varchar(200) NOT NULL,
  `ce_op1` varchar(50) NOT NULL,
  `ce_op2` varchar(50) NOT NULL,
  `ce_op3` varchar(50) NOT NULL,
  `ce_op4` varchar(50) NOT NULL,
  `ans` int(11) NOT NULL,
  `ce_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcreditexam`
--

INSERT INTO `tblcreditexam` (`ce_id`, `ce_question`, `ce_op1`, `ce_op2`, `ce_op3`, `ce_op4`, `ans`, `ce_date`) VALUES
(99999999, 'who is the prime minister of India?', 'Narendra Modi', 'Rahul Gandhi', 'Amit Shah', 'Vijay Rupani', 3, '2020-08-10'),
(100000000, 'which of the following section does not exits in a slide layout?', 'title', 'list', 'animation', 'chart', 3, '2020-08-10'),
(100000001, 'who is father of the computer?', 'Bill Gates', 'Mark zukerburg', 'Charles Babej', 'None of the above', 3, '2020-08-10'),
(100000002, 'who is the founder of plastic??', 'Alekzander parkis', 'Thomas alwa adison', 'vikram sarabhai', 'Newton', 1, '2020-08-10'),
(100000003, 'world\'s biggest statue?', 'statue of liberty', 'statue of shivaji', 'statue of trump', 'statue of unity', 4, '2020-08-10'),
(100000004, 'Who is the father of Geometry?', 'Aristotle', 'Euclid', 'Pythagoras', 'Kepler', 2, '2020-08-10'),
(100000005, 'Who was known as Iron man of India?', 'Govind Ballabh Pant', 'Jawaharlal Nehru', 'Subhash Chandra Bose', 'Sardar Vallabhbhai Patel', 4, '2020-08-10'),
(100000006, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 2, '2020-08-10'),
(100000007, '\'.MOV\' extension refers usually to what kind of file?', 'Image file', 'Animation/movie file', 'Audio file', 'MS Office document', 2, '2020-08-10'),
(100000012, '	 In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1880s', '1440s', '1234s', '12340', 1, '2020-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_place` varchar(50) NOT NULL,
  `event_description` varchar(150) NOT NULL,
  `event_photo_path` varchar(100) NOT NULL,
  `event_start_regestration_date` date NOT NULL,
  `event_end_regestration_date` date NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`event_id`, `event_name`, `event_place`, `event_description`, `event_photo_path`, `event_start_regestration_date`, `event_end_regestration_date`, `event_date`, `event_time`, `event_fees`) VALUES
(10021, 'IOT development ', 'Benguluru', 'It is the best workshop for student who wants to make their future bright on IOT', '15921680146474616685ee68e4e33bf4download.jpg', '2020-08-07', '2020-08-14', '2020-08-21', '16:00:00', 250),
(10022, 'how to make money', 'surat', 'best workshop for student who wants to make money from their home', '1592168282633320185ee68f5add3d1download (1).png', '2020-07-31', '2020-08-07', '2020-08-14', '15:30:00', 250),
(10039, 'python with djano', 'Chennai', 'De?ne your data models entirely in Python. You get a rich, dynamic database-access API for free — but you can still write SQL if needed.', '15924647265413249735eeb1556e13eddownload (1).png', '2020-07-02', '2020-07-09', '2020-07-16', '14:00:00', 150),
(10040, 'Oracle Openworld', 'Pune,maharashtra', 'Oracle OpenWorld is an annual convention for business decision-makers, IT management, and line-of-business end users. ', '159351064914624827325efb0af92cb11download.jpg', '2020-08-12', '2020-08-19', '2020-08-26', '15:30:00', 250);

-- --------------------------------------------------------

--
-- Table structure for table `tblexam`
--

CREATE TABLE `tblexam` (
  `exam_id` int(11) NOT NULL,
  `exam_no` varchar(20) NOT NULL,
  `exam_name` varchar(150) NOT NULL,
  `week_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexam`
--

INSERT INTO `tblexam` (`exam_id`, `exam_no`, `exam_name`, `week_id`, `course_id`) VALUES
(122342, 'exam 1', 'Basic Concept Questions', 10000008, 1011),
(122343, 'exam 2', 'Some Important Statements Questions', 10000009, 1011),
(122344, 'exam 3', 'Question Related To Looping Statement', 10000010, 1011),
(122345, 'exam 4', 'Question For Function and Array to Logical', 10000011, 1011),
(122352, 'exam 1', 'exam of Basic Commands and Utilities.', 10000012, 1013),
(122353, 'exam 2', 'exam of File System, the Shell, and Vim Editor.', 10000013, 1013),
(122354, 'exam 3', 'exam of Bash Shell, Tcsh Shell, and Shell Programming', 10000014, 1013),
(122355, 'exam 4', 'exam of Skill Standards', 10000015, 1013),
(122356, 'exam 1', 'introduction bootstarp', 10000016, 1016),
(122357, 'exam 2', 'exam of nested rows and columns  of bootstarp', 10000017, 1016),
(122358, 'exam 3', 'exam of blockquotes and lists of Bootstrap', 10000018, 1016),
(122359, 'exam 4', 'exam of icons of Bootstrap', 10000019, 1016),
(122360, 'exam 1', 'exam of introduction', 10000020, 1018),
(122361, 'exam 2', 'exam of setting environment', 10000021, 1018),
(122362, 'exam 3', 'exam of beginning mysql', 10000024, 1018),
(122363, 'exam 4', 'last exam', 10000023, 1018);

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `f_emailid` varchar(100) NOT NULL,
  `f_ph_no` bigint(11) NOT NULL,
  `f_description` varchar(300) NOT NULL,
  `f_photo_path` varchar(150) NOT NULL,
  `f_qualification` varchar(20) NOT NULL,
  `f_pwd` varchar(30) NOT NULL,
  `f_status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`f_id`, `f_name`, `f_emailid`, `f_ph_no`, `f_description`, `f_photo_path`, `f_qualification`, `f_pwd`, `f_status`) VALUES
(1014, 'Rekha pichholiya', 'rekhapichholiya@gmail.com', 7202021094, 'I am expert in Artificial Intelligence', '15959188529243407285f1fca04f1ed7IMG_7495.JPG', 'bca,mca', 'cmVraGExMjM0NQ==', 'Active'),
(1015, 'Dharani Gandhi', 'dharanigandhi@gmail.com', 7202021094, 'i am java expert', '15935411847910031775efb82407e0adIMG-20190203-WA0037.jpg', 'bca,mca', 'ZGhhcmFuaTEyMzQ1', 'Active'),
(1032, 'Pratiksha Patel', 'pratikshapatel@gmail.com', 7202021094, 'I am expert in java .... you have any doubts regarding to java you can contact me', '159354066612153293605efb803ae90ffIMG_3908.JPG', 'bca,mca,phd', 'cHJhdGlrc2hhMTIzNDU=', 'Active'),
(1036, 'Riddhi Vyas', 'riddhivyas@gmail.com', 7202021094, 'I am expert in every field', '15935408706377695695efb8106ed12bIMG_3943.JPG', 'Bca,Mca,Mphill', 'cmlkZGhpMTIzNDU=', 'Active'),
(1037, 'Piyush Arora', 'piyusharora@gmail.com', 7202021094, 'I am expert in spring framework', '159354097710164750955efb81711b97cIMG_3925.JPG', 'Btech,Mtech', 'cGl5dXNoMTIzNDU=', 'De-Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `feedback_id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`feedback_id`, `email_id`, `message`) VALUES
(100000003, 'brindachanchad00@gmail.com', 'best website ever i have ever seen in my life\r\n'),
(100000004, 'rajni@gmail.com', 'keep it up edunet'),
(100000005, 'priya@gmail.com', 'love the website'),
(100000006, 'eva@gmail.com', 'love the edunet site most......'),
(100000007, 'brindachanchad55@gmail.com', 'best'),
(100000008, 'brinda@gmail.com', 'nice one'),
(100000009, 'brinda@gmail.com', 'best website\r\n'),
(100000010, 'edunet42020@gmail.com', 'bretghbvc'),
(100000012, 'rajni@gmail.com', 'gfgvcrgyft');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `m_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`m_id`, `user_id`, `f_id`, `email_id`, `message`) VALUES
(14, 10050, 1014, 'brindachanchad00@gmail.com', 'i just wanted to know how to run c program from macbook');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(50) NOT NULL,
  `news_description` varchar(400) NOT NULL,
  `news_date` date NOT NULL,
  `news_image_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`news_id`, `news_title`, `news_description`, `news_date`, `news_image_path`) VALUES
(1000000005, 'Can Zuckerberg really make a privacy-friendly Face', 'Facebook grew into a colossus vacuuming up peoples information in every possible way and dissecting it to shoot targeted ads back at them.', '2020-08-09', '15919855227999935315ee3c572e84e268303346.jpg'),
(1000000007, ' New Qualcomm 5G platform to create next-gen robot', 'Chipmaker Qualcomm has unveiled a new 5G and AI-enabled robotics platform that would help developers and manufacturers create next generation of high-compute, low-power robots and drones for the consumer, enterprise, defense, industrial and professional service sectors.', '2020-08-10', '159246537911446264465eeb17e3ae36776439912 (1).jpg'),
(1000000008, 'Chinese apps banned in India', 'India’s move to ban 59 Chinese apps including TikTok found widespread support among the startup and tech community.', '2020-07-28', '15935475267374165405efb9b0673f4076708386.jpg'),
(1000000009, 'Australia to spend nearly $1 billion to boost cybe', 'SYDNEY - Australia will spend A$1.35 billion ($926.1 million) over the next 10 years to boost its cyber security defences, Prime Minister Scott Morrison said on Tuesday, as Canberra seeks to combat a wave of attacks.\r\n\r\nThe announcement comes just weeks after Australia said a \"sophisticated state-based actor\" has been attacking all levels of the government, political bodies, essential service prov', '2020-07-22', '15935475811817827425efb9b3d09361security.jpg'),
(1000000010, 'Cyber attack on NHAI email server, no data loss', ' The National Highways Authority of India (NHAI) on Monday said a cyber attack took place on its email server on Sunday night but prompt action resulted in no data loss. As a precaution, the Authority had shut down the server.\r\n\r\n\"A ransom ware attack on NHAI email server took place yesterday night. The attack was foiled by the security system and email servers were shut down from safety point of ', '2020-07-17', '15935476522782040015efb9b84c311276702372.jpg'),
(1000000011, 'Chinese malware Golang  targeting Windows', 'Cyber-security researchers have identified a new variant of cryptominer malware from China-based hackers that is targeting both Windows and Linux machines.', '2020-08-08', '15935478769980580505efb9c6409a8176702355.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `pass_id` int(11) NOT NULL,
  `pass_no` int(11) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`pass_id`, `pass_no`, `email_id`, `event_id`) VALUES
(13, 728396159, 'brindachanchad00@gmail.com', 10022),
(14, 946509103, 'rajnivirani@gmail.com', 10040),
(15, 736824935, 'brindachanchad00@gmail.com', 10040),
(16, 1228219043, '', 10040),
(17, 1481281718, '', 10040),
(18, 1052726042, 'brindachanchad00@gmail.com', 10040),
(19, 1017112039, 'brindachanchad00@gmail.com', 10040),
(20, 2133279407, 'bhumibhuva@gmail.com', 10040),
(21, 925814830, 'brindachanchad00@gmail.com', 10021);

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymentcourse`
--

CREATE TABLE `tblpaymentcourse` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpaymentcourse`
--

INSERT INTO `tblpaymentcourse` (`payment_id`, `amount`, `user_id`, `course_id`) VALUES
(9, 300, 10050, 1011),
(10, 300, 10050, 1011),
(11, 225, 10047, 1013),
(12, 300, 10047, 1011),
(13, 250, 10052, 1013),
(14, 350, 10050, 1016),
(17, 120, 10059, 1018);

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymentevent`
--

CREATE TABLE `tblpaymentevent` (
  `p_id` int(11) NOT NULL,
  `p_ammount` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpaymentevent`
--

INSERT INTO `tblpaymentevent` (`p_id`, `p_ammount`, `first_name`, `email`, `event_id`) VALUES
(11181, 250, 'brinda', 'brindachanchad00@gmail.com', 10022),
(11182, 250, 'brinda', 'brindachanchad00@gmail.com', 10022),
(11183, 250, 'brinda', 'brindachanchad00@gmail.com', 10022),
(11184, 250, 'rajni', 'rajnivirani@gmail.com', 10040),
(11185, 250, 'brinda', 'brindachanchad00@gmail.com', 10040),
(11186, 250, 'brinda', 'brindachanchad00@gmail.com', 10040),
(11187, 250, 'Riddhi Vyas', 'brindachanchad00@gmail.com', 10040),
(11188, 250, 'brinda', 'brindachanchad00@gmail.com', 10040),
(11189, 250, 'bhumi', 'bhumibhuva@gmail.com', 10040),
(11190, 250, 'Brinda', 'brindachanchad00@gmail.com', 10021);

-- --------------------------------------------------------

--
-- Table structure for table `tblpdf`
--

CREATE TABLE `tblpdf` (
  `pdf_id` int(11) NOT NULL,
  `pdf_name` varchar(30) NOT NULL,
  `pdf_path` varchar(200) NOT NULL,
  `pdf_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpdf`
--

INSERT INTO `tblpdf` (`pdf_id`, `pdf_name`, `pdf_path`, `pdf_image`) VALUES
(499, 'advance c', 'c.pdf', 'c.jpg'),
(501, 'Wearble Devices', '15918959717852044945ee267a37e92534. Child Safety Wearable Device.pdf', '15918959717852044945ee267a37e925download (1).jpg'),
(502, 'Machine Learning', '159198396916853965045ee3bf6174c1bMachineLearning.pdf', '159198396916853965045ee3bf6174c1bdownload (2).jpg'),
(503, 'java Progrmming', '15924642199861931885eeb135bea792JavaProgrammingninthedition.pdf', '15924642199861931885eeb135bea792java.PNG'),
(504, 'java complete reference', '15928094587101673765ef057f214b95Book Java 2--Complete Reference (5th Ed 2002).pdf', '15928094587101673765ef057f214b95download (1).jpg'),
(505, 'Programming with Java', '159280955114302594275ef0584f1668dBook Balagurusamy Programming with Java A Primer,3E.pdf', '159280955114302594275ef0584f1668ddownload (7).jpg'),
(506, 'java tutorials point', '15928095841262433335ef05870b23c8java_tutorial.pdf', '15928095841262433335ef05870b23c8download (2).jpg'),
(507, 'vb.net tutorial', '15928096272328413135ef0589b7108bvb.net_tutorial.pdf', '15928096272328413135ef0589b7108bdownload (3).jpg'),
(508, 'html tutorials point', '15928096608572439465ef058bcee618html_tutorial.pdf', '15928096608572439465ef058bcee618download (4).jpg'),
(509, 'javascript tutorial', '15928096971705188815ef058e195ca3javascript_tutorial.pdf', '15928096971705188815ef058e195ca3download (5).jpg'),
(510, 'computer network', '15928097335275446675ef059050b43bCN_PPT_1_VSP.pdf', '15928097335275446675ef059050b43bdownload (6).jpg'),
(511, 'PythonByJulien Danjou', '1593327689613880275ef84049a056fPythonByJulien Danjou.pdf', '1593327689613880275ef84049a056fdownload.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblquestion`
--

CREATE TABLE `tblquestion` (
  `qtf_id` int(11) NOT NULL,
  `qtf_question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquestion`
--

INSERT INTO `tblquestion` (`qtf_id`, `qtf_question`) VALUES
(1, 'mcqs'),
(2, 'multi select'),
(3, 'Descriptive');

-- --------------------------------------------------------

--
-- Table structure for table `tblquestionmcq`
--

CREATE TABLE `tblquestionmcq` (
  `q_id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `question_type` int(11) NOT NULL,
  `option1` varchar(20) NOT NULL,
  `option2` varchar(20) NOT NULL,
  `option3` varchar(20) NOT NULL,
  `option4` varchar(20) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `explanation` varchar(150) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquestionmcq`
--

INSERT INTO `tblquestionmcq` (`q_id`, `question`, `question_type`, `option1`, `option2`, `option3`, `option4`, `answer`, `explanation`, `exam_id`, `course_id`) VALUES
(123, 'The format identifier ‘%i’ is also used for _____ data type.', 1, 'char', 'int', 'float', 'double', '2', 'Both %d and %i can be used as a format identifier for int data type.', 122342, 1011),
(124, ' Which data type is most suitable for storing a number 65000 in a 32-bit system?', 1, ' signed short', 'unsigned short', 'long', ' int', '2', '65000 comes in the range of short (16-bit) which occupies the least memory. Signed short ranges from -32768 to 32767 and hence we should use unsigned ', 122342, 1011),
(125, 'Which of the following is a User-defined data type?', 1, 'typedef int Boolean', ' typedef enum {Mon, ', 'struct {char name[10', 'd) all of the mentio', '4', ' typedef and struct are used to define user-defined data types.', 122342, 1011),
(126, 'What is the size of an int data type?', 1, '4 bytes', '8 bytes', 'Depends on the syste', 'Cannot be determined', '3', 'he size of the data types depend on the system.', 122342, 1011),
(127, 'What is short int in C programming?', 1, 'The basic data type ', 'The basic data type ', 'Short is the qualifi', 'All of the mentioned', '3', ' None.', 122342, 1011),
(128, 'Which is correct with respect to the size of the data types?', 1, 'char > int > float', 'int > char > float', ' char < int < double', 'double > char > int', '3', 'har has less bytes than int and int has less bytes than double in any system', 122342, 1011),
(129, 'Which of the data types has the size that is variable?', 1, 'int', 'struct', ' float', ' double', '2', ' Since the size of the structure depends on its fields, it has a variable size.', 122342, 1011),
(130, 'C99 standard guarantees uniqueness of __________ characters for internal names.', 1, '31', '63', '12', '14', '2', 'ISO C99 compiler may consider only first 63 characters for internal names.', 122342, 1011),
(131, '. Which of the following is not a valid variable name declaration?', 1, 'int __a3;', 'int __3a;', ' int __A3;', ' None of the mention', '4', ' None.', 122342, 1011),
(132, 'All keywords in C are in ____________', 1, 'lowercase letters', 'uppercase letters', 'CamelCase letters', 'None of the mentione', '1', ' None.', 122342, 1011),
(133, ' What is the precedence of arithmetic operators (from highest to lowest)?', 1, ' %, *, /, +, –', ' %, +, /, *, –', '+, -, %, *, /', ' %, +, -, *, /', '1', ' None.', 122343, 1011),
(134, ' Which of the following is not an arithmetic operation?', 1, 'a * = 10;', ' a / = 10;', ' a ! = 10;', ' a % = 10;', '3', ' None.', 122343, 1011),
(135, 'Which of the following data type will throw an error on modulus operation(%)?', 1, 'char', 'short', 'int', 'float', '4', ' None.', 122343, 1011),
(136, 'Which among the following are the fundamental arithmetic operators, i.e, performing the desired operation can be done using that operator only?', 1, '+, –', '+, -, %', '+, -, *, /', '+, -, *, /, %', '1', ' None.', 122343, 1011),
(137, 'Operator % in C Language is called.?', 1, 'Percentage Operator', 'Quotient Operator', 'Modulus', 'Division', '3', 'Operator % is called Modulus or Modular or Modulo Division operator in C. It gives the reminder of the division.', 122343, 1011),
(138, 'Output of an arithmetic expression with integers and real numbers is ___ by default.?', 1, 'Integer', ' Real number', 'Depends on the numbe', 'None of the above', '2', 'Any arithmetic operation with both integers and real numbers yield output as Real number only.', 122343, 1011),
(139, 'Choose a right statement.  int a = 10 + 4.867;', 1, ' a = 10', ' a = 14.867', 'a = 14', 'compiler error.', '3', 'a is an int variable. So 10+4.867 = 14.867 is truncated to 14 and assigned to a.', 122343, 1011),
(140, 'Choose a right statement.  int a = 3.5 + 4.5;', 1, ' a = 0', ' a = 7', ' a = 8', ' a = 8.0', '3', '3.5 + 4.5 = 8.0 is a real number. So it is converted to downgraded to int value. So a = 8.', 122343, 1011),
(141, 'Choose a right statement.  float var = 3.5 + 4.5;', 1, 'var = 8.0', 'var = 8', 'var = 7', 'var = 0.0', '1', 'A float variable can hold a real number.', 122343, 1011),
(142, 'Choose a right statement.   int var = 3.5;', 1, ' a = 3.5', ' a = 3', ' a = 0', 'Compiler error', '2', 'a stores only integer value. So, 3.5 is truncated to 3.', 122343, 1011),
(144, 'which symbol will be used with grep command to match the patern pat  at the beginning of the line?', 1, '^pat', '$pat', 'pat$', 'pat^', '1', '^ is used to match pattern at the begining of the line', 122352, 1013),
(145, 'which command is used to sort the lines of data in a file in reverse order?', 1, 'sort', 'sh', 'st', 'sort -r', '4', '-r option of sort command is used for reverse sorting', 122352, 1013),
(146, 'which command is used to display the top of file', 1, 'cat', 'head ', 'more ', 'grep', '2', 'head is used to display file from the top', 122352, 1013),
(147, 'which command is used to remove directory?', 1, 'rd', 'rmdir', 'dldir', 'rdir', '2', 'rmdir is used to remove directory', 122352, 1013),
(148, 'which of the following keys is used to replace a single character with  new text?', 1, 'S', 's', 'r', 'C', '2', 's is used to replace single character', 122352, 1013),
(149, 'which command is used  to extract specific columns from the file?', 1, 'cat', 'cut', 'grep', 'paste', '2', 'cut is used to extract specific columns from the file', 122352, 1013),
(150, 'which of the following files will displayed by this command cat *ch* ', 1, 'patch', 'catch', '.ch', 'all of the above', '4', 'none', 122352, 1013),
(151, 'which of the following is not communicaion command?', 1, 'write', 'mesg', 'mail', 'grep', '4', 'grep is command-line utility', 122352, 1013),
(152, 'which command is used to remove file?', 1, 'remove', 'rm', 'mv', 'del', '2', 'rm is used to remove file', 122352, 1013),
(153, 'the agency that sits between the user and the UNIX system is called the', 1, 'logic', 'profile', 'shell', 'erxc', '3', 'the agency that sits between the user and the UNIX system is called the shell', 122352, 1013),
(154, 'single line comment', 1, '//', '/* */', '@', '#', '1', '// is used for single line comment', 122344, 1011),
(155, 'multi line comment', 1, '//', '/* */', '@', '#', '1', '/* bhedfb*/', 122345, 1011),
(156, 'bootstarp used for', 1, 'responsive website', 'backend', 'development', 'Nothing', '1', 'bootstarp used for making website responsive', 122356, 1016),
(157, 'Character data can be stored as ______________', 1, ' Fixed length string', 'Variable length stri', 'Either Fixed or Vari', 'None of the mentione', '3', ' To store character data we can use two definitions Char(20) /*fixed length */ Varchar(20) /* variable length */', 122360, 1018);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `result_id` int(11) NOT NULL,
  `r_score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`result_id`, `r_score`, `user_id`, `course_id`) VALUES
(17, 32, 10050, 1011),
(18, 60, 10047, 1013),
(19, 14, 10047, 1011),
(21, 0, 10052, 1013),
(22, 95, 10050, 1013),
(23, 25, 10050, 1016);

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `score_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `no_of_attempt` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`score_id`, `score`, `no_of_attempt`, `question_id`, `exam_id`, `user_id`) VALUES
(100000147, 1, 1, 127, 122342, 10050),
(100000148, 1, 1, 132, 122342, 10050),
(100000149, 1, 1, 124, 122342, 10050),
(100000150, 1, 1, 125, 122342, 10050),
(100000151, 0, 1, 123, 122342, 10050),
(100000152, 0, 1, 128, 122342, 10050),
(100000153, 1, 1, 130, 122342, 10050),
(100000154, 0, 1, 131, 122342, 10050),
(100000155, 1, 1, 129, 122342, 10050),
(100000156, 1, 1, 126, 122342, 10050),
(100000157, 0, 1, 137, 122343, 10047),
(100000158, 1, 1, 141, 122343, 10047),
(100000159, 0, 1, 139, 122343, 10047),
(100000160, 0, 1, 142, 122343, 10047),
(100000161, 0, 1, 133, 122343, 10047),
(100000162, 1, 1, 138, 122343, 10047),
(100000163, 0, 1, 135, 122343, 10047),
(100000164, 0, 1, 136, 122343, 10047),
(100000165, 0, 1, 140, 122343, 10047),
(100000166, 1, 1, 134, 122343, 10047);

-- --------------------------------------------------------

--
-- Table structure for table `tblsyllabus`
--

CREATE TABLE `tblsyllabus` (
  `syllabus_id` int(11) NOT NULL,
  `chap1` varchar(50) NOT NULL,
  `chap2` varchar(50) NOT NULL,
  `chap3` varchar(50) NOT NULL,
  `chap4` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsyllabus`
--

INSERT INTO `tblsyllabus` (`syllabus_id`, `chap1`, `chap2`, `chap3`, `chap4`, `course_id`) VALUES
(6, 'Set Up enviourment with code block', 'Programming Language And Programming Structure', 'Conditional Statements', 'Looping Statements', 1011),
(7, 'Basic Commands and Utilities.', 'File System, the Shell, and Vim Editor.', 'Bash Shell, Tcsh Shell, and Shell Programming.', 'Skill Standards:', 1013),
(8, 'Introduction to Bootstrap', 'bootstrap nested rows and columns', 'Bootstrap blockquotes and lists', 'Bootstrap icons', 1016),
(10, 'Introduction to MySql', 'getting the development environment ready', 'Beggining with mysql basics', 'Time to jump in for more ', 1018),
(11, 'Learn the funcations for creating anything in pixe', 'Create solid line work and stunning shading', 'Create tiles in the top down RPG style', 'Create create characters and animated them in minu', 1019);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `u_id` int(11) NOT NULL,
  `u_first_name` varchar(20) NOT NULL,
  `u_middle_name` varchar(20) NOT NULL,
  `u_last_name` varchar(20) NOT NULL,
  `u_photo_path` varchar(150) NOT NULL,
  `u_city` varchar(20) NOT NULL,
  `u_ph_no` bigint(12) NOT NULL,
  `u_email_id` varchar(50) NOT NULL,
  `u_password` varchar(30) NOT NULL,
  `u_status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`u_id`, `u_first_name`, `u_middle_name`, `u_last_name`, `u_photo_path`, `u_city`, `u_ph_no`, `u_email_id`, `u_password`, `u_status`) VALUES
(10047, 'priya', 'vinubhai', 'borda', '158753670419442499905e9fe340541eeIMG_20190806_185649.jpg', 'surat', 7984246906, 'priyavborda@gmail.com', 'cHJpeWExMjM0NQ==', 'Active'),
(10050, 'Brinda', 'Rajnibhai', 'Chanchad', '1589262876135905135eba3a1cba1f78.jpg', 'Surat', 7202021094, 'brindachanchad00@gmail.com', 'YnJpbmRhNTUwMA==', 'Active'),
(10052, 'rajni', 'ashokbhai', 'virani', '15935101863911922205efb092aa1f4dScreenshot_20200630-145322_Instagram.jpg', 'surat', 9876543210, 'rajnivirani@gmail.com', 'cmFqbmkxMjM0NQ==', 'Active'),
(10059, 'eva', 'denisbhai', 'chanchad', '158711573810543733075e9976da04720IMG-20180812-WA0024.jpg', 'surat', 7202021094, 'eva@gmail.com', 'ZXZhMTIzNDU2', 'Active'),
(10060, 'Dipali', 'asbhai', 'Hirpara', '158723404319952020425e9b44fba9bb0IMG_2012.JPG', 'surat', 7202021094, 'dipali@gmail.com', 'YnJpbmRhNTUwMA==', 'Deactive'),
(10061, 'bhumi', 'ashokbhai', 'bhuva', '159354203321422955965efb859178881IMG_7215.JPG', 'mumbai', 7202021094, 'bhumibhuva@gmail.com', 'Ymh1bWkxMjM0NQ==', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblusercourse`
--

CREATE TABLE `tblusercourse` (
  `course_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusercourse`
--

INSERT INTO `tblusercourse` (`course_user_id`, `user_id`, `course_id`, `payment_id`) VALUES
(10000011, 10050, 1011, 9),
(10000012, 10050, 1013, 11),
(10000013, 10047, 1011, 12),
(10000014, 10052, 1013, 13),
(10000015, 10050, 1016, 14),
(10000018, 10059, 1018, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbluserevent`
--

CREATE TABLE `tbluserevent` (
  `usereventid` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluserevent`
--

INSERT INTO `tbluserevent` (`usereventid`, `event_id`, `payment_id`) VALUES
(60, 10022, 11181),
(61, 10022, 11181),
(62, 10022, 11181),
(63, 10040, 11184),
(64, 10040, 11185),
(65, 10040, 11185),
(66, 10040, 11187),
(67, 10040, 11185),
(68, 10040, 11189),
(69, 10021, 11190);

-- --------------------------------------------------------

--
-- Table structure for table `tblvideo`
--

CREATE TABLE `tblvideo` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(50) NOT NULL,
  `v_path` varchar(200) NOT NULL,
  `v_description` varchar(500) NOT NULL,
  `v_course_id` int(11) NOT NULL,
  `v_week_id` int(11) NOT NULL,
  `v_f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvideo`
--

INSERT INTO `tblvideo` (`v_id`, `v_name`, `v_path`, `v_description`, `v_course_id`, `v_week_id`, `v_f_id`) VALUES
(12345707, 'Installing Code Blocks and Getting Started', '15924751695957768335eeb3e21e19b91.Installing CodeBlocks and Getting Started.mp4', 'know everything about Installing Code Blocks and Getting Started', 1011, 10000008, 1014),
(12345708, 'First C Program and Understanding C Program Struct', '15924746484916613055eeb3c183ed892.First C Program and Understanding C Program Structure.mp4', 'know everything about 2.First C Program and Understanding C Program Structure', 1011, 10000008, 1014),
(12345709, 'Comments', '159215849815008141325ee669220d1ac4_Comments.mp4', 'know how to give comments in c', 1011, 10000008, 1014),
(12345710, 'Variables and Basic Datatypes', '15921585326020666735ee66944aa22c5_Variables_and_Basic_Datatypes.mp4', 'know what is  Variables and Basic Datatypes', 1011, 10000008, 1014),
(12345711, 'Simple input and output', '1592158591358761215ee6697fce7034_Comments.mp4', 'get knowledge about Simple input and output', 1011, 10000008, 1014),
(12345712, 'Simple Math and and operators', '15921586348926498355ee669aaf3a986__Simple_Math_and_and_operators.mp4', 'Simple Math and and operators', 1011, 10000009, 1014),
(12345713, 'if Statements', '15921586575445548415ee669c1dcaa77_If_Statements_in_C.mp4', 'if Statements', 1011, 10000009, 1014),
(12345714, 'f...else and Nested if...else statements', '159215869213449628705ee669e4608f98_if...else_and_Nested_if...else_statements_in_C.mp4', 'know about nested if statements', 1011, 10000009, 1014),
(12345715, 'The ternary(conditional) operator', '159215872120967945905ee66a012d6009_The_ternary_(conditional)_operator_in_C.mp4', 'The ternary(conditional) operator', 1011, 10000009, 1014),
(12345716, '	 Switch Statement', '159215879920023887095ee66a4f4665f10_Switch_Statement_in_C.mp4', 'know what is 	 Switch Statement', 1011, 10000009, 1014),
(12345717, 'While loop', '159215883120067383835ee66a6f9752611_While_loop_in_C.mp4', 'while loop in c', 1011, 10000010, 1014),
(12345719, 'do...while loop', '15921588844849621605ee66aa4c4f6912_do...while_loop_in_C.mp4', 'do...while loop in c', 1011, 10000010, 1014),
(12345720, 'for loop', '159215891419252472965ee66ac24b3fc13_for_loop.mp4', 'for loop in c', 1011, 10000010, 1014),
(12345721, 'Functions', '15921590196785782045ee66b2baa86114_Functions_in_C.mp4', 'Functions in c', 1011, 10000010, 1014),
(12345723, 'Passing Parameters and Arguments in Function', '15921590473862777005ee66b471312615_Passing_Parameters_and_Arguments_in_Function.mp4', 'Passing Parameters and Arguments in Function in c', 1011, 10000010, 1014),
(12345724, 'Return Values in Functions', '159215907218795532585ee66b601c14716_Return_Values_in_Functions.mp4', 'Return Values in Functions', 1011, 10000011, 1014),
(12345725, 'Scope rules', '15921591245547895565ee66b94dbce916_Return_Values_in_Functions.mp4', 'Scope rules', 1011, 10000011, 1014),
(12345726, 'Arrays', '1592159152909132715ee66bb00868018_Arrays_in_C.mp4', 'Arrays in c', 1011, 10000011, 1014),
(12345727, 'Multi-dimensional Arrays', '15921591779569015265ee66bc9146a219_Multi-dimensional_Arrays_in_C.mp4', 'Multi-dimensional Arrays in c', 1011, 10000011, 1014),
(12345728, 'Passing Arrays as Function Arguments', '159215920215922738145ee66be21f93920_Passing_Arrays_as_Function_Arguments_in_C.mp4', 'Passing Arrays as Function Arguments', 1011, 10000011, 1014),
(12345729, 'Introduction', '159267056519545791665eee3965afdfbShell_Scripting_Tutorial_for_Beginners_1_-__Introduction.mp4', 'introduction about unix', 1013, 10000012, 1015),
(12345731, 'Variables and Comments in unix', '159267071918357605975eee39ff83d80Shell_Scripting_Tutorial_for_Beginners_2_-_using_Variables_and_Comments.mp4', 'use of  Variables and Comments in unix', 1013, 10000012, 1015),
(12345732, 'Read User Input', '159267075718372230235eee3a25cfd07Shell_Scripting_Tutorial_for_Beginners_3_-_Read_User_Input.mp4', 'Read User Input in unix', 1013, 10000012, 1015),
(12345733, 'passing argument to an array', '15926708067383386685eee3a561cf0aShell_Scripting_Tutorial_for_Beginners_4_-_Pass_Arguments_to_a_Bash-Script.mp4', 'know how to pass argument in an array', 1013, 10000012, 1015),
(12345734, '_If_Statement_', '159267084010731938875eee3a7855ad5Shell_Scripting_Tutorial_for_Beginners_5_-_If_Statement_(_If_then_,_If_then_else,_If_elif_else).mp4', '_If_Statement_(_If_then_,_If_then_else,_If_elif_else)', 1013, 10000012, 1015),
(12345735, 'File test operators ', '159267087511714743075eee3a9b2e48eShell_Scripting_Tutorial_for_Beginners_6_-_File_test_operators.mp4', 'unix File test operators', 1013, 10000012, 1015),
(12345736, 'append output to the end of text file ', '15926709324347191265eee3ad4a9bfaShell_Scripting_Tutorial_for_Beginners_7_-_How_to_append_output_to_the_end_of_text_file.mp4', 'How to append output to the end of text file ', 1013, 10000012, 1015),
(12345737, 'Logical AND Operator', '15926790315528005945eee5a778158bShell_Scripting_Tutorial_for_Beginners_8_-__Logical_AND_Operator.mp4', 'description about logical \"AND\" Operator', 1013, 10000013, 1015),
(12345738, 'logical OR operator', '15926791114720963305eee5ac723576Shell_Scripting_Tutorial_for_Beginners_9_-__Logical_OR_Operator.mp4', 'how to work logical OR operator', 1013, 10000013, 1015),
(12345739, 'Perform arithmetic operations', '15926791607841977475eee5af8a0f8fShell_Scripting_Tutorial_for_Beginners_10_-_Perform_arithmetic_operations.mp4', 'perform arithmetic operations', 1013, 10000013, 1015),
(12345740, 'floating point math', '1592679295621390395eee5b7f36401Shell_Scripting_Tutorial_for_Beginners_11_-_Floating_point_math_operations_in_bash__bc_Command(1).mp4', 'Floating point math operations in bash bc Command', 1013, 10000013, 1015),
(12345741, 'The case statement', '159267935711439347885eee5bbd57fbeShell_Scripting_Tutorial_for_Beginners_12_-_The_case_statement.mp4', 'The case statement in unix', 1013, 10000013, 1015),
(12345742, 'The case statement example', '159267969912301590445eee5d135aea4Shell_Scripting_Tutorial_for_Beginners_13_-_The_case_statement_Example.mp4', 'The case statement example', 1013, 10000013, 1015),
(12345743, 'array variables', '15926797264449990665eee5d2e7112cShell_Scripting_Tutorial_for_Beginners_14_-_Array_variables.mp4', 'array variables', 1013, 10000013, 1015),
(12345744, 'What is bootstrap', '159354335613667005355efb8abc136ac1-What is bootstrap ( 720 X 684 ).mp4', 'What is bootstrap', 1016, 10000016, 1032),
(12345745, 'Setting up bootstrap', '15935433801992609405efb8ad40b3112-Setting up bootstrap ( 720 X 720 ).mp4', 'Setting up bootstrap', 1016, 10000016, 1032),
(12345746, 'Bootstrap Grid System', '159354340611826385925efb8aee991be3-Bootstrap Grid System ( 720 X 720 ).mp4', 'Bootstrap Grid System (', 1016, 10000016, 1032),
(12345747, 'Bootstrap 3 grid classes', '15935434375997957545efb8b0de7d634-Bootstrap 3 grid classes ( 720 X 684 ).mp4', 'Bootstrap 3 grid classes', 1016, 10000016, 1032),
(12345748, 'Bootstrap grid column offset ', '159354345413624583095efb8b1e0b00f5-Bootstrap grid column offset ( 720 X 720 ).mp4', 'Bootstrap grid column offset ', 1016, 10000016, 1032),
(12345749, 'what is database', '15960863473648270135f22584b2cac31.mp4', 'know about what is database?', 1018, 10000020, 1036),
(12345750, 'sql vs nosql', '159608643411610077125f2258a2b23052.mp4', 'know comparision between sql and nosql', 1018, 10000020, 1036),
(12345751, 'mysql installment', '159608649211969988055f2258dced00b3.mp4', 'how we can do install mysql', 1018, 10000020, 1036),
(12345752, 'how to use mysql', '159608653520131409835f225907687e94.mp4', 'use of mysql', 1018, 10000020, 1036),
(12345753, 'showing databse', '15960865936834010665f225941355eb5.mp4', 'showing databse using cmd and php mysql', 1018, 10000020, 1036),
(12345754, 'create database', '159608664311201697035f225973aeeb06.mp4', 'create database using cmd and php my admin', 1018, 10000020, 1036),
(12345755, 'delete database', '159608669820940535155f2259aaa14ba7.mp4', 'delete database using cmd and php my admin', 1018, 10000020, 1036),
(12345756, 'use database', '159608994710955427125f22665b2743a8.mp4', 'use database using cmd and php my admin', 1018, 10000021, 1036),
(12345757, 'know current database', '159609002819430336905f2266ac102709.mp4', 'know current database using cmd and phpmyadmin', 1018, 10000021, 1036),
(12345758, 'datatypes', '159609006318755015485f2266cf2d32c10.mp4', 'mySql datatypes', 1018, 10000021, 1036),
(12345759, 'creting tables', '159609010219598985595f2266f61423e11.mp4', 'how to create tables in database', 1018, 10000021, 1036),
(12345760, 'show database', '15960901439029367455f22671f5a02012.mp4', 'show tables using cmd and phpmyadmin', 1018, 10000021, 1036),
(12345761, 'mysql', '159609024520177618975f2267857e03413.mp4', 'mysql', 1018, 10000021, 1036),
(12345762, 'insert data in tables', '15960902914160537005f2267b36ae4d14.mp4', 'insert data in table using cmd and php my admin', 1018, 10000021, 1036),
(12345763, 'show tables data', '159609039710707193265f22681d88afd15.mp4', 'show tables data using cmd and php my admin', 1018, 10000024, 1036),
(12345764, 'show tables warning', '15960904314428270345f22683f4793b16.mp4', 'show tables warning using cmd and php my admin', 1018, 10000024, 1036),
(12345765, 'Null vs NotNull', '15960904686907141465f2268642b41217.mp4', 'Null vs NotNull using cmd and php my admin', 1018, 10000024, 1036),
(12345766, 'default value in mysql', '15960905126957151065f226890058c318.mp4', 'default value in mysql using cmd and php my admin', 1018, 10000024, 1036),
(12345767, 'alter table statement', '15960909009581947405f226a143bf6e19.mp4', 'know how we can do alter table', 1018, 10000024, 1036),
(12345768, 'primary key', '159609098417197031365f226a68c937c20.mp4', 'what is primary key and how to apply it', 1018, 10000024, 1036),
(12345769, 'auto increment', '15960910257428981885f226a9182e8721.mp4', 'auto increment in mysql', 1018, 10000024, 1036),
(12345770, 'where clause', '15960910614112698145f226ab5e788022.mp4', 'where clause in mysql', 1018, 10000023, 1036),
(12345771, 'aggregate functions', '15960916175105136015f226ce16c5ac24.mp4', 'aggregate functions of php my sql', 1018, 10000023, 1036),
(12345772, 'order by ', '159609165816841010215f226d0a683d425.mp4', 'order by keyword in mysql', 1018, 10000023, 1036),
(12345773, 'distinct and limit keyword', '159609171010484299425f226d3ecb1bd26.mp4', 'distinct and limit keyword in mysql', 1018, 10000023, 1036),
(12345774, 'like operator', '159609176114445378455f226d71988d827.mp4', 'what is like operator', 1018, 10000023, 1036),
(12345775, 'string functions', '15960917904617007435f226d8e59c9528.mp4', 'string functions of mysql', 1018, 10000023, 1036),
(12345776, 'comparison operator', '15960918252669448255f226db17985729.mp4', 'comparison operator of mysql', 1018, 10000023, 1036);

-- --------------------------------------------------------

--
-- Table structure for table `tblweek`
--

CREATE TABLE `tblweek` (
  `week_id` int(11) NOT NULL,
  `week_title` varchar(50) NOT NULL,
  `chap_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblweek`
--

INSERT INTO `tblweek` (`week_id`, `week_title`, `chap_name`, `start_date`, `end_date`, `course_id`) VALUES
(10000008, 'week 1', 'Introduction of C programming', '2020-07-30', '2020-08-06', 1011),
(10000009, 'week 2', 'Math Operators And Important Statement', '2020-08-06', '2020-08-13', 1011),
(10000010, 'week 3', 'Introduction of looping statements', '2020-08-13', '2020-08-20', 1011),
(10000011, 'week 4', 'Scope of variable and concept of array', '2020-08-20', '2020-08-27', 1011),
(10000012, 'week 1', 'Basic Commands and Utilities.', '2020-06-23', '2020-06-30', 1013),
(10000013, 'week 2', 'File System, the Shell, and Vim Editor.', '2020-06-30', '2020-07-05', 1013),
(10000014, 'week 3', 'Bash Shell, Tcsh Shell, and Shell Programming.', '2020-07-14', '2020-07-21', 1013),
(10000015, 'week 4', 'Skill Standards', '2020-07-21', '2020-07-28', 1013),
(10000016, 'week 1', 'bootstrap introduction', '2020-07-05', '2020-07-12', 1016),
(10000017, 'week 2', ' nested rows and columns  of bootstarp', '2020-07-12', '2020-07-19', 1016),
(10000018, 'week 3', 'blockquotes and lists of Bootstrap', '2020-07-19', '2020-07-26', 1016),
(10000019, 'week 4', 'icons of Bootstrap', '2020-07-26', '2020-08-02', 1016),
(10000020, 'week 1', 'introduction week', '2020-08-15', '2020-08-22', 1018),
(10000021, 'week 2', 'setting of environment', '2020-08-22', '2020-08-29', 1018),
(10000022, 'week 3', 'Beginning with mysql basics', '2020-08-29', '2020-09-05', 1011),
(10000023, 'week 4', 'Time to jump in for more', '2020-09-05', '2020-09-12', 1018),
(10000024, 'week 3', 'Beggining with mysql basics', '2020-08-29', '2020-09-05', 1018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblcertificate`
--
ALTER TABLE `tblcertificate`
  ADD PRIMARY KEY (`certificate_id`),
  ADD KEY `u_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_t_id` (`course_t_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tblcredit`
--
ALTER TABLE `tblcredit`
  ADD PRIMARY KEY (`credit_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tblcreditdemo`
--
ALTER TABLE `tblcreditdemo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tblcreditexam`
--
ALTER TABLE `tblcreditexam`
  ADD PRIMARY KEY (`ce_id`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tblexam`
--
ALTER TABLE `tblexam`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `week_id` (`week_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `f_emailid` (`f_emailid`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `user_id` (`user_id`,`f_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`pass_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `tblpaymentcourse`
--
ALTER TABLE `tblpaymentcourse`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tblpaymentevent`
--
ALTER TABLE `tblpaymentevent`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `tblpdf`
--
ALTER TABLE `tblpdf`
  ADD PRIMARY KEY (`pdf_id`);

--
-- Indexes for table `tblquestion`
--
ALTER TABLE `tblquestion`
  ADD PRIMARY KEY (`qtf_id`);

--
-- Indexes for table `tblquestionmcq`
--
ALTER TABLE `tblquestionmcq`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `question_type` (`question_type`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `question_id` (`question_id`,`exam_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  ADD PRIMARY KEY (`syllabus_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `u_email_id` (`u_email_id`);

--
-- Indexes for table `tblusercourse`
--
ALTER TABLE `tblusercourse`
  ADD PRIMARY KEY (`course_user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `tbluserevent`
--
ALTER TABLE `tbluserevent`
  ADD PRIMARY KEY (`usereventid`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `tblvideo`
--
ALTER TABLE `tblvideo`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `v_course_id` (`v_course_id`),
  ADD KEY `v_week_id` (`v_week_id`),
  ADD KEY `v_f_id` (`v_f_id`);

--
-- Indexes for table `tblweek`
--
ALTER TABLE `tblweek`
  ADD PRIMARY KEY (`week_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcertificate`
--
ALTER TABLE `tblcertificate`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT for table `tblcredit`
--
ALTER TABLE `tblcredit`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcreditdemo`
--
ALTER TABLE `tblcreditdemo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditexam`
--
ALTER TABLE `tblcreditexam`
  MODIFY `ce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000013;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10041;

--
-- AUTO_INCREMENT for table `tblexam`
--
ALTER TABLE `tblexam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122364;

--
-- AUTO_INCREMENT for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000013;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000012;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `pass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpaymentcourse`
--
ALTER TABLE `tblpaymentcourse`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpaymentevent`
--
ALTER TABLE `tblpaymentevent`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11191;

--
-- AUTO_INCREMENT for table `tblpdf`
--
ALTER TABLE `tblpdf`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `tblquestion`
--
ALTER TABLE `tblquestion`
  MODIFY `qtf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblquestionmcq`
--
ALTER TABLE `tblquestionmcq`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000167;

--
-- AUTO_INCREMENT for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10062;

--
-- AUTO_INCREMENT for table `tblusercourse`
--
ALTER TABLE `tblusercourse`
  MODIFY `course_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000019;

--
-- AUTO_INCREMENT for table `tbluserevent`
--
ALTER TABLE `tbluserevent`
  MODIFY `usereventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tblvideo`
--
ALTER TABLE `tblvideo`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345777;

--
-- AUTO_INCREMENT for table `tblweek`
--
ALTER TABLE `tblweek`
  MODIFY `week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000025;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcertificate`
--
ALTER TABLE `tblcertificate`
  ADD CONSTRAINT `tblcertificate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcertificate_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD CONSTRAINT `tblcourse_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tblcategory` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourse_ibfk_2` FOREIGN KEY (`course_t_id`) REFERENCES `tblfaculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcredit`
--
ALTER TABLE `tblcredit`
  ADD CONSTRAINT `tblcredit_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcreditdemo`
--
ALTER TABLE `tblcreditdemo`
  ADD CONSTRAINT `tblcreditdemo_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblexam`
--
ALTER TABLE `tblexam`
  ADD CONSTRAINT `tblexam_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblexam_ibfk_2` FOREIGN KEY (`week_id`) REFERENCES `tblweek` (`week_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD CONSTRAINT `tblmessage_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `tblfaculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblmessage_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD CONSTRAINT `tblpass_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tblevent` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpaymentcourse`
--
ALTER TABLE `tblpaymentcourse`
  ADD CONSTRAINT `tblpaymentcourse_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblpaymentcourse_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblpaymentevent`
--
ALTER TABLE `tblpaymentevent`
  ADD CONSTRAINT `tblpaymentevent_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tblevent` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblquestionmcq`
--
ALTER TABLE `tblquestionmcq`
  ADD CONSTRAINT `tblquestionmcq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblquestionmcq_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `tblexam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblquestionmcq_ibfk_3` FOREIGN KEY (`question_type`) REFERENCES `tblquestion` (`qtf_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD CONSTRAINT `tblresult_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblresult_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD CONSTRAINT `tblscore_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `tblexam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblscore_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `tblquestionmcq` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblscore_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  ADD CONSTRAINT `tblsyllabus_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblusercourse`
--
ALTER TABLE `tblusercourse`
  ADD CONSTRAINT `tblusercourse_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblusercourse_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `tblpaymentcourse` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblusercourse_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbluserevent`
--
ALTER TABLE `tbluserevent`
  ADD CONSTRAINT `tbluserevent_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `tblpaymentevent` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbluserevent_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `tblevent` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblvideo`
--
ALTER TABLE `tblvideo`
  ADD CONSTRAINT `tblvideo_ibfk_1` FOREIGN KEY (`v_f_id`) REFERENCES `tblfaculty` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblvideo_ibfk_2` FOREIGN KEY (`v_week_id`) REFERENCES `tblweek` (`week_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblvideo_ibfk_3` FOREIGN KEY (`v_course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblweek`
--
ALTER TABLE `tblweek`
  ADD CONSTRAINT `tblweek_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tblcourse` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `eezybee`
--
CREATE DATABASE IF NOT EXISTS `eezybee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eezybee`;

-- --------------------------------------------------------

--
-- Table structure for table `eb_admin`
--

CREATE TABLE `eb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_admin`
--

INSERT INTO `eb_admin` (`admin_id`, `admin_username`, `admin_email`, `admin_password`, `created_on`, `updated_on`, `del_in`) VALUES
(1, 'admin', 'msherdiwala16@gmail.com', 'e3de91df54981a3d6b6305ef398855df', '2017-04-21 10:25:19', '2019-09-15 14:50:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_bank_details`
--

CREATE TABLE `eb_bank_details` (
  `bd_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_account_id` varchar(100) NOT NULL COMMENT 'stripe account id',
  `bd_first_name` varchar(100) NOT NULL,
  `bd_last_name` varchar(100) NOT NULL,
  `bd_routing_number` varchar(100) NOT NULL,
  `bd_account_number` varchar(100) NOT NULL,
  `bd_ssn` varchar(10) NOT NULL COMMENT 'last 4 digit of your account number',
  `bd_dob` varchar(100) NOT NULL,
  `bd_business_type` varchar(100) NOT NULL,
  `bd_business_name` varchar(100) NOT NULL,
  `bd_bank_add1` varchar(100) NOT NULL,
  `bd_bank_add2` varchar(100) NOT NULL,
  `bd_city` varchar(100) NOT NULL,
  `bd_state` varchar(100) NOT NULL,
  `bd_postal_code` varchar(100) NOT NULL,
  `bd_personal_id` varchar(100) NOT NULL,
  `bd_verify_document` varchar(512) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_bank_details`
--

INSERT INTO `eb_bank_details` (`bd_id`, `user_id`, `stripe_account_id`, `bd_first_name`, `bd_last_name`, `bd_routing_number`, `bd_account_number`, `bd_ssn`, `bd_dob`, `bd_business_type`, `bd_business_name`, `bd_bank_add1`, `bd_bank_add2`, `bd_city`, `bd_state`, `bd_postal_code`, `bd_personal_id`, `bd_verify_document`, `created_on`, `update_on`, `del_in`, `is_verified`) VALUES
(4, 9, 'acct_1BA2ieEQLlVgYLDM', 'Arleez', 'Jasreen', '110000000', '000123456789', '6789', '01-10-1980', 'individual', '', '6203 San Ignacio Ave', '', 'San Jose', 'California', '95119', '123456789', 'uploads/verifydoc/1507322812Screen_Shot_2017-08-04_at_1_09_01_PM.png', '0000-00-00', '2017-10-06 20:46:57', 0, 1),
(5, 21, 'acct_1BA62vKe9HWNC2vE', 'Tony', 'Montana', '110000000', '000123456789', '6789', '12-10-1974', 'individual', '', '6203 San Ignacio Ave, Suite 110', '', 'San Jose', 'California', '95119', '123456789', 'uploads/verifydoc/1507335601Screen_Shot_2017-07-09_at_5_57_40_PM.png', '0000-00-00', '2017-10-07 00:20:06', 0, 1),
(7, 10, 'acct_1BB5vbIi92qmaURx', 'Piyush', 'piyushkachariya007@gmail.com', '011111111', '000123456789', '6789', '01-01-1910', 'company', '', '6206 San Ignacio Ave', 'Suit 140', 'San Jose', 'California', '95119', '123456789', 'uploads/verifydoc/15075734751505867362Screen_Shot_2017-09-13_at_5_42_13_PM.png', '0000-00-00', '2017-10-09 18:24:39', 0, 1),
(8, 15, 'acct_1BB7V7ERJ61QTVOC', 'Gabe', 'Melon', '110000000', '000123456789', '6789', '01-01-1910', 'company', 'Test', 'Test', '', 'Test', 'Hawaii', '95119', '123123123', 'uploads/verifydoc/1507579520Screen_Shot_2017-10-05_at_1_04_07_PM.png', '0000-00-00', '2017-10-09 20:05:24', 0, 1),
(13, 38, 'acct_1BBYjXBfG1Czbtig', 'Test', 'Dummy', '110000000', '000123456789', '6789', '02-01-1910', 'individual', '', 'Test', '', 'S', 'Alaska', '12', '123123123', 'uploads/verifydoc/1507684203Screen_Shot_2017-10-09_at_12_22_03_PM.png', '0000-00-00', '2017-10-11 01:10:07', 0, 1),
(15, 41, 'acct_1BCFojC4Mn9eRr6x', 'G ', 'Melon', '110000000', '000123456789', '6789', '03-04-1914', 'individual', '', 'Test', '', 'Test', 'Alaska', '95123', '123123123', 'uploads/verifydoc/1507849817Screen_Shot_2017-10-05_at_9_23_26_AM.png', '0000-00-00', '2017-10-12 23:10:21', 0, 1),
(17, 45, 'acct_1BCduQA1dVfNLVN3', 'G', 'Melon', '110000000', '000123456789', '6789', '02-04-1968', 'individual', '', 'Test', '', 'Test', 'Arkansas', '95119', '959123123', 'uploads/verifydoc/1507942426Payment_History_(Empty_State).png', '0000-00-00', '2017-10-14 00:53:51', 0, 1),
(18, 47, 'acct_1BDeLlLctdhh3tAy', 'Test', 'User', '110000000', '000123456789', '6789', '03-04-1913', 'individual', '', 'Test', '', 'Test', 'Alaska', '95119', '123123123', 'uploads/verifydoc/1508182449Screen_Shot_2017-10-12_at_3_47_24_PM.png', '0000-00-00', '2017-10-16 19:34:14', 0, 1),
(19, 1, 'acct_1BDgfhJJMUdVnSyK', 'Test', 'Test', '110000000', '000123456789', '6789', '08-03-1911', 'individual', '', 'Test', '', 'Test', 'Alabama', '95119', '123123123', 'uploads/verifydoc/1508191373Happy.jpeg', '0000-00-00', '2017-10-16 22:02:57', 0, 1),
(34, 56, 'acct_1BLMS0Er6cYlsyOb', 'Piyushkumar', 'Kachariya', '321171184', '42017945413', '5413', '09-06-1992', 'individual', '', '6206 San Ignacio Ave', 'Suit 140', 'San Jose', 'California', '95134', '871890592', 'uploads/verifydoc/1510020268File_009.jpeg', '0000-00-00', '2017-11-16 11:51:02', 0, 1),
(35, 74, 'acct_1BMa95ABePKDHaLI', 'Provider1', 'Lastname', '110000000', '000123456789', '6789', '02-04-1913', 'individual', '', '254', '52345', 'Surat', 'Alaska', '94111', '123456789', 'uploads/verifydoc/1510311239ch51.png', '0000-00-00', '2017-11-10 10:54:03', 0, 1),
(36, 75, 'acct_1BMaCCElkA3OjQh2', 'Provider2', 'Lastename', '110000000', '000123456789', '6789', '04-05-1914', 'individual', '', 'Wefgewr', 'Fgwrf', 'Aefwef', 'Arizona', '94111', '123456789', 'uploads/verifydoc/151031143119_10_2016_text-title.png', '0000-00-00', '2017-11-10 10:57:15', 0, 1),
(37, 24, 'acct_1BOgS7JFafhU9bjo', 'Divyesh', 'Dankhara', '110000000', '000123456789', '6789', '02-09-1995', 'company', 'My m', 'My m', 'My m', 'Surat', 'Alabama', '595010', '123456789', 'uploads/verifydoc/1510812139Untitled.png', '0000-00-00', '2017-11-16 06:02:23', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eb_card_details`
--

CREATE TABLE `eb_card_details` (
  `cd_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_customer_id` varchar(100) NOT NULL COMMENT 'stripe customer id',
  `stripe_card_id` varchar(100) NOT NULL COMMENT 'having card id given by stripe to make different form other card',
  `cd_card_number` varchar(100) NOT NULL,
  `cd_holder_name` varchar(100) NOT NULL,
  `cd_expriy_date` varchar(100) NOT NULL,
  `cd_cvv` int(11) NOT NULL,
  `cd_type` varchar(100) NOT NULL COMMENT 'credit, debit',
  `cd_default` int(11) NOT NULL COMMENT '0 = default, 1 = not default',
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_card_details`
--

INSERT INTO `eb_card_details` (`cd_id`, `user_id`, `stripe_customer_id`, `stripe_card_id`, `cd_card_number`, `cd_holder_name`, `cd_expriy_date`, `cd_cvv`, `cd_type`, `cd_default`, `created_on`, `update_on`, `del_in`) VALUES
(3, 8, 'cus_BWqthPQwLOP5ae', 'card_1B9nBvG16aQBJIXxCBkSFfwc', '4242', 'Hrishab', '4/2024', 0, 'credit', 0, '2017-10-06', '2017-10-06 04:12:04', 0),
(4, 17, 'cus_BXA3wwujgA2Uni', 'card_1BA5jGG16aQBJIXxCMhoysDd', '4242', 'Kim Melon', '2/2019', 0, 'credit', 0, '2017-10-06', '2017-10-06 23:59:42', 0),
(8, 32, 'cus_BYcme235wDdLZh', 'card_1BBVWdG16aQBJIXxsEMcAPpt', '4242', 'KP', '4/2024', 0, 'credit', 0, '2017-10-10', '2017-10-10 21:44:31', 0),
(9, 37, 'cus_BYgBHQMm48mnly', 'card_1BBYouG16aQBJIXx9mB8pwSj', '4242', 'Greg Smith', '4/2022', 0, 'credit', 0, '2017-10-11', '2017-10-11 01:15:37', 0),
(10, 40, 'cus_BYwMye7Ui4Lgu9', 'card_1BBoTwG16aQBJIXxnOErcIXY', '4242', 'G Melon', '4/2022', 0, 'credit', 0, '2017-10-11', '2017-10-18 06:39:55', 1),
(12, 40, 'cus_BYwMye7Ui4Lgu9', 'card_1BBrWrG16aQBJIXxprlRSHAV', '4444', 'G', '4/2021', 0, 'credit', 1, '2017-10-11', '2017-10-18 06:39:51', 1),
(14, 3, 'cus_BWIp26j8rfV4re', 'card_1BCFvzG16aQBJIXxmntKG0cy', '4444', 'Test', '12/2041', 0, 'credit', 0, '2017-10-12', '2017-10-16 22:06:02', 0),
(15, 44, 'cus_BZnQmAqmq0ZQto', 'card_1BCdq3G16aQBJIXxAo7TWjop', '4242', 'G Melon', '12/2051', 0, 'credit', 0, '2017-10-14', '2017-10-14 00:49:16', 0),
(18, 53, 'cus_BbCdvBHOXv2HJ0', 'card_1BE0EfG16aQBJIXxkErgz5gY', '4242', 'Dg', '4/2024', 0, 'credit', 0, '2017-10-17', '2017-10-17 18:56:18', 0),
(27, 8, 'cus_BWqthPQwLOP5ae', 'card_1BGPvUG16aQBJIXx1K8fBBJf', '4444', 'Chaitu', '3/2023', 0, 'credit', 1, '2017-10-24', '2017-10-24 10:46:29', 0),
(28, 8, 'cus_BWqthPQwLOP5ae', 'card_1BGPvzG16aQBJIXxWdzxvVJN', '0005', 'Chaitanya2', '2/2034', 0, 'credit', 1, '2017-10-24', '2017-10-24 10:47:00', 0),
(29, 4, 'cus_Bc171w9lT9LjJH', 'card_1BGV9lBwGrztzCxhcx3BjLkY', '4242', 'Testing', '4/2024', 0, 'credit', 0, '2017-10-24', '2017-10-25 18:33:36', 0),
(30, 31, 'cus_BeCwdSlFDp0REW', 'card_1BGuX2BwGrztzCxhNAuFO1uJ', '4242', 'Kp', '4/2024', 0, 'credit', 0, '2017-10-25', '2017-10-25 19:33:01', 0),
(31, 31, 'cus_BeCwdSlFDp0REW', 'card_1BGuaeBwGrztzCxhggxI64Fg', '5100', 'Kp', '9/2044', 0, 'prepaid', 1, '2017-10-25', '2017-10-25 19:31:01', 0),
(32, 31, 'cus_BeCwdSlFDp0REW', 'card_1BGubxBwGrztzCxhMuUXHb0c', '5556', 'Test', '4/2054', 0, 'debit', 1, '2017-10-25', '2017-10-25 19:33:01', 0),
(33, 4, 'cus_Bc171w9lT9LjJH', 'card_1BJ2s3BwGrztzCxhVXZGOwBV', '5100', 'Test', '4/2054', 0, 'prepaid', 1, '2017-10-31', '2017-10-31 16:45:48', 0),
(34, 55, 'cus_BgReuMgE8xmvBB', 'card_1BJ4kyBwGrztzCxhaBejPKKm', '3358', 'PIYUSHKUMAR KACHARIYA', '8/2021', 0, 'credit', 0, '2017-10-31', '2017-10-31 18:48:07', 0),
(35, 66, 'cus_Bjup1vSU4b1PgU', 'card_1BMR02BwGrztzCxh67aWjOnp', '4242', 'Tester ', '4/2024', 0, 'credit', 0, '2017-11-10', '2017-11-10 01:08:03', 0),
(36, 72, 'cus_Bk46KePOSPOO7o', 'card_1BMZyFBwGrztzCxhQm2NUUWN', '4242', 'seeker8001', '4/2024', 0, 'credit', 0, '2017-11-10', '2017-11-10 10:42:48', 0),
(37, 73, 'cus_Bk4CV2PvZNlWPu', 'card_1BMa4YBwGrztzCxhgwKn2lQh', '4242', 'seeker8002', '4/2024', 0, 'credit', 0, '2017-11-10', '2017-11-10 10:49:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_chat`
--

CREATE TABLE `eb_chat` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chatting_user_id` varchar(255) NOT NULL,
  `last_message_datetime` datetime NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_user_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_chat`
--

INSERT INTO `eb_chat` (`chat_id`, `user_id`, `chatting_user_id`, `last_message_datetime`, `created_on`, `deleted_user_id`) VALUES
(1, 2, '2,1', '2017-11-13 09:16:00', '2017-11-13 20:02:31', '1,0'),
(7, 9, '9,3', '2017-10-27 17:37:03', '2017-11-09 22:13:35', '3,0'),
(9, 17, '17,9', '2017-10-10 21:20:22', '2017-10-10 21:20:22', '0'),
(10, 17, '17,1', '0000-00-00 00:00:00', '2017-10-09 21:47:42', '17,0'),
(11, 17, '17,2', '2017-10-10 21:19:47', '2017-10-10 21:19:47', '0'),
(12, 15, '15,17', '2017-10-10 21:20:07', '2017-10-10 21:20:07', '0'),
(13, 17, '17,2', '0000-00-00 00:00:00', '2017-10-10 21:19:43', '0'),
(14, 17, '17,15', '0000-00-00 00:00:00', '2017-10-10 21:19:55', '0'),
(15, 17, '17,9', '0000-00-00 00:00:00', '2017-10-10 21:20:18', '0'),
(18, 31, '31,2', '2017-11-17 02:15:12', '2017-11-17 02:15:12', '0'),
(19, 31, '31,9', '0000-00-00 00:00:00', '2017-11-09 06:52:08', '31,0'),
(21, 44, '44,2', '2017-11-14 19:53:05', '2017-11-15 20:49:23', '2,0'),
(22, 45, '45,3', '2017-11-03 04:47:55', '2017-11-03 04:47:55', '0'),
(26, 8, '8,5', '2017-11-28 06:39:52', '2017-11-28 06:39:52', '0'),
(27, 1, '1,37', '0000-00-00 00:00:00', '2017-10-16 23:51:44', '0'),
(29, 2, '2,55', '2017-11-07 09:38:58', '2017-11-09 21:15:56', '2,0'),
(30, 53, '53,31', '2017-11-18 00:12:54', '2017-11-18 00:12:54', '0'),
(31, 3, '3,2', '2017-11-13 10:39:08', '2017-11-13 18:03:48', '3,0'),
(32, 2, '2,8', '2017-11-17 09:09:34', '2017-11-17 09:09:34', '0'),
(34, 8, '8,1', '2017-11-15 07:54:31', '2017-11-15 07:54:31', '0'),
(35, 5, '5,1', '2017-11-25 04:51:00', '2017-11-25 04:51:00', '0'),
(36, 2, '2,0', '0000-00-00 00:00:00', '2017-11-03 16:41:15', '0'),
(37, 8, '8,0', '0000-00-00 00:00:00', '2017-11-03 21:25:24', '0'),
(38, 5, '5,0', '2017-11-13 07:05:28', '2017-11-13 07:05:28', '0'),
(40, 3, '3,8', '2017-11-09 22:14:40', '2017-11-09 22:16:16', '3,0'),
(45, 31, '31,0', '0000-00-00 00:00:00', '2017-11-09 23:12:02', '0'),
(46, 66, '66,0', '0000-00-00 00:00:00', '2017-11-10 05:08:30', '0'),
(47, 66, '66,5', '2017-11-25 04:50:49', '2017-11-25 04:50:49', '0'),
(48, 5, '5,31', '2017-11-17 12:16:53', '2017-11-17 12:16:53', '0'),
(49, 31, '31,8', '2017-11-16 11:02:34', '2017-11-16 11:02:34', '0'),
(51, 72, '72,2', '2017-11-17 09:19:06', '2017-11-17 09:19:06', '0'),
(52, 66, '66,8', '2017-11-15 12:47:34', '2017-11-17 03:03:34', '66,0'),
(53, 72, '72,5', '2017-11-17 09:20:21', '2017-11-17 09:20:21', '0'),
(54, 1, '1,3', '2017-11-20 18:05:53', '2017-11-20 18:05:53', '0'),
(55, 74, '74,72', '2017-11-17 09:14:10', '2017-11-17 09:14:10', '0'),
(56, 71, '71,74', '0000-00-00 00:00:00', '2017-11-15 12:34:59', '0'),
(57, 2, '2,4', '2017-11-21 18:48:18', '2017-11-21 18:48:18', '0'),
(58, 4, '4,53', '2017-11-16 11:45:32', '2017-11-16 11:45:32', '0'),
(59, 8, '8,53', '2017-11-16 09:00:27', '2017-11-16 09:00:27', '0'),
(60, 5, '5,53', '0000-00-00 00:00:00', '2017-11-16 08:53:28', '0'),
(61, 72, '72,73', '0000-00-00 00:00:00', '2017-11-17 06:22:19', '0'),
(62, 56, '56,55', '2017-11-18 02:11:52', '2017-11-18 02:11:52', '0');

-- --------------------------------------------------------

--
-- Table structure for table `eb_chatting_content`
--

CREATE TABLE `eb_chatting_content` (
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content_type` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_chatting_content`
--

INSERT INTO `eb_chatting_content` (`content_id`, `user_id`, `chat_id`, `text`, `content_type`, `created_on`) VALUES
(1, 2, 1, 'Hi..', 'TEXT', '2017-09-25 11:58:59'),
(2, 2, 1, 'Good evening.', 'TEXT', '2017-09-25 11:59:10'),
(3, 2, 1, 'Test', 'TEXT', '2017-09-26 11:24:31'),
(4, 2, 1, 'Test', 'TEXT', '2017-09-26 11:24:34'),
(5, 2, 1, 'Test', 'TEXT', '2017-09-26 11:24:39'),
(6, 3, 1, 'VgE', 'TEXT', '2017-09-26 12:21:00'),
(7, 4, 3, 'Hey', 'TEXT', '2017-09-26 12:54:01'),
(8, 2, 1, 'Hey', 'TEXT', '2017-09-26 12:58:51'),
(9, 3, 1, 'Hello', 'TEXT', '2017-09-27 04:17:09'),
(10, 2, 1, 'Htt', 'TEXT', '2017-09-27 04:19:07'),
(11, 3, 1, 'Can i come in?', 'TEXT', '2017-09-27 04:19:36'),
(12, 2, 1, 'No', 'TEXT', '2017-09-27 04:19:41'),
(13, 3, 3, 'Hello', 'TEXT', '2017-09-27 05:04:39'),
(14, 3, 3, 'uploads/messages/e4cf063b12d22a2db2f9697a8418bddf.jpg', 'FILE', '2017-09-27 05:05:18'),
(15, 3, 3, 'uploads/messages/cfd7a03013b3ea42f733dd6429ed2a35.jpg', 'FILE', '2017-09-27 05:05:26'),
(16, 3, 1, 'Y', 'TEXT', '2017-09-27 09:04:20'),
(17, 4, 3, 'Hello', 'TEXT', '2017-09-27 09:44:42'),
(18, 4, 3, 'Test', 'TEXT', '2017-09-27 09:44:44'),
(19, 4, 3, 'Test', 'TEXT', '2017-09-27 09:44:46'),
(20, 4, 3, 'Test', 'TEXT', '2017-09-27 09:44:48'),
(21, 4, 3, 'Test', 'TEXT', '2017-09-27 09:44:50'),
(22, 2, 1, 'Test', 'TEXT', '2017-09-27 09:45:05'),
(23, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:34'),
(24, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:35'),
(25, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:35'),
(26, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:35'),
(27, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:36'),
(28, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:36'),
(29, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:36'),
(30, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:37'),
(31, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:37'),
(32, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:37'),
(33, 2, 1, 'K', 'TEXT', '2017-09-27 09:45:37'),
(34, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:26'),
(35, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:27'),
(36, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:27'),
(37, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:27'),
(38, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:27'),
(39, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:27'),
(40, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:28'),
(41, 4, 3, 'D', 'TEXT', '2017-09-27 09:48:43'),
(42, 6, 6, 'Hello, Testing.', 'TEXT', '2017-09-27 19:53:41'),
(43, 9, 6, 'Hello', 'TEXT', '2017-09-27 19:53:51'),
(44, 9, 6, 'Working', 'TEXT', '2017-09-27 19:53:53'),
(45, 12, 7, 'Test', 'TEXT', '2017-09-27 19:56:11'),
(46, 6, 6, 'Yes', 'TEXT', '2017-09-27 19:56:30'),
(47, 6, 6, 'Checking more', 'TEXT', '2017-09-27 19:56:44'),
(48, 9, 6, 'Hello', 'TEXT', '2017-09-27 19:57:54'),
(49, 9, 6, 'Test', 'TEXT', '2017-09-27 19:58:43'),
(50, 9, 6, 'Testestst', 'TEXT', '2017-09-27 19:58:46'),
(51, 12, 7, '123', 'TEXT', '2017-09-27 20:06:55'),
(52, 12, 7, '456', 'TEXT', '2017-09-27 20:07:01'),
(53, 12, 7, '12', 'TEXT', '2017-09-27 20:09:24'),
(54, 12, 7, '34', 'TEXT', '2017-09-27 20:09:27'),
(55, 12, 7, '123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789', 'TEXT', '2017-09-27 21:32:23'),
(56, 12, 7, '123', 'TEXT', '2017-09-28 16:24:02'),
(57, 12, 7, 'uploads/messages/9907926be011baaa1fb13bc7789cf7e1.png', 'FILE', '2017-09-28 19:47:16'),
(58, 12, 7, 'Sending you my Apple photo', 'TEXT', '2017-09-28 19:47:16'),
(59, 12, 7, 'Nice', 'TEXT', '2017-09-28 19:47:59'),
(60, 6, 7, '123', 'TEXT', '2017-09-29 18:23:47'),
(61, 12, 7, '565', 'TEXT', '2017-09-29 20:04:01'),
(62, 12, 7, 'uploads/messages/c448eeb1188c5e8a5be6ff74ec30f31b.png', 'FILE', '2017-09-29 20:04:47'),
(63, 9, 5, 'Hello', 'TEXT', '2017-09-29 20:13:56'),
(64, 7, 5, 'Hi Joshua', 'TEXT', '2017-09-29 20:14:09'),
(65, 6, 7, '123456789', 'TEXT', '2017-09-29 21:03:21'),
(66, 6, 7, '112233445566778899', 'TEXT', '2017-09-29 21:03:27'),
(67, 20, 10, 'Test', 'TEXT', '2017-09-30 00:50:12'),
(68, 20, 11, 'Test', 'TEXT', '2017-09-30 00:50:25'),
(69, 20, 12, 'Test', 'TEXT', '2017-09-30 00:50:40'),
(70, 20, 11, 'Testing 123', 'TEXT', '2017-09-30 00:50:47'),
(71, 20, 10, 'Testing 456', 'TEXT', '2017-09-30 00:50:52'),
(72, 20, 12, 'Testing 789', 'TEXT', '2017-09-30 00:50:58'),
(73, 20, 12, 'Test', 'TEXT', '2017-09-30 00:51:09'),
(74, 20, 12, 'uploads/messages/fca6ac6a100f94e6ca7669861ec40ac4.jpg', 'FILE', '2017-09-30 00:51:19'),
(75, 20, 11, 'uploads/messages/be4e2b4ed84a4e328087f9fdc0aeba7c.png', 'FILE', '2017-09-30 00:51:33'),
(76, 20, 10, 'uploads/messages/59ec47006ff4967b455ee32b03cecda0.png', 'FILE', '2017-09-30 00:51:49'),
(77, 7, 12, 'Whoa nice infographic', 'TEXT', '2017-09-30 00:52:34'),
(78, 2, 1, 'Test', 'TEXT', '2017-09-30 05:33:15'),
(79, 2, 1, 'Test', 'TEXT', '2017-09-30 05:33:15'),
(80, 2, 1, 'uploads/messages/9234787c1fc5807b5727380dfb1a69ab.jpg', 'FILE', '2017-09-30 05:33:26'),
(81, 2, 1, 'Test', 'TEXT', '2017-09-30 05:33:26'),
(82, 2, 1, 'uploads/messages/a98c5078e463fadfde07cc5e80aad829.png', 'FILE', '2017-09-30 10:19:45'),
(83, 2, 1, 'uploads/messages/49514fd2ce30aea8aa6e99a6b0ca182e.png', 'FILE', '2017-09-30 10:19:52'),
(84, 2, 1, 'uploads/messages/6dbdd3b23388943086ffd7f2d152139c.png', 'FILE', '2017-09-30 10:19:59'),
(85, 2, 1, 'uploads/messages/84f9fcbc26c26912325a3093120efdd2.png', 'FILE', '2017-09-30 10:20:06'),
(86, 6, 6, 'Hello', 'TEXT', '2017-10-03 16:55:47'),
(87, 6, 6, 'I am looking for you on week days only. Please check my schedule and let me know if there is any issue with your timeline.', 'TEXT', '2017-10-03 16:56:50'),
(88, 12, 7, 'Hello', 'TEXT', '2017-10-03 17:00:10'),
(89, 12, 7, 'I check your schedule and looks good to me', 'TEXT', '2017-10-03 17:00:18'),
(90, 12, 7, 'I am ok with your schedule', 'TEXT', '2017-10-03 17:00:23'),
(91, 12, 7, 'Should i accept your invitation for current schedule?', 'TEXT', '2017-10-03 17:00:44'),
(92, 6, 7, 'Yes please', 'TEXT', '2017-10-03 17:00:53'),
(93, 6, 7, 'Go ahead and select Accept to confirm my schedule on particular day.', 'TEXT', '2017-10-03 17:01:18'),
(94, 6, 7, 'Do not forgot to book your schedule by today because i got many request from other users who would like to work with me. so if possible please accept it by today and do not make any delay.', 'TEXT', '2017-10-03 17:02:41'),
(95, 12, 7, 'Oh sure i am ready to start work with you from next week it self. it will be great that you informed me about how busy you are so that i can work with my assistance based on our schedule.', 'TEXT', '2017-10-03 17:04:25'),
(96, 12, 7, 'Fdgkjf hfg fjhdgkjhfdg hgfkjdg fdhgkjfdhgjkhdfjgkhfdkjghkjfkgjfd fjkhgjkhfdjhgjkfdhg fkdjhgkjfdhgjkfhdkgj fdhjgfkjdhgkjfdhgkjfdhgkjfdhgjkfhdgkjfdjkhgfd hjgkdgfdgfdgk', 'TEXT', '2017-10-03 17:05:53'),
(97, 6, 7, 'Kgfkgbkfdg . fdkbgfd', 'TEXT', '2017-10-03 17:09:22'),
(98, 2, 1, 'Hello, how are you?', 'TEXT', '2017-10-04 17:30:27'),
(99, 2, 1, 'Are you getting my message?', 'TEXT', '2017-10-04 17:32:06'),
(100, 2, 1, 'Is there any message in list by defaults?', 'TEXT', '2017-10-04 17:32:17'),
(101, 1, 1, 'No message by default', 'TEXT', '2017-10-04 17:34:57'),
(102, 1, 1, 'Yes got the messages', 'TEXT', '2017-10-04 17:35:02'),
(103, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:32'),
(104, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:32'),
(105, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:32'),
(106, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:33'),
(107, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:33'),
(108, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:33'),
(109, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:33'),
(110, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:34'),
(111, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:34'),
(112, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:34'),
(113, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:34'),
(114, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:35'),
(115, 5, 3, 'L', 'TEXT', '2017-10-06 09:52:35'),
(116, 4, 4, '1', 'TEXT', '2017-10-06 10:04:00'),
(117, 3, 2, 'Good job', 'TEXT', '2017-10-06 17:52:31'),
(118, 1, 2, 'Thanks', 'TEXT', '2017-10-06 17:52:38'),
(119, 1, 5, 'My name is George', 'TEXT', '2017-10-06 18:05:27'),
(120, 4, 5, 'uploads/messages/c67a02b05b309e0b1da2c67719de3c55.png', 'FILE', '2017-10-06 20:40:41'),
(121, 4, 5, 'Hello', 'TEXT', '2017-10-06 20:40:56'),
(122, 9, 7, 'Hello Greg', 'TEXT', '2017-10-06 21:03:39'),
(123, 4, 8, 'Hello Arley', 'TEXT', '2017-10-06 21:03:52'),
(124, 4, 8, 'How are you doing?>', 'TEXT', '2017-10-06 21:03:56'),
(125, 4, 8, 'I show your services and i am interested in it.', 'TEXT', '2017-10-06 21:04:13'),
(126, 4, 8, 'Let me know when you are free', 'TEXT', '2017-10-06 21:04:36'),
(127, 4, 8, 'Ok?', 'TEXT', '2017-10-06 21:04:44'),
(128, 4, 8, 'Good', 'TEXT', '2017-10-06 21:04:46'),
(129, 3, 7, 'Hello', 'TEXT', '2017-10-06 21:07:58'),
(130, 9, 8, 'Am good', 'TEXT', '2017-10-06 21:12:34'),
(131, 5, 3, 'Dfddf', 'TEXT', '2017-10-09 05:52:07'),
(132, 5, 3, 'Df', 'TEXT', '2017-10-09 05:52:07'),
(133, 5, 3, 'uploads/messages/8488c2552742988466b9b0cd900da1d5.jpg', 'FILE', '2017-10-09 05:52:10'),
(134, 5, 3, 'Dfd', 'TEXT', '2017-10-09 05:52:57'),
(135, 5, 3, 'F', 'TEXT', '2017-10-09 05:52:57'),
(136, 5, 3, 'uploads/messages/6409a4002e8401c9c1c2b8f757d8b3e4.jpg', 'FILE', '2017-10-09 05:52:59'),
(137, 5, 3, 'D', 'TEXT', '2017-10-09 05:52:59'),
(138, 5, 3, 'uploads/messages/ab2ebab07a3cd79608156258b550d727.jpg', 'FILE', '2017-10-09 05:56:05'),
(139, 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'TEXT', '2017-10-09 06:16:47'),
(140, 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown ', 'TEXT', '2017-10-09 06:17:01'),
(141, 5, 3, 'Hrrsa', 'TEXT', '2017-10-09 06:26:20'),
(142, 5, 3, 'Test', 'TEXT', '2017-10-09 06:26:24'),
(143, 5, 3, 'Test', 'TEXT', '2017-10-09 06:26:29'),
(144, 8, 3, 'Oye', 'TEXT', '2017-10-09 06:27:22'),
(145, 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown', 'TEXT', '2017-10-09 06:27:29'),
(146, 8, 3, 'Kaisariyo ', 'TEXT', '2017-10-09 06:27:29'),
(147, 5, 3, 'Blm', 'TEXT', '2017-10-09 06:27:37'),
(148, 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown', 'TEXT', '2017-10-09 06:27:55'),
(149, 8, 3, 'Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyo', 'TEXT', '2017-10-09 06:28:02'),
(150, 5, 3, 'Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyo', 'TEXT', '2017-10-09 06:28:11'),
(151, 8, 3, 'Oujoujjpjjljj', 'TEXT', '2017-10-09 06:29:56'),
(152, 8, 3, 'uploads/messages/d9d875053916b2ebac7761f171e7a5b0.png', 'FILE', '2017-10-09 06:29:57'),
(153, 5, 3, 'Fgfgf', 'TEXT', '2017-10-09 06:30:01'),
(154, 8, 3, 'Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyo', 'TEXT', '2017-10-09 06:30:16'),
(155, 5, 3, 'uploads/messages/fd8eda53556fba7ebc81b7f4cae40fe3.jpg', 'FILE', '2017-10-09 06:30:19'),
(156, 8, 3, 'Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyo Kaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyoKaisriyo kaisriyo maro', 'TEXT', '2017-10-09 06:30:29'),
(157, 5, 3, 'uploads/messages/38a11de6183c332def75203232a19204.png', 'FILE', '2017-10-09 06:30:30'),
(158, 5, 3, 'Dfdfdsdsdsdsdsdsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 'TEXT', '2017-10-09 06:32:36'),
(159, 5, 3, 'Test', 'TEXT', '2017-10-09 06:52:13'),
(160, 5, 3, 'Test', 'TEXT', '2017-10-09 06:52:16'),
(161, 5, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown', 'TEXT', '2017-10-09 06:52:28'),
(162, 5, 3, 'uploads/messages/488b8d4386c024a9b82cd85ed7b0935d.png', 'FILE', '2017-10-09 06:52:39'),
(163, 8, 3, 'https://www.eezybee.com', 'TEXT', '2017-10-09 10:47:08'),
(164, 8, 3, 'www.eezybee.com', 'TEXT', '2017-10-09 10:47:21'),
(165, 8, 3, 'Hr0786@gmail.com', 'TEXT', '2017-10-09 10:47:35'),
(166, 8, 3, 'Test@gmail.com', 'TEXT', '2017-10-09 10:47:43'),
(167, 8, 3, 'https://www.eezybee.com', 'TEXT', '2017-10-09 10:47:45'),
(168, 2, 4, 'Hello', 'TEXT', '2017-10-09 18:29:59'),
(169, 2, 4, 'Hi', 'TEXT', '2017-10-09 18:30:06'),
(170, 2, 4, '1', 'TEXT', '2017-10-09 21:14:00'),
(171, 2, 4, '1', 'TEXT', '2017-10-09 21:14:00'),
(172, 2, 4, '1', 'TEXT', '2017-10-09 21:14:00'),
(173, 2, 4, '1', 'TEXT', '2017-10-09 21:14:00'),
(174, 2, 4, '1', 'TEXT', '2017-10-09 21:14:00'),
(175, 2, 4, '1', 'TEXT', '2017-10-09 21:14:01'),
(176, 2, 4, '1', 'TEXT', '2017-10-09 21:14:01'),
(177, 2, 4, '1', 'TEXT', '2017-10-09 21:14:01'),
(178, 2, 4, '111', 'TEXT', '2017-10-09 21:14:02'),
(179, 2, 4, '1', 'TEXT', '2017-10-09 21:14:02'),
(180, 2, 4, '1', 'TEXT', '2017-10-09 21:14:02'),
(181, 2, 4, '1', 'TEXT', '2017-10-09 21:14:02'),
(182, 2, 4, '1', 'TEXT', '2017-10-09 21:14:02'),
(183, 2, 4, '1', 'TEXT', '2017-10-09 21:14:03'),
(184, 2, 4, '1', 'TEXT', '2017-10-09 21:14:03'),
(185, 2, 4, '1', 'TEXT', '2017-10-09 21:14:03'),
(186, 2, 4, '1', 'TEXT', '2017-10-09 21:14:03'),
(187, 2, 4, '1', 'TEXT', '2017-10-09 21:14:04'),
(188, 2, 4, '1', 'TEXT', '2017-10-09 21:14:04'),
(189, 2, 4, '2', 'TEXT', '2017-10-09 21:14:04'),
(190, 2, 4, '2', 'TEXT', '2017-10-09 21:14:04'),
(191, 2, 4, '3', 'TEXT', '2017-10-09 21:14:05'),
(192, 2, 4, '423', 'TEXT', '2017-10-09 21:14:05'),
(193, 2, 4, '4', 'TEXT', '2017-10-09 21:14:05'),
(194, 2, 4, '32', 'TEXT', '2017-10-09 21:14:05'),
(195, 2, 4, '43', 'TEXT', '2017-10-09 21:14:05'),
(196, 2, 4, '24', 'TEXT', '2017-10-09 21:14:05'),
(197, 2, 4, '32', 'TEXT', '2017-10-09 21:14:06'),
(198, 2, 4, '4', 'TEXT', '2017-10-09 21:14:06'),
(199, 2, 4, '32', 'TEXT', '2017-10-09 21:14:06'),
(200, 2, 4, '432', 'TEXT', '2017-10-09 21:14:06'),
(201, 2, 4, '43', 'TEXT', '2017-10-09 21:14:06'),
(202, 2, 4, '24', 'TEXT', '2017-10-09 21:14:06'),
(203, 2, 4, '23', 'TEXT', '2017-10-09 21:14:07'),
(204, 2, 4, '43', 'TEXT', '2017-10-09 21:14:08'),
(205, 2, 4, '4', 'TEXT', '2017-10-09 21:14:08'),
(206, 2, 4, '32', 'TEXT', '2017-10-09 21:14:08'),
(207, 2, 4, '4', 'TEXT', '2017-10-09 21:14:08'),
(208, 2, 4, '32', 'TEXT', '2017-10-09 21:14:08'),
(209, 2, 4, '43', 'TEXT', '2017-10-09 21:14:08'),
(210, 2, 4, '243', 'TEXT', '2017-10-09 21:14:08'),
(211, 2, 4, '43', 'TEXT', '2017-10-09 21:14:08'),
(212, 2, 4, '43', 'TEXT', '2017-10-09 21:14:10'),
(213, 2, 4, '5', 'TEXT', '2017-10-09 21:14:10'),
(214, 2, 4, '43', 'TEXT', '2017-10-09 21:14:10'),
(215, 2, 4, '5', 'TEXT', '2017-10-09 21:14:10'),
(216, 2, 4, '435', 'TEXT', '2017-10-09 21:14:10'),
(217, 2, 4, '43', 'TEXT', '2017-10-09 21:14:11'),
(218, 2, 4, '5', 'TEXT', '2017-10-09 21:14:11'),
(219, 2, 4, '43', 'TEXT', '2017-10-09 21:14:11'),
(220, 2, 4, '534', 'TEXT', '2017-10-09 21:14:11'),
(221, 2, 4, '54', 'TEXT', '2017-10-09 21:14:11'),
(222, 2, 4, '35', 'TEXT', '2017-10-09 21:14:11'),
(223, 2, 4, '43', 'TEXT', '2017-10-09 21:14:12'),
(224, 2, 4, '5543', 'TEXT', '2017-10-09 21:14:12'),
(225, 2, 4, '5', 'TEXT', '2017-10-09 21:14:12'),
(226, 2, 4, '435', 'TEXT', '2017-10-09 21:14:12'),
(227, 2, 4, '34', 'TEXT', '2017-10-09 21:14:12'),
(228, 2, 4, '54', 'TEXT', '2017-10-09 21:14:13'),
(229, 2, 4, '3', 'TEXT', '2017-10-09 21:14:13'),
(230, 2, 4, '543', 'TEXT', '2017-10-09 21:14:13'),
(231, 2, 4, '545', 'TEXT', '2017-10-09 21:14:13'),
(232, 2, 4, '4', 'TEXT', '2017-10-09 21:14:14'),
(233, 2, 4, '4', 'TEXT', '2017-10-09 21:14:14'),
(234, 2, 4, '5', 'TEXT', '2017-10-09 21:14:14'),
(235, 2, 4, '345', 'TEXT', '2017-10-09 21:14:14'),
(236, 2, 4, '4', 'TEXT', '2017-10-09 21:14:14'),
(237, 2, 4, '4', 'TEXT', '2017-10-09 21:14:15'),
(238, 2, 4, '5', 'TEXT', '2017-10-09 21:14:15'),
(239, 2, 4, '43', 'TEXT', '2017-10-09 21:14:15'),
(240, 2, 4, '5', 'TEXT', '2017-10-09 21:14:15'),
(241, 2, 4, '4', 'TEXT', '2017-10-09 21:14:15'),
(242, 2, 4, '5', 'TEXT', '2017-10-09 21:14:15'),
(243, 2, 4, '43', 'TEXT', '2017-10-09 21:14:16'),
(244, 2, 4, '54', 'TEXT', '2017-10-09 21:14:16'),
(245, 2, 4, '35', 'TEXT', '2017-10-09 21:14:16'),
(246, 2, 4, '43', 'TEXT', '2017-10-09 21:14:16'),
(247, 2, 4, '5543', 'TEXT', '2017-10-09 21:14:28'),
(248, 2, 4, '54353', 'TEXT', '2017-10-09 21:14:28'),
(249, 2, 4, '45', 'TEXT', '2017-10-09 21:14:28'),
(250, 2, 4, '435', 'TEXT', '2017-10-09 21:14:28'),
(251, 2, 4, '3', 'TEXT', '2017-10-09 21:14:29'),
(252, 2, 4, '45', 'TEXT', '2017-10-09 21:14:29'),
(253, 2, 4, '4', 'TEXT', '2017-10-09 21:14:29'),
(254, 2, 4, '5', 'TEXT', '2017-10-09 21:14:29'),
(255, 2, 4, '345', 'TEXT', '2017-10-09 21:14:29'),
(256, 2, 4, '34', 'TEXT', '2017-10-09 21:14:29'),
(257, 2, 4, '5', 'TEXT', '2017-10-09 21:14:30'),
(258, 2, 4, '43', 'TEXT', '2017-10-09 21:14:30'),
(259, 2, 4, '454', 'TEXT', '2017-10-09 21:14:30'),
(260, 2, 4, '3', 'TEXT', '2017-10-09 21:14:30'),
(261, 2, 4, '53454', 'TEXT', '2017-10-09 21:14:30'),
(262, 2, 4, '43', 'TEXT', '2017-10-09 21:14:31'),
(263, 2, 4, '54', 'TEXT', '2017-10-09 21:14:31'),
(264, 2, 4, '35', 'TEXT', '2017-10-09 21:14:31'),
(265, 2, 4, '34', 'TEXT', '2017-10-09 21:14:31'),
(266, 2, 4, '543', 'TEXT', '2017-10-09 21:14:31'),
(267, 2, 4, '54', 'TEXT', '2017-10-09 21:14:32'),
(268, 2, 4, '35', 'TEXT', '2017-10-09 21:14:32'),
(269, 2, 4, '2321321', 'TEXT', '2017-10-09 21:14:45'),
(270, 2, 4, '321', 'TEXT', '2017-10-09 21:14:45'),
(271, 2, 4, '3', 'TEXT', '2017-10-09 21:14:46'),
(272, 2, 4, '213', 'TEXT', '2017-10-09 21:14:46'),
(273, 2, 4, '12', 'TEXT', '2017-10-09 21:14:46'),
(274, 2, 4, '3', 'TEXT', '2017-10-09 21:14:46'),
(275, 2, 4, '2', 'TEXT', '2017-10-09 21:14:46'),
(276, 2, 4, '3', 'TEXT', '2017-10-09 21:14:46'),
(277, 2, 4, '2', 'TEXT', '2017-10-09 21:14:47'),
(278, 2, 4, '1', 'TEXT', '2017-10-09 21:14:47'),
(279, 2, 4, '231', 'TEXT', '2017-10-09 21:14:47'),
(280, 2, 4, '312', 'TEXT', '2017-10-09 21:14:47'),
(281, 2, 4, '3', 'TEXT', '2017-10-09 21:14:48'),
(282, 2, 4, '213', 'TEXT', '2017-10-09 21:14:48'),
(283, 2, 4, '3', 'TEXT', '2017-10-09 21:14:48'),
(284, 2, 4, '21', 'TEXT', '2017-10-09 21:14:48'),
(285, 2, 4, '32', 'TEXT', '2017-10-09 21:14:48'),
(286, 2, 4, '1', 'TEXT', '2017-10-09 21:14:49'),
(287, 2, 4, '32', 'TEXT', '2017-10-09 21:14:49'),
(288, 2, 4, '13', 'TEXT', '2017-10-09 21:14:49'),
(289, 2, 4, '12', 'TEXT', '2017-10-09 21:14:49'),
(290, 2, 4, '3', 'TEXT', '2017-10-09 21:14:49'),
(291, 2, 4, '21', 'TEXT', '2017-10-09 21:14:49'),
(292, 2, 4, '312', 'TEXT', '2017-10-09 21:14:50'),
(293, 2, 4, '3', 'TEXT', '2017-10-09 21:14:50'),
(294, 2, 4, '21', 'TEXT', '2017-10-09 21:14:51'),
(295, 2, 4, '4', 'TEXT', '2017-10-09 21:14:58'),
(296, 2, 4, '4', 'TEXT', '2017-10-09 21:14:58'),
(297, 2, 4, '4', 'TEXT', '2017-10-09 21:14:58'),
(298, 2, 4, '4', 'TEXT', '2017-10-09 21:14:58'),
(299, 2, 4, '4', 'TEXT', '2017-10-09 21:14:59'),
(300, 2, 4, '4', 'TEXT', '2017-10-09 21:14:59'),
(301, 2, 4, '4', 'TEXT', '2017-10-09 21:14:59'),
(302, 2, 4, '4', 'TEXT', '2017-10-09 21:14:59'),
(303, 2, 4, '4', 'TEXT', '2017-10-09 21:14:59'),
(304, 2, 4, '4', 'TEXT', '2017-10-09 21:15:00'),
(305, 2, 4, '3', 'TEXT', '2017-10-09 21:15:00'),
(306, 2, 4, '3', 'TEXT', '2017-10-09 21:15:00'),
(307, 2, 4, '3', 'TEXT', '2017-10-09 21:15:00'),
(308, 2, 4, '3', 'TEXT', '2017-10-09 21:15:01'),
(309, 2, 4, '2', 'TEXT', '2017-10-09 21:15:01'),
(310, 2, 4, '3', 'TEXT', '2017-10-09 21:15:01'),
(311, 2, 4, '2', 'TEXT', '2017-10-09 21:15:01'),
(312, 2, 4, '3', 'TEXT', '2017-10-09 21:15:01'),
(313, 2, 4, '23', 'TEXT', '2017-10-09 21:15:01'),
(314, 2, 4, '2', 'TEXT', '2017-10-09 21:15:01'),
(315, 2, 4, '3', 'TEXT', '2017-10-09 21:15:02'),
(316, 2, 4, '2', 'TEXT', '2017-10-09 21:15:02'),
(317, 2, 4, '3', 'TEXT', '2017-10-09 21:15:02'),
(318, 2, 4, '23', 'TEXT', '2017-10-09 21:15:02'),
(319, 2, 4, '3', 'TEXT', '2017-10-09 21:15:02'),
(320, 2, 4, '2', 'TEXT', '2017-10-09 21:15:02'),
(321, 2, 4, '2', 'TEXT', '2017-10-09 21:15:03'),
(322, 2, 4, '32', 'TEXT', '2017-10-09 21:15:03'),
(323, 2, 4, '3', 'TEXT', '2017-10-09 21:15:03'),
(324, 2, 4, '2', 'TEXT', '2017-10-09 21:15:03'),
(325, 2, 4, '32', 'TEXT', '2017-10-09 21:15:03'),
(326, 2, 4, '32', 'TEXT', '2017-10-09 21:15:04'),
(327, 2, 4, '32', 'TEXT', '2017-10-09 21:15:04'),
(328, 2, 4, '3', 'TEXT', '2017-10-09 21:15:04'),
(329, 2, 4, '2', 'TEXT', '2017-10-09 21:15:04'),
(330, 2, 4, '3', 'TEXT', '2017-10-09 21:15:04'),
(331, 2, 4, '2', 'TEXT', '2017-10-09 21:15:05'),
(332, 2, 4, '3', 'TEXT', '2017-10-09 21:15:05'),
(333, 2, 4, '2', 'TEXT', '2017-10-09 21:15:05'),
(334, 2, 4, '3', 'TEXT', '2017-10-09 21:15:05'),
(335, 2, 4, '23', 'TEXT', '2017-10-09 21:15:05'),
(336, 2, 4, '2', 'TEXT', '2017-10-09 21:15:05'),
(337, 2, 4, '3', 'TEXT', '2017-10-09 21:15:05'),
(338, 2, 4, '2', 'TEXT', '2017-10-09 21:15:06'),
(339, 2, 4, '3', 'TEXT', '2017-10-09 21:15:06'),
(340, 2, 4, '23', 'TEXT', '2017-10-09 21:15:06'),
(341, 2, 4, '2', 'TEXT', '2017-10-09 21:15:06'),
(342, 2, 4, '3', 'TEXT', '2017-10-09 21:15:06'),
(343, 2, 4, '2', 'TEXT', '2017-10-09 21:15:06'),
(344, 2, 4, '3', 'TEXT', '2017-10-09 21:15:07'),
(345, 2, 4, '23', 'TEXT', '2017-10-09 21:15:07'),
(346, 2, 4, '2', 'TEXT', '2017-10-09 21:15:07'),
(347, 2, 4, '3', 'TEXT', '2017-10-09 21:15:07'),
(348, 2, 4, '2', 'TEXT', '2017-10-09 21:15:07'),
(349, 2, 4, '3', 'TEXT', '2017-10-09 21:15:07'),
(350, 2, 4, '2', 'TEXT', '2017-10-09 21:15:08'),
(351, 2, 4, '332', 'TEXT', '2017-10-09 21:15:08'),
(352, 2, 4, '3', 'TEXT', '2017-10-09 21:15:08'),
(353, 2, 4, '2', 'TEXT', '2017-10-09 21:15:08'),
(354, 2, 4, '3', 'TEXT', '2017-10-09 21:15:08'),
(355, 2, 4, '2', 'TEXT', '2017-10-09 21:15:08'),
(356, 2, 4, '3', 'TEXT', '2017-10-09 21:15:09'),
(357, 2, 4, '2', 'TEXT', '2017-10-09 21:15:09'),
(358, 2, 4, '32', 'TEXT', '2017-10-09 21:15:09'),
(359, 2, 4, '32', 'TEXT', '2017-10-09 21:15:09'),
(360, 2, 4, '3', 'TEXT', '2017-10-09 21:15:09'),
(361, 2, 4, '2', 'TEXT', '2017-10-09 21:15:10'),
(362, 2, 4, '3', 'TEXT', '2017-10-09 21:15:10'),
(363, 2, 4, '2', 'TEXT', '2017-10-09 21:15:10'),
(364, 2, 4, '32', 'TEXT', '2017-10-09 21:15:10'),
(365, 2, 4, '23', 'TEXT', '2017-10-09 21:15:10'),
(366, 2, 4, '32', 'TEXT', '2017-10-09 21:15:11'),
(367, 2, 4, '3', 'TEXT', '2017-10-09 21:15:11'),
(368, 2, 4, '3', 'TEXT', '2017-10-09 21:15:11'),
(369, 2, 4, '2', 'TEXT', '2017-10-09 21:15:11'),
(370, 2, 4, '3', 'TEXT', '2017-10-09 21:15:11'),
(371, 2, 4, '1', 'TEXT', '2017-10-09 21:15:12'),
(372, 2, 4, '3', 'TEXT', '2017-10-09 21:15:12'),
(373, 2, 4, '213', 'TEXT', '2017-10-09 21:15:12'),
(374, 2, 4, '2', 'TEXT', '2017-10-09 21:15:12'),
(375, 2, 4, '1', 'TEXT', '2017-10-09 21:15:12'),
(376, 2, 4, '3', 'TEXT', '2017-10-09 21:15:12'),
(377, 2, 4, '123', 'TEXT', '2017-10-09 21:15:13'),
(378, 2, 4, '2', 'TEXT', '2017-10-09 21:15:13'),
(379, 2, 4, '3', 'TEXT', '2017-10-09 21:15:13'),
(380, 2, 4, '3', 'TEXT', '2017-10-09 21:15:13'),
(381, 2, 4, '2132', 'TEXT', '2017-10-09 21:15:13'),
(382, 2, 4, '13', 'TEXT', '2017-10-09 21:15:14'),
(383, 2, 4, '12', 'TEXT', '2017-10-09 21:15:14'),
(384, 2, 4, '321', 'TEXT', '2017-10-09 21:15:14'),
(385, 2, 4, '3', 'TEXT', '2017-10-09 21:15:14'),
(386, 2, 4, '2', 'TEXT', '2017-10-09 21:15:14'),
(387, 2, 4, '32', 'TEXT', '2017-10-09 21:15:15'),
(388, 2, 4, '3', 'TEXT', '2017-10-09 21:15:15'),
(389, 2, 4, '123', 'TEXT', '2017-10-09 21:15:15'),
(390, 2, 4, '21', 'TEXT', '2017-10-09 21:15:15'),
(391, 2, 4, '321', 'TEXT', '2017-10-09 21:15:16'),
(392, 2, 4, '3', 'TEXT', '2017-10-09 21:15:16'),
(393, 2, 4, '21', 'TEXT', '2017-10-09 21:15:16'),
(394, 2, 4, '3', 'TEXT', '2017-10-09 21:15:16'),
(395, 2, 4, '21', 'TEXT', '2017-10-09 21:15:16'),
(396, 2, 4, '32', 'TEXT', '2017-10-09 21:15:17'),
(397, 2, 4, '13', 'TEXT', '2017-10-09 21:15:17'),
(398, 2, 4, '2', 'TEXT', '2017-10-09 21:15:17'),
(399, 2, 4, '3', 'TEXT', '2017-10-09 21:15:17'),
(400, 2, 4, '2', 'TEXT', '2017-10-09 21:15:18'),
(401, 2, 4, '3', 'TEXT', '2017-10-09 21:15:18'),
(402, 2, 4, '23', 'TEXT', '2017-10-09 21:15:18'),
(403, 2, 4, '2', 'TEXT', '2017-10-09 21:15:18'),
(404, 2, 4, '3', 'TEXT', '2017-10-09 21:15:18'),
(405, 2, 4, '2', 'TEXT', '2017-10-09 21:15:19'),
(406, 2, 4, '3', 'TEXT', '2017-10-09 21:15:19'),
(407, 2, 4, '23', 'TEXT', '2017-10-09 21:15:19'),
(408, 2, 4, '2', 'TEXT', '2017-10-09 21:15:19'),
(409, 2, 4, '21', 'TEXT', '2017-10-09 21:15:20'),
(410, 2, 4, '3', 'TEXT', '2017-10-09 21:15:20'),
(411, 2, 4, '1', 'TEXT', '2017-10-09 21:15:20'),
(412, 2, 4, '3', 'TEXT', '2017-10-09 21:15:20'),
(413, 2, 4, '21', 'TEXT', '2017-10-09 21:15:20'),
(414, 2, 4, '3', 'TEXT', '2017-10-09 21:15:21'),
(415, 2, 4, '21', 'TEXT', '2017-10-09 21:15:21'),
(416, 2, 4, '3', 'TEXT', '2017-10-09 21:15:21'),
(417, 2, 4, '21', 'TEXT', '2017-10-09 21:15:21'),
(418, 2, 4, '32', 'TEXT', '2017-10-09 21:15:21'),
(419, 2, 4, '13', 'TEXT', '2017-10-09 21:15:22'),
(420, 2, 4, '2', 'TEXT', '2017-10-09 21:15:22'),
(421, 2, 4, '13', 'TEXT', '2017-10-09 21:15:22'),
(422, 2, 4, '21', 'TEXT', '2017-10-09 21:15:22'),
(423, 2, 4, '3', 'TEXT', '2017-10-09 21:15:22'),
(424, 2, 4, '213', 'TEXT', '2017-10-09 21:15:23'),
(425, 2, 4, '21', 'TEXT', '2017-10-09 21:15:23'),
(426, 2, 4, '3', 'TEXT', '2017-10-09 21:15:23'),
(427, 2, 4, '123', 'TEXT', '2017-10-09 21:15:23'),
(428, 2, 4, '2', 'TEXT', '2017-10-09 21:15:24'),
(429, 2, 4, '32', 'TEXT', '2017-10-09 21:15:24'),
(430, 2, 4, '1', 'TEXT', '2017-10-09 21:15:24'),
(431, 2, 4, '3', 'TEXT', '2017-10-09 21:15:24'),
(432, 2, 4, '21', 'TEXT', '2017-10-09 21:15:24'),
(433, 2, 4, '3', 'TEXT', '2017-10-09 21:15:24'),
(434, 2, 4, '1', 'TEXT', '2017-10-09 21:15:25'),
(435, 2, 4, '3', 'TEXT', '2017-10-09 21:15:25'),
(436, 2, 4, '2', 'TEXT', '2017-10-09 21:15:25'),
(437, 2, 4, '12', 'TEXT', '2017-10-09 21:15:25'),
(438, 2, 4, '23', 'TEXT', '2017-10-09 21:15:25'),
(439, 2, 4, '2', 'TEXT', '2017-10-09 21:15:26'),
(440, 2, 4, '3', 'TEXT', '2017-10-09 21:15:26'),
(441, 2, 4, '2', 'TEXT', '2017-10-09 21:15:26'),
(442, 2, 4, '3', 'TEXT', '2017-10-09 21:15:26'),
(443, 2, 4, '2', 'TEXT', '2017-10-09 21:15:26'),
(444, 2, 4, '1', 'TEXT', '2017-10-09 21:15:27'),
(445, 2, 4, '3', 'TEXT', '2017-10-09 21:15:27'),
(446, 2, 4, '2', 'TEXT', '2017-10-09 21:15:27'),
(447, 2, 4, '1', 'TEXT', '2017-10-09 21:15:27'),
(448, 2, 4, '32', 'TEXT', '2017-10-09 21:15:28'),
(449, 2, 4, '3', 'TEXT', '2017-10-09 21:15:28'),
(450, 2, 4, '12', 'TEXT', '2017-10-09 21:15:28'),
(451, 2, 4, '3', 'TEXT', '2017-10-09 21:15:28'),
(452, 2, 4, '21', 'TEXT', '2017-10-09 21:15:28'),
(453, 2, 4, '32', 'TEXT', '2017-10-09 21:15:29'),
(454, 2, 4, '23', 'TEXT', '2017-10-09 21:15:29'),
(455, 2, 4, '2', 'TEXT', '2017-10-09 21:15:29'),
(456, 2, 4, '3321', 'TEXT', '2017-10-09 21:15:29'),
(457, 2, 4, '3', 'TEXT', '2017-10-09 21:15:30'),
(458, 2, 4, '32', 'TEXT', '2017-10-09 21:15:30'),
(459, 2, 4, '3', 'TEXT', '2017-10-09 21:15:31'),
(460, 2, 4, '23', 'TEXT', '2017-10-09 21:15:31'),
(461, 2, 4, '43', 'TEXT', '2017-10-09 21:15:31'),
(462, 2, 4, '24', 'TEXT', '2017-10-09 21:15:32'),
(463, 2, 4, 'Wer', 'TEXT', '2017-10-09 21:15:32'),
(464, 2, 4, 'Ew', 'TEXT', '2017-10-09 21:15:32'),
(465, 2, 4, 'R', 'TEXT', '2017-10-09 21:15:32'),
(466, 2, 4, 'Ew', 'TEXT', '2017-10-09 21:15:33'),
(467, 2, 4, 'R', 'TEXT', '2017-10-09 21:15:33'),
(468, 2, 4, 'Er', 'TEXT', '2017-10-09 21:15:33'),
(469, 2, 4, 'Rw', 'TEXT', '2017-10-09 21:15:33'),
(470, 2, 4, 'W', 'TEXT', '2017-10-09 21:15:33'),
(471, 2, 4, 'Ew', 'TEXT', '2017-10-09 21:15:34'),
(472, 2, 4, 'Qe', 'TEXT', '2017-10-09 21:15:34'),
(473, 2, 4, 'W', 'TEXT', '2017-10-09 21:15:34'),
(474, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:34'),
(475, 2, 4, 'Wq', 'TEXT', '2017-10-09 21:15:34'),
(476, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:34'),
(477, 2, 4, 'Qw', 'TEXT', '2017-10-09 21:15:35'),
(478, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:35'),
(479, 2, 4, 'We', 'TEXT', '2017-10-09 21:15:35'),
(480, 2, 4, 'Wq', 'TEXT', '2017-10-09 21:15:35'),
(481, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:35'),
(482, 2, 4, 'Wqe', 'TEXT', '2017-10-09 21:15:36'),
(483, 2, 4, 'Qw', 'TEXT', '2017-10-09 21:15:36'),
(484, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:36'),
(485, 2, 4, 'Wq', 'TEXT', '2017-10-09 21:15:36'),
(486, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:36'),
(487, 2, 4, 'Wq', 'TEXT', '2017-10-09 21:15:37'),
(488, 2, 4, 'Ew', 'TEXT', '2017-10-09 21:15:37'),
(489, 2, 4, 'Qe', 'TEXT', '2017-10-09 21:15:37'),
(490, 2, 4, 'Qe', 'TEXT', '2017-10-09 21:15:37'),
(491, 2, 4, 'Qw', 'TEXT', '2017-10-09 21:15:37'),
(492, 2, 4, 'Eqw', 'TEXT', '2017-10-09 21:15:38'),
(493, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:38'),
(494, 2, 4, 'Qw', 'TEXT', '2017-10-09 21:15:38'),
(495, 2, 4, 'E', 'TEXT', '2017-10-09 21:15:38'),
(496, 2, 4, 'Qwe', 'TEXT', '2017-10-09 21:15:38'),
(497, 2, 4, 'Dfs', 'TEXT', '2017-10-09 21:15:51'),
(498, 2, 4, 'Dsfd', 'TEXT', '2017-10-09 21:15:59'),
(499, 2, 4, 'Sf', 'TEXT', '2017-10-09 21:15:59'),
(500, 2, 4, 'Fd', 'TEXT', '2017-10-09 21:16:00'),
(501, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:00'),
(502, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:00'),
(503, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:00'),
(504, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:00'),
(505, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:00'),
(506, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:01'),
(507, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:01'),
(508, 2, 4, 'S', 'TEXT', '2017-10-09 21:16:01'),
(509, 2, 4, 'Dfds', 'TEXT', '2017-10-09 21:16:01'),
(510, 2, 4, 'Sf', 'TEXT', '2017-10-09 21:16:01'),
(511, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:01'),
(512, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:02'),
(513, 2, 4, 'Dsfs', 'TEXT', '2017-10-09 21:16:02'),
(514, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:02'),
(515, 2, 4, 'S', 'TEXT', '2017-10-09 21:16:02'),
(516, 2, 4, 'Df', 'TEXT', '2017-10-09 21:16:02'),
(517, 2, 4, 'Sdf', 'TEXT', '2017-10-09 21:16:03'),
(518, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:03'),
(519, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:03'),
(520, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:03'),
(521, 2, 4, 'Fsd', 'TEXT', '2017-10-09 21:16:04'),
(522, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:04'),
(523, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:04'),
(524, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:04'),
(525, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:04'),
(526, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:05'),
(527, 2, 4, 'Sdf', 'TEXT', '2017-10-09 21:16:05'),
(528, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:05'),
(529, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:05'),
(530, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:05'),
(531, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:06'),
(532, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:06'),
(533, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:06'),
(534, 2, 4, 'Sdf', 'TEXT', '2017-10-09 21:16:06'),
(535, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:06'),
(536, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:07'),
(537, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:07'),
(538, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:07'),
(539, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:07'),
(540, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:07'),
(541, 2, 4, 'Dsf', 'TEXT', '2017-10-09 21:16:07'),
(542, 2, 4, 'D', 'TEXT', '2017-10-09 21:16:08'),
(543, 2, 4, 'Sf', 'TEXT', '2017-10-09 21:16:08'),
(544, 2, 4, 'S', 'TEXT', '2017-10-09 21:16:08'),
(545, 2, 4, 'Df', 'TEXT', '2017-10-09 21:16:08'),
(546, 2, 4, 'Dsfd', 'TEXT', '2017-10-09 21:16:09'),
(547, 2, 4, 'S', 'TEXT', '2017-10-09 21:16:09'),
(548, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:09'),
(549, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:09'),
(550, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:09'),
(551, 2, 4, 'S', 'TEXT', '2017-10-09 21:16:09'),
(552, 2, 4, 'Df', 'TEXT', '2017-10-09 21:16:10'),
(553, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:10'),
(554, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:10'),
(555, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:10'),
(556, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:10'),
(557, 2, 4, 'Sd', 'TEXT', '2017-10-09 21:16:11'),
(558, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:11'),
(559, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:11'),
(560, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:11'),
(561, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:11'),
(562, 2, 4, 'Ds', 'TEXT', '2017-10-09 21:16:12'),
(563, 2, 4, 'F', 'TEXT', '2017-10-09 21:16:12'),
(564, 4, 4, '21', 'TEXT', '2017-10-09 21:17:02'),
(565, 4, 4, '32', 'TEXT', '2017-10-09 21:17:13'),
(566, 17, 9, 'Test', 'TEXT', '2017-10-09 21:46:39'),
(567, 17, 9, 'Just testing over here', 'TEXT', '2017-10-09 21:46:45'),
(568, 17, 9, 'uploads/messages/856521678ed11a8fd505335950ccd2aa.jpg', 'FILE', '2017-10-09 21:47:01'),
(569, 2, 4, 'Hi', 'TEXT', '2017-10-10 17:14:55'),
(570, 2, 4, '6545', 'TEXT', '2017-10-10 17:15:19'),
(571, 2, 4, 'Fdsfds', 'TEXT', '2017-10-10 17:15:53'),
(572, 2, 4, 'Fdsfds', 'TEXT', '2017-10-10 17:15:55'),
(573, 2, 4, 'Gdfg', 'TEXT', '2017-10-10 17:16:21'),
(574, 2, 4, 'Dfg', 'TEXT', '2017-10-10 17:16:21'),
(575, 2, 4, 'Fd', 'TEXT', '2017-10-10 17:16:21'),
(576, 2, 4, 'Gdfgfd', 'TEXT', '2017-10-10 17:16:22'),
(577, 2, 4, 'Gdf', 'TEXT', '2017-10-10 17:16:22'),
(578, 2, 4, 'Gfd', 'TEXT', '2017-10-10 17:16:22'),
(579, 2, 4, 'G', 'TEXT', '2017-10-10 17:16:22'),
(580, 2, 4, 'Fdg', 'TEXT', '2017-10-10 17:16:22'),
(581, 2, 4, 'Fg', 'TEXT', '2017-10-10 17:16:22'),
(582, 2, 4, 'Df', 'TEXT', '2017-10-10 17:16:23'),
(583, 2, 4, 'Gdfg', 'TEXT', '2017-10-10 17:16:23'),
(584, 2, 4, 'Dfg', 'TEXT', '2017-10-10 17:16:23'),
(585, 2, 4, 'F', 'TEXT', '2017-10-10 17:16:23'),
(586, 2, 4, 'Dg', 'TEXT', '2017-10-10 17:16:23'),
(587, 2, 4, 'Dfg', 'TEXT', '2017-10-10 17:16:24'),
(588, 2, 4, 'Df', 'TEXT', '2017-10-10 17:16:24'),
(589, 2, 4, 'G', 'TEXT', '2017-10-10 17:16:24'),
(590, 2, 4, 'Df', 'TEXT', '2017-10-10 17:16:24'),
(591, 2, 4, 'Gd', 'TEXT', '2017-10-10 17:16:24'),
(592, 2, 4, 'Gfd', 'TEXT', '2017-10-10 17:16:25'),
(593, 2, 4, 'G', 'TEXT', '2017-10-10 17:16:25'),
(594, 2, 4, 'Gfg', 'TEXT', '2017-10-10 17:16:25'),
(595, 2, 4, 'F', 'TEXT', '2017-10-10 17:16:25'),
(596, 2, 4, 'Gfd', 'TEXT', '2017-10-10 17:16:26'),
(597, 2, 4, 'Ghgfh', 'TEXT', '2017-10-10 17:16:36'),
(598, 2, 4, 'Fgh', 'TEXT', '2017-10-10 17:16:36'),
(599, 2, 4, 'Fgh', 'TEXT', '2017-10-10 17:16:36'),
(600, 2, 4, 'F', 'TEXT', '2017-10-10 17:16:37'),
(601, 2, 4, 'Gh', 'TEXT', '2017-10-10 17:16:37'),
(602, 2, 4, 'Gfhghgf', 'TEXT', '2017-10-10 17:16:37'),
(603, 2, 4, 'Hfgh', 'TEXT', '2017-10-10 17:16:38'),
(604, 2, 4, 'Gfh', 'TEXT', '2017-10-10 17:16:38'),
(605, 2, 4, 'Gfh', 'TEXT', '2017-10-10 17:16:38'),
(606, 2, 4, 'Gh', 'TEXT', '2017-10-10 17:16:39'),
(607, 2, 4, 'Gf', 'TEXT', '2017-10-10 17:16:39'),
(608, 2, 4, 'Hfg', 'TEXT', '2017-10-10 17:16:39'),
(609, 2, 4, 'Hgf', 'TEXT', '2017-10-10 17:16:40'),
(610, 2, 4, 'H', 'TEXT', '2017-10-10 17:16:40'),
(611, 2, 4, 'Gh', 'TEXT', '2017-10-10 17:16:40'),
(612, 2, 4, 'Fghgh', 'TEXT', '2017-10-10 17:16:42'),
(613, 4, 4, 'Hello', 'TEXT', '2017-10-10 17:17:18'),
(614, 17, 11, 'Testing', 'TEXT', '2017-10-10 21:19:47'),
(615, 17, 12, 'Test', 'TEXT', '2017-10-10 21:20:07'),
(616, 17, 9, 'Test', 'TEXT', '2017-10-10 21:20:22'),
(617, 15, 16, 'Hello', 'TEXT', '2017-10-10 21:56:53'),
(618, 4, 16, 'Hi', 'TEXT', '2017-10-10 21:57:01'),
(619, 15, 16, 'How are you', 'TEXT', '2017-10-10 21:57:03'),
(620, 4, 16, 'How can i help you?', 'TEXT', '2017-10-10 21:57:05'),
(621, 4, 16, 'uploads/messages/7b4ea0b5b33f67216b9410614d46da3f.png', 'FILE', '2017-10-10 21:57:29'),
(622, 4, 4, 'Test', 'TEXT', '2017-10-11 17:55:44'),
(623, 2, 4, 'Do not forgot to test message. Checking message is always good as good testing other module of website. At the end its good to have final version tested including message test.', 'TEXT', '2017-10-11 21:09:49'),
(624, 4, 4, 'Yes you are correct. Checking message is always good as good testing other module of website. At the end its good to have final version tested including message test. Thank you for you work on it. Will contact you again in case we need yyour help.', 'TEXT', '2017-10-11 21:10:43'),
(625, 4, 4, '100% with this lines as well. Checking message is always good as good testing other module of website. At the end its good to have final version tested including message test.', 'TEXT', '2017-10-11 21:11:01'),
(626, 2, 4, '1', 'TEXT', '2017-10-11 21:16:02'),
(627, 2, 4, '2', 'TEXT', '2017-10-11 21:16:02'),
(628, 2, 4, '3', 'TEXT', '2017-10-11 21:16:03'),
(629, 4, 4, '345', 'TEXT', '2017-10-11 21:16:33'),
(630, 4, 4, '456', 'TEXT', '2017-10-11 21:16:41'),
(631, 4, 4, '?', 'TEXT', '2017-10-12 23:06:31'),
(632, 5, 3, '555555555555555555555555555555555555555555555ghkju', 'TEXT', '2017-10-13 09:25:34'),
(633, 5, 3, 'Thrw reygrt yhrtyh ruty ujtyj tujijyiuj etu  w5r67uy 56u5 57u756 u756', 'TEXT', '2017-10-13 09:26:05'),
(634, 5, 3, '11111111111111111111111111', 'TEXT', '2017-10-13 09:27:08'),
(635, 5, 3, '8888888888888888888888888', 'TEXT', '2017-10-13 09:27:32'),
(636, 5, 3, '1', 'TEXT', '2017-10-13 09:30:13'),
(637, 5, 3, 'Asdfghkjlpiotyuqwertzxcbvnm', 'TEXT', '2017-10-13 09:30:41'),
(638, 5, 3, '1234567', 'TEXT', '2017-10-14 12:26:20'),
(639, 8, 3, '12345678', 'TEXT', '2017-10-14 12:28:25'),
(640, 5, 3, '1234', 'TEXT', '2017-10-14 12:31:05'),
(641, 5, 23, 'Rtrtr', 'TEXT', '2017-10-14 12:32:33'),
(642, 8, 24, '12345', 'TEXT', '2017-10-14 12:34:55'),
(643, 5, 24, '321456', 'TEXT', '2017-10-14 12:36:38'),
(644, 5, 24, '5646546', 'TEXT', '2017-10-14 12:37:53'),
(645, 5, 25, 'Hghgf', 'TEXT', '2017-10-14 12:41:39'),
(646, 8, 26, '123', 'TEXT', '2017-10-14 12:43:06'),
(647, 5, 26, 'Test', 'TEXT', '2017-10-16 06:41:38'),
(648, 5, 26, 'Test', 'TEXT', '2017-10-16 06:41:40'),
(649, 5, 26, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'TEXT', '2017-10-16 06:42:12'),
(650, 5, 26, 'uploads/messages/206ca62dd293afa209b6cee378b4544a.png', 'FILE', '2017-10-16 06:45:36'),
(651, 5, 26, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'TEXT', '2017-10-16 06:45:36'),
(652, 5, 26, 'Iphone z', 'TEXT', '2017-10-16 10:54:57'),
(653, 5, 26, 'Test', 'TEXT', '2017-10-16 10:55:24'),
(654, 5, 26, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'TEXT', '2017-10-16 10:55:55'),
(655, 5, 26, 'uploads/messages/8fa296bc533c6e3b9689a8d5911eb093.png', 'FILE', '2017-10-16 10:56:59'),
(656, 5, 26, 'uploads/messages/7b3c005054cadeddbf9d5a89da4f0abb.png', 'FILE', '2017-10-16 10:58:13'),
(657, 5, 26, 'Dfdf', 'TEXT', '2017-10-16 10:58:26'),
(658, 5, 26, 'Fdf', 'TEXT', '2017-10-16 10:58:28'),
(659, 5, 26, 'Dfd', 'TEXT', '2017-10-16 10:58:29'),
(660, 5, 26, 'The 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'TEXT', '2017-10-16 11:06:01'),
(661, 5, 26, 'uploads/messages/6d97d042d06bba2b6e476cdf31248af4.png', 'FILE', '2017-10-16 11:06:11'),
(662, 5, 26, 'As', 'TEXT', '2017-10-16 11:35:09'),
(663, 5, 26, 'Das', 'TEXT', '2017-10-16 11:35:09'),
(664, 5, 26, 'Dasd', 'TEXT', '2017-10-16 11:35:09'),
(665, 2, 4, 'Hello', 'TEXT', '2017-10-16 11:37:02'),
(666, 2, 4, 'This is testing', 'TEXT', '2017-10-16 11:37:10'),
(667, 2, 1, 'This is testing', 'TEXT', '2017-10-16 11:38:44'),
(668, 2, 1, 'Hello How are you?', 'TEXT', '2017-10-16 11:38:50'),
(669, 2, 17, 'Hello King', 'TEXT', '2017-10-16 11:39:31'),
(670, 2, 17, 'How are You', 'TEXT', '2017-10-16 11:39:37'),
(671, 2, 4, 'This is test ', 'TEXT', '2017-10-16 11:43:33'),
(672, 2, 4, 'Hm This is Test', 'TEXT', '2017-10-16 11:44:22'),
(673, 5, 26, 'Tyuiyu', 'TEXT', '2017-10-16 11:47:16'),
(674, 5, 26, '123\n123123123312312', 'TEXT', '2017-10-16 12:38:11'),
(675, 5, 26, 'uploads/messages/e8c79380f929870c5780c13e0cd34e69.png', 'FILE', '2017-10-16 12:38:49'),
(676, 5, 26, 'Fgd\ngd\ngd\ngdf\ng\ndfgd\nfgdfg\ndfgfdg\nsf\ndf\nfsd\n', 'TEXT', '2017-10-16 12:38:49'),
(677, 5, 26, '123\n', 'TEXT', '2017-10-16 12:45:01'),
(678, 5, 26, 'uploads/messages/a5ed70bbd93b77436140810281319072.gif', 'FILE', '2017-10-16 12:52:53'),
(679, 5, 26, 'uploads/messages/50572a0f628576d59496e9669b8f3c61.png', 'FILE', '2017-10-16 12:53:22'),
(680, 5, 26, '123', 'TEXT', '2017-10-16 12:55:43'),
(681, 5, 26, '12345', 'TEXT', '2017-10-16 13:25:52'),
(682, 1, 2, 'Why you put me on hold???', 'TEXT', '2017-10-17 01:30:38'),
(683, 3, 2, 'I dunno', 'TEXT', '2017-10-17 01:30:49'),
(684, 4, 4, 'Hi', 'TEXT', '2017-10-17 08:17:25'),
(685, 4, 4, 'Helo', 'TEXT', '2017-10-17 08:17:27'),
(686, 4, 4, 'Hi', 'TEXT', '2017-10-17 08:23:29'),
(687, 5, 26, '123', 'TEXT', '2017-10-17 08:41:10'),
(688, 5, 26, 'G', 'TEXT', '2017-10-17 08:41:20'),
(689, 5, 26, 'Fg', 'TEXT', '2017-10-17 08:41:20'),
(690, 5, 26, 'Fgfg', 'TEXT', '2017-10-17 08:41:21'),
(691, 5, 26, 'Fg', 'TEXT', '2017-10-17 08:41:21'),
(692, 5, 26, 'F', 'TEXT', '2017-10-17 08:41:22'),
(693, 5, 26, 'Gf', 'TEXT', '2017-10-17 08:41:22'),
(694, 5, 26, 'F', 'TEXT', '2017-10-17 08:41:22'),
(695, 5, 26, 'F', 'TEXT', '2017-10-17 08:41:22'),
(696, 5, 26, '1', 'TEXT', '2017-10-17 08:45:07'),
(697, 5, 26, '2', 'TEXT', '2017-10-17 08:45:07'),
(698, 5, 26, '3', 'TEXT', '2017-10-17 08:45:08'),
(699, 5, 26, '4', 'TEXT', '2017-10-17 08:45:08'),
(700, 5, 26, '5', 'TEXT', '2017-10-17 08:45:08'),
(701, 5, 26, '6', 'TEXT', '2017-10-17 08:45:08'),
(702, 5, 26, '7', 'TEXT', '2017-10-17 08:45:09'),
(703, 5, 26, '8', 'TEXT', '2017-10-17 08:45:11'),
(704, 5, 26, '9', 'TEXT', '2017-10-17 08:45:14'),
(705, 5, 26, '10', 'TEXT', '2017-10-17 08:45:15'),
(706, 5, 26, '11', 'TEXT', '2017-10-17 08:45:16'),
(707, 5, 26, '12', 'TEXT', '2017-10-17 08:45:17'),
(708, 5, 26, 'Dsfds', 'TEXT', '2017-10-17 08:45:20'),
(709, 5, 26, 'Sd', 'TEXT', '2017-10-17 08:45:21'),
(710, 5, 26, 'Fsd', 'TEXT', '2017-10-17 08:45:21'),
(711, 5, 26, 'Fdfd', 'TEXT', '2017-10-17 08:45:21'),
(712, 5, 26, 'Sfds', 'TEXT', '2017-10-17 08:45:22'),
(713, 5, 26, 'Fd', 'TEXT', '2017-10-17 08:45:22'),
(714, 5, 26, 'uploads/messages/e0c6be203ffec031201513c2bcae9a3d.png', 'FILE', '2017-10-17 09:17:13'),
(715, 5, 26, 'uploads/messages/2a58f7d7434cb58b6b1221f3f50a5d11.png', 'FILE', '2017-10-17 12:19:29'),
(716, 5, 26, '1', 'TEXT', '2017-10-17 12:21:18'),
(717, 5, 26, '2', 'TEXT', '2017-10-17 12:21:19'),
(718, 5, 26, '3', 'TEXT', '2017-10-17 12:21:19'),
(719, 4, 4, 'Ok', 'TEXT', '2017-10-17 16:43:08'),
(720, 4, 4, '1', 'TEXT', '2017-10-17 16:43:11'),
(721, 4, 4, '123', 'TEXT', '2017-10-17 17:04:28'),
(722, 4, 4, '234', 'TEXT', '2017-10-17 17:04:30'),
(723, 4, 4, '345', 'TEXT', '2017-10-17 17:04:33'),
(724, 4, 4, '123', 'TEXT', '2017-10-17 23:09:48'),
(725, 4, 4, '23232', 'TEXT', '2017-10-17 23:09:49'),
(726, 4, 4, '432432423', 'TEXT', '2017-10-17 23:09:57'),
(727, 4, 4, '432432432', 'TEXT', '2017-10-17 23:10:06'),
(728, 4, 4, '3433', 'TEXT', '2017-10-17 23:10:11'),
(729, 2, 4, '132432434324324324432432432432432434324324324324324324323422343423432423434324234', 'TEXT', '2017-10-18 00:34:58'),
(730, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:35:05'),
(731, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:35:10');
INSERT INTO `eb_chatting_content` (`content_id`, `user_id`, `chat_id`, `text`, `content_type`, `created_on`) VALUES
(732, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:35:21'),
(733, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:35:34'),
(734, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk6432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:36:06'),
(735, 2, 4, '432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk432432432434424;,324l32l4kj23l4l32l4j324kj3lk24j32lk4jlk32k4jj23ljlk', 'TEXT', '2017-10-18 00:36:10'),
(736, 4, 4, '1', 'TEXT', '2017-10-18 00:37:44'),
(737, 4, 4, '2', 'TEXT', '2017-10-18 00:37:45'),
(738, 4, 4, '2deer', 'TEXT', '2017-10-18 00:37:47'),
(739, 4, 4, 'Rwe', 'TEXT', '2017-10-18 00:37:49'),
(740, 4, 4, 'Rewr', 'TEXT', '2017-10-18 00:37:49'),
(741, 4, 4, 'Ewr', 'TEXT', '2017-10-18 00:37:50'),
(742, 4, 4, 'We', 'TEXT', '2017-10-18 00:37:50'),
(743, 4, 4, 'Rew', 'TEXT', '2017-10-18 00:37:50'),
(744, 4, 4, 'Rr', 'TEXT', '2017-10-18 00:37:50'),
(745, 4, 4, 'We', 'TEXT', '2017-10-18 00:37:50'),
(746, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:50'),
(747, 4, 4, 'Ew', 'TEXT', '2017-10-18 00:37:50'),
(748, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:51'),
(749, 4, 4, 'Er', 'TEXT', '2017-10-18 00:37:51'),
(750, 4, 4, 'Wer', 'TEXT', '2017-10-18 00:37:51'),
(751, 4, 4, 'Er', 'TEXT', '2017-10-18 00:37:51'),
(752, 4, 4, 'Ewr', 'TEXT', '2017-10-18 00:37:51'),
(753, 4, 4, 'Ew', 'TEXT', '2017-10-18 00:37:51'),
(754, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:52'),
(755, 4, 4, 'Ewr', 'TEXT', '2017-10-18 00:37:52'),
(756, 4, 4, 'E', 'TEXT', '2017-10-18 00:37:52'),
(757, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:52'),
(758, 4, 4, 'Er', 'TEXT', '2017-10-18 00:37:52'),
(759, 4, 4, 'Er', 'TEXT', '2017-10-18 00:37:52'),
(760, 4, 4, 'Ew', 'TEXT', '2017-10-18 00:37:52'),
(761, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:52'),
(762, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:53'),
(763, 4, 4, 'E', 'TEXT', '2017-10-18 00:37:53'),
(764, 4, 4, 'Re', 'TEXT', '2017-10-18 00:37:53'),
(765, 4, 4, 'Ew', 'TEXT', '2017-10-18 00:37:53'),
(766, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:53'),
(767, 4, 4, 'Er', 'TEXT', '2017-10-18 00:37:53'),
(768, 4, 4, 'R', 'TEXT', '2017-10-18 00:37:53'),
(769, 4, 4, 'Ewr', 'TEXT', '2017-10-18 00:37:54'),
(770, 53, 30, 'How to fix a quick meeting schedule', 'TEXT', '2017-10-20 10:44:30'),
(771, 31, 30, 'Also I\'m confuse', 'TEXT', '2017-10-20 10:46:17'),
(772, 31, 17, 'Fine', 'TEXT', '2017-10-20 16:05:06'),
(773, 2, 17, 'Thanks for reply. ', 'TEXT', '2017-10-20 16:28:16'),
(774, 3, 2, 'Ok', 'TEXT', '2017-10-20 18:22:40'),
(775, 2, 4, 'Testing', 'TEXT', '2017-10-23 17:56:41'),
(776, 5, 26, 'Test', 'TEXT', '2017-10-25 05:15:06'),
(777, 5, 26, 'Test', 'TEXT', '2017-10-25 05:15:10'),
(778, 5, 26, 'Test', 'TEXT', '2017-10-25 05:15:13'),
(779, 5, 26, 'uploads/messages/3e3e719cbab8a01c638ff23ca1f8816b.png', 'FILE', '2017-10-26 06:14:12'),
(780, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:12'),
(781, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:13'),
(782, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:14'),
(783, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:15'),
(784, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:16'),
(785, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:17'),
(786, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:19'),
(787, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:20'),
(788, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:21'),
(789, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:22'),
(790, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:23'),
(791, 8, 26, 'https://www.eezybee.com/messages', 'TEXT', '2017-10-26 07:07:31'),
(792, 8, 26, 'https://www.eezybee.com/messages', 'TEXT', '2017-10-26 07:07:36'),
(793, 8, 26, 'Test', 'TEXT', '2017-10-26 07:07:44'),
(794, 8, 26, 'https://play.google.com/store/apps/details?id=com.sparkle.celeb.salmankhan', 'TEXT', '2017-10-26 08:53:08'),
(795, 8, 26, 'https://play.google.com/store/apps/details?id=com.sparkle.celeb.salmankhan', 'TEXT', '2017-10-26 08:53:20'),
(796, 8, 26, 'Df', 'TEXT', '2017-10-26 08:53:26'),
(797, 8, 26, 'Dfdf', 'TEXT', '2017-10-26 08:53:28'),
(798, 8, 26, 'Test', 'TEXT', '2017-10-26 08:58:16'),
(799, 8, 26, 'Test', 'TEXT', '2017-10-26 08:58:18'),
(800, 8, 26, 'Testy', 'TEXT', '2017-10-26 08:58:20'),
(801, 8, 26, 'Test', 'TEXT', '2017-10-26 08:58:22'),
(802, 8, 26, 'Y\'', 'TEXT', '2017-10-26 08:58:39'),
(803, 8, 26, '8', 'TEXT', '2017-10-26 08:58:53'),
(804, 8, 26, '8', 'TEXT', '2017-10-26 08:58:53'),
(805, 8, 26, '8', 'TEXT', '2017-10-26 08:58:54'),
(806, 8, 26, '8', 'TEXT', '2017-10-26 08:58:54'),
(807, 8, 26, 'R', 'TEXT', '2017-10-26 08:59:06'),
(808, 8, 26, 'Rtgre', 'TEXT', '2017-10-26 08:59:12'),
(809, 8, 26, 'Refte', 'TEXT', '2017-10-26 08:59:12'),
(810, 8, 26, 'Tgert', 'TEXT', '2017-10-26 08:59:13'),
(811, 8, 26, 'Ertet.ert', 'TEXT', '2017-10-26 08:59:16'),
(812, 5, 26, '5d', 'TEXT', '2017-10-26 08:59:25'),
(813, 5, 26, '1', 'TEXT', '2017-10-26 08:59:26'),
(814, 5, 26, '2', 'TEXT', '2017-10-26 08:59:26'),
(815, 5, 26, '3', 'TEXT', '2017-10-26 08:59:27'),
(816, 5, 26, '4', 'TEXT', '2017-10-26 08:59:28'),
(817, 5, 26, '5', 'TEXT', '2017-10-26 08:59:28'),
(818, 5, 26, '6', 'TEXT', '2017-10-26 08:59:28'),
(819, 5, 26, '7', 'TEXT', '2017-10-26 08:59:29'),
(820, 5, 26, '8', 'TEXT', '2017-10-26 08:59:30'),
(821, 5, 26, '9', 'TEXT', '2017-10-26 08:59:30'),
(822, 5, 26, 'H', 'TEXT', '2017-10-26 09:41:29'),
(823, 5, 26, 'Df', 'TEXT', '2017-10-26 09:41:33'),
(824, 8, 26, 'Afff', 'TEXT', '2017-10-26 09:41:45'),
(825, 5, 26, 'Text-center', 'TEXT', '2017-10-26 09:55:15'),
(826, 5, 26, 'Test mobild', 'TEXT', '2017-10-26 12:46:15'),
(827, 5, 26, 'Test mobile', 'TEXT', '2017-10-26 12:46:36'),
(828, 5, 26, '123', 'TEXT', '2017-10-26 12:46:44'),
(829, 8, 26, 'Test', 'TEXT', '2017-10-26 12:46:51'),
(830, 8, 26, 'Test', 'TEXT', '2017-10-26 12:46:53'),
(831, 5, 26, '123', 'TEXT', '2017-10-26 12:47:12'),
(832, 5, 26, '123', 'TEXT', '2017-10-26 12:47:16'),
(833, 5, 26, '123', 'TEXT', '2017-10-26 12:47:20'),
(834, 3, 7, 'Test', 'TEXT', '2017-10-26 23:36:56'),
(835, 3, 7, 'uploads/messages/3d3a2818979796db45efa9181c712c55.png', 'FILE', '2017-10-26 23:41:41'),
(836, 3, 31, 'Test', 'TEXT', '2017-10-26 23:42:33'),
(837, 3, 31, 'Just testing, that\'s all', 'TEXT', '2017-10-26 23:42:40'),
(838, 3, 31, 'Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum testTest lorum ipsum lorum test ipsum test lorum test ipsum test Test lorum ipsum lorum test ipsum test lorum test ipsum t', 'TEXT', '2017-10-26 23:43:04'),
(839, 8, 26, 'Jbhsdf', 'TEXT', '2017-10-27 06:23:07'),
(840, 5, 26, 'Trst  ', 'TEXT', '2017-10-27 06:23:17'),
(841, 5, 26, 'Hdhdjd', 'TEXT', '2017-10-27 06:23:23'),
(842, 8, 26, 'Ajdfsg', 'TEXT', '2017-10-27 06:23:28'),
(843, 5, 26, 'Hdhdjdjdjjfjfjjttttrtttttrghggyy', 'TEXT', '2017-10-27 06:23:40'),
(844, 5, 26, 'Test', 'TEXT', '2017-10-27 06:23:45'),
(845, 8, 26, 'https://stackoverflow.com/users/8343691/hrishabh-singh', 'TEXT', '2017-10-27 06:27:10'),
(846, 5, 26, 'Test', 'TEXT', '2017-10-27 06:28:12'),
(847, 8, 26, 'uploads/messages/42dfea341edba5c4ced0eeb0cd4ae6dd.jpg', 'FILE', '2017-10-27 09:59:08'),
(848, 4, 4, 'Test', 'TEXT', '2017-10-27 10:52:41'),
(849, 4, 4, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'TEXT', '2017-10-27 10:52:47'),
(850, 4, 4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'TEXT', '2017-10-27 10:53:03'),
(851, 8, 26, 'uploads/messages/46918413242a5206240dfb1e9f09e8f5.jpg', 'FILE', '2017-10-27 12:57:33'),
(852, 3, 31, 'Test', 'TEXT', '2017-10-27 17:36:27'),
(853, 3, 7, 'Test', 'TEXT', '2017-10-27 17:37:03'),
(854, 3, 2, 'Hello', 'TEXT', '2017-10-27 17:38:47'),
(855, 3, 31, 'Test', 'TEXT', '2017-10-27 17:38:53'),
(856, 1, 2, 'Test', 'TEXT', '2017-10-27 17:54:11'),
(857, 3, 2, 'Hello', 'TEXT', '2017-10-27 17:54:22'),
(858, 3, 2, 'Test', 'TEXT', '2017-10-27 17:54:46'),
(859, 3, 2, 'Test', 'TEXT', '2017-10-27 17:54:46'),
(860, 3, 2, 'Etes', 'TEXT', '2017-10-27 17:54:47'),
(861, 3, 2, 'E', 'TEXT', '2017-10-27 17:54:47'),
(862, 3, 2, 'Ts', 'TEXT', '2017-10-27 17:54:47'),
(863, 3, 2, 'T', 'TEXT', '2017-10-27 17:54:48'),
(864, 1, 2, 'Hi', 'TEXT', '2017-10-27 17:54:55'),
(865, 5, 26, 'uploads/messages/3d18d87ec96be04298c22aab5c9f92dd.jpg', 'FILE', '2017-10-28 04:17:10'),
(866, 5, 26, 'uploads/messages/7e8738b3d9c05eb96f6873a4d1179b75.jpg', 'FILE', '2017-10-28 04:17:18'),
(867, 5, 26, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'TEXT', '2017-10-28 04:17:59'),
(868, 5, 26, 'Test', 'TEXT', '2017-10-28 04:20:05'),
(869, 8, 26, 'Test', 'TEXT', '2017-10-28 04:20:16'),
(870, 8, 26, 'uploads/messages/c6c983d09d0249f92c62afbd997e8830.jpg', 'FILE', '2017-10-28 04:20:31'),
(871, 8, 26, 'Test', 'TEXT', '2017-10-28 04:20:58'),
(872, 8, 26, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.', 'TEXT', '2017-10-28 04:21:31'),
(873, 2, 31, 'Hi..', 'TEXT', '2017-10-30 03:45:46'),
(874, 5, 26, 'Hello', 'TEXT', '2017-10-30 04:16:57'),
(875, 2, 31, 'https://itunesconnect.apple.com', 'TEXT', '2017-11-02 00:15:38'),
(876, 5, 26, 'Hello', 'TEXT', '2017-11-02 07:37:39'),
(877, 5, 26, 'Hjd', 'TEXT', '2017-11-02 07:37:42'),
(878, 5, 26, 'Ddd', 'TEXT', '2017-11-02 07:37:45'),
(879, 5, 26, 'F', 'TEXT', '2017-11-02 07:37:46'),
(880, 4, 5, 'test', 'TEXT', '2017-11-02 18:04:10'),
(881, 4, 4, 'hello', 'TEXT', '2017-11-02 18:04:32'),
(882, 4, 4, 'test', 'TEXT', '2017-11-02 18:05:39'),
(883, 4, 4, 'how are you?', 'TEXT', '2017-11-02 18:06:05'),
(884, 2, 4, 'Hello', 'TEXT', '2017-11-02 18:06:29'),
(885, 2, 4, 'I\'m fine', 'TEXT', '2017-11-02 18:06:43'),
(886, 2, 4, 'uploads/messages/d0864bfc40e048fc20f4a553a16876cf.png', 'FILE', '2017-11-02 18:07:01'),
(887, 4, 4, 'looking good', 'TEXT', '2017-11-02 18:07:28'),
(888, 4, 4, 'uploads/messages/49726089ddaf0eadb4cae412623eed49.jpg', 'FILE', '2017-11-02 18:08:34'),
(889, 4, 4, 'uploads/messages/eaac03e6956acd2599ef430cb0b168c0.jpg', 'FILE', '2017-11-02 18:51:34'),
(890, 5, 26, 'Hello', 'TEXT', '2017-11-03 04:05:37'),
(891, 5, 26, 'Hello', 'TEXT', '2017-11-03 04:24:16'),
(892, 5, 26, 'D', 'TEXT', '2017-11-03 04:42:34'),
(893, 5, 26, 'Dd', 'TEXT', '2017-11-03 04:46:37'),
(894, 8, 22, 'bhhj', 'TEXT', '2017-11-03 04:47:55'),
(895, 5, 26, 'D', 'TEXT', '2017-11-03 04:55:24'),
(896, 8, 26, 'dd', 'TEXT', '2017-11-03 04:56:52'),
(897, 8, 26, 'hhh', 'TEXT', '2017-11-03 07:44:30'),
(898, 8, 26, 'ghhj', 'TEXT', '2017-11-03 07:44:33'),
(899, 8, 26, 'cgg', 'TEXT', '2017-11-03 07:44:46'),
(900, 8, 26, 'ghb', 'TEXT', '2017-11-03 07:47:18'),
(901, 8, 26, 'njk', 'TEXT', '2017-11-03 07:49:40'),
(902, 8, 26, 'Hi', 'TEXT', '2017-11-03 07:50:28'),
(903, 5, 28, 'Hi ', 'TEXT', '2017-11-03 07:53:49'),
(904, 8, 26, 'Hello', 'TEXT', '2017-11-03 08:45:40'),
(905, 8, 26, 'Hi', 'TEXT', '2017-11-03 08:49:51'),
(906, 5, 26, 'Hello', 'TEXT', '2017-11-03 08:49:54'),
(907, 5, 26, 'How are you', 'TEXT', '2017-11-03 08:50:02'),
(908, 8, 26, 'Fine', 'TEXT', '2017-11-03 08:50:07'),
(909, 8, 26, 'uploads/messages/42d7381207c6f403807bea3fba092df2.jpg', 'FILE', '2017-11-03 08:51:38'),
(910, 8, 26, ',uD83EuDD8AuD83DuDC31uD83EuDD8A', 'TEXT', '2017-11-03 08:53:53'),
(911, 5, 26, 'dsfdasfadsfdsafasdfdsfdsa', 'TEXT', '2017-11-03 09:01:01'),
(912, 8, 26, 'bhhh', 'TEXT', '2017-11-03 09:03:43'),
(913, 8, 26, 'hhjjjhjjk', 'TEXT', '2017-11-03 09:03:57'),
(914, 5, 26, 'u0aa8u0aa8u0ab5u0ab5u0ab0u0ab0u0ab0u0ab0u0aacu0a97u0ab0', 'TEXT', '2017-11-03 09:06:51'),
(915, 8, 26, 'uD83DuDC31uD83EuDD8A', 'TEXT', '2017-11-03 09:07:23'),
(916, 8, 26, '...', 'TEXT', '2017-11-03 09:09:06'),
(917, 5, 26, 'hjjj', 'TEXT', '2017-11-03 09:14:30'),
(918, 5, 26, 'Hi', 'TEXT', '2017-11-03 11:34:32'),
(919, 4, 4, 'Hi', 'TEXT', '2017-11-03 16:50:52'),
(920, 4, 4, 'ud83dude42ud83dude42', 'TEXT', '2017-11-03 16:51:02'),
(921, 1, 1, 'Iu2019m ok\n', 'TEXT', '2017-11-03 16:53:16'),
(922, 4, 4, ' How are you?', 'TEXT', '2017-11-03 16:56:19'),
(923, 4, 4, 'My friend', 'TEXT', '2017-11-03 16:56:29'),
(924, 2, 4, 'Im good', 'TEXT', '2017-11-03 16:56:33'),
(925, 2, 4, 'What about you?', 'TEXT', '2017-11-03 16:56:40'),
(926, 2, 4, 'Thanks for asking', 'TEXT', '2017-11-03 16:56:52'),
(927, 2, 4, 'Bro', 'TEXT', '2017-11-03 16:56:58'),
(928, 2, 4, 'Test', 'TEXT', '2017-11-03 16:57:17'),
(929, 2, 4, '4', 'TEXT', '2017-11-03 16:57:25'),
(930, 2, 4, '4', 'TEXT', '2017-11-03 16:57:31'),
(931, 2, 4, '44', 'TEXT', '2017-11-03 16:57:36'),
(932, 2, 4, 'uploads/messages/366fb321b3e0da21ad00a65fdbe66491.jpg', 'FILE', '2017-11-03 17:35:52'),
(933, 2, 29, 'hi', 'TEXT', '2017-11-03 17:37:24'),
(934, 2, 29, 'hello', 'TEXT', '2017-11-03 17:37:45'),
(935, 2, 29, 'how are you?', 'TEXT', '2017-11-03 17:37:52'),
(936, 2, 29, 'thanks', 'TEXT', '2017-11-03 17:38:05'),
(937, 2, 29, 'Hi', 'TEXT', '2017-11-03 17:39:23'),
(938, 53, 30, 'Hey', 'TEXT', '2017-11-03 22:16:10'),
(939, 4, 4, 'Hi', 'TEXT', '2017-11-04 17:33:32'),
(940, 4, 4, 'How are you?', 'TEXT', '2017-11-04 17:33:38'),
(941, 5, 28, 'gh', 'TEXT', '2017-11-06 12:48:23'),
(942, 5, 28, 'Ggh', 'TEXT', '2017-11-06 12:48:27'),
(943, 5, 28, 'u201cIndependence is one of the valuable gifts that one can enjoy. Hope that Godu2019s blessings are always with us so that the coming generations can also enjoy the fruits of independence. Enjoy and have a great day.u201du201cIndependence is one of the valuable gifts that one can enjoy. Hope that Godu2019s blessings are always with us so that the coming generations can also enjoy the fruits of independence. Enjoy and have a great day.u201du201cIndependence is one of the valuable gifts that one can enjoy. Hope that Godu2019s blessings are always with us so that the coming generations can also enjoy the fruits of independence. Enjoy and have a great day.u201du201cIndependence is one of the valuable gifts that one can enjoy. Hope that Godu2019s blessings are always with us so that the coming generations can also enjoy the fruits of independence. Enjoy and have a great day.u201d', 'TEXT', '2017-11-06 12:48:39'),
(944, 5, 28, 'Hi ', 'TEXT', '2017-11-06 12:49:01'),
(945, 5, 28, 'cvh', 'TEXT', '2017-11-06 12:49:19'),
(946, 5, 28, 'Hello', 'TEXT', '2017-11-06 12:49:23'),
(947, 2, 4, 'Hello', 'TEXT', '2017-11-06 17:38:57'),
(948, 2, 4, 'How are you?', 'TEXT', '2017-11-06 17:39:00'),
(949, 2, 4, 'Hello', 'TEXT', '2017-11-06 17:39:44'),
(950, 2, 4, 'Hi', 'TEXT', '2017-11-06 17:39:45'),
(951, 2, 4, 'There?', 'TEXT', '2017-11-06 17:39:49'),
(952, 2, 4, 'Good', 'TEXT', '2017-11-06 17:40:01'),
(953, 2, 4, 'Thanks for connecting me with you', 'TEXT', '2017-11-06 17:40:12'),
(954, 2, 4, 'I hope everything is good at your side. i will call you be next week for my work at home. i need your help.', 'TEXT', '2017-11-06 17:41:09'),
(955, 4, 4, 'yeah', 'TEXT', '2017-11-06 17:41:21'),
(956, 4, 4, 'it\'s working so it\'s good news for us buddy', 'TEXT', '2017-11-06 17:41:37'),
(957, 4, 4, 'call me anytime', 'TEXT', '2017-11-06 17:41:49'),
(958, 2, 4, 'Wdweweweweweweweweweweweweweweweweweweweweweweewewewweweewewesw', 'TEXT', '2017-11-06 17:42:01'),
(959, 4, 39, 'hi', 'TEXT', '2017-11-06 18:08:03'),
(960, 3, 2, 'Hello', 'TEXT', '2017-11-06 18:36:58'),
(961, 3, 2, 'Just testing this thing out', 'TEXT', '2017-11-06 18:37:08'),
(962, 2, 41, 'Hey', 'TEXT', '2017-11-06 18:41:15'),
(963, 2, 31, '1', 'TEXT', '2017-11-07 09:37:51'),
(964, 2, 29, 'Test', 'TEXT', '2017-11-07 09:38:58'),
(965, 5, 26, 'Hello', 'TEXT', '2017-11-07 12:15:33'),
(966, 4, 41, 'Hi', 'TEXT', '2017-11-08 01:42:19'),
(967, 4, 41, 'uploads/messages/bb3472b93755f5a7cbce77ec27e202d3.jpg', 'FILE', '2017-11-08 01:43:51'),
(968, 4, 41, 'Type Message', 'TEXT', '2017-11-08 01:43:59'),
(969, 4, 5, 'Type Message', 'TEXT', '2017-11-08 01:44:05'),
(970, 8, 32, 'Type Message', 'TEXT', '2017-11-08 06:40:28'),
(971, 8, 34, 'Type Message', 'TEXT', '2017-11-08 06:41:23'),
(972, 8, 26, 'h', 'TEXT', '2017-11-08 06:53:47'),
(973, 5, 26, 'Type Message', 'TEXT', '2017-11-08 06:54:43'),
(974, 8, 26, 'hjmmjjjjn', 'TEXT', '2017-11-08 06:55:19'),
(975, 5, 26, 'Ghhh', 'TEXT', '2017-11-08 06:55:28'),
(976, 5, 26, 'Njj', 'TEXT', '2017-11-08 06:56:52'),
(977, 5, 26, 'Hi', 'TEXT', '2017-11-08 07:00:22'),
(978, 5, 26, 'A ', 'TEXT', '2017-11-08 07:00:25'),
(979, 5, 26, 'Hello ', 'TEXT', '2017-11-08 07:00:27'),
(980, 8, 26, 'ghjjjb', 'TEXT', '2017-11-08 07:01:16'),
(981, 8, 26, 'cvgj', 'TEXT', '2017-11-08 07:01:18'),
(982, 8, 26, 'vvh', 'TEXT', '2017-11-08 07:01:19'),
(983, 8, 26, 'cvvvv', 'TEXT', '2017-11-08 07:01:56'),
(984, 8, 26, 'ccc', 'TEXT', '2017-11-08 07:01:57'),
(985, 8, 26, 'vvvv', 'TEXT', '2017-11-08 07:02:07'),
(986, 8, 26, 'cvv', 'TEXT', '2017-11-08 07:02:48'),
(987, 8, 26, 'vbb', 'TEXT', '2017-11-08 07:02:59'),
(988, 8, 26, 'bnn', 'TEXT', '2017-11-08 07:03:21'),
(989, 8, 26, 'k', 'TEXT', '2017-11-08 07:03:30'),
(990, 5, 26, ' Vv', 'TEXT', '2017-11-08 07:03:40'),
(991, 5, 28, 'ghh', 'TEXT', '2017-11-08 09:36:16'),
(992, 4, 0, 'uploads/messages/0940c2e27dbf1e723ea10dfd7ecae2fb.jpg', 'FILE', '2017-11-08 15:38:03'),
(993, 5, 26, 'Hello', 'TEXT', '2017-11-09 03:54:21'),
(994, 5, 28, 'Hey there', 'TEXT', '2017-11-09 03:54:36'),
(995, 5, 26, 'uploads/messages/a49ad9d76a2d96151af5567ce67c8176.jpg', 'FILE', '2017-11-09 03:55:21'),
(996, 2, 32, 'Hi', 'TEXT', '2017-11-09 04:08:37'),
(997, 4, 28, 'Yes ', 'TEXT', '2017-11-09 04:34:15'),
(998, 4, 28, 'How are you?', 'TEXT', '2017-11-09 04:34:22'),
(999, 4, 28, 'Everything is good?  Note somewhere that we always need to restart node.js server after restarting database. ', 'TEXT', '2017-11-09 04:34:59'),
(1000, 8, 26, 'Hiiiii', 'TEXT', '2017-11-09 05:23:42'),
(1001, 8, 26, 'Huuuu', 'TEXT', '2017-11-09 05:24:01'),
(1002, 8, 26, 'Hello', 'TEXT', '2017-11-09 05:40:45'),
(1003, 4, 28, 'Hey there', 'TEXT', '2017-11-09 05:41:21'),
(1004, 31, 17, 'bhh', 'TEXT', '2017-11-09 06:08:51'),
(1005, 31, 17, 'cvgg', 'TEXT', '2017-11-09 06:09:07'),
(1006, 4, 42, 'Hi', 'TEXT', '2017-11-09 06:10:07'),
(1007, 4, 42, 'Hi', 'TEXT', '2017-11-09 06:10:10'),
(1008, 53, 30, 'Hiii', 'TEXT', '2017-11-09 06:11:57'),
(1009, 31, 30, 'bnjjjj', 'TEXT', '2017-11-09 06:12:14'),
(1010, 4, 28, 'Hi', 'TEXT', '2017-11-09 06:44:34'),
(1011, 31, 30, 'hi', 'TEXT', '2017-11-09 07:36:35'),
(1012, 53, 30, 'Jjj', 'TEXT', '2017-11-09 07:39:10'),
(1013, 53, 30, 'Hhih', 'TEXT', '2017-11-09 07:40:19'),
(1014, 53, 30, 'Ggrg', 'TEXT', '2017-11-09 07:40:24'),
(1015, 5, 28, 'Hi', 'TEXT', '2017-11-09 07:41:14'),
(1016, 5, 28, 'Bfgh', 'TEXT', '2017-11-09 07:41:26'),
(1017, 53, 30, 'Hhhh', 'TEXT', '2017-11-09 07:42:07'),
(1018, 31, 30, 'jjj', 'TEXT', '2017-11-09 09:18:49'),
(1019, 53, 30, 'H;;;', 'TEXT', '2017-11-09 09:26:33'),
(1020, 53, 30, 'Hhh', 'TEXT', '2017-11-09 09:30:43'),
(1021, 31, 30, 'Hii', 'TEXT', '2017-11-09 09:53:07'),
(1022, 53, 30, 'Hii', 'TEXT', '2017-11-09 09:53:52'),
(1023, 53, 30, 'Hgh', 'TEXT', '2017-11-09 09:53:54'),
(1024, 53, 30, 'Test', 'TEXT', '2017-11-09 09:53:59'),
(1025, 31, 30, 'Hello ', 'TEXT', '2017-11-09 09:54:14'),
(1026, 31, 30, 'Hello ', 'TEXT', '2017-11-09 09:54:22'),
(1027, 53, 30, 'Hello', 'TEXT', '2017-11-09 09:54:30'),
(1028, 53, 30, 'Test', 'TEXT', '2017-11-09 09:54:52'),
(1029, 53, 30, 'Testing', 'TEXT', '2017-11-09 09:55:16'),
(1030, 53, 30, 'Hello', 'TEXT', '2017-11-09 09:55:26'),
(1031, 53, 30, 'Test', 'TEXT', '2017-11-09 09:55:34'),
(1032, 53, 30, 'Testing', 'TEXT', '2017-11-09 09:56:00'),
(1033, 53, 30, 'Hi', 'TEXT', '2017-11-09 09:56:16'),
(1034, 31, 30, 'Hii', 'TEXT', '2017-11-09 10:16:01'),
(1035, 31, 30, 'Hhh', 'TEXT', '2017-11-09 10:16:33'),
(1036, 5, 26, 'Hii', 'TEXT', '2017-11-09 11:24:52'),
(1037, 2, 44, 'Hi', 'TEXT', '2017-11-09 17:36:34'),
(1038, 2, 44, 'Hello', 'TEXT', '2017-11-09 17:36:48'),
(1039, 4, 44, 'Hello. Sorry for late reply ', 'TEXT', '2017-11-09 17:49:47'),
(1040, 4, 44, 'How are you?', 'TEXT', '2017-11-09 17:49:51'),
(1041, 4, 44, 'Howu2019s everything going?', 'TEXT', '2017-11-09 17:49:58'),
(1042, 4, 5, 'thanks', 'TEXT', '2017-11-09 17:58:51'),
(1043, 4, 44, 'hello', 'TEXT', '2017-11-09 17:59:13'),
(1044, 4, 44, 'how are you', 'TEXT', '2017-11-09 17:59:35'),
(1045, 4, 44, 'Whyb', 'TEXT', '2017-11-09 18:00:41'),
(1046, 4, 44, 'Heyday ', 'TEXT', '2017-11-09 18:00:59'),
(1047, 4, 44, 'hello', 'TEXT', '2017-11-09 18:01:03'),
(1048, 4, 5, 'help', 'TEXT', '2017-11-09 19:16:37'),
(1049, 4, 5, 'uploads/messages/1ea6eb676fa90603fbf4dd39c10671ea.jpg', 'FILE', '2017-11-09 19:17:13'),
(1050, 4, 44, 'hi', 'TEXT', '2017-11-09 19:47:16'),
(1051, 4, 44, 'hello', 'TEXT', '2017-11-09 19:47:31'),
(1052, 2, 44, 'Yesterday ', 'TEXT', '2017-11-09 19:47:38'),
(1053, 2, 44, 'Ohk', 'TEXT', '2017-11-09 19:47:50'),
(1054, 4, 39, 'what time you can come?', 'TEXT', '2017-11-09 19:55:22'),
(1055, 3, 40, 'Test', 'TEXT', '2017-11-09 22:13:44'),
(1056, 3, 40, 'Hello', 'TEXT', '2017-11-09 22:13:49'),
(1057, 3, 40, 'uploads/messages/ca5cbe1fcd31311f6e6ac9d0c58610c4.jpg', 'FILE', '2017-11-09 22:14:40'),
(1058, 3, 40, 'Just testing', 'TEXT', '2017-11-09 22:14:40'),
(1059, 31, 30, 'good', 'TEXT', '2017-11-09 23:05:14'),
(1060, 5, 35, 'Hi', 'TEXT', '2017-11-10 05:21:40'),
(1061, 5, 28, 'Hi', 'TEXT', '2017-11-10 05:33:31'),
(1062, 66, 47, 'hii', 'TEXT', '2017-11-10 06:00:12'),
(1063, 66, 50, 'Hi', 'TEXT', '2017-11-10 17:17:28'),
(1064, 66, 50, 'Hello', 'TEXT', '2017-11-10 17:17:46'),
(1065, 1, 5, 'Hello', 'TEXT', '2017-11-10 17:18:00'),
(1066, 1, 5, 'Keyboard is covering up the message Iu2019m typing', 'TEXT', '2017-11-10 17:18:13'),
(1067, 1, 5, 'Im*', 'TEXT', '2017-11-10 17:18:20'),
(1068, 1, 5, 'They can fix though', 'TEXT', '2017-11-10 17:18:28'),
(1069, 4, 44, 'hello', 'TEXT', '2017-11-10 17:47:33'),
(1070, 4, 44, 'ltt', 'TEXT', '2017-11-10 17:48:38'),
(1071, 4, 44, 'Hi', 'TEXT', '2017-11-10 17:52:21'),
(1072, 4, 44, 'Ok', 'TEXT', '2017-11-10 17:52:28'),
(1073, 4, 44, '123', 'TEXT', '2017-11-10 17:55:48'),
(1074, 2, 44, 'Hi', 'TEXT', '2017-11-10 17:59:04'),
(1075, 2, 44, 'Hello', 'TEXT', '2017-11-10 17:59:06'),
(1076, 2, 44, 'Hello', 'TEXT', '2017-11-10 18:02:57'),
(1077, 2, 44, 'Hi', 'TEXT', '2017-11-10 18:05:09'),
(1078, 2, 44, 'Ge', 'TEXT', '2017-11-10 18:05:14'),
(1079, 2, 44, 'Kjhj', 'TEXT', '2017-11-10 18:05:15'),
(1080, 2, 44, 'Gv', 'TEXT', '2017-11-10 18:05:34'),
(1081, 2, 44, 'Uio', 'TEXT', '2017-11-10 18:05:38'),
(1082, 2, 44, 'Khk', 'TEXT', '2017-11-10 18:05:41'),
(1083, 2, 44, 'Jbk', 'TEXT', '2017-11-10 18:05:47'),
(1084, 2, 44, 'Kjk', 'TEXT', '2017-11-10 18:05:48'),
(1085, 2, 44, 'Jkh', 'TEXT', '2017-11-10 18:05:49'),
(1086, 72, 51, 'Hi', 'TEXT', '2017-11-10 18:16:50'),
(1087, 2, 51, 'Hi', 'TEXT', '2017-11-10 18:17:05'),
(1088, 2, 51, 'Hello', 'TEXT', '2017-11-10 18:17:09'),
(1089, 2, 51, 'Are u ter?', 'TEXT', '2017-11-10 18:17:19'),
(1090, 2, 51, 'Ok', 'TEXT', '2017-11-10 18:17:25'),
(1091, 2, 51, 'Hey', 'TEXT', '2017-11-10 18:17:42'),
(1092, 72, 51, 'Yea', 'TEXT', '2017-11-10 18:17:51'),
(1093, 72, 51, 'Are you reqdy for work?', 'TEXT', '2017-11-10 18:18:23'),
(1094, 2, 44, 'Hello', 'TEXT', '2017-11-10 18:39:01'),
(1095, 2, 44, 'How are you?', 'TEXT', '2017-11-10 18:39:05'),
(1096, 31, 30, 'Ddddd', 'TEXT', '2017-11-11 07:36:42'),
(1097, 31, 30, 'Ddd', 'TEXT', '2017-11-11 07:36:49'),
(1098, 31, 30, 'Gngnnngngngngngnn', 'TEXT', '2017-11-11 07:37:05'),
(1099, 53, 30, 'baka', 'TEXT', '2017-11-11 07:37:10'),
(1100, 31, 30, 'Hijii', 'TEXT', '2017-11-11 07:37:13'),
(1101, 31, 30, 'Hello', 'TEXT', '2017-11-11 07:37:23'),
(1102, 31, 30, 'Fbfbfb', 'TEXT', '2017-11-11 07:38:42'),
(1103, 31, 30, 'Fbfbfbf', 'TEXT', '2017-11-11 07:38:46'),
(1104, 31, 30, 'Fbfbfb', 'TEXT', '2017-11-11 07:38:50'),
(1105, 5, 28, 'Cup oxoE as', 'TEXT', '2017-11-11 07:48:55'),
(1106, 5, 28, 'die', 'TEXT', '2017-11-11 07:48:55'),
(1107, 8, 26, 'Hii', 'TEXT', '2017-11-11 07:54:11'),
(1108, 5, 26, 'Hello', 'TEXT', '2017-11-11 08:35:28'),
(1109, 5, 26, 'Gadhe', 'TEXT', '2017-11-11 08:35:38'),
(1110, 8, 26, 'Hi', 'TEXT', '2017-11-11 08:51:24'),
(1111, 5, 26, 'Hi', 'TEXT', '2017-11-11 08:59:16'),
(1112, 5, 26, 'Hello', 'TEXT', '2017-11-11 09:04:04'),
(1113, 5, 26, 'Sdaf', 'TEXT', '2017-11-11 09:08:16'),
(1114, 5, 26, 'Hii', 'TEXT', '2017-11-11 09:11:53'),
(1115, 5, 47, 'Hi', 'TEXT', '2017-11-11 09:12:10'),
(1116, 5, 26, 'Hii', 'TEXT', '2017-11-11 09:12:38'),
(1117, 5, 26, 'Wqe', 'TEXT', '2017-11-11 09:13:09'),
(1118, 5, 47, 'Hii', 'TEXT', '2017-11-11 09:14:13'),
(1119, 5, 26, 'Kolplp', 'TEXT', '2017-11-11 09:14:17'),
(1120, 5, 26, 'Hii', 'TEXT', '2017-11-11 09:14:21'),
(1121, 8, 26, 'hjkkk', 'TEXT', '2017-11-11 09:14:49'),
(1122, 5, 26, 'Hii', 'TEXT', '2017-11-11 09:15:04'),
(1123, 5, 26, 'Dfs', 'TEXT', '2017-11-11 09:15:07'),
(1124, 5, 26, 'Dsf', 'TEXT', '2017-11-11 09:15:31'),
(1125, 5, 26, 'Dsf', 'TEXT', '2017-11-11 09:15:50'),
(1126, 5, 26, 'Dsfdd', 'TEXT', '2017-11-11 09:16:24'),
(1127, 5, 26, 'Fg', 'TEXT', '2017-11-11 09:16:48'),
(1128, 5, 26, 'Dsfsd', 'TEXT', '2017-11-11 09:18:08');
INSERT INTO `eb_chatting_content` (`content_id`, `user_id`, `chat_id`, `text`, `content_type`, `created_on`) VALUES
(1129, 5, 26, 'Sdafds', 'TEXT', '2017-11-11 09:19:29'),
(1130, 5, 47, 'Hello ', 'TEXT', '2017-11-11 09:34:19'),
(1131, 5, 47, 'Hello', 'TEXT', '2017-11-11 09:34:42'),
(1132, 5, 47, 'How are You', 'TEXT', '2017-11-11 09:34:49'),
(1133, 5, 28, 'Hi', 'TEXT', '2017-11-11 09:35:59'),
(1134, 5, 47, '                        v                            v                v                          v                      v                       v            v                     v                              v                        v', 'TEXT', '2017-11-11 09:37:11'),
(1135, 5, 47, 'D', 'TEXT', '2017-11-11 09:37:18'),
(1136, 5, 47, 'F', 'TEXT', '2017-11-11 09:37:19'),
(1137, 5, 47, 'Df', 'TEXT', '2017-11-11 09:37:19'),
(1138, 5, 47, 'Df', 'TEXT', '2017-11-11 09:37:20'),
(1139, 5, 47, 'Df', 'TEXT', '2017-11-11 09:37:21'),
(1140, 5, 47, 'Df', 'TEXT', '2017-11-11 09:37:29'),
(1141, 5, 47, 'Dd dd', 'TEXT', '2017-11-11 09:37:48'),
(1142, 5, 47, 'Dd dd', 'TEXT', '2017-11-11 09:37:54'),
(1143, 5, 47, 'Dfd', 'TEXT', '2017-11-11 09:38:11'),
(1144, 5, 47, 'Dsfdsaf dsaf dsf dasfd s', 'TEXT', '2017-11-11 09:38:19'),
(1145, 5, 47, 'Sdaf fsda f', 'TEXT', '2017-11-11 09:38:35'),
(1146, 5, 47, 'Hello', 'TEXT', '2017-11-11 09:40:43'),
(1147, 5, 47, 'Now How are you', 'TEXT', '2017-11-11 09:40:54'),
(1148, 5, 47, 'Fine ', 'TEXT', '2017-11-11 09:40:56'),
(1149, 5, 47, 'And uy', 'TEXT', '2017-11-11 09:40:57'),
(1150, 5, 47, 'Oufa', 'TEXT', '2017-11-11 09:40:58'),
(1151, 5, 47, 'Df', 'TEXT', '2017-11-11 09:40:59'),
(1152, 5, 47, 'Adf', 'TEXT', '2017-11-11 09:40:59'),
(1153, 5, 47, 'Daf', 'TEXT', '2017-11-11 09:40:59'),
(1154, 5, 47, 'Ads', 'TEXT', '2017-11-11 09:40:59'),
(1155, 5, 47, 'F', 'TEXT', '2017-11-11 09:41:00'),
(1156, 5, 28, 'Hi', 'TEXT', '2017-11-11 09:46:06'),
(1157, 5, 47, 'uploads/messages/dbe04c541f4258cf1bae81102b870a3d.jpg', 'FILE', '2017-11-11 09:47:06'),
(1158, 5, 35, 'Hello williams', 'TEXT', '2017-11-11 09:48:04'),
(1159, 5, 48, 'Hi', 'TEXT', '2017-11-11 10:53:54'),
(1160, 8, 42, '   Hi', 'TEXT', '2017-11-11 11:12:32'),
(1161, 5, 48, 'Hii', 'TEXT', '2017-11-11 11:48:24'),
(1162, 5, 28, 'uploads/messages/a4ac12772513a02b3a619943f00b7d10.png', 'FILE', '2017-11-11 12:30:13'),
(1163, 5, 28, 'uploads/messages/1eb24c654ca218dd5697bcc664e1dedf.jpg', 'FILE', '2017-11-11 12:36:36'),
(1164, 5, 35, 'hii', 'TEXT', '2017-11-11 12:43:13'),
(1165, 5, 35, 'hii', 'TEXT', '2017-11-11 12:43:19'),
(1166, 5, 48, 'hiii', 'TEXT', '2017-11-11 12:43:34'),
(1167, 5, 48, 'hello', 'TEXT', '2017-11-11 12:43:40'),
(1168, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:01:16'),
(1169, 2, 44, 'How are you?', 'TEXT', '2017-11-11 20:01:29'),
(1170, 2, 44, 'There?', 'TEXT', '2017-11-11 20:01:36'),
(1171, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:01:43'),
(1172, 2, 44, 'There?', 'TEXT', '2017-11-11 20:01:48'),
(1173, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:18:15'),
(1174, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:19:51'),
(1175, 2, 44, 'How r u?', 'TEXT', '2017-11-11 20:19:54'),
(1176, 2, 44, 'I m waiting for you', 'TEXT', '2017-11-11 20:20:03'),
(1177, 2, 44, 'Hello', 'TEXT', '2017-11-11 20:50:41'),
(1178, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:50:45'),
(1179, 2, 44, 'Hey', 'TEXT', '2017-11-11 20:51:05'),
(1180, 4, 44, 'Hi', 'TEXT', '2017-11-11 20:51:12'),
(1181, 4, 44, 'Hi ', 'TEXT', '2017-11-11 20:51:14'),
(1182, 4, 44, 'Hi ', 'TEXT', '2017-11-11 20:51:16'),
(1183, 2, 44, 'Heel', 'TEXT', '2017-11-11 20:51:19'),
(1184, 2, 44, 'Jpw', 'TEXT', '2017-11-11 20:51:21'),
(1185, 2, 44, 'Fd', 'TEXT', '2017-11-11 20:51:21'),
(1186, 2, 44, 'F', 'TEXT', '2017-11-11 20:51:21'),
(1187, 2, 44, 'Sfsdf', 'TEXT', '2017-11-11 20:51:22'),
(1188, 2, 44, 'Dsfdsfdsfd', 'TEXT', '2017-11-11 20:51:23'),
(1189, 2, 44, 'Sfsdfdf', 'TEXT', '2017-11-11 20:51:23'),
(1190, 2, 44, 'Ds fds f', 'TEXT', '2017-11-11 20:51:24'),
(1191, 2, 44, 'Ds f ds', 'TEXT', '2017-11-11 20:51:24'),
(1192, 2, 44, 'F ds', 'TEXT', '2017-11-11 20:51:24'),
(1193, 2, 44, ' fdsfdsfdsfdsfds fd sf ds f dsf ds f dsf ds f df df d f ds fdsfdsfdsf ds fds fdsfdsf ds', 'TEXT', '2017-11-11 20:51:32'),
(1194, 4, 44, 'uploads/messages/9ca0628d070438d8643cbcb1a2da55d2.jpg', 'FILE', '2017-11-11 20:51:50'),
(1195, 2, 44, 'There?', 'TEXT', '2017-11-11 20:52:10'),
(1196, 2, 44, 'What you sent me?', 'TEXT', '2017-11-11 20:52:15'),
(1197, 2, 44, 'uploads/messages/fa17ea302061cc008d7802040ea68738.jpg', 'FILE', '2017-11-11 20:52:24'),
(1198, 4, 44, '1', 'TEXT', '2017-11-11 20:53:01'),
(1199, 4, 44, '2', 'TEXT', '2017-11-11 20:53:05'),
(1200, 4, 44, '3', 'TEXT', '2017-11-11 20:53:08'),
(1201, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:53:17'),
(1202, 2, 44, 'There?', 'TEXT', '2017-11-11 20:53:23'),
(1203, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:53:49'),
(1204, 2, 44, 'Ih', 'TEXT', '2017-11-11 20:53:55'),
(1205, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:55:17'),
(1206, 2, 44, 'There/.', 'TEXT', '2017-11-11 20:55:20'),
(1207, 2, 44, 'Hi', 'TEXT', '2017-11-11 20:56:51'),
(1208, 4, 5, 'Hey there?', 'TEXT', '2017-11-11 23:14:50'),
(1209, 4, 5, 'Received my notifications?', 'TEXT', '2017-11-11 23:14:57'),
(1210, 2, 44, 'Hi', 'TEXT', '2017-11-12 00:58:58'),
(1211, 4, 44, 'Hi', 'TEXT', '2017-11-12 00:59:51'),
(1212, 4, 44, 'Jjk', 'TEXT', '2017-11-12 00:59:54'),
(1213, 4, 44, 'Kjk', 'TEXT', '2017-11-12 00:59:55'),
(1214, 4, 44, 'Hi', 'TEXT', '2017-11-12 02:41:57'),
(1215, 5, 26, 'uploads/messages/48128459e14da9e58b566ebfad6299c5.jpg', 'FILE', '2017-11-13 04:37:38'),
(1216, 5, 26, 'Cncnxnddjm', 'TEXT', '2017-11-13 04:37:38'),
(1217, 8, 32, 'uploads/messages/68daf8f756b33aff8bba2fc112f9b22f.jpg', 'FILE', '2017-11-13 04:38:08'),
(1218, 8, 32, 'Test', 'TEXT', '2017-11-13 04:38:08'),
(1219, 8, 26, 'Hiii', 'TEXT', '2017-11-13 04:46:59'),
(1220, 8, 26, 'Hii', 'TEXT', '2017-11-13 04:47:08'),
(1221, 8, 26, 'Test', 'TEXT', '2017-11-13 04:48:16'),
(1222, 5, 26, 'uploads/messages/ad244e1dcb2978e3a9a35c5c2b0fd77c.jpg', 'FILE', '2017-11-13 04:54:37'),
(1223, 8, 26, 'Ghfghfg', 'TEXT', '2017-11-13 05:12:19'),
(1224, 8, 26, 'Fghfg', 'TEXT', '2017-11-13 05:12:22'),
(1225, 5, 26, 'Hii', 'TEXT', '2017-11-13 05:13:35'),
(1226, 8, 26, 'hii', 'TEXT', '2017-11-13 05:13:53'),
(1227, 5, 26, 'Hiii', 'TEXT', '2017-11-13 05:15:06'),
(1228, 8, 26, 'Hf', 'TEXT', '2017-11-13 05:22:29'),
(1229, 8, 26, 'Hh', 'TEXT', '2017-11-13 05:22:38'),
(1230, 8, 26, 'Hii', 'TEXT', '2017-11-13 05:41:17'),
(1231, 2, 44, 'uploads/messages/9503330c2290bce904c8c74eadaa151c.jpg', 'FILE', '2017-11-13 05:42:03'),
(1232, 8, 26, 'Hooo', 'TEXT', '2017-11-13 05:43:19'),
(1233, 66, 0, 'uploads/messages/6fa8a5625f179cfaa472ac4f52bbc7b1.jpg', 'FILE', '2017-11-13 06:20:39'),
(1234, 31, 48, 'Hi', 'TEXT', '2017-11-13 07:02:56'),
(1235, 5, 38, 'hiii', 'TEXT', '2017-11-13 07:05:28'),
(1236, 2, 44, 'Hi', 'TEXT', '2017-11-13 07:09:56'),
(1237, 2, 44, 'There?', 'TEXT', '2017-11-13 07:09:58'),
(1238, 2, 44, 'Hi', 'TEXT', '2017-11-13 07:13:53'),
(1239, 2, 44, 'Hhh', 'TEXT', '2017-11-13 07:13:56'),
(1240, 2, 44, 'Hhjh', 'TEXT', '2017-11-13 07:13:59'),
(1241, 2, 44, 'Hjjh', 'TEXT', '2017-11-13 07:14:01'),
(1242, 2, 44, 'Hkk', 'TEXT', '2017-11-13 07:14:03'),
(1243, 4, 44, 'uploads/messages/1054202f6f4426c51d3652b419f4b471.png', 'FILE', '2017-11-13 07:14:16'),
(1244, 4, 44, 'Hi', 'TEXT', '2017-11-13 07:20:14'),
(1245, 4, 44, 'Hi', 'TEXT', '2017-11-13 07:21:24'),
(1246, 2, 44, 'Dsf', 'TEXT', '2017-11-13 07:28:17'),
(1247, 2, 44, 'Fds', 'TEXT', '2017-11-13 07:28:18'),
(1248, 2, 44, 'Ffdsf', 'TEXT', '2017-11-13 07:28:20'),
(1249, 2, 44, 'Fsdf', 'TEXT', '2017-11-13 07:28:20'),
(1250, 4, 44, 'Hi', 'TEXT', '2017-11-13 07:29:35'),
(1251, 4, 44, 'Dfsfs', 'TEXT', '2017-11-13 07:30:30'),
(1252, 4, 44, 'Fsdfds', 'TEXT', '2017-11-13 07:30:30'),
(1253, 4, 44, 'Fdsfds', 'TEXT', '2017-11-13 07:30:31'),
(1254, 4, 44, 'Fsdfds', 'TEXT', '2017-11-13 07:30:32'),
(1255, 4, 44, 'Fsdf', 'TEXT', '2017-11-13 07:30:32'),
(1256, 4, 44, 'Dsfds', 'TEXT', '2017-11-13 07:30:32'),
(1257, 4, 44, 'F', 'TEXT', '2017-11-13 07:30:32'),
(1258, 4, 44, 'Sd', 'TEXT', '2017-11-13 07:30:33'),
(1259, 5, 26, 'Hii', 'TEXT', '2017-11-13 07:38:23'),
(1260, 2, 44, 'Hi', 'TEXT', '2017-11-13 08:30:22'),
(1261, 2, 44, 'There', 'TEXT', '2017-11-13 08:30:28'),
(1262, 4, 44, 'hi', 'TEXT', '2017-11-13 08:30:34'),
(1263, 4, 44, 'k', 'TEXT', '2017-11-13 08:30:38'),
(1264, 2, 44, 'Hi', 'TEXT', '2017-11-13 08:30:55'),
(1265, 2, 44, 'There?', 'TEXT', '2017-11-13 08:30:58'),
(1266, 4, 44, 'hi', 'TEXT', '2017-11-13 08:31:02'),
(1267, 2, 44, 'How r u', 'TEXT', '2017-11-13 08:31:06'),
(1268, 4, 44, 'yes I am here', 'TEXT', '2017-11-13 08:31:09'),
(1269, 2, 44, 'We are testing', 'TEXT', '2017-11-13 08:31:11'),
(1270, 4, 44, 'I am good', 'TEXT', '2017-11-13 08:31:16'),
(1271, 2, 44, 'Instant messaging ', 'TEXT', '2017-11-13 08:31:18'),
(1272, 2, 44, 'Like Facebook ', 'TEXT', '2017-11-13 08:31:24'),
(1273, 4, 44, 'how about you ?', 'TEXT', '2017-11-13 08:31:30'),
(1274, 4, 44, 'nice', 'TEXT', '2017-11-13 08:31:34'),
(1275, 2, 44, 'I am good', 'TEXT', '2017-11-13 08:31:38'),
(1276, 4, 44, 'perfect', 'TEXT', '2017-11-13 08:31:40'),
(1277, 4, 44, 'uD83DuDE05', 'TEXT', '2017-11-13 08:31:50'),
(1278, 2, 44, 'Suy ja tyare', 'TEXT', '2017-11-13 08:31:51'),
(1279, 2, 44, 'Only push is not working', 'TEXT', '2017-11-13 08:31:58'),
(1280, 4, 44, 'uD83DuDE02uD83DuDE0DuD83DuDE0EuD83DuDE09uD83DuDE09uD83DuDE0EuD83DuDE09uD83DuDE0AuD83DuDE03', 'TEXT', '2017-11-13 08:32:02'),
(1281, 2, 44, 'Itu2019s emojis issue', 'TEXT', '2017-11-13 08:32:12'),
(1282, 2, 44, 'Itu2019s emojis ', 'TEXT', '2017-11-13 08:32:21'),
(1283, 4, 44, 'uD83DuDE01uD83DuDE0EuD83DuDE01uD83DuDE0EuD83DuDE09uD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE04uD83DuDE1AuD83DuDE0DuD83DuDE1AuD83DuDE0DuD83DuDE0EuD83DuDE1AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83EuDD17uD83DuDE0AuD83EuDD17uD83DuDE0AuD83EuDD17uD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE1AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0EuD83DuDE03uD83DuDE0AuD83DuDE0AuD83DuDE0AuD83DuDE0DuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE04uD83DuDE02uD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0AuD83DuDE0DuD83DuDE0DuD83DuDE0DuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0EuD83DuDE0AuD83DuDE0AuD83DuDE0E', 'TEXT', '2017-11-13 08:32:39'),
(1284, 2, 44, 'ud83dude07', 'TEXT', '2017-11-13 08:35:56'),
(1285, 8, 26, '1', 'TEXT', '2017-11-13 08:53:50'),
(1286, 8, 26, '2', 'TEXT', '2017-11-13 08:53:56'),
(1287, 8, 26, '3', 'TEXT', '2017-11-13 08:54:11'),
(1288, 5, 26, '4', 'TEXT', '2017-11-13 08:54:44'),
(1289, 8, 26, '2', 'TEXT', '2017-11-13 08:54:46'),
(1290, 8, 26, '5', 'TEXT', '2017-11-13 08:55:13'),
(1291, 8, 26, '6', 'TEXT', '2017-11-13 08:55:14'),
(1292, 72, 53, 'it\'s  good', 'TEXT', '2017-11-13 08:57:04'),
(1293, 5, 28, 'It\'s good', 'TEXT', '2017-11-13 09:02:57'),
(1294, 5, 28, 'Hi', 'TEXT', '2017-11-13 09:03:03'),
(1295, 5, 26, 'Hi', 'TEXT', '2017-11-13 09:03:55'),
(1296, 5, 48, 'Hi', 'TEXT', '2017-11-13 09:05:35'),
(1297, 5, 48, 'Test', 'TEXT', '2017-11-13 09:05:50'),
(1298, 31, 48, 'Hi it\'s good', 'TEXT', '2017-11-13 09:08:27'),
(1299, 2, 31, 'Hi', 'TEXT', '2017-11-13 09:15:46'),
(1300, 2, 1, 'Hello', 'TEXT', '2017-11-13 09:15:46'),
(1301, 2, 1, 'Hi', 'TEXT', '2017-11-13 09:16:00'),
(1302, 2, 21, 'Ho', 'TEXT', '2017-11-13 09:16:08'),
(1303, 3, 31, 'Hello', 'TEXT', '2017-11-13 10:38:58'),
(1304, 3, 31, 'Messaging wasnu2019t working before', 'TEXT', '2017-11-13 10:39:08'),
(1305, 5, 26, 'Hii', 'TEXT', '2017-11-13 12:32:45'),
(1306, 31, 48, 'Rthrthrth', 'TEXT', '2017-11-13 12:55:33'),
(1307, 31, 48, 'Ergerger', 'TEXT', '2017-11-13 12:58:47'),
(1308, 31, 48, '4rut54ruy', 'TEXT', '2017-11-13 12:58:53'),
(1309, 4, 44, 'Itu2019s ', 'TEXT', '2017-11-13 17:20:36'),
(1310, 2, 44, 'it\'s working', 'TEXT', '2017-11-13 17:22:51'),
(1311, 4, 44, 'Itu2019s good ', 'TEXT', '2017-11-13 17:23:04'),
(1312, 2, 44, 'Itu2019s working ', 'TEXT', '2017-11-13 17:24:36'),
(1313, 2, 32, 'Itu2019s ', 'TEXT', '2017-11-13 17:25:13'),
(1314, 4, 44, 'uploads/messages/f13851f76dce21a6529c9c1c8f634afe.jpg', 'FILE', '2017-11-13 17:25:15'),
(1315, 2, 44, 'Hi', 'TEXT', '2017-11-13 17:37:02'),
(1316, 2, 44, 'There?', 'TEXT', '2017-11-13 17:37:05'),
(1317, 2, 44, 'How are you?', 'TEXT', '2017-11-13 17:37:15'),
(1318, 2, 44, 'Hi', 'TEXT', '2017-11-13 18:10:52'),
(1319, 2, 44, 'There?', 'TEXT', '2017-11-13 18:10:55'),
(1320, 2, 44, 'Hi', 'TEXT', '2017-11-13 18:11:08'),
(1321, 4, 44, 'Hello', 'TEXT', '2017-11-13 18:11:28'),
(1322, 4, 44, 'There?', 'TEXT', '2017-11-13 18:11:38'),
(1323, 4, 44, 'Er', 'TEXT', '2017-11-13 18:11:39'),
(1324, 4, 44, 'Er', 'TEXT', '2017-11-13 18:11:39'),
(1325, 4, 44, 'Hello', 'TEXT', '2017-11-13 18:14:32'),
(1326, 4, 44, 'Hi', 'TEXT', '2017-11-13 18:14:34'),
(1327, 4, 44, 'There?', 'TEXT', '2017-11-13 18:14:37'),
(1328, 2, 44, 'Jzjsj', 'TEXT', '2017-11-13 18:14:41'),
(1329, 2, 44, 'Testing messages ', 'TEXT', '2017-11-13 18:14:47'),
(1330, 2, 44, 'See you soon, bye. ', 'TEXT', '2017-11-13 18:14:57'),
(1331, 4, 44, 'Hello pk', 'TEXT', '2017-11-13 18:15:15'),
(1332, 4, 44, 'Are you there?', 'TEXT', '2017-11-13 18:15:18'),
(1333, 4, 44, 'Now check your badge on message screen', 'TEXT', '2017-11-13 18:15:26'),
(1334, 4, 44, 'Hi', 'TEXT', '2017-11-13 18:17:30'),
(1335, 4, 44, 'Hi', 'TEXT', '2017-11-13 18:17:49'),
(1336, 4, 44, 'There', 'TEXT', '2017-11-13 18:17:51'),
(1337, 2, 44, 'uploads/messages/eddbe32770f735c760b60a44ad32fb80.jpg', 'FILE', '2017-11-13 18:21:19'),
(1338, 2, 44, 'uploads/messages/7a2c07f00940fadf76be0f8825c28af7.png', 'FILE', '2017-11-13 18:22:19'),
(1339, 2, 44, 'thanks for it\'s', 'TEXT', '2017-11-13 18:47:58'),
(1340, 1, 54, 'Hello', 'TEXT', '2017-11-13 21:06:50'),
(1341, 3, 54, 'Hi there', 'TEXT', '2017-11-13 21:07:02'),
(1342, 3, 54, 'Messaging is working', 'TEXT', '2017-11-13 21:07:11'),
(1343, 1, 54, 'Yes messaging seems to be working pretty well huh?', 'TEXT', '2017-11-13 21:07:21'),
(1344, 3, 54, 'Yes messaging is working Iu2019m just typing a lot to see if thereu2019s going to be any issues from typing too much but so far it seems like things are working which is good!', 'TEXT', '2017-11-13 21:07:58'),
(1345, 3, 54, 'uploads/messages/7e25815609348b65d8bcf8c480549a71.jpg', 'FILE', '2017-11-13 21:10:10'),
(1346, 3, 54, 'uploads/messages/f42d465d74c7184ddefaf64decce06e3.jpg', 'FILE', '2017-11-13 21:11:02'),
(1347, 1, 54, 'Oh neat', 'TEXT', '2017-11-13 21:13:05'),
(1348, 3, 54, 'Yea', 'TEXT', '2017-11-13 21:13:30'),
(1349, 3, 54, 'Test', 'TEXT', '2017-11-13 21:20:07'),
(1350, 1, 54, 'Test', 'TEXT', '2017-11-13 21:20:22'),
(1351, 2, 44, 'Gu', 'TEXT', '2017-11-14 01:00:42'),
(1352, 4, 44, ' Hi', 'TEXT', '2017-11-14 01:00:52'),
(1353, 4, 44, 'There', 'TEXT', '2017-11-14 01:00:56'),
(1354, 2, 44, 'Hi', 'TEXT', '2017-11-14 01:01:00'),
(1355, 2, 44, 'Yes', 'TEXT', '2017-11-14 01:01:02'),
(1356, 2, 44, 'I am here', 'TEXT', '2017-11-14 01:01:06'),
(1357, 4, 44, 'Ok', 'TEXT', '2017-11-14 01:01:11'),
(1358, 4, 44, 'Good ', 'TEXT', '2017-11-14 01:01:13'),
(1359, 4, 44, 'I need your help ', 'TEXT', '2017-11-14 01:01:19'),
(1360, 4, 44, 'Hi', 'TEXT', '2017-11-14 01:02:33'),
(1361, 4, 44, 'Hi', 'TEXT', '2017-11-14 01:02:41'),
(1362, 4, 44, 'There', 'TEXT', '2017-11-14 01:02:43'),
(1363, 4, 44, '?', 'TEXT', '2017-11-14 01:02:44'),
(1364, 2, 44, 'yes', 'TEXT', '2017-11-14 01:02:48'),
(1365, 2, 44, 'I\'m here', 'TEXT', '2017-11-14 01:02:58'),
(1366, 2, 44, 'uploads/messages/6d7940ea3aaad9d533691f72ba60d45e.jpg', 'FILE', '2017-11-14 01:03:38'),
(1367, 2, 44, 'hi', 'TEXT', '2017-11-14 01:19:06'),
(1368, 2, 44, 'testing', 'TEXT', '2017-11-14 01:19:40'),
(1369, 5, 28, 'Hi', 'TEXT', '2017-11-14 04:16:30'),
(1370, 5, 26, 'Hi', 'TEXT', '2017-11-14 04:16:42'),
(1371, 5, 26, 'Itu2019s ', 'TEXT', '2017-11-14 04:17:35'),
(1372, 5, 26, 'ud83dude18', 'TEXT', '2017-11-14 04:18:15'),
(1373, 31, 30, ' It\'s ok', 'TEXT', '2017-11-14 04:24:02'),
(1374, 5, 28, 'Itu2019s great', 'TEXT', '2017-11-14 04:24:29'),
(1375, 5, 28, 'ud83dude2a', 'TEXT', '2017-11-14 04:24:49'),
(1376, 31, 30, 'ud83dudc4d', 'TEXT', '2017-11-14 04:25:01'),
(1377, 5, 28, 'ud83dude47u200du2640ufe0f', 'TEXT', '2017-11-14 04:32:47'),
(1378, 5, 26, 'Itu2019s ', 'TEXT', '2017-11-14 04:34:29'),
(1379, 5, 26, 'Itu2019s ', 'TEXT', '2017-11-14 04:34:35'),
(1380, 5, 26, 'Canu2019t edits', 'TEXT', '2017-11-14 04:35:16'),
(1381, 5, 53, 'Itu2019s ', 'TEXT', '2017-11-14 04:35:34'),
(1382, 5, 53, 'Itu2019s ', 'TEXT', '2017-11-14 04:35:42'),
(1383, 5, 53, 'Itu2019s ', 'TEXT', '2017-11-14 04:35:48'),
(1384, 5, 53, 'Hi ', 'TEXT', '2017-11-14 04:36:01'),
(1385, 5, 53, 'Hi', 'TEXT', '2017-11-14 04:36:14'),
(1386, 5, 53, 'Itu2019s good ', 'TEXT', '2017-11-14 04:36:25'),
(1387, 31, 48, 'ud83dude01ud83dude01', 'TEXT', '2017-11-14 04:37:07'),
(1388, 5, 53, 'Hello ', 'TEXT', '2017-11-14 04:38:33'),
(1389, 5, 53, 'Hhh ', 'TEXT', '2017-11-14 04:38:44'),
(1390, 5, 47, 'Its', 'TEXT', '2017-11-14 04:39:14'),
(1391, 5, 47, 'Itu2019s ', 'TEXT', '2017-11-14 04:39:29'),
(1392, 31, 49, 'ud83eudd27ud83dude2dud83dude28ud83dude13ud83dude13', 'TEXT', '2017-11-14 04:39:49'),
(1393, 5, 48, 'uD83EuDD8D', 'TEXT', '2017-11-14 04:55:29'),
(1394, 5, 26, 'hello', 'TEXT', '2017-11-14 05:27:02'),
(1395, 5, 26, 'how are you', 'TEXT', '2017-11-14 05:27:11'),
(1396, 5, 26, 'uploads/messages/d80d2c6d306e2610612bc80b878e4911.jpg', 'FILE', '2017-11-14 05:27:27'),
(1397, 8, 26, 'Hello', 'TEXT', '2017-11-14 05:37:38'),
(1398, 8, 32, 'Hello', 'TEXT', '2017-11-14 05:52:01'),
(1399, 2, 32, 'hi', 'TEXT', '2017-11-14 05:57:34'),
(1400, 2, 32, 'how are you', 'TEXT', '2017-11-14 05:57:43'),
(1401, 8, 32, 'Fine', 'TEXT', '2017-11-14 05:57:48'),
(1402, 8, 32, 'Hi hello', 'TEXT', '2017-11-14 05:59:49'),
(1403, 8, 32, 'Testing push msg', 'TEXT', '2017-11-14 06:00:17'),
(1404, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:01:06'),
(1405, 8, 32, 'How are you', 'TEXT', '2017-11-14 06:01:23'),
(1406, 8, 32, 'Fine and you', 'TEXT', '2017-11-14 06:01:29'),
(1407, 8, 32, 'Lksda', 'TEXT', '2017-11-14 06:01:30'),
(1408, 8, 32, 'Dfsa', 'TEXT', '2017-11-14 06:01:33'),
(1409, 8, 32, 'Adf', 'TEXT', '2017-11-14 06:01:35'),
(1410, 8, 32, ';', 'TEXT', '2017-11-14 06:02:06'),
(1411, 8, 32, 'Hi', 'TEXT', '2017-11-14 06:02:46'),
(1412, 8, 32, 'Hello How are you', 'TEXT', '2017-11-14 06:02:53'),
(1413, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:29:47'),
(1414, 8, 32, 'Hi', 'TEXT', '2017-11-14 06:30:19'),
(1415, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:31:28'),
(1416, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:32:47'),
(1417, 2, 32, 'yyh', 'TEXT', '2017-11-14 06:33:44'),
(1418, 2, 32, '\\uD83Du \\DE00uD 83DuDE 02uD83 DuDE01u D83DuD E02uD83 DuDE00', 'TEXT', '2017-11-14 06:36:44'),
(1419, 5, 48, 'Hyreherhrehtrh', 'TEXT', '2017-11-14 06:40:21'),
(1420, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:48:04'),
(1421, 8, 32, 'How are you!', 'TEXT', '2017-11-14 06:48:16'),
(1422, 8, 32, 'Fine', 'TEXT', '2017-11-14 06:48:20'),
(1423, 8, 32, 'Ok ', 'TEXT', '2017-11-14 06:48:24'),
(1424, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:48:39'),
(1425, 8, 32, 'Not able To send', 'TEXT', '2017-11-14 06:48:52'),
(1426, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:51:02'),
(1427, 8, 32, 'Hello', 'TEXT', '2017-11-14 06:56:39'),
(1428, 5, 28, 'Its', 'TEXT', '2017-11-14 08:13:55'),
(1429, 5, 28, 'ud83dude00', 'TEXT', '2017-11-14 08:14:05'),
(1430, 4, 28, 'Hi', 'TEXT', '2017-11-14 08:14:19'),
(1431, 4, 28, 'There?', 'TEXT', '2017-11-14 08:14:23'),
(1432, 5, 26, 'Hi', 'TEXT', '2017-11-14 08:53:39'),
(1433, 5, 26, 'Hello', 'TEXT', '2017-11-14 08:53:49'),
(1434, 5, 26, 'Gdfgdf', 'TEXT', '2017-11-14 08:54:13'),
(1435, 5, 26, 'Hfgh', 'TEXT', '2017-11-14 08:54:21'),
(1436, 31, 30, 'uploads/messages/07c9682c2dd4bcab87379bb72c2b3091.jpg', 'FILE', '2017-11-14 09:35:20'),
(1437, 31, 30, 'Jtjtyj', 'TEXT', '2017-11-14 09:35:20'),
(1438, 2, 44, 'hii', 'TEXT', '2017-11-14 09:42:47'),
(1439, 5, 35, 'hiii', 'TEXT', '2017-11-14 09:47:10'),
(1440, 5, 35, 'hii', 'TEXT', '2017-11-14 09:47:52'),
(1441, 5, 35, '.', 'TEXT', '2017-11-14 09:47:57'),
(1442, 5, 26, 'okk', 'TEXT', '2017-11-14 09:48:12'),
(1443, 8, 26, 'Hiii', 'TEXT', '2017-11-14 09:49:14'),
(1444, 8, 26, 'uploads/messages/611b284cb81807fcd775625d3c49ae02.png', 'FILE', '2017-11-14 09:49:56'),
(1445, 8, 26, 'Aaaa', 'TEXT', '2017-11-14 09:50:00'),
(1446, 8, 26, 'Hhhhhhh', 'TEXT', '2017-11-14 09:53:01'),
(1447, 8, 26, 'Hi', 'TEXT', '2017-11-14 11:34:34'),
(1448, 8, 26, 'Test', 'TEXT', '2017-11-14 11:36:20'),
(1449, 8, 26, 'Dgydygd', 'TEXT', '2017-11-14 11:55:45'),
(1450, 8, 26, 'Hioh', 'TEXT', '2017-11-14 11:57:15'),
(1451, 8, 26, 'Yiouyh', 'TEXT', '2017-11-14 11:57:39'),
(1452, 8, 26, 'Eherherh', 'TEXT', '2017-11-14 12:00:29'),
(1453, 8, 26, 'Hi', 'TEXT', '2017-11-14 12:05:17'),
(1454, 8, 26, 'Ui', 'TEXT', '2017-11-14 12:06:29'),
(1455, 8, 26, 'Ii', 'TEXT', '2017-11-14 12:07:43'),
(1456, 8, 26, 'Iouhioh', 'TEXT', '2017-11-14 12:08:48'),
(1457, 8, 26, 'Hi', 'TEXT', '2017-11-14 12:44:13'),
(1458, 72, 53, 'Its', 'TEXT', '2017-11-14 14:38:04'),
(1459, 72, 53, 'Hi', 'TEXT', '2017-11-14 14:38:26'),
(1460, 4, 44, 'Hi', 'TEXT', '2017-11-14 17:15:22'),
(1461, 4, 44, 'Gu', 'TEXT', '2017-11-14 17:15:32'),
(1462, 4, 44, 'There', 'TEXT', '2017-11-14 17:15:39'),
(1463, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:26:19'),
(1464, 2, 44, 'Hey', 'TEXT', '2017-11-14 17:29:48'),
(1465, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:30:04'),
(1466, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:30:21'),
(1467, 2, 44, 'There?', 'TEXT', '2017-11-14 17:30:25'),
(1468, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:30:35'),
(1469, 4, 44, 'Hi', 'TEXT', '2017-11-14 17:40:01'),
(1470, 4, 44, 'Hello', 'TEXT', '2017-11-14 17:40:12'),
(1471, 4, 44, 'Hi ', 'TEXT', '2017-11-14 17:40:27'),
(1472, 4, 44, 'Hi', 'TEXT', '2017-11-14 17:40:45'),
(1473, 2, 44, 'hi', 'TEXT', '2017-11-14 17:40:53'),
(1474, 2, 44, 'thanks', 'TEXT', '2017-11-14 17:41:21'),
(1475, 2, 44, 'thanks', 'TEXT', '2017-11-14 17:41:34'),
(1476, 2, 44, 'there', 'TEXT', '2017-11-14 17:41:40'),
(1477, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:42:29'),
(1478, 53, 30, 'hi', 'TEXT', '2017-11-14 17:43:24'),
(1479, 31, 30, 'Hey', 'TEXT', '2017-11-14 17:43:34'),
(1480, 31, 30, 'How are you?', 'TEXT', '2017-11-14 17:43:41'),
(1481, 31, 30, 'There?', 'TEXT', '2017-11-14 17:43:56'),
(1482, 53, 30, 'Hi', 'TEXT', '2017-11-14 17:44:49'),
(1483, 31, 30, 'hi', 'TEXT', '2017-11-14 17:44:58'),
(1484, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:45:36'),
(1485, 4, 44, 'hi', 'TEXT', '2017-11-14 17:45:46'),
(1486, 4, 44, 'there', 'TEXT', '2017-11-14 17:46:08'),
(1487, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:46:18'),
(1488, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:46:51'),
(1489, 4, 44, 'hi', 'TEXT', '2017-11-14 17:48:49'),
(1490, 4, 44, '|hi', 'TEXT', '2017-11-14 17:54:12'),
(1491, 4, 44, 'chhc', 'TEXT', '2017-11-14 17:54:15'),
(1492, 4, 44, 'hi j', 'TEXT', '2017-11-14 17:54:19'),
(1493, 2, 44, 'Hi', 'TEXT', '2017-11-14 17:56:46'),
(1494, 4, 44, 'Ko', 'TEXT', '2017-11-14 18:53:19'),
(1495, 4, 44, 'There?', 'TEXT', '2017-11-14 18:53:36'),
(1496, 4, 44, 'There?', 'TEXT', '2017-11-14 18:54:19'),
(1497, 4, 44, 'Hi', 'TEXT', '2017-11-14 18:54:40'),
(1498, 4, 44, 'Ji', 'TEXT', '2017-11-14 18:54:52'),
(1499, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:00:55'),
(1500, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:07:31'),
(1501, 4, 44, 'Tere?', 'TEXT', '2017-11-14 19:07:49'),
(1502, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:10:41'),
(1503, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:11:02'),
(1504, 2, 44, 'There?', 'TEXT', '2017-11-14 19:11:51'),
(1505, 2, 44, 'There?', 'TEXT', '2017-11-14 19:12:19'),
(1506, 2, 44, 'There?', 'TEXT', '2017-11-14 19:24:27'),
(1507, 2, 44, 'Hi', 'TEXT', '2017-11-14 19:24:31'),
(1508, 2, 44, 'Hi', 'TEXT', '2017-11-14 19:24:36'),
(1509, 2, 44, 'Dsds', 'TEXT', '2017-11-14 19:25:01'),
(1510, 2, 44, 'Fds', 'TEXT', '2017-11-14 19:25:29'),
(1511, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:32:43'),
(1512, 4, 44, 'Gd', 'TEXT', '2017-11-14 19:33:25'),
(1513, 4, 44, ';lk', 'TEXT', '2017-11-14 19:33:28'),
(1514, 4, 44, 'Hi', 'TEXT', '2017-11-14 19:33:37'),
(1515, 4, 44, 'Sds', 'TEXT', '2017-11-14 19:33:45'),
(1516, 2, 21, 'hi', 'TEXT', '2017-11-14 19:53:05'),
(1517, 2, 44, 'hello', 'TEXT', '2017-11-14 19:53:38'),
(1518, 2, 32, 'hi', 'TEXT', '2017-11-14 19:53:52'),
(1519, 2, 51, 'there?', 'TEXT', '2017-11-14 19:54:07'),
(1520, 4, 44, 'Hello', 'TEXT', '2017-11-14 19:57:02'),
(1521, 2, 44, 'uploads/messages/ca3182ccc863fcbfd0d3c777f09ffb66.jpg', 'FILE', '2017-11-14 19:57:46'),
(1522, 2, 44, 'ok', 'TEXT', '2017-11-14 20:19:23'),
(1523, 4, 44, 'uploads/messages/f33571f8ad813a5ef04972b867c0c736.jpg', 'FILE', '2017-11-14 20:42:20'),
(1524, 4, 44, 'Itu2019s testing ', 'TEXT', '2017-11-14 21:14:51'),
(1525, 4, 44, 'Hi ud83dudc4b ', 'TEXT', '2017-11-14 21:15:21'),
(1526, 2, 44, 'It\'s ', 'TEXT', '2017-11-14 22:37:54'),
(1527, 2, 44, 'Working', 'TEXT', '2017-11-14 22:37:56'),
(1528, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:48'),
(1529, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:48'),
(1530, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:49'),
(1531, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:49'),
(1532, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:49'),
(1533, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:49'),
(1534, 4, 44, 'P', 'TEXT', '2017-11-14 23:00:50'),
(1535, 4, 28, 'Itu2019s good ', 'TEXT', '2017-11-15 04:12:15'),
(1536, 4, 5, 'Itu2019s good', 'TEXT', '2017-11-15 04:12:30'),
(1537, 8, 34, 'hi I\'m  dev', 'TEXT', '2017-11-15 04:43:44'),
(1538, 8, 34, '\"2019\"', 'TEXT', '2017-11-15 04:44:32'),
(1539, 4, 28, 'Itu2019s ', 'TEXT', '2017-11-15 04:45:29'),
(1540, 8, 34, 'I\'m  dev', 'TEXT', '2017-11-15 04:47:12'),
(1541, 8, 34, 'I\'m', 'TEXT', '2017-11-15 04:47:22'),
(1542, 8, 34, 'in I\'m', 'TEXT', '2017-11-15 04:47:33'),
(1543, 8, 32, 'imag I\'m', 'TEXT', '2017-11-15 04:47:56'),
(1544, 8, 32, 'in I\'m', 'TEXT', '2017-11-15 04:48:06'),
(1545, 4, 28, 'ud83cudf82', 'TEXT', '2017-11-15 04:48:22'),
(1546, 8, 34, 'it\'s  good', 'TEXT', '2017-11-15 04:48:45'),
(1547, 31, 18, 'I\'m ', 'TEXT', '2017-11-15 04:48:54'),
(1548, 8, 34, 'it\'s  better', 'TEXT', '2017-11-15 04:48:55'),
(1549, 31, 18, 'I\'m having ', 'TEXT', '2017-11-15 04:49:09'),
(1550, 8, 26, 'hii', 'TEXT', '2017-11-15 04:58:48'),
(1551, 8, 26, 'uploads/messages/cd918dc45d8a131922a71e67b541e48d.jpg', 'FILE', '2017-11-15 05:02:59'),
(1552, 5, 26, 'uploads/messages/39ed6e0ad23556af92ff7446c0433490.jpg', 'FILE', '2017-11-15 05:03:47'),
(1553, 4, 28, 'Itu2019s ', 'TEXT', '2017-11-15 05:07:52'),
(1554, 4, 28, 'ud83dude00', 'TEXT', '2017-11-15 05:08:05'),
(1555, 5, 26, 'hj', 'TEXT', '2017-11-15 05:08:24'),
(1556, 5, 26, 'hii', 'TEXT', '2017-11-15 05:11:23'),
(1557, 5, 26, ' I\'m so ', 'TEXT', '2017-11-15 06:14:09'),
(1558, 5, 26, 'Hello it\'s ', 'TEXT', '2017-11-15 06:14:15'),
(1559, 5, 26, 'Shh b\'hu', 'TEXT', '2017-11-15 06:14:28'),
(1560, 5, 26, 'ud83dude02ud83dude1cud83dude01ud83dude33ud83dude11', 'TEXT', '2017-11-15 06:14:56'),
(1561, 4, 44, 'ud83dude00', 'TEXT', '2017-11-15 06:38:59'),
(1562, 4, 44, 'Itu2019s ', 'TEXT', '2017-11-15 06:39:04'),
(1563, 4, 44, 'Hi', 'TEXT', '2017-11-15 06:39:04'),
(1564, 4, 44, 'Hello', 'TEXT', '2017-11-15 06:39:11'),
(1565, 5, 26, 'uploads/messages/9598d220aac94a83fecd1d0446241e88.jpg', 'FILE', '2017-11-15 06:50:02'),
(1566, 4, 44, 'Its', 'TEXT', '2017-11-15 07:11:50'),
(1567, 4, 44, 'ud83dude00', 'TEXT', '2017-11-15 07:12:08'),
(1568, 4, 44, 'Itu2019s good ', 'TEXT', '2017-11-15 07:38:25'),
(1569, 8, 26, 'uploads/messages/ad6a7178b0d9f019c80818fca4afe61e.jpg', 'FILE', '2017-11-15 07:46:36'),
(1570, 8, 34, 'uploads/messages/781fe1d8195007f89d0d816acd6eb805.jpg', 'FILE', '2017-11-15 07:53:11'),
(1571, 8, 26, 'hi', 'TEXT', '2017-11-15 07:53:31'),
(1572, 8, 26, 'hii', 'TEXT', '2017-11-15 07:53:36'),
(1573, 8, 26, 'uploads/messages/096d3fefea7e88412ae8b8f7add93bfd.jpg', 'FILE', '2017-11-15 07:53:52'),
(1574, 8, 26, 'test', 'TEXT', '2017-11-15 07:54:10'),
(1575, 8, 26, 'test', 'TEXT', '2017-11-15 07:54:11'),
(1576, 8, 26, 'test', 'TEXT', '2017-11-15 07:54:17'),
(1577, 8, 34, 'uploads/messages/b1762fded3581b2211cf1f2451d1c679.png', 'FILE', '2017-11-15 07:54:31'),
(1578, 5, 26, 'uploads/messages/4afaa59b8a31836fca8bc28f8a888da1.jpg', 'FILE', '2017-11-15 08:55:02'),
(1579, 8, 26, 'Hi', 'TEXT', '2017-11-15 09:44:41'),
(1580, 8, 26, 'Jgh', 'TEXT', '2017-11-15 09:44:43'),
(1581, 8, 26, 'Mn,mn', 'TEXT', '2017-11-15 09:45:23'),
(1582, 8, 26, 'Hfhghfg', 'TEXT', '2017-11-15 10:02:44'),
(1583, 5, 48, 'Hello', 'TEXT', '2017-11-15 10:08:38'),
(1584, 8, 26, 'hello', 'TEXT', '2017-11-15 10:20:48'),
(1585, 8, 26, 'ji', 'TEXT', '2017-11-15 10:21:01'),
(1586, 8, 26, 'hi', 'TEXT', '2017-11-15 10:21:27'),
(1587, 8, 26, 'hello', 'TEXT', '2017-11-15 10:21:31'),
(1588, 5, 26, 'Hi', 'TEXT', '2017-11-15 10:21:41'),
(1589, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:21:47'),
(1590, 5, 26, 'How are u', 'TEXT', '2017-11-15 10:22:06'),
(1591, 5, 26, 'Hi', 'TEXT', '2017-11-15 10:24:24'),
(1592, 53, 30, 'Bfbfrb', 'TEXT', '2017-11-15 10:24:53'),
(1593, 53, 30, 'Evevev', 'TEXT', '2017-11-15 10:24:59'),
(1594, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:25:49'),
(1595, 72, 53, 'Hello ', 'TEXT', '2017-11-15 10:26:13'),
(1596, 72, 53, 'Hello', 'TEXT', '2017-11-15 10:26:20'),
(1597, 5, 26, 'How are you', 'TEXT', '2017-11-15 10:26:32'),
(1598, 72, 53, 'Hi', 'TEXT', '2017-11-15 10:27:10'),
(1599, 53, 30, 'Sfsf', 'TEXT', '2017-11-15 10:27:14'),
(1600, 53, 30, 'Dadad', 'TEXT', '2017-11-15 10:27:19'),
(1601, 72, 51, 'Hello', 'TEXT', '2017-11-15 10:27:44'),
(1602, 72, 53, ' ud83dude1c', 'TEXT', '2017-11-15 10:28:56'),
(1603, 72, 53, 'Ttttt', 'TEXT', '2017-11-15 10:29:16'),
(1604, 72, 53, 'Jkkk', 'TEXT', '2017-11-15 10:30:04'),
(1605, 5, 53, 'Hi', 'TEXT', '2017-11-15 10:30:53'),
(1606, 5, 53, 'Hello How are you', 'TEXT', '2017-11-15 10:31:10'),
(1607, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:31:59'),
(1608, 72, 53, 'I am fine', 'TEXT', '2017-11-15 10:33:11'),
(1609, 5, 26, 'Hello ', 'TEXT', '2017-11-15 10:33:12'),
(1610, 5, 53, 'I am also fine', 'TEXT', '2017-11-15 10:33:30'),
(1611, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:33:42'),
(1612, 5, 26, 'Hi Hi Hello', 'TEXT', '2017-11-15 10:34:47'),
(1613, 5, 26, 'And you', 'TEXT', '2017-11-15 10:34:58'),
(1614, 8, 26, 'hih', 'TEXT', '2017-11-15 10:36:03'),
(1615, 8, 26, 'how are u', 'TEXT', '2017-11-15 10:36:18'),
(1616, 8, 26, 'hello', 'TEXT', '2017-11-15 10:36:34'),
(1617, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:41:40'),
(1618, 8, 26, 'yi', 'TEXT', '2017-11-15 10:41:56'),
(1619, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:41:58'),
(1620, 5, 26, 'Hi', 'TEXT', '2017-11-15 10:42:09'),
(1621, 5, 26, 'Hello', 'TEXT', '2017-11-15 10:42:17'),
(1622, 5, 26, 'Hi hello', 'TEXT', '2017-11-15 10:42:54'),
(1623, 5, 26, 'Hi', 'TEXT', '2017-11-15 10:42:59'),
(1624, 5, 26, 'JJJ', 'TEXT', '2017-11-15 10:43:19'),
(1625, 5, 26, 'Hi', 'TEXT', '2017-11-15 10:43:33'),
(1626, 5, 26, 'Now are you', 'TEXT', '2017-11-15 10:43:38'),
(1627, 8, 26, 'hello', 'TEXT', '2017-11-15 10:44:07'),
(1628, 5, 26, 'Hooo', 'TEXT', '2017-11-15 10:44:14'),
(1629, 5, 26, 'Jjj', 'TEXT', '2017-11-15 10:44:27'),
(1630, 5, 26, 'Koiopk', 'TEXT', '2017-11-15 10:44:32'),
(1631, 8, 26, 'okkk', 'TEXT', '2017-11-15 10:44:38'),
(1632, 8, 26, 'okkkk', 'TEXT', '2017-11-15 10:44:41'),
(1633, 8, 26, 'uD83DuDE00uD83DuDE00', 'TEXT', '2017-11-15 10:44:46'),
(1634, 66, 47, 'ghhj', 'TEXT', '2017-11-15 10:44:52'),
(1635, 66, 47, 'hhjj', 'TEXT', '2017-11-15 10:44:57'),
(1636, 5, 47, 'fff', 'TEXT', '2017-11-15 10:45:15'),
(1637, 5, 47, 'gggg', 'TEXT', '2017-11-15 10:45:24'),
(1638, 66, 47, 'bhjjj', 'TEXT', '2017-11-15 10:45:50'),
(1639, 8, 26, 'hello', 'TEXT', '2017-11-15 10:45:56'),
(1640, 66, 47, 'ghjj', 'TEXT', '2017-11-15 10:45:57'),
(1641, 66, 47, 'ghhh', 'TEXT', '2017-11-15 10:46:01'),
(1642, 8, 26, 'uploads/messages/69c3c4939c4fa4e315bb486840c076f1.jpg', 'FILE', '2017-11-15 10:46:12'),
(1643, 8, 26, 'uD83DuDE0EuD83DuDE0E', 'TEXT', '2017-11-15 10:46:25'),
(1644, 66, 47, 'Dsdsd', 'TEXT', '2017-11-15 10:46:37'),
(1645, 66, 47, 'Adad', 'TEXT', '2017-11-15 10:46:43'),
(1646, 8, 26, 'uD83DuDE42uD83DuDE0BuD83DuDE0E', 'TEXT', '2017-11-15 10:46:49'),
(1647, 66, 47, 'Dgdgd', 'TEXT', '2017-11-15 10:47:29'),
(1648, 8, 26, 'this is tes', 'TEXT', '2017-11-15 10:48:46'),
(1649, 8, 26, 'uD83DuDE0D', 'TEXT', '2017-11-15 10:48:59'),
(1650, 66, 47, 'Dvdvdv', 'TEXT', '2017-11-15 10:50:45'),
(1651, 5, 26, 'Hello', 'TEXT', '2017-11-15 11:14:40'),
(1652, 5, 26, 'Adfsadf', 'TEXT', '2017-11-15 11:16:12'),
(1653, 5, 26, 'Adsf', 'TEXT', '2017-11-15 11:16:35'),
(1654, 5, 26, 'Dasf', 'TEXT', '2017-11-15 11:16:42'),
(1655, 5, 26, 'Hi', 'TEXT', '2017-11-15 11:20:38'),
(1656, 5, 26, 'How are you', 'TEXT', '2017-11-15 11:20:59'),
(1657, 8, 26, 'u', 'TEXT', '2017-11-15 11:21:56'),
(1658, 5, 26, '\\ud83d \\ude0d', 'TEXT', '2017-11-15 11:22:58'),
(1659, 31, 48, 'Ssss', 'TEXT', '2017-11-15 11:26:18'),
(1660, 31, 48, 'Ssss', 'TEXT', '2017-11-15 11:26:22'),
(1661, 31, 48, 'Ssss', 'TEXT', '2017-11-15 11:26:29'),
(1662, 31, 48, 'Ssss', 'TEXT', '2017-11-15 11:26:29'),
(1663, 31, 48, 'Sss', 'TEXT', '2017-11-15 11:26:30'),
(1664, 5, 48, 'SSSSS', 'TEXT', '2017-11-15 11:26:46'),
(1665, 5, 26, 'Hello', 'TEXT', '2017-11-15 11:26:52'),
(1666, 8, 26, '', 'TEXT', '2017-11-15 11:29:41'),
(1667, 31, 48, 'Notification is not receive from android', 'TEXT', '2017-11-15 11:27:34'),
(1668, 5, 26, 'Hello', 'TEXT', '2017-11-15 11:30:12'),
(1669, 5, 26, 'How are you', 'TEXT', '2017-11-15 11:30:21'),
(1670, 8, 26, 'fine', 'TEXT', '2017-11-15 11:30:31'),
(1671, 31, 48, 'Ddd', 'TEXT', '2017-11-15 11:31:52'),
(1672, 8, 26, '9k', 'TEXT', '2017-11-15 11:34:47'),
(1673, 8, 26, 'Nvbnbvnbvn', 'TEXT', '2017-11-15 11:43:10'),
(1674, 5, 26, 'Ade', 'TEXT', '2017-11-15 11:45:37'),
(1675, 8, 26, 'uD83DuDE00uD83DuDE01', 'TEXT', '2017-11-15 11:45:59'),
(1676, 5, 26, 'Adsf', 'TEXT', '2017-11-15 11:54:08'),
(1677, 8, 26, 'Hi', 'TEXT', '2017-11-15 12:01:48'),
(1678, 8, 26, 'Gdfgdf', 'TEXT', '2017-11-15 12:03:14'),
(1680, 31, 48, 'Hiiiii', 'TEXT', '2017-11-15 12:04:39'),
(1681, 8, 26, 'Bnbvn', 'TEXT', '2017-11-15 12:05:21'),
(1682, 31, 48, 'Hiii', 'TEXT', '2017-11-15 12:05:28'),
(1683, 5, 48, 'ghhh', 'TEXT', '2017-11-15 12:06:25'),
(1684, 31, 48, 'Hiii', 'TEXT', '2017-11-15 12:06:30'),
(1685, 31, 49, 'Hiii', 'TEXT', '2017-11-15 12:06:46'),
(1686, 8, 26, 'Bvnbv', 'TEXT', '2017-11-15 12:07:12'),
(1687, 31, 30, 'Hii', 'TEXT', '2017-11-15 12:07:33'),
(1688, 31, 30, 'Hiii', 'TEXT', '2017-11-15 12:07:40'),
(1689, 31, 30, 'Hiii', 'TEXT', '2017-11-15 12:07:56'),
(1690, 31, 30, 'Hjjjj', 'TEXT', '2017-11-15 12:08:09'),
(1691, 8, 26, 'Hfghfg', 'TEXT', '2017-11-15 12:08:44'),
(1692, 53, 30, 'bhh', 'TEXT', '2017-11-15 12:08:49'),
(1693, 31, 30, 'Hiii', 'TEXT', '2017-11-15 12:08:53'),
(1694, 31, 30, 'Hiii', 'TEXT', '2017-11-15 12:09:05'),
(1695, 53, 30, 'xxcf', 'TEXT', '2017-11-15 12:09:16'),
(1696, 31, 30, 'Hhhh', 'TEXT', '2017-11-15 12:09:18'),
(1697, 8, 26, 'Gdfgfd', 'TEXT', '2017-11-15 12:12:41'),
(1698, 31, 30, 'hiii', 'TEXT', '2017-11-15 12:13:59'),
(1699, 53, 30, 'hi', 'TEXT', '2017-11-15 12:14:34'),
(1700, 8, 26, 'Kjghkhj', 'TEXT', '2017-11-15 12:17:03'),
(1701, 31, 30, 'Hi', 'TEXT', '2017-11-15 12:18:23'),
(1702, 31, 30, '1', 'TEXT', '2017-11-15 12:18:34'),
(1703, 31, 30, '2', 'TEXT', '2017-11-15 12:19:10'),
(1704, 31, 30, '3', 'TEXT', '2017-11-15 12:19:25'),
(1705, 31, 30, '4', 'TEXT', '2017-11-15 12:19:28'),
(1706, 31, 30, '5', 'TEXT', '2017-11-15 12:19:29'),
(1707, 8, 26, 'Jhgjhg', 'TEXT', '2017-11-15 12:20:38'),
(1708, 74, 55, 'Hiii', 'TEXT', '2017-11-15 12:21:47'),
(1709, 31, 30, '6', 'TEXT', '2017-11-15 12:22:57'),
(1710, 31, 30, '7', 'TEXT', '2017-11-15 12:23:13'),
(1711, 53, 30, 'Sscscscsc', 'TEXT', '2017-11-15 12:23:38'),
(1712, 74, 55, 'Hii', 'TEXT', '2017-11-15 12:24:32'),
(1713, 74, 55, 'Hiii', 'TEXT', '2017-11-15 12:27:38'),
(1714, 31, 30, 'Hello', 'TEXT', '2017-11-15 12:27:42'),
(1715, 8, 26, 'Hgfhgf', 'TEXT', '2017-11-15 12:29:15'),
(1716, 74, 55, 'Hii', 'TEXT', '2017-11-15 12:29:30'),
(1717, 74, 55, 'Okkk', 'TEXT', '2017-11-15 12:30:00'),
(1718, 74, 55, 'Okkk', 'TEXT', '2017-11-15 12:30:00'),
(1719, 74, 55, 'Hiiiiiiiiiiiiiiiiiiiii', 'TEXT', '2017-11-15 12:31:44'),
(1720, 8, 26, 'Hfgdhfg', 'TEXT', '2017-11-15 12:32:23'),
(1721, 8, 26, 'Jghfjg', 'TEXT', '2017-11-15 12:32:37'),
(1722, 8, 26, 'Khjkhj', 'TEXT', '2017-11-15 12:32:49'),
(1723, 31, 48, 'Hello', 'TEXT', '2017-11-15 12:32:50'),
(1724, 31, 48, 'Hhhhhh', 'TEXT', '2017-11-15 12:33:29'),
(1725, 74, 55, 'Hiii', 'TEXT', '2017-11-15 12:34:09'),
(1726, 8, 26, 'L;\'l;\';l', 'TEXT', '2017-11-15 12:34:10'),
(1727, 8, 26, 'Lkkjlj', 'TEXT', '2017-11-15 12:34:30'),
(1728, 72, 55, 'hi', 'TEXT', '2017-11-15 12:34:56'),
(1729, 53, 30, 'hdydfufif', 'TEXT', '2017-11-15 12:35:30'),
(1730, 31, 30, 'Hiii', 'TEXT', '2017-11-15 12:35:48'),
(1731, 31, 30, 'Hey', 'TEXT', '2017-11-15 12:36:28'),
(1732, 31, 30, 'Hkk', 'TEXT', '2017-11-15 12:37:08'),
(1733, 8, 26, 'M,bnmbn', 'TEXT', '2017-11-15 12:37:12'),
(1734, 8, 26, 'Khjkhj', 'TEXT', '2017-11-15 12:37:45'),
(1735, 74, 55, 'Hii', 'TEXT', '2017-11-15 12:38:47'),
(1736, 8, 26, 'Hjkhjkjh', 'TEXT', '2017-11-15 12:39:19'),
(1737, 74, 55, 'Hiii', 'TEXT', '2017-11-15 12:39:25'),
(1738, 8, 26, 'Hggfhf', 'TEXT', '2017-11-15 12:44:14'),
(1739, 8, 26, 'Jghjghjgh', 'TEXT', '2017-11-15 12:44:23'),
(1740, 74, 55, 'Hiii', 'TEXT', '2017-11-15 12:45:45'),
(1741, 74, 55, 'Htjtgj', 'TEXT', '2017-11-15 12:46:08'),
(1742, 5, 47, 'Ffffffffvv', 'TEXT', '2017-11-15 12:47:14'),
(1743, 66, 52, 'Cccc', 'TEXT', '2017-11-15 12:47:34'),
(1744, 66, 47, 'The ', 'TEXT', '2017-11-15 12:47:43'),
(1745, 74, 55, 'Hoiii', 'TEXT', '2017-11-15 12:49:39'),
(1746, 74, 55, 'Hhlkjn', 'TEXT', '2017-11-15 12:52:14'),
(1747, 74, 55, 'Fghfhfh', 'TEXT', '2017-11-15 12:52:23'),
(1748, 8, 26, 'ud83dude0d', 'TEXT', '2017-11-15 13:18:33'),
(1749, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:28:40'),
(1750, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:28:53'),
(1751, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:28:54'),
(1752, 4, 44, 'Hih', 'TEXT', '2017-11-15 17:28:56'),
(1753, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:28:56'),
(1754, 4, 44, 'H', 'TEXT', '2017-11-15 17:28:57'),
(1755, 4, 44, 'Ih', 'TEXT', '2017-11-15 17:28:57'),
(1756, 4, 44, 'Ihih', 'TEXT', '2017-11-15 17:28:58'),
(1757, 2, 44, 'Itu2019s ', 'TEXT', '2017-11-15 17:29:10'),
(1758, 2, 44, 'ud83dude00ud83dude00ud83dude00', 'TEXT', '2017-11-15 17:29:20'),
(1759, 2, 44, ' Hi', 'TEXT', '2017-11-15 17:29:34'),
(1760, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:37:19'),
(1761, 4, 44, 'There', 'TEXT', '2017-11-15 17:39:22'),
(1762, 4, 44, 'Hello', 'TEXT', '2017-11-15 17:39:28'),
(1763, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:41:48'),
(1764, 4, 44, 'There', 'TEXT', '2017-11-15 17:41:52'),
(1765, 4, 44, 'Hi', 'TEXT', '2017-11-15 17:41:54'),
(1766, 4, 44, 'Jj', 'TEXT', '2017-11-15 17:41:55'),
(1767, 4, 44, 'uploads/messages/cdaf6bb58a69f4abade3edada53c2a00.png', 'FILE', '2017-11-15 17:42:19'),
(1768, 2, 44, 'uploads/messages/cc9385d365cdccf9d4ad9b4b81ed2bbd.jpg', 'FILE', '2017-11-15 17:42:37'),
(1769, 2, 44, 'hi', 'TEXT', '2017-11-15 17:42:53'),
(1770, 2, 44, 'there', 'TEXT', '2017-11-15 17:43:02'),
(1771, 2, 44, 'hi', 'TEXT', '2017-11-15 17:43:19'),
(1772, 2, 44, 'thanks there', 'TEXT', '2017-11-15 17:44:14'),
(1773, 2, 44, 'gy', 'TEXT', '2017-11-15 17:44:41'),
(1774, 2, 44, 'bbgg', 'TEXT', '2017-11-15 17:44:41'),
(1775, 2, 57, 'hi', 'TEXT', '2017-11-15 17:45:58'),
(1776, 2, 57, 'r', 'TEXT', '2017-11-15 17:46:23'),
(1777, 4, 5, 'Very good ', 'TEXT', '2017-11-15 17:46:35'),
(1778, 2, 57, 'hello', 'TEXT', '2017-11-15 17:46:57'),
(1779, 4, 16, 'There', 'TEXT', '2017-11-15 17:47:07'),
(1780, 2, 57, 'jj', 'TEXT', '2017-11-15 17:47:27'),
(1781, 2, 57, 'hello', 'TEXT', '2017-11-15 17:47:57'),
(1782, 2, 57, 'fu', 'TEXT', '2017-11-15 17:48:11'),
(1783, 4, 28, ' ud83dudc4e ', 'TEXT', '2017-11-15 17:48:18'),
(1784, 4, 28, 'Noooo', 'TEXT', '2017-11-15 17:48:21'),
(1785, 2, 57, 'thanks', 'TEXT', '2017-11-15 17:48:44'),
(1786, 4, 57, 'Hello', 'TEXT', '2017-11-15 17:49:03'),
(1787, 53, 30, 'Hi', 'TEXT', '2017-11-15 17:58:33'),
(1788, 53, 30, 'There', 'TEXT', '2017-11-15 17:58:38'),
(1789, 31, 30, 'uD83EuDD23', 'TEXT', '2017-11-15 17:58:50'),
(1790, 31, 30, 'yes', 'TEXT', '2017-11-15 17:58:55'),
(1791, 53, 30, 'Hi', 'TEXT', '2017-11-15 17:58:58'),
(1792, 31, 30, 'how are you', 'TEXT', '2017-11-15 17:59:07'),
(1793, 31, 30, 'waiting', 'TEXT', '2017-11-15 17:59:15'),
(1794, 31, 30, 'thanks', 'TEXT', '2017-11-15 17:59:25'),
(1795, 31, 30, 'thanks', 'TEXT', '2017-11-15 17:59:35'),
(1796, 53, 30, ' Hi', 'TEXT', '2017-11-15 18:00:07'),
(1797, 31, 30, 'Hi', 'TEXT', '2017-11-15 18:01:35'),
(1798, 53, 30, 'hi', 'TEXT', '2017-11-15 18:01:43'),
(1799, 53, 30, 'there', 'TEXT', '2017-11-15 18:01:48'),
(1800, 53, 30, 'hi', 'TEXT', '2017-11-15 18:02:26'),
(1801, 53, 30, 'hi', 'TEXT', '2017-11-15 18:02:35'),
(1802, 53, 30, 'thanks', 'TEXT', '2017-11-15 18:02:37'),
(1803, 53, 30, 'there', 'TEXT', '2017-11-15 18:02:43'),
(1804, 2, 18, 'Fdfds', 'TEXT', '2017-11-15 18:06:15'),
(1805, 2, 18, 'Fsdfdsf', 'TEXT', '2017-11-15 18:06:17'),
(1806, 2, 18, 'Hh', 'TEXT', '2017-11-15 18:06:33'),
(1807, 2, 18, 'Hi', 'TEXT', '2017-11-15 18:06:40'),
(1808, 2, 18, 'There', 'TEXT', '2017-11-15 18:06:49'),
(1809, 53, 30, 'hi', 'TEXT', '2017-11-15 18:06:59'),
(1810, 53, 30, 'jccj', 'TEXT', '2017-11-15 18:07:01'),
(1811, 53, 30, 'thete', 'TEXT', '2017-11-15 18:07:07'),
(1812, 53, 30, 'jfcjx', 'TEXT', '2017-11-15 18:07:10'),
(1813, 53, 30, 'hello', 'TEXT', '2017-11-15 18:08:28'),
(1814, 53, 30, 'there??', 'TEXT', '2017-11-15 18:08:47'),
(1815, 4, 58, 'Hi', 'TEXT', '2017-11-15 18:10:23'),
(1816, 4, 58, 'There?', 'TEXT', '2017-11-15 18:10:31'),
(1817, 4, 58, 'Hello', 'TEXT', '2017-11-15 18:10:35'),
(1818, 4, 58, 'There?', 'TEXT', '2017-11-15 18:10:52'),
(1819, 2, 18, 'Dsfd', 'TEXT', '2017-11-15 18:11:15'),
(1820, 2, 18, 'Dsfsd', 'TEXT', '2017-11-15 18:11:16'),
(1821, 2, 18, 'Fds', 'TEXT', '2017-11-15 18:11:18'),
(1822, 2, 18, 'Dsd', 'TEXT', '2017-11-15 18:14:48'),
(1823, 2, 57, 'hi', 'TEXT', '2017-11-15 19:46:45'),
(1824, 2, 57, 'yg', 'TEXT', '2017-11-15 19:46:55'),
(1825, 4, 57, 'Hi', 'TEXT', '2017-11-15 19:47:17'),
(1826, 4, 57, 'Djdi', 'TEXT', '2017-11-15 19:47:21'),
(1827, 2, 57, 'gkg', 'TEXT', '2017-11-15 19:47:39'),
(1828, 2, 57, 'ddh', 'TEXT', '2017-11-15 19:47:45'),
(1829, 2, 57, 'zh', 'TEXT', '2017-11-15 19:47:52'),
(1830, 2, 57, 'hg', 'TEXT', '2017-11-15 19:48:00'),
(1831, 2, 57, 'yg', 'TEXT', '2017-11-15 19:48:08'),
(1832, 2, 57, 'sgs', 'TEXT', '2017-11-15 19:48:16'),
(1833, 2, 57, 'usu', 'TEXT', '2017-11-15 19:48:30'),
(1834, 4, 58, ' Hui', 'TEXT', '2017-11-15 19:52:42'),
(1835, 2, 57, 'gig', 'TEXT', '2017-11-15 20:20:44'),
(1836, 2, 57, 'fkjf', 'TEXT', '2017-11-15 20:20:46'),
(1837, 2, 57, 'fjifi', 'TEXT', '2017-11-15 20:20:47'),
(1838, 2, 57, 'Jk', 'TEXT', '2017-11-15 20:21:07'),
(1839, 2, 57, 'Jk', 'TEXT', '2017-11-15 20:21:07'),
(1840, 2, 57, 'Jk', 'TEXT', '2017-11-15 20:21:08'),
(1841, 2, 57, 'Jkjh', 'TEXT', '2017-11-15 20:21:22'),
(1842, 2, 57, 'Jlhljhl', 'TEXT', '2017-11-15 20:21:24'),
(1843, 2, 57, 'Klkj', 'TEXT', '2017-11-15 20:21:25'),
(1844, 2, 57, 'uploads/messages/c9ff932502aaa0fa8efe1d0cc6251c69.jpg', 'FILE', '2017-11-15 20:47:34'),
(1845, 4, 57, 'uploads/messages/730ba08cecb47bbf32920f9822d7916d.jpg', 'FILE', '2017-11-15 20:48:19'),
(1846, 4, 57, 'uploads/messages/b132900a56adc53c5442cfbbc691aec7.jpg', 'FILE', '2017-11-15 20:48:42'),
(1847, 4, 57, 'Adding test as captain ', 'TEXT', '2017-11-15 20:48:42'),
(1848, 2, 57, 'Hu', 'TEXT', '2017-11-15 20:53:32'),
(1849, 2, 57, 'Try', 'TEXT', '2017-11-15 20:53:37'),
(1850, 2, 57, 'Rtyrtyrtyrtyrtyrtyrtyrtyrtyrtyrty', 'TEXT', '2017-11-15 20:53:49'),
(1851, 2, 57, 'J', 'TEXT', '2017-11-15 20:54:47'),
(1852, 2, 57, 'J', 'TEXT', '2017-11-15 20:54:48'),
(1853, 2, 57, 'K', 'TEXT', '2017-11-15 20:54:48'),
(1854, 2, 57, 'K', 'TEXT', '2017-11-15 20:54:49'),
(1855, 2, 57, 'K', 'TEXT', '2017-11-15 20:55:17'),
(1856, 2, 57, 'Hi', 'TEXT', '2017-11-15 20:55:24'),
(1857, 4, 57, 'Helllo', 'TEXT', '2017-11-15 20:55:33'),
(1858, 4, 57, 'There', 'TEXT', '2017-11-15 20:55:39'),
(1859, 4, 57, 'Hi', 'TEXT', '2017-11-15 20:55:47'),
(1860, 2, 57, 'Ji', 'TEXT', '2017-11-15 20:55:53'),
(1861, 4, 57, 'Hello', 'TEXT', '2017-11-15 20:56:07'),
(1862, 4, 57, 'Hi good app to ', 'TEXT', '2017-11-15 20:56:18'),
(1863, 4, 57, 'Hello', 'TEXT', '2017-11-15 20:59:36'),
(1864, 2, 57, 'Hello', 'TEXT', '2017-11-15 21:06:41'),
(1865, 2, 57, 'There', 'TEXT', '2017-11-15 21:06:45'),
(1866, 2, 57, 'How are you', 'TEXT', '2017-11-15 21:06:58'),
(1867, 4, 57, 'Hi', 'TEXT', '2017-11-15 21:07:28'),
(1868, 2, 57, 'Dff', 'TEXT', '2017-11-15 22:23:45'),
(1869, 2, 57, 'Fdfdfdfdf', 'TEXT', '2017-11-15 22:24:06'),
(1870, 2, 57, 'Fgfd', 'TEXT', '2017-11-15 22:41:20'),
(1871, 2, 57, 'Gdfg', 'TEXT', '2017-11-15 22:41:25'),
(1872, 2, 57, 'Fgdfgdfg', 'TEXT', '2017-11-15 22:41:27'),
(1873, 2, 57, 'Gffdgfdgfdggg', 'TEXT', '2017-11-15 22:41:29'),
(1874, 2, 57, 'Gfdgdfgdfgfdgfd', 'TEXT', '2017-11-15 22:41:31'),
(1875, 2, 57, 'Gdfgdfgdf', 'TEXT', '2017-11-15 22:41:34'),
(1876, 2, 57, 'Hu', 'TEXT', '2017-11-15 23:01:38'),
(1877, 2, 57, 'Hhh', 'TEXT', '2017-11-15 23:01:40'),
(1878, 2, 57, 'H', 'TEXT', '2017-11-15 23:01:41'),
(1879, 2, 57, 'Hhh', 'TEXT', '2017-11-15 23:01:41'),
(1880, 2, 57, 'H', 'TEXT', '2017-11-15 23:01:42'),
(1881, 2, 57, 'H', 'TEXT', '2017-11-15 23:01:42'),
(1882, 2, 57, 'Hh', 'TEXT', '2017-11-15 23:01:42'),
(1883, 4, 57, 'Ji', 'TEXT', '2017-11-15 23:02:27'),
(1884, 31, 30, ' Hello', 'TEXT', '2017-11-15 23:17:31'),
(1885, 53, 30, 'hi', 'TEXT', '2017-11-15 23:41:07'),
(1886, 53, 30, 'hi', 'TEXT', '2017-11-15 23:48:35'),
(1887, 53, 58, 'Hi', 'TEXT', '2017-11-16 00:04:08'),
(1888, 53, 58, 'There?', 'TEXT', '2017-11-16 00:04:14'),
(1889, 53, 30, 'hello', 'TEXT', '2017-11-16 00:18:19'),
(1890, 31, 30, ' Hi', 'TEXT', '2017-11-16 00:18:34'),
(1891, 31, 30, 'Theology ', 'TEXT', '2017-11-16 00:18:34'),
(1892, 31, 30, ' There', 'TEXT', '2017-11-16 00:18:34'),
(1893, 31, 30, 'Yes', 'TEXT', '2017-11-16 00:18:34'),
(1894, 53, 30, 'hi', 'TEXT', '2017-11-16 00:19:05'),
(1895, 31, 30, 'There', 'TEXT', '2017-11-16 00:19:33'),
(1896, 53, 30, 'hi', 'TEXT', '2017-11-16 00:26:23'),
(1897, 53, 30, 'hi', 'TEXT', '2017-11-16 00:26:32'),
(1898, 2, 57, 'Hi', 'TEXT', '2017-11-16 02:09:14'),
(1899, 2, 57, 'Cc', 'TEXT', '2017-11-16 02:09:25'),
(1900, 2, 57, 'Gvc', 'TEXT', '2017-11-16 02:09:28'),
(1901, 2, 57, 'Xnnxbx', 'TEXT', '2017-11-16 02:09:32'),
(1902, 2, 57, 'Hi I just want you and let ', 'TEXT', '2017-11-16 02:09:38'),
(1903, 4, 57, 'uploads/messages/5af02003423bf6df8301db232ac36dc0.jpg', 'FILE', '2017-11-16 02:09:56'),
(1904, 4, 57, 'hi', 'TEXT', '2017-11-16 02:10:16'),
(1905, 2, 57, 'They', 'TEXT', '2017-11-16 02:10:30'),
(1906, 2, 57, 'Hi', 'TEXT', '2017-11-16 02:10:35'),
(1907, 2, 57, 'Du', 'TEXT', '2017-11-16 02:11:25'),
(1908, 2, 57, 'Love ud83dudc97 ', 'TEXT', '2017-11-16 02:11:33'),
(1909, 5, 26, '????', 'TEXT', '2017-11-16 04:19:42'),
(1910, 5, 26, 'It\'s ', 'TEXT', '2017-11-16 04:44:41'),
(1911, 5, 26, 'In\'h ', 'TEXT', '2017-11-16 04:44:56'),
(1912, 74, 55, 'Erer', 'TEXT', '2017-11-16 04:59:04'),
(1913, 74, 55, 'Hello sur', 'TEXT', '2017-11-16 04:59:16'),
(1914, 74, 55, 'bhhjj', 'TEXT', '2017-11-16 04:59:57'),
(1915, 74, 55, 'hiii', 'TEXT', '2017-11-16 05:00:00'),
(1916, 74, 55, 'xcc', 'TEXT', '2017-11-16 05:00:43'),
(1917, 74, 55, 'Gefgegeg', 'TEXT', '2017-11-16 05:07:04'),
(1918, 74, 55, 'Dadada', 'TEXT', '2017-11-16 05:07:22'),
(1919, 74, 55, 'Kkk', 'TEXT', '2017-11-16 05:09:35'),
(1920, 74, 55, 'Fwwfwf', 'TEXT', '2017-11-16 05:10:29'),
(1921, 74, 55, '11212', 'TEXT', '2017-11-16 05:10:41'),
(1922, 74, 55, 'Hiii', 'TEXT', '2017-11-16 05:14:57'),
(1923, 72, 55, 'bbh', 'TEXT', '2017-11-16 05:15:17'),
(1924, 72, 55, 'cvb', 'TEXT', '2017-11-16 05:15:22'),
(1925, 74, 55, 'Vgsfwf', 'TEXT', '2017-11-16 05:15:25'),
(1926, 74, 55, 'Fsfsf', 'TEXT', '2017-11-16 05:15:29'),
(1927, 74, 55, 'Safsfsf', 'TEXT', '2017-11-16 05:15:32'),
(1928, 31, 30, 'Vgvgvgvgvgvggvgvgvvgv', 'TEXT', '2017-11-16 05:18:05'),
(1929, 31, 30, 'Vgvgv', 'TEXT', '2017-11-16 05:18:42'),
(1930, 31, 30, 'Vbhvh', 'TEXT', '2017-11-16 05:19:32'),
(1931, 31, 30, 'Gdgdg', 'TEXT', '2017-11-16 05:21:09'),
(1932, 31, 30, 'Swfsfsf', 'TEXT', '2017-11-16 05:22:57'),
(1933, 31, 30, 'Vgvg', 'TEXT', '2017-11-16 05:23:17'),
(1934, 31, 30, 'Nj', 'TEXT', '2017-11-16 05:23:34'),
(1935, 31, 30, 'Sfsfsf', 'TEXT', '2017-11-16 05:24:48'),
(1936, 31, 30, 'Bjb', 'TEXT', '2017-11-16 05:24:54'),
(1937, 31, 30, 'Sdvdv', 'TEXT', '2017-11-16 05:31:28'),
(1938, 31, 30, 'Dvcdv', 'TEXT', '2017-11-16 05:32:15'),
(1939, 31, 30, 'Sfsf', 'TEXT', '2017-11-16 05:34:09'),
(1940, 31, 30, 'Cscsc', 'TEXT', '2017-11-16 05:34:52'),
(1941, 31, 30, 'Cscsc', 'TEXT', '2017-11-16 05:35:09'),
(1942, 31, 30, 'Egeg', 'TEXT', '2017-11-16 05:43:09'),
(1943, 31, 30, 'Efef', 'TEXT', '2017-11-16 05:46:35'),
(1944, 31, 30, 'Fwfwfw', 'TEXT', '2017-11-16 05:46:42'),
(1945, 31, 30, 'Wfwfw', 'TEXT', '2017-11-16 05:46:49'),
(1946, 31, 30, 'Qaqx', 'TEXT', '2017-11-16 05:47:01'),
(1947, 31, 30, 'Sxsx', 'TEXT', '2017-11-16 05:47:18'),
(1948, 31, 30, 'Caccc', 'TEXT', '2017-11-16 05:47:35'),
(1949, 31, 30, 'Cacac', 'TEXT', '2017-11-16 05:48:22'),
(1950, 31, 30, 'Sdssd', 'TEXT', '2017-11-16 05:48:59'),
(1951, 74, 55, 'Dadad', 'TEXT', '2017-11-16 05:49:59'),
(1952, 31, 30, 'Ddfdf', 'TEXT', '2017-11-16 05:50:16'),
(1953, 31, 30, 'Dadadsd', 'TEXT', '2017-11-16 05:50:24'),
(1954, 31, 30, 'Scscsc', 'TEXT', '2017-11-16 05:50:27'),
(1955, 31, 30, 'Nmhgmhm', 'TEXT', '2017-11-16 05:53:53'),
(1956, 31, 30, 'Zczczc', 'TEXT', '2017-11-16 05:53:57'),
(1957, 31, 30, 'Fsfsfsf', 'TEXT', '2017-11-16 05:54:01'),
(1958, 31, 30, 'Efefef', 'TEXT', '2017-11-16 05:56:06'),
(1959, 31, 30, 'Adad', 'TEXT', '2017-11-16 05:59:42'),
(1960, 31, 30, 'Scscsc', 'TEXT', '2017-11-16 05:59:53'),
(1961, 31, 30, 'Scscsc', 'TEXT', '2017-11-16 06:04:20'),
(1962, 8, 26, 'Hi', 'TEXT', '2017-11-16 06:09:18'),
(1963, 8, 26, 'Hr', 'TEXT', '2017-11-16 06:09:26'),
(1964, 8, 26, 'Vnvbhg', 'TEXT', '2017-11-16 06:09:51'),
(1965, 31, 30, 'Aqdsasas', 'TEXT', '2017-11-16 06:10:30'),
(1966, 31, 30, 'Sdcsdsd', 'TEXT', '2017-11-16 06:10:35'),
(1967, 31, 30, 'Dcscscd', 'TEXT', '2017-11-16 06:10:42'),
(1968, 8, 26, 'Gfhfg', 'TEXT', '2017-11-16 06:11:03'),
(1969, 8, 26, 'Hi', 'TEXT', '2017-11-16 06:11:10'),
(1970, 8, 26, 'Hgjgh', 'TEXT', '2017-11-16 06:11:18'),
(1971, 31, 30, 'Aas', 'TEXT', '2017-11-16 06:11:30'),
(1972, 5, 26, 'Hello', 'TEXT', '2017-11-16 06:11:40'),
(1973, 5, 26, 'Hi', 'TEXT', '2017-11-16 06:11:55'),
(1974, 31, 30, 'Dwdwdwd', 'TEXT', '2017-11-16 06:12:15'),
(1975, 8, 26, 'Hi', 'TEXT', '2017-11-16 06:13:25'),
(1976, 5, 26, 'Hello', 'TEXT', '2017-11-16 06:13:36'),
(1977, 31, 30, 'Ddvdvdv', 'TEXT', '2017-11-16 06:13:46'),
(1978, 31, 30, 'Fsdsd', 'TEXT', '2017-11-16 06:13:57'),
(1979, 8, 26, 'Hii', 'TEXT', '2017-11-16 06:14:02'),
(1980, 31, 30, 'Effff', 'TEXT', '2017-11-16 06:14:03'),
(1981, 31, 30, 'SSS', 'TEXT', '2017-11-16 06:14:09'),
(1982, 31, 30, 'ASASAS', 'TEXT', '2017-11-16 06:14:13'),
(1983, 5, 26, 'Hjj', 'TEXT', '2017-11-16 06:14:14'),
(1984, 31, 30, 'AXAXAXAX', 'TEXT', '2017-11-16 06:14:17'),
(1985, 5, 26, 'Rjjj', 'TEXT', '2017-11-16 06:14:18'),
(1986, 31, 30, ' VGVGVG', 'TEXT', '2017-11-16 06:14:26'),
(1987, 31, 30, 'BHBHB', 'TEXT', '2017-11-16 06:14:32'),
(1988, 31, 30, 'NJJNJN', 'TEXT', '2017-11-16 06:14:38'),
(1989, 31, 30, 'DSDSDSD', 'TEXT', '2017-11-16 06:14:43'),
(1990, 31, 30, 'SASASAS', 'TEXT', '2017-11-16 06:14:47');
INSERT INTO `eb_chatting_content` (`content_id`, `user_id`, `chat_id`, `text`, `content_type`, `created_on`) VALUES
(1991, 5, 26, 'Jcfj', 'TEXT', '2017-11-16 06:14:48'),
(1992, 8, 26, 'Bnjhjh', 'TEXT', '2017-11-16 06:14:52'),
(1993, 5, 26, 'Vhmk', 'TEXT', '2017-11-16 06:14:59'),
(1994, 8, 26, ',mmn,kjk', 'TEXT', '2017-11-16 06:17:09'),
(1995, 5, 26, 'Njk', 'TEXT', '2017-11-16 06:17:23'),
(1996, 8, 26, 'Jklljk', 'TEXT', '2017-11-16 06:17:35'),
(1997, 8, 26, 'Kl;kl;lk', 'TEXT', '2017-11-16 06:17:46'),
(1998, 8, 26, 'Mbnmbn', 'TEXT', '2017-11-16 06:18:00'),
(1999, 5, 26, 'Hjjj', 'TEXT', '2017-11-16 06:18:07'),
(2000, 5, 26, 'Ghhjjj', 'TEXT', '2017-11-16 06:18:12'),
(2001, 5, 26, 'Bb', 'TEXT', '2017-11-16 06:18:32'),
(2002, 8, 26, 'Jghjgh', 'TEXT', '2017-11-16 06:18:40'),
(2003, 31, 30, 'DADADADAD', 'TEXT', '2017-11-16 06:19:06'),
(2004, 53, 30, 'fghh', 'TEXT', '2017-11-16 06:19:14'),
(2005, 5, 26, 'Ghgh', 'TEXT', '2017-11-16 06:19:27'),
(2006, 5, 26, 'Hhj', 'TEXT', '2017-11-16 06:23:57'),
(2007, 8, 26, 'L;.;k', 'TEXT', '2017-11-16 06:24:23'),
(2008, 5, 26, 'Vvhhhhhh', 'TEXT', '2017-11-16 06:24:33'),
(2009, 8, 26, 'Hello', 'TEXT', '2017-11-16 06:25:08'),
(2010, 5, 26, 'Ghhh', 'TEXT', '2017-11-16 06:25:11'),
(2011, 8, 26, 'Hkjkhjk', 'TEXT', '2017-11-16 06:28:15'),
(2012, 5, 26, 'Ddd', 'TEXT', '2017-11-16 06:28:25'),
(2013, 5, 26, 'Dfgggffcvg', 'TEXT', '2017-11-16 06:28:33'),
(2014, 5, 26, 'Ddff', 'TEXT', '2017-11-16 06:28:49'),
(2015, 8, 26, 'Gdfhfghfg', 'TEXT', '2017-11-16 06:30:31'),
(2016, 5, 26, 'Wess', 'TEXT', '2017-11-16 06:31:00'),
(2017, 5, 26, 'Hii', 'TEXT', '2017-11-16 06:31:55'),
(2018, 8, 26, 'K,jkjl', 'TEXT', '2017-11-16 06:32:33'),
(2019, 8, 26, 'Nhjgjgh', 'TEXT', '2017-11-16 06:39:05'),
(2020, 5, 26, 'u263aufe0f', 'TEXT', '2017-11-16 06:39:27'),
(2021, 5, 26, 'Vbbbh', 'TEXT', '2017-11-16 06:39:38'),
(2022, 5, 26, 'Fgfg', 'TEXT', '2017-11-16 06:43:25'),
(2023, 8, 26, 'Jkl;jk;', 'TEXT', '2017-11-16 06:43:31'),
(2024, 8, 26, '.m,.,m', 'TEXT', '2017-11-16 06:43:43'),
(2025, 5, 26, 'Ft', 'TEXT', '2017-11-16 06:43:47'),
(2026, 5, 26, 'Ftt', 'TEXT', '2017-11-16 06:43:52'),
(2027, 5, 26, 'Ft', 'TEXT', '2017-11-16 06:44:05'),
(2028, 53, 30, 'SQSQS', 'TEXT', '2017-11-16 07:17:52'),
(2029, 53, 30, 'JBJB', 'TEXT', '2017-11-16 07:18:12'),
(2030, 53, 30, 'ZCZCFFF', 'TEXT', '2017-11-16 07:18:23'),
(2031, 53, 30, 'WFWF', 'TEXT', '2017-11-16 07:18:27'),
(2032, 53, 30, 'WFWFWF', 'TEXT', '2017-11-16 07:18:33'),
(2033, 53, 30, 'EGFGEFG', 'TEXT', '2017-11-16 07:20:05'),
(2034, 31, 30, 'bcbdh', 'TEXT', '2017-11-16 07:20:18'),
(2035, 53, 30, 'FSFSF', 'TEXT', '2017-11-16 07:20:21'),
(2036, 53, 30, 'SFSF', 'TEXT', '2017-11-16 07:20:25'),
(2037, 53, 30, 'BHB', 'TEXT', '2017-11-16 07:21:02'),
(2038, 53, 30, 'VBHBHB', 'TEXT', '2017-11-16 07:21:21'),
(2039, 53, 30, 'VHBHB', 'TEXT', '2017-11-16 07:21:43'),
(2040, 53, 30, 'WFWFWF', 'TEXT', '2017-11-16 07:24:04'),
(2041, 53, 30, 'WDWD', 'TEXT', '2017-11-16 07:24:26'),
(2042, 53, 30, 'AASAS', 'TEXT', '2017-11-16 07:24:43'),
(2043, 53, 30, 'FSFSF', 'TEXT', '2017-11-16 07:27:46'),
(2044, 53, 30, 'SCSC', 'TEXT', '2017-11-16 07:27:54'),
(2045, 53, 30, 'WDWDD', 'TEXT', '2017-11-16 07:28:35'),
(2046, 53, 30, 'ASAAS', 'TEXT', '2017-11-16 07:28:55'),
(2047, 53, 30, 'HBHBH', 'TEXT', '2017-11-16 07:31:22'),
(2048, 53, 30, 'VBHBH', 'TEXT', '2017-11-16 07:31:35'),
(2049, 53, 30, 'NJJNJ', 'TEXT', '2017-11-16 07:32:22'),
(2050, 53, 30, 'Gegege', 'TEXT', '2017-11-16 07:40:19'),
(2051, 53, 30, 'Fsfsf', 'TEXT', '2017-11-16 07:40:24'),
(2052, 53, 30, 'Asaas', 'TEXT', '2017-11-16 07:40:28'),
(2053, 53, 30, '.svcsc', 'TEXT', '2017-11-16 07:40:34'),
(2054, 53, 30, 'Dadada', 'TEXT', '2017-11-16 07:40:38'),
(2055, 53, 30, 'Jnjnj', 'TEXT', '2017-11-16 07:40:44'),
(2056, 53, 30, 'Bhbhb', 'TEXT', '2017-11-16 07:44:44'),
(2057, 53, 30, 'Jnjnjn', 'TEXT', '2017-11-16 07:44:53'),
(2058, 53, 30, 'Cfggv', 'TEXT', '2017-11-16 07:45:03'),
(2059, 53, 30, 'Bbj', 'TEXT', '2017-11-16 07:46:11'),
(2060, 53, 30, '  m ', 'TEXT', '2017-11-16 07:46:27'),
(2061, 53, 30, 'Mkmk', 'TEXT', '2017-11-16 07:46:31'),
(2062, 53, 30, 'Kmkmk', 'TEXT', '2017-11-16 07:46:35'),
(2063, 53, 30, 'Njnj', 'TEXT', '2017-11-16 07:46:39'),
(2064, 5, 26, 'fgh', 'TEXT', '2017-11-16 08:01:34'),
(2065, 5, 26, 'jjj', 'TEXT', '2017-11-16 08:04:28'),
(2066, 31, 30, 'hii', 'TEXT', '2017-11-16 08:55:57'),
(2067, 8, 59, 'Ehrherher', 'TEXT', '2017-11-16 09:00:04'),
(2068, 8, 59, 'u2122', 'TEXT', '2017-11-16 09:00:27'),
(2069, 8, 26, 'Nbvnbvnbv', 'TEXT', '2017-11-16 09:11:46'),
(2070, 8, 26, 'Hjkhjkhj', 'TEXT', '2017-11-16 09:12:32'),
(2071, 5, 26, 'Hi', 'TEXT', '2017-11-16 09:13:31'),
(2072, 5, 26, 'Hi', 'TEXT', '2017-11-16 09:13:41'),
(2073, 5, 26, 'Hi', 'TEXT', '2017-11-16 09:13:59'),
(2074, 8, 26, 'Hjkhjkhj', 'TEXT', '2017-11-16 09:14:34'),
(2075, 5, 26, ' Ui', 'TEXT', '2017-11-16 09:17:03'),
(2076, 8, 26, 'Ghjghj', 'TEXT', '2017-11-16 09:17:24'),
(2077, 8, 26, 'Kjlkj', 'TEXT', '2017-11-16 09:23:52'),
(2078, 5, 26, 'Hi', 'TEXT', '2017-11-16 09:26:00'),
(2079, 8, 26, 'Khjkjh', 'TEXT', '2017-11-16 09:26:36'),
(2080, 8, 26, 'Mn,nn', 'TEXT', '2017-11-16 09:27:06'),
(2081, 5, 26, 'Djokovic ', 'TEXT', '2017-11-16 09:28:38'),
(2082, 8, 26, 'Ghjghjgh', 'TEXT', '2017-11-16 09:29:14'),
(2083, 8, 26, 'Jghkhjkhj', 'TEXT', '2017-11-16 09:29:22'),
(2084, 8, 26, '\'', 'TEXT', '2017-11-16 09:30:10'),
(2085, 8, 26, 'Hgffhf', 'TEXT', '2017-11-16 09:30:12'),
(2086, 8, 26, ',hkhjkhjkhj', 'TEXT', '2017-11-16 09:35:53'),
(2087, 5, 26, 'Ghjj', 'TEXT', '2017-11-16 09:37:21'),
(2088, 8, 26, 'Nbmbb', 'TEXT', '2017-11-16 09:37:38'),
(2089, 8, 26, 'N,bmbnmbnmbnmb', 'TEXT', '2017-11-16 09:37:45'),
(2090, 8, 26, 'Jkljkljk', 'TEXT', '2017-11-16 09:38:26'),
(2091, 8, 26, 'Jkljkljk', 'TEXT', '2017-11-16 09:40:02'),
(2092, 8, 26, 'Ljklj', 'TEXT', '2017-11-16 09:40:11'),
(2093, 8, 26, 'Jkljklkjl', 'TEXT', '2017-11-16 09:40:23'),
(2094, 8, 26, 'Hjkhjkhj', 'TEXT', '2017-11-16 09:40:36'),
(2095, 31, 48, 'Ghgh', 'TEXT', '2017-11-16 09:43:21'),
(2096, 31, 48, 'Hii', 'TEXT', '2017-11-16 09:43:45'),
(2097, 8, 26, 'Hjkjhgkjhgkg', 'TEXT', '2017-11-16 09:44:56'),
(2098, 8, 26, '.,m.m,.m,.m,', 'TEXT', '2017-11-16 09:45:08'),
(2099, 8, 26, 'Dfghfghfg', 'TEXT', '2017-11-16 09:45:16'),
(2100, 5, 26, 'Fhhj', 'TEXT', '2017-11-16 09:45:52'),
(2101, 8, 26, 'Hjkhjgkgh', 'TEXT', '2017-11-16 09:47:14'),
(2102, 8, 26, 'Ghjghj', 'TEXT', '2017-11-16 09:47:24'),
(2103, 5, 26, 'Ghhh', 'TEXT', '2017-11-16 09:47:32'),
(2104, 8, 26, 'Hjhgjg', 'TEXT', '2017-11-16 09:47:41'),
(2105, 5, 26, 'Chhjj', 'TEXT', '2017-11-16 09:47:52'),
(2106, 5, 26, 'Hhhh', 'TEXT', '2017-11-16 09:47:58'),
(2107, 31, 48, 'Kooo', 'TEXT', '2017-11-16 09:49:11'),
(2108, 31, 30, 'Kkk', 'TEXT', '2017-11-16 09:49:20'),
(2109, 8, 26, 'Ghjghjghj', 'TEXT', '2017-11-16 09:49:27'),
(2110, 5, 26, 'Hi', 'TEXT', '2017-11-16 09:49:38'),
(2111, 5, 26, 'Icfipdhhd', 'TEXT', '2017-11-16 09:49:51'),
(2112, 8, 26, 'Jghjghjgh', 'TEXT', '2017-11-16 09:51:40'),
(2113, 8, 26, 'Gfhfghgf', 'TEXT', '2017-11-16 09:52:42'),
(2114, 8, 26, 'Vxcvcxvcx', 'TEXT', '2017-11-16 09:52:53'),
(2115, 8, 26, 'Hkjkhjkhj', 'TEXT', '2017-11-16 09:53:11'),
(2116, 5, 26, 'Vbbjj', 'TEXT', '2017-11-16 09:53:22'),
(2117, 8, 26, 'Jhgjghjgh', 'TEXT', '2017-11-16 09:53:33'),
(2118, 31, 30, 'Hii', 'TEXT', '2017-11-16 09:53:41'),
(2119, 5, 26, 'Vhhj', 'TEXT', '2017-11-16 09:53:43'),
(2120, 31, 30, 'Fgdf', 'TEXT', '2017-11-16 09:54:11'),
(2121, 31, 30, 'Hii', 'TEXT', '2017-11-16 09:54:36'),
(2122, 8, 26, 'Hfghfghgf', 'TEXT', '2017-11-16 09:56:20'),
(2123, 31, 30, 'Hh', 'TEXT', '2017-11-16 09:57:10'),
(2124, 31, 30, 'Hii', 'TEXT', '2017-11-16 09:58:05'),
(2125, 31, 30, 'Hii', 'TEXT', '2017-11-16 09:58:56'),
(2126, 31, 30, 'Hiii', 'TEXT', '2017-11-16 09:59:02'),
(2127, 8, 26, 'Ghjgjghjgh', 'TEXT', '2017-11-16 09:59:10'),
(2128, 31, 30, 'Hii', 'TEXT', '2017-11-16 09:59:13'),
(2129, 5, 26, 'Vbj', 'TEXT', '2017-11-16 09:59:29'),
(2130, 31, 30, 'Okkk', 'TEXT', '2017-11-16 09:59:38'),
(2131, 8, 26, 'Hjkhjkhjk', 'TEXT', '2017-11-16 10:00:04'),
(2132, 5, 26, 'Hiii', 'TEXT', '2017-11-16 10:00:17'),
(2133, 31, 30, 'Hii', 'TEXT', '2017-11-16 10:00:30'),
(2134, 31, 30, 'Hii', 'TEXT', '2017-11-16 10:00:38'),
(2135, 31, 30, 'Hjhjhj', 'TEXT', '2017-11-16 10:00:53'),
(2136, 31, 30, 'Okkk', 'TEXT', '2017-11-16 10:00:56'),
(2137, 31, 30, '22233', 'TEXT', '2017-11-16 10:01:21'),
(2138, 31, 30, 'Hiii', 'TEXT', '2017-11-16 10:02:06'),
(2139, 31, 48, 'Iii', 'TEXT', '2017-11-16 10:02:26'),
(2140, 31, 48, 'Hiii', 'TEXT', '2017-11-16 10:02:37'),
(2141, 31, 30, 'Qdqdqd', 'TEXT', '2017-11-16 10:03:18'),
(2142, 31, 30, 'Qdqdqd', 'TEXT', '2017-11-16 10:03:22'),
(2143, 74, 55, 'Wdqwdqwd', 'TEXT', '2017-11-16 10:04:09'),
(2144, 74, 55, 'Zacsacc', 'TEXT', '2017-11-16 10:04:16'),
(2145, 74, 55, 'Ddadad', 'TEXT', '2017-11-16 10:04:19'),
(2146, 74, 55, 'Adadad', 'TEXT', '2017-11-16 10:04:21'),
(2147, 8, 26, 'Jhfgjghjghjgh', 'TEXT', '2017-11-16 10:04:28'),
(2148, 72, 55, 'ufugug', 'TEXT', '2017-11-16 10:04:29'),
(2149, 5, 26, 'Gyyj', 'TEXT', '2017-11-16 10:04:41'),
(2150, 72, 55, 'chchfy', 'TEXT', '2017-11-16 10:04:43'),
(2151, 74, 55, 'Adsadsas', 'TEXT', '2017-11-16 10:04:45'),
(2152, 74, 55, 'Asasas', 'TEXT', '2017-11-16 10:04:48'),
(2153, 8, 26, 'Hfgfgjhghjgh', 'TEXT', '2017-11-16 10:04:52'),
(2154, 74, 55, 'SSssasasasasaad', 'TEXT', '2017-11-16 10:04:58'),
(2155, 74, 55, 'Dwdwd', 'TEXT', '2017-11-16 10:05:20'),
(2156, 5, 26, 'Ghji', 'TEXT', '2017-11-16 10:05:24'),
(2157, 74, 55, 'Aasasas', 'TEXT', '2017-11-16 10:05:27'),
(2158, 8, 26, 'Rgrgrg', 'TEXT', '2017-11-16 10:06:48'),
(2159, 8, 26, 'Dvdsvdvdv', 'TEXT', '2017-11-16 10:07:24'),
(2160, 8, 26, 'Dvdvdv', 'TEXT', '2017-11-16 10:07:30'),
(2161, 8, 26, 'Dvdvdv', 'TEXT', '2017-11-16 10:07:33'),
(2162, 8, 26, 'Dvdvdvd', 'TEXT', '2017-11-16 10:07:38'),
(2163, 8, 26, 'Dvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdvdv', 'TEXT', '2017-11-16 10:07:52'),
(2164, 8, 26, 'Dvdvdvdv', 'TEXT', '2017-11-16 10:07:55'),
(2165, 8, 26, 'Dvdvdv', 'TEXT', '2017-11-16 10:07:57'),
(2166, 8, 26, 'Dvdvdv', 'TEXT', '2017-11-16 10:07:59'),
(2167, 8, 26, 'Dvdvd', 'TEXT', '2017-11-16 10:08:01'),
(2168, 8, 26, 'Dvdvd', 'TEXT', '2017-11-16 10:08:02'),
(2169, 8, 26, 'Hnfhfhfh', 'TEXT', '2017-11-16 10:08:28'),
(2170, 8, 26, 'Ilulkylky', 'TEXT', '2017-11-16 10:08:43'),
(2171, 8, 26, 'Eefefefefefefef', 'TEXT', '2017-11-16 10:09:06'),
(2172, 31, 30, 'Dlghkdfl;k', 'TEXT', '2017-11-16 10:10:11'),
(2173, 31, 30, 'Dfgdfgdf', 'TEXT', '2017-11-16 10:10:25'),
(2174, 31, 30, 'Nmnbmnb', 'TEXT', '2017-11-16 10:10:40'),
(2175, 53, 30, 'Djsjdjks', 'TEXT', '2017-11-16 10:10:51'),
(2176, 53, 30, 'Hshdjdjd', 'TEXT', '2017-11-16 10:10:58'),
(2177, 31, 30, 'Khjkhkhj', 'TEXT', '2017-11-16 10:11:05'),
(2178, 31, 30, 'Hjkhkh', 'TEXT', '2017-11-16 10:11:36'),
(2179, 8, 26, 'Bhbhbh', 'TEXT', '2017-11-16 10:13:49'),
(2180, 8, 26, 'Dwdwdwd', 'TEXT', '2017-11-16 10:14:23'),
(2181, 8, 26, 'Dwdwdwdwd', 'TEXT', '2017-11-16 10:14:29'),
(2182, 8, 26, 'Wdwdwdwdw', 'TEXT', '2017-11-16 10:14:39'),
(2183, 8, 26, 'Ddwdwd', 'TEXT', '2017-11-16 10:14:42'),
(2184, 8, 26, 'Dwdwdwd', 'TEXT', '2017-11-16 10:14:43'),
(2185, 8, 26, 'Dwdwd', 'TEXT', '2017-11-16 10:14:44'),
(2186, 8, 26, 'Dwdwd', 'TEXT', '2017-11-16 10:14:46'),
(2187, 8, 49, 'Dwdwdwd', 'TEXT', '2017-11-16 10:14:50'),
(2188, 8, 49, 'Dwdwd', 'TEXT', '2017-11-16 10:14:52'),
(2189, 8, 49, 'Dwdwd', 'TEXT', '2017-11-16 10:14:54'),
(2190, 72, 53, 'kvkvjvuf', 'TEXT', '2017-11-16 10:15:06'),
(2191, 5, 53, 'n h h', 'TEXT', '2017-11-16 10:15:28'),
(2192, 5, 53, 'cnfn', 'TEXT', '2017-11-16 10:15:47'),
(2193, 5, 53, 'fjfj', 'TEXT', '2017-11-16 10:15:57'),
(2194, 5, 53, 'djfj', 'TEXT', '2017-11-16 10:16:03'),
(2195, 5, 53, 'dhrj', 'TEXT', '2017-11-16 10:16:12'),
(2196, 74, 55, 'Scscscsc', 'TEXT', '2017-11-16 10:17:13'),
(2197, 74, 55, 'Scscscsc', 'TEXT', '2017-11-16 10:17:16'),
(2198, 74, 55, 'Axaxxxxaxxxax', 'TEXT', '2017-11-16 10:17:36'),
(2199, 74, 55, 'Zxxzxzx', 'TEXT', '2017-11-16 10:17:39'),
(2200, 74, 55, 'Cdvfhhhfh', 'TEXT', '2017-11-16 10:17:43'),
(2201, 74, 55, 'Dqsasasas', 'TEXT', '2017-11-16 10:18:42'),
(2202, 74, 55, 'Fsfdfsf', 'TEXT', '2017-11-16 10:18:49'),
(2203, 8, 26, 'Njnjnj', 'TEXT', '2017-11-16 10:19:49'),
(2204, 8, 26, 'Mkmk', 'TEXT', '2017-11-16 10:20:09'),
(2205, 5, 48, 'vbbjj', 'TEXT', '2017-11-16 10:20:44'),
(2206, 5, 48, 'gbh', 'TEXT', '2017-11-16 10:21:01'),
(2207, 31, 49, 'Fgdghdghd', 'TEXT', '2017-11-16 10:28:25'),
(2208, 8, 49, 'Dhdjdjjdj', 'TEXT', '2017-11-16 10:28:51'),
(2209, 8, 49, 'Dhshdjdj', 'TEXT', '2017-11-16 10:28:56'),
(2210, 31, 49, 'Ggkg', 'TEXT', '2017-11-16 10:29:45'),
(2211, 8, 49, 'Xnxmxmxm', 'TEXT', '2017-11-16 10:29:51'),
(2212, 8, 49, 'Djsjdjks', 'TEXT', '2017-11-16 10:30:15'),
(2213, 31, 49, 'Tjgdjdjd', 'TEXT', '2017-11-16 10:30:30'),
(2214, 8, 49, 'Dhdjjdj', 'TEXT', '2017-11-16 10:31:05'),
(2215, 8, 49, 'Dhdjdjdj', 'TEXT', '2017-11-16 10:31:05'),
(2216, 8, 49, 'Gdgdgdg', 'TEXT', '2017-11-16 10:33:48'),
(2217, 8, 49, 'Djdjdjd', 'TEXT', '2017-11-16 10:33:50'),
(2218, 31, 49, 'jjji', 'TEXT', '2017-11-16 10:34:02'),
(2219, 31, 49, 'gghbcvbb', 'TEXT', '2017-11-16 10:34:14'),
(2220, 8, 49, 'Jfkfjt', 'TEXT', '2017-11-16 10:34:23'),
(2221, 31, 49, 'ttutfyuu1fvhuuhgfrcvvggg', 'TEXT', '2017-11-16 10:34:24'),
(2222, 8, 49, 'Fhdhrj', 'TEXT', '2017-11-16 10:34:29'),
(2223, 31, 49, 'gggg', 'TEXT', '2017-11-16 10:34:35'),
(2224, 31, 49, 'tgg', 'TEXT', '2017-11-16 10:34:39'),
(2225, 31, 49, 'gggggg', 'TEXT', '2017-11-16 10:34:49'),
(2226, 31, 49, 'Jkljkljkljk', 'TEXT', '2017-11-16 10:38:22'),
(2227, 8, 49, 'Shshshs', 'TEXT', '2017-11-16 10:38:46'),
(2228, 8, 26, 'Sjsjsjk', 'TEXT', '2017-11-16 10:39:00'),
(2229, 8, 26, 'Huh', 'TEXT', '2017-11-16 10:39:59'),
(2230, 31, 49, 'Jkljlj', 'TEXT', '2017-11-16 10:40:10'),
(2231, 8, 49, 'Dnbddjdj', 'TEXT', '2017-11-16 10:40:19'),
(2232, 8, 49, 'Yuii', 'TEXT', '2017-11-16 10:40:24'),
(2233, 8, 49, 'Hhjjk', 'TEXT', '2017-11-16 10:40:28'),
(2234, 8, 49, 'Hjmk', 'TEXT', '2017-11-16 10:40:30'),
(2235, 31, 49, 'Khjkhjkhjkhj', 'TEXT', '2017-11-16 10:41:44'),
(2236, 8, 49, 'Dvdvdv', 'TEXT', '2017-11-16 10:43:12'),
(2237, 8, 49, 'Dfdfdfdfdf', 'TEXT', '2017-11-16 10:43:17'),
(2238, 31, 49, 'Sdfdsfdsfdsfsdfdsfdff', 'TEXT', '2017-11-16 10:52:08'),
(2239, 31, 49, 'Ghjhgjhg', 'TEXT', '2017-11-16 11:02:34'),
(2240, 53, 30, 'Hello', 'TEXT', '2017-11-16 11:09:29'),
(2241, 53, 30, 'yes let known if you have any question', 'TEXT', '2017-11-16 11:09:45'),
(2242, 5, 26, 'Hddh', 'TEXT', '2017-11-16 11:36:55'),
(2243, 8, 26, 'Ghjghjgh', 'TEXT', '2017-11-16 11:37:37'),
(2244, 8, 26, 'Kjhkhjk', 'TEXT', '2017-11-16 11:38:07'),
(2245, 8, 26, 'Khjkh', 'TEXT', '2017-11-16 11:38:20'),
(2246, 4, 57, 'Hi', 'TEXT', '2017-11-16 11:41:36'),
(2247, 4, 57, 'There?', 'TEXT', '2017-11-16 11:41:47'),
(2248, 4, 58, 'Hi', 'TEXT', '2017-11-16 11:43:23'),
(2249, 4, 58, 'There', 'TEXT', '2017-11-16 11:44:07'),
(2250, 4, 58, 'Hi', 'TEXT', '2017-11-16 11:44:24'),
(2251, 2, 57, 'Hi', 'TEXT', '2017-11-16 11:44:41'),
(2252, 2, 57, 'There?', 'TEXT', '2017-11-16 11:44:46'),
(2253, 2, 57, 'Hi', 'TEXT', '2017-11-16 11:45:00'),
(2254, 2, 57, 'Hi', 'TEXT', '2017-11-16 11:45:15'),
(2255, 53, 58, 'xujf', 'TEXT', '2017-11-16 11:45:30'),
(2256, 53, 58, 'cjhc', 'TEXT', '2017-11-16 11:45:32'),
(2257, 8, 26, 'Czxcxzcxz', 'TEXT', '2017-11-16 11:46:19'),
(2258, 8, 26, ',mn,mn,mn', 'TEXT', '2017-11-16 11:46:29'),
(2259, 8, 26, 'Jklkjljk', 'TEXT', '2017-11-16 11:46:47'),
(2260, 8, 26, 'L;k;k;kl', 'TEXT', '2017-11-16 11:48:23'),
(2261, 8, 26, 'Ljkljk', 'TEXT', '2017-11-16 11:51:06'),
(2262, 5, 26, 'Djjdjdkd', 'TEXT', '2017-11-16 11:51:16'),
(2263, 8, 26, 'Hgfhfg', 'TEXT', '2017-11-16 11:51:27'),
(2264, 5, 26, 'Gdhshd', 'TEXT', '2017-11-16 11:51:33'),
(2265, 8, 26, 'Fhgfjgh', 'TEXT', '2017-11-16 11:51:37'),
(2266, 8, 26, 'Lk;k;lk', 'TEXT', '2017-11-16 11:52:39'),
(2267, 5, 26, 'Ddd', 'TEXT', '2017-11-16 11:52:47'),
(2268, 8, 26, 'Test', 'TEXT', '2017-11-16 11:52:55'),
(2269, 5, 26, 'Gvbh', 'TEXT', '2017-11-16 11:53:00'),
(2270, 5, 26, 'Hh', 'TEXT', '2017-11-16 11:53:02'),
(2271, 5, 26, 'Hh', 'TEXT', '2017-11-16 11:53:04'),
(2272, 5, 26, 'Fh', 'TEXT', '2017-11-16 11:53:07'),
(2273, 5, 26, 'Hui', 'TEXT', '2017-11-16 11:53:09'),
(2274, 4, 57, 'Hi', 'TEXT', '2017-11-16 11:53:38'),
(2275, 2, 57, 'hi', 'TEXT', '2017-11-16 11:53:46'),
(2276, 4, 57, 'Hi ', 'TEXT', '2017-11-16 11:53:52'),
(2277, 2, 57, 'hello', 'TEXT', '2017-11-16 11:53:57'),
(2278, 8, 26, 'Hjkhjk', 'TEXT', '2017-11-16 11:54:28'),
(2279, 8, 26, 'Bnmbnm', 'TEXT', '2017-11-16 11:54:36'),
(2280, 8, 26, 'Hjkhjkh', 'TEXT', '2017-11-16 11:55:25'),
(2281, 8, 26, 'Lkjlkj', 'TEXT', '2017-11-16 11:56:54'),
(2282, 8, 26, 'Hjkjhkhj', 'TEXT', '2017-11-16 12:00:16'),
(2283, 8, 26, 'Hjkhjk', 'TEXT', '2017-11-16 12:00:30'),
(2284, 5, 26, 'Dhdhdhdj', 'TEXT', '2017-11-16 12:03:05'),
(2285, 8, 26, 'Hjghjgh', 'TEXT', '2017-11-16 12:03:47'),
(2286, 5, 26, 'Dhehejejjrrjrjr', 'TEXT', '2017-11-16 12:04:02'),
(2287, 8, 26, 'Nmbm', 'TEXT', '2017-11-16 12:04:11'),
(2288, 8, 26, 'Ghjghjg', 'TEXT', '2017-11-16 12:07:55'),
(2289, 5, 26, 'Hahahah', 'TEXT', '2017-11-16 12:08:04'),
(2290, 5, 26, 'Bhagat', 'TEXT', '2017-11-16 12:08:21'),
(2291, 8, 26, 'Fhfghfg', 'TEXT', '2017-11-16 12:10:17'),
(2292, 5, 26, 'Djdjsjszvzbbs', 'TEXT', '2017-11-16 12:10:49'),
(2293, 5, 26, 'Ffh', 'TEXT', '2017-11-16 12:11:13'),
(2294, 5, 26, 'Hhjj', 'TEXT', '2017-11-16 12:13:46'),
(2295, 8, 26, 'M.,m,.m,.', 'TEXT', '2017-11-16 12:13:57'),
(2296, 5, 26, 'Shshshsj', 'TEXT', '2017-11-16 12:14:18'),
(2297, 8, 26, 'Kjlkjlkj', 'TEXT', '2017-11-16 12:15:07'),
(2298, 5, 26, 'Jjkkkkk', 'TEXT', '2017-11-16 12:15:23'),
(2299, 5, 26, 'Hhjjui', 'TEXT', '2017-11-16 12:15:26'),
(2300, 5, 26, 'Hhj', 'TEXT', '2017-11-16 12:15:27'),
(2301, 5, 26, ' Bh', 'TEXT', '2017-11-16 12:15:29'),
(2302, 5, 26, 'Ghj', 'TEXT', '2017-11-16 12:15:30'),
(2303, 5, 26, 'Sbsbs', 'TEXT', '2017-11-16 12:16:14'),
(2304, 8, 26, 'Jjj', 'TEXT', '2017-11-16 12:16:18'),
(2305, 8, 26, 'Hjkhjk', 'TEXT', '2017-11-16 12:16:43'),
(2306, 8, 26, 'Hjkhj', 'TEXT', '2017-11-16 12:16:46'),
(2307, 5, 26, 'Xbxnxnd', 'TEXT', '2017-11-16 12:16:52'),
(2308, 8, 26, 'Jkhkhj', 'TEXT', '2017-11-16 12:17:01'),
(2309, 5, 26, 'Dndndndm', 'TEXT', '2017-11-16 12:17:10'),
(2310, 5, 26, 'Djsjdj', 'TEXT', '2017-11-16 12:17:15'),
(2311, 8, 26, ',mn,mn,mn', 'TEXT', '2017-11-16 12:17:28'),
(2312, 8, 26, 'Mkhjkhj', 'TEXT', '2017-11-16 12:17:31'),
(2313, 8, 26, 'Jkhjk', 'TEXT', '2017-11-16 12:17:33'),
(2314, 8, 26, 'Khjkhj', 'TEXT', '2017-11-16 12:17:35'),
(2315, 5, 26, 'Zhzndn', 'TEXT', '2017-11-16 12:17:35'),
(2316, 5, 26, 'Shshs', 'TEXT', '2017-11-16 12:17:39'),
(2317, 5, 35, 'Zbsndn', 'TEXT', '2017-11-16 12:17:48'),
(2318, 5, 53, 'Sjsksk', 'TEXT', '2017-11-16 12:17:58'),
(2319, 8, 26, 'Ghjghjg', 'TEXT', '2017-11-16 12:21:14'),
(2320, 5, 26, 'Dhsjsjs', 'TEXT', '2017-11-16 12:21:20'),
(2321, 8, 26, 'Khjkhjkhjkhj', 'TEXT', '2017-11-16 12:22:08'),
(2322, 5, 26, 'Hi', 'TEXT', '2017-11-16 12:22:23'),
(2323, 8, 26, 'nn', 'TEXT', '2017-11-16 12:22:33'),
(2324, 8, 26, 'h h h', 'TEXT', '2017-11-16 12:22:37'),
(2325, 8, 26, 'Fghfgh', 'TEXT', '2017-11-16 12:24:42'),
(2326, 5, 26, 'Shsbsj', 'TEXT', '2017-11-16 12:24:50'),
(2327, 8, 26, 'Gfhfgh', 'TEXT', '2017-11-16 12:24:59'),
(2328, 8, 26, 'Jhkjhkh', 'TEXT', '2017-11-16 12:27:44'),
(2329, 5, 26, 'Ffc', 'TEXT', '2017-11-16 12:27:54'),
(2330, 8, 26, 'Hgfhfghgf', 'TEXT', '2017-11-16 12:27:55'),
(2331, 4, 57, 'Hi', 'TEXT', '2017-11-16 12:33:25'),
(2332, 4, 57, 'Hi ', 'TEXT', '2017-11-16 12:33:35'),
(2333, 4, 57, 'Hey', 'TEXT', '2017-11-16 12:33:52'),
(2334, 4, 57, 'Hi ', 'TEXT', '2017-11-16 12:34:01'),
(2335, 8, 26, 'Uiu', 'TEXT', '2017-11-16 12:34:36'),
(2336, 5, 26, 'Shhssn', 'TEXT', '2017-11-16 12:34:43'),
(2337, 8, 26, 'Ghuhg', 'TEXT', '2017-11-16 12:34:49'),
(2338, 8, 26, 'Gcfg', 'TEXT', '2017-11-16 12:37:47'),
(2339, 8, 26, 'Gdfgcfgfdd', 'TEXT', '2017-11-16 12:38:57'),
(2340, 66, 47, 'Hiii', 'TEXT', '2017-11-16 12:40:26'),
(2341, 66, 47, 'Gggg', 'TEXT', '2017-11-16 12:40:51'),
(2342, 5, 47, 'Snsndn', 'TEXT', '2017-11-16 12:41:09'),
(2343, 5, 48, 'Dhsnd', 'TEXT', '2017-11-16 12:41:22'),
(2344, 4, 57, 'Itu2019s ', 'TEXT', '2017-11-16 12:58:01'),
(2345, 5, 26, 'It\'s ', 'TEXT', '2017-11-16 13:01:27'),
(2346, 5, 26, 'It\'s ', 'TEXT', '2017-11-16 13:01:32'),
(2347, 2, 57, 'ggh', 'TEXT', '2017-11-16 13:01:53'),
(2348, 4, 57, 'ud83dude43ud83dude42', 'TEXT', '2017-11-16 13:26:12'),
(2349, 4, 57, 'Itu2019s good but itu2019s ', 'TEXT', '2017-11-16 13:28:54'),
(2350, 2, 57, 'hi', 'TEXT', '2017-11-16 13:33:45'),
(2351, 2, 57, 'hi', 'TEXT', '2017-11-16 13:34:41'),
(2352, 2, 57, 'dhdh', 'TEXT', '2017-11-16 13:34:56'),
(2353, 2, 57, 'hdhd', 'TEXT', '2017-11-16 13:36:16'),
(2354, 2, 57, 'fjh', 'TEXT', '2017-11-16 13:36:18'),
(2355, 2, 57, 'ryxbbx', 'TEXT', '2017-11-16 13:39:31'),
(2356, 2, 57, 'heheh', 'TEXT', '2017-11-16 13:39:52'),
(2357, 2, 57, 'fjfjf', 'TEXT', '2017-11-16 13:39:56'),
(2358, 4, 57, 'Chxn', 'TEXT', '2017-11-16 13:47:52'),
(2359, 4, 57, 'fhdhdd', 'TEXT', '2017-11-16 13:48:00'),
(2360, 2, 57, 'hddhh', 'TEXT', '2017-11-16 13:49:14'),
(2361, 4, 57, 'Its a fun ', 'TEXT', '2017-11-16 13:52:15'),
(2362, 4, 57, 'Itu2019s good but ', 'TEXT', '2017-11-16 13:52:21'),
(2363, 2, 57, 'dbdb', 'TEXT', '2017-11-16 13:54:04'),
(2364, 2, 57, 'xbzv', 'TEXT', '2017-11-16 13:54:07'),
(2365, 2, 57, 'dhhd', 'TEXT', '2017-11-16 13:54:23'),
(2366, 2, 57, 'dbdbd', 'TEXT', '2017-11-16 13:54:26'),
(2367, 2, 57, 'dhdhdh', 'TEXT', '2017-11-16 13:54:31'),
(2368, 2, 57, 'fbddfn', 'TEXT', '2017-11-16 13:54:35'),
(2369, 2, 57, 'nffbbf', 'TEXT', '2017-11-16 13:54:39'),
(2370, 4, 57, 'Dhddh', 'TEXT', '2017-11-16 13:54:51'),
(2371, 4, 57, 'Shhshsshdh', 'TEXT', '2017-11-16 13:55:04'),
(2372, 4, 57, 'Gadhsdhfj', 'TEXT', '2017-11-16 13:55:11'),
(2373, 8, 26, 'hiii', 'TEXT', '2017-11-16 14:25:28'),
(2374, 72, 53, 'Itu2019s ', 'TEXT', '2017-11-16 14:25:30'),
(2375, 72, 51, 'Hi', 'TEXT', '2017-11-16 14:25:56'),
(2376, 72, 51, 'Itu2019s ', 'TEXT', '2017-11-16 14:26:27'),
(2377, 2, 57, 'Hi', 'TEXT', '2017-11-16 22:25:32'),
(2378, 2, 57, 'There?', 'TEXT', '2017-11-16 22:25:37'),
(2379, 2, 57, 'Hi', 'TEXT', '2017-11-16 22:25:47'),
(2380, 2, 18, 'Hi', 'TEXT', '2017-11-16 22:27:02'),
(2381, 2, 57, 'Hi', 'TEXT', '2017-11-16 22:48:59'),
(2382, 2, 57, 'Hi', 'TEXT', '2017-11-16 22:49:21'),
(2383, 2, 57, 'There?', 'TEXT', '2017-11-16 22:49:24'),
(2384, 2, 18, 'Hi', 'TEXT', '2017-11-16 22:49:31'),
(2385, 31, 18, 'Hi', 'TEXT', '2017-11-16 22:49:37'),
(2386, 2, 18, 'Oji', 'TEXT', '2017-11-16 22:49:39'),
(2387, 2, 18, 'Jlj', 'TEXT', '2017-11-16 22:49:40'),
(2388, 2, 18, 'Hgh', 'TEXT', '2017-11-16 22:50:05'),
(2389, 2, 18, 'Kjhj', 'TEXT', '2017-11-16 22:50:08'),
(2390, 31, 18, 'Hi', 'TEXT', '2017-11-16 23:20:26'),
(2391, 31, 18, 'uploads/messages/8919c6153154d3b0d8cebb2851f518e6.jpg', 'FILE', '2017-11-16 23:20:54'),
(2392, 2, 18, 'nice home', 'TEXT', '2017-11-16 23:21:08'),
(2393, 2, 18, 'thanks', 'TEXT', '2017-11-16 23:21:14'),
(2394, 2, 18, 'thanks', 'TEXT', '2017-11-16 23:21:23'),
(2395, 2, 18, 'hi', 'TEXT', '2017-11-16 23:21:30'),
(2396, 2, 18, 'thanks', 'TEXT', '2017-11-16 23:21:41'),
(2397, 2, 18, 'hi', 'TEXT', '2017-11-16 23:22:05'),
(2398, 31, 18, 'Yes', 'TEXT', '2017-11-16 23:22:08'),
(2399, 31, 18, 'There', 'TEXT', '2017-11-16 23:22:08'),
(2400, 31, 18, 'Hi', 'TEXT', '2017-11-16 23:22:11'),
(2401, 31, 18, 'Yes', 'TEXT', '2017-11-16 23:22:15'),
(2402, 2, 18, 'hi', 'TEXT', '2017-11-16 23:22:24'),
(2403, 31, 18, 'Ok', 'TEXT', '2017-11-16 23:22:29'),
(2404, 31, 18, 'There', 'TEXT', '2017-11-16 23:22:33'),
(2405, 2, 18, 'yo es', 'TEXT', '2017-11-16 23:22:37'),
(2406, 31, 18, 'What', 'TEXT', '2017-11-16 23:22:44'),
(2407, 2, 18, 'yes', 'TEXT', '2017-11-16 23:22:46'),
(2408, 2, 18, 'ok', 'TEXT', '2017-11-16 23:22:48'),
(2409, 31, 18, 'Good ', 'TEXT', '2017-11-16 23:22:52'),
(2410, 2, 57, 'hi', 'TEXT', '2017-11-16 23:56:02'),
(2411, 2, 18, 'hi', 'TEXT', '2017-11-16 23:56:12'),
(2412, 2, 57, 'hey', 'TEXT', '2017-11-16 23:56:27'),
(2413, 2, 18, 'uD83DuDE01uD83DuDE01', 'TEXT', '2017-11-17 00:13:11'),
(2414, 2, 18, 'it\'s', 'TEXT', '2017-11-17 00:13:59'),
(2415, 2, 18, 'uD83DuDE01uD83DuDE01', 'TEXT', '2017-11-17 00:14:04'),
(2416, 31, 18, 'Itu2019s ', 'TEXT', '2017-11-17 00:14:26'),
(2417, 31, 18, 'ud83dude00ud83dude00', 'TEXT', '2017-11-17 00:14:46'),
(2418, 31, 18, 'Hi ud83dude07ud83dude07ud83dude07', 'TEXT', '2017-11-17 00:49:15'),
(2419, 31, 18, 'ud83dude0d', 'TEXT', '2017-11-17 01:02:40'),
(2420, 31, 18, 'ud83dude43ud83dude43', 'TEXT', '2017-11-17 01:09:11'),
(2421, 31, 18, 'ud83dude31', 'TEXT', '2017-11-17 01:17:15'),
(2422, 31, 18, 'ud83eudd17', 'TEXT', '2017-11-17 01:17:15'),
(2423, 31, 18, ' Hu', 'TEXT', '2017-11-17 01:17:18'),
(2424, 31, 18, 'ud83dude07', 'TEXT', '2017-11-17 01:17:21'),
(2425, 31, 18, '\\ud83d\\ude0a', 'TEXT', '2017-11-17 01:24:01'),
(2426, 31, 18, 'Itu2019s ', 'TEXT', '2017-11-17 01:24:49'),
(2427, 31, 18, 'ud83dude31', 'TEXT', '2017-11-17 01:26:40'),
(2428, 4, 57, 'Its ', 'TEXT', '2017-11-17 01:58:55'),
(2429, 2, 57, 'Frfr', 'TEXT', '2017-11-17 02:03:31'),
(2430, 2, 57, 'Edee', 'TEXT', '2017-11-17 02:03:34'),
(2431, 2, 51, 'Dede', 'TEXT', '2017-11-17 02:03:36'),
(2432, 4, 57, ' Hi', 'TEXT', '2017-11-17 02:04:40'),
(2433, 4, 57, '\\ud83d\\ude06', 'TEXT', '2017-11-17 02:05:19'),
(2434, 4, 57, ' ud83dude31', 'TEXT', '2017-11-17 02:07:31'),
(2435, 4, 57, 'ud83dudc9c', 'TEXT', '2017-11-17 02:08:47'),
(2436, 4, 57, 'ud83dude07', 'TEXT', '2017-11-17 02:12:46'),
(2437, 4, 57, 'Gyyu', 'TEXT', '2017-11-17 02:12:53'),
(2438, 2, 57, 'fg', 'TEXT', '2017-11-17 02:12:58'),
(2439, 2, 57, 'hhghyyu', 'TEXT', '2017-11-17 02:13:00'),
(2440, 4, 57, 'Yuuuuuu', 'TEXT', '2017-11-17 02:13:00'),
(2441, 2, 57, 'oo', 'TEXT', '2017-11-17 02:13:01'),
(2442, 4, 57, 'Jju', 'TEXT', '2017-11-17 02:13:02'),
(2443, 4, 57, 'Hj', 'TEXT', '2017-11-17 02:13:02'),
(2444, 4, 57, 'Hj', 'TEXT', '2017-11-17 02:13:03'),
(2445, 2, 57, 'jio', 'TEXT', '2017-11-17 02:13:03'),
(2446, 4, 57, 'J', 'TEXT', '2017-11-17 02:13:03'),
(2447, 2, 57, 'o', 'TEXT', '2017-11-17 02:13:04'),
(2448, 4, 57, 'J', 'TEXT', '2017-11-17 02:13:04'),
(2449, 4, 57, 'J', 'TEXT', '2017-11-17 02:13:05'),
(2450, 2, 57, 'o', 'TEXT', '2017-11-17 02:13:05'),
(2451, 4, 57, 'J', 'TEXT', '2017-11-17 02:13:06'),
(2452, 2, 57, 'o', 'TEXT', '2017-11-17 02:13:06'),
(2453, 2, 57, 'uu', 'TEXT', '2017-11-17 02:13:10'),
(2454, 2, 57, 'to t', 'TEXT', '2017-11-17 02:13:15'),
(2455, 2, 57, 'yy', 'TEXT', '2017-11-17 02:13:23'),
(2456, 2, 57, 'uurrr', 'TEXT', '2017-11-17 02:13:26'),
(2457, 31, 18, 'Gh', 'TEXT', '2017-11-17 02:14:35'),
(2458, 2, 57, 'vv', 'TEXT', '2017-11-17 02:14:45'),
(2459, 2, 57, 'oii', 'TEXT', '2017-11-17 02:14:47'),
(2460, 2, 18, 'cvff', 'TEXT', '2017-11-17 02:15:12'),
(2461, 66, 47, 'Hu', 'TEXT', '2017-11-17 03:06:09'),
(2462, 8, 26, 'Hii', 'TEXT', '2017-11-17 04:28:31'),
(2463, 5, 26, 'Hiii', 'TEXT', '2017-11-17 04:28:53'),
(2464, 8, 26, 'Ghjghjgh', 'TEXT', '2017-11-17 04:28:59'),
(2465, 8, 26, 'Fghfg', 'TEXT', '2017-11-17 04:31:51'),
(2466, 5, 26, 'Hiii', 'TEXT', '2017-11-17 04:32:40'),
(2467, 8, 26, 'Hiii', 'TEXT', '2017-11-17 04:32:47'),
(2468, 8, 26, 'Hhjhj', 'TEXT', '2017-11-17 04:33:59'),
(2469, 8, 26, 'Hjhjhj', 'TEXT', '2017-11-17 04:34:02'),
(2470, 74, 55, 'Wdsdsds', 'TEXT', '2017-11-17 04:34:58'),
(2471, 74, 55, 'J,j,j,j,', 'TEXT', '2017-11-17 04:35:07'),
(2472, 8, 26, 'Ghghg', 'TEXT', '2017-11-17 04:35:15'),
(2473, 74, 55, 'Tghthth', 'TEXT', '2017-11-17 04:35:23'),
(2474, 8, 26, 'Hii', 'TEXT', '2017-11-17 04:35:33'),
(2475, 8, 26, 'Jhgjhg', 'TEXT', '2017-11-17 04:35:38'),
(2476, 8, 26, 'Hiii', 'TEXT', '2017-11-17 04:36:24'),
(2477, 8, 26, 'Jgjg', 'TEXT', '2017-11-17 04:39:38'),
(2478, 8, 26, 'Ghjjgh', 'TEXT', '2017-11-17 04:40:13'),
(2479, 8, 26, 'Ghjhg', 'TEXT', '2017-11-17 04:40:30'),
(2480, 8, 26, 'Fghgf', 'TEXT', '2017-11-17 04:40:48'),
(2481, 74, 55, 'Gjgjgj', 'TEXT', '2017-11-17 04:42:00'),
(2482, 74, 55, 'Mkmkm', 'TEXT', '2017-11-17 04:42:09'),
(2483, 72, 55, 'xbx x', 'TEXT', '2017-11-17 04:42:20'),
(2484, 74, 55, 'Wdwdwd', 'TEXT', '2017-11-17 04:52:50'),
(2485, 5, 35, 'ud83dude0cud83dude01', 'TEXT', '2017-11-17 04:57:26'),
(2486, 74, 55, 'Ghghgh', 'TEXT', '2017-11-17 05:31:26'),
(2487, 74, 55, 'Nnmnm', 'TEXT', '2017-11-17 05:31:33'),
(2488, 2, 57, 'Hi', 'TEXT', '2017-11-17 05:32:54'),
(2489, 2, 57, 'G', 'TEXT', '2017-11-17 05:33:01'),
(2490, 72, 55, 'uD83DuDC0EuD83EuDD8D', 'TEXT', '2017-11-17 05:34:02'),
(2491, 72, 55, 'uD83DuDC12', 'TEXT', '2017-11-17 05:34:25'),
(2492, 72, 55, 'uD83EuDD81', 'TEXT', '2017-11-17 05:35:03'),
(2493, 72, 55, '/', 'TEXT', '2017-11-17 05:38:47'),
(2494, 72, 55, '\'\\', 'TEXT', '2017-11-17 05:38:56'),
(2495, 72, 55, '\\', 'TEXT', '2017-11-17 05:39:02'),
(2496, 74, 55, 'Hshs', 'TEXT', '2017-11-17 05:39:16'),
(2497, 74, 55, 'Knksnk', 'TEXT', '2017-11-17 05:39:25'),
(2498, 74, 55, 'Efndfnskjnf', 'TEXT', '2017-11-17 05:39:34'),
(2499, 74, 55, 'Ssdsd', 'TEXT', '2017-11-17 05:39:45'),
(2500, 74, 55, 'Dssdsd', 'TEXT', '2017-11-17 05:39:49'),
(2501, 74, 55, 'Sdsdsd', 'TEXT', '2017-11-17 05:39:51'),
(2502, 72, 55, 'efg', 'TEXT', '2017-11-17 05:40:36'),
(2503, 74, 55, 'Ddf', 'TEXT', '2017-11-17 05:40:37'),
(2504, 74, 55, 'Fdsfdsf', 'TEXT', '2017-11-17 05:40:40'),
(2505, 74, 55, 'Ilili', 'TEXT', '2017-11-17 05:42:53'),
(2506, 2, 57, 'Hello \\ud83d\\ude0a', 'TEXT', '2017-11-17 06:10:40'),
(2507, 2, 57, 'Itu2019s ', 'TEXT', '2017-11-17 06:13:39'),
(2508, 2, 57, 'Itu2019s ', 'TEXT', '2017-11-17 06:14:31'),
(2509, 2, 57, 'it\'s', 'TEXT', '2017-11-17 06:14:42'),
(2510, 2, 57, '\\ud83d\\ude0c', 'TEXT', '2017-11-17 06:15:44'),
(2511, 2, 57, 'ud83dude0c', 'TEXT', '2017-11-17 06:15:08'),
(2512, 2, 57, 'Itu2019s ', 'TEXT', '2017-11-17 06:15:55'),
(2513, 2, 57, 'it\'s', 'TEXT', '2017-11-17 06:16:01'),
(2514, 2, 57, '\\uD83D\\uDE01', 'TEXT', '2017-11-17 06:17:58'),
(2515, 2, 57, 'it\'s', 'TEXT', '2017-11-17 06:18:18'),
(2516, 2, 57, 'Itu2019s ', 'TEXT', '2017-11-17 06:18:31'),
(2517, 5, 53, 'uD83DuDC0E', 'TEXT', '2017-11-17 06:18:38'),
(2518, 5, 53, 'I\'m', 'TEXT', '2017-11-17 06:20:54'),
(2519, 72, 55, 'I\'m', 'TEXT', '2017-11-17 06:23:25'),
(2520, 72, 55, 'I\'m', 'TEXT', '2017-11-17 06:26:03'),
(2521, 72, 55, 'uD83DuDC0E', 'TEXT', '2017-11-17 06:26:29'),
(2522, 72, 55, 'uD83DuDE02', 'TEXT', '2017-11-17 06:28:07'),
(2523, 72, 55, 'I\'m', 'TEXT', '2017-11-17 06:28:43'),
(2524, 74, 55, 'I\'m', 'TEXT', '2017-11-17 06:33:26'),
(2525, 74, 55, '????', 'TEXT', '2017-11-17 06:33:43'),
(2526, 72, 55, 'uD83DuDE19', 'TEXT', '2017-11-17 06:35:05'),
(2527, 72, 55, '\\u', 'TEXT', '2017-11-17 06:36:07'),
(2528, 74, 55, 'u', 'TEXT', '2017-11-17 06:38:00'),
(2529, 74, 55, '????', 'TEXT', '2017-11-17 06:40:39'),
(2530, 72, 55, 'uD83DuDE0A', 'TEXT', '2017-11-17 06:41:16'),
(2531, 74, 55, 'Hii', 'TEXT', '2017-11-17 06:43:32'),
(2532, 74, 55, 'Hii', 'TEXT', '2017-11-17 06:43:48'),
(2533, 74, 55, 'Fbfb', 'TEXT', '2017-11-17 06:45:06'),
(2534, 74, 55, 'Dvdvd', 'TEXT', '2017-11-17 06:45:10'),
(2535, 74, 55, 'Fbfbf', 'TEXT', '2017-11-17 06:45:14'),
(2536, 74, 55, 'Gdgdg', 'TEXT', '2017-11-17 06:45:40'),
(2537, 74, 55, 'Rgrgr', 'TEXT', '2017-11-17 06:45:44'),
(2538, 74, 55, 'Rgrg', 'TEXT', '2017-11-17 06:45:52'),
(2539, 74, 55, 'Gh', 'TEXT', '2017-11-17 06:46:29'),
(2540, 72, 55, 'uD83DuDE01', 'TEXT', '2017-11-17 06:47:11'),
(2541, 74, 55, '????????????????????????????', 'TEXT', '2017-11-17 06:47:26'),
(2542, 74, 55, '????', 'TEXT', '2017-11-17 06:47:46'),
(2543, 72, 55, 'uD83DuDE02', 'TEXT', '2017-11-17 06:49:04'),
(2544, 74, 55, 'I\'आम', 'TEXT', '2017-11-17 06:49:15'),
(2545, 72, 55, 'I\'m', 'TEXT', '2017-11-17 06:49:17'),
(2546, 74, 55, 'I\'a\n', 'TEXT', '2017-11-17 06:49:45'),
(2547, 2, 57, ' Itu2019s ', 'TEXT', '2017-11-17 06:50:27'),
(2548, 74, 55, 'I\'am', 'TEXT', '2017-11-17 06:50:27'),
(2549, 74, 55, '????', 'TEXT', '2017-11-17 06:50:33'),
(2550, 74, 55, 'I\'am', 'TEXT', '2017-11-17 06:51:25'),
(2551, 72, 55, 'I\'m', 'TEXT', '2017-11-17 06:51:31'),
(2552, 72, 55, 'uD83DuDE01', 'TEXT', '2017-11-17 06:51:54'),
(2553, 74, 55, '????', 'TEXT', '2017-11-17 06:52:03'),
(2554, 72, 55, 'I in\njjnj\n\n\n\n\n\n\n\n\n\nin', 'TEXT', '2017-11-17 06:54:17'),
(2555, 2, 57, 'it', 'TEXT', '2017-11-17 06:55:34'),
(2556, 2, 57, 'it\'s', 'TEXT', '2017-11-17 06:55:36'),
(2557, 74, 55, 'Znnsnxdnjdjsdjjdjshsjd। bjkkvbnvvhjjikkkkkk', 'TEXT', '2017-11-17 07:07:17'),
(2558, 74, 55, '????????', 'TEXT', '2017-11-17 07:07:38'),
(2559, 74, 55, '✌????????????????', 'TEXT', '2017-11-17 07:09:09'),
(2560, 74, 55, '????????????????????????????????????????????????????????????????', 'TEXT', '2017-11-17 07:09:44'),
(2561, 72, 55, 'uD83DuDE0Du270B', 'TEXT', '2017-11-17 07:14:18'),
(2562, 72, 55, 'u270B', 'TEXT', '2017-11-17 07:14:25'),
(2563, 74, 55, 'Hello', 'TEXT', '2017-11-17 07:15:34'),
(2564, 4, 57, 'Itu2019s good to have the same ', 'TEXT', '2017-11-17 07:23:38'),
(2565, 4, 57, 'Hi good morning darling I', 'TEXT', '2017-11-17 07:23:49'),
(2566, 4, 57, 'It’s ', 'TEXT', '2017-11-17 07:52:44'),
(2567, 4, 57, 'Good', 'TEXT', '2017-11-17 07:52:47'),
(2568, 2, 57, 'hi', 'TEXT', '2017-11-17 07:54:27'),
(2569, 2, 57, 'up to', 'TEXT', '2017-11-17 07:54:34'),
(2570, 2, 57, 'hi', 'TEXT', '2017-11-17 07:57:23'),
(2571, 2, 57, 'hi', 'TEXT', '2017-11-17 07:57:34'),
(2572, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:49:50'),
(2573, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:50:01'),
(2574, 5, 53, 'Jii', 'TEXT', '2017-11-17 08:50:16'),
(2575, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:50:58'),
(2576, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:51:10'),
(2577, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:51:21'),
(2578, 5, 53, 'Hh', 'TEXT', '2017-11-17 08:51:29'),
(2579, 5, 53, 'Hii', 'TEXT', '2017-11-17 08:51:48'),
(2580, 5, 53, 'Jii', 'TEXT', '2017-11-17 08:52:03'),
(2581, 5, 53, 'Khkhkkhkhkhkkkk', 'TEXT', '2017-11-17 08:52:11'),
(2582, 5, 53, 'Opopopopopop', 'TEXT', '2017-11-17 08:53:10'),
(2583, 5, 53, 'Hhh', 'TEXT', '2017-11-17 08:55:25'),
(2584, 72, 53, 'bnjgjyjjbmj', 'TEXT', '2017-11-17 08:57:58'),
(2585, 72, 51, 'bu', 'TEXT', '2017-11-17 08:58:15'),
(2586, 5, 53, 'Mmmmjjj', 'TEXT', '2017-11-17 09:00:50'),
(2587, 5, 53, 'Hhh', 'TEXT', '2017-11-17 09:07:38'),
(2588, 5, 53, 'Hhhhh', 'TEXT', '2017-11-17 09:07:38'),
(2589, 5, 53, 'Hii', 'TEXT', '2017-11-17 09:07:59'),
(2590, 8, 32, 'Fffccfffff', 'TEXT', '2017-11-17 09:09:34'),
(2591, 8, 26, 'द्द्द्द्द्द', 'TEXT', '2017-11-17 09:09:51'),
(2592, 5, 53, 'Hii', 'TEXT', '2017-11-17 09:11:48'),
(2593, 5, 53, 'Hii', 'TEXT', '2017-11-17 09:11:57'),
(2594, 5, 53, 'Jj', 'TEXT', '2017-11-17 09:12:06'),
(2595, 5, 53, 'Jj', 'TEXT', '2017-11-17 09:12:13'),
(2596, 5, 53, 'Kk', 'TEXT', '2017-11-17 09:12:21'),
(2597, 5, 53, 'Jj', 'TEXT', '2017-11-17 09:12:26'),
(2598, 5, 53, 'Hhh', 'TEXT', '2017-11-17 09:12:33'),
(2599, 5, 53, 'Ggggg', 'TEXT', '2017-11-17 09:12:55'),
(2600, 72, 53, 'bnnnnm', 'TEXT', '2017-11-17 09:13:24'),
(2601, 5, 53, 'Gggg', 'TEXT', '2017-11-17 09:13:36'),
(2602, 72, 55, 'hhh', 'TEXT', '2017-11-17 09:14:10'),
(2603, 5, 53, 'Hiii', 'TEXT', '2017-11-17 09:16:35'),
(2604, 5, 53, 'Hhhhhhhhhhhh', 'TEXT', '2017-11-17 09:16:45'),
(2605, 5, 53, 'H', 'TEXT', '2017-11-17 09:18:46'),
(2606, 5, 53, 'Jjjjjjjj', 'TEXT', '2017-11-17 09:18:54'),
(2607, 72, 51, 'hujjhh', 'TEXT', '2017-11-17 09:19:06'),
(2608, 72, 53, 'jjjjjmm', 'TEXT', '2017-11-17 09:19:24'),
(2609, 5, 53, 'Jj', 'TEXT', '2017-11-17 09:19:32'),
(2610, 72, 53, 'vbbn', 'TEXT', '2017-11-17 09:19:34'),
(2611, 5, 53, 'Lll', 'TEXT', '2017-11-17 09:19:35'),
(2612, 5, 53, 'Hii', 'TEXT', '2017-11-17 09:20:00'),
(2613, 72, 53, 'jjjjj', 'TEXT', '2017-11-17 09:20:19'),
(2614, 5, 53, 'Hhh', 'TEXT', '2017-11-17 09:20:21'),
(2615, 5, 48, 'Hii', 'TEXT', '2017-11-17 12:16:22'),
(2616, 31, 48, 'gghhh', 'TEXT', '2017-11-17 12:16:41'),
(2617, 5, 48, 'Hhh', 'TEXT', '2017-11-17 12:16:47'),
(2618, 5, 48, 'Jhjhj', 'TEXT', '2017-11-17 12:16:53'),
(2619, 53, 30, 'hi', 'TEXT', '2017-11-18 00:12:47'),
(2620, 31, 30, 'hi', 'TEXT', '2017-11-18 00:12:54'),
(2621, 55, 62, 'Hello', 'TEXT', '2017-11-18 02:01:56'),
(2622, 55, 62, 'There?', 'TEXT', '2017-11-18 02:07:27'),
(2623, 56, 62, 'Yes', 'TEXT', '2017-11-18 02:11:52'),
(2624, 2, 57, 'Hi', 'TEXT', '2017-11-19 06:32:40'),
(2625, 3, 54, 'Hello george', 'TEXT', '2017-11-20 17:50:39'),
(2626, 3, 54, 'Isn’t this good?', 'TEXT', '2017-11-20 18:05:53'),
(2627, 4, 57, 'It’s been long time', 'TEXT', '2017-11-20 18:06:09'),
(2628, 4, 57, '????', 'TEXT', '2017-11-20 18:06:12'),
(2629, 2, 57, 'Ok', 'TEXT', '2017-11-21 18:44:52'),
(2630, 4, 57, 'There?', 'TEXT', '2017-11-21 18:45:51'),
(2631, 4, 57, 'How are you?', 'TEXT', '2017-11-21 18:45:55'),
(2632, 4, 57, 'Hi', 'TEXT', '2017-11-21 18:46:09'),
(2633, 4, 57, 'Ok', 'TEXT', '2017-11-21 18:46:23'),
(2634, 4, 57, 'Hi', 'TEXT', '2017-11-21 18:47:07'),
(2635, 4, 57, 'Hi', 'TEXT', '2017-11-21 18:47:14'),
(2636, 4, 57, 'There', 'TEXT', '2017-11-21 18:47:45'),
(2637, 4, 57, 'Hi', 'TEXT', '2017-11-21 18:48:07'),
(2638, 4, 57, 'Jkkj', 'TEXT', '2017-11-21 18:48:15'),
(2639, 4, 57, 'Kj', 'TEXT', '2017-11-21 18:48:18'),
(2640, 5, 47, '213', 'TEXT', '2017-11-25 04:50:47'),
(2641, 5, 47, '32312', 'TEXT', '2017-11-25 04:50:49'),
(2642, 5, 35, '123', 'TEXT', '2017-11-25 04:50:58'),
(2643, 5, 35, '123123', 'TEXT', '2017-11-25 04:51:00'),
(2644, 5, 26, 'Fhghghghghghhfgh', 'TEXT', '2017-11-27 11:11:47'),
(2645, 5, 26, 'Yuyuyuyu', 'TEXT', '2017-11-28 06:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `eb_chat_unread_message_counter`
--

CREATE TABLE `eb_chat_unread_message_counter` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_chat_unread_message_counter`
--

INSERT INTO `eb_chat_unread_message_counter` (`message_id`, `chat_id`, `user_id`, `counter`) VALUES
(22, 7, 9, 4),
(24, 8, 9, 0),
(44, 9, 9, 4),
(53, 12, 15, 1),
(55, 16, 15, 1),
(75, 3, 8, 0),
(76, 3, 5, 0),
(77, 23, 8, 1),
(78, 23, 5, 0),
(79, 24, 8, 0),
(82, 24, 5, 0),
(83, 25, 8, 1),
(84, 25, 5, 0),
(209, 22, 3, 1),
(252, 4, 2, 0),
(344, 50, 1, 2),
(476, 21, 44, 2),
(604, 21, 2, 0),
(620, 5, 1, 2),
(759, 52, 66, 0),
(777, 5, 4, 1),
(778, 16, 4, 0),
(781, 28, 5, 0),
(782, 28, 4, 0),
(977, 58, 53, 0),
(1096, 18, 2, 0),
(1203, 55, 72, 0),
(1204, 55, 74, 0),
(1207, 51, 72, 0),
(1210, 53, 72, 0),
(1216, 30, 31, 0),
(1219, 62, 55, 0),
(1220, 62, 56, 0),
(1232, 47, 66, 2),
(1234, 35, 1, 2),
(1237, 26, 5, 0),
(1238, 26, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eb_contact`
--

CREATE TABLE `eb_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_query` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_contact`
--

INSERT INTO `eb_contact` (`contact_id`, `contact_email`, `contact_query`, `created_on`, `del_in`) VALUES
(1, 'piyushkachariya111@gmail.com', 'testing contact us now', '2017-10-04 23:50:31', 0),
(2, 'cd.sparkle001@gmail.com', 'weftreg', '2017-10-05 05:45:46', 0),
(3, 'cd.sparkle001@gmail.com', 'tyjtuykj', '2017-10-05 05:47:14', 0),
(4, 'cd.sparkle001@gmail.com', 'hey this 222', '2017-10-05 05:50:59', 0),
(5, 'cd.sparkle001@gmail.com', 'hey this 333', '2017-10-05 05:51:24', 0),
(6, 'tet@c.com', 'Test', '2017-10-05 21:41:47', 0),
(7, 'test@c.com', 'test', '2017-10-05 21:42:11', 0),
(8, 'cd.sparkle001@gmail.com', 'hello good morning', '2017-10-09 04:21:27', 0),
(9, 'cd.sparkle001@gmail.com', 'hey thee', '2017-10-09 04:47:33', 0),
(10, 'cd.sparkle001@gmail.com', 'qwfwe', '2017-10-09 04:49:10', 0),
(11, 'chaitanya21093@gmail.com', 'hey there i having some disffculty', '2017-10-09 04:57:38', 0),
(12, 'ds.sparkle018@gmail.com', 'test mail', '2017-10-09 06:27:13', 0),
(13, 'kp@gmail.com', 'test\n', '2017-10-09 17:16:56', 0),
(14, 'Test@t.com', 'Test', '2017-10-11 16:37:02', 0),
(15, 'kp@gmail.com', 'testing', '2017-10-11 18:24:11', 0),
(16, 'piyushkachariya111@gmail.com', 'Test you one more.\n\nThank you.', '2017-10-11 19:09:05', 0),
(17, 'kp@gmail.com', 'Thank you', '2017-10-11 19:09:41', 0),
(18, 'chaitanya21093@gmail.com', 'Lorem ipsum dolor sit amet, id nominati inimicus vis, vis ad etiam epicurei. Mel eu vivendo liberavisse, tation fastidii postulant sea ne, quo graeci vivendum mediocritatem ea. Vocent placerat partiendo eum in, ullum maiorum commune per no. Ei timeam commodo nec, eu mei consul adipisci. At sit odio rationibus moderatius, duis semper placerat pri et, pro reque temporibus te. Cu probo deserunt sed, et sumo probatus nam.\n\nDuo cu alia neglegentur. Est ei molestiae rationibus, ut nisl postea possim pri. Ceteros postulant ex cum, mea eius probo menandri ei. Nam saepe ponderum ne. Stet unum mollis vis te, at molestie forensibus eum.', '2017-10-12 07:02:59', 0),
(19, 'chaitanya21093@gmail.com', 'Lorem ipsum dolor sit amet, id nominati inimicus vis, vis ad etiam epicurei. Mel eu vivendo liberavisse, tation fastidii postulant sea ne, quo graeci vivendum mediocritatem ea. Vocent placerat partiendo eum in, ullum maiorum commune per no. Ei timeam commodo nec, eu mei consul adipisci. At sit odio rationibus moderatius, duis semper placerat pri et, pro reque temporibus te. Cu probo deserunt sed, et sumo probatus nam.\n\nDuo cu alia neglegentur. Est ei molestiae rationibus, ut nisl postea possim pri. Ceteros postulant ex cum, mea eius probo menandri ei. Nam saepe ponderum ne. Stet unum mollis vis te, at molestie forensibus eum.', '2017-10-12 07:05:48', 0),
(20, 'testing@gmail.com', 'Hello Friends, How are you?\n\nI am doing well. & you?\n\nThank you', '2017-10-12 22:58:47', 0),
(21, 'ds.sparkle018@gmail.com', 'test mail is here', '2017-10-13 08:51:38', 0),
(22, 'cd.sparkle001@gmail.com', 'test contact us mail', '2017-10-13 08:54:14', 0),
(23, 'Test@t.com', 'Test', '2017-10-13 23:34:48', 0),
(24, 'Tester@gmail.com', 'This is simply a test.', '2017-10-13 23:40:02', 0),
(25, 'piyushkachariya007@gmail.com', 'hello, thank you!!', '2017-10-14 01:04:08', 0),
(26, 'dd.sparkle006@gmail.com', 'Hello What is that email and email', '2017-10-14 04:10:24', 0),
(27, 'piyushkachariya111@gmail.com', 'Testing things\n\nFor contact us page\n\nThank you', '2017-10-16 19:34:29', 0),
(28, 'piyushkachariya007@gmail.com', 'Hello testing you\n\nThank you', '2017-10-16 19:36:03', 0),
(29, 'piyushkachariya111@gmail.com', '1\n2\n3\n\nThanks', '2017-10-17 05:31:48', 0),
(30, 'ds.sparkle018@gmail.com', 'thanks\n123456\ntest mail', '2017-10-17 06:29:16', 0),
(31, 'ds.sparkle018@gmail.com', 'test mail\nthank you\n123456', '2017-10-17 11:32:28', 0),
(32, 'cd.sparkle001@gmail.com', 'Lorem ipsum dolor sit amet, duo accusam partiendo consulatu et. Usu te meis aeterno democritum, latine facilis ad pro. Ea sed elitr persius singulis, nominavi invidunt vituperatoribus quo ei. Vel an tacimates argumentum scribentur, nam deleniti suscipit forensibus te, mel ubique commodo no.\n\nEa erroribus reprimique usu. Eum ex autem pertinax consequuntur. Vis ne virtute discere, ut ludus maiorum volumus eum. Ne vis enim tota voluptatum, id suas complectitur vix. Usu munere doming ad, aeque omnes ius at.', '2017-10-17 11:39:27', 0),
(33, 'cd.sparkle001@gmail.com', 'Lorem ipsum dolor sit amet, duo accusam partiendo consulatu et. Usu te meis aeterno democritum, latine facilis ad pro. Ea sed elitr persius singulis, nominavi invidunt vituperatoribus quo ei. Vel an tacimates argumentum scribentur, nam deleniti suscipit forensibus te, mel ubique commodo no.\n\nEa erroribus reprimique usu. Eum ex autem pertinax consequuntur. Vis ne virtute discere, ut ludus maiorum volumus eum. Ne vis enim tota voluptatum, id suas complectitur vix. Usu munere doming ad, aeque omnes ius at.', '2017-10-17 11:42:52', 0),
(34, 'cd.sparkle001@gmail.com', 'One of the most common techniques used with the PHP mail() function is to drop the user-submitted email address into a From header. It\'s popular because it means you can reply directly to the sender just by clicking the Reply button in your email program. What many people fail to understand is that it\'s also extremely insecure, and exposes your contact form to a malicious exploit known as email header injection, which can turn your site into a spam relay.\n\nFortunately, the solution is very simple. All you need to do is to check that the user-submitted value is in the correct format for an email address. If it isn\'t, reject the message.', '2017-10-17 12:57:05', 0),
(35, 'piyushkachariya007@gmail.com', 'Hello Please check your inbox and update me for which folder We receive emails.', '2017-10-23 17:28:30', 0),
(36, 'cd.sparkle001@gmail.com', 'The mobile app market is exploding with games being the most popular category of apps to reach out to an incredible number of users. Almost every mobile user loves playing games but what comes as a challenge is to develop such games that would keep the users hooked onto their phones for hours. It requires imagination, creativity and right technology to create quality mobile games which is the forte of Sparkle infotech. We have a strong and skilled team of game developers who are in a continuous strive to keep themselves updated and stay ahead of the competitors.', '2017-10-25 05:55:15', 0),
(37, 'cd.sparkle001@gmail.com', 'WE SERVE YOU WEB DESIGNING, WEB DEVELOPMENT AND MOBILE DEVELOPMENT\n\nSparkle Infotech is a pioneering IT solutions and design service provider. Our IT domain experts and team of experienced designers offer comprehensive automated applications and creative designing services for diverse industries.', '2017-10-25 06:00:41', 0),
(38, 'piyushkachariya111@gmail.com', 'Hello Friends, How are you?\n\nI am testing my System.\n\nThanks', '2017-10-25 18:54:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_customer`
--

CREATE TABLE `eb_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_fullname` varchar(100) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_password` varchar(150) NOT NULL,
  `customer_username` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_photo` varchar(256) NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` datetime NOT NULL,
  `del_in` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eb_dispute`
--

CREATE TABLE `eb_dispute` (
  `dis_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dis_job_id` int(11) NOT NULL,
  `dis_message` varchar(1000) NOT NULL,
  `dis_document` varchar(1000) NOT NULL,
  `dis_document_type` varchar(1000) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_dispute`
--

INSERT INTO `eb_dispute` (`dis_id`, `user_id`, `dis_job_id`, `dis_message`, `dis_document`, `dis_document_type`, `created_on`, `del_in`) VALUES
(1, 3, 336, 'Test', '', '', '2017-11-21 21:02:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_dispute_2`
--

CREATE TABLE `eb_dispute_2` (
  `d2_id` int(11) NOT NULL,
  `sj_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `d2_title` text NOT NULL,
  `d2_description` text NOT NULL,
  `d2_addinfo` varchar(512) NOT NULL,
  `status` varchar(100) NOT NULL,
  `price_change` int(11) NOT NULL DEFAULT '0' COMMENT 'provider price change',
  `received_popup` int(11) NOT NULL COMMENT 'received dispute popup',
  `before_after` int(11) NOT NULL COMMENT 'before payment = 0, after payment = 1',
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_dispute_2`
--

INSERT INTO `eb_dispute_2` (`d2_id`, `sj_id`, `provider_id`, `d2_title`, `d2_description`, `d2_addinfo`, `status`, `price_change`, `received_popup`, `before_after`, `created_on`) VALUES
(1, 336, 1, 'Property Damage', 'Test', '', 'UNRESOLVED', 0, 0, 0, '2017-11-21 21:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `eb_dispute_log`
--

CREATE TABLE `eb_dispute_log` (
  `dl_id` int(11) NOT NULL,
  `d2_id` int(25) NOT NULL,
  `sj_id` int(25) NOT NULL,
  `provider_id` int(25) NOT NULL,
  `dl_message` varchar(1000) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_dispute_log`
--

INSERT INTO `eb_dispute_log` (`dl_id`, `d2_id`, `sj_id`, `provider_id`, `dl_message`, `created_on`) VALUES
(1, 1, 336, 1, '<strong>Gregg Smith</strong> submitted a dispute claim for the service provided by <strong>George Williams.</strong><br> Service ID : 0000336', '2017-11-21 21:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `eb_faq`
--

CREATE TABLE `eb_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(1000) NOT NULL,
  `faq_description` text NOT NULL,
  `faq_type` varchar(25) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_faq`
--

INSERT INTO `eb_faq` (`faq_id`, `faq_title`, `faq_description`, `faq_type`, `created_on`, `update_on`, `del_in`) VALUES
(1, 'Is it free to sign up?', 'Yes, sign up is free! The only time you’ll be charged is when...\r\n\r\nService Seekers: You pay for a service\r\nService Providers: You withdraw payment from your EezyBee account \r\n', 'OTHER', '2017-09-25', '2017-09-25 21:51:56', 0),
(2, 'Which payment methods are accepted on EezyBee?', 'Service Seekers: Credit and Debit cards are the only payment methods used on EezyBee.\r\n\r\nService Providers: A verified ACH Bank Account is the only payment method used on EezyBee.', 'OTHER', '2017-09-25', '2017-10-06 18:45:07', 0),
(3, 'What exactly am I paying for?', 'Service seekers only pay for services completed by their service provider(s). A 10% processing fee will be charged when sending payment.\r\n\r\nService providers will be charged a 10% processing fee each time they withdraw money from their EezyBee account. It’s that simple.', 'OTHER', '2017-09-25', '2017-09-25 21:52:43', 0),
(4, 'I want to maintain my privacy. Will anyone ever see my location?', 'Your location (or address) is never disclosed to anyone. \r\n\r\nWhen you create a new service post/offer, you will be prompted to specify the location of the service. You may choose to share your location with your service provider(s), however that is entirely up to you.\r\n\r\nWe are advocates for safety, security, and comfort when it comes to your needs. That’s why we’ve taken the necessary precautions to ensure your privacy.', 'OTHER', '2017-09-25', '2017-09-25 21:53:11', 0),
(5, 'Why do I need to have at least one payment method saved?', 'Your method of sending or receiving payment is used as a form of verification on EezyBee.', 'OTHER', '2017-09-25', '2017-09-25 21:54:19', 0),
(6, 'How do you secure payment on EezyBee?', 'We protect all transactions using secure sockets layer (SSL) software. Every transaction you make is encrypted on EezyBee.', 'OTHER', '2017-09-25', '2017-09-25 21:54:47', 0),
(7, 'How can I contact customer support?', 'Our Support Team is committed toward creating a productive and successful experience for you on EezyBee. You can reach the EezyBee support team via the following link:\r\n\r\nhttps://www.eezybee.com/EezyBee/contact', 'OTHER', '2017-09-25', '2017-10-16 17:35:03', 0),
(8, 'How do I post a service I want done?', 'Once you’re signed into your account, you can post a wanted service from the Homepage (Dashboard) or My Posts section.\r\n\r\n1. Click the Post Wanted Service button \r\n2. Fill out the service form\r\n3. Click the Post Wanted Service button at the bottom of the form\r\n\r\nYour wanted service will now be broadcasted to the public.', 'OTHER', '2017-09-25', '2017-10-06 18:47:25', 0),
(9, 'How can I invite a service provider to work for me?', 'First, find an offered service post of interest. You can view these posts in…\r\n\r\n• Your Dashboard (under the Suggested Services section)\r\n• The Search section\r\n• The Browse section (after selecting a category)\r\n\r\nTo invite the service provider to work for you, select the Request Service button. Then confirm your request. Your potential service provider will receive a notification in regards to your request.', 'OTHER', '2017-09-25', '2017-10-06 18:51:33', 0),
(10, 'Someone offered to work on one of my posts. Where can I view this offer?', 'You can review all offers in the My Posts section. Click the Offers tab to review all offers sent by potential service providers.', 'OTHER', '2017-09-25', '2017-09-25 22:01:08', 0),
(11, 'I want to contact a service provider before I hire them. How can I do so?', 'You can message or email a service provider by…\r\n\r\n1. Visiting their profile page. The message and email options are below their profile picture.\r\n2. Select the more options (...) button on a service. Then, select the message or email option.', 'OTHER', '2017-09-25', '2017-10-06 18:53:00', 0),
(12, 'I just hired someone. What happens next?', 'Congratulations on your new hire!\r\n\r\nOnce you hire someone to work on a particular service, that service will then be moved to the Hired section.\r\n\r\nEach service will progress through 3 stages in the hired section:\r\nStage 1: Scheduling\r\nStage 2: Ongoing\r\nStage 3: Complete\r\n\r\nScheduling\r\nYou and your service provider will mutually agree upon a schedule that works for both of you.\r\n\r\nOngoing\r\nOnce the service is scheduled, it will be moved to the ongoing section. All of your ongoing services will be displayed here.\r\n\r\nComplete\r\nAfter your service provider completes the service, it will be moved to the complete section. The service will remain here until it is paid for (remember, payment is automatically deducted from your default payment method every Sunday).', 'OTHER', '2017-09-25', '2017-09-25 22:02:03', 0),
(13, 'How can I rate my service provider?', 'You can rate your service provider after you’ve paid for their service. \r\n\r\nTo rate your service provider, perform the following steps:\r\n1. Go to the Payment History page\r\n2. Select a service provider you’d like to rate and review\r\n3. Click the Rate & Review button\r\n4. Click the Submit button', 'OTHER', '2017-09-25', '2017-10-06 18:53:46', 0),
(14, 'Where can I view my canceled services?', 'You can view all of your canceled services by selecting the My Account button in the main menu (top-right corner of your screen).\r\n\r\nOnce your account menu is open, select the Canceled Services option.', 'OTHER', '2017-09-25', '2017-09-25 22:02:37', 0),
(15, 'When will a service be moved to the Pending Payments section?', 'When your service provider completes a service it will automatically be moved to the pending payments section (you can also view this service in the Hired section under the Complete tab).', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-09-25 22:03:27', 0),
(16, 'When will a service be moved to the Pending Payments section?', 'When your service provider completes a service it will automatically be moved to the pending payments section (you can also view this service in the Hired section under the Complete tab).', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:45', 1),
(17, 'How do I pay for a completed service?', 'Your default payment method will automatically be charged every Sunday for all services completed that week. \r\n\r\nTo edit your default payment method (and other payment information), visit the Manage Payments section.', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-09-25 22:10:32', 0),
(18, 'How do I pay for a completed service?', 'Your default payment method will automatically be charged every Sunday for all services completed that week. \r\n\r\nTo edit your default payment method (and other payment information), visit the Manage Payments section.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:48', 1),
(19, 'When will I be charged for a completed service?', 'Your default payment method will automatically be charged every Sunday for all services completed that week.', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-09-25 22:11:00', 0),
(20, 'When will I be charged for a completed service?', 'Your default payment method will automatically be charged every Sunday for all services completed that week.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:51', 1),
(21, 'When will my service provider receive payment?', 'Your service provider(s) will receive payment every Sunday for the services they completed that week.', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-09-25 22:11:37', 0),
(22, 'When will my service provider receive payment?', 'Your service provider(s) will receive payment every Sunday for the services they completed that week.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:54', 1),
(23, 'How do I send bonuses, reimbursements, and any other additional payments?', 'To send additional payments of this nature, you’ll need to have already paid your service provider for their completed service.\r\n\r\nOnce you’ve paid for the completed service, perform the following steps:\r\n\r\n1. Go to the Manage Payments page\r\n2. Select the Payment History tab\r\n3. Select a service completed by the service provider of your choice\r\n4. In the service details pop-up, select the Send Custom Payment button\r\n5. Select a payment type (bonus, reimbursement, or miscellaneous)\r\n6. Enter the amount you’d like to send\r\n7. Write any additional notes (optional)\r\n8. Select the Send Custom Payment button\r\n\r\nYou can review your sent custom payments in the Payment History section.', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-10-06 18:54:54', 0),
(24, 'How do I send bonuses, reimbursements, and any other additional payments?', 'To send additional payments of this nature, you’ll need to have already paid your service provider for their completed service.\r\n\r\nOnce you’ve paid for the completed service, perform the following steps:\r\n\r\nGo to the Manage Payments page\r\nSelect the Payment History tab\r\nSelect a service completed by the service provider of your choice\r\nIn the service details pop-up, select the Send Custom Payment button\r\nSelect a payment type (bonus, reimbursement, or miscellaneous)\r\nEnter the amount you’d like to send\r\nWrite any additional notes (optional)\r\nSelect the Send Custom Payment button\r\n\r\nYou can review your sent custom payments in the Payment History section.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:57', 1),
(25, 'Can my service provider send me a refund?', 'Yes, your service providers are capable of sending you refunds (partial or full).', 'MANAGE_PAYMENT_SEEKER', '2017-09-25', '2017-09-25 22:12:48', 0),
(26, 'Can my service provider send me a refund?', 'Yes, your service providers are capable of sending you refunds (partial or full).', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:17:59', 1),
(27, 'When can I dispute a service?', 'You can dispute a service from the moment your service provider completes a service to the following Wednesday. \r\n\r\nRemember, payment is automatically charged every Sunday (which means you have up to 3 days to dispute a service after you’ve already sent payment).', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:17:40', 1),
(28, 'When can I dispute a service?', 'You can dispute a service from the moment your service provider completes a service to the following Wednesday. \r\n\r\nRemember, payment is automatically charged every Sunday (which means you have up to 3 days to dispute a service after you’ve already sent payment).', 'PROVIDER_DISPUTE', '2017-09-25', '2017-09-25 22:17:38', 1),
(29, 'How do I file a dispute claim?', 'You can file a dispute claim in the Hired section (Complete tab) or the Manage Payments section (Pending Payments tab).\r\n\r\nTo dispute the charges for a completed service, perform the following steps:\r\nSelect the service you would like to dispute\r\nIn the service details pop-up, select the dispute button\r\nFill out the dispute form\r\nSubmit the dispute\r\n\r\nOnce you have submitted your dispute claim, your service provider will be notified.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:17:36', 1),
(30, 'How do I file a dispute claim?', 'You can file a dispute claim in the Hired section (Complete tab) or the Manage Payments section (Pending Payments tab).\r\n\r\nTo dispute the charges for a completed service, perform the following steps:\r\nSelect the service you would like to dispute\r\nIn the service details pop-up, select the dispute button\r\nFill out the dispute form\r\nSubmit the dispute\r\n\r\nOnce you have submitted your dispute claim, your service provider will be notified.', 'PROVIDER_DISPUTE', '2017-09-25', '2017-09-25 22:17:30', 1),
(31, 'When can I dispute a service?', 'You can dispute a service from the moment your service provider completes a service to the following Wednesday. \r\n\r\nRemember, payment is automatically charged every Sunday (which means you have up to 3 days to dispute a service after you’ve already sent payment).', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:18:38', 0),
(32, 'How do I file a dispute claim?', 'You can file a dispute claim in the Hired section (Complete tab) or the Manage Payments section (Pending Payments tab).\r\n\r\nTo dispute the charges for a completed service, perform the following steps:\r\n1. Select the service you would like to dispute\r\n2. In the service details pop-up, select the dispute button\r\n3. Fill out the dispute form\r\n4. Submit the dispute\r\n\r\nOnce you have submitted your dispute claim, your service provider will be notified.', 'SEEKER_DISPUTE', '2017-09-25', '2017-10-06 18:56:35', 0),
(33, 'How do I resolve a dispute that I created?', 'There are 2 scenarios to consider when resolving a dispute claim you created. They are as follows:\r\n\r\nBefore you paid for the completed services\r\nYou’ll need to pay a different price for the completed service. \r\n\r\nIf you and your service provider can come to an agreement on a different price (compared to the original fixed or hourly price), your service provider will select an option that will enable you to submit a different price.\r\n\r\nOnce this is done, go to the dispute details page. Select the Pay Different Amount button. Enter the new amount and submit your payment. Once the payment is submitted, the dispute will be resolved.\r\n\r\nAfter you paid for the completed services\r\nYour service provider will need to send you a partial or full refund for the completed service.\r\n\r\nIf you and your service provider can come to an agreement on a refund amount, your service provider may send you a refund.\r\n\r\nOnce you receive a refund, visit the dispute details page and select the Resolve Dispute button. Confirm your decision to resolve the dispute.\r\n\r\nNOTE: All dispute claims can be canceled at any time by the initiating party', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:21:46', 0),
(34, 'How can I resolve a dispute created by my service provider?', 'Your service provider will be responsible for manually resolving the dispute. \r\n\r\nThey may choose to resolve the dispute based on your discussion. You may send additional payments from the dispute details page by selecting the Send Custom Payment button.\r\n\r\nNOTE: All dispute claims can be canceled at any time by the initiating party', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:22:08', 0),
(35, 'How can I send payments to encourage a dispute resolution?', 'You can send additional payments by selecting the Send Custom Payment button in the dispute details page.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:22:25', 0),
(36, 'What can I do if my service provider is not being cooperative?', 'You can escalate the dispute by selecting the Report/Flag option in the dispute details page. Once a report/flag is filed, our support team will carefully look into the dispute case and will take further action based on the evidence provided by both parties.\r\n\r\nPlease note that EezyBee does not have the power to enforce payment or services from either service seekers or providers.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:22:43', 0),
(37, 'Can my service provider re-open a dispute claim after we resolved the original?', 'Yes. If there are any further discrepancies, your service provider may choose to re-open the dispute case.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:23:01', 0),
(38, 'Where can I see a dispute record of all actions taken by both parties?', 'The Dispute Log (located in the dispute details page) displays all actions taken by both parties during the dispute claim.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:23:17', 0),
(39, 'How many times can I dispute a service?', 'You can dispute each completed service once.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:23:34', 0),
(40, 'What will happen if I don’t resolve the dispute claims filed against me?', 'Your account may be frozen due to the lack of dispute resolution. \r\n\r\nWorry not! We realize there are two sides to every story. We’re deeply meticulous with how we handle each and every dispute claim.\r\n\r\nIn the event that your account is frozen, we will always provide the opportunity for you to unfreeze your account by resolving all of your outstanding dispute claims.', 'SEEKER_DISPUTE', '2017-09-25', '2017-09-25 22:23:50', 0),
(41, 'How can I post a service that I want to offer?', 'Once you’re signed into your account, you can post an offered service from the Homepage (Dashboard) or My Services section.\r\n\r\n1. Click the Post Offered Service button \r\n2. Fill out the service form\r\n3. Click the Post Offered Service button at the bottom of the form\r\n\r\nYour offered service will now be broadcasted to the public.', 'OTHER', '2017-09-25', '2017-10-06 18:58:10', 0),
(42, 'How can I apply to work on a seeker’s requested service post?', 'You can access these posts in...  \r\n\r\n• Your Dashboard (under the Requested Services section)\r\n• The Search section\r\n• The Browse section (after selecting a category)\r\n\r\nSelect the Apply button on the post of your choice. Then, confirm your application. Your potential service seeker will receive a notification in regards to your application.', 'OTHER', '2017-09-25', '2017-10-06 19:02:09', 0),
(43, 'Someone sent a service request for one of my posts. Where can I view this request?', 'You can review all requests in the My Services section. Click the Requests tab to review all requests sent by potential service seekers.', 'OTHER', '2017-09-25', '2017-10-06 19:03:18', 0),
(44, 'I want to contact a seeker before they hire me. How can I contact them?', 'You can message a service seeker by visiting their profile page. The message option is below their profile picture.', 'OTHER', '2017-09-25', '2017-09-25 22:26:18', 0),
(45, 'I just got hired. What happens next?', 'Congratulations on your new hire! Once you’re hired for a particular service, that service will be moved to the Hired section.\r\n\r\nEach service will progress through 3 stages in the hired section:\r\nStage 1: Scheduling\r\nStage 2: Ongoing\r\nStage 3: Complete\r\n\r\nScheduling\r\nYou and your service seeker will mutually agree upon a schedule that works for both of you.\r\n\r\nOngoing\r\nOnce the service is scheduled, it will be moved to the ongoing section. All of your ongoing services will be displayed here.\r\n\r\nComplete\r\nAfter you complete the service, it will be moved to the complete section. The service will remain here until it is paid for (payment is automatically withdrawn from seekers every Sunday).', 'OTHER', '2017-09-25', '2017-09-25 22:26:39', 0),
(46, 'How can I rate my service seeker?', 'You can rate your service seeker after you’ve received payment for your completed service. \r\n\r\nTo rate your service seeker, perform the following steps:\r\n1. Go to the Payment History page\r\n2. Select a service seeker you’d like to rate and review\r\n3. Click the Rate & Review button\r\n4. Click the Submit button', 'OTHER', '2017-09-25', '2017-10-06 19:04:15', 0),
(47, 'Where can I view my canceled services?', 'You can view all of your canceled services by selecting the My Account button in the main menu (top-right corner of your screen).\r\n\r\nOnce your account menu is open, select the Canceled Services option.', 'OTHER', '2017-09-25', '2017-09-25 22:27:17', 0),
(48, 'When will a service be moved to the Pending Payments section?', 'When you complete a service it will automatically be moved to the pending payments section (you can also view this service in the Hired section under the Complete tab).', 'MANAGE_PAYMENT_PROVIDER', '2017-09-25', '2017-09-25 22:27:41', 0),
(49, 'When will I receive payment from my service seeker?', 'You will receive payment every Sunday (for services you completed that week).\r\n\r\nService seekers are automatically charged every Sunday. If you do not receive payment from your service seeker, please contact them in order to resolve the issue.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-26', '2017-09-26 00:39:29', 0),
(50, 'It’s passed Sunday and my service seeker still hasn’t paid me. What can I do about this?', 'You can either…\r\n• Contact your service seeker directly\r\n• Send a payment reminder by selecting the Send Reminder button in the Hired section (Complete tab)\r\n• File a dispute claim', 'MANAGE_PAYMENT_PROVIDER', '2017-09-26', '2017-10-06 19:05:16', 0),
(51, 'Can I receive bonuses, reimbursements, and any other additional payments?', 'Yes, your service seeker has the option to send you a bonus in the event that you provide an outstanding service! \r\n\r\nYour service seekers can also send you reimbursements and other additional payments of this nature. ', 'MANAGE_PAYMENT_PROVIDER', '2017-09-26', '2017-10-06 19:06:01', 0),
(52, 'How can I send a refund to my service seeker?', 'You’ll need to have received payment for your completed service beforehand.\r\n\r\nOnce you’ve received payment from your service seeker, perform the following steps:\r\n\r\n1. Go to the Manage Payments page\r\n2. Select the Payment History tab\r\n3. Select a service completed completed by you\r\n4. In the service details pop-up, select the Refund option\r\n5. Select a refund type (partial or full)\r\n6. Enter the amount you’d like to send (if applicable)\r\n7. Write any additional notes (optional)\r\n8. Select the Submit Refund option\r\n\r\nYou can review your sent refunds in the Payment History tab.', 'MANAGE_PAYMENT_PROVIDER', '2017-09-26', '2017-10-06 19:07:26', 0),
(53, 'When can I file a dispute claim?', 'You can file a dispute claim for a particular service after Sunday (for the week in which you completed that service). You have until the following Wednesday to file your claim. \r\n\r\nAfter Wednesday, you will no longer be able to file a dispute claim for that particular service.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:40:34', 0),
(54, 'How do I file a dispute claim for a service I completed?', 'You can file a dispute claim in the Hired section (Complete tab) or the Manage Payments section (Pending Payments tab).\r\n\r\nTo file a dispute claim, perform the following steps:\r\n1. Select the service you would like to dispute\r\n2. In the service details pop-up, select the dispute button\r\n3. Fill out the dispute form\r\n4. Submit the dispute\r\n\r\nOnce you have submitted your dispute claim, your service seeker will be notified. ', 'PROVIDER_DISPUTE', '2017-09-26', '2017-10-06 22:05:20', 0),
(55, 'How do I resolve a dispute that I created?', 'Your service provider will need to send you at least one additional payment in order to allow you to resolve the dispute claim.\r\n\r\nIf you and your service seeker can come to an agreement on an amount, your service seeker may send you an additional payment.\r\n\r\nOnce you receive the additional payment (and you are satisfied), visit the dispute details page and select the Resolve Dispute button. Confirm your decision to resolve the dispute.\r\n\r\nNOTE: All dispute claims can be canceled at any time by the initiating party', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:41:04', 0),
(56, 'How can I resolve a dispute created by my service seeker?', 'Your service seeker will be responsible for manually resolving the dispute. There are 2 scenarios to consider: \r\n\r\nThe dispute was claimed before your seeker paid for your services\r\nYou may enable them to pay a different price (based on your discussion). Usually, this price will be lesser than the original agreed upon price. If you want to allow a price change, click the Enable Price Change button in the dispute details page.\r\n\r\nOnce your seeker sends payment, the dispute will be resolved.\r\n\r\nThe dispute was claimed after your seeker paid you for your services\r\nYou may send a partial or full refund from the dispute details page to encourage a dispute resolution. To do so, select the Send Refund button in the dispute details page.\r\n\r\nYour seeker may choose to resolve the dispute after they receive a refund (of any amount). \r\n\r\nNOTE: All dispute claims can be canceled at any time by the initiating party', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:41:19', 0),
(57, 'How can I send a refund to encourage a dispute resolution?', 'You can send a refund by selecting the Send Refund button in the dispute details page.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:41:33', 0),
(58, 'What can I do if my service seeker is not being cooperative?', 'You can escalate the dispute by selecting the Report/Flag option in the dispute details page. Once a report/flag is filed, our support team will carefully look into the dispute case and will take further action based on the evidence provided by both parties.\r\n\r\nPlease note that EezyBee does not have the power to enforce payment or services from either service seekers or providers.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:41:45', 0),
(59, 'Can my seeker re-open a dispute claim after we resolved the original?', 'Yes. If there are any further discrepancies, your service seeker may choose to re-open the dispute case.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:42:01', 0),
(60, 'Where can I see a dispute record of all actions taken by both parties?', 'The Dispute Log (located in the dispute details page) displays all actions taken by both parties during the dispute claim.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:42:15', 0),
(61, 'How many times can I dispute a service?', 'You can dispute each completed service once.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:42:27', 0),
(62, 'What will happen if I don’t resolve the dispute claims filed against me?', 'Your account may be frozen due to the lack of dispute resolution. \r\n\r\nWorry not! We realize there are two sides to every story. We’re deeply meticulous with how we handle each and every dispute claim.\r\n\r\nIn the event that your account is frozen, we will always provide the opportunity for you to unfreeze your account by resolving all of your outstanding dispute claims.', 'PROVIDER_DISPUTE', '2017-09-26', '2017-09-26 00:42:41', 0),
(63, 'I sent a withdraw request and it’s been 7-10 days. I still haven’t received any funds in my bank account. What now?', 'If you don’t see any changes in your bank account within 7-10 days, contact us and we’ll notify you as to what is causing the failed transaction.', 'MANAGE_PAYMENT_PROVIDER', '2017-10-04', '2017-10-06 22:07:37', 0),
(64, 'I want to refund my service seeker following a dispute, but I have no available balance in my EezyBee account. How can I send a refund and resolve the dispute?', 'If you want to send a refund but have no available balance, contact us and we’ll help monitor a transaction outside of EezyBee to ensure a successful refund.', 'MANAGE_PAYMENT_PROVIDER', '2017-10-04', '2017-10-06 22:08:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_favunfav`
--

CREATE TABLE `eb_favunfav` (
  `fav_id` int(10) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_type` int(11) NOT NULL COMMENT '0 = post_offered_services, 1 = eb_services_job',
  `user_id` int(11) NOT NULL COMMENT 'who fav the job',
  `is_favourite` int(11) NOT NULL DEFAULT '1' COMMENT ' 0 = unfav, 1 = fav'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_help_center`
--

CREATE TABLE `eb_help_center` (
  `hc_id` int(11) NOT NULL,
  `hc_service_type` int(11) NOT NULL COMMENT '0 = Service provider, 1 = Service seeker',
  `hc_email` varchar(100) NOT NULL,
  `hc_category` varchar(100) NOT NULL,
  `hc_description` varchar(1000) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_help_center`
--

INSERT INTO `eb_help_center` (`hc_id`, `hc_service_type`, `hc_email`, `hc_category`, `hc_description`, `created_on`, `del_in`) VALUES
(1, 0, 'piyushkachariya111@gmail.com', 'Report / flag', 'Testing', '2017-10-04 23:48:17', 0),
(2, 0, 'g@g.com', 'Service Complaints', 'Test', '2017-10-06 00:04:21', 0),
(3, 0, 'kp@gmail.com', 'Billing Query', 'Why i am charged this week?', '2017-10-11 19:11:07', 0),
(4, 0, 'test@co.co', 'Report / flag', 'Test', '2017-10-13 23:42:26', 0),
(5, 0, 'piyushkachariya111@gmail.com', 'Payment Dispute', 'How can i dispute somebody?', '2017-10-14 00:59:54', 0),
(6, 0, 'kp@gmail.com', 'Technical', 'What it is?', '2017-10-14 01:01:25', 0),
(7, 0, 'piyushkachariya111@gmail.com', 'Billing Query', 'Testing one \ntwo\nthree\n\nThanks', '2017-10-16 19:27:52', 0),
(8, 0, 'kp@gmail.com', 'Payment Dispute', 'what is it?', '2017-10-16 19:32:52', 0),
(9, 1, 'kp@gmail.com', 'Report / flag', 'flagged', '2017-10-16 19:33:24', 0),
(10, 1, 'piyushkachariya111@gmail.com', 'Billing Query', 'checking spam folder issue,', '2017-10-23 17:29:48', 0),
(11, 0, 'cd.sparkle001@gmail.com', 'Technical', '901 - Rajhans Complex 2, Near Nirmal Hospital ,\nCivil Char Rasta, Ring Road, Surat - 395002 \n+91 9727148697, +91 8866300463 \ninfo@sparkleinfotech.com', '2017-10-25 06:38:27', 0),
(12, 1, 'piyushkachariya111@gmail.com', 'Billing Query', 'Hello friend? how are you doing?\n\nCan we please connect with each other?', '2017-10-25 18:57:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_invoice`
--

CREATE TABLE `eb_invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_form` varchar(100) NOT NULL,
  `invoice_service_ref` varchar(100) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_total_amount` varchar(100) NOT NULL,
  `invoice_type` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_notification`
--

CREATE TABLE `eb_notification` (
  `notification_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `notification_title` varchar(500) NOT NULL,
  `notification_text` varchar(2000) NOT NULL,
  `notification_sent_to` int(11) NOT NULL COMMENT 'user_id who get notification',
  `notification_sentby` int(11) NOT NULL COMMENT 'user_id who sent notification',
  `notification_type` varchar(500) NOT NULL,
  `notification_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_flag` int(11) NOT NULL COMMENT '0=not read, 1=read',
  `base_counter` int(11) NOT NULL COMMENT 'notification counter'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_notification`
--

INSERT INTO `eb_notification` (`notification_id`, `job_id`, `notification_title`, `notification_text`, `notification_sent_to`, `notification_sentby`, `notification_type`, `notification_datetime`, `notification_flag`, `base_counter`) VALUES
(1, 336, 'Gregg Smith requested your offered service \'Need your dog walked?\'.', '', 1, 3, 'receive_service_request', '2017-11-21 21:01:25', 1, 1),
(2, 336, 'George Williams approved your service request for \'Need your dog walked?\'.', '', 3, 1, 'job_approve_decline', '2017-11-21 21:01:38', 0, 1),
(3, 336, 'George Williams approved your schedule for \'Need your dog walked?\'.', '', 3, 1, 'confirm_decline_schedule', '2017-11-21 21:02:04', 0, 1),
(4, 336, 'George Williams completed the service \'Need your dog walked?\'.', '', 3, 1, 'job_completion', '2017-11-21 21:02:20', 0, 1),
(5, 336, 'Gregg Smith filed a dispute claim for the service \'Need your dog walked?\'.', '', 1, 3, 'filed_dispute', '2017-11-21 21:02:56', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_notification_title`
--

CREATE TABLE `eb_notification_title` (
  `title_id` int(11) NOT NULL,
  `title_text` varchar(500) NOT NULL,
  `notification_type` varchar(200) NOT NULL,
  `to_whom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_notification_title`
--

INSERT INTO `eb_notification_title` (`title_id`, `title_text`, `notification_type`, `to_whom`) VALUES
(1, 'A new service has been posted. Check Name of Service posted by @provider@ on your dashboard', 'post_jon_in_area', 'seeker'),
(2, 'Name of @provider@ approved your service request', 'job_approve_decline', 'seeker'),
(3, '@provider@ has chosen to offer their service @servicename@ to someone else', 'job_approve_decline', 'seeker'),
(4, '@provider@ has closed their service @servicename@', 'requested_job_close', 'seeker'),
(5, '@provider@ requested your service -jobname-', 'receive_service_request', 'seeker'),
(6, '@provider@ has submitted a schedule', 'schedule_submitted', 'seeker'),
(7, '@provider@ has approved your schedule', 'confirm_decline_schedule', 'seeker'),
(8, '@provider@ has declined your schedule', 'confirm_decline_schedule', 'seeker'),
(9, '@provider@ has ended your agreement for your job @jobname@', 'ended_engagement', 'seeker'),
(10, '@provider@ has left you a review. See what he had to say about your work', 'rating_review', 'seeker'),
(11, 'A new job has been posted. Check @jobname@ by @seeker@ on your dashboard', 'post_jon_in_area', 'provider'),
(12, '@seeker@ hired you for their job @jobname@', 'job_approve_decline', 'provider'),
(13, '@seeker@ has chosen to hire someone else for her job @jobname@', 'job_approve_decline', 'provider'),
(14, '@seeker@ closed their job post @jobname@', 'requested_job_close', 'provider'),
(15, '@seeker@ has applied to your listed service @servicename@', 'receive_service_request', 'provider'),
(16, '@seeker@ has submitted a schedule', 'schedule_submitted', 'provider'),
(17, '@seeker@ has approved your schedule', 'confirm_decline_schedule', 'provider'),
(18, '@seeker@ declined your schedule for', 'confirm_decline_schedule', 'provider'),
(19, '@seeker@ has put your job Name of @jobname@ on hold.', 'hold_job', 'provider'),
(20, '@seeker@ has ended your agreement for your job @jobname@', 'ended_engagement', 'provider'),
(21, '@seeker@ has just submitted funds to your account', 'payment_issue', 'provider'),
(22, '@seeker@ has left you a review. See what they had to say about your work', 'rating_review', 'provider');

-- --------------------------------------------------------

--
-- Table structure for table `eb_payout`
--

CREATE TABLE `eb_payout` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_account_id` varchar(100) NOT NULL,
  `amount` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `balance_transaction` varchar(100) NOT NULL,
  `destination_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_payout`
--

INSERT INTO `eb_payout` (`id`, `user_id`, `stripe_account_id`, `amount`, `date`, `status`, `balance_transaction`, `destination_payment`) VALUES
(1, 2, 'acct_1B9G5iJ9JYOQEMK8', '450', '2017-10-06', 'paid', 'txn_1BA2QuG16aQBJIXxZer9CcOo', 'py_1BA2QuJ9JYOQEMK8VvDlgKF5'),
(2, 2, 'acct_1BB7cpE5islLnnYu', '90', '2017-10-09', 'paid', 'txn_1BB8e9G16aQBJIXxdjiMgTgX', 'py_1BB8e9E5islLnnYubKtxkktd'),
(3, 1, 'acct_1B9FoKJ1x8uNICAg', '0.9', '2017-10-09', 'paid', 'txn_1BB9FOG16aQBJIXxhCOKI6WP', 'py_1BB9FOJ1x8uNICAga7L3gUGZ'),
(4, 2, 'acct_1BB7cpE5islLnnYu', '29070', '2017-10-10', 'paid', 'txn_1BBS9kG16aQBJIXxUxwAbzXs', 'py_1BBS9kE5islLnnYuV83RHYWN'),
(5, 2, 'acct_1BB7cpE5islLnnYu', '17626.5', '2017-10-10', 'paid', 'txn_1BBSUQG16aQBJIXxcWjUAXXP', 'py_1BBSUQE5islLnnYunWL7ydTY');

-- --------------------------------------------------------

--
-- Table structure for table `eb_pay_stub`
--

CREATE TABLE `eb_pay_stub` (
  `ps_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `ps_receipt_no` varchar(100) NOT NULL,
  `ps_additional_notes` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_post_offered_service`
--

CREATE TABLE `eb_post_offered_service` (
  `pos_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reported_by` text NOT NULL COMMENT 'is reported by',
  `pos_title` varchar(100) NOT NULL,
  `pos_description` text NOT NULL,
  `pos_service_category` varchar(100) NOT NULL,
  `pos_sub_service_category` text NOT NULL,
  `pos_rate_type` int(11) NOT NULL COMMENT '0 = Hourly, 1 = Fixed ',
  `pos_rate` varchar(100) NOT NULL,
  `pos_service_distance` varchar(100) NOT NULL,
  `pos_address` varchar(100) NOT NULL COMMENT 'address of services',
  `pos_long` varchar(100) NOT NULL COMMENT 'longitude',
  `pos_lat` varchar(100) NOT NULL COMMENT 'latitude',
  `pos_insterest` text NOT NULL,
  `pos_prefered_type` int(11) NOT NULL COMMENT '0 = Individual, 1 = Business',
  `pos_business_details` varchar(256) NOT NULL,
  `pos_background_check` varchar(256) NOT NULL,
  `pos_status` varchar(100) NOT NULL COMMENT 'OPEN, CLOSE',
  `created_on` datetime NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_post_offered_service`
--

INSERT INTO `eb_post_offered_service` (`pos_id`, `user_id`, `reported_by`, `pos_title`, `pos_description`, `pos_service_category`, `pos_sub_service_category`, `pos_rate_type`, `pos_rate`, `pos_service_distance`, `pos_address`, `pos_long`, `pos_lat`, `pos_insterest`, `pos_prefered_type`, `pos_business_details`, `pos_background_check`, `pos_status`, `created_on`, `update_on`, `del_in`) VALUES
(1, 1, '', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 'Pets and Animals', 'Pet Walking', 0, '15', '25 miles', '6203 San Ignacio Ave, San Jose, CA 95119, USA', '-121.77818646151799', '37.23667871167796', '[\"Dog lovers\"]', 0, 'uploads/postoffered/15071379372014_Job_Seeker_Survey.pdf', 'uploads/postoffered/15071379372014_Job_Seeker_Survey1.pdf', 'OPEN', '2017-10-04 17:25:37', '2017-10-12 22:33:03', 1),
(9, 9, '', 'Home Organization / Family Management', 'Offering a home organization and family management service to leverage the productivity and living quality of you and your family.', 'Household', 'Home Maintenance,House Sitting,Interior Design,Personal Assistant', 0, '50.00', '25 miles', '6203 San Ignacio Ave, San Jose, CA 95119, USA', '-121.7779', '37.2364', '[\"Design\",\"House management\",\"Family management\",\"Space planning\",\"Schedule coordination\"]', 0, 'uploads/postoffered/1507323330Screen_Shot_2017-07-09_at_5_57_40_PM.png', 'uploads/postoffered/1507323330Screen_Shot_2017-06-29_at_1_27_47_PM.png', 'OPEN', '2017-10-06 20:55:30', '2017-10-06 20:55:30', 0),
(19, 2, '', 'Can help you in writing', 'I can help you in writing. For you internet and digital article and many more places. Even i can work online. ', 'Education', 'Academic Preparation,Writing Workshops', 0, '33', '50 miles', 'Milpitas, CA 95035, USA', '-121.8996', '37.4323', '[\"Writer\",\"Writing\",\"Online\"]', 0, '', '', 'CLOSE', '2017-10-10 18:24:40', '2017-10-10 21:49:30', 0),
(21, 2, '3', 'Contact me for moving help', 'I can help you in delivery of your items to your friends or family in same city anytime.', 'Delivery', 'Bulk Delivery,Courier,Food Delivery,Luggage Delivery', 0, '17', '75 miles', 'San Francisco, CA, USA', '-122.4194', '37.7749', '[\"Delivery\",\"Near location\"]', 0, '', '', 'OPEN', '2017-10-10 19:12:09', '2017-10-16 19:40:48', 0),
(24, 2, '', 'Car Washing at home', 'I can wash your car anywhere. You need to contact me using EezyBee website. So we can find out best schedule for our services. Will do washing mostly on weekend if possible.\r\n\r\nThank you.', 'Automotive', 'Auto Painting,Body Work,Car Wash', 0, '25', '50 miles', 'Palo Alto, CA, USA', '-122.1430', '37.4419', 'null', 0, '', '', 'CLOSE', '2017-10-10 23:21:03', '2017-11-18 02:20:36', 0),
(29, 1, '', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 'Pets and Animals', 'Pet Walking', 0, '25', '25 miles', '6203 San Ignacio Ave, San Jose, CA 95119, USA', '-121.77830176892402', '37.236717435196354', 'null', 0, '', '', 'OPEN', '2017-10-12 22:33:36', '2017-10-12 22:42:17', 0),
(42, 2, '', 'Can help you in website development', 'Let me know if you are looking for project help in your college class or you want to learn something about website and mobile applications development.', 'Education', 'Academic Preparation,Design Class,Digital Education,Technology Education,Tutoring', 0, '45', '75 miles', '440 Dixon Landing Rd, Milpitas, CA 95035, USA', '-121.9188', '37.4543', 'null', 0, '', '', 'OPEN', '2017-10-18 01:29:24', '2017-10-18 01:29:24', 0),
(43, 2, '31', 'Website marketing', 'Looking for clients who would like to do their marketing. I can help them to market their website and reach to the user. \r\nThank you', 'Other', 'News,Advertisement,Marketing', 0, '30', '50 miles', 'San Carlos, CA, USA', '-122.2605', '37.5072', '[\"Online\",\"Website only\"]', 0, '', '', 'OPEN', '2017-10-18 17:17:57', '2017-10-19 21:41:15', 0),
(44, 2, '', 'Checking live payment', 'I am available for website testing with payment things.', 'Other', 'payment,live', 0, '1', '50 miles', 'Fremont, CA, USA', '-121.9886', '37.5483', 'null', 0, '', '', 'CLOSE', '2017-10-18 19:54:13', '2017-10-26 17:55:58', 0),
(45, 53, '', 'Plumber Test Post', 'Urgently Need Plumber for some repairing work, also I want to install new hand wash basin in my Kitchen. ', 'Handyman', 'Plumbing,Repair', 1, '50', '25 miles', 'Unnamed Road, Lodhipura, Baba Mahalle Lay-out, Shufi Nagar, Kamptee, Maharashtra 441001, India', '79.182904', '21.2149738', '[\"Plumber\"]', 0, '', '', 'OPEN', '2017-10-21 12:10:40', '2017-11-03 21:57:44', 1),
(46, 2, '4', 'Can take your photos', 'I can come to your event place and takes photos of your event.', 'Photography/Video', 'Business Marketing,Food Photography', 0, '35', '75 miles', '200 Larkin St, San Francisco, CA 94102, USA', '-122.4161', '37.7802', '[\"Photos\",\"Family\",\"Events\",\"Foods\"]', 0, '', '', 'CLOSE', '2017-10-23 17:25:20', '2017-11-18 02:20:54', 0),
(47, 2, '', 'Get help on cooking? Hire me', 'I can help you in cooking on any days in the evening time. ', 'Food & Drink', 'Cook Food,Cooking Lessons,Vegan Foods', 0, '18', '50 miles', 'South San Jose, San Jose, CA, USA', '-121.8362', '37.2802', '[\"Evening time\",\"7 to 9 pm only\",\"Family\",\"Students\"]', 0, '', '', 'CLOSE', '2017-10-24 20:35:10', '2017-11-18 02:20:49', 0),
(48, 1, '', 'Capable Dog Walker', 'What can I say, I\'m one with the pups. I\'m an experienced dog walker, I can walk dogs of all sizes and breeds, won\'t you hire me?', 'Pets and Animals', 'Pet Walking', 0, '25', '50 miles', '6203 San Ignacio Ave, San Jose, CA 95119, USA', '-121.77825925351057', '37.23671555398068', '[\"Dog Walking\"]', 0, '', '', 'OPEN', '2017-10-31 17:05:02', '2017-10-31 17:05:02', 0),
(62, 2, '', 'Drive up to SF airport from san jose', 'I am leaving in san Jose and can give you ride up to SF from san Jose. \r\nLet me know if anyone interested in this,', 'Automotive', 'Transportation', 1, '45', '75 miles', 'Santa Clara, CA, USA', '-121.9552', '37.3541', '[\"Driving\",\"Airport\",\"Droppoff\"]', 0, '', '', 'OPEN', '2017-11-14 23:15:33', '2017-11-14 23:15:33', 0),
(94, 53, '', 'Available to help in home cleaning', 'I am available for home cleaning services like Patio, kitchen, Garge', 'Household', 'Air Conditioning,Balcony,Bathrooms,Carpentry,Cleaning,Garage,Patios', 0, '33', '50 miles', 'Santa Cruz, CA, USA', '-122.0308', '36.9741', '[\"Home\",\"Clean\"]', 0, '', '', 'OPEN', '2017-11-15 23:13:50', '2017-11-15 23:13:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_rating`
--

CREATE TABLE `eb_rating` (
  `rating_id` int(11) NOT NULL,
  `sj_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_title` varchar(100) NOT NULL,
  `rating_star` varchar(100) NOT NULL,
  `rating_description` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_rating_reviews`
--

CREATE TABLE `eb_rating_reviews` (
  `rr_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_reviews`
--

CREATE TABLE `eb_reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `review_description` text NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_security_answer`
--

CREATE TABLE `eb_security_answer` (
  `sa_id` int(11) NOT NULL,
  `sq_id` int(11) NOT NULL COMMENT 'Security question id',
  `user_id` int(11) NOT NULL,
  `sq_answer` varchar(100) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_security_answer`
--

INSERT INTO `eb_security_answer` (`sa_id`, `sq_id`, `user_id`, `sq_answer`, `created_on`, `update_on`, `del_in`) VALUES
(1, 1, 1, 'Test', '2017-10-16', '2017-10-16 22:06:55', 0),
(2, 2, 2, 'Surat', '2017-10-04', '2017-10-04 16:52:48', 0),
(3, 3, 3, 'Test', '2017-10-16', '2017-10-16 22:06:47', 0),
(4, 1, 4, 'Sadguru', '2017-10-04', '2017-10-04 17:57:13', 0),
(5, 2, 5, 'Sparkle Infotech', '2017-10-24', '2017-10-24 11:24:29', 0),
(6, 3, 8, 'Sparkle Infotech', '2017-10-06', '2017-10-06 04:12:19', 0),
(7, 1, 9, 'Losong', '2017-10-06', '2017-10-06 20:47:43', 0),
(8, 4, 21, 'Tony', '2017-10-07', '2017-10-07 00:20:21', 0),
(9, 2, 17, 'George', '2017-10-09', '2017-10-09 20:07:47', 0),
(10, 3, 15, 'EezyBee', '2017-10-09', '2017-10-09 20:07:57', 0),
(11, 1, 10, 'Sadguru', '2017-10-09', '2017-10-09 19:09:34', 0),
(14, 1, 31, 'Test', '2017-10-10', '2017-10-10 19:50:28', 0),
(15, 6, 32, 'Test', '2017-10-10', '2017-10-10 21:46:04', 0),
(16, 2, 38, 'Test', '2017-10-11', '2017-10-11 01:10:44', 0),
(17, 3, 37, 'Test', '2017-10-11', '2017-10-11 01:15:41', 0),
(18, 2, 40, 'San Jose', '2017-10-11', '2017-10-11 18:00:53', 0),
(19, 2, 41, 'San Jose', '2017-10-11', '2017-10-11 18:14:16', 0),
(20, 2, 44, 'San Jose', '2017-10-14', '2017-10-14 00:56:42', 0),
(21, 1, 45, 'San Jose', '2017-10-14', '2017-10-14 00:57:16', 0),
(22, 2, 47, 'San Jose', '2017-10-16', '2017-10-16 19:35:36', 0),
(23, 1, 53, 'Test', '2017-10-17', '2017-10-17 18:56:26', 0),
(24, 1, 55, 'Sadguru', '2017-10-31', '2017-10-31 18:51:28', 0),
(25, 1, 56, 'Sadguru', '2017-10-31', '2017-10-31 17:03:06', 0),
(26, 2, 66, 'Tester', '2017-11-10', '2017-11-10 01:08:36', 0),
(27, 1, 72, 'School', '2017-11-10', '2017-11-10 10:43:00', 0),
(28, 1, 73, 'School', '2017-11-10', '2017-11-10 10:49:37', 0),
(29, 1, 74, 'School', '2017-11-10', '2017-11-10 10:54:14', 0),
(30, 1, 75, 'School', '2017-11-10', '2017-11-10 10:57:27', 0),
(31, 3, 24, 'Hack', '2017-11-16', '2017-11-16 06:40:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_security_question`
--

CREATE TABLE `eb_security_question` (
  `sq_id` int(11) NOT NULL,
  `sq_question` varchar(100) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_security_question`
--

INSERT INTO `eb_security_question` (`sq_id`, `sq_question`, `created_on`, `update_on`, `del_in`) VALUES
(1, 'Name of your elementary or primary school?', '2017-09-25', '2017-09-29 18:04:16', 0),
(2, 'Name of the city where you got your first job?', '2017-09-25', '2017-09-29 18:03:55', 0),
(3, 'What was the name of the company where you had your first job?', '2017-09-25', '2017-09-25 10:12:23', 0),
(4, 'What was your childhood nickname?', '2017-09-25', '2017-09-25 10:12:38', 0),
(5, 'What is your first pet\'s name?', '2017-09-29', '2017-09-29 18:03:05', 0),
(6, 'Your favorite movie name?', '2017-09-29', '2017-09-29 18:04:38', 0),
(7, 'The city where you first met your spouse?', '2017-09-29', '2017-09-29 18:05:12', 0),
(8, 'Name of your favorite actor?', '2017-09-29', '2017-09-29 18:05:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_services_job`
--

CREATE TABLE `eb_services_job` (
  `sj_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'service seeker',
  `provider_id` int(11) NOT NULL COMMENT 'service provider',
  `post_offered_id` int(11) NOT NULL COMMENT 'use for seeker cannot able to apply on same job',
  `rehire_sj_id` int(11) NOT NULL COMMENT 'The job which is rehire',
  `schedule_by` int(11) NOT NULL COMMENT 'who create the schedule for this job',
  `canceled_by` int(11) NOT NULL,
  `dispute_by` int(11) NOT NULL,
  `reported_by` text NOT NULL COMMENT 'is reported by',
  `sj_title` varchar(100) NOT NULL,
  `sj_description` text NOT NULL,
  `sj_rate_type` int(11) NOT NULL COMMENT '0 = hourly, 1 = fixed',
  `sj_rate` varchar(100) NOT NULL,
  `sj_work_hr` varchar(100) NOT NULL COMMENT 'how much hour provider worked',
  `sj_total` varchar(100) NOT NULL COMMENT 'total price pay to the provider without service charge',
  `sj_net_total` varchar(100) NOT NULL COMMENT 'total price pay to the provider with service charge',
  `sj_prefered_type` varchar(100) NOT NULL,
  `sj_prefrence` text NOT NULL,
  `sj_business_details` varchar(256) NOT NULL,
  `sj_background_check` varchar(256) NOT NULL,
  `schedule_start_date` varchar(50) NOT NULL,
  `schedule_end_date` varchar(20) NOT NULL,
  `sj_notes` text NOT NULL,
  `sj_quit_notes` text NOT NULL,
  `sj_status` varchar(100) NOT NULL COMMENT 'OPEN, CLOSE',
  `sj_rating` varchar(10) NOT NULL,
  `sj_rating_title` varchar(100) NOT NULL,
  `sj_rating_descp` varchar(512) NOT NULL,
  `sj_invoice_no` varchar(100) NOT NULL,
  `completed_date` datetime NOT NULL,
  `sj_service_category` varchar(100) NOT NULL,
  `sj_sub_service_category` text NOT NULL,
  `disputed_date` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL,
  `is_deleted_by` int(11) NOT NULL COMMENT 'seeker or provider',
  `is_offer` tinyint(1) NOT NULL,
  `is_rehire` int(11) NOT NULL COMMENT '0 = no, 1 = yes',
  `sj_address` varchar(100) NOT NULL,
  `pos_lat` varchar(255) NOT NULL,
  `pos_long` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL COMMENT '0 = not yet payment, 1 = payment success, 2 = payment fail'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_services_job`
--

INSERT INTO `eb_services_job` (`sj_id`, `user_id`, `provider_id`, `post_offered_id`, `rehire_sj_id`, `schedule_by`, `canceled_by`, `dispute_by`, `reported_by`, `sj_title`, `sj_description`, `sj_rate_type`, `sj_rate`, `sj_work_hr`, `sj_total`, `sj_net_total`, `sj_prefered_type`, `sj_prefrence`, `sj_business_details`, `sj_background_check`, `schedule_start_date`, `schedule_end_date`, `sj_notes`, `sj_quit_notes`, `sj_status`, `sj_rating`, `sj_rating_title`, `sj_rating_descp`, `sj_invoice_no`, `completed_date`, `sj_service_category`, `sj_sub_service_category`, `disputed_date`, `created_on`, `update_on`, `del_in`, `is_deleted_by`, `is_offer`, `is_rehire`, `sj_address`, `pos_lat`, `pos_long`, `payment_status`) VALUES
(1, 3, 0, 0, 0, 0, 0, 0, '0', 'In need of a dog walker!', 'Hello EezyBee community. I\'ve been working a lot recently, and as a result my dogs have been a little cooped up in the house!\r\n\r\nI have a yorkie and a toy poodle (both boys). They are both a little wild when it comes to walking, but if you\'re firm with them you should have no problem. Please note that the yorkie can be a bit aggressive at times.\r\n\r\nI need someone to be able to walk them for the following days:\r\nMonday (3:00PM)\r\nWednesday (1:00PM)\r\nFriday (12:00PM)\r\n\r\nIf you\'re interested, shoot me an offer and I\'ll be sure to take you into consideration. Thanks!', 0, '25', '', '', '', '0', '[\"Experienced dog walkers\",\"Dog owners\",\"Dog lovers\"]', 'uploads/postoffered/15071370142014_Job_Seeker_Survey.pdf', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Pets and Animals', 'Pet Walking', '0000-00-00 00:00:00', '2017-10-04 17:10:14', '2017-11-18 05:27:38', 0, 0, 0, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.2364125', '-121.7779227', 0),
(2, 3, 0, 0, 0, 0, 0, 0, '0', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 0, '15', '', '', '', '', '[\"Dog lovers\"]', 'uploads/postoffered/15071379372014_Job_Seeker_Survey.pdf', 'uploads/postoffered/15071379372014_Job_Seeker_Survey1.pdf', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '2017-10-04 17:40:54', '2017-11-18 05:27:42', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.23667871167796', '-121.77818646151799', 0),
(7, 3, 0, 0, 0, 0, 0, 0, '0', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 0, '15', '', '', '', '', '[\"Dog lovers\"]', 'uploads/postoffered/15071379372014_Job_Seeker_Survey.pdf', 'uploads/postoffered/15071379372014_Job_Seeker_Survey1.pdf', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '2017-10-04 23:19:24', '2017-11-18 05:28:15', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.23667871167796', '-121.77818646151799', 0),
(19, 8, 0, 0, 0, 0, 0, 0, '0', 'Need a Fitness trainer', 'There\'s lot of hate out there for a text that amounts to little more than garbled words in an old language. The villagers are out there with a vengeance to get that Frankenstein, wielding torches and pitchforks, wanting to tar and feather it at the least, running it out of town in shame.\r\n\r\nOne of the villagers, Kristina Halvorson from Adaptive Path, holds steadfastly to the notion that design can’t be tested without real content:\r\n\r\nI’ve heard the argument that “lorem ipsum” is effective in wireframing or design because it helps people focus on the actual layout, or color scheme, or whatever. What kills me here is that we’re talking about creating a user experience that will (whether we like it or not) be DRIVEN by words. The entire structure of the page or app flow is FOR THE WORDS.', 0, '23', '', '', '', '0', '[\"Bodybuilding\",\"Weight loss\",\"Fat loss\",\"Stay healthy\"]', 'uploads/postoffered/1507263625dispute.png', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Fitness', 'CrossFit,Group Exercise,Massage,Personal Training', '0000-00-00 00:00:00', '2017-10-06 04:20:25', '2017-11-16 09:40:59', 0, 0, 0, 0, '99, Mithi Khadi Rd, Sahara Darwaja, New Textile Market, Surat, Gujarat 395002, India', '21.1878911', '72.8424058', 0),
(24, 3, 0, 0, 0, 0, 0, 0, '0', 'Home Organization / Family Management', 'Offering a home organization and family management service to leverage the productivity and living quality of you and your family.', 0, '50.00', '', '', '', '', '[\"Design\",\"House management\",\"Family management\",\"Space planning\",\"Schedule coordination\"]', 'uploads/postoffered/1507323330Screen_Shot_2017-07-09_at_5_57_40_PM.png', 'uploads/postoffered/1507323330Screen_Shot_2017-06-29_at_1_27_47_PM.png', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '2017-10-06 20:56:45', '2017-11-18 05:26:25', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.2364', '-121.7779', 0),
(27, 17, 0, 0, 0, 0, 0, 0, '0', 'I need help around the house!', 'Any handy men/women in the area? I need a solid fence and home security system installed in my house! I know it\'s a lot to ask for so I\'m willing to hire on a full-time basis. Feel free to message me or my husband and we can work something out, thanks so much!', 1, '5000', '', '', '', '0', '[\"Handy Person\",\"Expert\",\"Home Security\",\"Fencing\",\"Gate\"]', 'uploads/postoffered/15075683192014_Job_Seeker_Survey.pdf', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Household', 'Fence and Gate Installation,Home Security,Home Security Systems', '0000-00-00 00:00:00', '2017-10-09 16:58:39', '2017-11-21 00:05:08', 1, 17, 0, 0, '1 Washington Sq, San Jose, CA 95192, USA', '37.3351874', '-121.8810715', 0),
(31, 4, 0, 0, 0, 0, 0, 0, '0', 'Looking for home designer for Home Event.', 'I am looking for someone who are mastered in home decoration. i am looking for my next month event at my home.\r\n\r\nFree food will be provided.\r\n\r\nThank you.', 0, '27', '', '', '', '0', '[\"Free food\",\"Event\",\"Decoration\",\"Design\"]', 'uploads/postoffered/1507571538Screen_Shot_2017-09-13_at_5_42_13_PM.png', '', '', '', '', '', 'CLOSE', '', '', '', '', '0000-00-00 00:00:00', 'Events', 'Catering,Entertainment,Event Decoration,Live Music', '0000-00-00 00:00:00', '2017-10-09 17:52:18', '2017-11-20 18:11:27', 0, 0, 0, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.2364125', '-121.7779227', 0),
(36, 17, 0, 0, 0, 0, 0, 0, '0', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 0, '15', '', '', '', '', '[\"Dog lovers\"]', 'uploads/postoffered/15071379372014_Job_Seeker_Survey.pdf', 'uploads/postoffered/15071379372014_Job_Seeker_Survey1.pdf', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '2017-10-09 19:03:34', '2017-11-18 05:23:38', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.23667871167796', '-121.77818646151799', 0),
(52, 3, 0, 0, 0, 0, 0, 0, '0', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 0, '15', '', '', '', '', '[\"Dog lovers\"]', 'uploads/postoffered/15071379372014_Job_Seeker_Survey.pdf', 'uploads/postoffered/15071379372014_Job_Seeker_Survey1.pdf', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', '2017-10-09 22:01:47', '2017-11-18 05:27:31', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.23667871167796', '-121.77818646151799', 0),
(68, 4, 0, 0, 0, 0, 0, 0, '0', 'Need food delivery boy', 'I am the one who is working near by my home. I would like to have someone who can deliver food for my lunch everyday from my home to office. Let me know if anyone interested in type of service.', 0, '20', '', '', '', '0', '[\"Boy\",\"Delivery\",\"Office\"]', '', '', '', '', '', '', 'CLOSE', '', '', '', '', '0000-00-00 00:00:00', 'Food & Drink', 'Delivery,Food Delivery', '0000-00-00 00:00:00', '2017-10-10 18:28:04', '2017-11-20 18:11:23', 0, 0, 0, 0, 'Los Angeles, CA, USA', '34.0522342', '-118.2436849', 0),
(152, 31, 0, 0, 0, 0, 0, 0, '', 'I need Handyman', 'I\'m looking for multi talented person do the some work.', 0, '10', '', '', '', '0', 'null', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Handyman', 'Car Washes,General Labor,Repair', '0000-00-00 00:00:00', '2017-10-20 07:25:35', '2017-11-18 05:27:10', 0, 0, 0, 0, 'Unnamed Road, Lodhipura, Baba Mahalle Lay-out, Shufi Nagar, Kamptee, Maharashtra 441001, India', '21.2083664', '79.2031609', 0),
(155, 31, 0, 0, 0, 0, 0, 0, '', 'I\'m Plumber', ' I\'m available any small work new installation work.', 0, '10', '', '', '', '0', '[\"Male\"]', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Handyman', 'Plumbing', '0000-00-00 00:00:00', '2017-10-23 09:26:12', '2017-11-18 05:26:36', 0, 0, 0, 0, '1, S.B.Colony, Shufi Nagar, Kamptee, Maharashtra 441001, India', '21.214436', '79.1893447', 0),
(165, 4, 0, 0, 0, 0, 0, 0, '', 'Looking for website developer', 'I am looking for website developer who can spend some time on weekend on my website to find-out issue or any bugs.', 0, '35', '', '', '', '0', '[\"Developer\",\"Boys\"]', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Other', 'website developer,Technical', '0000-00-00 00:00:00', '2017-10-30 19:15:44', '2017-11-18 05:26:38', 0, 0, 0, 0, '42160 Gatewood St, Fremont, CA 94538, USA', '37.5233298', '-121.9596276', 0),
(166, 3, 0, 0, 0, 0, 0, 0, '', 'Dog Walking Service Required...Please!', 'Anyone available to come to the San Jose area to walk my Chihuahua? \r\n\r\nPlease let me know, I\'ll need someone Mondays, Wednesdays, and Fridays around 1:00PM!\r\n\r\nThanks so much.', 0, '25', '', '', '', '0', '[\"Dog Walker\"]', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Pets and Animals', 'Pet Walking', '0000-00-00 00:00:00', '2017-10-31 16:48:07', '2017-11-18 05:28:05', 0, 0, 0, 0, '1 Washington Sq, San Jose, CA 95192, USA', '37.3351874', '-121.8810715', 0),
(168, 55, 0, 0, 0, 0, 0, 0, '', 'I am looking for driver', 'I am looking for someone who can drive me in their own car on next Sunday, From my home to Airport. Also drive me back from Airport to home in evening around 9 o\'clock.\r\n\r\nI am going for event in morning and coming back on next day on Monday. \r\n\r\nIf anyone interested i would like to pya them good amount.\r\n\r\nThank you', 0, '25', '', '', '', '0', '[\"Boys\\/Girls\",\"Good Driving\",\"Sunday\\/Monday\"]', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Automotive', 'Driving Lessons,Transportation', '0000-00-00 00:00:00', '2017-10-31 17:39:40', '2017-11-18 05:26:43', 0, 0, 0, 0, '60 Descanso Dr, San Jose, CA 95134, USA', '37.4059503', '-121.9399195', 0),
(169, 55, 0, 0, 0, 0, 0, 0, '', 'I need driver for drop off', 'I am looking for someone who can drive me in their own car on next Sunday, From my home to Airport. Also drive me back from Airport to home in evening around 9 o\'clock.\r\n\r\nI am going for event in morning and coming back on next day on Monday. \r\n\r\nIf anyone interested i would like to pya them good amount.\r\n\r\nThank you', 0, '5', '', '', '', '0', '[\"Boys\\/girls\",\"Sunday\\/Monday\",\"Good Driver\"]', '', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Automotive', 'Transportation', '0000-00-00 00:00:00', '2017-10-31 17:44:54', '2017-11-18 05:27:14', 0, 0, 0, 0, '60 Descanso Dr, San Jose, CA 95134, USA', '37.4059503', '-121.9399195', 0),
(208, 4, 0, 0, 0, 0, 0, 0, '', 'Want to get my iPhone repaired', 'I need someone who can check my old iPhone and get it repaired.', 0, '12', '', '', '', '0', '[\"IPhone\",\"Repairing\",\"Urgent\"]', '', '', '', '', '', '', 'CLOSE', '', '', '', '', '0000-00-00 00:00:00', 'Electronics', 'Computer Training,Electronic Assembly', '0000-00-00 00:00:00', '2017-11-09 20:54:15', '2017-11-20 18:11:16', 0, 0, 0, 0, 'Santa Clara, CA, USA', '37.3541079', '-121.9552356', 0),
(264, 4, 0, 0, 0, 0, 0, 0, '', 'Looking for Quality engineer', 'Hello,\r\n\r\nI am working with my friends on some project. Which is based in AI.\r\n\r\nWe need urgent tester who qualify for Quality Engineer.\r\n\r\nLet me know anyone of you have contact for thos kind of student.\r\n\r\nThank you.', 0, '25', '', '', '', '0', '[\"Student\",\"Internengineer\",\"QA\",\"Testing\",\"AI\"]', '', '', '', '', '', '', 'CLOSE', '', '', '', '', '0000-00-00 00:00:00', 'Education', 'Academic Preparation,Coding Workshop', '0000-00-00 00:00:00', '2017-11-13 22:24:22', '2017-11-20 18:11:11', 0, 0, 0, 0, '2933 Bunker Hill Ln #120, Santa Clara, CA 95054, USA', '37.4069445', '-121.9797628', 0),
(266, 8, 0, 0, 0, 8, 0, 0, '', 'Need a Top class developer', 'Need a Top class developer Need a Top class developer Need a Top class developer Need a Top class developer Need a Top class developer\r\n\r\nNeed a Top class developerNeed a Top class developer Need a Top class developer Need a Top class developer\r\n Need a Top class developer Need a Top class developer.', 0, '23', '', '', '', '0', '[\"Top\",\"Developer\",\"Technology\",\"Education\",\"Tutor\"]', 'uploads/postoffered/1510654492DefaultBanner.png', '', '', '', '', '', 'OPEN', '', '', '', '', '0000-00-00 00:00:00', 'Education', 'Post Graduate Advisement,Technology Education,Tutoring', '0000-00-00 00:00:00', '2017-11-14 10:14:52', '2017-11-18 05:25:19', 0, 0, 0, 0, 'Panas Gam Farm Rd, Panaas, Athwa, Surat, Gujarat 395007, India', '21.1695816', '72.8011511', 0),
(278, 4, 0, 0, 0, 0, 0, 0, '', 'Need driver', 'Looking for someone who know how to drive ', 1, '100', '', '', '', '0', '[\"Driver\",\"Lession\"]', '', '', '', '', '', '', 'CLOSE', '', '', '', '', '0000-00-00 00:00:00', 'Automotive', 'Driving Lessons', '0000-00-00 00:00:00', '2017-11-15 00:45:54', '2017-11-20 18:11:07', 0, 0, 0, 0, '1293 Ashcroft Ln, San Jose, CA 95118, USA', '37.2430939', '-121.8853756', 0),
(336, 3, 0, 29, 0, 3, 0, 3, '', 'Need your dog walked?', 'If you need your dog walked, you\'ve come to the right person.\r\n\r\nI have experience walking all types of breeds. Let me know the details of your furry friend and I\'ll see what I can work into my schedule. Thanks!', 0, '25', '2', '50', '', '0', 'null', '', '', '11/24/2017 1:01 PM', '11/29/2017 2:01 PM', '', '', '', '', '', '', '', '2017-11-21 21:02:20', 'Pets and Animals', 'Pet Walking', '0000-00-00 00:00:00', '2017-11-21 21:01:25', '2017-11-21 21:02:56', 0, 0, 1, 0, '6203 San Ignacio Ave, San Jose, CA 95119, USA', '37.236717435196354', '-121.77830176892402', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_services_job_application`
--

CREATE TABLE `eb_services_job_application` (
  `id` int(11) NOT NULL,
  `sj_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `is_deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_services_job_application`
--

INSERT INTO `eb_services_job_application` (`id`, `sj_id`, `user_id`, `status`, `is_deleted_by`) VALUES
(1, 336, 1, 'DISPUTE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_services_job_request`
--

CREATE TABLE `eb_services_job_request` (
  `id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_services_view_by`
--

CREATE TABLE `eb_services_view_by` (
  `post_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_services_view_by`
--

INSERT INTO `eb_services_view_by` (`post_id`, `job_id`, `provider_id`, `seeker_id`) VALUES
(284, 0, 5, 31),
(19, 0, 5, 8),
(27, 0, 2, 0),
(1, 0, 2, 3),
(169, 0, 2, 55),
(166, 0, 2, 3),
(266, 0, 5, 8),
(29, 0, 4, 1),
(9, 0, 4, 9),
(168, 0, 1, 55),
(29, 0, 3, 1),
(166, 0, 5, 3),
(169, 0, 5, 55),
(165, 0, 5, 4),
(1, 0, 5, 3),
(168, 0, 2, 55);

-- --------------------------------------------------------

--
-- Table structure for table `eb_service_category`
--

CREATE TABLE `eb_service_category` (
  `sc_id` int(11) NOT NULL,
  `sc_name` varchar(100) NOT NULL,
  `sc_description` varchar(150) NOT NULL,
  `sc_parent_id` int(11) NOT NULL,
  `default_value` int(11) NOT NULL COMMENT '0 = system service category, 1 = user new added service category',
  `select_cat_img` text NOT NULL,
  `cat_img` text NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_service_category`
--

INSERT INTO `eb_service_category` (`sc_id`, `sc_name`, `sc_description`, `sc_parent_id`, `default_value`, `select_cat_img`, `cat_img`, `created_on`, `updated_on`, `del_in`) VALUES
(1, 'Art', '', 0, 0, 'uploads/category/1503594170Art_95.png', 'uploads/category/1503594170Art_05.png', '2017-08-21 18:49:07', '2017-08-24 17:02:50', 0),
(2, 'Automotive', '', 0, 0, 'uploads/category/1503594386Automotive_92.png', 'uploads/category/1503594386Automotive_03.png', '2017-08-21 18:49:12', '2017-08-24 17:06:26', 0),
(3, 'Beauty', '', 0, 0, 'uploads/category/1503594395Beauty_129.png', 'uploads/category/1503594395Beauty_49.png', '2017-08-21 18:49:18', '2017-08-24 17:06:35', 0),
(4, 'Delivery', '', 0, 0, 'uploads/category/1503678785Delivery_118.png', 'uploads/category/1503678785Delivery_33.png', '2017-08-21 18:49:29', '2017-08-25 16:33:05', 0),
(5, 'Education', '', 0, 0, 'uploads/category/1503594475Education_98.png', 'uploads/category/1503594475Education_10.png', '2017-08-21 18:51:06', '2017-08-24 17:07:55', 0),
(6, 'Electronics', '', 0, 0, 'uploads/category/1503679194Electronics_160.png', 'uploads/category/1503679194Electronics_85.png', '2017-08-21 18:51:42', '2017-08-25 16:39:54', 0),
(7, 'Events', '', 0, 0, 'uploads/category/1503594825Events_127.png', 'uploads/category/1503594825Events_48.png', '2017-08-21 18:51:51', '2017-08-24 17:13:45', 0),
(8, 'Family', '', 0, 0, 'uploads/category/1503594734Family_127.png', 'uploads/category/1503594734Family_48.png', '2017-08-21 18:51:58', '2017-08-24 17:12:14', 0),
(9, 'Finance', '', 0, 0, 'uploads/category/1503594748Finance_109.png', 'uploads/category/1503594748Finance_25.png', '2017-08-21 18:52:05', '2017-08-24 17:12:28', 0),
(10, 'Fitness', '', 0, 0, 'uploads/category/1503594795Fitness_96.png', 'uploads/category/1503594795Fitness_08.png', '2017-08-21 18:52:14', '2017-08-24 17:13:15', 0),
(11, 'Food & Drink', '', 0, 0, 'uploads/category/1503594810Food--Drink_111.png', 'uploads/category/1503594810Food--Drink_27.png', '2017-08-21 18:52:25', '2017-08-24 17:13:30', 0),
(12, 'Handyman', '', 0, 0, 'uploads/category/1503594915Handyman_148.png', 'uploads/category/1503594915Handyman_70.png', '2017-08-21 18:52:32', '2017-08-24 17:15:15', 0),
(13, 'Haul Away', '', 0, 0, 'uploads/category/1503679235Haul-Away_156.png', 'uploads/category/1503679235Haul-Away_79.png', '2017-08-21 18:52:53', '2017-08-25 16:40:35', 0),
(14, 'Health & Wellness', '', 0, 0, 'uploads/category/1503594958Health--wellness_96.png', 'uploads/category/1503594958Health--wellness_08.png', '2017-08-21 18:53:01', '2017-08-24 17:15:58', 0),
(15, 'Household', '', 0, 0, 'uploads/category/1503594980Household_116.png', 'uploads/category/1503594980Household_33.png', '2017-08-21 18:53:12', '2017-08-24 17:16:20', 0),
(16, 'Legal', '', 0, 0, 'uploads/category/1503595004Legal_147.png', 'uploads/category/1503595004Legal_70.png', '2017-08-21 18:53:21', '2017-08-24 17:16:44', 0),
(17, 'Music', '', 0, 0, 'uploads/category/1503595017Music_129.png', 'uploads/category/1503595017Music_50.png', '2017-08-21 18:53:28', '2017-08-24 17:16:57', 0),
(18, 'Personal', '', 0, 0, 'uploads/category/1503595032Personal_150.png', 'uploads/category/1503595032Personal_73.png', '2017-08-21 18:53:51', '2017-08-24 17:17:12', 0),
(19, 'Pets and Animals', '', 0, 0, 'uploads/category/1503595048Pets-and-Animals_139.png', 'uploads/category/1503595048Pets-and-Animals_58.png', '2017-08-21 18:54:00', '2017-08-24 17:17:28', 0),
(20, 'Photography/Video', '', 0, 0, 'uploads/category/1503595061Photography-video_118.png', 'uploads/category/1503595061Photography-Video_33.png', '2017-08-21 18:54:10', '2017-08-24 17:17:41', 0),
(21, 'Real Estate', '', 0, 0, 'uploads/category/1503595088Real-Estate_113.png', 'uploads/category/1503595088Real-Estate_25.png', '2017-08-21 18:54:17', '2017-08-24 17:18:08', 0),
(22, 'Tailoring', '', 0, 0, 'uploads/category/1503595103Tailoring_92.png', 'uploads/category/1503595103Tailoring_03.png', '2017-08-21 18:54:23', '2017-08-24 17:18:23', 0),
(23, 'Travel', '', 0, 0, 'uploads/category/1503595114Travel_131.png', 'uploads/category/1503595114Travel_50.png', '2017-08-21 18:54:30', '2017-08-24 17:18:34', 0),
(24, 'Yard & Gardening', '', 0, 0, 'uploads/category/1503595124Yard--Gardening_148.png', 'uploads/category/1503595124Yard--Gardening_70.png', '2017-08-21 18:54:37', '2017-08-24 17:18:44', 0),
(25, 'Other', '', 0, 0, '', '', '2017-08-21 18:54:44', '2017-08-21 18:54:44', 0),
(26, 'Art Lessons', '', 1, 0, '', '', '2017-08-21 18:55:19', '2017-08-21 18:55:19', 0),
(27, 'Artwork', '', 1, 0, '', '', '2017-08-21 18:55:29', '2017-08-21 18:55:29', 0),
(28, 'Fashion', '', 1, 0, '', '', '2017-08-21 18:55:35', '2017-08-21 18:55:35', 0),
(29, 'Graphic Design', '', 1, 0, '', '', '2017-08-21 18:55:47', '2017-08-21 18:55:47', 0),
(30, 'Interior Design', '', 1, 0, '', '', '2017-08-21 18:55:56', '2017-08-21 18:55:56', 0),
(31, 'Landscape Painting', '', 1, 0, '', '', '2017-08-21 18:56:18', '2017-08-21 18:56:18', 0),
(32, 'Logo Design', '', 1, 0, '', '', '2017-08-21 18:56:25', '2017-08-21 18:56:25', 0),
(33, 'Marketing Materials Design', '', 1, 0, '', '', '2017-08-21 18:56:32', '2017-08-21 18:56:32', 0),
(34, 'Painting', '', 1, 0, '', '', '2017-08-21 18:56:39', '2017-08-21 18:56:39', 0),
(35, 'Portrait Painting', '', 1, 0, '', '', '2017-08-21 18:56:45', '2017-08-21 18:56:45', 0),
(36, 'Tattoo', '', 1, 0, '', '', '2017-08-21 18:56:52', '2017-10-06 18:39:11', 1),
(37, 'Tattoo Removal', '', 1, 0, '', '', '2017-08-21 18:56:58', '2017-08-21 18:56:58', 0),
(38, 'Auto Detailing', '', 2, 0, '', '', '2017-08-21 19:43:37', '2017-08-21 19:43:37', 0),
(39, 'Auto Painting', '', 2, 0, '', '', '2017-08-21 19:43:47', '2017-08-21 19:43:47', 0),
(40, 'Body Work', '', 2, 0, '', '', '2017-08-21 19:43:55', '2017-08-21 19:43:55', 0),
(41, 'Car Wash', '', 2, 0, '', '', '2017-08-21 19:44:04', '2017-08-21 19:44:04', 0),
(42, 'Chauffeur Services', '', 2, 0, '', '', '2017-08-21 19:44:16', '2017-08-21 19:44:16', 0),
(43, 'Dent Repair', '', 2, 0, '', '', '2017-08-21 19:44:24', '2017-08-21 19:44:24', 0),
(44, 'Driving Lessons', '', 2, 0, '', '', '2017-08-21 19:44:34', '2017-08-21 19:44:34', 0),
(45, 'Mechanic', '', 2, 0, '', '', '2017-08-21 19:47:05', '2017-08-21 19:47:05', 0),
(46, 'Oil Change', '', 2, 0, '', '', '2017-08-21 19:47:14', '2017-08-21 19:47:14', 0),
(47, 'Plug-in Vehicle Charger', '', 2, 0, '', '', '2017-08-21 19:47:22', '2017-08-21 19:47:22', 0),
(48, 'Rentals', '', 2, 0, '', '', '2017-08-21 19:47:29', '2017-08-21 19:47:29', 0),
(49, 'Sales', '', 2, 0, '', '', '2017-08-21 19:47:35', '2017-08-21 19:47:35', 0),
(50, 'Smog Check', '', 2, 0, '', '', '2017-08-21 19:47:44', '2017-08-21 19:47:44', 0),
(51, 'Tire Repair', '', 2, 0, '', '', '2017-08-21 19:47:53', '2017-08-21 19:47:53', 0),
(52, 'Towing', '', 2, 0, '', '', '2017-08-21 19:48:01', '2017-08-21 19:48:01', 0),
(53, 'Transportation', '', 2, 0, '', '', '2017-08-21 19:48:08', '2017-08-21 19:48:08', 0),
(54, 'Eyebrows/Lashes', '', 3, 0, '', '', '2017-08-21 19:48:17', '2017-08-21 19:48:17', 0),
(55, 'Facial Treatment', '', 3, 0, '', '', '2017-08-21 19:48:28', '2017-08-21 19:48:28', 0),
(56, 'Fashion', '', 3, 0, '', '', '2017-08-21 19:48:36', '2017-08-21 19:48:36', 0),
(57, 'Foot Care', '', 3, 0, '', '', '2017-08-21 19:48:44', '2017-08-21 19:48:44', 0),
(58, 'Hair', '', 3, 0, '', '', '2017-08-21 19:48:51', '2017-08-21 19:48:51', 0),
(59, 'Jewelry', '', 3, 0, '', '', '2017-08-21 19:48:58', '2017-08-21 19:48:58', 0),
(60, 'Makeup', '', 3, 0, '', '', '2017-08-21 19:49:04', '2017-08-21 19:49:04', 0),
(61, 'Manicure', '', 3, 0, '', '', '2017-08-21 19:49:11', '2017-08-21 19:49:11', 0),
(62, 'Massage', '', 3, 0, '', '', '2017-08-21 19:49:18', '2017-08-21 19:49:18', 0),
(63, 'Modeling', '', 3, 0, '', '', '2017-08-21 19:49:25', '2017-08-21 19:49:25', 0),
(64, 'Nails', '', 3, 0, '', '', '2017-08-21 19:49:34', '2017-08-21 19:49:34', 0),
(65, 'Pedicure', '', 3, 0, '', '', '2017-08-21 19:49:41', '2017-08-21 19:49:41', 0),
(66, 'Skin Care', '', 3, 0, '', '', '2017-08-21 19:49:51', '2017-08-21 19:49:51', 0),
(67, 'Spa', '', 3, 0, '', '', '2017-08-21 19:50:02', '2017-08-21 19:50:02', 0),
(68, 'Tanning', '', 3, 0, '', '', '2017-08-21 19:50:09', '2017-08-21 19:50:09', 0),
(69, 'Tattoos', '', 3, 0, '', '', '2017-08-21 19:50:18', '2017-10-06 18:39:09', 1),
(70, 'Waxing & Hair Removal', '', 3, 0, '', '', '2017-08-21 19:50:26', '2017-08-21 19:50:26', 0),
(71, 'Bulk Delivery', '', 4, 0, '', '', '2017-08-21 19:50:37', '2017-08-21 19:50:37', 0),
(72, 'Courier', '', 4, 0, '', '', '2017-08-21 19:50:45', '2017-08-21 19:50:45', 0),
(73, 'Food Delivery', '', 4, 0, '', '', '2017-08-21 19:50:57', '2017-08-21 19:50:57', 0),
(74, 'Luggage Delivery', '', 4, 0, '', '', '2017-08-21 19:51:07', '2017-08-21 19:51:07', 0),
(75, 'Shopping', '', 4, 0, '', '', '2017-08-21 19:51:17', '2017-08-21 19:51:17', 0),
(76, 'Academic Counseling', '', 5, 0, '', '', '2017-08-21 19:51:27', '2017-08-21 19:51:27', 0),
(77, 'Academic Preparation', '', 5, 0, '', '', '2017-08-21 19:51:36', '2017-08-21 19:51:36', 0),
(78, 'After School Care', '', 5, 0, '', '', '2017-08-21 19:51:45', '2017-10-06 18:24:51', 0),
(79, 'Assistive Teaching', '', 5, 0, '', '', '2017-08-21 19:51:55', '2017-08-21 19:51:55', 0),
(80, 'Child Care', '', 5, 0, '', '', '2017-08-21 19:52:05', '2017-08-21 19:52:05', 0),
(81, 'Coding Workshop', '', 5, 0, '', '', '2017-08-21 19:52:14', '2017-08-21 19:52:14', 0),
(82, 'Communications Seminars', '', 5, 0, '', '', '2017-08-21 19:52:27', '2017-08-21 19:52:27', 0),
(83, 'Cooking Lessons', '', 5, 0, '', '', '2017-08-21 19:52:35', '2017-08-21 19:52:35', 0),
(84, 'Design Class', '', 5, 0, '', '', '2017-08-21 19:52:47', '2017-08-21 19:52:47', 0),
(85, 'Digital Education', '', 5, 0, '', '', '2017-08-21 19:55:22', '2017-08-21 19:55:22', 0),
(86, 'Early Childhood', '', 5, 0, '', '', '2017-08-21 19:55:34', '2017-08-21 19:55:34', 0),
(87, 'Financial Management', '', 5, 0, '', '', '2017-08-21 19:55:42', '2017-08-21 19:55:42', 0),
(88, 'Group Study', '', 5, 0, '', '', '2017-08-21 19:55:50', '2017-08-21 19:55:50', 0),
(89, 'Health Education/Workshops', '', 5, 0, '', '', '2017-08-21 19:55:58', '2017-08-21 19:55:58', 0),
(90, 'Home Schooling', '', 5, 0, '', '', '2017-08-21 19:56:07', '2017-08-21 19:56:07', 0),
(91, 'Language Lessons', '', 5, 0, '', '', '2017-08-21 19:56:15', '2017-08-21 19:56:15', 0),
(92, 'Meeting Room Space', '', 5, 0, '', '', '2017-08-21 19:56:24', '2017-08-21 19:56:24', 0),
(93, 'Music Lessons', '', 5, 0, '', '', '2017-08-21 19:56:32', '2017-08-21 19:56:32', 0),
(94, 'Post Graduate Advisement', '', 5, 0, '', '', '2017-08-21 19:56:43', '2017-08-21 19:56:43', 0),
(95, 'Safety Education', '', 5, 0, '', '', '2017-08-21 19:56:52', '2017-08-21 19:56:52', 0),
(96, 'SAT/MCAT Lessons', '', 5, 0, '', '', '2017-08-21 19:57:02', '2017-08-21 19:57:02', 0),
(97, 'Scholarship/Financial Aid Advisement', '', 5, 0, '', '', '2017-08-21 19:57:14', '2017-08-21 19:57:14', 0),
(98, 'Student Aid', '', 5, 0, '', '', '2017-08-21 19:57:23', '2017-08-21 19:57:23', 0),
(99, 'Student Transportation', '', 5, 0, '', '', '2017-08-21 19:57:32', '2017-08-21 19:57:32', 0),
(100, 'Teaching Certification', '', 5, 0, '', '', '2017-08-21 19:57:41', '2017-08-21 19:57:41', 0),
(101, 'Technology Education', '', 5, 0, '', '', '2017-08-21 19:57:51', '2017-08-21 19:57:51', 0),
(102, 'Tutoring', '', 5, 0, '', '', '2017-08-21 19:58:00', '2017-08-21 19:58:00', 0),
(103, 'Writing Workshops', '', 5, 0, '', '', '2017-08-21 19:58:06', '2017-08-21 19:58:06', 0),
(104, 'Computer Sales', '', 6, 0, '', '', '2017-08-21 19:58:17', '2017-08-21 19:58:17', 0),
(105, 'Computer Training', '', 6, 0, '', '', '2017-08-21 19:58:26', '2017-08-21 19:58:26', 0),
(106, 'Electronic Assembly', '', 6, 0, '', '', '2017-08-21 19:59:20', '2017-08-21 19:59:20', 0),
(107, 'Gadget Repair & Services', '', 6, 0, '', '', '2017-08-21 19:59:25', '2017-08-21 19:59:25', 0),
(108, 'Home Stereo/Videos', '', 6, 0, '', '', '2017-08-21 19:59:36', '2017-08-21 19:59:36', 0),
(109, 'Software Training', '', 6, 0, '', '', '2017-08-21 19:59:44', '2017-08-21 19:59:44', 0),
(110, 'Virus/Malware Removal', '', 6, 0, '', '', '2017-08-21 19:59:52', '2017-08-21 19:59:52', 0),
(111, 'Bartender', '', 7, 0, '', '', '2017-08-21 20:00:06', '2017-08-21 20:00:06', 0),
(112, 'Cake Decoration', '', 7, 0, '', '', '2017-08-21 20:00:17', '2017-08-21 20:00:17', 0),
(113, 'Catering', '', 7, 0, '', '', '2017-08-21 20:00:40', '2017-08-21 20:00:40', 0),
(114, 'Chefs', '', 7, 0, '', '', '2017-08-21 20:00:49', '2017-08-21 20:00:49', 0),
(115, 'Dancers', '', 7, 0, '', '', '2017-08-21 20:00:56', '2017-08-21 20:00:56', 0),
(116, 'DJ’s', '', 7, 0, '', '', '2017-08-21 20:01:05', '2017-08-21 20:01:05', 0),
(117, 'Entertainment', '', 7, 0, '', '', '2017-08-21 20:01:14', '2017-08-21 20:01:14', 0),
(118, 'Event Decoration', '', 7, 0, '', '', '2017-08-21 20:01:25', '2017-08-21 20:01:25', 0),
(119, 'Event Photography', '', 7, 0, '', '', '2017-08-21 20:01:35', '2017-08-21 20:01:35', 0),
(120, 'Event Planner', '', 7, 0, '', '', '2017-08-21 20:01:50', '2017-08-21 20:01:50', 0),
(121, 'Event Transportation', '', 7, 0, '', '', '2017-08-21 20:09:05', '2017-08-21 20:09:05', 0),
(122, 'Face Paint', '', 7, 0, '', '', '2017-08-21 20:09:16', '2017-08-21 20:09:16', 0),
(123, 'Fashion', '', 7, 0, '', '', '2017-08-21 20:09:43', '2017-08-21 20:09:43', 0),
(124, 'Florist', '', 7, 0, '', '', '2017-08-21 20:09:50', '2017-08-21 20:09:50', 0),
(125, 'Live Music', '', 7, 0, '', '', '2017-08-21 20:10:00', '2017-08-21 20:10:00', 0),
(126, 'Locations', '', 7, 0, '', '', '2017-08-21 20:10:10', '2017-08-21 20:10:10', 0),
(127, 'Makeup', '', 7, 0, '', '', '2017-08-21 20:10:18', '2017-08-21 20:10:18', 0),
(128, 'Party Bus', '', 7, 0, '', '', '2017-08-21 20:10:29', '2017-08-21 20:10:29', 0),
(129, 'Photo Booth', '', 7, 0, '', '', '2017-08-21 20:10:36', '2017-08-21 20:10:36', 0),
(130, 'Tables and Chairs', '', 7, 0, '', '', '2017-08-21 20:10:44', '2017-08-21 20:10:44', 0),
(131, 'Wedding Officiant', '', 7, 0, '', '', '2017-08-21 20:10:52', '2017-08-21 20:10:52', 0),
(132, 'Assistant Services', '', 8, 0, '', '', '2017-08-21 20:12:15', '2017-08-21 20:12:15', 0),
(133, 'Babysitter', '', 8, 0, '', '', '2017-08-21 20:12:22', '2017-08-21 20:12:22', 0),
(134, 'Child Care', '', 8, 0, '', '', '2017-08-21 20:12:30', '2017-08-21 20:12:30', 0),
(135, 'Counseling', '', 8, 0, '', '', '2017-08-21 20:12:39', '2017-08-21 20:12:39', 0),
(136, 'Family Care', '', 8, 0, '', '', '2017-08-21 20:12:48', '2017-08-21 20:12:48', 0),
(137, 'Family Cook', '', 8, 0, '', '', '2017-08-21 20:12:56', '2017-08-21 20:12:56', 0),
(138, 'Family Doctor', '', 8, 0, '', '', '2017-08-21 20:13:05', '2017-08-21 20:13:05', 0),
(139, 'Family Portraits', '', 8, 0, '', '', '2017-08-21 20:13:16', '2017-08-21 20:13:16', 0),
(140, 'Geriatric Services', '', 8, 0, '', '', '2017-08-21 20:13:27', '2017-08-21 20:13:27', 0),
(141, 'Home Care', '', 8, 0, '', '', '2017-08-21 20:13:35', '2017-08-21 20:13:35', 0),
(142, 'Home Security', '', 8, 0, '', '', '2017-08-21 20:13:43', '2017-08-21 20:13:43', 0),
(143, 'House Sitting', '', 8, 0, '', '', '2017-08-21 20:13:53', '2017-08-21 20:13:53', 0),
(144, 'Law Attorney', '', 8, 0, '', '', '2017-08-21 20:14:01', '2017-08-21 20:14:01', 0),
(145, 'Pet Sitter', '', 8, 0, '', '', '2017-08-21 20:14:10', '2017-10-06 18:31:31', 1),
(146, 'Small Pet Care', '', 8, 0, '', '', '2017-08-21 20:14:24', '2017-08-21 20:14:24', 0),
(147, 'Accounting/Tax Services', '', 9, 0, '', '', '2017-08-21 20:16:26', '2017-08-21 20:16:26', 0),
(148, 'Advisory Services', '', 9, 0, '', '', '2017-08-21 20:16:36', '2017-08-21 20:16:36', 0),
(149, 'Asset Recovery', '', 9, 0, '', '', '2017-08-21 20:16:45', '2017-08-21 20:16:45', 0),
(150, 'Bookkeeping', '', 9, 0, '', '', '2017-08-21 20:16:55', '2017-08-21 20:16:55', 0),
(151, 'Budget Preparation', '', 9, 0, '', '', '2017-08-21 20:17:03', '2017-08-21 20:17:03', 0),
(152, 'Business Loans', '', 9, 0, '', '', '2017-08-21 20:17:10', '2017-08-21 20:17:10', 0),
(153, 'Credit Repair', '', 9, 0, '', '', '2017-08-21 20:17:24', '2017-08-21 20:17:24', 0),
(154, 'Financial Projections', '', 9, 0, '', '', '2017-08-21 20:17:32', '2017-08-21 20:17:32', 0),
(155, 'Investment Advisory', '', 9, 0, '', '', '2017-08-21 20:17:39', '2017-08-21 20:17:39', 0),
(156, 'Legal Advice', '', 9, 0, '', '', '2017-08-21 20:17:48', '2017-08-21 20:17:48', 0),
(157, 'CrossFit', '', 10, 0, '', '', '2017-08-21 20:18:00', '2017-08-21 20:18:00', 0),
(158, 'Equipment', '', 10, 0, '', '', '2017-08-21 20:18:07', '2017-08-21 20:18:07', 0),
(159, 'Group Exercise', '', 10, 0, '', '', '2017-08-21 20:18:15', '2017-08-21 20:18:15', 0),
(160, 'Martial Arts', '', 10, 0, '', '', '2017-08-21 20:18:26', '2017-08-21 20:18:26', 0),
(161, 'Massage', '', 10, 0, '', '', '2017-08-21 20:18:34', '2017-08-21 20:18:34', 0),
(162, 'Nutrition', '', 10, 0, '', '', '2017-08-21 20:18:42', '2017-10-06 18:30:16', 1),
(163, 'Personal Training', '', 10, 0, '', '', '2017-08-21 20:18:52', '2017-08-21 20:18:52', 0),
(164, 'Physical Therapy', '', 10, 0, '', '', '2017-08-21 20:18:59', '2017-08-21 20:18:59', 0),
(165, 'Sports', '', 10, 0, '', '', '2017-08-21 20:19:11', '2017-08-21 20:19:11', 0),
(166, 'Swim Lessons', '', 10, 0, '', '', '2017-08-21 20:19:20', '2017-08-21 20:19:20', 0),
(167, 'Baking', '', 11, 0, '', '', '2017-08-21 20:19:31', '2017-08-21 20:19:31', 0),
(168, 'Barbecue/Grill', '', 11, 0, '', '', '2017-08-21 20:19:39', '2017-08-21 20:19:39', 0),
(169, 'Bartender', '', 11, 0, '', '', '2017-08-21 20:19:48', '2017-08-21 20:19:48', 0),
(170, 'Bulk Preparation', '', 11, 0, '', '', '2017-08-21 20:19:57', '2017-08-21 20:19:57', 0),
(171, 'Bulk Refrigeration Services', '', 11, 0, '', '', '2017-08-21 20:20:05', '2017-08-21 20:20:05', 0),
(172, 'Cake Decoration', '', 11, 0, '', '', '2017-08-21 20:20:15', '2017-08-21 20:20:16', 0),
(173, 'Catering', '', 11, 0, '', '', '2017-08-21 20:20:27', '2017-08-21 20:20:27', 0),
(174, 'Cooking Lessons', '', 11, 0, '', '', '2017-08-21 20:20:35', '2017-08-21 20:20:35', 0),
(175, 'Delivery', '', 11, 0, '', '', '2017-08-21 20:20:46', '2017-08-21 20:20:46', 0),
(176, 'Food Delivery', '', 11, 0, '', '', '2017-08-21 20:20:54', '2017-08-21 20:20:54', 0),
(177, 'Food Photography', '', 11, 0, '', '', '2017-08-21 20:21:01', '2017-08-21 20:21:01', 0),
(178, 'Food Regulator/Certification', '', 11, 0, '', '', '2017-08-21 20:21:08', '2017-08-21 20:21:08', 0),
(179, 'Freeze Drying/Preservation', '', 11, 0, '', '', '2017-08-21 20:21:19', '2017-08-21 20:21:19', 0),
(180, 'Halal Foods', '', 11, 0, '', '', '2017-08-21 20:21:27', '2017-08-21 20:21:27', 0),
(181, 'Host', '', 11, 0, '', '', '2017-08-21 20:21:35', '2017-08-21 20:21:35', 0),
(182, 'Kosher Foods', '', 11, 0, '', '', '2017-08-21 20:21:44', '2017-08-21 20:21:44', 0),
(183, 'Meal Preparation', '', 11, 0, '', '', '2017-08-21 20:21:54', '2017-08-21 20:21:54', 0),
(184, 'Organic Foods', '', 11, 0, '', '', '2017-08-21 20:22:01', '2017-08-21 20:22:01', 0),
(185, 'Pastry Art', '', 11, 0, '', '', '2017-08-21 20:22:19', '2017-08-21 20:22:19', 0),
(186, 'Personal Chef', '', 11, 0, '', '', '2017-08-21 20:22:28', '2017-08-21 20:22:28', 0),
(187, 'Special Meals', '', 11, 0, '', '', '2017-08-21 20:22:35', '2017-08-21 20:22:35', 0),
(188, 'Tiffin Services', '', 11, 0, '', '', '2017-08-21 20:22:45', '2017-08-21 20:22:45', 0),
(189, 'Vegan Foods', '', 11, 0, '', '', '2017-08-21 20:22:55', '2017-08-21 20:22:55', 0),
(190, 'Waiter', '', 11, 0, '', '', '2017-08-21 20:23:52', '2017-08-21 20:23:52', 0),
(191, 'Appliance Repair', '', 12, 0, '', '', '2017-08-21 20:25:28', '2017-08-21 20:25:28', 0),
(192, 'Car Washes', '', 12, 0, '', '', '2017-08-21 20:25:39', '2017-10-06 18:25:25', 1),
(193, 'Carpentry', '', 12, 0, '', '', '2017-08-21 20:25:49', '2017-08-21 20:25:49', 0),
(194, 'Drain Pipe Installation', '', 12, 0, '', '', '2017-08-21 20:26:04', '2017-08-21 20:26:04', 0),
(195, 'Drywall', '', 12, 0, '', '', '2017-08-21 20:26:13', '2017-08-21 20:26:13', 0),
(196, 'Electrical Wiring', '', 12, 0, '', '', '2017-08-21 20:26:19', '2017-08-21 20:26:19', 0),
(197, 'Fence and Gate Installation', '', 12, 0, '', '', '2017-08-21 20:26:31', '2017-08-21 20:26:31', 0),
(198, 'Floor Installation/Repair', '', 12, 0, '', '', '2017-08-21 20:26:43', '2017-08-21 20:26:43', 0),
(199, 'Garage', '', 12, 0, '', '', '2017-08-21 20:26:53', '2017-08-21 20:26:53', 0),
(200, 'General Labor', '', 12, 0, '', '', '2017-08-21 20:27:01', '2017-08-21 20:27:01', 0),
(201, 'Gutter Cleaning/Repair', '', 12, 0, '', '', '2017-08-21 20:27:30', '2017-08-21 20:27:30', 0),
(202, 'Haul Away', '', 12, 0, '', '', '2017-08-21 20:27:43', '2017-08-21 20:27:43', 0),
(203, 'Home Automation', '', 12, 0, '', '', '2017-08-21 20:28:10', '2017-08-21 20:28:10', 0),
(204, 'Home Improvement', '', 12, 0, '', '', '2017-08-21 20:28:23', '2017-08-21 20:28:23', 0),
(205, 'Home Inspection', '', 1, 0, '', '', '2017-08-21 20:28:50', '2017-08-21 20:28:50', 0),
(206, 'Home Security Systems', '', 12, 0, '', '', '2017-08-21 20:29:03', '2017-10-06 18:29:13', 1),
(207, 'Home Staging', '', 12, 0, '', '', '2017-08-21 20:29:12', '2017-08-21 20:29:12', 0),
(208, 'Landscaping', '', 12, 0, '', '', '2017-08-21 20:34:53', '2017-08-21 20:34:53', 0),
(209, 'Moving', '', 12, 0, '', '', '2017-08-21 20:35:06', '2017-08-21 20:35:06', 0),
(210, 'Painting', '', 12, 0, '', '', '2017-08-21 20:35:22', '2017-08-21 20:35:22', 0),
(211, 'Plumbing', '', 12, 0, '', '', '2017-08-21 20:35:37', '2017-08-21 20:35:37', 0),
(212, 'Remodeling', '', 12, 0, '', '', '2017-08-21 20:35:46', '2017-08-21 20:35:46', 0),
(213, 'Repair', '', 12, 0, '', '', '2017-08-21 20:35:54', '2017-08-21 20:35:54', 0),
(214, 'Roof', '', 12, 0, '', '', '2017-08-21 20:36:06', '2017-08-21 20:36:06', 0),
(215, 'Roofing', '', 12, 0, '', '', '2017-08-21 20:36:13', '2017-10-06 18:34:17', 1),
(216, 'Shelving', '', 12, 0, '', '', '2017-08-21 20:36:19', '2017-08-21 20:36:19', 0),
(217, 'Solar Panels', '', 12, 0, '', '', '2017-08-21 20:36:30', '2017-08-21 20:36:30', 0),
(218, 'Sound Proofing', '', 12, 0, '', '', '2017-08-21 20:36:43', '2017-08-21 20:36:43', 0),
(219, 'Stain Removal', '', 12, 0, '', '', '2017-08-21 20:37:22', '2017-08-21 20:37:22', 0),
(220, 'TV Mounting', '', 12, 0, '', '', '2017-08-21 20:37:34', '2017-08-21 20:37:34', 0),
(221, 'Upholstery', '', 12, 0, '', '', '2017-08-21 20:37:41', '2017-08-21 20:37:41', 0),
(222, 'Window Repair', '', 12, 0, '', '', '2017-08-21 20:37:54', '2017-10-06 18:40:06', 1),
(223, 'Bulk', '', 13, 0, '', '', '2017-08-21 20:44:41', '2017-08-21 20:44:41', 0),
(224, 'Chemicals', '', 13, 0, '', '', '2017-08-21 20:44:58', '2017-08-21 20:44:58', 0),
(225, 'Compost', '', 13, 0, '', '', '2017-08-21 20:45:07', '2017-10-06 18:25:52', 1),
(226, 'Donations/Charity', '', 13, 0, '', '', '2017-08-21 20:45:15', '2017-08-21 20:45:15', 0),
(227, 'Electronics', '', 13, 0, '', '', '2017-08-21 20:48:49', '2017-08-21 20:48:49', 0),
(228, 'Furniture', '', 13, 0, '', '', '2017-08-21 20:48:58', '2017-08-21 20:48:58', 0),
(229, 'Junk Removal', '', 13, 0, '', '', '2017-08-21 20:49:08', '2017-08-21 20:49:08', 0),
(230, 'Plants/Trees', '', 13, 0, '', '', '2017-08-21 20:49:17', '2017-10-11 18:22:02', 0),
(231, 'Recycling', '', 13, 0, '', '', '2017-08-21 20:49:30', '2017-08-21 20:49:30', 0),
(232, 'Towing', '', 13, 0, '', '', '2017-08-21 20:49:38', '2017-08-21 20:49:38', 0),
(233, 'Acupressure', '', 14, 0, '', '', '2017-08-21 20:50:04', '2017-08-21 20:50:04', 0),
(234, 'Acupuncture', '', 14, 0, '', '', '2017-08-21 20:50:13', '2017-08-21 20:50:13', 0),
(235, 'Astrological Counseling', '', 14, 0, '', '', '2017-08-21 20:50:21', '2017-08-21 20:50:21', 0),
(236, 'Ayurvedic Medicine', '', 14, 0, '', '', '2017-08-21 20:50:31', '2017-08-21 20:50:31', 0),
(237, 'Camp Instructor', '', 14, 0, '', '', '2017-08-21 20:50:40', '2017-08-21 20:50:40', 0),
(238, 'Caregiver/Personal Attendant', '', 14, 0, '', '', '2017-08-21 20:50:49', '2017-08-21 20:50:49', 0),
(239, 'Chakra Therapy', '', 14, 0, '', '', '2017-08-21 20:50:58', '2017-08-21 20:50:58', 0),
(240, 'Chinese Medicine', '', 14, 0, '', '', '2017-08-21 20:51:06', '2017-08-21 20:51:06', 0),
(241, 'Chiropractor', '', 14, 0, '', '', '2017-08-21 20:51:14', '2017-08-21 20:51:14', 0),
(242, 'Counseling', '', 14, 0, '', '', '2017-08-21 20:51:21', '2017-08-21 20:51:21', 0),
(243, 'Detox', '', 14, 0, '', '', '2017-08-21 20:51:29', '2017-08-21 20:51:29', 0),
(244, 'Feng Shui', '', 14, 0, '', '', '2017-08-21 20:51:37', '2017-08-21 20:51:37', 0),
(245, 'Health Education/Workshops', '', 14, 0, '', '', '2017-08-21 20:51:45', '2017-08-21 20:51:45', 0),
(246, 'Health Insurance - Agents', '', 14, 0, '', '', '2017-08-21 20:51:56', '2017-08-21 20:51:56', 0),
(247, 'Holistic/Alternative Healing', '', 14, 0, '', '', '2017-08-21 20:52:04', '2017-08-21 20:52:04', 0),
(248, 'Homeopathy', '', 14, 0, '', '', '2017-08-21 20:52:12', '2017-08-21 20:52:12', 0),
(249, 'Life Coach', '', 14, 0, '', '', '2017-08-21 20:52:20', '2017-10-06 18:29:45', 1),
(250, 'Massage Therapy', '', 14, 0, '', '', '2017-08-21 20:52:28', '2017-08-21 20:52:28', 0),
(251, 'Meditation Instruction', '', 14, 0, '', '', '2017-08-21 20:52:36', '2017-08-21 20:52:36', 0),
(252, 'Nutrition/Diet Planning', '', 14, 0, '', '', '2017-08-21 20:52:43', '2017-08-21 20:52:43', 0),
(253, 'Occupational Health', '', 14, 0, '', '', '2017-08-21 20:52:52', '2017-08-21 20:52:52', 0),
(254, 'Outdoors Guide', '', 14, 0, '', '', '2017-08-21 20:53:01', '2017-08-21 20:53:01', 0),
(255, 'Personal Training', '', 14, 0, '', '', '2017-08-21 20:53:08', '2017-08-21 20:53:08', 0),
(256, 'Physical Therapy', '', 14, 0, '', '', '2017-08-21 20:53:19', '2017-08-21 20:53:19', 0),
(257, 'Sound Therapy', '', 14, 0, '', '', '2017-08-21 20:53:32', '2017-08-21 20:53:32', 0),
(258, 'Yoga', '', 14, 0, '', '', '2017-08-21 20:53:41', '2017-08-21 20:53:41', 0),
(259, 'Air Conditioning', '', 15, 0, '', '', '2017-08-21 20:54:03', '2017-08-21 20:54:03', 0),
(260, 'Appliance Repair', '', 15, 0, '', '', '2017-08-21 20:54:11', '2017-08-21 20:54:11', 0),
(261, 'Auctioning', '', 15, 0, '', '', '2017-08-21 20:54:20', '2017-08-21 20:54:20', 0),
(262, 'Balcony', '', 15, 0, '', '', '2017-08-21 20:54:30', '2017-08-21 20:54:30', 0),
(263, 'Basement', '', 15, 0, '', '', '2017-08-21 20:54:38', '2017-08-21 20:54:38', 0),
(264, 'Bathrooms', '', 15, 0, '', '', '2017-08-21 20:54:46', '2017-08-21 20:54:46', 0),
(265, 'Butler Services', '', 15, 0, '', '', '2017-08-21 20:54:56', '2017-08-21 20:54:56', 0),
(266, 'Carpentry', '', 15, 0, '', '', '2017-08-21 20:55:04', '2017-08-21 20:55:04', 0),
(267, 'Chauffeur Services', '', 15, 0, '', '', '2017-08-21 20:55:11', '2017-08-21 20:55:11', 0),
(268, 'Cleaning', '', 15, 0, '', '', '2017-08-21 20:55:20', '2017-08-21 20:55:20', 0),
(269, 'Decks', '', 15, 0, '', '', '2017-08-21 20:55:30', '2017-08-21 20:55:30', 0),
(270, 'Deep Cleaning', '', 15, 0, '', '', '2017-08-21 20:55:44', '2017-08-21 20:55:44', 0),
(271, 'Donations/Charity', '', 15, 0, '', '', '2017-08-21 20:55:52', '2017-08-21 20:55:52', 0),
(272, 'Driveways', '', 15, 0, '', '', '2017-08-21 20:56:02', '2017-08-21 20:56:02', 0),
(273, 'Dry Cleaning', '', 15, 0, '', '', '2017-08-21 20:56:16', '2017-08-21 20:56:16', 0),
(274, 'Dryer Vent Cleaning', '', 15, 0, '', '', '2017-08-21 20:56:24', '2017-08-21 20:56:24', 0),
(275, 'Drywall', '', 15, 0, '', '', '2017-08-21 20:56:32', '2017-08-21 20:56:32', 0),
(276, 'Electrical Wiring', '', 15, 0, '', '', '2017-08-21 20:56:42', '2017-08-21 20:56:42', 0),
(277, 'Energy Audits', '', 15, 0, '', '', '2017-08-21 20:56:54', '2017-08-21 20:56:54', 0),
(278, 'Fence and Gate Installation', '', 15, 0, '', '', '2017-08-21 20:57:02', '2017-08-21 20:57:02', 0),
(279, 'Feng Shui', '', 15, 0, '', '', '2017-08-21 20:57:10', '2017-08-21 20:57:10', 0),
(280, 'Fire Prevention', '', 15, 0, '', '', '2017-08-21 20:57:19', '2017-08-21 20:57:20', 0),
(281, 'Floor Installation/Repair', '', 15, 0, '', '', '2017-08-21 20:57:27', '2017-08-21 20:57:27', 0),
(282, 'Floral Arrangements', '', 15, 0, '', '', '2017-08-21 20:57:36', '2017-08-21 20:57:36', 0),
(283, 'Furniture Assembly', '', 15, 0, '', '', '2017-08-21 20:57:48', '2017-08-21 20:57:48', 0),
(284, 'Garage', '', 15, 0, '', '', '2017-08-21 20:57:57', '2017-08-21 20:57:57', 0),
(285, 'Generators', '', 15, 0, '', '', '2017-08-21 20:58:07', '2017-08-21 20:58:07', 0),
(286, 'Gutter Cleaning', '', 15, 0, '', '', '2017-08-21 21:10:31', '2017-10-06 18:27:39', 1),
(287, 'Gutter Cleaning/Repair', '', 15, 0, '', '', '2017-08-21 21:13:16', '2017-08-21 21:13:16', 0),
(288, 'Heating', '', 15, 0, '', '', '2017-08-21 21:13:24', '2017-08-21 21:13:24', 0),
(289, 'Home Maintenance', '', 15, 0, '', '', '2017-08-21 21:13:32', '2017-08-21 21:13:32', 0),
(290, 'Home Security', '', 15, 0, '', '', '2017-08-21 21:13:41', '2017-08-21 21:13:41', 0),
(291, 'Home Security Systems', '', 15, 0, '', '', '2017-08-21 21:13:52', '2017-10-06 18:28:55', 1),
(292, 'House Sitting', '', 15, 0, '', '', '2017-08-21 21:19:27', '2017-08-21 21:19:27', 0),
(293, 'Insurance', '', 15, 0, '', '', '2017-08-21 21:19:35', '2017-08-21 21:19:35', 0),
(294, 'Interior Design', '', 15, 0, '', '', '2017-08-21 21:19:43', '2017-08-21 21:19:43', 0),
(295, 'Irrigation', '', 15, 0, '', '', '2017-08-21 21:19:51', '2017-08-21 21:19:51', 0),
(296, 'Junk Removal', '', 15, 0, '', '', '2017-08-21 21:19:59', '2017-08-21 21:19:59', 0),
(297, 'Land Surveying', '', 15, 0, '', '', '2017-08-21 21:20:08', '2017-08-21 21:20:08', 0),
(298, 'Lighting', '', 15, 0, '', '', '2017-08-21 21:20:15', '2017-08-21 21:20:15', 0),
(299, 'Locksmith', '', 15, 0, '', '', '2017-08-21 21:20:23', '2017-08-21 21:20:23', 0),
(300, 'Maid Services', '', 15, 0, '', '', '2017-08-21 21:20:31', '2017-08-21 21:20:31', 0),
(301, 'Marble & Granite', '', 15, 0, '', '', '2017-08-21 21:20:38', '2017-08-21 21:20:38', 0),
(302, 'Moving', '', 15, 0, '', '', '2017-08-21 21:20:46', '2017-08-21 21:20:46', 0),
(303, 'Painting', '', 15, 0, '', '', '2017-08-21 21:20:54', '2017-08-21 21:20:54', 0),
(304, 'Patios', '', 15, 0, '', '', '2017-08-21 21:21:03', '2017-08-21 21:21:03', 0),
(305, 'Personal Assistant', '', 15, 0, '', '', '2017-08-21 21:21:12', '2017-10-06 18:30:54', 1),
(306, 'Pest Control', '', 15, 0, '', '', '2017-08-21 21:21:20', '2017-08-21 21:21:20', 0),
(307, 'Plastering', '', 15, 0, '', '', '2017-08-21 21:21:28', '2017-08-21 21:21:28', 0),
(308, 'Plug-in Vehicle Charger', '', 15, 0, '', '', '2017-08-21 21:21:35', '2017-08-21 21:21:35', 0),
(309, 'Plumbing', '', 15, 0, '', '', '2017-08-21 21:21:42', '2017-08-21 21:21:42', 0),
(310, 'Pool Maintenance', '', 15, 0, '', '', '2017-08-21 21:21:50', '2017-08-21 21:21:50', 0),
(311, 'Pressure Washing', '', 15, 0, '', '', '2017-08-21 21:21:59', '2017-08-21 21:21:59', 0),
(312, 'Recycling', '', 15, 0, '', '', '2017-08-21 21:22:07', '2017-08-21 21:22:07', 0),
(313, 'Remodeling', '', 15, 0, '', '', '2017-08-21 21:22:15', '2017-08-21 21:22:15', 0),
(314, 'Repair', '', 15, 0, '', '', '2017-08-21 21:22:23', '2017-08-21 21:22:23', 0),
(315, 'Roof', '', 15, 0, '', '', '2017-08-21 21:22:35', '2017-08-21 21:22:35', 0),
(316, 'Roof Cleaning', '', 15, 0, '', '', '2017-08-21 21:22:41', '2017-08-21 21:22:41', 0),
(317, 'Roofing', '', 15, 0, '', '', '2017-08-21 21:22:48', '2017-10-06 18:34:02', 1),
(318, 'Sewage', '', 15, 0, '', '', '2017-08-21 21:22:58', '2017-08-21 21:22:58', 0),
(319, 'Snow Removal', '', 15, 0, '', '', '2017-08-21 21:23:06', '2017-08-21 21:23:06', 0),
(320, 'Solar Installation', '', 15, 0, '', '', '2017-08-21 21:23:13', '2017-08-21 21:23:13', 0),
(321, 'Sound Proofing', '', 15, 0, '', '', '2017-08-21 21:23:21', '2017-08-21 21:23:21', 0),
(322, 'Stain Removal', '', 15, 0, '', '', '2017-08-21 21:23:31', '2017-08-21 21:23:31', 0),
(323, 'Stereo/Home Theater Systems', '', 15, 0, '', '', '2017-08-21 21:23:38', '2017-08-21 21:23:38', 0),
(324, 'Tiles', '', 15, 0, '', '', '2017-08-21 21:23:56', '2017-08-21 21:23:56', 0),
(325, 'Travel Assistance', '', 15, 0, '', '', '2017-08-21 21:24:01', '2017-08-21 21:24:01', 0),
(326, 'Tree Service', '', 15, 0, '', '', '2017-08-21 21:24:11', '2017-08-21 21:24:11', 0),
(327, 'TV Mounting', '', 15, 0, '', '', '2017-08-21 21:24:20', '2017-08-21 21:24:20', 0),
(328, 'Waterproofing & Restoration', '', 15, 0, '', '', '2017-08-21 21:24:28', '2017-08-21 21:24:28', 0),
(329, 'Window Cleaning', '', 15, 0, '', '', '2017-08-21 21:24:36', '2017-10-06 18:39:56', 1),
(330, 'Window Repair/Cleaning', '', 15, 0, '', '', '2017-08-21 21:24:46', '2017-10-06 18:41:03', 0),
(331, 'Advisory', '', 16, 0, '', '', '2017-08-21 21:38:21', '2017-08-21 21:38:21', 0),
(332, 'Bail Bonds', '', 16, 0, '', '', '2017-08-21 21:51:09', '2017-08-21 21:51:09', 0),
(333, 'Divorce', '', 16, 0, '', '', '2017-08-21 21:51:17', '2017-08-21 21:51:17', 0),
(334, 'Divorce Attorney', '', 16, 0, '', '', '2017-08-21 21:51:26', '2017-08-21 21:51:26', 0),
(335, 'Document Preparation', '', 16, 0, '', '', '2017-08-21 21:51:34', '2017-08-21 21:51:34', 0),
(336, 'Eviction Attorney', '', 16, 0, '', '', '2017-08-21 21:51:42', '2017-08-21 21:51:42', 0),
(337, 'Immigration Services', '', 16, 0, '', '', '2017-08-21 21:51:50', '2017-08-21 21:51:50', 0),
(338, 'Injury/Auto Accident', '', 16, 0, '', '', '2017-08-21 21:51:57', '2017-08-21 21:51:57', 0),
(339, 'Insurance', '', 16, 0, '', '', '2017-08-21 21:52:05', '2017-08-21 21:52:05', 0),
(340, 'Lawyer', '', 16, 0, '', '', '2017-08-21 21:52:12', '2017-08-21 21:52:12', 0),
(341, 'Notary Services', '', 16, 0, '', '', '2017-08-21 21:52:20', '2017-08-21 21:52:20', 0),
(342, 'Paralegal', '', 16, 0, '', '', '2017-08-21 21:52:30', '2017-08-21 21:52:30', 0),
(343, 'Private Investigator', '', 16, 0, '', '', '2017-08-21 21:52:37', '2017-10-06 18:32:17', 1),
(344, 'Small Claims', '', 16, 0, '', '', '2017-08-21 21:52:45', '2017-08-21 21:52:45', 0),
(345, 'Tax Filing', '', 16, 0, '', '', '2017-08-21 21:52:53', '2017-08-21 21:52:53', 0),
(346, 'Trademark/Patenting', '', 16, 0, '', '', '2017-08-21 21:53:00', '2017-08-21 21:53:00', 0),
(347, 'Dance Lessons', '', 17, 0, '', '', '2017-08-21 21:53:10', '2017-08-21 21:53:10', 0),
(348, 'DJ’s', '', 17, 0, '', '', '2017-08-21 21:53:17', '2017-08-21 21:53:17', 0),
(349, 'Electronic Music', '', 17, 0, '', '', '2017-08-21 21:53:26', '2017-08-21 21:53:26', 0),
(350, 'Group Lessons', '', 17, 0, '', '', '2017-08-21 21:53:34', '2017-08-21 21:53:34', 0),
(351, 'Live Music', '', 17, 0, '', '', '2017-08-21 21:53:44', '2017-08-21 21:53:44', 0),
(352, 'Music Marketing/Social Media', '', 17, 0, '', '', '2017-08-21 21:53:53', '2017-08-21 21:53:53', 0),
(353, 'Music Photography', '', 17, 0, '', '', '2017-08-21 21:54:02', '2017-08-21 21:54:02', 0),
(354, 'Music Videography', '', 17, 0, '', '', '2017-08-21 21:54:10', '2017-08-21 21:54:10', 0),
(355, 'Music/Dance Venues', '', 17, 0, '', '', '2017-08-21 21:54:20', '2017-08-21 21:54:20', 0),
(356, 'Private Lessons', '', 17, 0, '', '', '2017-08-21 21:54:29', '2017-08-21 21:54:29', 0),
(357, 'Recording', '', 17, 0, '', '', '2017-08-21 21:54:36', '2017-08-21 21:54:36', 0),
(358, 'Singers', '', 17, 0, '', '', '2017-08-21 21:54:44', '2017-08-21 21:54:44', 0),
(359, 'Singing Lessons', '', 17, 0, '', '', '2017-08-21 21:54:52', '2017-08-21 21:54:52', 0),
(360, 'Sound Therapy', '', 17, 0, '', '', '2017-08-21 21:55:00', '2017-08-21 21:55:00', 0),
(361, 'World Music', '', 17, 0, '', '', '2017-08-21 21:55:07', '2017-08-21 21:55:07', 0),
(362, 'Driver\'s Education', '', 18, 0, '', '', '2017-08-21 21:55:18', '2017-10-11 18:28:15', 0),
(363, 'Dry Cleaning', '', 18, 0, '', '', '2017-08-21 21:55:25', '2017-08-21 21:55:25', 0),
(364, 'Employment Preparation', '', 18, 0, '', '', '2017-08-21 21:55:37', '2017-08-21 21:55:37', 0),
(365, 'Errands', '', 18, 0, '', '', '2017-08-21 21:55:46', '2017-08-21 21:55:46', 0),
(366, 'Government/Legal', '', 18, 0, '', '', '2017-08-21 21:55:54', '2017-08-21 21:55:54', 0),
(367, 'Holiday Decorating', '', 18, 0, '', '', '2017-08-21 21:56:03', '2017-08-21 21:56:03', 0),
(368, 'Jewelry', '', 18, 0, '', '', '2017-08-21 21:56:14', '2017-08-21 21:56:15', 0),
(369, 'Life Coaching', '', 18, 0, '', '', '2017-08-21 21:56:27', '2017-08-21 21:56:27', 0),
(370, 'Makeover', '', 18, 0, '', '', '2017-08-21 21:56:36', '2017-08-21 21:56:36', 0),
(371, 'Marketing', '', 18, 0, '', '', '2017-08-21 21:56:46', '2017-08-21 21:56:46', 0),
(372, 'Paper Shredding', '', 18, 0, '', '', '2017-08-21 21:56:54', '2017-08-21 21:56:54', 0),
(373, 'Personal Assistance', '', 18, 0, '', '', '2017-08-21 21:57:01', '2017-08-21 21:57:01', 0),
(374, 'Private Investigation', '', 18, 0, '', '', '2017-08-21 21:57:09', '2017-08-21 21:57:09', 0),
(375, 'Security', '', 18, 0, '', '', '2017-08-21 21:57:18', '2017-08-21 21:57:18', 0),
(376, 'Shoe Repair', '', 18, 0, '', '', '2017-08-21 21:57:26', '2017-08-21 21:57:26', 0),
(377, 'Suit/Tuxedo Rental', '', 18, 0, '', '', '2017-08-21 21:57:35', '2017-08-21 21:57:35', 0),
(378, 'Tarot Card Reading', '', 18, 0, '', '', '2017-08-21 21:57:43', '2017-08-21 21:57:43', 0),
(379, 'Tattoos & Piercings', '', 18, 0, '', '', '2017-08-21 21:57:52', '2017-08-21 21:57:52', 0),
(380, 'Writing/Editing', '', 18, 0, '', '', '2017-08-21 21:58:01', '2017-08-21 21:58:01', 0),
(381, 'Animal Removal', '', 19, 0, '', '', '2017-08-21 21:58:14', '2017-08-21 21:58:14', 0),
(382, 'Animal Rescue/Shelter', '', 19, 0, '', '', '2017-08-21 21:58:23', '2017-08-21 21:58:23', 0),
(383, 'Aquarium Services', '', 19, 0, '', '', '2017-08-21 21:58:33', '2017-08-21 21:58:33', 0),
(384, 'Bees', '', 19, 0, '', '', '2017-08-21 21:58:43', '2017-08-21 21:58:43', 0),
(385, 'Breeding', '', 19, 0, '', '', '2017-08-21 21:58:48', '2017-08-21 21:58:48', 0),
(386, 'Custom Pet Houses', '', 19, 0, '', '', '2017-08-21 21:58:56', '2017-08-21 21:58:56', 0),
(387, 'Environmental Enrichment', '', 19, 0, '', '', '2017-08-21 21:59:04', '2017-08-21 21:59:04', 0),
(388, 'Feral Animals', '', 19, 0, '', '', '2017-08-21 21:59:12', '2017-08-21 21:59:12', 0),
(389, 'General Vet Services', '', 19, 0, '', '', '2017-08-21 21:59:20', '2017-08-21 21:59:20', 0),
(390, 'Overnight Visits', '', 19, 0, '', '', '2017-08-21 21:59:27', '2017-08-21 21:59:27', 0),
(391, 'Pet Adoption', '', 19, 0, '', '', '2017-08-21 21:59:36', '2017-08-21 21:59:36', 0),
(392, 'Pet Art', '', 19, 0, '', '', '2017-08-21 21:59:47', '2017-08-21 21:59:47', 0),
(393, 'Pet Boarding', '', 19, 0, '', '', '2017-08-21 21:59:56', '2017-08-21 21:59:56', 0),
(394, 'Pet Funeral Services', '', 19, 0, '', '', '2017-08-21 22:00:04', '2017-08-21 22:00:04', 0),
(395, 'Pet Furniture', '', 19, 0, '', '', '2017-08-21 22:00:13', '2017-08-21 22:00:13', 0),
(396, 'Pet Grooming', '', 19, 0, '', '', '2017-08-21 22:00:24', '2017-08-21 22:00:24', 0),
(397, 'Pet Legal Advice', '', 19, 0, '', '', '2017-08-21 22:00:35', '2017-08-21 22:00:35', 0),
(398, 'Pet Nutrition', '', 19, 0, '', '', '2017-08-21 22:00:43', '2017-08-21 22:00:43', 0),
(399, 'Pet Permits', '', 19, 0, '', '', '2017-08-21 22:00:51', '2017-08-21 22:00:51', 0),
(400, 'Pet Photography', '', 19, 0, '', '', '2017-08-21 22:01:02', '2017-08-21 22:01:02', 0),
(401, 'Pet Physiotherapy', '', 19, 0, '', '', '2017-08-21 22:01:10', '2017-08-21 22:01:10', 0),
(402, 'Pet Sitting', '', 19, 0, '', '', '2017-08-21 22:01:18', '2017-08-21 22:01:18', 0),
(403, 'Pet Training', '', 19, 0, '', '', '2017-08-21 22:01:26', '2017-08-21 22:01:26', 0),
(404, 'Pet Transportation', '', 19, 0, '', '', '2017-08-21 22:01:35', '2017-08-21 22:01:35', 0),
(405, 'Pet Walking', '', 19, 0, '', '', '2017-08-21 22:01:45', '2017-08-21 22:01:45', 0),
(406, 'Pets for Sale', '', 19, 0, '', '', '2017-08-21 22:01:56', '2017-08-21 22:01:56', 0),
(407, 'Service and Support Animals', '', 19, 0, '', '', '2017-08-21 22:02:06', '2017-08-21 22:02:06', 0),
(408, 'Small Pet Care', '', 19, 0, '', '', '2017-08-21 22:02:16', '2017-08-21 22:02:16', 0),
(409, 'Spaying/Neutering', '', 19, 0, '', '', '2017-08-21 22:02:24', '2017-08-21 22:02:24', 0),
(410, 'Special Pets', '', 19, 0, '', '', '2017-08-21 22:02:32', '2017-08-21 22:02:32', 0),
(411, 'Specialized Pet Food', '', 19, 0, '', '', '2017-08-21 22:02:40', '2017-08-21 22:02:40', 0),
(412, 'Taxidermy', '', 19, 0, '', '', '2017-08-21 22:02:52', '2017-08-21 22:02:52', 0),
(413, 'Wedding Photography', '', 20, 1, '', '', '0000-00-00 00:00:00', '2017-10-06 18:18:59', 1),
(414, 'Wedding Photography', '', 20, 1, '', '', '0000-00-00 00:00:00', '2017-08-21 22:06:04', 0),
(415, 'Actors', '', 20, 0, '', '', '2017-08-22 17:58:23', '2017-08-22 17:58:23', 0),
(416, 'Advertising Photography', '', 20, 0, '', '', '2017-08-22 17:58:34', '2017-08-22 17:58:34', 0),
(417, 'Advertising Videography', '', 20, 0, '', '', '2017-08-22 17:58:42', '2017-08-22 17:58:42', 0),
(418, 'Animation', '', 20, 0, '', '', '2017-08-22 17:58:50', '2017-08-22 17:58:50', 0),
(419, 'Business Marketing', '', 20, 0, '', '', '2017-08-22 17:59:01', '2017-08-22 17:59:01', 0),
(420, 'Camera Repair', '', 20, 0, '', '', '2017-08-22 17:59:08', '2017-08-22 17:59:08', 0),
(421, 'Conceptual/Fine Art Photography', '', 20, 0, '', '', '2017-08-22 17:59:16', '2017-08-22 17:59:16', 0),
(422, 'Documentary', '', 20, 0, '', '', '2017-08-22 17:59:22', '2017-08-22 17:59:22', 0),
(423, 'Drone Videography', '', 20, 0, '', '', '2017-08-22 17:59:30', '2017-08-22 17:59:30', 0),
(424, 'Event Photography', '', 20, 0, '', '', '2017-08-22 17:59:37', '2017-08-22 17:59:37', 0),
(425, 'Event Videography', '', 20, 0, '', '', '2017-08-22 17:59:45', '2017-08-22 17:59:45', 0),
(426, 'Fashion Photography', '', 20, 0, '', '', '2017-08-22 17:59:54', '2017-08-22 17:59:54', 0),
(427, 'Food Photography', '', 20, 0, '', '', '2017-08-22 18:00:02', '2017-08-22 18:00:02', 0),
(428, 'Landscape Photography', '', 20, 0, '', '', '2017-08-22 18:00:10', '2017-08-22 18:00:10', 0),
(429, 'Modeling', '', 20, 0, '', '', '2017-08-22 18:00:18', '2017-08-22 18:00:18', 0),
(430, 'Product Demo Videography', '', 20, 0, '', '', '2017-08-22 18:00:26', '2017-08-22 18:00:26', 0),
(431, 'Real Estate Photography', '', 20, 0, '', '', '2017-08-22 18:00:35', '2017-08-22 18:00:35', 0),
(432, 'Real Estate Videography', '', 20, 0, '', '', '2017-08-22 18:00:42', '2017-08-22 18:00:42', 0),
(433, 'Testimonial Videography', '', 20, 0, '', '', '2017-08-22 18:00:51', '2017-08-22 18:00:51', 0),
(434, 'Video Editing', '', 20, 0, '', '', '2017-08-22 18:00:59', '2017-08-22 18:00:59', 0),
(435, 'Videographer', '', 20, 0, '', '', '2017-08-22 18:01:06', '2017-08-22 18:01:06', 0),
(436, 'Voiceover', '', 20, 0, '', '', '2017-08-22 18:01:13', '2017-08-22 18:01:13', 0),
(437, 'Wedding Videography', '', 20, 0, '', '', '2017-08-22 18:01:34', '2017-08-22 18:01:34', 0),
(438, 'Wildlife Photography', '', 20, 0, '', '', '2017-08-22 18:01:43', '2017-08-22 18:01:43', 0),
(439, 'Auctioning', '', 21, 0, '', '', '2017-08-22 18:01:54', '2017-08-22 18:01:54', 0),
(440, 'Carpet Cleaning/Repair', '', 21, 0, '', '', '2017-08-22 18:02:03', '2017-08-22 18:02:03', 0),
(441, 'Credit Repair', '', 21, 0, '', '', '2017-08-22 18:02:12', '2017-08-22 18:02:12', 0),
(442, 'Fire Prevention', '', 21, 0, '', '', '2017-08-22 18:02:21', '2017-08-22 18:02:21', 0),
(443, 'Furniture Liquidation', '', 21, 0, '', '', '2017-08-22 18:02:34', '2017-08-22 18:02:34', 0),
(444, 'Home Security', '', 21, 0, '', '', '2017-08-22 18:02:43', '2017-08-22 18:02:43', 0),
(445, 'House Sale Preparation', '', 21, 0, '', '', '2017-08-22 18:02:52', '2017-08-22 18:02:52', 0),
(446, 'House Sitting', '', 21, 0, '', '', '2017-08-22 18:03:01', '2017-08-22 18:03:01', 0),
(447, 'Interior Design', '', 21, 0, '', '', '2017-08-22 18:03:09', '2017-08-22 18:03:09', 0),
(448, 'Junk Removal', '', 21, 0, '', '', '2017-08-22 18:03:17', '2017-08-22 18:03:17', 0),
(449, 'Landscape Build/Design', '', 21, 0, '', '', '2017-08-22 18:03:25', '2017-08-22 18:03:25', 0),
(450, 'Locksmith', '', 21, 0, '', '', '2017-08-22 18:03:32', '2017-08-22 18:03:32', 0),
(451, 'Mobile Homes', '', 21, 0, '', '', '2017-08-22 18:03:41', '2017-08-22 18:03:41', 0),
(452, 'Open House', '', 21, 0, '', '', '2017-08-22 18:03:49', '2017-08-22 18:03:49', 0),
(453, 'Property Management', '', 21, 0, '', '', '2017-08-22 18:03:57', '2017-08-22 18:03:57', 0),
(454, 'Property Photography/Video', '', 21, 0, '', '', '2017-08-22 18:04:04', '2017-08-22 18:04:04', 0),
(455, 'Real Estate Advice', '', 21, 0, '', '', '2017-08-22 18:04:11', '2017-08-22 18:04:11', 0),
(456, 'Real Estate Agent', '', 21, 0, '', '', '2017-08-22 18:04:19', '2017-08-22 18:04:19', 0),
(457, 'Real Estate Marketing/Social Media', '', 21, 0, '', '', '2017-08-22 18:04:28', '2017-08-22 18:04:28', 0),
(458, 'Alterations', '', 22, 0, '', '', '2017-08-22 18:04:47', '2017-08-22 18:04:47', 0),
(459, 'Costumes', '', 22, 0, '', '', '2017-08-22 18:04:54', '2017-08-22 18:04:54', 0),
(460, 'Curtains', '', 22, 0, '', '', '2017-08-22 18:05:03', '2017-08-22 18:05:03', 0),
(461, 'Custom Clothing', '', 22, 0, '', '', '2017-08-22 18:05:12', '2017-08-22 18:05:12', 0),
(462, 'Eco Clothing', '', 22, 0, '', '', '2017-08-22 18:05:19', '2017-08-22 18:05:19', 0),
(463, 'Embroidery', '', 22, 0, '', '', '2017-08-22 18:05:27', '2017-08-22 18:05:27', 0),
(464, 'Laundry', '', 22, 0, '', '', '2017-08-22 18:05:34', '2017-08-22 18:05:34', 0),
(465, 'Linen', '', 22, 0, '', '', '2017-08-22 18:05:42', '2017-08-22 18:05:42', 0),
(466, 'Men', '', 22, 0, '', '', '2017-08-22 18:05:51', '2017-08-22 18:05:51', 0),
(467, 'Repair', '', 22, 0, '', '', '2017-08-22 18:06:00', '2017-08-22 18:06:00', 0),
(468, 'Reusable Nappies/Diapers', '', 22, 0, '', '', '2017-08-22 18:06:08', '2017-08-22 18:06:08', 0),
(469, 'Wedding/Event Clothing', '', 22, 0, '', '', '2017-08-22 18:06:16', '2017-08-22 18:06:16', 0),
(470, 'Women', '', 22, 0, '', '', '2017-08-22 18:07:21', '2017-08-22 18:07:21', 0),
(471, 'Booking', '', 23, 0, '', '', '2017-08-22 18:07:31', '2017-08-22 18:07:31', 0),
(472, 'Caretaker', '', 23, 0, '', '', '2017-08-22 18:07:40', '2017-08-22 18:07:40', 0),
(473, 'Home Rental (Short Term)', '', 23, 0, '', '', '2017-08-22 18:07:48', '2017-08-22 18:07:48', 0),
(474, 'Hotel/Motel', '', 23, 0, '', '', '2017-08-22 18:07:56', '2017-08-22 18:07:56', 0),
(475, 'House Sitting', '', 23, 0, '', '', '2017-08-22 18:08:04', '2017-08-22 18:08:04', 0),
(476, 'Limousine', '', 23, 0, '', '', '2017-08-22 18:08:12', '2017-08-22 18:08:12', 0),
(477, 'Packing', '', 23, 0, '', '', '2017-08-22 18:08:20', '2017-08-22 18:08:20', 0),
(478, 'Parking', '', 23, 0, '', '', '2017-08-22 18:08:27', '2017-08-22 18:08:27', 0),
(479, 'Pet Sitting', '', 23, 0, '', '', '2017-08-22 18:08:36', '2017-08-22 18:08:36', 0),
(480, 'Touring', '', 23, 0, '', '', '2017-08-22 18:08:44', '2017-08-22 18:08:44', 0),
(481, 'Transportation', '', 23, 0, '', '', '2017-08-22 18:08:53', '2017-08-22 18:08:53', 0),
(482, 'Travel Advice', '', 23, 0, '', '', '2017-08-22 18:10:17', '2017-08-22 18:10:17', 0),
(483, 'Artificial', '', 24, 0, '', '', '2017-08-22 18:11:22', '2017-08-22 18:11:22', 0),
(484, 'Bonsai', '', 24, 0, '', '', '2017-08-22 18:11:43', '2017-08-22 18:11:43', 0),
(485, 'Composting', '', 24, 0, '', '', '2017-08-22 18:11:49', '2017-08-22 18:11:49', 0),
(486, 'Concrete & Landscaping', '', 24, 0, '', '', '2017-08-22 18:11:56', '2017-08-22 18:11:56', 0),
(487, 'Eco-Gardens', '', 24, 0, '', '', '2017-08-22 18:12:03', '2017-08-22 18:12:03', 0),
(488, 'Fencing', '', 24, 0, '', '', '2017-08-22 18:13:39', '2017-08-22 18:13:39', 0),
(489, 'Feng Shui', '', 24, 0, '', '', '2017-08-22 18:13:48', '2017-08-22 18:13:48', 0),
(490, 'Fire Prevention', '', 24, 0, '', '', '2017-08-22 18:13:56', '2017-08-22 18:13:56', 0),
(491, 'Floral Arrangements', '', 24, 0, '', '', '2017-08-22 18:14:05', '2017-08-22 18:14:05', 0),
(492, 'Fumigation', '', 24, 0, '', '', '2017-08-22 18:14:59', '2017-08-22 18:14:59', 0),
(493, 'Garden Lighting', '', 24, 0, '', '', '2017-08-22 18:15:06', '2017-08-22 18:15:06', 0),
(494, 'Garden Maintenance', '', 24, 0, '', '', '2017-08-22 18:15:12', '2017-08-22 18:15:12', 0),
(495, 'Greenhouses', '', 24, 0, '', '', '2017-08-22 18:15:21', '2017-08-22 18:15:21', 0),
(496, 'Indoor Plants', '', 24, 0, '', '', '2017-08-22 18:15:29', '2017-08-22 18:15:29', 0),
(497, 'Irrigation and Sprinklers', '', 24, 0, '', '', '2017-08-22 18:15:38', '2017-08-22 18:15:38', 0),
(498, 'Japanese Gardens', '', 24, 0, '', '', '2017-08-22 18:15:45', '2017-08-22 18:15:45', 0),
(499, 'Lawn & Yard Work', '', 24, 0, '', '', '2017-08-22 18:15:51', '2017-08-22 18:15:51', 0),
(500, 'Lawn Repair', '', 24, 0, '', '', '2017-08-22 18:15:58', '2017-08-22 18:15:58', 0),
(501, 'Leaf Removal', '', 24, 0, '', '', '2017-08-22 18:16:05', '2017-08-22 18:16:05', 0),
(502, 'Mowing', '', 24, 0, '', '', '2017-08-22 18:16:12', '2017-08-22 18:16:12', 0),
(503, 'Pest Control', '', 24, 0, '', '', '2017-08-22 18:16:18', '2017-08-22 18:16:18', 0),
(504, 'Pesticide Spraying', '', 24, 0, '', '', '2017-08-22 18:16:24', '2017-08-22 18:16:24', 0),
(505, 'Pollinator Gardens', '', 24, 0, '', '', '2017-08-22 18:16:31', '2017-08-22 18:16:31', 0),
(506, 'Pond and Water Features', '', 24, 0, '', '', '2017-08-22 18:16:37', '2017-08-22 18:16:37', 0),
(507, 'Snow Removal', '', 24, 0, '', '', '2017-08-22 18:16:43', '2017-08-22 18:16:43', 0),
(508, 'Tree Pruning', '', 24, 0, '', '', '2017-08-22 18:16:49', '2017-08-22 18:16:49', 0),
(509, 'Tree/Stump Removal', '', 24, 0, '', '', '2017-08-22 18:16:55', '2017-08-22 18:16:55', 0),
(510, 'Weed Removal', '', 24, 0, '', '', '2017-08-22 18:17:02', '2017-08-22 18:17:02', 0),
(511, 'Wildlife Removal', '', 24, 0, '', '', '2017-08-22 18:17:08', '2017-08-22 18:17:08', 0),
(513, 'Lodging', '', 23, 0, '', '', '2017-10-06 21:41:05', '2017-10-06 21:41:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eb_service_schedule`
--

CREATE TABLE `eb_service_schedule` (
  `ss_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ss_meeting_title` varchar(100) NOT NULL,
  `ss_address` varchar(100) NOT NULL,
  `ss_date` date NOT NULL,
  `ss_time` time NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_tax_id`
--

CREATE TABLE `eb_tax_id` (
  `t_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `t_legal_name` varchar(100) NOT NULL,
  `t_tax_id_no` varchar(100) NOT NULL,
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_tax_id`
--

INSERT INTO `eb_tax_id` (`t_id`, `user_id`, `t_legal_name`, `t_tax_id_no`, `created_on`, `update_on`) VALUES
(1, 1, '1231', '123123123', '2017-10-16', '2017-10-16 21:46:03'),
(2, 2, 'Piyushkumar Kachariya', '123456789', '2017-10-11', '2017-10-11 16:50:45'),
(3, 5, 'Chaitanya Desai ', '123456789', '2017-10-17', '2017-10-17 12:38:34'),
(4, 9, 'Arleez Jasreen', '123456789', '2017-10-06', '2017-10-06 20:41:03'),
(5, 15, 'Gabe Melon', '123123123', '2017-10-09', '2017-10-09 19:41:03'),
(6, 21, 'Tony Montana', '123456789', '2017-10-07', '2017-10-07 00:18:02'),
(7, 26, 'kheni1001', '123456789', '2017-10-09', '2017-10-09 13:21:58'),
(8, 10, 'Piyush', '123456789', '2017-10-09', '2017-10-09 18:18:34'),
(9, 28, 'Kp', '123456789', '2017-10-09', '2017-10-09 22:08:08'),
(13, 38, 'Kim Melon', '123123123', '2017-10-11', '2017-10-11 01:06:56'),
(14, 41, 'G melon', '123123123', '2017-10-11', '2017-10-11 18:12:05'),
(15, 45, 'Gabe Melon', '123123123', '2017-10-14', '2017-10-14 00:47:31'),
(16, 47, 'G melon', '123123123', '2017-10-16', '2017-10-16 19:33:22'),
(17, 49, 'Dhruti Shah', '123456789', '2017-10-17', '2017-10-17 09:48:30'),
(18, 56, 'Piyush kachariya', '122112211', '2017-10-18', '2017-10-18 21:46:23'),
(19, 74, 'provider8001', '123456789', '2017-11-10', '2017-11-10 10:52:09'),
(20, 75, 'provider8002', '123456789', '2017-11-10', '2017-11-10 10:56:06'),
(21, 24, 'cd.sparkle001@gmail.com', '123456789', '2017-11-16', '2017-11-16 05:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `eb_transaction`
--

CREATE TABLE `eb_transaction` (
  `t_id` int(11) NOT NULL,
  `sj_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `charge_id` text NOT NULL,
  `t_type` varchar(100) NOT NULL,
  `t_descp` text NOT NULL,
  `t_total` text NOT NULL,
  `t_net_total` text NOT NULL,
  `t_invoice` text NOT NULL,
  `t_refund` int(11) NOT NULL COMMENT 'refund amount',
  `t_refund_type` int(11) NOT NULL COMMENT '0= history page and 1 = refund page',
  `t_card` text NOT NULL,
  `t_bank` text NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eb_user`
--

CREATE TABLE `eb_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_service_type` int(11) NOT NULL COMMENT '0 = Service provider, 1 = Service seeker',
  `user_active` int(11) NOT NULL COMMENT '0 = inactive, 1 = active',
  `user_freeze` int(11) NOT NULL COMMENT '1 = freeze, 0 = unfreeze',
  `eb_quest_counter` int(11) NOT NULL COMMENT 'security QA counter',
  `user_setup` varchar(100) NOT NULL COMMENT 'It will store the step. That user saved finish its profile setting or not.',
  `wel_pop_id` int(11) NOT NULL COMMENT '0 = New user, 1 = old user',
  `notificationsetting` text NOT NULL COMMENT 'true: notificationsetting check , False: notificationsetting Not chek',
  `created_on` date NOT NULL,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `socket_id` varchar(255) NOT NULL,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wallet_amount` varchar(1000) NOT NULL DEFAULT '0',
  `dispute_submit` int(11) NOT NULL DEFAULT '0' COMMENT 'dispute submited popup, 0 = not open, 1 = open',
  `dispute_recevied` int(11) NOT NULL DEFAULT '0' COMMENT 'dispuet received popup, 0 = not open and 1 = open',
  `mobile_msg_notify` int(11) NOT NULL DEFAULT '1' COMMENT '0 = off, 1= on',
  `mobile_notify` int(11) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `mobile_token_type` text NOT NULL COMMENT '0 = andriod, 1 = IOS',
  `mobile_token_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_user`
--

INSERT INTO `eb_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_service_type`, `user_active`, `user_freeze`, `eb_quest_counter`, `user_setup`, `wel_pop_id`, `notificationsetting`, `created_on`, `update_on`, `del_in`, `is_online`, `socket_id`, `last_active`, `wallet_amount`, `dispute_submit`, `dispute_recevied`, `mobile_msg_notify`, `mobile_notify`, `mobile_token_type`, `mobile_token_id`) VALUES
(1, 'George Williams', 'gabriel.melean@neopeutics.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-04', '2017-11-27 10:47:01', 0, 0, '', '2017-11-23 00:58:16', '535', 1, 1, 0, 0, '', ''),
(2, 'Piyush Kachariya', 'piyushkachariya111@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-04', '2017-11-27 10:47:01', 0, 0, '', '2017-11-26 00:12:32', '12797.9', 1, 1, 1, 1, '1', 'B4D1FCC04A022E84B2CF3F5BCC995BFAD425BB1443694F0B2026D427CDB8EB1B'),
(3, 'Gregg Smith', 'gabriel.melean@yahoo.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-04', '2017-11-27 21:40:01', 0, 0, '', '2017-11-27 21:31:48', '0', 1, 1, 0, 1, '1', '0A07532758AF117A3C6C6C0FCDB5453A19BB11040944B3EC64635FE12B7BA224'),
(4, 'P & K', 'piyush.kachariya@neopeutics.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-04', '2017-11-27 10:47:01', 0, 0, '', '2017-11-21 18:48:28', '0', 1, 1, 1, 1, '', ''),
(5, 'Chaitanya Desai', 'cd.sparkle001@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-05', '2017-11-28 12:50:01', 0, 0, '', '2017-11-28 12:43:05', '270', 1, 1, 1, 1, '0', ''),
(8, 'Hrishabh', 'hs.sparkle007@gmail.com', '25d55ad283aa400af464c76d713c07ad', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-05', '2017-11-28 06:45:01', 0, 0, '', '2017-11-28 06:39:11', '0', 1, 1, 1, 0, '0', 'cClkoEUOsGc:APA91bFTyq9Tcyuxw6atExePxUWQ4p3z2qL0yP228R5i1kGfbBzADooaeCXubzEx0UNEvKwsQkAVh_2V_UFVYgVdGjnqf92JgHkBP6znxUMTwEn8gNfwBcs1bKr088Pwp7YZNlM4pgZT'),
(9, 'Arley J', 'arleezj@gmail.com', '2665435e87fbf3b4c39393448eab36d7', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-05', '2017-10-28 04:52:43', 0, 0, '', '2017-10-07 00:04:50', '0', 0, 0, 0, 0, '', ''),
(11, 'test', 'test@c.com', '25f9e794323b453885f5181f1b624d0b', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 01:17:13', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(13, 'Test', 'Test@d.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 18:29:31', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(14, 'Test', 'Test@p.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 18:30:25', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(16, 'Gabrielle McGuiness', 'gabriel.melean12@mail.com', '25f9e794323b453885f5181f1b624d0b', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-06', '2017-10-06 18:53:15', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(18, 'dsa', 'sa@gmail.com', 'b1f21a24996bf26a0fa735631ac6b1bc', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 22:47:46', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(19, '43432', '12@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 22:54:09', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(20, '2342', '23@gmail.com', 'df8bac1097c1a43e47797a6399ddf613', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-06', '2017-10-06 22:58:49', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(21, 'Tony Montana', 'latifah1957@gmail.com', '02ebebb66d1062f3ad5b78e9b7ecc7c1', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-07', '2017-10-07 00:27:18', 0, 0, '', '2017-10-07 00:27:18', '0', 0, 0, 0, 0, '', ''),
(22, '1343', '34@gmail.com', '17a957c894512c8f63ad1e46ed8f10c0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\"]', '2017-10-07', '2017-10-07 00:54:12', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(24, 'Divyesh', 'dd.sparkle006@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-09', '2017-11-27 10:47:01', 0, 0, '', '2017-11-16 09:28:21', '0', 0, 0, 0, 0, '', ''),
(26, 'Dilip', 'kheni1001@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0, 1, 0, 0, 'STEP3', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-09', '2017-11-15 05:17:39', 0, 0, '', '2017-11-15 05:17:39', '0', 0, 0, 0, 0, '', ''),
(27, 'Roger Gerald', 'r.gerald88@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-09', '2017-10-09 16:26:55', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(31, 'I am Seeker', 'seeker@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-10', '2017-11-27 10:47:01', 0, 0, '', '2017-11-16 15:08:50', '0', 1, 0, 1, 1, '0', 'f7dBVGyUhFs:APA91bG2eyZYGAV51PstPK2ub_i4FvIGPT1Kr2Nmv-lidSsy0BhT-M4kMt0ABVdKIP-Ki8B0BXnvu-7nxPIsnElGYjtzt_IHeXgWxnR4SO8XBMAXAvoUR0DgtYauJVdPQYr2DKptDTWN'),
(33, 'Tony', 'antonespira@neopeutics.com', '8bed660626bcfd044941c6881d70d73c', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-10', '2017-10-10 23:06:36', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(34, 'Bruce Williams', 'b.williams88@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 1, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-10', '2017-11-16 07:28:19', 0, 0, '', '2017-11-16 07:28:10', '0', 0, 0, 0, 0, '', ''),
(35, 'Cassady Cambell', 'c.cambell1985@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-10', '2017-10-10 23:32:27', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(36, 'Karen Martinez', 'k.martinez41@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-11', '2017-10-11 00:21:55', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(39, 'Test', 'Test@cc.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-11', '2017-10-11 17:39:28', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(42, 'Tony Ee', 'anton.espira@neopeutics.com', 'a877ad9d218a7b41f7736ee71b607c99', 1, 1, 0, 0, 'STEP3', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-11', '2017-10-11 23:50:08', 0, 0, '', '2017-10-11 23:50:08', '0', 0, 0, 0, 0, '', ''),
(43, 'Tester', 'test@co.co', '3a9c2dd279e55cdbe85d6c4806253488', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-13', '2017-10-13 23:47:31', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(44, 'Gabrielle McGuiness', 'gabriel.melean12@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-13', '2017-11-14 05:30:48', 0, 0, '', '2017-10-14 01:29:02', '0', 0, 0, 0, 0, '', ''),
(46, 'Chaiituuu', 'chaitanya21093@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-14', '2017-10-14 05:26:09', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(48, 'kp', 'kp123@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP2', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-17', '2017-10-24 16:45:35', 0, 0, '', '2017-10-24 16:45:35', '0', 0, 0, 0, 0, '', ''),
(51, 'Dhruti', 'ds.sparkle018@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP2', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-17', '2017-10-23 06:03:30', 0, 0, '', '2017-10-17 10:21:06', '0', 0, 0, 0, 0, '', ''),
(53, 'I m Provider', 'provider@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-17', '2017-11-27 10:47:01', 0, 0, '', '2017-11-16 10:02:43', '50', 0, 0, 1, 1, '', ''),
(55, 'Piyush Kachariya', 'private@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-18', '2017-11-27 10:47:01', 0, 0, '', '2017-11-18 02:13:51', '0', 0, 0, 0, 0, '', ''),
(56, 'Piyush Kachariya', 'piyushkachariya007@gmail.com', 'f88c27acfa77d1dafcde63866772c7ab', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-18', '2017-11-27 10:47:01', 0, 0, '', '2017-11-17 09:53:26', '10', 0, 0, 0, 0, '', ''),
(57, 'Testing', '145@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP3', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-10-23', '2017-10-24 16:44:35', 0, 0, '', '2017-10-24 16:44:35', '0', 0, 0, 0, 0, '', ''),
(59, 'Archana sparkle', 'ar.sparkle019@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-10-25', '2017-10-25 06:21:13', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(60, 'heli', 'hn.sparkle002@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 0, 0, 0, 0, 'STEP1', 0, '', '2017-11-03', '2017-11-03 04:25:24', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(61, 'Sunny', 'armour100@gmail.com', 'c3423bfcd1b5b450bf57df11f7413ad1', 0, 1, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-03', '2017-11-04 06:24:52', 0, 0, '', '2017-11-04 06:24:52', '0', 0, 0, 0, 0, '', ''),
(62, 'bhumika', 'bhumi.si016@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-04', '2017-11-04 10:24:08', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(63, 'diya', 'bhumika.si016@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-04', '2017-11-04 10:27:26', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(64, 'Hello', 'hello@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-06', '2017-11-06 19:09:16', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(65, 'Pradip Lakhani', 'lakhani_pradip20@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-08', '2017-11-08 17:44:35', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(66, 'Tester', 'tester@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-09', '2017-11-27 10:47:01', 0, 0, '', '2017-11-17 04:02:22', '0', 1, 0, 1, 1, '1', '1B64876C4A2C69143060DB5DBB68451E5C9C2C8C634C4A4BE0EC04540BB6F957'),
(67, 'Ashish Dhanani', 'ashishdhanani.si@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-09', '2017-11-09 04:15:02', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(68, 'Navneet Android', 'navneet.si007@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP3', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-09', '2017-11-09 05:31:07', 0, 0, '', '2017-11-09 05:31:07', '0', 0, 0, 0, 0, '', ''),
(69, 'Kerry Ross', 'kerry.ross88@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-09', '2017-11-09 20:43:13', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(70, 'Kerry Ross', 'kerry.ross1990@yandex.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 1, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-09', '2017-11-09 20:45:32', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(71, 'Sean Jackson', 'ally2e.goproxima@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0, 0, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-09', '2017-11-09 20:46:22', 0, 0, '', '0000-00-00 00:00:00', '0', 0, 0, 0, 0, '', ''),
(72, 'seeker8001', 'seeker8001@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-10', '2017-11-27 10:47:01', 0, 0, '', '2017-11-16 11:30:21', '0', 0, 0, 1, 1, '0', 'e_Y18lAttIE:APA91bELU6b8igZ_MGika-EKMlAbFSvxRhEivig6ln9QzSxaSr6NgeLyX734Q5kS7bA9AQ3B1PjAMKfATviCtMmNpheiWSTV2OuSeordpx8DnhQqNQu14cowOk4IK_ERIhKYTtW0iXTU'),
(73, 'seeker8002', 'seeker8002@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-10', '2017-11-16 04:22:33', 0, 0, '', '2017-11-10 10:49:46', '0', 0, 0, 0, 1, '1', '61F84CDFF111DED771C4E32A19C7437662B281D4F984B693B5A4C7F61EC2DFFA'),
(74, 'provider8001', 'provider8001@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-10', '2017-11-27 10:47:01', 0, 0, '', '2017-11-17 11:14:29', '0', 0, 0, 1, 1, '', ''),
(75, 'provider8002', 'provider8002@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0, 1, 0, 0, 'STEP5', 1, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2017-11-10', '2017-11-16 11:49:48', 0, 0, '', '2017-11-16 11:49:48', '0', 0, 0, 0, 0, '', ''),
(77, 'Volha Radziuk', 'olgaradziuk@gmail.com', '2aa770992546016c4c8132ab5290c73d', 1, 1, 0, 0, 'STEP3', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"job_completion : true\",\"payment_reminder : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"custom_payment : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\"]', '2017-11-28', '2017-11-28 04:52:10', 0, 0, '', '2017-11-28 04:52:10', '0', 0, 0, 1, 1, '', ''),
(78, 'mehul', 'm@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 0, 1, 0, 0, 'STEP1', 0, '[\"receive_message : true\",\"post_jon_in_area : true\",\"job_approve_decline  : true\",\"requested_job_close  : true\",\"receive_service_request  : true\",\"schedule_submitted  : true\",\"confirm_decline_schedule : true\",\"hold_job : true\",\"ended_engagement : true\",\"payment_issue : true\",\"rating_review : true\",\"rehire : true\",\"filed_dispute : true\",\"cancel_dispute : true\",\"resolve_dispute : true\",\"Enable_Pay_Option : true\",\"diff_pay : true\",\"custom_pay : true\",\"hide_post : true\",\"transaction_fail : true\",\"payment_refund : true\",\"send_dispute_msg : true\",\"custom_refundpayment : true\",\"custom_payment : true\"]', '2019-09-15', '2019-09-15 14:52:08', 0, 0, '', '2019-09-15 09:22:08', '0', 0, 0, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `eb_user_profile`
--

CREATE TABLE `eb_user_profile` (
  `up_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user account id',
  `up_sc_id` int(11) NOT NULL COMMENT 'Service category id',
  `up_name` varchar(100) NOT NULL,
  `up_service_type` tinyint(1) NOT NULL COMMENT '0 for individual ,1 for business',
  `up_title` varchar(100) NOT NULL,
  `up_profile_pic` varchar(100) NOT NULL,
  `up_phone_number` varchar(100) NOT NULL,
  `up_about` text NOT NULL,
  `up_skills` text NOT NULL,
  `up_address` text NOT NULL,
  `up_city` varchar(100) NOT NULL,
  `up_state` varchar(100) NOT NULL,
  `up_country` varchar(100) NOT NULL,
  `up_postal_code` varchar(100) NOT NULL,
  `up_lat` varchar(100) NOT NULL COMMENT 'latitude',
  `up_long` varchar(100) NOT NULL COMMENT 'longtitude',
  `facebook_id` varchar(100) NOT NULL,
  `twitter_id` varchar(100) NOT NULL,
  `google_id` varchar(100) NOT NULL,
  `linkedin_id` varchar(100) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_company_name` varchar(255) NOT NULL,
  `up_website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eb_user_profile`
--

INSERT INTO `eb_user_profile` (`up_id`, `user_id`, `up_sc_id`, `up_name`, `up_service_type`, `up_title`, `up_profile_pic`, `up_phone_number`, `up_about`, `up_skills`, `up_address`, `up_city`, `up_state`, `up_country`, `up_postal_code`, `up_lat`, `up_long`, `facebook_id`, `twitter_id`, `google_id`, `linkedin_id`, `updated_on`, `up_company_name`, `up_website`) VALUES
(1, 1, 0, 'George Williams', 0, 'Dog Walker', 'uploads/profile-pic/cf552f421c5da3616620e676af1c0085.png', '4084105956', 'Experienced dog walker here. I have a yorkie and toy poodle, but have experience walking dogs of the larger variety such as pitbulls and huskies.', '[\"Dog Walking\",\"Animal Care\",\"Dog Care\",\"Animal Wellness\"]', '6203 San Ignacio Avenue, Suite 110', 'San Jose', 'California', 'United States', '95112', '37.2364125', '-121.7779227', '', '', '', '', '2017-10-10 16:06:19', '', ''),
(2, 2, 0, 'Piyush Kachariya', 0, 'Software Engineer', 'uploads/profile-pic/52316458b717fa28339fd7cc114fd964.jpg', '9256639677', 'Working as software engineer in startup. We are building platforms for users to get work life easily manageable. ', 'null', '60 Dascanso Drive', 'San Jose', 'California', 'United States', '95134', '37.4059503', '-121.9399195', 'Www.facebook.com', '', '', '', '2017-10-18 16:35:53', '', ''),
(3, 3, 0, 'Gregg Smith', 0, 'Operations Associate', 'uploads/profile-pic/c780a571f6c7145c5a4bfa9ffba5318d.png', '4084105956', 'I\'m here looking for services provided by capable individuals!', '[\"Dog Walking\",\"Cooking\",\"Cleaning\",\"Design\",\"Art\",\"Financials\"]', '6203 San Ignacio Ave, Suite 110', 'San Jose', 'California', 'United States', '95119', '37.2364125', '-121.7779227', '', '', '', '', '2017-10-04 20:31:29', '', ''),
(4, 4, 0, 'P & K', 0, 'Project Manager', 'uploads/profile-pic/ef042c93e8c6dfdc962cd0c1a36ad3b9.jpg', '9256639677', 'I am working on project manager position in our company. ', '[\"Cook\",\"Driver\",\"Handy Man\\/Woman\"]', '6203 San ignacio Ave', 'South San Jose', 'California', 'United States', '95119', '37.2364125', '-121.7779227', '', '', '', '', '2017-11-20 18:08:27', '', ''),
(5, 5, 0, 'Chaitanya Desai', 0, 'Spy', 'uploads/profile-pic/ff1ed7a3c0c61918cb5ab9f1c831168d.jpg', '8866696697', 'My name is Chaitanya, and I am a Certified PHP Developer from Valsad.\r\n\r\nI have over 1 years commercial experience, ranging from small projects to complex systems with vast databases,\r\n\r\nI am a talented and versatile developer who specialises in custom web development, focusing on custom module development for Codeigniter.\r\n\r\nI have skills as a PHP developer and have extensive experience with custom coding and with the CodeIgniter Web Framework.\r\n\r\nMy expertise is only an email away. If you would like to utilise my experience, versatility and customer focus on your next project, please get in touch. Whatever your business needs, I can help make it a reality.', '[\"Wordpress\",\"Html\"]', '306, Sangita Apartment', 'Valsad', 'Gujarat', 'India', '396001', '20.6034371', '72.926355', '', '', '', 'https://www.linkedin.com/in/chaitanya-desai-96249b84/', '2017-11-11 10:08:31', '', ''),
(6, 9, 0, 'Arley J', 0, 'Home Organization / Family Management', 'uploads/profile-pic/430624a7cf53f06396e4955afa225110.jpg', '4154885099', 'Hi there, \r\n\r\nI love organizing and rearranging things to create a neat and tidy environment and transforming your home into a lovely retreat place for you, your family and guest(s) to enjoy. \r\n\r\nEven with the existing furniture and decoration you already have, some thoughtful arrangement and organization focusing on efficient user experience can transform your home into something special and wonderful experience.\r\n\r\n', '[\"User Experience\",\"Critical Thinking\",\"Productive Concept\",\"Project Management\",\"Team Management\",\"People Skills\",\"Space Coordination\",\"Design\",\"Home Staging\",\"Activity Management\"]', '6203 San Ignacio Ave', 'San Jose', 'California', 'United States', '95119', '37.2364125', '-121.7779227', '', '', '', '', '2017-10-05 23:14:22', '', ''),
(8, 8, 0, 'Hrishabh', 0, 'Web designer', 'uploads/profile-pic/4daf29f5485182ad24f29a1f51281bb6.png', '9876543210', 'Senior web designer @Sparkle INfotech.\r\n\r\nI am a Web & Graphic designer based in real\r\nmarket.\r\n I have a passion for designing detailed,creative and modern websites & graphics.\r\n\r\n I have extensive knowledge of graphic design and my objective is to utilize my skills and knowledge. \r\n\r\nI believe in myself and like doing challenging\r\nwork, which would satisfy my instinct to learn and do more. I would anticipate receiving some quality work experience that provides me an \r\ninsight into the working of an organization like yours, which would enrich my knowledge and fulfill my goals.', '[\"Html\",\"Bootstrap\",\"Photoshop\",\"Css\",\"Illustruter\",\"Wordpress\",\"Visual composer\"]', 'Rajhans 2, near nirmal hospital', 'Surat', 'Gujarat', 'India', '395001', '21.1812543', '72.8246493', '', '', '', '', '2017-10-26 07:12:51', '', ''),
(11, 21, 0, 'Tony Montana', 0, 'Plant / Environment Professional', 'uploads/profile-pic/87f0e7370fa14500f350b45672cdcb20.JPG', '4152989827', 'I am a highly qualified biologist and a plant / nature enthusiast. I can offer great support, consultation and planning service for any landscape, eco-friendly garden/ resort, pollinator garden and various other green projects. ', '[\"Ecology\",\"Biology\",\"Botany\",\" Project management\",\"Waste management\",\"Energy effiency\",\"Green and clean tech\",\"Forestry\",\"Soil content\",\"Fertilizer\"]', '6203 San Ignacio Ave, Suite 110', 'San Jose', 'California', 'United States', '95119', '37.2364125', '-121.7779227', '', '', '', '', '2017-10-07 00:23:18', '', ''),
(12, 26, 0, 'Dilip', 0, 'Kheni', 'uploads/profile-pic/cef34650bc87bb1204ef0143b9d8adf2.png', '8866300463', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc.', '[\"Lorem ipsum\",\"dolor \",\"consectetuer \",\"adipiscing \",\"montes\",\"pretium \",\"venenatis \"]', 'Surat', 'Surat', 'Ain Temouchent', 'Algeria', '395006', '', '', 'https://www.facebook.com/', '', '', '', '2017-10-09 13:25:41', '', ''),
(15, 10, 0, 'Piyush ', 0, 'QA', '', '3232323323', 'QA', 'null', 'Santa Clara', 'Santa Clara', 'California', 'United States', '343434', '37.3541079', '-121.9552356', '', '', '', '', '2017-10-09 22:02:09', '', ''),
(16, 28, 0, '007', 0, 'QA', '', '3546546455', '43243', 'null', 'Fremont', 'Fremont', 'California', 'United States', '34322334', '37.5482697', '-121.9885719', '', '', '', '', '2017-10-09 22:07:37', '', ''),
(20, 31, 0, 'I am Seeker', 0, 'QA', 'uploads/profile-pic/24a36d1931fc8cf2fc9d0cdc9fc1c796.jpg', '324324324432', 'Qa', 'null', 'Test', 'San jose', 'California', 'United States', '455435', '37.3876527', '-121.9299545', '', '', '', '', '2017-11-16 03:55:35', '', ''),
(26, 42, 0, 'Tony Ee', 0, 'Always busy....', '', '4157765242', 'Always busy', '[\"Gardening\"]', '23 San Ignacio', 'San Jose (and vicinity)', 'California', 'United States', '95138', '37.2339529', '-121.7736027', '', '', '', '', '2017-10-11 22:42:57', '', ''),
(27, 44, 0, 'Gabrielle McGuiness', 0, 'Mother', 'uploads/profile-pic/7fa804bd5d9ca4a984174a18eaedfcf1.jpg', '1231231231231', 'Hello EezyBee community! My name is Gabrielle McGuiness and I\'m a mother of three! As you can imagine, I\'ll be needing a lot of help around the house. Won\'t you provide your service for me? It would be much appreciated!', '[\"Housecare\",\"Lawn Care\",\"Childcare\",\"Household\",\"Handy Man\\/Woman\"]', '123', 'San Diego', 'California', 'United States', '12311231', '33.4016243', '-117.5935187', '', '', '', '', '2017-10-14 00:43:29', '', ''),
(30, 48, 0, 'kp', 0, 'Test', 'uploads/profile-pic/23d45c55bcd3f997e6b6ae9b1774e30c.png', '234323243243242', 'Y4ewrew', '', '21sdfdsf', 'San jose', 'California', 'United States', '43543543', '', '', '', '', '', '', '2017-10-23 06:02:43', '', ''),
(33, 51, 0, 'Dhruti', 0, 'Developer', '', '1234567890', 'My self', '', 'Adajan', 'Surat', 'Gujarat', 'India', '395009', '21.1925707', '72.7997356', '', '', '', '', '2017-10-23 06:02:14', '', ''),
(35, 53, 0, 'I m Provider', 0, '654654', 'uploads/profile-pic/c9736eb669c21d191d4ec98bcf567196.jpg', '65464565465', 'Fsdfds', 'null', '5646456', 'Yryrty', 'Alaska', 'United States', '546456', '', '', '', '', '', '', '2017-11-16 03:49:17', '', ''),
(36, 55, 0, 'Private Account', 1, 'Software Engineer', 'uploads/profile-pic/58167475ddf0f20735cb51c5c61efa49.jpg', '9256639677', 'I am software engineer and provide software services to my clients for their website and mobile application development.', '', 'McCarth Blvd', 'San Jose', 'California', 'United States', '95134', '37.3980613', '-121.9129733', '', '', '', '', '2017-10-23 06:02:24', 'Neopeutics Inc.', 'Www.eezybee.com'),
(37, 56, 0, 'Piyush Kachariya', 0, 'Technical Engineer', 'uploads/profile-pic/ace7ee2c946d92c5bc395098ea22fb11.jpeg', '9256639677', 'I love to work as a technical engineer with startup.', 'null', '6206 San Ignacio Ave, Suit 140', 'San Jose', 'California', 'United States', '95112', '37.2340908', '-121.7768388', '', '', '', '', '2017-10-31 17:14:38', '', ''),
(38, 57, 0, 'Testing', 0, 'QA', '', '3434342322', 'Testing', 'null', 'Abcd', 'San jose', 'California', 'United States', '34422', '37.3330292', '-121.8865184', '', '', '', '', '2017-10-23 17:38:21', '', ''),
(39, 68, 0, 'Navneet Android', 1, 'Android devloper', 'uploads/profile-pic/869020091d46b83bafec70a1981f542f.jpg', '1234567890', 'I am good android developer.', '[\"Android\",\"Java\",\"Php\"]', 'Surat', 'Suart', 'Gujarat', 'India', '395006', '21.1702401', '72.8310607', '', '', '', '', '2017-11-09 04:36:37', 'Significant', 'Www.google.com'),
(40, 66, 0, 'Tester', 0, 'QA', '', '17878456734', 'Working as Quality Engineer. To do website testing.', '[\"Testing\",\"QA\"]', '6206 San Ignacio Ave, Suit 140', 'San Jose', 'California', 'United States', '95114', '37.2340908', '-121.7768388', '', '', '', '', '2017-11-10 01:06:32', '', ''),
(41, 72, 0, 'seeker8001', 0, 'Detective', 'uploads/profile-pic/179f5a17be8e4de6b3fac1be1b522e0d.png', '09876543210', 'Sparkle Infotech is a PHP, Nodejs based development company in India, has been linked with PHP and Nodejs based software development, and has deployed numerous robust web applications rewarding the most complex of client necessities on a steady basis. We have produced our own coded that gives better customer service and quick response time. Sparkle Infotech offer send to end Web Application Development Solutions. The company utilizes a team of experienced and dedicated web programmers and programming experts who can examine the most complicated business logic, and working allied with large volumes of data storage and processing. With years of experience with PHP and Nodejs, we are expert in the lot related to website maintenance and improvement to fully customized powerful websites.', '[\"Criminal minds1\",\"Criminal minds1\",\"Criminal minds1\"]', 'Bhatar road', 'Surat', 'Gujarat', 'India', '395008', '21.1691674', '72.8149917', '', '', '', '', '2017-11-10 10:38:32', '', ''),
(42, 73, 0, 'seeker8002', 0, 'Professal develooper', '', '8976543210', 'Sparkle infotech\'s presence in mobile application development is far reaching. With expertise in mobile app development services in India, the company has been a prominent name in developing iPhone apps for a number of clients from many different industries including retail, entertainment, sports, etc. We have been named best iphone app development company by several clients. The expert iPhone apps developers at Sparkle infotech understand your wish to develop an application for your business. Whether it is related to getting the best return on investment, entertainment, or a desire to have engaged users, Sparkle infotech is adept at putting your ideas in motion.', '[\"Dveelope1\",\"Dveloper2\",\"Dveloper3\"]', 'Civil char ratsa', 'Surat', 'Gujarat', 'India', '395008', '21.1811642', '72.8241353', '', '', '', '', '2017-11-10 10:48:57', '', ''),
(43, 74, 0, 'provider8001', 0, 'Bodygaurd', '', '7896543210', 'Sparkle infotech is an Android app development company in India, has been developing Android apps since the birth of the platform. We have incredible Android Developers and designers specializing exclusively in Android Apps to meet your needs. As this powerful mobile and tablet-friendly OS gains an ever widening foothold among hardware manufacturers, Sparkle infotech is well placed with technical and design expertise that runs the gamut of Android application. The Sparkle infotech process begins and ends with the client. From first contact and discussion of your idea to the final release on Google Play, everything we do is client-centered.', '[\"Bodygaurd1\",\"Bodygaurd2\",\"Bodygaurd3\"]', 'Bhatar road', 'Surat', 'Gujarat', 'India', '395008', '21.1691674', '72.8149917', '', '', '', '', '2017-11-10 10:51:53', '', ''),
(44, 75, 0, 'provider8002', 0, 'Dancer', '', '67890654321', 'The mobile app market is exploding with games being the most popular category of apps to reach out to an incredible number of users. Almost every mobile user loves playing games but what comes as a challenge is to develop such games that would keep the users hooked onto their phones for hours. It requires imagination, creativity and right technology to create quality mobile games which is the forte of Sparkle infotech. We have a strong and skilled team of game developers who are in a continuous strive to keep themselves updated and stay ahead of the competitors.', '[\"Dancer1\",\"Dancer2\",\"Dancer3\"]', 'Bhatar road', 'Surat', 'Gujarat', 'India', '395002', '21.1691674', '72.8149917', '', '', '', '', '2017-11-10 10:55:54', '', ''),
(45, 24, 0, 'Divyesh', 0, 'Php dev', '', '9601780990', 'Hello I am FIne with developing in php', '[\"Php\",\"Jquery\",\"Java\"]', 'A-242, Bhagwati krupa', 'Surat', '', 'United States', '593010', '21.213365', '72.878486', '', '', '', '', '2017-11-16 05:28:44', '', ''),
(46, 77, 0, 'Volha Radziuk', 0, 'UX/UI Designer', '', '375256056905', 'Experienced UX/UI designer', '[\"Design\",\"Cooking\",\"Traveling\"]', 'Minsk,', 'Minsk', 'Horad Minsk', 'Belarus', '220009', '53.9045398', '27.5615244', '', '', '', '', '2017-11-28 04:41:34', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `eb_user_verification`
--

CREATE TABLE `eb_user_verification` (
  `verify_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyword` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keyword_status` int(11) NOT NULL DEFAULT '0' COMMENT '0=unused, 1=used',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_in` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `eb_user_verification`
--

INSERT INTO `eb_user_verification` (`verify_id`, `user_id`, `keyword`, `keyword_status`, `created_on`, `updated_on`, `del_in`) VALUES
(1, 1, 'OzGJfFANkkJrFhOdy8y1zL1Bpnor9l', 1, '2017-10-04 16:19:23', '2017-10-04 16:20:01', 0),
(2, 2, 'kZdbDSCwvoUxvT5DpJxhW3X9d4CAGV', 1, '2017-10-04 16:34:21', '2017-10-04 16:42:31', 0),
(3, 3, 'CwaYvpnoDoREdUEshsrc5tiu0ftfbK', 1, '2017-10-04 16:50:12', '2017-10-04 16:51:43', 0),
(4, 4, 'E3GQvYdJZFCy6kZB3esGeNANr5dE0m', 1, '2017-10-04 17:24:55', '2017-10-04 17:28:08', 0),
(5, 2, 'bFTm6xJojuxscpuQcysCJ81Le1r6nl', 1, '2017-10-04 18:31:31', '2017-10-17 19:06:29', 0),
(6, 5, 'ol1o33AxT1TprJyGLvAKlXbExdR2TO', 1, '2017-10-05 04:30:24', '2017-10-05 04:31:01', 0),
(7, 6, 'kseZsIM6gLe7zwRfmAMmqWWOsdaxk9', 0, '2017-10-05 08:31:25', '2017-10-05 08:31:25', 0),
(8, 7, 'gt7WrQebBfIKBLnAikMOSSbyLrvnmD', 0, '2017-10-05 10:17:40', '2017-10-05 10:17:40', 0),
(9, 7, 'SRBod0DqpP71l3HqdrSl5JpvJiAPIW', 0, '2017-10-05 10:18:30', '2017-10-05 10:18:30', 0),
(10, 7, 'NTfpfBCTqDlJYRHoj7PLV7QruKjZfi', 0, '2017-10-05 10:39:44', '2017-10-05 10:39:44', 0),
(11, 7, 'pp9lLUBj3MCMYyUeZzhFlNbWkmZZnv', 0, '2017-10-05 10:44:35', '2017-10-05 10:44:35', 0),
(12, 7, 'Z7x9aoUdSEy2ZucjSOl2mFZlruPyWa', 0, '2017-10-05 10:45:05', '2017-10-05 10:45:05', 0),
(13, 7, 'ziFX9P3TDevVDCr6XPjZTZbDnh28x3', 0, '2017-10-05 10:46:06', '2017-10-05 10:46:06', 0),
(14, 7, 'iae83XqlJOItGgDeXm9cGu72Mnnyzr', 0, '2017-10-05 10:46:58', '2017-10-05 10:46:58', 0),
(15, 8, 'Apor0AITK90vI9siEwDmqAASq5RxsV', 1, '2017-10-05 10:47:52', '2017-10-05 10:49:47', 0),
(16, 8, 'K98HGajhqAewzYwRzL5dcEwLNZr0az', 1, '2017-10-05 10:49:56', '2017-10-05 11:39:07', 0),
(17, 8, 'mxrHzeuWX2NIshTGql1HVz5ECZ5hoB', 1, '2017-10-05 10:50:19', '2017-10-05 11:39:07', 0),
(18, 8, 'sTDetP5U6p7sD3AR3q4nOCPQovT5UI', 1, '2017-10-05 10:50:56', '2017-10-05 11:39:07', 0),
(19, 8, 'IZtgmCdtf1Hzd3Z7Y2bqrnkfWtcNx3', 1, '2017-10-05 10:51:02', '2017-10-05 11:39:07', 0),
(20, 8, 'fN2UtSFLGlnbtF8qE8djyAFOw0o7jK', 1, '2017-10-05 10:51:54', '2017-10-05 11:39:07', 0),
(21, 8, 'Z7ehNex7vCCF2PBmiR2Qh2IFFZQBui', 1, '2017-10-05 10:52:15', '2017-10-05 11:39:07', 0),
(22, 8, 'tNDdPLLrUI0O8OZRnOrSnTNKJk1sJG', 1, '2017-10-05 10:59:25', '2017-10-05 11:39:07', 0),
(23, 8, 'kWw7YReDcAVZn0xVYAwButHXvwoxJD', 1, '2017-10-05 11:01:11', '2017-10-05 11:39:07', 0),
(24, 8, 'bQcWepCh9v2FsqA3faDva2NqrWQIQ3', 1, '2017-10-05 11:05:55', '2017-10-05 11:39:07', 0),
(25, 8, 'IRe7PRPU9CoNJdAPqKRmTfahAo1BzF', 1, '2017-10-05 11:06:32', '2017-10-05 11:39:07', 0),
(26, 8, 'D9ndQLPZnfcDwmBxKC8EzGEvnhXiWX', 1, '2017-10-05 11:09:50', '2017-10-05 11:39:07', 0),
(27, 8, 'PEw1WnMSu4hShkBpHZ8Eiz0zpx8Ame', 1, '2017-10-05 11:11:46', '2017-10-05 11:39:07', 0),
(28, 8, 'LQCpLTFZUP8zttqTrJwgBONTZx7rFI', 1, '2017-10-05 11:27:27', '2017-10-05 11:39:07', 0),
(29, 8, 'ip5AzOMEBW5qXw0Ok1J6BC9Wz0iKQl', 1, '2017-10-05 11:29:36', '2017-10-05 11:39:07', 0),
(30, 8, 'j3jfPrkYUdBsnwcPIs8qvbgrgUnApj', 1, '2017-10-05 11:34:15', '2017-10-05 11:39:07', 0),
(31, 8, 'jkb3EjE6hxRSfUt2DL6XR3sU3ydgLd', 1, '2017-10-05 11:38:31', '2017-10-05 11:39:07', 0),
(32, 9, 'to9L28HrwMchtuIfANSZqFqCkcjpCJ', 1, '2017-10-05 18:09:29', '2017-10-05 18:48:48', 0),
(33, 10, 'N5DvqqBKCTSfX3ksh4wxp34pVKX3P3', 1, '2017-10-05 18:31:00', '2017-10-09 18:09:31', 0),
(34, 4, 'y6jB4yoCzqYqlbpr9GvnLwlKpPfPFu', 0, '2017-10-06 00:38:21', '2017-10-06 00:38:21', 0),
(35, 4, 'XJtqorKGfjWxrZdITUd7qLsBBuLnvB', 0, '2017-10-06 00:49:11', '2017-10-06 00:49:11', 0),
(36, 4, '07V2UqvRZKgk7CbJekyM53BsvrP2Kj', 0, '2017-10-06 00:50:02', '2017-10-06 00:50:02', 0),
(37, 4, 'X0waw0VpAGgkVi5RYHbAmbsUtbc2jS', 0, '2017-10-06 00:50:20', '2017-10-06 00:50:20', 0),
(38, 4, 'lfP6GTPvDfItYRgoOZQLftkJwAjkQm', 0, '2017-10-06 00:55:28', '2017-10-06 00:55:29', 0),
(39, 4, 'NMjzbncQrVKcBXiyYifQx4ab76pG7h', 0, '2017-10-06 00:55:49', '2017-10-06 00:55:49', 0),
(40, 4, 'W4SrWJzHkrFFnptBXLaM35r1zEQYUc', 0, '2017-10-06 00:55:50', '2017-10-06 00:55:50', 0),
(41, 4, 'jSAYYeyAddYvgA0EtKYJ4IAahgwKJ0', 0, '2017-10-06 00:55:51', '2017-10-06 00:55:51', 0),
(42, 4, '3opmL3rjmqSQoBU6NlQDSyZP33I7qM', 0, '2017-10-06 00:55:51', '2017-10-06 00:55:51', 0),
(43, 4, 'pFjctb031igNR12TCrBcXE8jZr6QWE', 0, '2017-10-06 00:56:04', '2017-10-06 00:56:04', 0),
(44, 4, 'PH3XuhHsc8UHuKidVwsPYXnTe4aWtV', 0, '2017-10-06 00:56:06', '2017-10-06 00:56:06', 0),
(45, 4, '7x4uo1yd3VYE3Xm1xeG2hA8mjdUD93', 0, '2017-10-06 00:56:27', '2017-10-06 00:56:27', 0),
(46, 4, 'AgdyBAYbjQVxH4WK4GT7PyfuQHmbLO', 0, '2017-10-06 00:57:03', '2017-10-06 00:57:03', 0),
(47, 4, 'LC1rLVuNVuxQd5vZ4b19UgLvuvsvI3', 0, '2017-10-06 00:57:58', '2017-10-06 00:57:58', 0),
(48, 4, '0HmYbnfCKsMvi4ZibnhU6d0KcHAC6J', 0, '2017-10-06 00:58:20', '2017-10-06 00:58:20', 0),
(49, 4, 'z7x3mVF2jUtADnmcQCR1ihy9oAABni', 0, '2017-10-06 00:58:39', '2017-10-06 00:58:39', 0),
(50, 4, 'pBMmRGLgKJksUJ3h0o9BS6sN0pFOTm', 0, '2017-10-06 00:59:06', '2017-10-06 00:59:06', 0),
(51, 4, 'aEeYcXH3tpkCjjEMq7CjnxdaIAiAda', 0, '2017-10-06 00:59:31', '2017-10-06 00:59:31', 0),
(52, 4, 'uY6gnI69DD9kevIy0OOHruAFjuQDai', 0, '2017-10-06 00:59:50', '2017-10-06 00:59:50', 0),
(53, 4, 'CSaEG0QenFeTmkBguq0vIV0TSpAVCK', 0, '2017-10-06 01:00:46', '2017-10-06 01:00:47', 0),
(54, 2, 'r4Xt4vYV7KhrLfkqrlnk6OT7K4cnrs', 1, '2017-10-06 01:01:11', '2017-10-17 19:06:29', 0),
(55, 2, 'jDmawdaBTcX7Ye8h9OlHfuOB6MwtAT', 1, '2017-10-06 01:01:40', '2017-10-17 19:06:29', 0),
(56, 2, 'OTnjTocDE0a4jzqJo85lB4JHzfnrWF', 1, '2017-10-06 01:01:56', '2017-10-17 19:06:29', 0),
(57, 4, '0usNOjMY3UjGRRyUBIViYhcjZygZCj', 0, '2017-10-06 01:02:20', '2017-10-06 01:02:20', 0),
(58, 4, 'w01T9jQSPy4wDTNlG12BCtdE9O9mqv', 0, '2017-10-06 01:02:36', '2017-10-06 01:02:36', 0),
(59, 4, 'wIgp4ADjfpGCuxL5vgJovWNbN9q3ZR', 0, '2017-10-06 01:03:31', '2017-10-06 01:03:31', 0),
(60, 4, 'u4CvkKyyharSBWOJnypM7GMmVR2Wvg', 0, '2017-10-06 01:03:56', '2017-10-06 01:03:56', 0),
(61, 4, 'DA2aQiyejnylaL1Pqd8v498oBDBVOx', 0, '2017-10-06 01:07:50', '2017-10-06 01:07:50', 0),
(62, 4, 'ausOPllvFzuhP4UZaHiT6Fsy4NgGZ7', 0, '2017-10-06 01:08:12', '2017-10-06 01:08:12', 0),
(63, 4, '7UNthrG4M3mn83RsLKgIjnBSuC63IK', 0, '2017-10-06 01:08:37', '2017-10-06 01:08:37', 0),
(64, 2, 'sYazvp8YetTelTgssRC0sLhAitVGXd', 1, '2017-10-06 01:08:59', '2017-10-17 19:06:29', 0),
(65, 2, 'U9RRWs0pM3hut447KcM0scKtO7m4i6', 1, '2017-10-06 01:12:03', '2017-10-17 19:06:29', 0),
(66, 4, 'X7xU7rGiLsueVUtFKWV4dmGI0nZkn9', 0, '2017-10-06 01:12:38', '2017-10-06 01:12:38', 0),
(67, 2, 'TjrZUzN6LseWUcqqAwpCjNm8k03wwQ', 1, '2017-10-06 01:16:04', '2017-10-17 19:06:29', 0),
(68, 11, 'uAcRBsVXUNmxpmtxOkvABFO846nugl', 0, '2017-10-06 01:17:13', '2017-10-06 01:17:13', 0),
(69, 11, '3ZbrBImcjrQvNWAQ3izLn21hSiQiS5', 0, '2017-10-06 01:17:21', '2017-10-06 01:17:21', 0),
(70, 2, 'YpDMr6ogSMpLvig338GBWErHTjP0X2', 1, '2017-10-06 01:18:39', '2017-10-17 19:06:29', 0),
(71, 12, '468gy8qszLmsMUgXViAPcZZb7rGCS8', 0, '2017-10-06 13:32:08', '2017-10-06 13:32:08', 0),
(72, 13, 'JA31COQbq8DnQThOobzXR8tRy2x4mP', 0, '2017-10-06 18:29:31', '2017-10-06 18:29:31', 0),
(73, 13, 'nbEmI8Odj7nbFCdDcEwB4D2WsMwYjq', 0, '2017-10-06 18:29:42', '2017-10-06 18:29:42', 0),
(74, 13, '4snIoC7ydgEu9pk2nyTULU3muUxpld', 0, '2017-10-06 18:29:54', '2017-10-06 18:29:54', 0),
(75, 14, 'gokXTzp7UZzor9QkOCcbI74ftbZRTW', 0, '2017-10-06 18:30:25', '2017-10-06 18:30:25', 0),
(76, 13, 'ZNZYNvK9WXOHQbdZD5xUEDOGqf1oYD', 0, '2017-10-06 18:33:52', '2017-10-06 18:33:53', 0),
(77, 15, 'mxQ1gX96dlGuRK6WyLiZD62Eydazrj', 1, '2017-10-06 18:36:16', '2017-10-06 18:39:23', 0),
(78, 16, 'VHWxhACZbzcy7guZwkzxRFVfmdHE3t', 0, '2017-10-06 18:53:15', '2017-10-06 18:53:15', 0),
(79, 17, 'iFJm3Bqde25hp2dGCpvQTBLxdnpXxj', 1, '2017-10-06 18:56:50', '2017-10-06 18:57:46', 0),
(80, 18, 'QWiDzhYoqhfQglHe571uQ5LF9uXhRn', 0, '2017-10-06 22:47:46', '2017-10-06 22:47:46', 0),
(81, 18, 'qtBgOQ2u1vjumdL11gMAzpWHEFlKWe', 0, '2017-10-06 22:49:07', '2017-10-06 22:49:07', 0),
(82, 19, 'hoVVrlwNyh1eDLHBcMAIZH9qoRiyum', 0, '2017-10-06 22:54:09', '2017-10-06 22:54:09', 0),
(83, 20, 'Mjy6uCAE3fIrhJRhAY6HPj6OK6btcG', 0, '2017-10-06 22:58:49', '2017-10-06 22:58:49', 0),
(84, 21, 'idIo71pq4ht4WYOuL8TI2FLfgQsoIP', 1, '2017-10-07 00:06:30', '2017-10-07 00:07:14', 0),
(85, 2, 'oDN9efAq1Mq0iqvHbw7bQOhLBRsBZy', 1, '2017-10-07 00:35:42', '2017-10-17 19:06:29', 0),
(86, 1, '2evDeGXpwUSX1TzR43EOQkPUlkoJAA', 1, '2017-10-07 00:37:31', '2017-11-10 17:50:53', 0),
(87, 22, 'qv43RQplsoXOm5vX5fyOE8sJU10UCx', 0, '2017-10-07 00:54:12', '2017-10-07 00:54:12', 0),
(88, 6, 'IJmdmiiVcxbbsDUxMeHBmaGAIyV3bg', 0, '2017-10-07 04:23:48', '2017-10-07 04:23:49', 0),
(89, 23, 'xL6gaOePOq1artdvQZ7H2FkXSBXeOS', 0, '2017-10-09 06:22:54', '2017-10-09 06:22:54', 0),
(90, 24, 'k39jtjJ2Bsuy6y4jZFVp95tXIASsxC', 1, '2017-10-09 12:53:06', '2017-11-16 05:27:16', 0),
(91, 24, 'aMLG62ZePY1fF1DCpM7LJmZy2Xt8et', 1, '2017-10-09 13:01:55', '2017-11-16 05:27:16', 0),
(92, 25, 'al91mFQlF2TUiE7UOjrfUy2ZBNuT1d', 0, '2017-10-09 13:03:25', '2017-10-09 13:03:25', 0),
(93, 26, 'qthJsh1iCKkeg3wR0QHLV9koaM031x', 1, '2017-10-09 13:09:19', '2017-10-09 13:15:48', 0),
(94, 26, 'PO7R7pwZtR6YvonEDOuxNLbpXyZ9nt', 1, '2017-10-09 13:09:28', '2017-10-09 13:15:48', 0),
(95, 26, 'WHstrtvjZHm7uJ0jgD8ShCCUBcuPfQ', 1, '2017-10-09 13:09:31', '2017-10-09 13:15:48', 0),
(96, 26, 'LbVaHiGOfRJowGkub2GvWAYl15iC5w', 1, '2017-10-09 13:09:58', '2017-10-09 13:15:48', 0),
(97, 26, 'x1waJFptWIpbIx9r5ZoEb5VeadyUL8', 1, '2017-10-09 13:11:21', '2017-10-09 13:15:48', 0),
(98, 2, '774qfIAUFVzc8uvZm8shD2d4fTln6p', 1, '2017-10-09 16:19:59', '2017-10-17 19:06:29', 0),
(99, 1, 'VoNKljv7ZEtSPWXp26BtxWiFZw9jIv', 1, '2017-10-09 16:20:22', '2017-11-10 17:50:53', 0),
(100, 27, 'N1qHfjbQgw4BRiqxnoAMrMscoBL5lG', 0, '2017-10-09 16:26:55', '2017-10-09 16:26:55', 0),
(101, 2, '7E135SwspyxR7fi68emEkxEckqfGgI', 1, '2017-10-09 16:50:17', '2017-10-17 19:06:29', 0),
(102, 10, 'ezwuBiOtvgSdKyg0ff0JnaNvebYNZw', 1, '2017-10-09 18:08:12', '2017-10-09 18:09:31', 0),
(103, 28, 'pJggmJfjVqtPUj3NTgD1JvnfVruQ3m', 0, '2017-10-09 22:05:40', '2017-10-09 22:05:40', 0),
(104, 17, 'cPLW5OcEQSp1qecq2fl6wZ36TZb5kT', 1, '2017-10-10 01:57:13', '2017-10-10 01:58:28', 0),
(105, 24, 'Yo7XU5RcdFKcjjYr61Sa7WwvOtU1Fx', 1, '2017-10-10 04:03:21', '2017-11-16 05:27:16', 0),
(106, 24, 'kcFRGFE5shMbzuvXWutTTpSVVptRk6', 1, '2017-10-10 04:03:29', '2017-11-16 05:27:16', 0),
(107, 24, 'n0SIv8vYRiqBZwQmhHNmeQR4hoiCr4', 1, '2017-10-10 04:03:42', '2017-11-16 05:27:16', 0),
(108, 24, '6zDECrw9YasBh6Sj1ItM0F3se62Cnx', 1, '2017-10-10 04:07:06', '2017-11-16 05:27:16', 0),
(109, 24, '6kP5JBZRfMK0UfkZj458Wk8s1fNvdF', 1, '2017-10-10 04:13:57', '2017-11-16 05:27:16', 0),
(110, 25, 'mUYZ3eMLxFbZEY7luAmAKy0ZOfEqnQ', 0, '2017-10-10 04:14:28', '2017-10-10 04:14:28', 0),
(111, 25, 'YgUYP3iPnxKJhR3lCTI7gpaNGDkqer', 0, '2017-10-10 04:29:11', '2017-10-10 04:29:11', 0),
(112, 24, 'pkCtue1rjURboqvKIptMRlAx81o4Rm', 1, '2017-10-10 04:29:20', '2017-11-16 05:27:16', 0),
(113, 26, 'ArW6kDqv2pI3GggU9d1iT118n8jcBE', 0, '2017-10-10 04:45:34', '2017-10-10 04:45:34', 0),
(114, 29, 'jWTdAFfMBpupMubN6ea1WkIiwotv5K', 0, '2017-10-10 04:56:55', '2017-10-10 04:56:56', 0),
(115, 30, 'LLQHVECJCuINJ7CACps0kW9NW5aynQ', 1, '2017-10-10 05:28:36', '2017-10-10 05:30:48', 0),
(116, 31, 'bP6UqyqCEAoKHIl10pWmaFN48B8dXD', 0, '2017-10-10 19:48:18', '2017-10-10 19:48:18', 0),
(117, 32, 'oYqtSjiAIy8t8dlMyxip6r11bsu3V0', 1, '2017-10-10 21:40:48', '2017-10-10 21:42:15', 0),
(118, 33, '8GMZ3mkvm8f2LFzAVK3lHEdJX0a9Vf', 0, '2017-10-10 23:06:36', '2017-10-10 23:06:36', 0),
(119, 33, 'k9UkSxicj6MjGBQ6gQ9NX14e7mUXRW', 0, '2017-10-10 23:07:57', '2017-10-10 23:07:57', 0),
(120, 34, 'SyeA3jTnNAAY0xadBFrwsrHjQYaYGu', 1, '2017-10-10 23:29:56', '2017-10-10 23:31:00', 0),
(121, 35, 'bPu0ErYXnBorXZLaLZ5rJSCf1ThxSp', 0, '2017-10-10 23:32:27', '2017-10-10 23:32:27', 0),
(122, 35, 'fndeOxCwDUrnmilq3Wojd3Kz3VUbhV', 0, '2017-10-11 00:18:07', '2017-10-11 00:18:07', 0),
(123, 35, '0my2U2TBZr44Xc1SzcaqLE6Fn48nhw', 0, '2017-10-11 00:19:24', '2017-10-11 00:19:24', 0),
(124, 36, 'G52deRjltYJuHdmIWOOdcKIeQHOmCL', 0, '2017-10-11 00:21:55', '2017-10-11 00:21:55', 0),
(125, 36, 'Nj3GBfKOLHEyU5tnH6owmH7b1oq6eW', 0, '2017-10-11 00:23:25', '2017-10-11 00:23:25', 0),
(126, 36, 'BHPaQLnzKziPiqPt3KEf2yt1oGMrJm', 0, '2017-10-11 00:23:27', '2017-10-11 00:23:27', 0),
(127, 36, '3NiRMfnOkiZfwShixMa4nsSRyT09i0', 0, '2017-10-11 00:23:27', '2017-10-11 00:23:27', 0),
(128, 36, 'R16jbzT1uzwTZ3Oh82ocRW6IFcJJOf', 0, '2017-10-11 00:26:09', '2017-10-11 00:26:09', 0),
(129, 36, 'mEJ7Y7clywxA7afCXRzM3e8EMFXu5g', 0, '2017-10-11 00:27:57', '2017-10-11 00:27:57', 0),
(130, 37, '1fcM6eg7enWtZUDorkteUkDJ49cSOt', 1, '2017-10-11 00:30:41', '2017-10-11 00:34:08', 0),
(131, 37, 'J4dF6TY6keuyyonyqMEfU0bVTudfUs', 1, '2017-10-11 00:32:57', '2017-10-11 00:34:08', 0),
(132, 38, '1gyUFoGMgxBZpUaYT9xMRbzwttmB8T', 1, '2017-10-11 00:38:30', '2017-10-11 00:39:38', 0),
(133, 39, 'LWMvFL5qjk6ao43q7v3w2PE6lIVgTr', 0, '2017-10-11 17:39:28', '2017-10-11 17:39:28', 0),
(134, 39, 'PpU1BsTZ8jhhdAN0G7frKzrviLmQFk', 0, '2017-10-11 17:39:44', '2017-10-11 17:39:44', 0),
(135, 40, 'BhRu255wdZUoKH1Dhl5JJ3Qoyromvz', 1, '2017-10-11 17:46:42', '2017-10-18 06:47:21', 1),
(136, 41, '9v0oHjgsOpZHSV0R1Q7QrbzUr4lVyd', 1, '2017-10-11 17:46:58', '2017-10-11 17:47:19', 0),
(137, 42, 'lmA0HppKnGwHkOk46vVT5gPF3Dp9Ob', 1, '2017-10-11 22:38:36', '2017-10-11 22:40:06', 0),
(138, 42, 'lSwylfBoArZiCnGroVDtB92SYqRzz8', 1, '2017-10-11 22:39:26', '2017-10-11 22:40:06', 0),
(139, 23, '18eaSDv7qTmUYmBoLTnOZM8NwaVrYc', 0, '2017-10-13 08:16:09', '2017-10-13 08:16:10', 0),
(140, 43, '9qvXHxSH7Ky1BnkxlAkQ5Y6UavToHy', 0, '2017-10-13 23:47:31', '2017-10-13 23:47:31', 0),
(141, 43, 'dGXSXdFI7UTXvXzHQZDm57oA9QIqHj', 0, '2017-10-13 23:47:42', '2017-10-13 23:47:42', 0),
(142, 44, 'O2MTqAIJOq45QdjDYvf9PZr7UZVucT', 1, '2017-10-13 23:48:05', '2017-10-13 23:48:43', 0),
(143, 45, 'nA6ek6zj9dCsOOmxGrPC9uESgI6NfB', 1, '2017-10-13 23:49:38', '2017-10-13 23:50:18', 0),
(144, 44, 'vZqSkx9OROpAZLaSk1DTPC17UCYkSL', 0, '2017-10-13 23:51:16', '2017-10-13 23:51:16', 0),
(145, 44, 'QJyGvlKzkLgyFtZTaxvSOm5RsDdKvr', 0, '2017-10-13 23:51:18', '2017-10-13 23:51:18', 0),
(146, 1, 'Ex8o8f0233A40zsJHRmq5gxauMtDTT', 1, '2017-10-13 23:51:28', '2017-11-10 17:50:53', 0),
(147, 1, 'FWrZ783jJdpEgXg1CvkVRfllKhHQDb', 1, '2017-10-13 23:51:29', '2017-11-10 17:50:53', 0),
(148, 1, 'hs9IXQM8zcaC8AISyZBv9LbaRKcNkA', 1, '2017-10-13 23:54:28', '2017-11-10 17:50:53', 0),
(149, 1, 'UwzniCMJFKtZ5jOS8QY7bQvK5ySezq', 1, '2017-10-13 23:54:29', '2017-11-10 17:50:53', 0),
(150, 1, 'ox59xFvVTyDmVjXLHJOnxbpccrofNH', 1, '2017-10-13 23:54:31', '2017-11-10 17:50:53', 0),
(151, 1, 'HMztDvigqeO91ft1HVT8GKZh5RSIXI', 1, '2017-10-13 23:54:47', '2017-11-10 17:50:53', 0),
(152, 1, 'd8IzuEHZkJTlEIlhH4GN77cAcGHux7', 1, '2017-10-13 23:54:49', '2017-11-10 17:50:53', 0),
(153, 1, 'C8NCVTk61BnOsxgdVkERlMj5IW5O32', 1, '2017-10-13 23:54:50', '2017-11-10 17:50:53', 0),
(154, 1, 'vsNXLImkfF4n2a4mqmK6B1YZv0OSjC', 1, '2017-10-13 23:54:50', '2017-11-10 17:50:53', 0),
(155, 1, 'LTEgp7ap2QIMJYE8geIXwgof2JXE28', 1, '2017-10-13 23:54:50', '2017-11-10 17:50:53', 0),
(156, 1, 'tJSQ4xOWEjhgB4CXfyTUXcpTN77hFs', 1, '2017-10-13 23:54:50', '2017-11-10 17:50:53', 0),
(157, 1, 'q1C66PpYz3WY4gOlljm8Mi5N1UxU6b', 1, '2017-10-13 23:54:56', '2017-11-10 17:50:53', 0),
(158, 1, 'hFLg60KhvtDJK9GWY0BUzvO6gx7SwZ', 1, '2017-10-13 23:55:02', '2017-11-10 17:50:53', 0),
(159, 1, 'etqhNDlYlGsZGyQN38mweW6yuoxN97', 1, '2017-10-13 23:55:53', '2017-11-10 17:50:53', 0),
(160, 1, 'XzSS8IckUBUUHetYtnHPlgw1k6lVm6', 1, '2017-10-13 23:55:54', '2017-11-10 17:50:53', 0),
(161, 46, '8HASUnlO1j26oOOuzhFfEfY37Pu2xo', 1, '2017-10-14 05:18:26', '2017-10-14 05:26:09', 0),
(162, 47, 'x3USiEocStU04lS96J2bkfqhbQyDeE', 1, '2017-10-16 19:28:19', '2017-10-16 19:28:32', 0),
(163, 2, '4D91KadKZPPivZZnrDAfvHH3JgwFFu', 1, '2017-10-16 19:30:17', '2017-10-17 19:06:29', 0),
(164, 48, 'KHgNeQOunOmoyE3f8NjbCnBdml83TM', 0, '2017-10-17 01:19:54', '2017-10-17 01:19:54', 0),
(165, 23, 'xhpwB00st0Wv2DSJRKMfbzikQjJspl', 0, '2017-10-17 05:48:22', '2017-10-17 05:48:22', 0),
(166, 5, 'xgMAcrHObBhb3ccnx2jWPT8BkFNoko', 0, '2017-10-17 05:52:06', '2017-10-17 05:52:06', 0),
(167, 8, 'lE3uZmNCM4kG4IXtaXXGjHr3hsdNMx', 0, '2017-10-17 05:52:20', '2017-10-17 05:52:20', 0),
(168, 23, '224TalwzZjJGem7CvUvy7BtTePszmv', 0, '2017-10-17 06:39:21', '2017-10-17 06:39:21', 0),
(169, 23, 'WydZWm7MxywxzpnqHkq6FxhRyYpYqZ', 0, '2017-10-17 06:46:57', '2017-10-17 06:46:57', 0),
(170, 8, 'Go2IEXm0UGeNpbt1oG7Sa6S4rV7nu5', 0, '2017-10-17 06:47:04', '2017-10-17 06:47:04', 0),
(171, 8, 'BTISTtOtHF7kn63H4CdiiJJisRtIRP', 0, '2017-10-17 08:38:20', '2017-10-17 08:38:20', 0),
(172, 49, 'H05vsaXFOGuknGoFdQm6Ja8VC1xrQI', 0, '2017-10-17 09:46:08', '2017-10-17 09:46:08', 0),
(173, 50, 'n4EJFG8DRJYI9WFA2zIAVB0zeWmNVa', 0, '2017-10-17 10:08:10', '2017-10-17 10:08:10', 0),
(174, 51, 'tgnUPEiHZ5nMt8oGDHlHMuxypbPnll', 0, '2017-10-17 10:13:56', '2017-10-17 10:13:56', 0),
(175, 26, 'yk8YjzxbldTXINQQZGjJqwgyefJygi', 0, '2017-10-17 12:40:18', '2017-10-17 12:40:19', 0),
(176, 5, 'VOp1Pp9ySeJw2aDmTiCSUqwHHjdE4f', 0, '2017-10-17 13:00:13', '2017-10-17 13:00:14', 0),
(177, 52, 'XRm0hxT0IxJEvdAw52Xe01iAotw6LR', 0, '2017-10-17 18:51:42', '2017-10-17 18:51:42', 0),
(178, 53, 'j35QJFKawHeHZjSdlB41T0v8BIheL2', 0, '2017-10-17 18:54:43', '2017-10-17 18:54:43', 0),
(179, 2, 'XMcA363oDP8QkqmsDVu7h8hTG8mZn7', 1, '2017-10-17 19:05:57', '2017-10-17 19:06:29', 0),
(180, 54, 'ilyJTSjYJmvOZ8JTKdjnfxYTUL5Bj3', 0, '2017-10-17 23:44:18', '2017-10-17 23:44:18', 0),
(181, 55, 'r8UI162sZuOHUsjq8U7a0W9E0nvQfz', 0, '2017-10-18 18:55:27', '2017-10-18 18:55:27', 0),
(182, 56, '5i02DukSkVcxYXNKZc1x5BGnOAFx3x', 0, '2017-10-18 20:08:24', '2017-10-18 20:08:24', 0),
(183, 2, '46W1OmfX8FNTpc9eOxsu7JErRc1oUN', 1, '2017-10-23 17:32:06', '2017-11-03 18:17:26', 0),
(184, 2, 'f7UUn337lzzoH3dWwnopp9wf8Mtf3T', 1, '2017-10-23 17:35:38', '2017-11-03 18:17:26', 0),
(185, 57, 'S2FHur7x6DJuwcMctu0cQy7lW3IDMr', 0, '2017-10-23 17:36:54', '2017-10-23 17:36:54', 0),
(186, 26, 'lZUxxs3cW8CjVyGJoovjY5U2gqM7gW', 0, '2017-10-24 12:09:10', '2017-10-24 12:09:11', 0),
(187, 2, 'i0GgCYGK72wk7VAtAVazoB3L1v7TKF', 1, '2017-10-24 16:26:04', '2017-11-03 18:17:26', 0),
(188, 58, '3D695E32aI6W7O7xdVzZBFIYxZhRcf', 0, '2017-10-25 06:19:18', '2017-10-25 06:19:18', 0),
(189, 59, 'dQcMf81hL0tSsm32o9i560pspTBahI', 0, '2017-10-25 06:21:13', '2017-10-25 06:21:13', 0),
(190, 59, 'UVQzfcj5MOCBoV4gVJHf8d9cuYh3fD', 0, '2017-10-25 06:24:06', '2017-10-25 06:24:06', 0),
(191, 2, 'nEM1xRBRgL7OqXY4I57VgHBsOkP3oF', 1, '2017-10-25 18:53:08', '2017-11-03 18:17:26', 0),
(192, 8, 'ktQrik4uZKy4JdpLwQgbLG3WFvUFAm', 0, '2017-11-02 11:29:28', '2017-11-02 11:29:29', 0),
(193, 8, 'TSjkqAczW4EGyVA1CVwikKrxOnoXeg', 0, '2017-11-02 11:30:47', '2017-11-02 11:30:48', 0),
(194, 8, '5RRwc8x9oQru0s7DN10ISOxmXAWLZX', 0, '2017-11-02 11:46:17', '2017-11-02 11:46:17', 0),
(195, 8, 'wVwuad9ZLKX55NdI7itPl4YSLJeY78', 0, '2017-11-02 12:07:54', '2017-11-02 12:07:55', 0),
(196, 8, 'E8nwilWGodrJWGuErVhpKy17X5jKIU', 0, '2017-11-02 12:09:36', '2017-11-02 12:09:37', 0),
(197, 8, '58THeYLjEdhkmlCvR0xgwWdte6L0Y1', 0, '2017-11-02 12:28:59', '2017-11-02 12:28:59', 0),
(198, 60, 'UJt4mWW5mx4TEWTzKq2ozlsaZhJX9I', 0, '2017-11-03 04:25:24', '2017-11-03 04:25:24', 0),
(199, 61, 'XYXB0xaun7YVC2UGdzVZWFFval2Bht', 1, '2017-11-03 08:25:29', '2017-11-03 08:27:33', 0),
(200, 61, 'MCyPEp0IuklWjzTNNw667DMsyoM15n', 1, '2017-11-03 08:25:44', '2017-11-03 08:27:33', 0),
(201, 61, 'KhkuhOQMz3CljDx07Jf4sNi10M5bQT', 1, '2017-11-03 08:25:47', '2017-11-03 08:27:33', 0),
(202, 2, 'lFmyWEY1TdD6VQoT4STlifnqezx7rt', 1, '2017-11-03 18:16:30', '2017-11-03 18:17:26', 0),
(203, 2, 'FFtoZL0XA90Keq0BInKPcdFohJwBNL', 0, '2017-11-03 18:36:20', '2017-11-03 18:36:20', 0),
(204, 62, 'PYSlSQ1YQoIi6nTvT5L76gN9YjKEyE', 0, '2017-11-04 10:24:08', '2017-11-04 10:24:08', 0),
(205, 62, 'WcfZhO6iuRGkQhc4QING2c0MqISXJd', 0, '2017-11-04 10:24:52', '2017-11-04 10:24:52', 0),
(206, 62, '1RyAwRJgKfXHrU9y8p4kp97aJFbX1V', 0, '2017-11-04 10:27:07', '2017-11-04 10:27:07', 0),
(207, 63, 'sNKNdeSyfTsVARmLbO5i8C5ecdJQkx', 0, '2017-11-04 10:27:26', '2017-11-04 10:27:26', 0),
(208, 63, 'wuVldGJU0Iz7h6GOSE87b0DbGwYDUu', 0, '2017-11-04 10:30:18', '2017-11-04 10:30:18', 0),
(209, 8, '0tNQyRWXffN0gSV5C4OkocpsPBAqrE', 0, '2017-11-06 08:37:01', '2017-11-06 08:37:01', 0),
(210, 5, 'JpwKgLCLIyrhehR1lsZ55lXc1yTa8a', 0, '2017-11-06 08:52:38', '2017-11-06 08:52:39', 0),
(211, 4, '3hS4w1jBiRTTN88rmsmxMRfi5O1i7R', 0, '2017-11-06 18:27:58', '2017-11-06 18:27:59', 0),
(212, 64, 'PW7LJAAf7pTYVpbiKhL44uTx2Hgrkt', 0, '2017-11-06 19:09:16', '2017-11-06 19:09:16', 0),
(213, 2, 'YprZFO4ikVNKkcApEfRCabP8y4Q18K', 0, '2017-11-06 19:11:18', '2017-11-06 19:11:18', 0),
(214, 65, 'S8ETAJHfklQONfo1xtjwKr1sCVmJ1L', 0, '2017-11-08 17:44:35', '2017-11-08 17:44:35', 0),
(215, 65, 'YPs9oQeKClyiDhErBZtOuL9hIPJikU', 0, '2017-11-08 17:48:40', '2017-11-08 17:48:40', 0),
(216, 66, 'vdNiCGKVPPQbRH3JIYONfFawpVIaKW', 0, '2017-11-09 00:32:38', '2017-11-09 00:32:38', 0),
(217, 67, 'GNmbPDFlwbrxYQb08VezkxFNAQFqM7', 0, '2017-11-09 04:15:02', '2017-11-09 04:15:02', 0),
(218, 68, 'jLZnEfJcHes7eoDsK4tZReVMcGAb6x', 1, '2017-11-09 04:30:28', '2017-11-09 04:30:41', 0),
(219, 3, 'Pjk5w4fsHWP01lrbBEy2daKd8xLaOB', 0, '2017-11-09 20:00:21', '2017-11-09 20:00:21', 0),
(220, 69, 'xA2aUOYnLGZVk4t3uimZQ8jvnZD3So', 0, '2017-11-09 20:43:13', '2017-11-09 20:43:13', 0),
(221, 70, 'wqHUR6So13qHdjPFxPP1pFVJY82oun', 0, '2017-11-09 20:45:32', '2017-11-09 20:45:32', 0),
(222, 71, 'h1HwizLACrrWZemRk81zToh9BzrKp0', 0, '2017-11-09 20:46:22', '2017-11-09 20:46:22', 0),
(223, 31, 'LMmgay5vTHJi4JLeH6IIfEs80GK6uu', 0, '2017-11-09 23:47:54', '2017-11-09 23:47:54', 0),
(224, 63, '5lRCD2pqD1qCyEm8v0Rm7WtYBxX6gX', 0, '2017-11-10 04:26:20', '2017-11-10 04:26:20', 0),
(225, 63, 'ManqOUHBdeL2Uob9yInZLH80KMGuK3', 0, '2017-11-10 04:27:14', '2017-11-10 04:27:14', 0),
(226, 66, 'NhLObw1RK0oFqtW9l0BAgE2dbzfYki', 0, '2017-11-10 04:39:45', '2017-11-10 04:39:45', 0),
(227, 66, 'zp9VZsLlP8c3EFuFzQfWyCYqvn1mNE', 0, '2017-11-10 04:40:18', '2017-11-10 04:40:18', 0),
(228, 72, 'PoojZ6JLWBoLTDYG0zcoRPTxumEBPG', 0, '2017-11-10 10:27:19', '2017-11-10 10:27:19', 0),
(229, 73, 'tmfZpW6ZddxVnIe1iNzxpDC7fz2jec', 0, '2017-11-10 10:30:15', '2017-11-10 10:30:15', 0),
(230, 74, '0pnRAoPFRdpJhypAi6R8PyjKYsQX5k', 0, '2017-11-10 10:31:29', '2017-11-10 10:31:29', 0),
(231, 75, 'jvpXCB11ZQkkL2PDROSza6ukZnNWT3', 0, '2017-11-10 10:33:14', '2017-11-10 10:33:14', 0),
(232, 66, '0CetTzwycVz41yU5IaKOWswZB3X0x1', 0, '2017-11-10 11:16:32', '2017-11-10 11:16:32', 0),
(233, 66, 'fS36FhIncITqtq73OidKqvLNmTI4Ta', 0, '2017-11-10 11:26:17', '2017-11-10 11:26:17', 0),
(234, 3, 'CQWPc0INqx3faXnCVTtrRe6fwiI9xD', 0, '2017-11-10 17:49:33', '2017-11-10 17:49:33', 0),
(235, 1, 'aqE0j2jL5FiI18ssWDwH9VQmjmuttE', 1, '2017-11-10 17:50:13', '2017-11-10 17:50:53', 0),
(236, 31, 'lan9RPj6g79uL1XYs43e5PffohkvHx', 0, '2017-11-10 19:43:34', '2017-11-10 19:43:34', 0),
(237, 1, '6iAFE6XnESejGjBCwbUv3Z6F4osHAJ', 0, '2017-11-13 17:40:12', '2017-11-13 17:40:12', 0),
(238, 63, 'jxmaBuCr92t0If9Lrsj73tYK5n2JuS', 0, '2017-11-14 09:12:26', '2017-11-14 09:12:26', 0),
(239, 24, '3YbvDansMvw0EZFGPxNWVSTFxMRkMK', 1, '2017-11-16 05:27:10', '2017-11-16 05:27:16', 0),
(240, 77, 'DEmGeuMsUFbhgH1pbz1QsY0kPCArDh', 1, '2017-11-28 04:39:34', '2017-11-28 04:39:50', 0),
(241, 78, 'Q2V4QPa4b874CJcv3Ms1DqlAntq4Ow', 0, '2019-09-15 14:46:09', '2019-09-15 14:46:09', 0),
(242, 78, 'HzZOnDdZ6xhdKXic9GT71CilzTPVrc', 0, '2019-09-15 14:46:26', '2019-09-15 14:46:26', 0),
(243, 78, 'yZkw51XVAvgpcWWJiwj6ct8WpnQlIS', 0, '2019-09-15 14:46:28', '2019-09-15 14:46:28', 0),
(244, 78, '3Yx0hslXzXCV7T8E7a8ezufRjjgDXH', 0, '2019-09-15 14:46:50', '2019-09-15 14:46:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stripe_demo`
--

CREATE TABLE `stripe_demo` (
  `stripe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `stripe_user_id` varchar(100) NOT NULL,
  `json_response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stripe_demo`
--

INSERT INTO `stripe_demo` (`stripe_id`, `user_id`, `stripe_user_id`, `json_response`) VALUES
(2, 0, 'acct_1ADsoODhFjJ9MQOs', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ADsoODhFjJ9MQOs\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1ADsoODhFjJ9MQOsplnFG4JC\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1ADsoODhFjJ9MQOs\",\n                \"account_holder_name\": \"Chaitany desai\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"n0bQBxfgitM0vro9\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ADsoODhFjJ9MQOs\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_zyZaRJQWvBiwLbAvO39LqsIH\",\n        \"publishable\": \"pk_test_15xAvQOf4HedIRDp03Wboqcu\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(3, 0, 'acct_1ADssUEpQJ4ZHHxl', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ADssUEpQJ4ZHHxl\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1ADssUEpQJ4ZHHxl65CnJmyo\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1ADssUEpQJ4ZHHxl\",\n                \"account_holder_name\": \"Heli Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"juM46Y7p0VNaBLr3\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ADssUEpQJ4ZHHxl\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_DwzcaFqZc9w8DkviM0gDv5ye\",\n        \"publishable\": \"pk_test_0kys1bXccwS7q5i31V1HGMyJ\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(4, 0, 'acct_1ADtL4J2lUuTpccR', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ADtL4J2lUuTpccR\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1ADtL5J2lUuTpccR4nPS3IIy\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1ADtL4J2lUuTpccR\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"tNeCW71nAnbFvESX\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ADtL4J2lUuTpccR\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_xnZ0asybOGMjCgtkXOIPAVSo\",\n        \"publishable\": \"pk_test_ejQHEzfJJZVgUGZH4Lr9me8A\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(5, 0, 'acct_1ADuHhK622quGOGD', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ADuHhK622quGOGD\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1ADuHhK622quGOGDDoi7ExoA\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1ADuHhK622quGOGD\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"kHEnqE1GfuWfeMMH\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ADuHhK622quGOGD\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_YbOiciQkgk5R8QRAKBqK1RgV\",\n        \"publishable\": \"pk_test_OatjD0FnacVBzrKwsLtGZv7g\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(6, 0, 'acct_1ADuICKavJviPkHA', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ADuICKavJviPkHA\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1ADuICKavJviPkHAIpj4sicZ\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1ADuICKavJviPkHA\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"9AyH0tanMvRwDBXO\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ADuICKavJviPkHA\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_EWLgRim67uN8MPmgmawcJa83\",\n        \"publishable\": \"pk_test_XwfQf0g7udJh36hhrhTdbA9A\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(7, 0, 'acct_1AEWJSHXcBeuAElE', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEWJSHXcBeuAElE\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEWJSHXcBeuAElE77eoRIDm\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEWJSHXcBeuAElE\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"FdxPzwLg5DqJgsZX\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEWJSHXcBeuAElE\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_Z81rYiRfeSp7cmRQnRhpzxLp\",\n        \"publishable\": \"pk_test_qsrD4ei9ty1QA5XOUI7C5Nvm\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(8, 0, 'acct_1AEWLeLMwIOM7IFG', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEWLeLMwIOM7IFG\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEWLfLMwIOM7IFGcULxcedy\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEWLeLMwIOM7IFG\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"7hgFZw3VcsiBQGFl\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEWLeLMwIOM7IFG\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_CldaJBWmXKS0QMNZzuKG1c0Y\",\n        \"publishable\": \"pk_test_iaaSZK2QQtkzJzBF7LiXzBGP\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(9, 0, 'acct_1AEWMIJKmQdsJzVx', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEWMIJKmQdsJzVx\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEWMIJKmQdsJzVx1ZsV5Vcv\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEWMIJKmQdsJzVx\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"XDKsLamQ5edkQzCU\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEWMIJKmQdsJzVx\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_MwYQGc8gnEzPlwZhEHCTWVeo\",\n        \"publishable\": \"pk_test_yAhzMjgJeFw0CRWKCb5VVpvq\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(10, 0, 'acct_1AEX42Ircj6VCTru', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEX42Ircj6VCTru\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEX42Ircj6VCTruFXOdUsK2\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEX42Ircj6VCTru\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"E44IpwjfPoFISSkR\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEX42Ircj6VCTru\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_puV1lp4vAMFr3mImIrA8tOoQ\",\n        \"publishable\": \"pk_test_pveUxIdvPMQpIVhQWEbLd1yG\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(11, 0, 'acct_1AEuvxEKn4D8bIFd', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEuvxEKn4D8bIFd\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEuvxEKn4D8bIFdDUZLJgFA\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEuvxEKn4D8bIFd\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"n6qYbaI4loG5Tvc6\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEuvxEKn4D8bIFd\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_mGg2Xqez9hp9JHxZTgszdY3B\",\n        \"publishable\": \"pk_test_t7o6gE07gZE6bytt1D55PypC\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(12, 0, 'acct_1AEuxXEwICCNBW9e', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEuxXEwICCNBW9e\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEuxXEwICCNBW9e2Q6R2qlw\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEuxXEwICCNBW9e\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"dmSy9IwB7QJIjvNC\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEuxXEwICCNBW9e\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_fOilhzuTXb5Wmm7G5BbHQKNr\",\n        \"publishable\": \"pk_test_HfU55WBAHu6qmzVRVKEqUNeL\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(13, 0, 'acct_1AEuxmCmRpFbsG2Y', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEuxmCmRpFbsG2Y\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEuxmCmRpFbsG2YDHqvWfva\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEuxmCmRpFbsG2Y\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"hH2EyJXGLmhxJ81S\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEuxmCmRpFbsG2Y\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_4TpW5mMEXs7KNT2aX6MDepr6\",\n        \"publishable\": \"pk_test_DLLK7cVuWRAWfJ4i31vq1NmE\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(14, 0, 'acct_1AEuyuHhUqJFBrc7', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEuyuHhUqJFBrc7\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEuyuHhUqJFBrc7KfJWuiVl\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEuyuHhUqJFBrc7\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"pui3KeGVY9JhnpDU\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEuyuHhUqJFBrc7\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_iyTuzm4Q03WDSOfIAgyMZy6r\",\n        \"publishable\": \"pk_test_sNKjkA3jouLbfq9S8qDQtpew\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}');
INSERT INTO `stripe_demo` (`stripe_id`, `user_id`, `stripe_user_id`, `json_response`) VALUES
(15, 0, 'acct_1AEuzvDfJ1dRwZsK', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEuzvDfJ1dRwZsK\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEuzwDfJ1dRwZsKyy4mv6mV\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEuzvDfJ1dRwZsK\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"TyDb71CP1vCduGYL\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEuzvDfJ1dRwZsK\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_69UrUG5AIGQhejFoPWWuV1Mn\",\n        \"publishable\": \"pk_test_18sPMOScXWOjCYoi3OJR9AWD\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(16, 0, 'acct_1AEv0nD4gP3l8a6p', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEv0nD4gP3l8a6p\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEv0nD4gP3l8a6p9EoY8For\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEv0nD4gP3l8a6p\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"6CGMfMtUM3I6FqCH\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEv0nD4gP3l8a6p\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_b3xdvBUSSnr3M2BJ21ZjPfWQ\",\n        \"publishable\": \"pk_test_paHzW2jHMkCA1WQCIs0f8ZwX\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(17, 0, 'acct_1AEv1vK7AfcgZFR3', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEv1vK7AfcgZFR3\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEv1vK7AfcgZFR3ZJssGebF\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEv1vK7AfcgZFR3\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"VrTxqnZCh4Xl4H0a\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEv1vK7AfcgZFR3\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_3DEf3wUTWT0QRdKhG0G4pNlc\",\n        \"publishable\": \"pk_test_WpAuGv8nXshl30cWgpS22bx0\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(18, 0, 'acct_1AEv2oIS1tnZuDSW', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEv2oIS1tnZuDSW\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEv2oIS1tnZuDSWlspPOz1p\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEv2oIS1tnZuDSW\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"SquvcjZ1kZ6p4569\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEv2oIS1tnZuDSW\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_zmBjNnfSMf5DYoEmUF1eSBCE\",\n        \"publishable\": \"pk_test_cUxkuFD9yl8k1lxjNzmzLqiG\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(19, 0, 'acct_1AEwmdFiBFPvwJx0', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwmdFiBFPvwJx0\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwmdFiBFPvwJx0lQpHWKgA\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwmdFiBFPvwJx0\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"dWoRZF8eLO3Fmrn0\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwmdFiBFPvwJx0\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_rDw4McEBgK0PqFwN4RxYEbMZ\",\n        \"publishable\": \"pk_test_D7nzYFPNITDa3b0OSBvbzAZo\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(20, 0, 'acct_1AEwmzEyoG3wrFHU', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwmzEyoG3wrFHU\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwmzEyoG3wrFHUsq7M42UP\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwmzEyoG3wrFHU\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"9NTCJxE0SWcy91TR\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwmzEyoG3wrFHU\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_8vlUdsfqEuXZn6UHYs74VGJP\",\n        \"publishable\": \"pk_test_qp1SzVVrz7dUohwkb3xuxEkG\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(21, 0, 'acct_1AEwnFCSS9DkSGNb', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwnFCSS9DkSGNb\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwnFCSS9DkSGNbykLPkire\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwnFCSS9DkSGNb\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"k9ynAkSy3GW86Sq8\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwnFCSS9DkSGNb\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_LnwInUtxfFlzkcsOQrjPrY9w\",\n        \"publishable\": \"pk_test_W4Mo3A1rHKN0kMeIz5YtgxB0\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(22, 0, 'acct_1AEwpTCqsncGX5Vp', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwpTCqsncGX5Vp\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwpTCqsncGX5Vp229mPBMt\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwpTCqsncGX5Vp\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"JRyBbX9f50FWtnWF\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwpTCqsncGX5Vp\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_MNtd3fhCzD2OLO0gtUTbH6Sk\",\n        \"publishable\": \"pk_test_ExmGm8mwQC2ffOV7CfLRMTaP\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(23, 0, 'acct_1AEwq1Ilx30e1QSW', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwq1Ilx30e1QSW\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwq1Ilx30e1QSW759bqJyK\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwq1Ilx30e1QSW\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"eAOBemh9oMqNZT3q\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwq1Ilx30e1QSW\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_j5vAYQrMYtp23XkxTCgYBiJI\",\n        \"publishable\": \"pk_test_VruoZaD4kjOXcY9XoMZ2LRPu\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(24, 0, 'acct_1AEwtJL4Yrs15Vkm', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwtJL4Yrs15Vkm\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwtKL4Yrs15VkmzJynoTXR\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwtJL4Yrs15Vkm\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"7tbind7OOzhPpa8C\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwtJL4Yrs15Vkm\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_KyK3jhCg8sPHuF9HP8Mcgszl\",\n        \"publishable\": \"pk_test_rYqgiLXCJni8VoQxbppRTGbL\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(25, 0, 'acct_1AEwvQIEyh9vmD6y', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwvQIEyh9vmD6y\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwvQIEyh9vmD6ytE3eJwn5\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwvQIEyh9vmD6y\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"JozI5XCao42efDX8\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwvQIEyh9vmD6y\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_99PvKkIdWl38GHTw7fTiHwxN\",\n        \"publishable\": \"pk_test_6BGw7biM47LIPafwum0uTjuD\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(26, 0, 'acct_1AEwvrBkt8Ar2trX', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwvrBkt8Ar2trX\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwvrBkt8Ar2trXdSV5V9Qd\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwvrBkt8Ar2trX\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"4cr7Vyy1vS6EwVv9\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwvrBkt8Ar2trX\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_1pZh23cIl9odEfGdFI0evzEy\",\n        \"publishable\": \"pk_test_xm94smb0NjIPoVATWApTguZv\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(27, 0, 'acct_1AEww4LNBMy1aeTG', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEww4LNBMy1aeTG\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEww4LNBMy1aeTGKC9oeA7W\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEww4LNBMy1aeTG\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"MBpFP92knoWMkJNm\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEww4LNBMy1aeTG\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_IbmsOcyx30BLy3TrN7MNnTlF\",\n        \"publishable\": \"pk_test_7HsvXxm8ftKHCZoNmeWpeGyJ\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}');
INSERT INTO `stripe_demo` (`stripe_id`, `user_id`, `stripe_user_id`, `json_response`) VALUES
(28, 0, 'acct_1AEwyaBB1ktkgwaV', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AEwyaBB1ktkgwaV\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AEwyaBB1ktkgwaVMY0t6kCQ\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AEwyaBB1ktkgwaV\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"9IB3f88rJnr5slU7\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AEwyaBB1ktkgwaV\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_1zdDqB9A1e19nX4FvqthW63M\",\n        \"publishable\": \"pk_test_4ZsUhzMzS6sXodVVGY1f7RnU\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(29, 0, 'acct_1AExG3HtVfnZo1oS', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AExG3HtVfnZo1oS\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AExG3HtVfnZo1oSxr9YAIuN\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AExG3HtVfnZo1oS\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"PcW1LhhI7EdIPsHU\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AExG3HtVfnZo1oS\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_fbnV75yvJURCUCP3NEL92Yma\",\n        \"publishable\": \"pk_test_ubY9V7oYa0zElVbOWbkx6oYC\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(30, 0, 'acct_1AExGIJ07FkOSqqK', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AExGIJ07FkOSqqK\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AExGIJ07FkOSqqKs2Oc0gFF\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AExGIJ07FkOSqqK\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"khpkjYmtrsD5QX7R\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AExGIJ07FkOSqqK\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_ZaDlxrGg4bsTbrk3lYDzajEI\",\n        \"publishable\": \"pk_test_qPVQIEgdkdHBG4uwP8MXZ4jM\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(31, 0, 'acct_1AExaJKwCnfVwMFN', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AExaJKwCnfVwMFN\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AExaJKwCnfVwMFNGmjqTaoC\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AExaJKwCnfVwMFN\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"n8T7gl4d0EZrThhF\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AExaJKwCnfVwMFN\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_YFKv0wvJSFY7bfsRnCWXKruA\",\n        \"publishable\": \"pk_test_tBPY6qhnG2z1XwLLRcKqiFry\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(32, 0, 'acct_1AExaYDAABpjV9jD', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1AExaYDAABpjV9jD\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [\n            {\n                \"id\": \"ba_1AExaYDAABpjV9jDPgenZxyZ\",\n                \"object\": \"bank_account\",\n                \"account\": \"acct_1AExaYDAABpjV9jD\",\n                \"account_holder_name\": \"Vivek Naik\",\n                \"account_holder_type\": \"individual\",\n                \"bank_name\": \"STRIPE TEST BANK\",\n                \"country\": \"US\",\n                \"currency\": \"usd\",\n                \"default_for_currency\": true,\n                \"fingerprint\": \"gOroHBz2dA5c0zuD\",\n                \"last4\": \"6789\",\n                \"metadata\": [],\n                \"routing_number\": \"110000000\",\n                \"status\": \"new\"\n            }\n        ],\n        \"has_more\": false,\n        \"total_count\": 1,\n        \"url\": \"\\/v1\\/accounts\\/acct_1AExaYDAABpjV9jD\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_Qbtm3V3OSczgAnoFmLCE1iIq\",\n        \"publishable\": \"pk_test_DDLAM78VGQznTcMTAJGWiAGZ\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"managed\": true,\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}'),
(33, 0, 'acct_1ATolNG8ZV3JhfiS', 'Stripe\\Account JSON: {\n    \"id\": \"acct_1ATolNG8ZV3JhfiS\",\n    \"object\": \"account\",\n    \"business_logo\": null,\n    \"business_name\": null,\n    \"business_url\": null,\n    \"charges_enabled\": true,\n    \"country\": \"US\",\n    \"debit_negative_balances\": false,\n    \"decline_charge_on\": {\n        \"avs_failure\": false,\n        \"cvc_failure\": false\n    },\n    \"default_currency\": \"usd\",\n    \"details_submitted\": false,\n    \"display_name\": null,\n    \"email\": null,\n    \"external_accounts\": {\n        \"object\": \"list\",\n        \"data\": [],\n        \"has_more\": false,\n        \"total_count\": 0,\n        \"url\": \"\\/v1\\/accounts\\/acct_1ATolNG8ZV3JhfiS\\/external_accounts\"\n    },\n    \"keys\": {\n        \"secret\": \"sk_test_7qQyFozaSYfRKILK9hPOnRzy\",\n        \"publishable\": \"pk_test_L0UOTtNlD1M7HcozqbJCZA6m\"\n    },\n    \"legal_entity\": {\n        \"address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"business_name\": null,\n        \"business_tax_id_provided\": false,\n        \"dob\": {\n            \"day\": null,\n            \"month\": null,\n            \"year\": null\n        },\n        \"first_name\": null,\n        \"last_name\": null,\n        \"personal_address\": {\n            \"city\": null,\n            \"country\": \"US\",\n            \"line1\": null,\n            \"line2\": null,\n            \"postal_code\": null,\n            \"state\": null\n        },\n        \"personal_id_number_provided\": false,\n        \"ssn_last_4_provided\": false,\n        \"type\": null,\n        \"verification\": {\n            \"details\": null,\n            \"details_code\": null,\n            \"document\": null,\n            \"status\": \"unverified\"\n        }\n    },\n    \"metadata\": [],\n    \"product_description\": null,\n    \"statement_descriptor\": null,\n    \"support_email\": null,\n    \"support_phone\": null,\n    \"timezone\": \"Etc\\/UTC\",\n    \"tos_acceptance\": {\n        \"date\": null,\n        \"ip\": null,\n        \"user_agent\": null\n    },\n    \"type\": \"custom\",\n    \"verification\": {\n        \"disabled_reason\": \"fields_needed\",\n        \"due_by\": null,\n        \"fields_needed\": [\n            \"external_account\",\n            \"legal_entity.dob.day\",\n            \"legal_entity.dob.month\",\n            \"legal_entity.dob.year\",\n            \"legal_entity.first_name\",\n            \"legal_entity.last_name\",\n            \"legal_entity.type\",\n            \"tos_acceptance.date\",\n            \"tos_acceptance.ip\"\n        ]\n    },\n    \"managed\": true,\n    \"transfers_enabled\": false,\n    \"transfer_schedule\": {\n        \"delay_days\": 2,\n        \"interval\": \"daily\"\n    },\n    \"transfer_statement_descriptor\": null\n}');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `text` text NOT NULL,
  `id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eb_admin`
--
ALTER TABLE `eb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `eb_bank_details`
--
ALTER TABLE `eb_bank_details`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `eb_card_details`
--
ALTER TABLE `eb_card_details`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `eb_chat`
--
ALTER TABLE `eb_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `eb_chatting_content`
--
ALTER TABLE `eb_chatting_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `eb_chat_unread_message_counter`
--
ALTER TABLE `eb_chat_unread_message_counter`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `eb_contact`
--
ALTER TABLE `eb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `eb_customer`
--
ALTER TABLE `eb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `eb_dispute`
--
ALTER TABLE `eb_dispute`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `eb_dispute_2`
--
ALTER TABLE `eb_dispute_2`
  ADD PRIMARY KEY (`d2_id`);

--
-- Indexes for table `eb_dispute_log`
--
ALTER TABLE `eb_dispute_log`
  ADD PRIMARY KEY (`dl_id`);

--
-- Indexes for table `eb_faq`
--
ALTER TABLE `eb_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `eb_favunfav`
--
ALTER TABLE `eb_favunfav`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `eb_help_center`
--
ALTER TABLE `eb_help_center`
  ADD PRIMARY KEY (`hc_id`);

--
-- Indexes for table `eb_invoice`
--
ALTER TABLE `eb_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `eb_notification`
--
ALTER TABLE `eb_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `eb_notification_title`
--
ALTER TABLE `eb_notification_title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `eb_payout`
--
ALTER TABLE `eb_payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_pay_stub`
--
ALTER TABLE `eb_pay_stub`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `eb_post_offered_service`
--
ALTER TABLE `eb_post_offered_service`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `eb_rating`
--
ALTER TABLE `eb_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `eb_rating_reviews`
--
ALTER TABLE `eb_rating_reviews`
  ADD PRIMARY KEY (`rr_id`);

--
-- Indexes for table `eb_reviews`
--
ALTER TABLE `eb_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `eb_security_answer`
--
ALTER TABLE `eb_security_answer`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `eb_security_question`
--
ALTER TABLE `eb_security_question`
  ADD PRIMARY KEY (`sq_id`);

--
-- Indexes for table `eb_services_job`
--
ALTER TABLE `eb_services_job`
  ADD PRIMARY KEY (`sj_id`);

--
-- Indexes for table `eb_services_job_application`
--
ALTER TABLE `eb_services_job_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_services_job_request`
--
ALTER TABLE `eb_services_job_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_service_category`
--
ALTER TABLE `eb_service_category`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `eb_service_schedule`
--
ALTER TABLE `eb_service_schedule`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `eb_tax_id`
--
ALTER TABLE `eb_tax_id`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `eb_transaction`
--
ALTER TABLE `eb_transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `eb_user`
--
ALTER TABLE `eb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `eb_user_profile`
--
ALTER TABLE `eb_user_profile`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `eb_user_verification`
--
ALTER TABLE `eb_user_verification`
  ADD PRIMARY KEY (`verify_id`);

--
-- Indexes for table `stripe_demo`
--
ALTER TABLE `stripe_demo`
  ADD PRIMARY KEY (`stripe_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eb_admin`
--
ALTER TABLE `eb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eb_bank_details`
--
ALTER TABLE `eb_bank_details`
  MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `eb_card_details`
--
ALTER TABLE `eb_card_details`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `eb_chat`
--
ALTER TABLE `eb_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `eb_chatting_content`
--
ALTER TABLE `eb_chatting_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2646;

--
-- AUTO_INCREMENT for table `eb_chat_unread_message_counter`
--
ALTER TABLE `eb_chat_unread_message_counter`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1239;

--
-- AUTO_INCREMENT for table `eb_contact`
--
ALTER TABLE `eb_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `eb_customer`
--
ALTER TABLE `eb_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_dispute`
--
ALTER TABLE `eb_dispute`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eb_dispute_2`
--
ALTER TABLE `eb_dispute_2`
  MODIFY `d2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eb_dispute_log`
--
ALTER TABLE `eb_dispute_log`
  MODIFY `dl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eb_faq`
--
ALTER TABLE `eb_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `eb_favunfav`
--
ALTER TABLE `eb_favunfav`
  MODIFY `fav_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_help_center`
--
ALTER TABLE `eb_help_center`
  MODIFY `hc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `eb_invoice`
--
ALTER TABLE `eb_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_notification`
--
ALTER TABLE `eb_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eb_notification_title`
--
ALTER TABLE `eb_notification_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `eb_payout`
--
ALTER TABLE `eb_payout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eb_pay_stub`
--
ALTER TABLE `eb_pay_stub`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_post_offered_service`
--
ALTER TABLE `eb_post_offered_service`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `eb_rating`
--
ALTER TABLE `eb_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_rating_reviews`
--
ALTER TABLE `eb_rating_reviews`
  MODIFY `rr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_reviews`
--
ALTER TABLE `eb_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_security_answer`
--
ALTER TABLE `eb_security_answer`
  MODIFY `sa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `eb_security_question`
--
ALTER TABLE `eb_security_question`
  MODIFY `sq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eb_services_job`
--
ALTER TABLE `eb_services_job`
  MODIFY `sj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `eb_services_job_application`
--
ALTER TABLE `eb_services_job_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eb_services_job_request`
--
ALTER TABLE `eb_services_job_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_service_category`
--
ALTER TABLE `eb_service_category`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `eb_service_schedule`
--
ALTER TABLE `eb_service_schedule`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_tax_id`
--
ALTER TABLE `eb_tax_id`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `eb_transaction`
--
ALTER TABLE `eb_transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eb_user`
--
ALTER TABLE `eb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `eb_user_profile`
--
ALTER TABLE `eb_user_profile`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `eb_user_verification`
--
ALTER TABLE `eb_user_verification`
  MODIFY `verify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `stripe_demo`
--
ALTER TABLE `stripe_demo`
  MODIFY `stripe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- Database: `emp`
--
CREATE DATABASE IF NOT EXISTS `emp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emp`;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actno` int(11) NOT NULL,
  `actname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actno`, `actname`) VALUES
(11, 'salman khan'),
(12, 'Rajkumar Rao'),
(13, 'amir khan'),
(14, 'vicky kausal'),
(15, 'amitabh');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_no` int(11) DEFAULT NULL,
  `author_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_no`, `author_name`) VALUES
(104, 'Harshil'),
(101, 'Korth'),
(103, 'Mann'),
(105, 'Mayank'),
(102, 'Mehul');

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_name` varchar(30) DEFAULT NULL,
  `book_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_name`, `book_no`) VALUES
('Korth', 1),
('Mehul', 3),
('Korth', 7),
('Korth', 2),
('Mann', 5),
('Harshil', 6),
('Mayank', 4);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_no` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `pub_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_no`, `name`, `pub_name`) VALUES
(1, 'War and Peace', 'PHI publication'),
(2, 'In Search of Lost Time', 'PHI publication'),
(3, 'The Secrete', 'MS Creation'),
(4, 'The Divine Comedy', 'HK publication'),
(5, 'To the Lighthouse', 'MS Creation'),
(6, 'How To', 'PHI publication'),
(7, 'Why', 'PHI publication');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `empno` int(11) DEFAULT NULL,
  `pno` int(11) DEFAULT NULL,
  `numberOfDays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`empno`, `pno`, `numberOfDays`) VALUES
(1, 1, 57),
(2, 2, 47),
(3, 3, 70),
(4, 4, 17),
(5, 4, 27),
(5, 5, 55),
(4, 5, 60);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL,
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptno`, `dname`, `loc`) VALUES
(101, 'Purchase', 'Banglore'),
(102, 'Sales', 'Nasik'),
(103, 'Marketing', 'Pune'),
(104, 'Accounting', 'Gujarat'),
(105, 'Management', 'Nasik');

-- --------------------------------------------------------

--
-- Table structure for table `destrict`
--

CREATE TABLE `destrict` (
  `d_code` int(11) NOT NULL,
  `d_name` varchar(20) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destrict`
--

INSERT INTO `destrict` (`d_code`, `d_name`, `tax_rate`) VALUES
(1, 'Nasik', 1000),
(2, 'Surat', 3000),
(3, 'Sangli', 2000),
(4, 'Baroda', 4000),
(5, 'Kothroad', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` int(11) NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `sal` int(11) DEFAULT NULL,
  `comm` int(11) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  `desg` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `ename`, `sal`, `comm`, `deptno`, `desg`) VALUES
(1, 'Nevil', 25000, 2000, 104, 'Accountant'),
(2, 'Mehul', 65000, 3000, 105, 'Accountant'),
(3, 'Manthan', 15000, 4000, 105, 'Manager'),
(4, 'Varun', 55000, 1000, 103, 'Assistant'),
(5, 'Mihir', 35000, 2000, 105, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `mvno` int(11) NOT NULL,
  `mvname` varchar(30) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`mvno`, `mvname`, `release_year`) VALUES
(1, 'Bhootnath', 1970),
(2, 'sholey', 1973),
(3, 'ek tha tiger', 1972),
(4, 'Bhoot', 1975),
(5, 'Jai ho', 1975),
(6, 'Karan Arjun', 1970);

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `ma_no` int(11) NOT NULL,
  `mvno` int(11) DEFAULT NULL,
  `actno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`ma_no`, `mvno`, `actno`) VALUES
(101, 1, 15),
(102, 1, 12),
(103, 2, 15),
(104, 2, 13),
(105, 2, 14),
(106, 2, 11),
(107, 2, 15),
(108, 2, 11),
(109, 4, 15),
(110, 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `o_name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `ph_no` varchar(10) DEFAULT NULL,
  `p_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`o_name`, `address`, `ph_no`, `p_no`) VALUES
('Mr Dev', 'BK road', '9174563214', 101),
('Mr Rao', 'LK road', '9274563214', 102),
('Mr Nevil', 'PK road', '9374563214', 103),
('Mr Akash', 'TK road', '9474563214', 104),
('Mr Rao', 'LK road', '9274563214', 102),
('Mr Nevil', 'PK road', '9374563214', 103),
('Mr Akash', 'TK road', '9474563214', 104),
('Mr Manthan', 'RK road', '9574563214', 105);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pno` int(11) NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pno`, `pname`, `status`) VALUES
(1, 'Website Development', 'P'),
(2, 'Project Development', 'P'),
(3, 'Software Development', 'I'),
(4, 'Business Management', 'C'),
(5, 'Club Management', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `p_no` int(11) NOT NULL,
  `description` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `d_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`p_no`, `description`, `area`, `d_code`) VALUES
(101, 'MK Arcade', 'Udhna', 1),
(102, 'ABC Appartment', 'Nalasopara', 2),
(103, 'RahulRaj Mall', 'Mk road', 3),
(104, 'AC Market', 'RK Nagar', 4),
(105, 'VR Mall', 'Maroli', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` int(11) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `sname`, `marks`, `class`) VALUES
(1, 'Mehul', 90, 'fy'),
(2, 'Mann', 70, 'sy'),
(3, 'Mayank', 75, 'ty'),
(4, 'Harshil', 90, 'fy'),
(5, 'Harsh', 75, 'sy');

-- --------------------------------------------------------

--
-- Table structure for table `student_teacher`
--

CREATE TABLE `student_teacher` (
  `rollno` int(11) DEFAULT NULL,
  `tno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_teacher`
--

INSERT INTO `student_teacher` (`rollno`, `tno`) VALUES
(1, 1),
(1, 2),
(1, 4),
(3, 3),
(2, 7),
(4, 6),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tno` int(11) NOT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tno`, `tname`, `subject`) VALUES
(1, 'mr deshmukh', 'software engineering'),
(2, 'mr deshmukh', 'java'),
(3, 'mr patil', 'ecommerce'),
(4, 'mr deshmukh', 'c++'),
(5, 'mr patil', 'data structure'),
(6, 'Saurabh', 'software engineering'),
(7, 'Mahesh', 'data structure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actno`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_name`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_name` (`author_name`),
  ADD KEY `book_no` (`book_no`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_no`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD KEY `empno` (`empno`),
  ADD KEY `pno` (`pno`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptno`);

--
-- Indexes for table `destrict`
--
ALTER TABLE `destrict`
  ADD PRIMARY KEY (`d_code`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empno`),
  ADD KEY `fk_deptno` (`deptno`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`mvno`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`ma_no`),
  ADD KEY `mvno` (`mvno`),
  ADD KEY `actno` (`actno`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD KEY `p_no` (`p_no`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`p_no`),
  ADD KEY `d_code` (`d_code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `student_teacher`
--
ALTER TABLE `student_teacher`
  ADD KEY `rollno` (`rollno`),
  ADD KEY `tno` (`tno`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_ibfk_1` FOREIGN KEY (`author_name`) REFERENCES `author` (`author_name`),
  ADD CONSTRAINT `author_book_ibfk_2` FOREIGN KEY (`book_no`) REFERENCES `book` (`book_no`);

--
-- Constraints for table `days`
--
ALTER TABLE `days`
  ADD CONSTRAINT `days_ibfk_1` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`),
  ADD CONSTRAINT `days_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `project` (`pno`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_deptno` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`);

--
-- Constraints for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`mvno`) REFERENCES `movie` (`mvno`),
  ADD CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actno`) REFERENCES `actor` (`actno`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`p_no`) REFERENCES `property` (`p_no`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`d_code`) REFERENCES `destrict` (`d_code`);

--
-- Constraints for table `student_teacher`
--
ALTER TABLE `student_teacher`
  ADD CONSTRAINT `student_teacher_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`),
  ADD CONSTRAINT `student_teacher_ibfk_2` FOREIGN KEY (`tno`) REFERENCES `teacher` (`tno`);
--
-- Database: `event_management`
--
CREATE DATABASE IF NOT EXISTS `event_management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `event_management`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
(1, 'Mehul', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09'),
(2, 'Akshay', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09'),
(3, 'Nevil', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09'),
(4, 'Prasad', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(30) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Surat', 1),
(2, 'Ahemdabad', 1),
(3, 'Vadodra', 1),
(4, 'Jaiput', 3),
(5, 'Udaipur', 3),
(6, 'Mumbai', 2),
(7, 'Pune', 2),
(8, 'New york city', 4),
(9, 'Sydney', 5),
(10, 'Vancouver', 6);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `name`, `email`, `contact_no`, `description`) VALUES
(1, 'Vardhan', 'var@gmail.com', '9898989888', 'Want info. about your company.'),
(2, 'Abhishek', 'abhi@gmail.com', '9878689888', 'Interested in your company.');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'Australia'),
(3, 'U.S.'),
(4, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(30) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `venue` text,
  `city_id` int(11) DEFAULT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_date`, `venue`, `city_id`, `event_type_id`, `user_id`) VALUES
(1, 'Sahil\'s Wedding ', '2020-09-12 18:00:21', 'Udhana,Surat', 1, 1, 1),
(2, 'Umang\'s Birthday', '2020-09-13 18:00:58', 'Katargam,Surat', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `event_type_id` int(11) NOT NULL,
  `event_type_name` varchar(50) DEFAULT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`event_type_id`, `event_type_name`, `image`) VALUES
(1, 'Wedding', ''),
(2, 'Birthday Celebration', ''),
(3, 'Ring Ceremony', '3467_1 (104).JPG');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message` text,
  `datetime` datetime DEFAULT NULL,
  `sender` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message`, `datetime`, `sender`, `type`, `user_id`, `vendor_id`) VALUES
(1, 'Hello', '2020-09-10 18:11:39', 0, 0, 1, 1),
(2, 'Hiii', '2020-09-10 18:11:39', 1, 0, 1, 1),
(3, 'I\'m interested in your service', '2020-09-10 18:11:39', 0, 0, 1, 1),
(4, 'Thank you!!!!', '2020-09-10 18:11:39', 1, 0, 1, 1),
(5, 'I want more info.', '2020-09-10 18:13:46', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(30) DEFAULT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `image`) VALUES
(1, 'Flower Decoration', ''),
(2, 'DJ', ''),
(3, 'Balloon Decoration', '8985_new.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `service_book`
--

CREATE TABLE `service_book` (
  `book_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_book`
--

INSERT INTO `service_book` (`book_id`, `amount`, `deposit`, `commission`, `payment_mode`, `event_id`, `vendor_service_id`) VALUES
(1, 500, 200, 50, 'Credit Card', 1, 1),
(2, 1500, 500, 150, 'Debit Card', 1, 2),
(3, 5500, 2000, 500, 'Credit Card', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `service_cart`
--

CREATE TABLE `service_cart` (
  `service_cart_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_cart`
--

INSERT INTO `service_cart` (`service_cart_id`, `datetime`, `user_id`, `vendor_service_id`) VALUES
(1, '2020-09-10 17:59:17', 1, 1),
(2, '2020-09-10 17:59:41', 1, 2),
(3, '2020-09-10 17:59:45', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(30) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `country_id`) VALUES
(1, 'Gujarat', 1),
(2, 'Maharastra', 1),
(3, 'Rajasthan', 1),
(4, 'New York', 3),
(5, 'Queensland', 2),
(6, 'British Columbia', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `address` text,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` text,
  `gender` int(1) DEFAULT NULL,
  `images` text,
  `status` int(1) NOT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `address`, `contact`, `email`, `password`, `gender`, `images`, `status`, `city_id`) VALUES
(1, 'Mihir Sharma', 'VIP Road', '7261884455', 'mihir@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, NULL, 0, 1),
(2, 'Mayank ', 'Udhana', '9696988875', 'mayank@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_rate`
--

CREATE TABLE `user_rate` (
  `user_rate_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_rate`
--

INSERT INTO `user_rate` (`user_rate_id`, `rate`, `user_id`, `vendor_id`) VALUES
(1, 5, 1, 1),
(2, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `user_review_id` int(11) NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `review` text,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`user_review_id`, `review_date`, `review`, `user_id`, `vendor_id`) VALUES
(1, '2020-09-10 18:20:10', 'Good Experience', 1, 1),
(2, '2020-09-10 18:20:31', 'Good Person', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(30) DEFAULT NULL,
  `address` text,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` text,
  `org_name` varchar(30) DEFAULT NULL,
  `images` text,
  `city_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `address`, `contact`, `email`, `password`, `org_name`, `images`, `city_id`, `status`) VALUES
(1, 'Mann Soni', 'Katargam', '9898976005', 'mann@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 'MS creation', 'images/1.jpg', 1, NULL),
(2, 'Harshil', 'Jaipur', '9898884758', 'harshil@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 'Magic World', 'images/1.jpg', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_rate`
--

CREATE TABLE `vendor_rate` (
  `vendor_rate_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_rate`
--

INSERT INTO `vendor_rate` (`vendor_rate_id`, `rate`, `user_id`, `vendor_id`) VALUES
(1, 5, 1, 1),
(2, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_review`
--

CREATE TABLE `vendor_review` (
  `vendor_review_id` int(11) NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `review` text,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_review`
--

INSERT INTO `vendor_review` (`vendor_review_id`, `review_date`, `review`, `user_id`, `vendor_id`) VALUES
(1, '2020-09-10 18:21:11', 'Good Company for flower decoration', 1, 1),
(2, '2020-09-10 18:21:46', 'Really good work', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_service`
--

CREATE TABLE `vendor_service` (
  `vendor_service_id` int(11) NOT NULL,
  `vendor_service_name` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `description` text,
  `image` text,
  `service_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_service`
--

INSERT INTO `vendor_service` (`vendor_service_id`, `vendor_service_name`, `amount`, `description`, `image`, `service_id`, `vendor_id`) VALUES
(1, 'Balloon Descoration', 500, 'Make your event beautiful', NULL, 3, 1),
(2, 'Flower Decoration', 1500, 'Make your event beautiful', NULL, 1, 1),
(3, 'DJ', 5000, 'Make your event Awesome', NULL, 2, 2),
(4, 'Balloon Descoration', 800, 'Make your event beautiful', NULL, 3, 2),
(5, 'DJ', 5500, 'Make your event Awesome', '9542_thumb-1920-665091.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_service_rate`
--

CREATE TABLE `vendor_service_rate` (
  `vendor_service_rate_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_service_rate`
--

INSERT INTO `vendor_service_rate` (`vendor_service_rate_id`, `rate`, `user_id`, `vendor_service_id`) VALUES
(1, 5, 1, 1),
(2, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_service_review`
--

CREATE TABLE `vendor_service_review` (
  `vendor_service_review_id` int(11) NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `review` text,
  `user_id` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_service_review`
--

INSERT INTO `vendor_service_review` (`vendor_service_review_id`, `review_date`, `review`, `user_id`, `vendor_service_id`) VALUES
(1, '2020-09-10 18:22:16', 'Good Company for flower decoration', 1, 1),
(2, '2020-09-10 18:22:19', 'Really good work', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_type_id` (`event_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_book`
--
ALTER TABLE `service_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `vendor_service_id` (`vendor_service_id`);

--
-- Indexes for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD PRIMARY KEY (`service_cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_service_id` (`vendor_service_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `user_rate`
--
ALTER TABLE `user_rate`
  ADD PRIMARY KEY (`user_rate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`user_review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `vendor_rate`
--
ALTER TABLE `vendor_rate`
  ADD PRIMARY KEY (`vendor_rate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_review`
--
ALTER TABLE `vendor_review`
  ADD PRIMARY KEY (`vendor_review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_service`
--
ALTER TABLE `vendor_service`
  ADD PRIMARY KEY (`vendor_service_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_service_rate`
--
ALTER TABLE `vendor_service_rate`
  ADD PRIMARY KEY (`vendor_service_rate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_service_id` (`vendor_service_id`);

--
-- Indexes for table `vendor_service_review`
--
ALTER TABLE `vendor_service_review`
  ADD PRIMARY KEY (`vendor_service_review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vendor_service_id` (`vendor_service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `event_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_book`
--
ALTER TABLE `service_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `service_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_rate`
--
ALTER TABLE `user_rate`
  MODIFY `user_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_rate`
--
ALTER TABLE `vendor_rate`
  MODIFY `vendor_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_review`
--
ALTER TABLE `vendor_review`
  MODIFY `vendor_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_service`
--
ALTER TABLE `vendor_service`
  MODIFY `vendor_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_service_rate`
--
ALTER TABLE `vendor_service_rate`
  MODIFY `vendor_service_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_service_review`
--
ALTER TABLE `vendor_service_review`
  MODIFY `vendor_service_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`event_type_id`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `event_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `service_book`
--
ALTER TABLE `service_book`
  ADD CONSTRAINT `service_book_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `service_book_ibfk_2` FOREIGN KEY (`vendor_service_id`) REFERENCES `vendor_service` (`vendor_service_id`);

--
-- Constraints for table `service_cart`
--
ALTER TABLE `service_cart`
  ADD CONSTRAINT `service_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `service_cart_ibfk_2` FOREIGN KEY (`vendor_service_id`) REFERENCES `vendor_service` (`vendor_service_id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `user_rate`
--
ALTER TABLE `user_rate`
  ADD CONSTRAINT `user_rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_rate_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `user_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_review_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `vendor_rate`
--
ALTER TABLE `vendor_rate`
  ADD CONSTRAINT `vendor_rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `vendor_rate_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor_review`
--
ALTER TABLE `vendor_review`
  ADD CONSTRAINT `vendor_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `vendor_review_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor_service`
--
ALTER TABLE `vendor_service`
  ADD CONSTRAINT `vendor_service_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`),
  ADD CONSTRAINT `vendor_service_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor_service_rate`
--
ALTER TABLE `vendor_service_rate`
  ADD CONSTRAINT `vendor_service_rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `vendor_service_rate_ibfk_2` FOREIGN KEY (`vendor_service_id`) REFERENCES `vendor_service` (`vendor_service_id`);

--
-- Constraints for table `vendor_service_review`
--
ALTER TABLE `vendor_service_review`
  ADD CONSTRAINT `vendor_service_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `vendor_service_review_ibfk_2` FOREIGN KEY (`vendor_service_id`) REFERENCES `vendor_service` (`vendor_service_id`);
--
-- Database: `home`
--
CREATE DATABASE IF NOT EXISTS `home` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `home`;
--
-- Database: `medicare`
--
CREATE DATABASE IF NOT EXISTS `medicare` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medicare`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` text NOT NULL,
  `profileImg` varchar(30) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aId`, `username`, `email`, `pwd`, `profileImg`, `datetime`, `status`, `updatedAt`) VALUES
(1, 'Mehul', 'm@g.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '8482_user-400-9.jpg', '2020-01-17 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Mann', 'mn@g.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '', '2020-03-31 21:22:32', 0, '0000-00-00 00:00:00'),
(5, 'Harsh', 'h@g.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '2142_patient.jpg', '2020-03-31 21:57:50', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transaction`
--

CREATE TABLE `bank_transaction` (
  `btId` int(11) NOT NULL,
  `amount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `tranType` int(1) NOT NULL COMMENT '0=deposite,1=withdraw',
  `walletId` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_transaction`
--

INSERT INTO `bank_transaction` (`btId`, `amount`, `datetime`, `tranType`, `walletId`, `status`) VALUES
(1, 300, '2020-02-25 11:25:09', 0, 1, 0),
(2, 100, '2020-02-25 19:30:41', 0, 1, 0),
(3, 100, '2020-02-25 19:31:02', 1, 1, 0),
(4, 10000, '2020-02-26 09:14:49', 0, 1, 0),
(5, 100, '2020-02-26 09:20:10', 0, 1, 0),
(6, 1200, '2020-02-26 10:05:03', 0, 1, 0),
(7, 9600, '2020-02-26 10:17:26', 0, 1, 0),
(8, 12, '2020-02-26 10:26:18', 0, 1, 0),
(9, 1000, '2020-02-26 16:26:14', 0, 1, 0),
(10, 200, '2020-02-26 16:26:14', 0, 3, 0),
(11, 1200, '2020-02-27 01:19:17', 0, 1, 0),
(12, 100, '2020-02-27 01:23:09', 0, 3, 0),
(13, 1000, '2020-02-27 01:23:39', 1, 3, 0),
(14, 500, '2020-02-27 01:24:37', 1, 3, 0),
(15, 100, '2020-02-27 01:33:08', 1, 3, 0),
(16, 100, '2020-02-27 09:33:04', 0, 1, 0),
(17, 100, '2020-02-27 09:33:18', 1, 1, 0),
(18, 212, '2020-02-29 10:36:30', 0, 1, 0),
(19, 1500, '2020-03-04 23:35:30', 0, 1, 0),
(20, 500, '2020-03-05 00:00:58', 0, 1, 0),
(21, 1000, '2020-03-27 18:38:27', 0, 1, 0),
(22, 500, '2020-03-28 09:15:23', 0, 1, 0),
(23, 300, '2020-03-28 09:31:55', 0, 1, 0),
(24, 500, '2020-03-28 09:57:34', 0, 1, 0),
(25, 100, '2020-03-28 11:07:44', 1, 3, 0),
(26, 100, '2020-03-28 11:10:29', 1, 6, 0),
(27, 100, '2020-03-28 17:45:13', 0, 4, 0),
(28, 100, '2020-03-28 17:48:44', 0, 4, 0),
(29, 150, '2020-03-28 17:49:32', 1, 4, 0),
(30, 500, '2020-04-13 19:25:11', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pwmId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `qty`, `pwmId`, `pId`, `datetime`) VALUES
(18, 1, 1, 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatId` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `docId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `icappId` int(11) NOT NULL,
  `sender` int(1) NOT NULL,
  `deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatId`, `timestamp`, `status`, `docId`, `pId`, `icappId`, `sender`, `deleted`) VALUES
(1, '2020-03-21 17:26:30', 1, 2, 5, 1, 0, 0),
(2, '2020-03-21 17:27:27', 1, 2, 5, 1, 1, 0),
(3, '2020-03-21 17:28:27', 1, 2, 5, 1, 1, 0),
(4, '2020-03-21 17:27:27', 1, 2, 5, 1, 0, 0),
(5, '2020-03-21 18:27:27', 1, 2, 5, 1, 0, 0),
(6, '2020-03-21 18:27:27', 1, 2, 5, 1, 1, 0),
(7, '2020-03-21 23:14:47', 1, 2, 1, 1, 0, 0),
(8, '2020-03-21 23:20:42', 1, 2, 1, 1, 0, 0),
(9, '2020-03-21 23:20:44', 1, 2, 1, 1, 0, 0),
(10, '2020-03-21 23:21:12', 1, 2, 1, 1, 0, 0),
(11, '2020-03-21 23:40:02', 1, 2, 1, 1, 0, 0),
(12, '2020-03-21 23:45:54', 1, 2, 1, 1, 0, 0),
(13, '2020-03-21 23:48:25', 1, 2, 1, 1, 0, 0),
(14, '2020-03-22 10:20:50', 1, 2, 1, 1, 1, 0),
(15, '2020-03-22 10:53:19', 1, 2, 1, 1, 0, 0),
(16, '2020-03-22 10:58:46', 1, 2, 1, 1, 1, 0),
(17, '2020-03-22 11:07:34', 1, 2, 1, 1, 0, 0),
(18, '2020-03-22 11:07:43', 1, 2, 1, 1, 1, 0),
(19, '2020-03-22 11:07:52', 1, 2, 1, 1, 0, 0),
(20, '2020-03-22 11:08:07', 1, 2, 1, 1, 1, 0),
(21, '2020-03-22 18:35:37', 1, 2, 1, 1, 1, 0),
(22, '2020-03-22 18:35:38', 1, 2, 1, 1, 1, 0),
(23, '2020-03-23 22:43:33', 1, 2, 2, 2, 0, 0),
(24, '2020-03-23 23:48:14', 1, 2, 1, 1, 0, 0),
(25, '2020-03-23 23:59:12', 1, 2, 1, 1, 1, 0),
(26, '2020-03-24 09:10:10', 1, 2, 1, 1, 1, 0),
(27, '2020-03-24 09:10:26', 1, 2, 1, 1, 0, 0),
(28, '2020-03-24 09:10:48', 1, 2, 1, 1, 1, 0),
(29, '2020-03-24 09:18:39', 1, 2, 2, 2, 1, 0),
(30, '2020-03-24 09:18:47', 1, 2, 2, 2, 0, 0),
(31, '2020-03-28 09:34:00', 1, 2, 1, 3, 0, 0),
(32, '2020-03-28 09:34:21', 1, 2, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat_attachment`
--

CREATE TABLE `chat_attachment` (
  `attId` int(11) NOT NULL,
  `src` text NOT NULL,
  `chatId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_attachment`
--

INSERT INTO `chat_attachment` (`attId`, `src`, `chatId`) VALUES
(1, '4441_Front_Page.pdf', 5),
(2, '1366x657-phpstorm.png', 6),
(3, '1386_database_MEDnCARE.pdf', 11),
(4, '9785_e5_1.jpg', 12),
(5, '9981_image003_nyhfzt.png', 13),
(6, '5024_choosing-a-major-300x180.jpg', 19),
(7, '6346_database_MEDnCARE.pdf', 20),
(8, '2885_graphene-structure-696x580.jpg', 28);

-- --------------------------------------------------------

--
-- Table structure for table `chat_msg`
--

CREATE TABLE `chat_msg` (
  `cmId` int(11) NOT NULL,
  `msg` text NOT NULL,
  `chatId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_msg`
--

INSERT INTO `chat_msg` (`cmId`, `msg`, `chatId`) VALUES
(1, 'Hello', 1),
(2, 'Hello', 2),
(3, 'Bolo', 3),
(4, 'How are you', 4),
(5, 'Great', 7),
(6, 'Heyy', 8),
(7, 'dcnc', 9),
(8, 'Welcome', 10),
(9, 'Hello', 14),
(10, 'How r u', 15),
(11, 'I\'m Fine', 16),
(12, 'Great', 17),
(13, 'yup', 18),
(14, '', 21),
(15, '', 22),
(16, 'Hello', 23),
(17, 'Hello', 24),
(18, 'Hello', 25),
(19, 'Hello', 26),
(20, 'How are you???', 27),
(21, 'I\'m here', 29),
(22, 'Great', 30),
(23, 'Helllo', 31),
(24, 'How r u', 32);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `cityName` varchar(30) NOT NULL,
  `stateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityId`, `cityName`, `stateId`) VALUES
(1, 'Surat', 1),
(2, 'Ahemdabad', 1),
(3, 'Mumbai', 2),
(4, 'Nasik', 2),
(5, 'Jaipur', 3);

-- --------------------------------------------------------

--
-- Table structure for table `commission_rate`
--

CREATE TABLE `commission_rate` (
  `crId` int(11) NOT NULL,
  `rate` float NOT NULL,
  `userType` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_rate`
--

INSERT INTO `commission_rate` (`crId`, `rate`, `userType`, `updatedAt`) VALUES
(1, 10, 1, '2020-03-27 17:08:31'),
(2, 10, 2, '2020-03-27 17:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `commission_transaction`
--

CREATE TABLE `commission_transaction` (
  `ctId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `crId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_transaction`
--

INSERT INTO `commission_transaction` (`ctId`, `amount`, `crId`, `userId`, `datetime`) VALUES
(1, 1, 2, 1, '2020-03-27 18:32:03'),
(2, 1, 2, 1, '2020-03-27 18:32:52'),
(3, 1, 2, 1, '2020-03-27 18:35:03'),
(4, 120, 2, 1, '2020-03-27 18:38:47'),
(5, 50, 1, 1, '2020-03-28 09:15:24'),
(6, 30, 1, 2, '2020-03-28 09:50:40'),
(7, 30, 1, 2, '2020-03-28 09:51:14'),
(8, 30, 1, 2, '2020-03-28 09:53:44'),
(9, 50, 1, 1, '2020-03-28 09:57:35'),
(10, 50, 1, 1, '2020-04-13 19:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `daId` int(11) NOT NULL,
  `daName` varchar(30) NOT NULL,
  `daPhone` varchar(10) NOT NULL,
  `daPincode` int(11) NOT NULL,
  `daAddress` text NOT NULL,
  `cityId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`daId`, `daName`, `daPhone`, `daPincode`, `daAddress`, `cityId`, `pId`, `createdAt`) VALUES
(1, 'Mehul Sherdiwala', '0942728958', 395002, 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 1, 0, '2020-02-24 23:13:45'),
(2, 'Mehul Sherdiwala', '0942728958', 395002, 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 1, 1, '2020-02-24 23:14:43'),
(3, 'Harsh Chevli', '0942728958', 395002, 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 1, 1, '2020-02-24 23:20:08'),
(6, 'Mann', '9429680512', 395000, 'abc, streat road', 1, 4, '2020-02-25 12:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `disId` int(11) NOT NULL,
  `disName` text NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disId`, `disName`, `description`, `createdAt`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(4, 'Jondis', 'Desc', '2020-02-01 12:27:47', '0000-00-00 00:00:00', 1, '2020-02-13 00:06:46'),
(5, 'New', 'dxjcb', '2020-02-01 14:01:44', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'New', 'dxjcb', '2020-02-01 14:01:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'New', 'dxjcb', '2020-02-01 14:01:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'Demo', 'Demo new', '2020-02-11 20:11:38', '2020-02-11 20:11:47', 1, '2020-02-11 20:13:16'),
(9, 'dem', 'Dem', '2020-02-11 20:18:56', '2020-03-24 19:30:38', 0, '0000-00-00 00:00:00'),
(10, 'Demo', 'Demo', '2020-02-11 20:50:56', '0000-00-00 00:00:00', 1, '2020-02-11 20:51:11'),
(11, 'Demo', 'Demo', '2020-02-11 20:51:00', '0000-00-00 00:00:00', 1, '2020-02-11 20:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pwd` text NOT NULL,
  `gender` int(1) NOT NULL,
  `profileImg` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `experience` text NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `dptId` int(11) NOT NULL,
  `estimatedTime` int(11) NOT NULL,
  `specialization` text NOT NULL,
  `price` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docId`, `username`, `email`, `phone`, `pwd`, `gender`, `profileImg`, `description`, `experience`, `address`, `pincode`, `cityId`, `dptId`, `estimatedTime`, `specialization`, `price`, `joindate`, `datetime`, `status`, `updatedAt`) VALUES
(1, 'Mehul Sherdiwala', 'dm@g.com', '0942728958', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '4707_doctor-400-4.jpg', 'Desc', 'exp', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 395002, 1, 1, 0, 'Dental,Jondis,demo', 500, '2020-02-27 17:49:11', '2020-02-27 17:49:11', 2, '2020-04-14 19:05:49'),
(2, 'Mann Soni', 'dmn@g.com', '0942728958', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '', 'Description', '10 Years of experience', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 395002, 2, 2, 300, 'Teeth,demo', 200, '2020-02-28 18:29:01', '2020-02-28 18:29:01', 2, '2020-03-21 09:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_active_time`
--

CREATE TABLE `doctor_active_time` (
  `acId` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `wdId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_active_time`
--

INSERT INTO `doctor_active_time` (`acId`, `startTime`, `endTime`, `wdId`, `docId`, `createdAt`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, '10:00:00', '13:00:00', 1, 1, '2020-03-02 10:00:59', '2020-03-03 11:17:05', 1, '0000-00-00 00:00:00'),
(2, '17:00:00', '20:00:00', 10, 1, '2020-03-02 10:00:59', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(3, '10:00:00', '14:00:00', 8, 1, '2020-03-02 10:00:59', '2020-04-13 17:41:58', 0, '0000-00-00 00:00:00'),
(4, '10:00:00', '14:00:00', 1, 1, '2020-03-02 18:25:52', '2020-03-02 18:28:39', 1, '0000-00-00 00:00:00'),
(5, '09:00:00', '13:00:00', 10, 1, '2020-03-02 18:25:53', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00'),
(6, '17:00:00', '20:00:00', 8, 1, '2020-03-02 18:45:50', '2020-04-13 17:41:27', 0, '0000-00-00 00:00:00'),
(7, '10:00:00', '13:00:00', 6, 1, '2020-03-03 11:17:05', '2020-04-13 17:41:58', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointment`
--

CREATE TABLE `doctor_appointment` (
  `appId` int(11) NOT NULL,
  `description` text NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `acId` int(11) NOT NULL,
  `dptId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_appointment`
--

INSERT INTO `doctor_appointment` (`appId`, `description`, `datetime`, `status`, `acId`, `dptId`, `pId`, `docId`, `createdAt`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, '', '2020-03-05 00:00:00', 1, 2, 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, '', '2020-03-05 00:00:00', 1, 2, 1, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'desc', '2020-03-16 00:00:00', 1, 2, 1, 1, 1, '2020-03-04 23:16:57', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'desc', '2020-03-14 00:00:00', 1, 2, 1, 4, 1, '2020-03-04 23:16:57', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'desc', '2020-03-16 00:00:00', 1, 5, 1, 1, 1, '2020-03-04 23:17:55', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'desc', '2020-03-16 00:00:00', 1, 5, 1, 2, 1, '2020-03-04 23:55:08', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'desc', '2020-03-14 00:00:00', 1, 2, 1, 2, 1, '2020-03-05 00:00:58', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'desc', '2020-03-16 00:00:00', 1, 5, 1, 2, 1, '2020-03-05 09:22:58', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'desc', '2020-03-30 00:00:00', 0, 2, 1, 1, 1, '2020-03-28 09:15:23', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'desc', '2020-03-30 00:00:00', 0, 2, 1, 2, 1, '2020-03-28 09:57:34', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'desc', '2020-04-13 00:00:00', 1, 6, 1, 1, 1, '2020-04-13 19:25:11', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_clinic`
--

CREATE TABLE `doctor_clinic` (
  `dcId` int(11) NOT NULL,
  `clinicName` varchar(30) NOT NULL,
  `clinicDescription` text NOT NULL,
  `clinicAddress` text NOT NULL,
  `clinicPincode` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_clinic`
--

INSERT INTO `doctor_clinic` (`dcId`, `clinicName`, `clinicDescription`, `clinicAddress`, `clinicPincode`, `cityId`, `docId`, `joindate`, `status`, `updatedAt`) VALUES
(1, 'Medic', 'Desc', 'Building no 29 room no 6, kharvar nagar, khatodara, surat', 395002, 1, 1, '2020-02-28 17:37:13', 2, '2020-03-03 11:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_pharmacist`
--

CREATE TABLE `doctor_pharmacist` (
  `dophId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `pharId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_pharmacist`
--

INSERT INTO `doctor_pharmacist` (`dophId`, `docId`, `pharId`, `createdAt`, `deleted`, `deletedAt`) VALUES
(1, 1, 2, '2020-03-19 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 1, 2, '2020-04-13 17:22:33', 1, '2020-04-13 17:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_pharmacist_type`
--

CREATE TABLE `doctor_pharmacist_type` (
  `dptId` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_pharmacist_type`
--

INSERT INTO `doctor_pharmacist_type` (`dptId`, `type`) VALUES
(1, 'Regular Doctor'),
(2, 'Instant Cure Doctor'),
(3, 'Offline Pharmacy'),
(4, 'Online Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_qualification`
--

CREATE TABLE `doctor_qualification` (
  `dqId` int(11) NOT NULL,
  `university` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `docId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_qualification`
--

INSERT INTO `doctor_qualification` (`dqId`, `university`, `degree`, `year`, `docId`) VALUES
(8, 'SMIMER', 'MBBS', 2020, 2),
(13, 'VNSGU', 'MBBS', 2020, 1),
(14, 'MIT-WPU', 'MD', 2023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_working_day`
--

CREATE TABLE `doctor_working_day` (
  `wdId` int(11) NOT NULL,
  `day` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_working_day`
--

INSERT INTO `doctor_working_day` (`wdId`, `day`) VALUES
(5, 'Friday'),
(1, 'Monday'),
(8, 'Monday - Friday'),
(9, 'Monday - Saturday'),
(10, 'Monday - Sunday'),
(6, 'Saturday'),
(7, 'Sunday'),
(4, 'Thursday'),
(2, 'Tuesday'),
(3, 'Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `instant_cure_appointment`
--

CREATE TABLE `instant_cure_appointment` (
  `icappId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `dptId` int(11) NOT NULL,
  `pId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instant_cure_appointment`
--

INSERT INTO `instant_cure_appointment` (`icappId`, `datetime`, `status`, `dptId`, `pId`) VALUES
(1, '2020-03-20 23:16:49', 2, 2, 1),
(2, '2020-03-23 17:48:22', 2, 2, 2),
(3, '2020-03-28 09:31:55', 2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `instant_cure_doctor`
--

CREATE TABLE `instant_cure_doctor` (
  `icdId` int(11) NOT NULL,
  `active_time` datetime NOT NULL,
  `active_status` int(1) NOT NULL,
  `allocated` int(1) NOT NULL,
  `icappId` int(11) DEFAULT NULL,
  `docId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instant_cure_doctor`
--

INSERT INTO `instant_cure_doctor` (`icdId`, `active_time`, `active_status`, `allocated`, `icappId`, `docId`) VALUES
(1, '2020-03-29 17:07:11', 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medId` int(11) NOT NULL,
  `medName` text NOT NULL,
  `medDescription` text NOT NULL,
  `image` text NOT NULL,
  `disId` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medId`, `medName`, `medDescription`, `image`, `disId`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, 'Crocin', 'Crocin is a carotenoid chemical compound that is found in the flowers crocus and gardenia. Crocin is the chemical primarily responsible for the color of saffron. Chemically, crocin is the diester formed from the disaccharide gentiobiose and the dicarboxylic acid crocetin.', '', 4, 1, '0000-00-00 00:00:00', 1, '2020-02-22 16:44:47', 0, '0000-00-00 00:00:00'),
(5, 'Pain Killer', 'Pain Killer', '', 9, 2, '2020-02-13 00:29:12', 1, '2020-02-22 10:28:25', 0, '2020-02-14 00:00:11'),
(11, 'Peracitamol', 'Desc', '', 0, 1, '2020-02-13 23:21:59', 1, '2020-02-20 09:19:51', 0, '0000-00-00 00:00:00'),
(13, 'Pain Killer new', '', '', 0, 1, '2020-02-15 08:40:21', 1, '2020-02-20 09:08:06', 1, '2020-02-15 09:42:37'),
(14, 'demo', 'Demo Description', '', 8, 1, '2020-02-15 08:46:42', 1, '2020-02-20 09:23:17', 0, '0000-00-00 00:00:00'),
(15, 'nicoxa', 'Demo Description', '8722_1ec95117-8c04-4220-9451-8dcb03a49ee1.jpg,8722_Graphene-2-640x360.jpg', 0, 1, '2020-03-30 10:27:04', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_dose`
--

CREATE TABLE `medicine_dose` (
  `doseId` int(11) NOT NULL,
  `doseUnit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_dose`
--

INSERT INTO `medicine_dose` (`doseId`, `doseUnit`) VALUES
(1, 'MG'),
(2, 'GM'),
(3, 'ML');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_rating`
--

CREATE TABLE `medicine_rating` (
  `medRateId` int(11) NOT NULL,
  `description` text NOT NULL,
  `rates` int(1) NOT NULL,
  `pwmId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_rating`
--

INSERT INTO `medicine_rating` (`medRateId`, `description`, `rates`, `pwmId`, `pId`, `datetime`) VALUES
(1, 'Good Quality', 4, 1, 1, '2020-03-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_storage_type`
--

CREATE TABLE `medicine_storage_type` (
  `mstId` int(11) NOT NULL,
  `mstType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_storage_type`
--

INSERT INTO `medicine_storage_type` (`mstId`, `mstType`) VALUES
(1, 'Strip'),
(2, 'Bottle');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_storage_unit`
--

CREATE TABLE `medicine_storage_unit` (
  `msuId` int(11) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `mstId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_storage_unit`
--

INSERT INTO `medicine_storage_unit` (`msuId`, `unit`, `mstId`) VALUES
(1, 'Tablet(s)', 1),
(2, 'Capsule(s)', 1),
(3, 'ml Suspension', 2),
(4, 'ml Oral Drop(s)', 2);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_update_details`
--

CREATE TABLE `medicine_update_details` (
  `mudId` int(11) NOT NULL,
  `updatedMedName` text NOT NULL,
  `updatedMedDescription` text NOT NULL,
  `updatedDisId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0=old,1=new',
  `status` int(1) NOT NULL COMMENT '0=pending,1=updated,2=rejected',
  `updatedBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_update_details`
--

INSERT INTO `medicine_update_details` (`mudId`, `updatedMedName`, `updatedMedDescription`, `updatedDisId`, `medId`, `type`, `status`, `updatedBy`, `createdAt`) VALUES
(1, 'Pain Killer new', '', 0, 5, 1, 1, 1, '2020-02-20 09:08:06'),
(2, 'Pain Killer', 'Pain Killer', 9, 5, 0, 1, 1, '2020-02-20 09:08:06'),
(3, '', 'Painkiller', 0, 1, 1, 0, 1, '2020-02-20 09:09:55'),
(4, 'Pain Killer ', 'Pain killer', 4, 5, 1, 1, 1, '2020-02-20 09:12:28'),
(5, 'Pain Killer', '', 0, 5, 0, 1, 1, '2020-02-20 09:12:28'),
(6, '', 'Crocine', 6, 1, 1, 2, 1, '2020-02-20 09:13:54'),
(7, '', 'Description', 0, 11, 1, 1, 1, '2020-02-20 09:15:16'),
(8, 'Peracitamol', '', 0, 11, 0, 1, 1, '2020-02-20 09:15:16'),
(9, '', 'Desc', 0, 11, 1, 1, 1, '2020-02-20 09:19:51'),
(10, 'Peracitamol', 'Description', 0, 11, 0, 1, 1, '2020-02-20 09:19:51'),
(11, '', 'Demo Description', 8, 14, 1, 1, 1, '2020-02-20 09:23:17'),
(12, 'demo', '', 0, 14, 0, 1, 1, '2020-02-20 09:23:17'),
(13, 'Crocin', 'Crocine', 6, 0, 0, 0, 1, '2020-02-22 10:35:33'),
(14, '', 'Crocin is a carotenoid chemical compound that is found in the flowers crocus and gardenia. Crocin is the chemical primarily responsible for the color of saffron. Chemically, crocin is the diester formed from the disaccharide gentiobiose and the dicarboxylic acid crocetin.', 4, 1, 1, 1, 1, '2020-02-22 16:44:26'),
(15, 'Crocin', 'Crocine', 6, 0, 0, 0, 1, '2020-02-22 16:44:47'),
(17, '', '', 8, 1, 1, 2, 1, '2020-02-22 16:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_update_permission`
--

CREATE TABLE `medicine_update_permission` (
  `mupId` int(11) NOT NULL,
  `pharId` int(11) NOT NULL,
  `permission` int(1) NOT NULL COMMENT '0=pending,1=confirm,2=rejected',
  `permissionDateTime` datetime NOT NULL,
  `mudId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_update_permission`
--

INSERT INTO `medicine_update_permission` (`mupId`, `pharId`, `permission`, `permissionDateTime`, `mudId`) VALUES
(1, 2, 2, '2020-02-21 23:24:04', 3),
(2, 2, 2, '2020-02-22 10:36:23', 6),
(3, 2, 1, '0000-00-00 00:00:00', 6),
(4, 2, 1, '2020-02-22 16:44:46', 14),
(5, 2, 2, '2020-02-22 16:48:44', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notiId` int(11) NOT NULL,
  `userTypeId` int(11) NOT NULL,
  `visitorId` int(11) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notiId`, `userTypeId`, `visitorId`, `msg`, `id`, `status`, `datetime`, `deleted`) VALUES
(1, 2, 2, 'Change Medicine Details', 2, 1, '2020-02-21 06:00:00', 1),
(2, 2, 1, 'Changes Rejected', 2, 1, '2020-02-22 10:36:23', 1),
(3, 2, 2, 'Change Medicine Details', 4, 1, '2020-02-22 16:44:26', 1),
(4, 2, 2, 'Change Medicine Details', 5, 1, '2020-02-22 16:48:04', 1),
(5, 2, 1, 'Changes Rejected', 2, 1, '2020-02-22 16:48:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oiId` int(11) NOT NULL,
  `pwmId` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0=direct,1=prescription',
  `orderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oiId`, `pwmId`, `price`, `qty`, `type`, `orderId`) VALUES
(1, 16, 15000, 2, 0, 1),
(2, 18, 12, 5, 0, 2),
(3, 1, 1200, 4, 0, 2),
(4, 18, 12, 1, 0, 5),
(5, 1, 1200, 1, 0, 5),
(6, 16, 15000, 1, 0, 6),
(7, 1, 1200, 1, 0, 9),
(8, 1, 1200, 1, 0, 10),
(9, 16, 15000, 1, 0, 10),
(10, 18, 12, 1, 0, 11),
(11, 18, 12, 1, 0, 12),
(12, 18, 12, 1, 0, 13),
(13, 1, 1200, 1, 0, 14),
(14, 1, 1200, 1, 0, 15),
(15, 15, 16, 5, 1, 16),
(16, 18, 12, 1, 0, 17),
(17, 18, 12, 1, 0, 18),
(18, 15, 16, 1, 0, 19),
(19, 1, 1200, 1, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `order_medicine`
--

CREATE TABLE `order_medicine` (
  `orderId` int(11) NOT NULL,
  `daId` int(11) NOT NULL,
  `totalAmount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `payMethod` varchar(20) NOT NULL,
  `pId` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_medicine`
--

INSERT INTO `order_medicine` (`orderId`, `daId`, `totalAmount`, `datetime`, `payMethod`, `pId`, `status`) VALUES
(1, 0, 15000, '2020-02-25 10:14:19', 'COD', 1, 'Pending'),
(2, 2, 0, '2020-02-25 10:15:08', 'Net Banking', 1, 'Processing '),
(4, 2, 0, '2020-02-25 10:20:24', 'COD', 1, 'Processing '),
(5, 2, 1212, '2020-02-25 10:21:46', 'Net Banking', 1, 'On the way'),
(6, 6, 15000, '2020-02-25 12:47:15', 'COD', 4, 'Processing '),
(7, 3, 1200, '2020-02-26 10:05:03', 'wallet', 1, 'Processing '),
(8, 1200, 1200, '2020-02-26 10:11:50', 'wallet', 1, 'Processing '),
(9, 2, 1200, '2020-02-26 10:12:58', 'wallet', 1, 'Processing '),
(10, 2, 16200, '2020-02-26 10:17:26', 'card', 1, 'Processing '),
(11, 0, 12, '2020-02-26 10:26:19', 'card', 1, 'Processing '),
(12, 2, 12, '2020-02-27 00:29:54', 'wallet', 1, 'Pending'),
(13, 2, 12, '2020-02-27 00:31:33', 'wallet', 1, 'Pending'),
(14, 3, 1200, '2020-02-27 01:19:17', 'card', 1, 'Pending'),
(15, 2, 1200, '2020-02-29 10:36:30', 'card', 1, 'Pending'),
(16, 0, 80, '2020-03-19 10:04:56', 'wallet', 2, 'Pending'),
(17, 3, 12, '2020-03-27 18:32:03', 'wallet', 2, 'Pending'),
(18, 2, 12, '2020-03-27 18:32:52', 'wallet', 2, 'Pending'),
(19, 2, 16, '2020-03-27 18:35:03', 'wallet', 2, 'Pending'),
(20, 0, 1200, '2020-03-27 18:38:47', 'wallet', 2, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_pharmacy`
--

CREATE TABLE `order_pharmacy` (
  `opId` int(11) NOT NULL,
  `buyDatetime` datetime NOT NULL,
  `presDatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `presId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `pharId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_pharmacy`
--

INSERT INTO `order_pharmacy` (`opId`, `buyDatetime`, `presDatetime`, `status`, `presId`, `pId`, `pharId`) VALUES
(1, '2020-03-19 22:39:01', '2020-03-13 16:53:41', 0, 11, 1, 2),
(2, '2020-03-19 22:39:01', '2020-03-13 16:53:41', 0, 12, 1, 2),
(3, '2020-03-20 23:45:01', '2020-03-13 16:53:41', 1, 12, 2, 2),
(4, '2020-03-20 23:45:01', '2020-03-13 16:53:41', 1, 12, 2, 2),
(5, '2020-03-19 23:39:01', '2020-03-13 16:53:41', 0, 12, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pwd` text NOT NULL,
  `gender` int(1) NOT NULL,
  `dob` datetime NOT NULL,
  `profileImg` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pId`, `username`, `email`, `phone`, `pwd`, `gender`, `dob`, `profileImg`, `description`, `address`, `pincode`, `cityId`, `joindate`, `datetime`, `status`, `updatedAt`) VALUES
(1, 'Mehul', 'm@g.com', '9427289583', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '1999-10-06 00:00:00', '2871_patient8.jpg', 'Desc', 'khatodara, surat', 395002, 1, '2020-01-18 18:05:19', '2020-01-18 18:05:19', 0, '2020-03-29 09:55:05'),
(2, 'Harsh', 'h@g.com', '9427289583', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '1970-01-01 00:00:00', '', '123', 'Surat', 395002, 1, '2020-01-20 11:11:55', '2020-01-20 11:11:55', 0, '2020-03-16 23:28:37'),
(4, 'Mann', 'mn@g.com', '', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '0000-00-00 00:00:00', '', '', '', 0, 0, '2020-01-21 10:40:18', '2020-01-21 10:40:18', 0, '2020-03-31 18:52:21'),
(5, 'xyz', 'xyz@g.com', '', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, '0000-00-00 00:00:00', '', '', '', 0, 0, '2020-01-21 11:11:57', '2020-01-21 11:11:57', 1, '2020-03-31 18:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medical_record`
--

CREATE TABLE `patient_medical_record` (
  `pmrId` int(11) NOT NULL,
  `pmrDescription` text NOT NULL,
  `datetime` datetime NOT NULL,
  `docId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_medical_record`
--

INSERT INTO `patient_medical_record` (`pmrId`, `pmrDescription`, `datetime`, `docId`, `pId`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, 'About Patient', '2020-03-07 00:00:00', 1, 1, '2020-03-07 11:18:04', 0, '2020-03-07 16:48:14'),
(2, 'About Harsh', '2020-03-14 09:38:28', 1, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medical_record_details`
--

CREATE TABLE `patient_medical_record_details` (
  `pmdId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text NOT NULL,
  `pmrId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_medical_record_details`
--

INSERT INTO `patient_medical_record_details` (`pmdId`, `datetime`, `description`, `pmrId`) VALUES
(1, '2020-03-07 16:49:21', '<b>New Description</b>', 1),
(2, '2020-03-08 16:49:21', '<p><b>Hello, User</b></p><p><b>Your Medical record is here...New Case</b></p>', 1),
(3, '2020-03-07 23:42:12', '<p><b>Hello, User</b></p><p><b>Your Medical record is here...New Case</b></p>', 1),
(4, '2020-03-14 10:12:08', 'Demo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient_report`
--

CREATE TABLE `patient_report` (
  `reportId` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `src` text NOT NULL,
  `pmdId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_report`
--

INSERT INTO `patient_report` (`reportId`, `datetime`, `src`, `pmdId`) VALUES
(1, '2020-03-13 00:00:00', '5920_1366x608-phpstorm.png', 3),
(2, '2020-03-13 00:00:00', '4441_Front_Page.pdf', 3),
(3, '2020-03-13 00:00:00', '1366x657-phpstorm.png', 3),
(4, '2020-03-13 23:14:11', '3931_Holographic_and_Blue_Eyes_Technologies_(1).pdf', 3),
(5, '2020-03-13 23:22:11', '7575_nn200493r_si_001.pdf', 3),
(6, '2020-03-14 13:16:44', '9643_Holographic_and_Blue_Eyes_Technologies_(1).pdf', 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment_doctor`
--

CREATE TABLE `payment_doctor` (
  `pdId` int(11) NOT NULL,
  `amount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `appType` int(1) NOT NULL COMMENT '0=ragular,1=instant cure',
  `appId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_doctor`
--

INSERT INTO `payment_doctor` (`pdId`, `amount`, `datetime`, `appType`, `appId`, `pId`, `status`) VALUES
(1, 100, '2020-02-25 16:00:00', 0, 1, 1, 0),
(2, 500, '2020-03-04 23:55:08', 0, 1, 1, 0),
(3, 500, '2020-03-05 00:00:58', 0, 1, 1, 0),
(4, 500, '2020-03-05 09:22:59', 0, 1, 1, 0),
(5, 450, '2020-03-28 09:15:24', 0, 1, 1, 0),
(6, 300, '2020-03-28 09:50:41', 1, 3, 1, 0),
(9, 450, '2020-03-28 09:57:35', 0, 1, 1, 0),
(10, 500, '2020-04-13 19:25:11', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_pharmacist`
--

CREATE TABLE `payment_pharmacist` (
  `ppId` int(11) NOT NULL,
  `amount` float NOT NULL,
  `datetime` datetime NOT NULL,
  `orderId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_pharmacist`
--

INSERT INTO `payment_pharmacist` (`ppId`, `amount`, `datetime`, `orderId`, `pId`, `status`) VALUES
(1, 100, '2020-02-25 16:22:00', 1, 1, 0),
(2, 1200, '2020-02-26 10:05:03', 0, 1, 0),
(3, 1200, '2020-02-26 10:11:50', 0, 1, 0),
(4, 1200, '2020-02-26 10:12:58', 0, 1, 0),
(5, 16200, '2020-02-26 10:17:28', 0, 1, 0),
(6, 12, '2020-02-26 10:26:21', 0, 1, 0),
(7, 1200, '2020-02-27 01:19:20', 14, 1, 0),
(8, 1200, '2020-02-29 10:36:32', 15, 1, 0),
(9, 80, '2020-03-19 10:04:58', 16, 1, 0),
(10, 12, '2020-03-27 18:32:06', 17, 1, 0),
(11, 12, '2020-03-27 18:32:55', 18, 1, 0),
(12, 16, '2020-03-27 18:35:06', 19, 1, 0),
(13, 1200, '2020-03-27 18:38:49', 20, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `pharId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pwd` text NOT NULL,
  `profileImg` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `dptId` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`pharId`, `username`, `email`, `phone`, `pwd`, `profileImg`, `description`, `address`, `pincode`, `cityId`, `dptId`, `joindate`, `datetime`, `status`, `updatedAt`) VALUES
(1, 'Mehul new', 'pm@g.com', '9427289583', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '9826_patient8.jpg', 'new', 'New Address', 395002, 1, 4, '2020-01-22 23:12:14', '2020-01-22 23:12:14', 2, '2020-04-14 19:11:19'),
(2, 'Mann Soni', 'pmn@g.com', '0942728958', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '', 'Description ', 'Surat', 395002, 1, 3, '2020-02-13 23:35:54', '2020-02-13 23:35:54', 1, '2020-03-27 10:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist_wise_medicine`
--

CREATE TABLE `pharmacist_wise_medicine` (
  `pwmId` int(11) NOT NULL,
  `price` float NOT NULL,
  `dose` int(11) NOT NULL,
  `doseId` int(11) NOT NULL,
  `capacity` float NOT NULL,
  `msuId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `pharId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist_wise_medicine`
--

INSERT INTO `pharmacist_wise_medicine` (`pwmId`, `price`, `dose`, `doseId`, `capacity`, `msuId`, `medId`, `pharId`, `createdAt`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, 1200, 1, 2, 15, 2, 1, 1, '2020-02-13 23:07:44', '2020-02-17 17:29:41', 0, '2020-02-14 00:00:29'),
(13, 1233, 120, 1, 15, 1, 5, 1, '2020-02-13 23:07:44', '0000-00-00 00:00:00', 0, '2020-02-14 00:00:11'),
(15, 16, 40, 1, 10, 3, 11, 1, '2020-02-13 23:21:59', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 15000, 400, 1, 15, 1, 1, 2, '2020-02-13 23:36:27', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 1500, 30, 1, 10, 3, 13, 1, '2020-02-15 08:40:21', '0000-00-00 00:00:00', 1, '2020-02-15 09:42:37'),
(18, 12, 350, 1, 15, 1, 14, 1, '2020-02-15 08:48:19', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 11, 10, 2, 11, 1, 15, 1, '2020-03-30 10:27:04', '2020-03-30 16:57:46', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `presId` int(11) NOT NULL,
  `timesPerDay` int(11) NOT NULL COMMENT '1=morning,2=noon,4=night',
  `dineSuggestion` int(11) NOT NULL COMMENT '1=before dine,2=after dine',
  `qty` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `pwmId` int(11) NOT NULL,
  `pmdId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`presId`, `timesPerDay`, `dineSuggestion`, `qty`, `status`, `datetime`, `pwmId`, `pmdId`) VALUES
(1, 7, 2, 10, 0, '2020-03-07 16:53:41', 1, 1),
(2, 6, 2, 10, 0, '2020-03-07 16:54:41', 13, 1),
(3, 2, 1, 5, 1, '2020-03-11 16:53:41', 15, 1),
(4, 2, 1, 5, 0, '2020-03-08 16:53:41', 16, 1),
(5, 7, 2, 10, 0, '2020-03-08 16:53:41', 1, 1),
(10, 6, 2, 10, 0, '2020-03-10 16:53:08', 13, 2),
(11, 2, 1, 5, 1, '2020-03-13 16:53:41', 15, 2),
(12, 7, 2, 10, 1, '2020-03-13 16:53:41', 15, 2),
(13, 5, 2, 10, 0, '2020-03-11 16:51:11', 1, 2),
(14, 2, 1, 10, 0, '2020-03-13 23:42:12', 18, 3),
(15, 7, 1, 10, 0, '2020-03-14 10:12:08', 18, 4),
(16, 2, 2, 5, 0, '2020-03-14 10:17:40', 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rateId` int(11) NOT NULL,
  `description` text NOT NULL,
  `rates` int(1) NOT NULL,
  `userType` int(1) NOT NULL,
  `userId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rateId`, `description`, `rates`, `userType`, `userId`, `pId`, `datetime`) VALUES
(1, 'saveReview', 5, 1, 1, 1, '2020-03-26 10:39:12'),
(2, 'good Experience', 3, 1, 2, 1, '2020-03-26 17:37:35'),
(3, 'Good Quality', 5, 2, 1, 1, '2020-03-26 18:34:34'),
(4, 'Good Quality', 4, 2, 2, 1, '2020-03-26 18:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateId` int(11) NOT NULL,
  `stateName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateId`, `stateName`) VALUES
(1, 'Gujarat'),
(2, 'Maharastra'),
(3, 'Rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `syId` int(11) NOT NULL,
  `description` text NOT NULL,
  `disId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted` int(1) NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`syId`, `description`, `disId`, `createdAt`, `updatedAt`, `deleted`, `deletedAt`) VALUES
(1, 'Fever', 4, '2020-02-01 12:27:47', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Body Pain', 4, '2020-02-01 12:27:47', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'jdcbkv', 5, '2020-02-01 14:01:44', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'jdcbkv', 6, '2020-02-01 14:01:48', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'jdcbkv', 7, '2020-02-01 14:01:49', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Demo', 8, '2020-02-11 20:11:47', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'Demo', 10, '2020-02-11 20:50:56', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'Demo', 11, '2020-02-11 20:51:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'dem', 9, '2020-03-24 19:30:38', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'demo', 9, '2020-03-24 19:30:38', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'Demo', 9, '2020-03-24 19:30:38', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'Demo', 9, '2020-03-24 19:30:38', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `userTypeId` int(11) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`userTypeId`, `user`) VALUES
(1, 'Doctor'),
(2, 'Pharmacist'),
(3, 'Patient'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `walletId` int(11) NOT NULL,
  `amount` float NOT NULL,
  `userTypeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`walletId`, `amount`, `userTypeId`, `userId`, `updatedAt`) VALUES
(1, 180, 3, 1, '0000-00-00 00:00:00'),
(2, 200, 3, 2, '0000-00-00 00:00:00'),
(3, 9793, 2, 1, '0000-00-00 00:00:00'),
(4, 330, 4, 1, '2020-03-27 18:36:59'),
(6, 350, 1, 2, '2020-03-28 09:53:17'),
(7, 1080, 1, 1, '2020-03-28 09:53:17'),
(8, 9793, 2, 2, '2020-04-03 09:35:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  ADD PRIMARY KEY (`btId`),
  ADD KEY `walletId` (`walletId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `medId` (`pwmId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `pId` (`pId`),
  ADD KEY `icappId` (`icappId`);

--
-- Indexes for table `chat_attachment`
--
ALTER TABLE `chat_attachment`
  ADD PRIMARY KEY (`attId`),
  ADD KEY `chatId` (`chatId`);

--
-- Indexes for table `chat_msg`
--
ALTER TABLE `chat_msg`
  ADD PRIMARY KEY (`cmId`),
  ADD KEY `chatId` (`chatId`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityId`),
  ADD KEY `stateId` (`stateId`);

--
-- Indexes for table `commission_rate`
--
ALTER TABLE `commission_rate`
  ADD PRIMARY KEY (`crId`),
  ADD KEY `userType` (`userType`);

--
-- Indexes for table `commission_transaction`
--
ALTER TABLE `commission_transaction`
  ADD PRIMARY KEY (`ctId`),
  ADD KEY `crId` (`crId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`daId`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`disId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docId`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `dptId` (`dptId`);

--
-- Indexes for table `doctor_active_time`
--
ALTER TABLE `doctor_active_time`
  ADD PRIMARY KEY (`acId`),
  ADD KEY `wdId` (`wdId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `doctor_appointment`
--
ALTER TABLE `doctor_appointment`
  ADD PRIMARY KEY (`appId`),
  ADD KEY `wdId` (`acId`),
  ADD KEY `dptId` (`dptId`),
  ADD KEY `pId` (`pId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `doctor_clinic`
--
ALTER TABLE `doctor_clinic`
  ADD PRIMARY KEY (`dcId`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `doctor_pharmacist`
--
ALTER TABLE `doctor_pharmacist`
  ADD PRIMARY KEY (`dophId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `pharId` (`pharId`);

--
-- Indexes for table `doctor_pharmacist_type`
--
ALTER TABLE `doctor_pharmacist_type`
  ADD PRIMARY KEY (`dptId`);

--
-- Indexes for table `doctor_qualification`
--
ALTER TABLE `doctor_qualification`
  ADD PRIMARY KEY (`dqId`),
  ADD KEY `docId` (`docId`);

--
-- Indexes for table `doctor_working_day`
--
ALTER TABLE `doctor_working_day`
  ADD PRIMARY KEY (`wdId`),
  ADD KEY `day` (`day`);

--
-- Indexes for table `instant_cure_appointment`
--
ALTER TABLE `instant_cure_appointment`
  ADD PRIMARY KEY (`icappId`),
  ADD KEY `dptId` (`dptId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `instant_cure_doctor`
--
ALTER TABLE `instant_cure_doctor`
  ADD PRIMARY KEY (`icdId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `appId` (`icappId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medId`),
  ADD KEY `disId` (`disId`),
  ADD KEY `pharId` (`createdBy`),
  ADD KEY `updatedBy` (`updatedBy`);

--
-- Indexes for table `medicine_dose`
--
ALTER TABLE `medicine_dose`
  ADD PRIMARY KEY (`doseId`);

--
-- Indexes for table `medicine_rating`
--
ALTER TABLE `medicine_rating`
  ADD PRIMARY KEY (`medRateId`),
  ADD KEY `pwmId` (`pwmId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `medicine_storage_type`
--
ALTER TABLE `medicine_storage_type`
  ADD PRIMARY KEY (`mstId`);

--
-- Indexes for table `medicine_storage_unit`
--
ALTER TABLE `medicine_storage_unit`
  ADD PRIMARY KEY (`msuId`),
  ADD KEY `mstId` (`mstId`);

--
-- Indexes for table `medicine_update_details`
--
ALTER TABLE `medicine_update_details`
  ADD PRIMARY KEY (`mudId`),
  ADD KEY `updatedDisId` (`updatedDisId`),
  ADD KEY `medId` (`medId`);

--
-- Indexes for table `medicine_update_permission`
--
ALTER TABLE `medicine_update_permission`
  ADD PRIMARY KEY (`mupId`),
  ADD KEY `pharId` (`pharId`),
  ADD KEY `mudId` (`mudId`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notiId`),
  ADD KEY `visitorId` (`visitorId`),
  ADD KEY `id` (`id`),
  ADD KEY `userTypeId` (`userTypeId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oiId`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `order_medicine`
--
ALTER TABLE `order_medicine`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `daId` (`daId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `order_pharmacy`
--
ALTER TABLE `order_pharmacy`
  ADD PRIMARY KEY (`opId`),
  ADD KEY `presId` (`presId`),
  ADD KEY `pId` (`pId`),
  ADD KEY `pharId` (`pharId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pId`),
  ADD KEY `cityId` (`cityId`);

--
-- Indexes for table `patient_medical_record`
--
ALTER TABLE `patient_medical_record`
  ADD PRIMARY KEY (`pmrId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `patient_medical_record_details`
--
ALTER TABLE `patient_medical_record_details`
  ADD PRIMARY KEY (`pmdId`),
  ADD KEY `pmrId` (`pmrId`);

--
-- Indexes for table `patient_report`
--
ALTER TABLE `patient_report`
  ADD PRIMARY KEY (`reportId`),
  ADD KEY `pmdId` (`pmdId`);

--
-- Indexes for table `payment_doctor`
--
ALTER TABLE `payment_doctor`
  ADD PRIMARY KEY (`pdId`),
  ADD KEY `docId` (`appId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `payment_pharmacist`
--
ALTER TABLE `payment_pharmacist`
  ADD PRIMARY KEY (`ppId`),
  ADD KEY `pharId` (`orderId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`pharId`),
  ADD KEY `cityId` (`cityId`),
  ADD KEY `dptId` (`dptId`);

--
-- Indexes for table `pharmacist_wise_medicine`
--
ALTER TABLE `pharmacist_wise_medicine`
  ADD PRIMARY KEY (`pwmId`),
  ADD KEY `medId` (`medId`),
  ADD KEY `pharId` (`pharId`),
  ADD KEY `msuId` (`msuId`),
  ADD KEY `doseId` (`doseId`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`presId`),
  ADD KEY `medId` (`pwmId`),
  ADD KEY `pmdId` (`pmdId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rateId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateId`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`syId`),
  ADD KEY `disId` (`disId`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`userTypeId`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`walletId`),
  ADD KEY `userTypeId` (`userTypeId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  MODIFY `btId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chat_attachment`
--
ALTER TABLE `chat_attachment`
  MODIFY `attId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat_msg`
--
ALTER TABLE `chat_msg`
  MODIFY `cmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commission_rate`
--
ALTER TABLE `commission_rate`
  MODIFY `crId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commission_transaction`
--
ALTER TABLE `commission_transaction`
  MODIFY `ctId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `daId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `disId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_active_time`
--
ALTER TABLE `doctor_active_time`
  MODIFY `acId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor_appointment`
--
ALTER TABLE `doctor_appointment`
  MODIFY `appId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_clinic`
--
ALTER TABLE `doctor_clinic`
  MODIFY `dcId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_pharmacist`
--
ALTER TABLE `doctor_pharmacist`
  MODIFY `dophId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_pharmacist_type`
--
ALTER TABLE `doctor_pharmacist_type`
  MODIFY `dptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor_qualification`
--
ALTER TABLE `doctor_qualification`
  MODIFY `dqId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctor_working_day`
--
ALTER TABLE `doctor_working_day`
  MODIFY `wdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `instant_cure_appointment`
--
ALTER TABLE `instant_cure_appointment`
  MODIFY `icappId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instant_cure_doctor`
--
ALTER TABLE `instant_cure_doctor`
  MODIFY `icdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicine_dose`
--
ALTER TABLE `medicine_dose`
  MODIFY `doseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_rating`
--
ALTER TABLE `medicine_rating`
  MODIFY `medRateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine_storage_type`
--
ALTER TABLE `medicine_storage_type`
  MODIFY `mstId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_storage_unit`
--
ALTER TABLE `medicine_storage_unit`
  MODIFY `msuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medicine_update_details`
--
ALTER TABLE `medicine_update_details`
  MODIFY `mudId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `medicine_update_permission`
--
ALTER TABLE `medicine_update_permission`
  MODIFY `mupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `oiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_medicine`
--
ALTER TABLE `order_medicine`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_pharmacy`
--
ALTER TABLE `order_pharmacy`
  MODIFY `opId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_medical_record`
--
ALTER TABLE `patient_medical_record`
  MODIFY `pmrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_medical_record_details`
--
ALTER TABLE `patient_medical_record_details`
  MODIFY `pmdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_report`
--
ALTER TABLE `patient_report`
  MODIFY `reportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_doctor`
--
ALTER TABLE `payment_doctor`
  MODIFY `pdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_pharmacist`
--
ALTER TABLE `payment_pharmacist`
  MODIFY `ppId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `pharId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacist_wise_medicine`
--
ALTER TABLE `pharmacist_wise_medicine`
  MODIFY `pwmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `presId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `syId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `userTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `walletId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `new_schema`
--
CREATE DATABASE IF NOT EXISTS `new_schema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new_schema`;
--
-- Database: `onlineshopping`
--
CREATE DATABASE IF NOT EXISTS `onlineshopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onlineshopping`;

-- --------------------------------------------------------

--
-- Table structure for table `itemstbl`
--

CREATE TABLE `itemstbl` (
  `iid` int(11) NOT NULL,
  `iname` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `idesc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemstbl`
--

INSERT INTO `itemstbl` (`iid`, `iname`, `price`, `idesc`) VALUES
(1, 'tshirt', 200, 'tshirt');

-- --------------------------------------------------------

--
-- Table structure for table `logintbl`
--

CREATE TABLE `logintbl` (
  `loginid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintbl`
--

INSERT INTO `logintbl` (`loginid`, `uname`, `passwd`) VALUES
(1, 'mann', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemstbl`
--
ALTER TABLE `itemstbl`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `logintbl`
--
ALTER TABLE `logintbl`
  ADD PRIMARY KEY (`loginid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `itemstbl`
--
ALTER TABLE `itemstbl`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logintbl`
--
ALTER TABLE `logintbl`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"full_screen\":\"on\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('brs', 'quotation', 'quo_id');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'adb', 'usertable', '{\"sorted_col\":\"`usertable`.`password`  DESC\"}', '2019-10-03 04:14:12'),
('root', 'brs', 'boq_des_add_data', '{\"sorted_col\":\"`boq_des_add_data_id`  DESC\"}', '2018-10-25 03:19:32'),
('root', 'brs', 'boq_des_data', '{\"sorted_col\":\"`boq_des_data_id`  DESC\"}', '2018-10-25 03:19:04'),
('root', 'chatapp', 'chat_msg', '{\"sorted_col\":\"`chatid`  ASC\"}', '2019-11-22 04:41:26'),
('root', 'eezybee', 'stripe_demo', '{\"sorted_col\":\"`stripe_demo`.`stripe_id` ASC\"}', '2020-01-13 11:20:56'),
('root', 'medicare', 'doctor_working_day', '{\"sorted_col\":\"`doctor_working_day`.`wdId` ASC\"}', '2020-02-29 17:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('', '2020-02-19 12:12:00', '{\"Console\\/Mode\":\"collapse\"}'),
('root', '2020-09-30 13:18:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpsamples`
--
CREATE DATABASE IF NOT EXISTS `phpsamples` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpsamples`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`id`, `name`, `description`, `date`) VALUES
(26, 'Kids Dresses', ' Fancy party dreasses for kids', '2018-08-17 16:27:31'),
(27, 'Toys', 'Mechanical and battery toys', '2018-08-17 16:27:31'),
(28, 'Snacks', 'Creamy cakes and sweets', '2018-08-17 16:27:31'),
(29, 'Stationaries', 'Books and notebooks, craft papers', '2018-08-17 16:27:31'),
(30, 'Tools', 'First aid tools', '2018-08-17 16:27:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `ship-bid`
--
CREATE DATABASE IF NOT EXISTS `ship-bid` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ship-bid`;

-- --------------------------------------------------------

--
-- Table structure for table `truck_spec`
--

CREATE TABLE `truck_spec` (
  `id_truck_spec` int(11) NOT NULL,
  `wheel` varchar(10) NOT NULL,
  `weight_capacity` varchar(10) NOT NULL,
  `id_truck_series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_spec`
--

INSERT INTO `truck_spec` (`id_truck_spec`, `wheel`, `weight_capacity`, `id_truck_series`) VALUES
(1, '7x2', '37000kg', 4),
(4, '8x2', '9000 kg', 7),
(5, '12', '3000 kg', 8),
(8, '10x2', '50000 kg', 10),
(9, '8x2', '40000kg', 11),
(10, '8x2', '40000kg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `phone_no`, `email`, `password`, `address`, `pincode`, `city`, `state`, `type`) VALUES
(2, 'mehul', '9427289582', 'msherdiwala16@gmail.com ', '00e06ef794f5c0f4311757a85cebbf3b', 'Surat', '395002', 'surat ', 'gujarat ', 0),
(14, 'Mehul', '9427289583', '123@gmail.com ', 'e10adc3949ba59abbe56e057f20f883e', 'Surat', '395002', 'surat', 'gujarat ', 0),
(15, 'mehul', '9427289583', '1234@gmail.com ', 'fcea920f7412b5da7be0cf42b8c93759', 'Surat', '395082', 'surat', 'gujarat ', 0),
(16, 'harsh', '9427289583', 'harsh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Surat', '395002', 'surat', 'gujarat ', 0),
(19, 'Mehul', '9427289586', 'msherdiwala@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brand`
--

CREATE TABLE `vehicle_brand` (
  `id_vehicle_brand` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_brand`
--

INSERT INTO `vehicle_brand` (`id_vehicle_brand`, `name`) VALUES
(4, 'TATA'),
(7, 'Bharat benz'),
(8, 'benz');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id_vehicle_model` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `id_vehicle_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id_vehicle_model`, `model`, `id_vehicle_brand`) VALUES
(4, 'SIGNA', 4),
(7, 'abs', 7),
(8, 'mmaj', 8),
(10, 'PRIMA', 4),
(11, 'abc', 4),
(12, 'sigma', 4),
(15, 'test', 7);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_series`
--

CREATE TABLE `vehicle_series` (
  `id_vehicle_series` int(11) NOT NULL,
  `series` varchar(50) NOT NULL,
  `vehicle_type` int(1) NOT NULL COMMENT '0=container,1=tank',
  `id_vehicle_model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_series`
--

INSERT INTO `vehicle_series` (`id_vehicle_series`, `series`, `vehicle_type`, `id_vehicle_model`) VALUES
(4, '3718.T', 0, 4),
(7, 'a123', 0, 7),
(8, 'hsjbs', 0, 8),
(10, '4930', 0, 10),
(11, 'aa112', 0, 11),
(12, 'a123', 0, 12),
(15, '3567', 0, 15),
(17, '3568', 1, 15),
(18, '6565', 0, 4),
(20, '1234', 0, 15),
(29, '1212', 1, 15),
(30, '1616', 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_spec_container`
--

CREATE TABLE `vehicle_spec_container` (
  `id_vehicle_spec_c` int(11) NOT NULL,
  `length` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `size_measure` varchar(3) NOT NULL COMMENT '0=mm,1=ft',
  `payload_capacity` float NOT NULL,
  `weight_measure` varchar(3) NOT NULL COMMENT '0=kg,1=tonne',
  `id_vehicle_series` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL COMMENT '0=admin',
  `updated_at` datetime NOT NULL,
  `deleted` int(1) NOT NULL COMMENT '1=deleted',
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_spec_container`
--

INSERT INTO `vehicle_spec_container` (`id_vehicle_spec_c`, `length`, `width`, `height`, `size_measure`, `payload_capacity`, `weight_measure`, `id_vehicle_series`, `created_at`, `created_by`, `updated_at`, `deleted`, `deleted_at`) VALUES
(1, 10, 10, 10, '1', 500, '0', 15, '2019-12-18 00:22:30', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 10, 10, 10, '1', 100, '0', 18, '2019-12-18 09:32:25', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 7, 9, 16, '0', 100, '0', 20, '2019-12-19 00:23:28', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_spec_tank`
--

CREATE TABLE `vehicle_spec_tank` (
  `id_vehicle_spec_t` int(11) NOT NULL,
  `length` float NOT NULL,
  `radius` float NOT NULL,
  `size_measure` varchar(3) NOT NULL COMMENT '0=mm,1=ft',
  `payload_capacity` float NOT NULL,
  `weight_measure` varchar(3) NOT NULL COMMENT '0=ltr',
  `id_vehicle_series` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL COMMENT '0=admin',
  `updated_at` datetime NOT NULL,
  `deleted` int(1) NOT NULL COMMENT '1=deleted',
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_spec_tank`
--

INSERT INTO `vehicle_spec_tank` (`id_vehicle_spec_t`, `length`, `radius`, `size_measure`, `payload_capacity`, `weight_measure`, `id_vehicle_series`, `created_at`, `created_by`, `updated_at`, `deleted`, `deleted_at`) VALUES
(1, 10, 5, '1', 200, '0', 17, '2019-12-18 00:29:32', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 12, 7, '0', 200, '0', 29, '2019-12-19 00:41:20', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 10, 10, '0', 100, '0', 30, '2019-12-19 09:56:44', 19, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `truck_spec`
--
ALTER TABLE `truck_spec`
  ADD PRIMARY KEY (`id_truck_spec`),
  ADD KEY `id_truck_series` (`id_truck_series`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  ADD PRIMARY KEY (`id_vehicle_brand`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id_vehicle_model`),
  ADD KEY `id_vehicle_brand` (`id_vehicle_brand`);

--
-- Indexes for table `vehicle_series`
--
ALTER TABLE `vehicle_series`
  ADD PRIMARY KEY (`id_vehicle_series`),
  ADD KEY `id_vehicle_model` (`id_vehicle_model`);

--
-- Indexes for table `vehicle_spec_container`
--
ALTER TABLE `vehicle_spec_container`
  ADD PRIMARY KEY (`id_vehicle_spec_c`),
  ADD KEY `id_vehicle_series` (`id_vehicle_series`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `vehicle_spec_tank`
--
ALTER TABLE `vehicle_spec_tank`
  ADD PRIMARY KEY (`id_vehicle_spec_t`),
  ADD KEY `id_vehicle_series` (`id_vehicle_series`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `truck_spec`
--
ALTER TABLE `truck_spec`
  MODIFY `id_truck_spec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  MODIFY `id_vehicle_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id_vehicle_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicle_series`
--
ALTER TABLE `vehicle_series`
  MODIFY `id_vehicle_series` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicle_spec_container`
--
ALTER TABLE `vehicle_spec_container`
  MODIFY `id_vehicle_spec_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_spec_tank`
--
ALTER TABLE `vehicle_spec_tank`
  MODIFY `id_vehicle_spec_t` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `slips`
--
CREATE DATABASE IF NOT EXISTS `slips` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `slips`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bno` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bno`, `name`, `price`, `dno`, `deptno`) VALUES
(201, 'Tata Mg-Hill', 500, 1, 101),
(202, 'DBMS Concept', 1000, 2, 102),
(203, 'Marketing Concept', 1500, 3, 103),
(204, 'Telly Reports', 200, 4, 104),
(205, 'Managerial Consonents', 500, 5, 105),
(206, 'JAVA Point', 2000, 2, 102);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `con_code` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `capital` varchar(30) DEFAULT NULL,
  `pop_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`con_code`, `name`, `capital`, `pop_code`) VALUES
(101, 'Japan', 'Tokyo', 1),
(102, 'India', 'Delhi', 5),
(103, 'Canada', 'Toronto', 2),
(104, 'Us', 'New York', 3),
(105, 'Russia', 'Moscow', 4),
(106, 'Tibet', 'Motuo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `addr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cno`, `name`, `addr`) VALUES
(1, 'Mehul', 'Surat'),
(2, 'Mann', 'Mumbai'),
(3, 'Devang', 'Mumbai'),
(4, 'Harsh', 'Pune'),
(5, 'Vardhan', 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `cust_quo`
--

CREATE TABLE `cust_quo` (
  `cno` int(11) DEFAULT NULL,
  `qno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_quo`
--

INSERT INTO `cust_quo` (`cno`, `qno`) VALUES
(1, 101),
(2, 101),
(2, 102),
(3, 102),
(4, 104),
(5, 105),
(2, 103),
(2, 104),
(2, 105),
(1, 102);

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dno` int(11) NOT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dno`, `dname`, `addr`) VALUES
(1, 'MS Creattion', 'Surat'),
(2, 'MJ Publication', 'Pune'),
(3, 'Tata Mg-Hill', 'Mumbai'),
(4, 'Harshal Creation', 'Jaipur'),
(5, 'MSM Publication', 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL,
  `deptname` varchar(30) DEFAULT NULL,
  `head` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptno`, `deptname`, `head`) VALUES
(101, 'Study', 'Mayank'),
(102, 'comp', 'Mr. Harshil'),
(103, 'Marketing', 'Mr. Manthan'),
(104, 'Accounting', 'Mr. Nevil'),
(105, 'Management', 'Mr. Mehul');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_no` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_no`, `name`, `qty`) VALUES
(1, 'Keyboard', 10),
(2, 'Mouse', 15),
(3, 'CPU', 6),
(4, 'Monitor', 20),
(5, 'Projector', 17);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_code` int(11) NOT NULL,
  `party_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`party_code`, `party_name`) VALUES
(101, 'BJP'),
(102, 'Congress'),
(103, 'AAP'),
(104, 'NCP'),
(105, 'Shivshena');

-- --------------------------------------------------------

--
-- Table structure for table `politician`
--

CREATE TABLE `politician` (
  `pno` int(11) NOT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `pdesc` varchar(30) DEFAULT NULL,
  `consistancy` varchar(30) DEFAULT NULL,
  `party_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `politician`
--

INSERT INTO `politician` (`pno`, `pname`, `pdesc`, `consistancy`, `party_code`) VALUES
(1, 'Mann ', 'MP', 'North Delhi', 101),
(2, 'Mehul', 'Gujarat', 'Gujarat', 101),
(3, 'Harsh', 'MH', 'MH', 105),
(4, 'Harshil', 'Delhi', 'Delhi', 103),
(5, 'Abhi', 'UP', 'UP', 104),
(6, 'Manthan', 'Delhi', 'Delhi', 102),
(7, 'Mihir', 'MP', 'North Delhi', 101);

-- --------------------------------------------------------

--
-- Table structure for table `population`
--

CREATE TABLE `population` (
  `pop_code` int(11) NOT NULL,
  `population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `population`
--

INSERT INTO `population` (`pop_code`, `population`) VALUES
(1, 100000),
(2, 120000),
(3, 300000),
(4, 500000),
(5, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `qno` int(11) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`qno`, `description`, `amt`) VALUES
(101, 'Fridge', 50000),
(102, 'TV', 15000),
(103, 'A.C.', 30000),
(104, 'Mobile', 10000),
(105, 'Washing Machine', 16000);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `item_no` int(11) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`item_no`, `no`, `rate`, `discount`) VALUES
(1, 101, 4950, 10),
(2, 102, 1000, 5),
(3, 103, 6000, 30),
(4, 104, 4200, 20),
(3, 101, 3000, 10),
(5, 105, 15000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sno` int(11) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sno`, `sname`, `addr`, `class`) VALUES
(1, 'Mehul', 'Mumbai', 'FY'),
(2, 'Mann', 'Pimpri', 'TY'),
(3, 'Harsh', 'Mumbai', 'FY'),
(4, 'Raj', 'Pimpri', 'TY'),
(5, 'Nevil', 'Mumbai', 'SY');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `sno` int(11) DEFAULT NULL,
  `sub_no` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`sno`, `sub_no`, `marks`) VALUES
(2, 101, 60),
(1, 102, 70),
(2, 102, 80),
(1, 101, 90),
(3, 103, 70),
(4, 104, 60),
(5, 104, 80),
(5, 105, 70),
(1, 105, 90),
(3, 102, 80);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_no` int(11) NOT NULL,
  `sub_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_no`, `sub_name`) VALUES
(101, 'Computer Science'),
(102, 'Organic Chemistry'),
(103, 'Maths'),
(104, 'Management'),
(105, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `sup`
--

CREATE TABLE `sup` (
  `no` int(11) NOT NULL,
  `sup_name` varchar(30) DEFAULT NULL,
  `addr` text,
  `city` varchar(30) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup`
--

INSERT INTO `sup` (`no`, `sup_name`, `addr`, `city`, `phone`) VALUES
(101, 'Shreeji Comp.', 'Nanpura', 'Surat', '9194978574'),
(102, 'Balaji Comp.', 'Kothrud', 'Pune', '9194978574'),
(103, 'f1 Infotech', 'Udhana', 'Surat', '9194978574'),
(104, 'MS Infotech', 'Kothrud', 'Pune', '9194978574'),
(105, 'Cypher Comp.', 'Andheri', 'Mumbai>', '9194978574');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bno`),
  ADD KEY `dno` (`dno`),
  ADD KEY `deptno` (`deptno`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`con_code`),
  ADD KEY `pop_code` (`pop_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cno`);

--
-- Indexes for table `cust_quo`
--
ALTER TABLE `cust_quo`
  ADD KEY `cno` (`cno`),
  ADD KEY `qno` (`qno`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptno`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_code`);

--
-- Indexes for table `politician`
--
ALTER TABLE `politician`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `party_code` (`party_code`);

--
-- Indexes for table `population`
--
ALTER TABLE `population`
  ADD PRIMARY KEY (`pop_code`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`qno`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD KEY `item_no` (`item_no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD KEY `sno` (`sno`),
  ADD KEY `sub_no` (`sub_no`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_no`);

--
-- Indexes for table `sup`
--
ALTER TABLE `sup`
  ADD PRIMARY KEY (`no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `dealer` (`dno`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `country_ibfk_1` FOREIGN KEY (`pop_code`) REFERENCES `population` (`pop_code`);

--
-- Constraints for table `cust_quo`
--
ALTER TABLE `cust_quo`
  ADD CONSTRAINT `cust_quo_ibfk_1` FOREIGN KEY (`cno`) REFERENCES `customer` (`cno`),
  ADD CONSTRAINT `cust_quo_ibfk_2` FOREIGN KEY (`qno`) REFERENCES `quotation` (`qno`);

--
-- Constraints for table `politician`
--
ALTER TABLE `politician`
  ADD CONSTRAINT `politician_ibfk_1` FOREIGN KEY (`party_code`) REFERENCES `party` (`party_code`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`item_no`) REFERENCES `item` (`item_no`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`no`) REFERENCES `sup` (`no`);

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`),
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`sub_no`) REFERENCES `subject` (`sub_no`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `transport`
--
CREATE DATABASE IF NOT EXISTS `transport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `transport`;

-- --------------------------------------------------------

--
-- Table structure for table `truck_brand`
--

CREATE TABLE `truck_brand` (
  `id_truck_brand` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_brand`
--

INSERT INTO `truck_brand` (`id_truck_brand`, `name`) VALUES
(4, 'TATA'),
(7, 'Bharat benz'),
(8, 'benz'),
(9, 'TATA');

-- --------------------------------------------------------

--
-- Table structure for table `truck_model`
--

CREATE TABLE `truck_model` (
  `id_truck_model` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `id_truck_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_model`
--

INSERT INTO `truck_model` (`id_truck_model`, `model`, `id_truck_brand`) VALUES
(4, 'SIGNA', 4),
(7, 'abs', 7),
(8, 'mmaj', 8),
(9, 'SIGNA', 9),
(10, 'PRIMA', 4),
(11, 'abc', 4),
(12, 'sigma', 4);

-- --------------------------------------------------------

--
-- Table structure for table `truck_series`
--

CREATE TABLE `truck_series` (
  `id_truck_series` int(11) NOT NULL,
  `series` varchar(50) NOT NULL,
  `id_truck_model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_series`
--

INSERT INTO `truck_series` (`id_truck_series`, `series`, `id_truck_model`) VALUES
(4, '3718.T', 4),
(7, 'a123', 7),
(8, 'hsjbs', 8),
(10, '4930', 10),
(11, 'aa112', 11),
(12, 'a123', 12);

-- --------------------------------------------------------

--
-- Table structure for table `truck_spec`
--

CREATE TABLE `truck_spec` (
  `id_truck_spec` int(11) NOT NULL,
  `wheel` varchar(10) NOT NULL,
  `weight_capacity` varchar(10) NOT NULL,
  `id_truck_series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck_spec`
--

INSERT INTO `truck_spec` (`id_truck_spec`, `wheel`, `weight_capacity`, `id_truck_series`) VALUES
(1, '7x2', '37000kg', 4),
(4, '8x2', '9000 kg', 7),
(5, '12', '3000 kg', 8),
(8, '10x2', '50000 kg', 10),
(9, '8x2', '40000kg', 11),
(10, '8x2', '40000kg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `phone_no`, `email`, `password`, `address`, `pincode`, `city`, `state`) VALUES
(2, 'mehul', '9427289582', 'msherdiwala16@gmail.com ', '00e06ef794f5c0f4311757a85cebbf3b', 'Surat', '395002', 'surat ', 'gujarat '),
(14, 'Mehul', '9427289583', '123@gmail.com ', 'e10adc3949ba59abbe56e057f20f883e', 'Surat', '395002', 'surat', 'gujarat '),
(15, 'mehul', '9427289583', '1234@gmail.com ', 'fcea920f7412b5da7be0cf42b8c93759', 'Surat', '395082', 'surat', 'gujarat '),
(16, 'harsh', '9427289583', 'harsh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Surat', '395002', 'surat', 'gujarat ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `truck_brand`
--
ALTER TABLE `truck_brand`
  ADD PRIMARY KEY (`id_truck_brand`);

--
-- Indexes for table `truck_model`
--
ALTER TABLE `truck_model`
  ADD PRIMARY KEY (`id_truck_model`),
  ADD KEY `id_truck_brand` (`id_truck_brand`);

--
-- Indexes for table `truck_series`
--
ALTER TABLE `truck_series`
  ADD PRIMARY KEY (`id_truck_series`),
  ADD KEY `id_truck_model` (`id_truck_model`);

--
-- Indexes for table `truck_spec`
--
ALTER TABLE `truck_spec`
  ADD PRIMARY KEY (`id_truck_spec`),
  ADD KEY `id_truck_series` (`id_truck_series`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `truck_brand`
--
ALTER TABLE `truck_brand`
  MODIFY `id_truck_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `truck_model`
--
ALTER TABLE `truck_model`
  MODIFY `id_truck_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `truck_series`
--
ALTER TABLE `truck_series`
  MODIFY `id_truck_series` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `truck_spec`
--
ALTER TABLE `truck_spec`
  MODIFY `id_truck_spec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `tweeter`
--
CREATE DATABASE IF NOT EXISTS `tweeter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tweeter`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `profile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attid` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tweeet_comment`
--

CREATE TABLE `tweeet_comment` (
  `tcid` int(11) NOT NULL,
  `cmnt` text NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tweet`
--

CREATE TABLE `tweet` (
  `tid` int(11) NOT NULL,
  `description` text NOT NULL,
  `datetime` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tweet_like`
--

CREATE TABLE `tweet_like` (
  `lid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `tweeet_comment`
--
ALTER TABLE `tweeet_comment`
  ADD PRIMARY KEY (`tcid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `tweet_like`
--
ALTER TABLE `tweet_like`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `tid` (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweeet_comment`
--
ALTER TABLE `tweeet_comment`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweet`
--
ALTER TABLE `tweet`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweet_like`
--
ALTER TABLE `tweet_like`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
