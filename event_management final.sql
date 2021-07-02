-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 07:16 PM
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
(4, 'Jaipur', 3),
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
(9, 'Myank\'s Wedding', '2020-10-22 00:00:00', 'Udhana', 1, 1, 2),
(11, 'Kavya\'s Wedding', '2020-10-22 00:00:00', 'Varacha', 1, 2, 2),
(12, 'Harshil\'s wedding', '2020-10-21 00:00:00', 'Surat', 1, 1, 2),
(15, 'Nevil\'s Wedding', '2020-11-04 00:00:00', 'Pune', 7, 1, 8),
(16, 'Aftab\'s Birthday Celebration', '2020-11-01 00:00:00', 'Boriwali', 6, 2, 8),
(18, 'Harshil\'s Ring Ceremony', '2020-11-17 00:00:00', 'udaipur', 5, 3, 10),
(19, 'Nevil\'s Bachelors Party', '2020-12-06 00:00:00', 'Raipur', 5, 4, 10),
(20, 'Arijit Singh Musical concert', '2020-12-01 00:00:00', 'Adajan', 1, 5, 9),
(21, 'Mohini\'s Baby Shower', '2020-12-30 00:00:00', 'Lokhandwala', 6, 7, 9),
(22, 'Nevil\'s Bachelor Party', '2020-11-10 00:00:00', 'VIP Road', 1, 2, 2);

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
(1, 'Wedding', '1555_story-img6.jpg'),
(2, 'Birthday Celebration', '4124_story-img1.jpg'),
(3, 'Ring Ceremony', '3527_blog-img2.jpg'),
(4, 'Bachelors Party', '8393_home3-galleryImg5.jpg'),
(5, 'Musical Concert', '7069_testimonials-bgImg.jpg'),
(6, 'Festival Celebration', '2792_Holi.jpg'),
(7, 'Baby Shower', '1165_Baby Shower.jpg');

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
  `status` int(1) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message`, `datetime`, `sender`, `type`, `status`, `user_id`, `vendor_id`) VALUES
(5, 'Hello!!!!', '2020-09-10 18:13:46', 0, 0, 0, 2, 2),
(6, 'I Want Information regarding your services', '2020-10-27 23:56:07', 0, 0, 0, 2, 2),
(15, 'Hello....', '2020-11-02 09:34:38', 0, 0, 1, 2, 1),
(16, 'Hiiii', '2020-11-02 09:34:52', 1, 0, 1, 2, 1),
(17, 'How can I help you', '2020-11-02 09:35:03', 1, 0, 1, 2, 1),
(18, 'I want Information regarding your services', '2020-11-02 09:35:26', 0, 0, 1, 2, 1),
(19, 'I interest in flower decoration service', '2020-11-02 09:36:14', 0, 0, 1, 2, 1),
(20, 'Okay', '2020-11-02 09:36:20', 1, 0, 1, 2, 1),
(21, 'So basically we provides real as well as artificial flowers', '2020-11-02 09:36:51', 1, 0, 1, 2, 1),
(22, 'Which type of flower you would like?', '2020-11-02 09:37:16', 1, 0, 1, 2, 1),
(23, 'Real Flowers', '2020-11-02 09:37:30', 0, 0, 1, 2, 1);

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
(1, 'Flower Decoration', '5317_gallery6.jpg'),
(2, 'DJ', '2045_dj.jpg'),
(3, 'Balloon Decoration', '8985_new.jpg'),
(4, 'Tent', '3775_home2-galleryImg17.jpg'),
(5, 'Hall', '7560_service-gallerImg1.jpg');

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
(1, 500, 200, 50, 'Credit Card', 4, 1, 1),
(2, 1500, 500, 150, 'Debit Card', 4, 1, 3),
(3, 5500, 2000, 500, 'Credit Card', 4, 2, 5),
(4, 500, 500, 0, 'Credit Card', 4, 9, 1),
(6, 1500, 0, 0, NULL, 1, 11, 2),
(7, 5000, 5000, 0, 'Credit Card', 4, 11, 3),
(8, 1500, 1500, 0, 'Debit Card', 4, 11, 2),
(9, 1500, 0, 0, NULL, 2, 12, 2),
(11, 3200, 3200, 0, 'Debit Card', 4, 15, 15),
(12, 1500, 1500, 0, 'Debit Card', 4, 15, 2),
(13, 1500, 1500, 0, 'Debit Card', 4, 16, 2),
(15, 700, 700, 0, 'Debit Card', 4, 18, 13),
(16, 700, 700, 0, 'Debit Card', 4, 19, 13),
(17, 3200, 3200, 0, 'Debit Card', 4, 20, 15),
(18, 1200, 1200, 0, 'Debit Card', 4, 21, 11),
(24, 5500, 0, 0, NULL, 0, 22, 5);

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
(12, '2020-11-02 15:10:05', 2, 2);

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
  `status` int(1) NOT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `address`, `contact`, `email`, `password`, `gender`, `status`, `city_id`) VALUES
(1, 'Mihir Sharma', 'VIP Road', '7261884455', 'mihir@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, 0, 1),
(2, 'Mayank', 'Udhana', '9696988875', 'mayank@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, 0, 1),
(8, 'Nevil', 'ak road ,surat', '9531457866', 'nevil@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, 0, 2),
(9, 'akshay', 'bk Apartment , pune', '9106945786', 'akshay@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, 1, 4),
(10, 'Manthan', 'MB Market , Mumbai', '9541236547', 'manthan@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 1, 0, 3);

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
(2, 4, 2, 1),
(3, 5, 1, 2),
(4, 5, 2, 2),
(5, 2, 8, 3),
(6, 1, 9, 3),
(7, 4, 10, 3),
(8, 4, 10, 3);

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
(2, '2020-09-10 18:20:31', 'Good Person', 2, 1),
(3, '2020-11-02 10:58:10', 'Very good experience to work', 1, 2),
(4, '2020-11-02 10:58:37', 'Very good Knowledge ', 2, 2),
(5, '2020-11-02 10:59:34', 'Good Experience ', 8, 3),
(6, '2020-11-02 10:59:52', 'Worst experience', 9, 3),
(7, '2020-11-02 11:00:18', 'Good knowledge of decoration', 10, 3);

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
  `city_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `address`, `contact`, `email`, `password`, `org_name`, `city_id`, `status`) VALUES
