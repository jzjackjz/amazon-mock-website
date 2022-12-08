-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2022 at 03:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AMAZON`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADDS_TO_CART`
--

CREATE TABLE `ADDS_TO_CART` (
  `user_email` varchar(30) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `transaction_date` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `FAMILY_PLAN`
--

CREATE TABLE `FAMILY_PLAN` (
  `prime_id` int(11) DEFAULT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `num_of_ppl` int(11) DEFAULT NULL,
  `user_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `LISTS`
--

CREATE TABLE `LISTS` (
  `product_id` varchar(30) NOT NULL,
  `seller_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LISTS`
--

INSERT INTO `LISTS` (`product_id`, `seller_email`) VALUES
('000000001', 'nike@nike.com'),
('000000002', 'allison.nevias@vanderbilt.edu'),
('000000003', 'allison.nevias@vanderbilt.edu'),
('000000004', 'allison.nevias@vanderbilt.edu'),
('000000005', 'nike@nike.com'),
('000000006', 'allison.nevias@vanderbilt.edu'),
('000000007', 'allison.nevias@vanderbilt.edu'),
('000000008', 'apple@apple.com'),
('000000009', 'allison.nevias@vanderbilt.edu'),
('000000010', 'allison.nevias@vanderbilt.edu'),
('000000011', 'allison.nevias@vanderbilt.edu'),
('1111111111', 'apple@apple.com'),
('123456789', 'nike@nike.com'),
('555555555', 'apple@apple.com'),
('888777666', 'allison.nevias@vanderbilt.edu'),
('987654321', 'allison.nevias@vanderbilt.edu');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `card_num` bigint(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `billing_address` varchar(50) DEFAULT NULL,
  `exp_date` int(4) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`card_num`, `type`, `billing_address`, `exp_date`, `first_name`, `last_name`) VALUES
(1111222233334444, 'American Express', '2501 West End Ave, Nashville, TN, 37235', 825, 'Jack', 'Zhang');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `product_id` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PRODUCT`
--

INSERT INTO `PRODUCT` (`product_id`, `name`, `price`, `category`, `email`) VALUES
('000000001', 'Soccer Ball', 19.99, 'Sports', 'nike@nike.com'),
('000000002', '12 Pack Pencils', 3.99, 'Office Supplies', 'allison.nevias@vanderbilt.edu'),
('000000003', 'TI-84 Calculator', 99.99, 'Office Supplies', 'allison.nevias@vanderbilt.edu'),
('000000004', 'Bounty Napkins 100 PK', 9.99, 'Home', 'allison.nevias@vanderbilt.edu'),
('000000005', 'NFL Football', 19.95, 'Sports', 'nike@nike.com'),
('000000006', '5x7 Picture Frame 2 PK', 7.99, 'Home', 'allison.nevias@vanderbilt.edu'),
('000000007', 'Dry Dog Food', 14.99, 'Pets', 'allison.nevias@vanderbilt.edu'),
('000000008', 'MacBook Air', 799.99, 'Technology', 'apple@apple.com'),
('000000009', 'Yankee Candle', 15.99, 'Home', 'allison.nevias@vanderbilt.edu'),
('000000010', 'Trash Bags 100 Pcs', 6.99, 'Home', 'allison.nevias@vanderbilt.edu'),
('000000011', 'Maybelline Mascara', 7.99, 'Makeup', 'allison.nevias@vanderbilt.edu'),
('1111111111', 'Apple Watch Series 8', 389.49, 'Technology', 'apple@apple.com'),
('123456789', 'Outdoor Basketball', 19.99, 'Sports', 'nike@nike.com'),
('555555555', 'Airpods Pro', 229.49, 'Technology', 'apple@apple.com'),
('888777666', 'Jane Eyre [Paperback]', 13.99, 'Books', 'allison.nevias@vanderbilt.edu'),
('987654321', 'Sleep Essential Pillow', 40.99, 'Furniture', 'allison.nevias@vanderbilt.edu');

-- --------------------------------------------------------

--
-- Table structure for table `SELLER`
--

CREATE TABLE `SELLER` (
  `seller_email` varchar(30) NOT NULL,
  `seller_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SELLER`
--

INSERT INTO `SELLER` (`seller_email`, `seller_name`) VALUES
('allison.nevias@vanderbilt.edu', 'Allison Nevias'),
('apple@apple.com', 'Apple'),
('nike@nike.com', 'Nike');

-- --------------------------------------------------------

--
-- Table structure for table `SOLO_PLAN`
--

CREATE TABLE `SOLO_PLAN` (
  `user_email` varchar(30) NOT NULL,
  `prime_id` int(11) DEFAULT NULL,
  `type_of_plan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STORES`
--

CREATE TABLE `STORES` (
  `user_email` varchar(30) NOT NULL,
  `card_num` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STORES`
--

INSERT INTO `STORES` (`user_email`, `card_num`) VALUES
('jack.zhang@vanderbilt.edu', 1111222233334444);

-- --------------------------------------------------------

--
-- Table structure for table `SUBSCRIBES`
--

CREATE TABLE `SUBSCRIBES` (
  `user_email` varchar(30) NOT NULL,
  `start_date` int(6) DEFAULT NULL,
  `renewal_date` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `USER_1`
--

CREATE TABLE `USER_1` (
  `user_email` varchar(30) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USER_1`
--

INSERT INTO `USER_1` (`user_email`, `first_name`, `last_name`) VALUES
('jack.zhang@vanderbilt.edu', 'Jack', 'Zhang');

-- --------------------------------------------------------

--
-- Table structure for table `USER_2`
--

CREATE TABLE `USER_2` (
  `user_email` varchar(30) NOT NULL,
  `phone_num` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USER_2`
--

INSERT INTO `USER_2` (`user_email`, `phone_num`) VALUES
('jack.zhang@vanderbilt.edu', 8470001111);

-- --------------------------------------------------------

--
-- Table structure for table `USER_3`
--

CREATE TABLE `USER_3` (
  `user_email` varchar(30) NOT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `USER_3`
--

INSERT INTO `USER_3` (`user_email`, `street`, `state`, `zip`) VALUES
('jack.zhang@vanderbilt.edu', '2301 Vanderbilt Pl', 'TN', 37235);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADDS_TO_CART`
--
ALTER TABLE `ADDS_TO_CART`
  ADD PRIMARY KEY (`user_email`,`product_id`),
  ADD KEY `buys_ibfk_2` (`product_id`);

--
-- Indexes for table `FAMILY_PLAN`
--
ALTER TABLE `FAMILY_PLAN`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `LISTS`
--
ALTER TABLE `LISTS`
  ADD PRIMARY KEY (`product_id`,`seller_email`),
  ADD KEY `lists_ibfk_2` (`seller_email`);

--
-- Indexes for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`card_num`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `SELLER`
--
ALTER TABLE `SELLER`
  ADD PRIMARY KEY (`seller_email`);

--
-- Indexes for table `SOLO_PLAN`
--
ALTER TABLE `SOLO_PLAN`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `STORES`
--
ALTER TABLE `STORES`
  ADD PRIMARY KEY (`user_email`,`card_num`),
  ADD KEY `stores_ibfk_2` (`card_num`);

--
-- Indexes for table `SUBSCRIBES`
--
ALTER TABLE `SUBSCRIBES`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `USER_1`
--
ALTER TABLE `USER_1`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `USER_2`
--
ALTER TABLE `USER_2`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `USER_3`
--
ALTER TABLE `USER_3`
  ADD PRIMARY KEY (`user_email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADDS_TO_CART`
--
ALTER TABLE `ADDS_TO_CART`
  ADD CONSTRAINT `adds_to_cart_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `USER_1` (`user_email`),
  ADD CONSTRAINT `adds_to_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`product_id`);

--
-- Constraints for table `LISTS`
--
ALTER TABLE `LISTS`
  ADD CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `PRODUCT` (`product_id`),
  ADD CONSTRAINT `lists_ibfk_2` FOREIGN KEY (`seller_email`) REFERENCES `SELLER` (`seller_email`);

--
-- Constraints for table `STORES`
--
ALTER TABLE `STORES`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `USER_1` (`user_email`),
  ADD CONSTRAINT `stores_ibfk_2` FOREIGN KEY (`card_num`) REFERENCES `PAYMENT` (`card_num`);

--
-- Constraints for table `SUBSCRIBES`
--
ALTER TABLE `SUBSCRIBES`
  ADD CONSTRAINT `subscribes_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `USER_1` (`user_email`);

--
-- Constraints for table `USER_2`
--
ALTER TABLE `USER_2`
  ADD CONSTRAINT `user_2_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `USER_1` (`user_email`);

--
-- Constraints for table `USER_3`
--
ALTER TABLE `USER_3`
  ADD CONSTRAINT `user_3_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `USER_1` (`user_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
