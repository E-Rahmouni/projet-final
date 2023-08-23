-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 02:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1001, 10101023, 'acheraf saadani', 'acheraf01@gmail.com', '0622114455', 'wa fin wsalto');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(11109, 10101023, 'salma', '0612457896', 'imad19rahmouni@gmail.com', 'cash on delivery', 'flat no.lot el hamd  tranche 1 nemuro 1994  casablanca  meddiona  Morocco  121212', 'hp probook  ( 3 ), Apple MacBook Pro ( 3 ), iphone 14 pro max ( 5 )', 18900, '23-Aug-2023', 'pending'),
(11110, 10101023, 'acheraf saadani', '1234567890', 'acheraf01@gmail.com', 'master card', 'flat no.lot el hamd  tranche 1 nemuro 1994  casablanca  meddiona  Morocco  0000', 'Apple Watch Seriers 8 ( 100 )', 25000, '23-Aug-2023', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(7845132, 'Samsung Galaxy  S22+', 'phones', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique.\r\n', 750, 'Samsung-Galaxy-S22.png'),
(7845133, 'LONOVO LEGION-5', 'computers', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique.\r\n', 1599, 'Lenovo-Legion-5-Gaming-Laptop.png'),
(7845138, 'airbods 2 pro', 'airbods', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique', 300, 'airbods2.png'),
(7845141, 'iphone 14 pro max', 'phones', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique.', 2400, '14_pro_max.png'),
(7845144, 'Apple Watch Seriers 8', 'Accessories', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique.', 250, 'Apple-Watch-Series-8.png'),
(7845145, 'iphone 13 pro max', 'phones', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sint dolor voluptatem illo quas voluptate beatae ab atque, vitae, optio, at aut itaque dolorem perferendis consectetur unde vel hic similique.', 1700, 'iphone_13_PNG22.png'),
(7845146, 'hp probook ', 'computers', 'HP ProBook 450 G8 Notebook (2R9D4EA) - 15.6&#34; FullHD, Intel Core i5 ...', 600, 'probook i5.png'),
(7845147, 'Apple MacBook Pro', 'computers', 'Apple MacBook Pro A1278 (Mid 2012) 13.3&#34; Laptop 8GB RAM, Storage ...', 1700, 'macbook_PNG35.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(10101023, 'acheraf saadani', 'acheraf01@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'user', 'pic-3.jpg'),
(10101025, 'imad  rahmouni', 'imad19rahmouni@gmail.com', 'c3725bde386e9fa2b4498699df403986', 'admin', 'pic-1.jpg'),
(10101028, 'salma saadani', 'salma02@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'pic-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11111;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7845148;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10101029;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
