-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 01:29 PM
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
