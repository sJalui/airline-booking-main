-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` char(40) DEFAULT NULL,
  `email` char(40) NOT NULL,
  `pass` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `email`, `pass`) VALUES
('a', 'a@a.com', 'a'),
('admin', 'admin@gmail.com', 'admin'),
('systemadmin', 'systemadmin@a.com', 'systemadmin');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `email` char(40) NOT NULL,
  `pass` char(40) DEFAULT NULL,
  `airline_name` char(40) DEFAULT NULL,
  `logo` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`email`, `pass`, `airline_name`, `logo`) VALUES
('airasia@gmail.com', 'a', 'Air Asia', 'uploads/Air Asia.png'),
('aircanada@gmail.com', 'a', 'Air Canada', 'uploads/Air Canada.png'),
('airchina@gmail.com', 'a', 'Air China', 'uploads/Air China.png'),
('airindia@gmail.com', 'a', 'Air India', 'uploads/Air India.png'),
('americanairlines@gmail.com', 'a', 'American Airlines', 'uploads/American Airlines.png'),
('bimanbangladesh@gmail.com', 'a', 'Biman Bangladesh', 'uploads/biman bangladesh.png'),
('britishairways@gmail.com', 'a', 'British Airways', 'uploads/British Airways.png'),
('cathaydragon@gmail.com', 'a', 'Cathay Dragon', 'uploads/Cathay Dragon.png'),
('egyptAir@gmail.com', 'a', 'EgyptAir', 'uploads/EgyptAir.png'),
('emirates@gmail.com', 'a', 'Emirates', 'uploads/Emirates.png'),
('ethiopian@gmail.com', 'a', 'Ethiopian', 'uploads/Ethiopian.png'),
('hawaiianairlines@gmail.com', 'a', 'Hawaiian Airlines', 'uploads/Hawaiian Airlines.png'),
('japanairlines@gmail.com', 'a', 'Japan Airlines', 'uploads/Japan Airlines.png'),
('koreanair@gmail.com', 'a', 'Korean Air', 'uploads/Korean Air.png'),
('lufthansa@gmail.com', 'a', 'Lufthansa', 'uploads/Lufthansa.png'),
('mexicana@gmail.com', 'a', 'Mexicana', 'uploads/Mexicana.png'),
('Qatarairways@gmail.com', 'a', 'Qatar Airways', 'uploads/airline-logos-qatar.png'),
('ryanair@gmail.com', 'a', 'Ryanair', 'uploads/Ryanair.png'),
('sriLankanairlines@gmail.com', 'a', 'SriLankan Airlines', 'uploads/SriLankan Airlines.png'),
('swiss@gmail.com', 'a', 'Swiss', 'uploads/Swiss.png'),
('thaiairways@gmail.com', 'a', 'Thai Airways', 'uploads/Thai Airways.png'),
('turkishairlines@gmail.com', 'a', 'Turkish Airlines', 'uploads/Turkish Airlines.png');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_name` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`) VALUES
(17, ' Dhaka Airport'),
(18, 'Cox’s Bazar Airport'),
(19, 'Barisal Airport'),
(22, 'Shah Amanat International Airport'),
(23, 'Jessore Airport'),
(24, 'Shah Makhdum Airport'),
(25, 'Saidpur Airport'),
(26, 'Osmani International Airport'),
(27, 'Hazrat Shahjalal International Airport'),
(28, 'Ishwardi Airport'),
(29, 'Singapore Changi Airport'),
(30, 'Hamad International Airport'),
(31, 'Tokyo Haneda International Airport'),
(32, 'Incheon International Airport'),
(33, 'Instanbul Airport'),
(34, 'Zurich Airport'),
(35, 'Madrid Barajas Airport'),
(36, 'King Fahd International Airport'),
(37, 'Indira Gandhi International Airport'),
(38, 'Paris Charles de Gaulle Airport'),
(39, 'Heathrow Airport'),
(40, 'Istanbul Airport'),
(41, 'Los Angeles International Airport');

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `customer_email` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `flight_id`, `customer_email`) VALUES
(219, 35, 'ssj@gmail.com'),
(231, 36, 'ssj@gmail.com'),
(236, 36, 'rid@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `first_name` char(40) DEFAULT NULL,
  `last_name` char(40) DEFAULT NULL,
  `customer_name` char(40) DEFAULT NULL,
  `email` char(40) NOT NULL,
  `phone` int(10) DEFAULT NULL,
  `gender` char(40) DEFAULT NULL,
  `pass` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`first_name`, `last_name`, `customer_name`, `email`, `phone`, `gender`, `pass`) VALUES
('Kush', 'Gujarathi', 'Mahesh', 'kg@gmail.com', 954825486, 'male', 'a'),
('Ridham', 'Jain', 'RIdham', 'rid@gmail.com', 975846128, 'male', 'a'),
('Shubh', 'Jalui', 'sjalui', 'ssj@gmail.com', 994792813, 'male', 'shubh'),
('Umesh', 'Deb', 'umesh', 'umesh@gmail.com', 2147483647, 'male', 'umesh123');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `source_date` date DEFAULT NULL,
  `source_time` time DEFAULT NULL,
  `dest_date` date DEFAULT NULL,
  `dest_time` time DEFAULT NULL,
  `dep_airport` char(40) DEFAULT NULL,
  `arr_airport` char(40) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `flight_class` char(40) DEFAULT NULL,
  `airline_name` char(40) DEFAULT NULL,
  `dep_airport_id` int(11) DEFAULT NULL,
  `arr_airport_id` int(11) DEFAULT NULL,
  `airline_email` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `source_date`, `source_time`, `dest_date`, `dest_time`, `dep_airport`, `arr_airport`, `seats`, `price`, `flight_class`, `airline_name`, `dep_airport_id`, `arr_airport_id`, `airline_email`) VALUES
(35, '2023-09-22', '04:00:00', '2023-10-07', '18:00:00', 'Shah Amanat International Airport', ' Dhaka Airport', 25, 750.00, 'Economy', 'Biman Bangladesh', 22, 17, 'bimanbangladesh@gmail.com'),
(36, '2023-10-12', '09:45:00', '2023-11-23', '00:00:00', 'Cox’s Bazar Airport', 'Singapore Changi Airport', 45, 3500.00, 'First Class', 'Biman Bangladesh', 18, 29, 'bimanbangladesh@gmail.com'),
(37, '2023-09-20', '06:52:00', '2023-11-30', '03:56:00', 'Jessore Airport', 'King Fahd International Airport', 60, 2900.00, 'Business', 'Qatar Airways', 23, 36, 'Qatarairways@gmail.com'),
(38, '2023-09-22', '13:03:00', '2023-11-25', '07:25:00', 'Shah Amanat International Airport', ' Dhaka Airport', 25, 1000.00, 'Economy', 'Air Asia', 22, 17, 'airasia@gmail.com'),
(39, '2024-09-03', '02:52:02', '2024-09-27', '21:08:35', 'Indira Gandhi International Airport', 'Instanbul Airport', 15, 3815.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(40, '2024-10-01', '10:45:43', '2025-02-26', '23:24:01', 'Indira Gandhi International Airport', 'Instanbul Airport', 35, 2948.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(41, '2025-02-23', '10:16:32', '2024-11-12', '13:54:32', 'Indira Gandhi International Airport', 'Instanbul Airport', 26, 1290.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(42, '2024-09-12', '14:56:13', '2025-03-07', '13:54:00', 'Indira Gandhi International Airport', 'Instanbul Airport', 30, 2514.00, 'Business', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(43, '2024-10-24', '19:32:07', '2024-10-19', '02:20:40', 'Indira Gandhi International Airport', 'Instanbul Airport', 96, 3151.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(44, '2024-06-26', '14:30:21', '2024-09-25', '09:41:14', 'Indira Gandhi International Airport', 'Instanbul Airport', 71, 1646.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(45, '2024-09-21', '10:08:55', '2025-02-08', '19:26:52', 'Indira Gandhi International Airport', 'Instanbul Airport', 64, 3452.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(46, '2024-12-10', '04:27:48', '2025-04-10', '08:25:11', 'Indira Gandhi International Airport', 'Instanbul Airport', 82, 5459.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(47, '2024-08-28', '08:48:41', '2025-01-11', '14:12:45', 'Indira Gandhi International Airport', 'Instanbul Airport', 77, 5236.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(48, '2025-01-17', '08:45:36', '2024-11-07', '16:48:28', 'Indira Gandhi International Airport', 'Instanbul Airport', 84, 606.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(49, '2024-04-30', '15:18:28', '2024-05-16', '11:44:48', 'Indira Gandhi International Airport', 'Instanbul Airport', 28, 3295.00, 'Business', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(50, '2024-07-03', '07:57:59', '2024-04-24', '02:29:50', 'Indira Gandhi International Airport', 'Instanbul Airport', 51, 5448.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(51, '2024-07-09', '03:45:11', '2024-05-23', '00:34:55', 'Indira Gandhi International Airport', 'Instanbul Airport', 84, 766.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(52, '2024-06-06', '23:30:15', '2024-10-09', '11:18:52', 'Indira Gandhi International Airport', 'Instanbul Airport', 92, 1215.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(53, '2024-07-05', '13:06:39', '2024-05-14', '17:46:53', 'Indira Gandhi International Airport', 'Instanbul Airport', 52, 1302.00, 'Business', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(54, '2024-08-17', '09:55:01', '2024-05-08', '01:23:42', 'Indira Gandhi International Airport', 'Instanbul Airport', 20, 2427.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(55, '2024-12-19', '09:36:16', '2025-04-06', '15:50:27', 'Indira Gandhi International Airport', 'Instanbul Airport', 44, 5194.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(56, '2024-08-14', '15:52:07', '2024-08-13', '15:23:53', 'Indira Gandhi International Airport', 'Instanbul Airport', 30, 1697.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(57, '2024-12-25', '10:30:10', '2024-05-27', '05:41:48', 'Indira Gandhi International Airport', 'Instanbul Airport', 87, 3356.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(58, '2024-12-17', '11:17:32', '2024-08-20', '07:15:58', 'Indira Gandhi International Airport', 'Instanbul Airport', 53, 3088.00, 'Business', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(59, '2024-07-06', '07:05:59', '2025-02-09', '04:45:20', 'Indira Gandhi International Airport', 'Instanbul Airport', 58, 1012.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(60, '2025-01-06', '06:52:21', '2024-07-20', '10:19:53', 'Indira Gandhi International Airport', 'Instanbul Airport', 44, 3509.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(61, '2024-10-08', '11:21:54', '2025-03-24', '06:02:10', 'Indira Gandhi International Airport', 'Instanbul Airport', 50, 3084.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(62, '2024-06-15', '09:53:23', '2024-11-11', '14:45:00', 'Indira Gandhi International Airport', 'Instanbul Airport', 42, 5342.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(63, '2024-07-17', '09:07:53', '2024-06-10', '14:26:39', 'Indira Gandhi International Airport', 'Instanbul Airport', 60, 553.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(64, '2024-07-16', '19:24:43', '2024-08-03', '01:23:16', 'Indira Gandhi International Airport', 'Instanbul Airport', 45, 4596.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(65, '2025-01-19', '06:41:57', '2024-05-28', '17:29:46', 'Indira Gandhi International Airport', 'Instanbul Airport', 37, 2195.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(66, '2025-03-02', '15:38:24', '2024-12-02', '04:29:49', 'Indira Gandhi International Airport', 'Instanbul Airport', 14, 3975.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(67, '2024-09-02', '23:48:52', '2025-02-11', '03:18:53', 'Indira Gandhi International Airport', 'Instanbul Airport', 29, 3969.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(68, '2025-01-16', '14:27:00', '2025-01-18', '23:27:37', 'Indira Gandhi International Airport', 'Instanbul Airport', 65, 1270.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(69, '2025-01-07', '05:17:02', '2025-03-18', '22:22:15', 'Indira Gandhi International Airport', 'Instanbul Airport', 91, 4143.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(70, '2024-11-23', '09:38:13', '2024-06-26', '18:23:27', 'Indira Gandhi International Airport', 'Instanbul Airport', 32, 5227.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(71, '2024-07-09', '07:24:53', '2025-02-23', '08:23:36', 'Indira Gandhi International Airport', 'Instanbul Airport', 26, 4821.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(72, '2024-12-08', '06:23:15', '2024-09-09', '04:37:00', 'Indira Gandhi International Airport', 'Instanbul Airport', 79, 1798.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(73, '2024-06-03', '00:48:10', '2025-01-24', '18:26:58', 'Indira Gandhi International Airport', 'Instanbul Airport', 56, 2023.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(74, '2025-02-07', '13:53:27', '2024-09-29', '12:47:56', 'Indira Gandhi International Airport', 'Instanbul Airport', 37, 5117.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(75, '2024-06-04', '22:06:58', '2024-07-03', '07:04:10', 'Indira Gandhi International Airport', 'Instanbul Airport', 85, 2016.00, 'Business', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(76, '2024-06-07', '12:44:06', '2024-07-09', '13:22:03', 'Indira Gandhi International Airport', 'Instanbul Airport', 18, 4535.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(77, '2025-02-19', '09:33:55', '2024-09-30', '02:00:25', 'Indira Gandhi International Airport', 'Instanbul Airport', 14, 509.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(78, '2024-10-27', '01:10:48', '2024-12-13', '03:30:40', 'Indira Gandhi International Airport', 'Instanbul Airport', 77, 2185.00, 'Business', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(79, '2024-10-13', '09:28:18', '2024-10-17', '07:45:33', 'Indira Gandhi International Airport', 'Instanbul Airport', 20, 3454.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(80, '2024-09-19', '07:30:46', '2024-07-31', '12:04:05', 'Indira Gandhi International Airport', 'Instanbul Airport', 68, 4183.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(81, '2024-10-11', '19:10:45', '2024-10-31', '07:21:31', 'Indira Gandhi International Airport', 'Instanbul Airport', 91, 3666.00, 'Business', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(82, '2024-06-16', '04:23:01', '2024-09-16', '13:01:54', 'Indira Gandhi International Airport', 'Instanbul Airport', 51, 3865.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(83, '2025-03-10', '15:42:55', '2024-11-15', '22:34:36', 'Indira Gandhi International Airport', 'Instanbul Airport', 96, 5399.00, 'Business', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(84, '2024-08-03', '13:10:52', '2025-02-22', '14:58:40', 'Indira Gandhi International Airport', 'Instanbul Airport', 60, 5072.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(85, '2025-02-20', '04:27:24', '2024-09-03', '08:30:18', 'Indira Gandhi International Airport', 'Instanbul Airport', 66, 809.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(86, '2024-08-08', '13:23:09', '2025-02-22', '14:23:50', 'Indira Gandhi International Airport', 'Instanbul Airport', 49, 2391.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(87, '2025-03-02', '12:07:29', '2025-03-10', '23:23:43', 'Indira Gandhi International Airport', 'Instanbul Airport', 26, 5372.00, 'Business', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(88, '2025-03-10', '17:29:01', '2025-03-28', '13:16:00', 'Indira Gandhi International Airport', 'Instanbul Airport', 92, 5232.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(89, '2024-05-23', '02:13:00', '2024-06-13', '12:16:48', 'Indira Gandhi International Airport', 'Instanbul Airport', 17, 4952.00, 'Business', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(90, '2024-06-24', '14:55:19', '2024-10-31', '20:18:03', 'Indira Gandhi International Airport', 'Instanbul Airport', 64, 2879.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(91, '2024-08-07', '15:02:37', '2024-07-02', '03:51:40', 'Indira Gandhi International Airport', 'Instanbul Airport', 26, 2576.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(92, '2024-05-06', '10:19:21', '2025-04-13', '15:59:53', 'Indira Gandhi International Airport', 'Instanbul Airport', 42, 4471.00, 'Economy', 'Qatar Airways', 37, 33, 'bimanbangladesh@gmail.com'),
(93, '2024-06-10', '00:26:00', '2024-12-07', '03:46:54', 'Indira Gandhi International Airport', 'Instanbul Airport', 87, 4657.00, 'Economy', 'Qatar Airways', 37, 33, 'Qatarairways@gmail.com'),
(94, '2024-12-31', '21:12:43', '2024-08-03', '19:54:06', 'Indira Gandhi International Airport', 'Instanbul Airport', 33, 4505.00, 'Business', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(95, '2024-09-03', '04:20:14', '2025-01-17', '05:42:25', 'Indira Gandhi International Airport', 'Instanbul Airport', 92, 4957.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(96, '2024-07-16', '11:07:20', '2024-11-11', '11:15:07', 'Indira Gandhi International Airport', 'Instanbul Airport', 66, 4184.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com'),
(97, '2024-08-30', '00:25:21', '2025-04-07', '19:28:20', 'Indira Gandhi International Airport', 'Instanbul Airport', 22, 1785.00, 'Economy', 'Biman Bangladesh', 37, 33, 'Qatarairways@gmail.com'),
(98, '2024-11-05', '12:48:07', '2024-04-18', '10:04:30', 'Indira Gandhi International Airport', 'Instanbul Airport', 17, 1377.00, 'Economy', 'Biman Bangladesh', 37, 33, 'bimanbangladesh@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `airline_name` (`airline_name`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `customer_email` (`customer_email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_airport_id` (`dep_airport_id`),
  ADD KEY `arr_airport_id` (`arr_airport_id`),
  ADD KEY `airline_email` (`airline_email`),
  ADD KEY `airline_name` (`airline_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`customer_email`) REFERENCES `customer` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`dep_airport_id`) REFERENCES `airport` (`airport_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`arr_airport_id`) REFERENCES `airport` (`airport_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`airline_email`) REFERENCES `airline` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
