-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 01:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoping_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_price` decimal(16,0) NOT NULL,
  `total_discount` decimal(16,0) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `session_id`, `first_name`, `last_name`, `phone`, `address`, `total_price`, `total_discount`, `date_created`, `status`) VALUES
(1, 3, 3, 'Khizar', 'tariq', '3389283184', 'H#1 st#2 ', 2000, 120, '2023-09-20 09:45:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cartegory`
--

CREATE TABLE `cartegory` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_desc` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartegory`
--

INSERT INTO `cartegory` (`category_id`, `category_name`, `category_desc`, `date_created`, `status`) VALUES
(1, 'Health & Beauty', 'Beauty Products And Medical Supplies', '2023-09-20 00:00:00', 0),
(2, 'Mens Fashion', 'All Men Fashion tranding in 2023 T-shirts Shoe etc', '2023-09-20 00:00:00', 0),
(3, 'Women Fashion', 'Women Fashion latest Trand', '2023-09-20 10:17:33', 0),
(4, 'Mother & Baby', 'Mother & Baby Staff ', '2023-09-20 10:17:33', 0),
(5, 'Home & lifestyle', 'Home supplies and latest tranding models', '2023-09-20 10:19:39', 0),
(6, 'Electronic Devices', 'All Electronic Devices ', '2023-09-20 10:19:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,0) NOT NULL,
  `qyt` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `cart_id`, `product_id`, `discount`, `qyt`, `create_date`, `comments`) VALUES
