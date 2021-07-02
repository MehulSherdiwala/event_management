-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2020 at 06:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management`
--

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
  `description` text DEFAULT NULL
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
  `venue` text DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_name`, `event_date`, `venue`, `city_id`, `event_type_id`, `user_id`) VALUES
(1, 'Sahil\'s Wedding ', '2020-09-12 18:00:21', 'Udhana,Surat', 1, 1, 1),
(2, 'Umang\'s Birthday', '2020-09-13 18:00:58', 'Katargam,Surat', 1, 2, 2),
(9, 'demo', '2020-10-22 00:00:00', 'dhb', 1, 1, 2),
(11, 'ffeefe', '2020-10-22 00:00:00', 'cdcdcd', 1, 2, 2),
(12, 'Demo', '2020-10-21 00:00:00', 'Surat', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `event_type_id` int(11) NOT NULL,
  `event_type_name` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL
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
  `message` text DEFAULT NULL,
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
  `image` text DEFAULT NULL
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
  `status` int(1) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `vendor_service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_book`
--

INSERT INTO `service_book` (`book_id`, `amount`, `deposit`, `commission`, `payment_mode`, `status`, `event_id`, `vendor_service_id`) VALUES
(1, 500, 200, 50, 'Credit Card', 3, 1, 1),
(2, 1500, 500, 150, 'Debit Card', 2, 1, 3),
(3, 5500, 2000, 500, 'Credit Card', 0, 2, 5),
(4, 500, 0, 0, NULL, 3, 9, 1),
(6, 1500, 0, 0, NULL, 0, 11, 2),
(7, 5000, 0, 0, NULL, 0, 11, 3),
(8, 1500, 0, 0, NULL, 1, 11, 2),
(9, 1500, 0, 0, NULL, 0, 12, 2);

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
(1, '2020-09-10 17:59:17', 1, 1);

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
  `address` text DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `images` text DEFAULT NULL,
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
(1, 4, 1, 1),
(2, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `user_review_id` int(11) NOT NULL,
  `review_date` datetime DEFAULT NULL,
  `review` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`user_review_id`, `review_date`, `review`, `user_id`, `vendor_id`) VALUES
(1, '2020-09-10 18:20:10', 'Good ', 1, 1),
(2, '2020-09-10 18:20:31', 'Good Person', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `org_name` varchar(30) DEFAULT NULL,
  `images` text DEFAULT NULL,
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
  `review` text DEFAULT NULL,
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
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
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
  `review` text DEFAULT NULL,
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
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `service_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
