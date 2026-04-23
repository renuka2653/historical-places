-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 04:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `historicalplacesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `historical_places_category`
--

CREATE TABLE `historical_places_category` (
  `id` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `category_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historical_places_category`
--

INSERT INTO `historical_places_category` (`id`, `image`, `category_name`) VALUES
(1, 'taj_mahal.jpg', 'Mahal'),
(4, '1682236589241.png', 'Hill Station '),
(5, '1682237298284.png', 'Water Falls '),
(6, '1682237364469.png', 'Fort ');

-- --------------------------------------------------------

--
-- Table structure for table `historical_places_info`
--

CREATE TABLE `historical_places_info` (
  `id` int(1) NOT NULL,
  `image` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `latitude` varchar(256) NOT NULL,
  `longitude` varchar(256) NOT NULL,
  `features` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `video_url` varchar(256) NOT NULL,
  `parking_available` varchar(256) NOT NULL,
  `charges` varchar(256) NOT NULL,
  `special_rules` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `account_no` varchar(256) NOT NULL,
  `ifsc_code` varchar(256) NOT NULL,
  `branch_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historical_places_info`
--

INSERT INTO `historical_places_info` (`id`, `image`, `name`, `category`, `address`, `latitude`, `longitude`, `features`, `description`, `video_url`, `parking_available`, `charges`, `special_rules`, `city`, `account_no`, `ifsc_code`, `branch_code`) VALUES
(1, 'taj_mahal.jpg', 'Taj Mahal', 'Mahal', 'Agra, Agra district, Agra division, Uttar Pradesh, India', '27.175264', '78.042156', '1) Darwaza (main gateway)\r\n2) Bageecha (gardens)\r\n3) Masjid (mosque)\r\n4) Rauza (main mausoleum)\r\n5) Naqqar Khana (rest house).', 'The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Ma', '', 'Yes', '100 ', 'Eating and smoking is strictly prohibited inside Taj Mahal. Arms, ammunitions, fire, smoking items, tobacco products, liquor, eatables (Toffees), head phones, knives, wire, mobile charger, electric goods (except camera), Tripods are also prohibited. Mobile', 'Agra', '31194561076', 'SBI0008108', '8108'),
(2, 'bibi_ka_makbara.jpg', 'Bibi Ka Maqbara', 'Mahal', 'Begumpura, Aurangabad, Maharashtra 431004', '19.910530976420038', '75.33184583494207', 'Mughal architecture.\r\nJali work on the mosque.\r\n1) Arches inside the tomb.\r\n2) Close-up of the dome.\r\n3) Designs on the interior of the dome.\r\n4) Floral designs on marble, as seen on the tomb\'s interior walls.\r\n5) Side view of the mosque in the Mausoleum c', 'The Bibi Ka Maqbara is a tomb located in Aurangabad, Maharashtra, India. It was commissioned in 1660 by the Mughal emperor Aurangzeb\'s son prince Azim Shah in the memory of his loving mother Dilras Banu Begum. It bears a striking resemblance to the Taj Mah', '', 'Yes', '100 ', 'Eating and smoking is strictly prohibited inside Taj Mahal. Arms, ammunitions, fire, smoking items, tobacco products, liquor, eatables (Toffees), head phones, knives, wire, mobile charger, electric goods (except camera), Tripods are also prohibited. Mobile', 'Aurangabad', '41654987452', 'SBIN0002511', '2511');

-- --------------------------------------------------------

--
-- Table structure for table `register_admin`
--

CREATE TABLE `register_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_admin`
--

INSERT INTO `register_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile_no` varchar(256) NOT NULL,
  `email_id` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_user`
--

INSERT INTO `register_user` (`id`, `name`, `mobile_no`, `email_id`, `address`, `username`, `password`) VALUES
(1, 'sample', '98765432210', 'abcd', '', '', ''),
(2, 'sample', '98765432210', 'abcd', '', '123123', '123123'),
(3, 'sample', '98765432210', 'abcd', 'abcd', '123123', '123123'),
(4, 'asdasd', '8208187488', 'nikdroid23@gmail.com', 'Shyam Nagar, Amravati ', 'asdasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `amount` varchar(256) NOT NULL,
  `place_id` varchar(256) NOT NULL,
  `card_holder_name` varchar(256) NOT NULL,
  `card_no` varchar(256) NOT NULL,
  `card_expiry_date` varchar(256) NOT NULL,
  `cvv_no` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payment`
--

INSERT INTO `user_payment` (`id`, `username`, `amount`, `place_id`, `card_holder_name`, `card_no`, `card_expiry_date`, `cvv_no`) VALUES
(3, 'asdasd', '1000', '1', 'Rbr', '2828282922992829', '48/84', '481'),
(4, 'asdasd', '1000', '1', 'Rbr', '2828282922992829', '48/84', '481');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `historical_places_category`
--
ALTER TABLE `historical_places_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historical_places_info`
--
ALTER TABLE `historical_places_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_admin`
--
ALTER TABLE `register_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historical_places_category`
--
ALTER TABLE `historical_places_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `historical_places_info`
--
ALTER TABLE `historical_places_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register_admin`
--
ALTER TABLE `register_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