(1, 'Mann Soni', 'Katargam', '9898976004', 'mann@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 'MS creation', 1, NULL),
(2, 'Harshil', 'Jaipur', '9898884758', 'harshil@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 'Magic World', 3, 0),
(3, 'Prasad', '51, maa anandi township, dindoli, Surat.', '7405567056', 'andeprasad786@gmail.com', 'MUZROVJQSHVldExQWU5Mdy9XdHNTZz09', 'MNP Creation', 1, 0);

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
(2, 5, 2, 1),
(3, 5, 8, 3),
(4, 5, 8, 1),
(5, 5, 10, 3),
(6, 5, 9, 3);

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
(2, '2020-09-10 18:21:46', 'Good Experience ', 2, 1),
(3, '2020-10-30 15:18:15', 'Best Services Provided.', 8, 3),
(4, '2020-10-30 15:19:33', 'Good Service Provided.', 8, 1),
(5, '2020-10-30 15:22:20', 'Best Services Provided.', 10, 3),
(6, '2020-10-30 15:24:45', 'Best Services Provided.', 9, 3);

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
(1, 'Balloon Descoration', 500, 'Make your event beautiful', '5922_home2-galleryImg9.jpg', 3, 1),
(2, 'Flower Decoration', 1500, 'Make your event beautiful', '2621_gallery6.jpg', 1, 1),
(3, 'DJ', 5000, 'Make your event Awesome', '5630_dj.jpg', 2, 2),
(4, 'Balloon Descoration', 800, 'Make your event beautiful', '4299_home2-galleryImg9.jpg', 3, 2),
(5, 'DJ', 5500, 'Make your event Awesome', '2511_dj.jpg', 2, 1),
(6, 'Hall', 1500, 'We provide a good Hall with good specs', '8332_event-img2.jpg', 5, 1),
(7, 'Tent', 2000, 'Good Decoration', '5330_service-img3.png', 4, 1),
(8, 'Hall', 1500, 'Big Hall', '9430_venues-img2.jpg', 5, 2),
(9, 'Tent', 2500, 'Good Decoration', '5928_home3-galleryImg9.jpg', 4, 2),
(10, 'Flower ', 1700, 'All types of Flowers Available', '8336_news-img1.png', 1, 2),
(11, 'Flower', 1200, 'All types of flowers availble', '9727_news-img1.png', 1, 3),
(12, 'Hall', 2500, 'Big and Colorfull Hall', '2229_gallery2.jpg', 5, 3),
(13, 'Balloon Decoration', 700, 'Colorful', '9382_home2-galleryImg9.jpg', 3, 3),
(14, 'Tent', 1550, 'Well Decorized', '8694_home3-galleryImg9.jpg', 4, 3),
(15, 'Dj', 3200, 'Good Sound Quality', '6449_dj.jpg', 2, 3);

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
(2, 4, 1, 2),
(6, 4, 2, 2),
(7, 4, 8, 15),
(8, 4, 8, 2),
(9, 4, 10, 13),
(10, 4, 9, 11),
(11, 4, 9, 15);

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
(2, '2020-09-10 18:22:19', 'Really good work', 2, 2),
(7, '2020-10-30 15:18:15', 'it is too good', 8, 15),
(8, '2020-10-30 15:19:33', 'it is so Beautiful.', 8, 2),
(9, '2020-10-30 15:22:20', 'It is too good.', 10, 13),
(10, '2020-10-30 15:24:45', 'It is too good.', 9, 11);

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
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `event_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_book`
--
ALTER TABLE `service_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `service_cart`
--
ALTER TABLE `service_cart`
  MODIFY `service_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_rate`
--
ALTER TABLE `user_rate`
  MODIFY `user_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `user_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor_rate`
--
ALTER TABLE `vendor_rate`
  MODIFY `vendor_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_review`
--
ALTER TABLE `vendor_review`
  MODIFY `vendor_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_service`
--
ALTER TABLE `vendor_service`
  MODIFY `vendor_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendor_service_rate`
--
ALTER TABLE `vendor_service_rate`
  MODIFY `vendor_service_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_service_review`
--
ALTER TABLE `vendor_service_review`
  MODIFY `vendor_service_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
