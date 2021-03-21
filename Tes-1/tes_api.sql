-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2021 at 05:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `category_id`, `quantity`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, 10, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, 9, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, 7, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, 6, '2014-06-01 01:12:26', '2014-05-30 19:42:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, 5, '2014-06-01 01:13:45', '2014-05-30 19:43:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, 4, '2014-06-01 01:14:13', '2014-05-30 19:44:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, 5, '2014-06-01 01:18:36', '2014-05-30 19:48:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, 7, '2014-06-06 17:10:01', '2014-06-05 11:39:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, 12, '2014-06-06 17:11:04', '2014-06-05 11:40:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, 19, '2014-06-06 17:12:21', '2014-06-05 11:42:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, 20, '2014-06-06 17:12:59', '2014-06-05 11:42:49'),
(26, 'Another product', 'Awesome product!', 555, 2, 11, '2014-11-22 19:07:34', '2014-11-21 14:37:34'),
(28, 'Wallet', 'You can absolutely use this one!', 799, 6, 50, '2014-12-04 21:12:03', '2014-12-03 16:42:03'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, 69, '2014-12-13 00:52:54', '2014-12-11 20:22:54'),
(42, 'Nike Shoes for Men', 'Nike Shoes', 12999, 3, 15, '2015-12-12 06:47:08', '2015-12-12 00:17:08'),
(48, 'Bristol Shoes', 'Awesome shoes.', 999, 5, 12, '2016-01-08 06:36:37', '2016-01-08 00:06:37'),
(60, 'Rolex Watch', 'Luxury watch.', 25000, 1, 4, '2016-01-11 15:46:02', '2016-01-11 09:16:02'),
(62, 'Usha Sewing Automatic Machine', 'its best machine', 90000, 2, 7, '2021-03-21 16:57:54', '2021-03-21 15:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id_trans` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `id_item` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id_trans`, `date_added`, `id_item`, `quantity`) VALUES
(1, '2021-03-21 17:14:23', 62, 2),
(2, '2021-03-21 17:23:59', 60, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_trans`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