(1, 1, 2, 120, 3, '2023-09-20 09:45:44', 'no'),
(2, 1, 1, 140, 1, '2023-09-20 09:46:59', 'i want this T-shirt');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cat`
-- (See below for the actual view)
--
CREATE TABLE `cat` (
`category_id` int(11)
,`category_name` varchar(50)
,`category_desc` varchar(100)
,`date_created` datetime
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cat_all`
-- (See below for the actual view)
--
CREATE TABLE `cat_all` (
`category_id` int(11)
,`category_name` varchar(50)
,`category_desc` varchar(100)
,`date_created` datetime
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cat_menfashion`
-- (See below for the actual view)
--
CREATE TABLE `cat_menfashion` (
`category_id` int(11)
,`category_name` varchar(50)
,`category_desc` varchar(100)
,`date_created` datetime
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_price` decimal(16,0) NOT NULL,
  `total_discount` varchar(16) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '1 for active 0 for dilivered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `first_name`, `last_name`, `phone`, `address`, `total_price`, `total_discount`, `date_created`, `status`) VALUES
(1, 1, 'saad', 'awan', 338928318, 'H8 islammabad', 2000, '120', '2023-09-20 09:30:33', 0),
(2, 2, 'ali', 'asad', 465656421, 'saddar Rawalpindi', 3000, '50', '2023-09-20 09:30:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,0) NOT NULL,
  `qyt` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `discount`, `qyt`, `create_date`, `comments`) VALUES
(1, 1, 1, 120, 1, '2023-09-20 09:39:56', 'We give you a 120 discount'),
(2, 2, 2, 90, 2, '2023-09-20 09:39:56', 'we give you a discount of 90');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 paid 0 unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `status`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(200) NOT NULL,
  `product_sale_price` decimal(16,0) NOT NULL,
  `product_buy_price` int(16) NOT NULL,
  `product_qyt` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `instock` int(11) NOT NULL COMMENT '1 in stock 0 out of stock',
  `status` int(11) NOT NULL COMMENT '1 active o inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `supplier_id`, `category_id`, `product_name`, `product_desc`, `product_sale_price`, `product_buy_price`, `product_qyt`, `date_created`, `instock`, `status`) VALUES
(1, 1, 2, 'T-shirt', 'Bts Logo Printed Casual Cotton Round Neck Half Sleeves Tees Summer Wear T Shirt And Trouser For Men', 2000, 2000, 100, '2023-09-20 09:37:10', 90, 0),
(2, 2, 1, 'Beauty Tools', 'Imported Water Heating Pad Rubber Bag For Pain Relief Massage Hot Water Bottle (Multicolor) Refreezable 2ltr capacity Hot Cold Pack Use In Sports Salon And Personal Use', 3000, 3000, 200, '2023-09-20 09:37:10', 100, 0),
(3, 4, 3, 'Women Shoes', 'Stylish Heel Pumps Shoes for Girls and Women\'s.', 3000, 2900, 100, '2023-09-20 10:25:06', 120, 0),
(4, 5, 4, 'Formula Milk', 'Pediasure Triplesure (Vanilla) 850Gm\r\n238 Ratings\r\n', 1200, 1200, 0, '2023-09-20 10:25:06', 300, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_all`
-- (See below for the actual view)
--
CREATE TABLE `product_all` (
`product_id` int(11)
,`supplier_id` int(11)
,`category_id` int(11)
,`product_name` varchar(100)
,`product_desc` varchar(200)
,`product_sale_price` decimal(16,0)
,`product_buy_price` int(16)
,`product_qyt` int(11)
,`date_created` datetime
,`instock` int(11)
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_decs` varchar(300) NOT NULL,
  `review_date` datetime NOT NULL DEFAULT current_timestamp(),
  `review_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`review_id`, `product_id`, `user_id`, `review_rating`, `review_decs`, `review_date`, `review_status`) VALUES
(1, 1, 1, 4, 'T-shirt printing is good stuff is good i like it', '2023-09-20 09:42:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_address` varchar(100) NOT NULL,
  `supplier_phone` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '1 active 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_phone`, `date_created`, `status`) VALUES
(1, 'Dennis Herrmann', 'An der Schillingbrucke 50\r\n89171 Illerkirchberg', '07346 32 56 67', '2023-09-20 09:33:31', 0),
(2, 'David Wirth', 'Rathausstrasse 57\r\n90016 Nürnberg', '0911 31 85 65', '2023-09-20 09:33:31', 0),
(3, 'Stephan Schaefer', 'Feldstrasse 42\r\n39382 Oschersleben', '039407 66 33', '2023-09-20 10:09:27', 0),
(4, 'Tim Baecker', 'Brandenburgische Str 65\r\n55278 Köngernheim', '06737 82 02 74', '2023-09-20 10:09:27', 0),
(5, 'Philipp Beich', 'Rathausstrasse 65\r\n90765 Fürth', '0911 34 42 27', '2023-09-20 10:12:15', 0),
(6, 'Jörg Eisenhower', 'Ollenhauer Str. 35\r\n70378 Stuttgart Neugereut', '0711 44 43 43', '2023-09-20 10:12:15', 0),
(7, 'Alexander Kuester', 'Konstanzer Strasse 67\r\n35519 Rockenberg', '06033 80 65 83', '2023-09-20 10:13:51', 0),
(8, 'Alexander Reinhardt', 'Am Borsigturm 40\r\n42555 Velbert Langenberg', '02051 73 61 10', '2023-09-20 10:13:51', 0),
(9, 'Luca Freud', 'Chausseestr. 73\r\n25465 Halstenbek', '04101 18 18 40', '2023-09-20 10:15:06', 0),
(10, 'Stephan Meyer', 'Lietzenburger Straße 89\r\n29394 Lüder', '05824 41 22 83', '2023-09-20 10:15:06', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplier_all`
-- (See below for the actual view)
--
CREATE TABLE `supplier_all` (
`supplier_id` int(11)
,`supplier_name` varchar(50)
,`supplier_address` varchar(100)
,`supplier_phone` varchar(30)
,`date_created` datetime
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `payment_amount` decimal(16,0) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_payment`
--

INSERT INTO `supplier_payment` (`id`, `supplier_id`, `payment_amount`, `payment_date`) VALUES
(1, 3, 50000, '2023-09-20 10:56:14'),
(2, 8, 30000, '2023-09-20 10:56:14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sup_payment`
-- (See below for the actual view)
--
CREATE TABLE `sup_payment` (
`id` int(11)
,`supplier_id` int(11)
,`payment_amount` decimal(16,0)
,`payment_date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '1 active 0 in active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `password`, `email`, `address`, `phone`, `date_created`, `last_login`, `status`) VALUES
(1, 'Jörg', 'Herrmann', 'qw12qw12qw', 'JörgHerrmann@gmail.com', '70771 Leinfelden-Echterdingen', '0711 64 90 18', '2023-09-20 09:27:15', '2023-09-20 09:27:15', 0),
(2, 'Jessika', 'Daecher', 'q2w12wq2', 'Jessika.Daecher@gmail.com', 'Sonnenallee 83\r\n79289 Horben', '0761 54 87 03', '2023-09-20 09:27:15', '2023-09-20 09:27:15', 0),
(3, 'Anna', 'Friedman', 'asd12qwe', 'ChristianCole@dayrep.com', 'Fontenay 21\r\n91282 Betzenstein', '09244 30 19 29', '2023-09-20 09:28:26', '2023-09-20 09:28:26', 0),
(4, 'Maximilian Peters', 'Maximilian', 'assd33sad', 'MaximilianPeters@dayrep.com', 'Konstanzer Strasse 93\r\n64832 Babenhausen', '06073 12 99 72', '2023-09-20 10:02:50', '2023-09-20 10:02:50', 0),
(5, 'Peter', 'Pfeifer', 'oki123odi', 'PeterPfeifer@armyspy.com', 'Rudolstaedter Strasse 53\r\n63785 Obernburg', '06022 20 93 71', '2023-09-20 10:02:50', '2023-09-20 10:02:50', 0),
(6, 'Patrick', 'Fuerst', 'yht1234sfre3', 'PatrickFuerst@teleworm.us', 'Gotzkowskystrasse 66\r\n56814 Beilstein', '02673 11 89 74', '2023-09-20 10:05:53', '2023-09-20 10:05:53', 0),
(7, 'Maik', 'Reinhardt', 'qww9983gvdg', 'MaikReinhardt@dayrep.com', 'Augsburger Straße 67\r\n45529 Hattingen Oberelfringhausen', '02324 95 12 85', '2023-09-20 10:05:53', '2023-09-20 10:05:53', 0);

-- --------------------------------------------------------

--
-- Structure for view `cat`
--
DROP TABLE IF EXISTS `cat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cat`  AS SELECT `cartegory`.`category_id` AS `category_id`, `cartegory`.`category_name` AS `category_name`, `cartegory`.`category_desc` AS `category_desc`, `cartegory`.`date_created` AS `date_created`, `cartegory`.`status` AS `status` FROM `cartegory` ;

-- --------------------------------------------------------

--
-- Structure for view `cat_all`
--
DROP TABLE IF EXISTS `cat_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cat_all`  AS SELECT `cartegory`.`category_id` AS `category_id`, `cartegory`.`category_name` AS `category_name`, `cartegory`.`category_desc` AS `category_desc`, `cartegory`.`date_created` AS `date_created`, `cartegory`.`status` AS `status` FROM `cartegory` WHERE `cartegory`.`status` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `cat_menfashion`
--
DROP TABLE IF EXISTS `cat_menfashion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cat_menfashion`  AS SELECT `cartegory`.`category_id` AS `category_id`, `cartegory`.`category_name` AS `category_name`, `cartegory`.`category_desc` AS `category_desc`, `cartegory`.`date_created` AS `date_created`, `cartegory`.`status` AS `status` FROM `cartegory` WHERE `cartegory`.`category_name` = 'Mens Fashion' ;

-- --------------------------------------------------------

--
-- Structure for view `product_all`
--
DROP TABLE IF EXISTS `product_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_all`  AS SELECT `product`.`product_id` AS `product_id`, `product`.`supplier_id` AS `supplier_id`, `product`.`category_id` AS `category_id`, `product`.`product_name` AS `product_name`, `product`.`product_desc` AS `product_desc`, `product`.`product_sale_price` AS `product_sale_price`, `product`.`product_buy_price` AS `product_buy_price`, `product`.`product_qyt` AS `product_qyt`, `product`.`date_created` AS `date_created`, `product`.`instock` AS `instock`, `product`.`status` AS `status` FROM `product` ;

-- --------------------------------------------------------

--
-- Structure for view `supplier_all`
--
DROP TABLE IF EXISTS `supplier_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplier_all`  AS SELECT `supplier`.`supplier_id` AS `supplier_id`, `supplier`.`supplier_name` AS `supplier_name`, `supplier`.`supplier_address` AS `supplier_address`, `supplier`.`supplier_phone` AS `supplier_phone`, `supplier`.`date_created` AS `date_created`, `supplier`.`status` AS `status` FROM `supplier` WHERE `supplier`.`status` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `sup_payment`
--
DROP TABLE IF EXISTS `sup_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sup_payment`  AS SELECT `supplier_payment`.`id` AS `id`, `supplier_payment`.`supplier_id` AS `supplier_id`, `supplier_payment`.`payment_amount` AS `payment_amount`, `supplier_payment`.`payment_date` AS `payment_date` FROM `supplier_payment` WHERE `supplier_payment`.`payment_amount` = 30000 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `FK_user_id` (`user_id`);

--
-- Indexes for table `cartegory`
--
ALTER TABLE `cartegory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_id` (`product_id`),
  ADD KEY `FK_c_id_cart` (`cart_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_u_id` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order_id_item` (`order_id`),
  ADD KEY `FK_p_id_item` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_use_id` (`user_id`),
  ADD KEY `FK_o_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_supplier_id1` (`supplier_id`),
  ADD KEY `FK_Cat` (`category_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_pro_id` (`product_id`),
  ADD KEY `FK_user_id_review` (`user_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_supplier_id` (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cartegory`
--
ALTER TABLE `cartegory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK_c_id_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_u_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_order_id_item` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_p_id_item` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_o_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_use_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Cat` FOREIGN KEY (`category_id`) REFERENCES `cartegory` (`category_id`),
  ADD CONSTRAINT `FK_supplier_id1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `FK_pro_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FK_user_id_review` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD CONSTRAINT `FK_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
