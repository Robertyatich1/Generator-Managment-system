-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 07:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `site` varchar(100) NOT NULL,
  `technician_contact` varchar(20) NOT NULL,
  `company_contact` varchar(20) DEFAULT NULL,
  `technician_email` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `netline_technician_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `company_name`, `site`, `technician_contact`, `company_contact`, `technician_email`, `company_email`, `netline_technician_name`) VALUES
(1, 'KPMG', 'Westy', '07426342662', '', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(2, 'KPMG', 'Westy', '07426342662', '', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(3, 'KPMG', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(4, 'KPMG', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(5, 'Netline', 'Ngong road', '07426342662', '', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'John Doe'),
(6, 'KPMG', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(7, 'Coptic', 'Ngong road', '07426342662', '072563748', 'robertyatich1@gmail.com', 'IVYKIPYEGON84@GMAIL.COM', 'John Doe'),
(8, 'Nairobi Hosp', 'Ngong road', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(9, 'KMTC', 'Nairobi', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(10, 'Windmil', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'John Doe'),
(11, 'Windmil', 'Limuru', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(12, 'Windmil', 'Ngong road', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(13, 'KPMG', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar'),
(14, 'KPMG', 'Westy', '07426342662', '9326745', 'IVYKIPYEGON84@GMAIL.COM', 'IVYKIPYEGON84@GMAIL.COM', 'Rahul Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `engineinformation`
--

CREATE TABLE `engineinformation` (
  `ID` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `Brand` varchar(100) NOT NULL,
  `SizeKw` varchar(50) NOT NULL,
  `ModelNumber` varchar(100) NOT NULL,
  `SerialNumber` varchar(100) NOT NULL,
  `EngineMake` varchar(100) NOT NULL,
  `EngineModelNumber` varchar(100) NOT NULL,
  `EngineSerialNumber` varchar(100) NOT NULL,
  `FuelType` varchar(50) NOT NULL,
  `BatterySize` varchar(100) NOT NULL,
  `BatteryQuantity` int(11) NOT NULL,
  `StartingSystem` varchar(100) NOT NULL,
  `AirFilterNumber` varchar(100) NOT NULL,
  `AirFilterBrand` varchar(100) NOT NULL,
  `AirFilterQuantity` int(11) NOT NULL,
  `FuelFilterNumber` varchar(100) NOT NULL,
  `FuelFilterBrand` varchar(100) NOT NULL,
  `FuelFilterQuantity` int(11) NOT NULL,
  `OilFilterNumber` varchar(100) NOT NULL,
  `OilFilterBrand` varchar(100) NOT NULL,
  `OilFilterQuantity` int(11) NOT NULL,
  `WaterFilterNumber` varchar(100) NOT NULL,
  `WaterFilterBrand` varchar(100) NOT NULL,
  `WaterFilterQuantity` int(11) NOT NULL,
  `LastOilChange` date NOT NULL,
  `OilCapacity` varchar(100) NOT NULL,
  `CoolantCapacity` varchar(100) NOT NULL,
  `FuelTankCapacity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `engineinformation`
--

INSERT INTO `engineinformation` (`ID`, `client_id`, `Brand`, `SizeKw`, `ModelNumber`, `SerialNumber`, `EngineMake`, `EngineModelNumber`, `EngineSerialNumber`, `FuelType`, `BatterySize`, `BatteryQuantity`, `StartingSystem`, `AirFilterNumber`, `AirFilterBrand`, `AirFilterQuantity`, `FuelFilterNumber`, `FuelFilterBrand`, `FuelFilterQuantity`, `OilFilterNumber`, `OilFilterBrand`, `OilFilterQuantity`, `WaterFilterNumber`, `WaterFilterBrand`, `WaterFilterQuantity`, `LastOilChange`, `OilCapacity`, `CoolantCapacity`, `FuelTankCapacity`) VALUES
(1, NULL, 'Hino', '250', 'adsad3233', '22', 'das', 'dfsdfs', '2143rwedfd', 'diesel', '12', 1, 'electirc', '12', 'fdfd', 2, '12', 'dsdasd', 4, '123', 'sdsdf', 2, '12', 'dsds', 2, '2024-06-01', '20', '200', '20'),
(2, NULL, 'Hino', '250', 'adsad3233', '22', 'das', 'dfsdfs', '2143rwedfd', 'diesel', '12', 2, 'electirc', '12', 'fdfd', 3, '12', 'dsdasd', 2, '123', 'sdsdf', 3, '12', 'dsds', 3, '2024-06-01', '20', '200', '20'),
(3, NULL, 'Hino', '250', 'adsad3233', '22', 'das', 'dfsdfs', '2143rwedfd', 'diesel', '12', 1, 'electirc', '12', 'fdfd', 1, '12', 'dsdasd', 1, '123', 'sdsdf', 2, '12', 'dsds', 11, '2024-06-01', '20', '200', '20'),
(4, NULL, 'Gemn', '250', 'adsad3233', '22', 'das', 'dfsdfs', '2143rwedfd', 'diesel', '12', 2, 'electirc', '12', 'fdfd', 12, '12', 'dsdasd', 2, '123', 'sdsdf', 2, '12', 'dsds', 2, '2024-06-14', '20', '200', '20'),
(5, NULL, 'Hino', '10', 'adsad3233', '22', 'das', 'dfsdfs', '2143rwedfd', 'petrol', '12', 2, 'electirc', '12', 'fdfd', 2, '12', 'dsdasd', 2, '123', 'sdsdf', 2, '12', 'dsds', 11, '2024-06-01', '20', '200', '20');

-- --------------------------------------------------------

--
-- Table structure for table `field_service_reports`
--

CREATE TABLE `field_service_reports` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `job_number` varchar(50) DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `engine_model` varchar(100) DEFAULT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `running_hours` varchar(50) DEFAULT NULL,
  `service_intervals` varchar(100) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `engine_checks` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `root_cause` text DEFAULT NULL,
  `actions_taken` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `client_signature` text DEFAULT NULL,
  `technician_signature` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `field_service_reports`
--

INSERT INTO `field_service_reports` (`id`, `client_id`, `job_number`, `service_date`, `engine_model`, `serial_number`, `running_hours`, `service_intervals`, `service_type`, `engine_checks`, `diagnosis`, `root_cause`, `actions_taken`, `comments`, `client_signature`, `technician_signature`, `created_at`) VALUES
(1, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:11:11'),
(2, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:11:39'),
(3, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:12:20'),
(4, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:15:56'),
(5, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:19:45'),
(6, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:36:55'),
(7, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:38:37'),
(8, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:39:44'),
(9, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:41:21'),
(10, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:43:11'),
(11, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 12:44:09'),
(12, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:06:37'),
(13, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:07:13'),
(14, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:08:18'),
(15, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:09:26'),
(16, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:10:31'),
(17, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:10:56'),
(18, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:11:15'),
(19, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:12:09'),
(20, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:12:33'),
(21, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:17:24'),
(22, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:19:02'),
(23, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:22:23'),
(24, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:22:49'),
(25, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:23:10'),
(26, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:24:35'),
(27, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:26:27'),
(28, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:28:12'),
(29, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:28:45'),
(30, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:29:08'),
(31, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:30:16'),
(32, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:30:32'),
(33, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:33:46'),
(34, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:34:38'),
(35, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:35:25'),
(36, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:36:35'),
(37, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:37:15'),
(38, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:37:31'),
(39, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:42:21'),
(40, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:43:13'),
(41, 0, 'JOB-666ACE3E67A73', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-13 13:52:49'),
(42, 1, 'JOB-666AF9B178D17', '0000-00-00', 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Oil Level OK, Oil Level Not OK, Leakages OK, Leakages Not OK', 'sfsdfs', 'dsdfsdfdsa', '', 'asdasda', '', '', '2024-06-13 13:53:51'),
(43, 1, 'JOB-666AF9B178D17', '0000-00-00', 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Oil Level OK, Oil Level Not OK, Leakages OK, Leakages Not OK', 'sfsdfs', 'dsdfsdfdsa', '', 'asdasda', '', '', '2024-06-13 13:56:38'),
(44, 1, 'JOB-666AF9B178D17', '0000-00-00', 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Oil Level OK, Oil Level Not OK, Leakages OK, Leakages Not OK', 'sfsdfs', 'dsdfsdfdsa', '', 'asdasda', '', '', '2024-06-13 13:58:27'),
(45, 1, 'JOB-666B30A0C1C10', NULL, 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Yes', 'ddsadsa', 'adsda', 'dasfdasf', 'asdfsfc', '', '', '2024-06-13 17:47:51'),
(46, 1, 'JOB-666B30A0C1C10', NULL, 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Yes', 'ddsadsa', 'adsda', 'dasfdasf', 'asdfsfc', '', '', '2024-06-13 18:04:06'),
(47, 1, 'JOB-666B30A0C1C10', NULL, 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Yes', 'ddsadsa', 'adsda', 'dasfdasf', 'asdfsfc', '', '', '2024-06-13 18:05:32'),
(48, 1, 'JOB-666B30A0C1C10', NULL, 'dfsdfs', '5324252h', '4', '3', 'Oil Change', 'Yes', 'ddsadsa', 'adsda', 'dasfdasf', 'asdfsfc', '', '', '2024-06-13 18:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `generator`
--

CREATE TABLE `generator` (
  `id` int(11) NOT NULL,
  `generator_name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `installation_date` date NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` enum('operational','under_maintenance','decommissioned') NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_technician_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generators`
--

CREATE TABLE `generators` (
  `id` int(11) NOT NULL,
  `generator_name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `installation_date` date NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` enum('operational','under_maintenance','decommissioned') NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_technician_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generators`
--

INSERT INTO `generators` (`id`, `generator_name`, `manufacturer`, `model`, `installation_date`, `capacity`, `location`, `status`, `company_name`, `address`, `contact`, `email`, `company_technician_name`) VALUES
(1, '', 'Lent', 'F686', '2024-06-05', 29, 'Westlands', 'operational', 'KPMG', '43', '0742827900', 'IVYKIPYEGON84@GMAIL.COM', 'rahulj23@gmail.com'),
(2, '', 'Lent', 'F686', '2024-05-31', 20, 'Westlands', 'operational', 'KPMG', '43', '0742827900', 'IVYKIPYEGON84@GMAIL.COM', 'rahulj23@gmail.com'),
(3, '', 'Lent1', 'F686', '2024-06-01', 20, 'Westlands', 'decommissioned', 'KPMG', '43', '0742827900', 'IVYKIPYEGON84@GMAIL.COM', 'johndoe12@gamil.com'),
(4, '', 'Hino', 'F56', '2024-06-06', 20, 'Westlands', 'operational', 'KPMG', '43', '0742827900', 'IVYKIPYEGON84@GMAIL.COM', 'johndoe12@gamil.com'),
(5, '', 'Lent', 'F686', '2024-05-31', 20, 'Westlands', 'operational', 'KPMG', '43', '0742827900', 'IVYKIPYEGON84@GMAIL.COM', 'rahulj23@gmail.com'),
(6, '', 'King', 'GNT123', '2024-06-01', 20, 'Kinoo', 'operational', 'Windmil', '44', '0742827900', 'robertyatich1@gmail.com', 'John Doe'),
(7, '', 'Lent', 'F686', '2024-06-01', 250, 'Westlands', 'operational', 'KPMG', 'AIC USWET Eldama Ravine', '0742827900', 'robertyatich1@gmail.com', 'Rahul Kumar');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_comments`
--

CREATE TABLE `maintenance_comments` (
  `id` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_comments`
--

INSERT INTO `maintenance_comments` (`id`, `generator_id`, `comment`, `date`) VALUES
(1, 3, 'Filter changed', '2024-06-11 19:19:09'),
(2, 4, 'dsfgsdhf', '2024-06-11 21:00:00'),
(3, 4, 'dsfgsdhf', '2024-06-11 21:00:00'),
(4, 6, 'Oil changed,fuel filter', '2024-06-11 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_schedule`
--

CREATE TABLE `maintenance_schedule` (
  `id` int(11) NOT NULL,
  `generator_id` int(11) DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_schedule`
--

INSERT INTO `maintenance_schedule` (`id`, `generator_id`, `maintenance_date`, `status`, `notes`) VALUES
(1, 3, '2024-06-29', 'Approved', NULL),
(2, 3, '2024-06-15', 'Approved', NULL),
(3, 4, '2024-06-29', 'Approved', NULL),
(4, 4, '2024-06-29', 'Pending', NULL),
(5, 4, '2024-06-29', 'Pending', NULL),
(6, 1, '0000-00-00', 'Pending', NULL),
(7, 4, '2024-06-15', 'Pending', NULL),
(8, 6, '2024-06-20', 'Pending', NULL),
(9, 7, '2024-06-30', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `part_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `part_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `report_id`, `part_name`, `quantity`, `part_number`) VALUES
(1, 1, 'Oil Filters', 2, 'sdsd'),
(2, 1, 'Fuel Filters', 2, 'dwdas'),
(3, 1, 'Air Filters', 2, 'dasds'),
(4, 1, 'Water Filters', 2, 'dds'),
(5, 1, 'Spark Plugs', 2, 'dasdsa'),
(6, 1, 'Battery', 2, 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `parts_used`
--

CREATE TABLE `parts_used` (
  `id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `part_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `part_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts_used`
--

INSERT INTO `parts_used` (`id`, `report_id`, `part_name`, `quantity`, `part_number`) VALUES
(1, 42, 'dsd', 2, '2'),
(2, 43, 'dsd', 2, '2'),
(3, 44, 'dsd', 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `job_number` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL,
  `engine_model` varchar(100) DEFAULT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `risk_assessment` text DEFAULT NULL,
  `services_requested` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `job_successful` varchar(10) DEFAULT NULL,
  `environment_clean` varchar(10) DEFAULT NULL,
  `responsibility_parts` text DEFAULT NULL,
  `client_signature` text DEFAULT NULL,
  `technician_signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `client_id`, `job_number`, `date_time`, `engine_model`, `serial_number`, `risk_assessment`, `services_requested`, `diagnosis`, `job_successful`, `environment_clean`, `responsibility_parts`, `client_signature`, `technician_signature`) VALUES
(1, 1, 'JOB-666DA1729D4A4', '2024-06-15 16:13:06', 'dfsdfs', '5324252h', 'yes', 'Routine Maintenance', 'hgdhsfdjfsdfs', 'yes', 'yes', 'customer', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAABAFJREFUeF7t3U2oDWEcx/HvzYKdRJQNRSmSBVmhrFAskZcNKy8LK2GFFVnJAhtsvIQl8rKUkmKHKAuyEJG1hZiHmbqNe65znpnznDsz31O3exfznGf+n+fp/Jq553lmDF8KKKCAAgpECIxFtLGJAgoooIACGCBOAgUUUECBKAEDJIrNRgoooIACBohzQAEFFFAgSsAAiWKzkQIKKKCAAeIcUEABBRSIEjBAothspIACCihggLR/DvzKS3Ss2z/WVqhAUgE/VJJyJ+1sLvC51OMG4FHSs7AzBRRorYAB0tqh5SawDTiZlXgCKK5E9gJX2lu2lSmgQCoBAySVdNp+jgKnsgB5DawHvgAhOC4BD4GNaU/H3hRQoI0CBkj7RnUh8A6YBmwB7o4rsbgKmZeHSvuqtyIFFEgmYIAko07W0VVgF3AtC5LdpV7DrazjwDngULIzsiMFFGilgAHSrmHdDNwBfgKLgfel8sI/1t8As4Bl+S2udglYjQIKJBMwQJJRD72j6cAzYAVwDDjdo8frwI7sG1r7gYtDPys7UECB1goYIO0Z2lvAVuAeEK5Eer32AReAG8DO9pRvJQookFrAAEktPpz+zgCHga/AmuwK4+0k3SzNguYV8AmYP5zT8V0VUKALAgZI80c53Io6n5exCXjQR0mPgbX5V3tdE9IHmIcooMC/AgZIs2dFWM9xPy/hQH5rqp+KijUhL4Hl/TTwGAUUUKAsYIA0d04sAZ4Ac4BwC+vIgKWE8AjfxHJl+oBwHq6AAn8FDJDmzoSz+VqO2/mWJYNWsge4nC02fJEtNlw1aGOPV0ABBQyQZs6B8Rslzsi+tvsjsozn2bqRlV6FROrZTIGOCxggzZwAxYryYqPE2CrcHytWznYKKOAtrIbOgTr3tPJ5IQ2dBJ62AqMW8Apk1CMQ13+dH/p1vldcNbZSQIFGChggzRu2um87GSDNmwOesQJTQsAAiR+G4oO3/A7fgY/5RoZhM8MPpb+/xXf5p2VYKBieLFjn129DLc6FigNjcwW6JuCHRvyI9wqQ/71jCJWnQFgNHn7CQ58GeXnFMIiWxyqgwNAEDJD6aWdnj4xdAIQHO4Wf4u/i98weXYYnBYYNEcPajF6vum9f1V+976iAAp0RMEDSD3XYzHBd/rMaWFQ6hbCwL+xtNVGQ+Fzz9ONljwoo0EPAAJk6UyOsDD+YL+yb7KzC/lfhasWXAgooMFIBA2Sk/BN2HoJke/6P8vIBjtfUGy/PSIHOCviB1Nmht3AFFFCgmoABUs3P1goooEBnBQyQzg69hSuggALVBAyQan62VkABBTorYIB0dugtXAEFFKgmYIBU87O1Agoo0FkBA6SzQ2/hCiigQDWB32E3ZSnD1MdIAAAAAElFTkSuQmCC', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAABBRJREFUeF7t3T2vDFEcx/HvfRMUNKKi0CAkGiQeEhoKGgo6KpXHAoWnTiUaFDQkaESIBJUQFBQ0SiS8CeYkc5K5e3d3Zs48mF3f7WTOOffcz3+yv3v2nFkL+FJAAQUUUCBBYCGhj10UUEABBRTAAPEmUEABBRRIEjBAktjspIACCihggHgPKKCAAgokCRggSWx2UkABBRQwQLwHFFBAAQWSBAyQJDY7KaCAAgoYIN4DCiiggAJJAgZINbY/ebPnwAPgdrVutlJAAQXmV8AAKa9tDI9iy91ACBNfCiigwH8rYICUlz4GSLA6Ulh9XARuAL/Lh7CFAgooMH8CBsj0mh4FbuWrjbDqiK8YKveAw/N3W/gbKaCAAuUCBsh0o7fAJiAEyZ1C02XAG2D1mGvl6rZQQAEF5kDAAJlcxD3AE+BrtnG+dkyzuDr5CRwCXs3B/eCvoIACClQWMEAmU90HDgDngMsTml0DTubXrgJnKsu31zCsho4D58Evx2yP1ZEUUKBMwAAZL7QC+J5fWgn8mAIZguNUfv0mcKwMvcXru4BnhfGsZ4u4DqWAAtMFfMMZ73MWuJQ/83Gwwk20Ld9sXwX0tRKJH6GF6XkirEKRbKKAAu0KGCDjPb8Aa4CwD/K0InkIkZd52+0d74m4iV+xKDZTQIHuBAyQpbbxL/t32cdDm2vSXwFOA5+yU1o7O3pGJIRH2NzfCHiMuGaBbK6AAu0JGCBLLT8A6xscz30I7M9WL++BvS2HSAiPsLm/taPx27uzHEkBBeZewABZXOK4+viY/ZW/IbH6xRVCmyESPiK7DqzLAuR1drw47M34FHxikeymgALNBQyQxYbhRFM42TT64GBd6WKIPM5XJHXHKLYvnvR6lJ/0MjyaiNpXAQUaCxggSwlDgLTxRYkhRF7kK4bwvEjYG6n7CmOEo8H78o59nfCqO0/bK6DAfyhggHRb9KYns+J3bn0GTnR8sqtbCUdXQIG5EzBAui9pPJkVQmDHhH2L4tPkozPyGY/ua+RPUECBBAEDJAEtoUvZyawL+VeRjA5tfRKw7aKAAv0I+AbVj3NxUz2sKEJgxFe49iv/x3JPVvVTEH+KAgo0FzBAmhtWHaEYFEX3u/m3+Y4GS9VxbaeAAgr8EwEDpF/2uCkeVxrxuZNv2YmtLa4++i2GP00BBZoJGCDN/Or2jnsdcbURA6Xpcyd152F7BRRQoLGAAdKYsNYAxY+xYsfwX+W28dxJrYnYWAEFFGgqYIA0FUzrH1ce+qf52UsBBQYg4BvYAIrgFBRQQIFZFDBAZrFqzlkBBRQYgIABMoAiOAUFFFBgFgUMkFmsmnNWQAEFBiBggAygCE5BAQUUmEUBA2QWq+acFVBAgQEIGCADKIJTUEABBWZR4C8jKXIpn/1TlQAAAABJRU5ErkJggg=='),
(2, 1, 'JOB-666DA1729D4A4', '2024-06-15 16:13:06', 'dfsdfs', '5324252h', 'yes', 'Routine Maintenance', 'hgdhsfdjfsdfs', 'yes', 'yes', 'customer', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAABAFJREFUeF7t3U2oDWEcx/HvzYKdRJQNRSmSBVmhrFAskZcNKy8LK2GFFVnJAhtsvIQl8rKUkmKHKAuyEJG1hZiHmbqNe65znpnznDsz31O3exfznGf+n+fp/Jq553lmDF8KKKCAAgpECIxFtLGJAgoooIACGCBOAgUUUECBKAEDJIrNRgoooIACBohzQAEFFFAgSsAAiWKzkQIKKKCAAeIcUEABBRSIEjBAothspIACCihggLR/DvzKS3Ss2z/WVqhAUgE/VJJyJ+1sLvC51OMG4FHSs7AzBRRorYAB0tqh5SawDTiZlXgCKK5E9gJX2lu2lSmgQCoBAySVdNp+jgKnsgB5DawHvgAhOC4BD4GNaU/H3hRQoI0CBkj7RnUh8A6YBmwB7o4rsbgKmZeHSvuqtyIFFEgmYIAko07W0VVgF3AtC5LdpV7DrazjwDngULIzsiMFFGilgAHSrmHdDNwBfgKLgfel8sI/1t8As4Bl+S2udglYjQIKJBMwQJJRD72j6cAzYAVwDDjdo8frwI7sG1r7gYtDPys7UECB1goYIO0Z2lvAVuAeEK5Eer32AReAG8DO9pRvJQookFrAAEktPpz+zgCHga/AmuwK4+0k3SzNguYV8AmYP5zT8V0VUKALAgZI80c53Io6n5exCXjQR0mPgbX5V3tdE9IHmIcooMC/AgZIs2dFWM9xPy/hQH5rqp+KijUhL4Hl/TTwGAUUUKAsYIA0d04sAZ4Ac4BwC+vIgKWE8AjfxHJl+oBwHq6AAn8FDJDmzoSz+VqO2/mWJYNWsge4nC02fJEtNlw1aGOPV0ABBQyQZs6B8Rslzsi+tvsjsozn2bqRlV6FROrZTIGOCxggzZwAxYryYqPE2CrcHytWznYKKOAtrIbOgTr3tPJ5IQ2dBJ62AqMW8Apk1CMQ13+dH/p1vldcNbZSQIFGChggzRu2um87GSDNmwOesQJTQsAAiR+G4oO3/A7fgY/5RoZhM8MPpb+/xXf5p2VYKBieLFjn129DLc6FigNjcwW6JuCHRvyI9wqQ/71jCJWnQFgNHn7CQ58GeXnFMIiWxyqgwNAEDJD6aWdnj4xdAIQHO4Wf4u/i98weXYYnBYYNEcPajF6vum9f1V+976iAAp0RMEDSD3XYzHBd/rMaWFQ6hbCwL+xtNVGQ+Fzz9ONljwoo0EPAAJk6UyOsDD+YL+yb7KzC/lfhasWXAgooMFIBA2Sk/BN2HoJke/6P8vIBjtfUGy/PSIHOCviB1Nmht3AFFFCgmoABUs3P1goooEBnBQyQzg69hSuggALVBAyQan62VkABBTorYIB0dugtXAEFFKgmYIBU87O1Agoo0FkBA6SzQ2/hCiigQDWB32E3ZSnD1MdIAAAAAElFTkSuQmCC', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAABBRJREFUeF7t3T2vDFEcx/HvfRMUNKKi0CAkGiQeEhoKGgo6KpXHAoWnTiUaFDQkaESIBJUQFBQ0SiS8CeYkc5K5e3d3Zs48mF3f7WTOOffcz3+yv3v2nFkL+FJAAQUUUCBBYCGhj10UUEABBRTAAPEmUEABBRRIEjBAktjspIACCihggHgPKKCAAgokCRggSWx2UkABBRQwQLwHFFBAAQWSBAyQJDY7KaCAAgoYIN4DCiiggAJJAgZINbY/ebPnwAPgdrVutlJAAQXmV8AAKa9tDI9iy91ACBNfCiigwH8rYICUlz4GSLA6Ulh9XARuAL/Lh7CFAgooMH8CBsj0mh4FbuWrjbDqiK8YKveAw/N3W/gbKaCAAuUCBsh0o7fAJiAEyZ1C02XAG2D1mGvl6rZQQAEF5kDAAJlcxD3AE+BrtnG+dkyzuDr5CRwCXs3B/eCvoIACClQWMEAmU90HDgDngMsTml0DTubXrgJnKsu31zCsho4D58Evx2yP1ZEUUKBMwAAZL7QC+J5fWgn8mAIZguNUfv0mcKwMvcXru4BnhfGsZ4u4DqWAAtMFfMMZ73MWuJQ/83Gwwk20Ld9sXwX0tRKJH6GF6XkirEKRbKKAAu0KGCDjPb8Aa4CwD/K0InkIkZd52+0d74m4iV+xKDZTQIHuBAyQpbbxL/t32cdDm2vSXwFOA5+yU1o7O3pGJIRH2NzfCHiMuGaBbK6AAu0JGCBLLT8A6xscz30I7M9WL++BvS2HSAiPsLm/taPx27uzHEkBBeZewABZXOK4+viY/ZW/IbH6xRVCmyESPiK7DqzLAuR1drw47M34FHxikeymgALNBQyQxYbhRFM42TT64GBd6WKIPM5XJHXHKLYvnvR6lJ/0MjyaiNpXAQUaCxggSwlDgLTxRYkhRF7kK4bwvEjYG6n7CmOEo8H78o59nfCqO0/bK6DAfyhggHRb9KYns+J3bn0GTnR8sqtbCUdXQIG5EzBAui9pPJkVQmDHhH2L4tPkozPyGY/ua+RPUECBBAEDJAEtoUvZyawL+VeRjA5tfRKw7aKAAv0I+AbVj3NxUz2sKEJgxFe49iv/x3JPVvVTEH+KAgo0FzBAmhtWHaEYFEX3u/m3+Y4GS9VxbaeAAgr8EwEDpF/2uCkeVxrxuZNv2YmtLa4++i2GP00BBZoJGCDN/Or2jnsdcbURA6Xpcyd152F7BRRQoLGAAdKYsNYAxY+xYsfwX+W28dxJrYnYWAEFFGgqYIA0FUzrH1ce+qf52UsBBQYg4BvYAIrgFBRQQIFZFDBAZrFqzlkBBRQYgIABMoAiOAUFFFBgFgUMkFmsmnNWQAEFBiBggAygCE5BAQUUmEUBA2QWq+acFVBAgQEIGCADKIJTUEABBWZR4C8jKXIpn/1TlQAAAABJRU5ErkJggg==');

-- --------------------------------------------------------

--
-- Table structure for table `service_report`
--

CREATE TABLE `service_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `job_number` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `engine_model` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `risk_assessment` varchar(255) NOT NULL,
  `services_requested` text NOT NULL,
  `diagnosis` text NOT NULL,
  `job_successful` varchar(10) NOT NULL,
  `environment_clean` varchar(10) NOT NULL,
  `responsibility_parts` varchar(255) NOT NULL,
  `client_signature` text NOT NULL,
  `technician_signature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_report`
--

INSERT INTO `service_report` (`id`, `client_id`, `job_number`, `date_time`, `company_name`, `site`, `engine_model`, `serial_number`, `risk_assessment`, `services_requested`, `diagnosis`, `job_successful`, `environment_clean`, `responsibility_parts`, `client_signature`, `technician_signature`) VALUES
(1, 1, 'JOB-66841D1DE737E', '2024-07-02 17:30:37', 'KPMG', 'Westy', 'dfsdfs', '5324252h', 'yes', 'Routine Maintenance', 'sajdfghasdfghasfd', 'yes', 'yes', 'netline', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAAA6ZJREFUeF7t3D/ITX8cB/C3Rf0WZaF+BiVRBkoIGfwWk4HJYJKJxaLEYjUaTRaTBYOSzfALUcJAJIWJRVmUhfvl3J7T6T7qnufc+9x7z+vW7d7hnu+f1/fzPO/O99xz18SDAAECBAi0EFjT4hiHECBAgACBCBBFQIAAAQKtBARIKzYHESBAgIAAUQMECBAg0EpAgLRicxABAgQICBA1QIAAAQKtBARIKzYHESBAgIAAUQMECBAg0EpAgLRicxABAgQICBA1QIAAAQKtBARIKzYHESBAgIAAUQMECBAg0EpAgLRicxABAgQICJA/NfAzycckz5M8rZ5PknxVIgQIECAwWkCALAXIKKFXtTAZBotaIkCAAIHEr/HWqmBrkr3Vc1/1urZRJT+SlDOTYZiU13cqiQABAn0UcAby91VvBsqOER//VIXKwyTl+biPhWTOBAj0T0CAjLfm65MMz05KuOxJ8m+jie9VkAwDpbx+G68bnyZAgMDsCwiQla/R9iQHa89RZynPGqHyYeXdaoEAAQKrKyBAuvffWAuTA9X7pvP7RqC86H4YWiRAgMBkBQTIZH1L6+VCfP0MpbwvW2H1R/m6cH3Lq7wvF+w9CBAgMLMCAmR1lmZXI1S2NIZR7kupB8qjJJ9XZ6i/e92Q5OzgfpnLY4xBbY2B5aME5lHAH/lsrNrmRqDsHjGsck9KPVTeTGno/yW5mmTnGP2pqzGwfJTAvAr4Q5/NlVs3Ytvrn8ZQXye5l+R2kv8nNI0rSS5Ubd8anAWdGZyJfJlQX5olQGDOBATI/CzY/lqolPebakMvF+XvdBgmZcvqWpLjVR8lSC7OD5WREiAwDQEBMg3lyfRxqPoHfyxJ/RrKSsOkvmX1cvB7YOeSPJjMFLRKgMA8CwiQeV69pbEvFyZvBzc73h3jzMSW1WLUg1kQmIqAAJkK81Q7GYbJ0STbaj2XLanyLapR1zBsWU11iXRGYDEEBMhirONysxiGyckk5QbHshV1ohEipwb3nFxKUn5M0pbVYteD2RHoVECAdMo5s42VM4ybgwA53AiRI0nuV6O+keS8b1nN7BoaGIGZExAgM7ckExtQPUSanZxOcn1iPWuYAIGFFBAgC7msy05q1B3laqBfNWC2BDoT8M+jM0oNESBAoF8CAqRf6222BAgQ6ExAgHRGqSECBAj0S0CA9Gu9zZYAAQKdCQiQzig1RIAAgX4JCJB+rbfZEiBAoDMBAdIZpYYIECDQL4FfR3ZoKbNXzVIAAAAASUVORK5CYII=', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAAoCAYAAADQUaxgAAAAAXNSR0IArs4c6QAAAmRJREFUeF7t2DEuRFEUBuBfS6EgChsgSrVGgx2obcwC7IBGo1YKG1AIjYQWL5lJZGjeyZ0xcr9JboaZd86b+92T/MlbiRcBAgQIECgIrBRqlBAgQIAAgQgQQ0CAAAECJQEBUmJTRIAAAQICxAwQIECAQElAgJTYFBEgQICAADEDBAgQIFASECAlNkUECBAgIEDMAAECBAiUBARIiU0RAQIECAgQM0CAAAECJQEBUmJTRIAAAQICxAwQIECAQElAgJTYFBEgQICAADEDBAgQIFASECAlNkUECBAgIEDMAAECBAiUBARIiU0RAQIECAgQM0CAAAECJQEBUmJTRIAAAQICxAwQIECAQElAgJTYFDUUOEtymuSkYU+tCBBYgIAAWQByB7fYTrI3s3aSbI3Y+3GSqxHXu5QAgT8WECB/fABLfPv1JEeTdZBkd06/9fIreC6SnM+pv7YECMxJQID8hP2Yk3WLtu9JXibrOcmwhv9/e59+9jbixvvfQuNwRN1TkockdzPrcUQPlxIg8M8EBMj/CpBFj9f15LHS8GjpdtE3dz8CBJZbQIAs9/nM/rq1JBtJNidr+vfs+/D98NmwVkds8T7JTZLhsdIQGq8jal1KgEBnAgKkswO3XQIECLQSECCtJPUhQIBAZwICpLMDt10CBAi0EhAgrST1IUCAQGcCAqSzA7ddAgQItBIQIK0k9SFAgEBnAgKkswO3XQIECLQSECCtJPUhQIBAZwICpLMDt10CBAi0EhAgrST1IUCAQGcCAqSzA7ddAgQItBIQIK0k9SFAgEBnAgKkswO3XQIECLQS+ARWziQpGKIEcAAAAABJRU5ErkJggg==');

-- --------------------------------------------------------

--
-- Table structure for table `service_reports`
--

CREATE TABLE `service_reports` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `job_number` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `client_signature` text DEFAULT NULL,
  `technician_signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_reports`
--

INSERT INTO `service_reports` (`id`, `schedule_id`, `job_number`, `notes`, `client_signature`, `technician_signature`) VALUES
(1, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(2, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(3, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(4, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(5, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(6, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(7, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(8, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(9, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', ''),
(10, 1, 'JOB-666ACE3E67A73', 'bgdsgsdhghsd', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `report_id`, `task_name`, `task_status`) VALUES
(1, 1, 'clean_machine_done', 'Yes'),
(2, 1, 'clean_fluid_level_done', 'Yes'),
(3, 1, 'check_electrical_done', 'Yes'),
(4, 1, 'check_hoses_done', 'Yes'),
(5, 1, 'leakages_loose_connections_done', 'Yes'),
(6, 1, 'controller_history_done', 'Yes'),
(7, 1, 'radiator_cap_done', 'Yes'),
(8, 1, 'fuel_leakage_done', 'Yes'),
(9, 1, 'radiator_leakage_done', 'Yes'),
(10, 1, 'fuel_cap_done', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(1, 'Rahul', 'Kumar', 'rahulj23@gmail.com', 'Test@123', '1234563210', '2024-02-18 06:15:52'),
(2, 'John', 'Doe', 'johndoe12@gamil.com', 'Test@12345', '4563210236', '2024-02-19 06:35:03'),
(3, 'Robert', 'Kebut', 'robertyatich1@gmail.com', 'Robbie@254', '0742827900', '2024-06-09 17:14:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineinformation`
--
ALTER TABLE `engineinformation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `field_service_reports`
--
ALTER TABLE `field_service_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generator`
--
ALTER TABLE `generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generators`
--
ALTER TABLE `generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_comments`
--
ALTER TABLE `maintenance_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generator_id` (`generator_id`);

--
-- Indexes for table `maintenance_schedule`
--
ALTER TABLE `maintenance_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generator_id` (`generator_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `parts_used`
--
ALTER TABLE `parts_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `service_report`
--
ALTER TABLE `service_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `service_reports`
--
ALTER TABLE `service_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `engineinformation`
--
ALTER TABLE `engineinformation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `field_service_reports`
--
ALTER TABLE `field_service_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `generator`
--
ALTER TABLE `generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generators`
--
ALTER TABLE `generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `maintenance_comments`
--
ALTER TABLE `maintenance_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maintenance_schedule`
--
ALTER TABLE `maintenance_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parts_used`
--
ALTER TABLE `parts_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_report`
--
ALTER TABLE `service_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_reports`
--
ALTER TABLE `service_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `engineinformation`
--
ALTER TABLE `engineinformation`
  ADD CONSTRAINT `engineinformation_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `maintenance_comments`
--
ALTER TABLE `maintenance_comments`
  ADD CONSTRAINT `maintenance_comments_ibfk_1` FOREIGN KEY (`generator_id`) REFERENCES `generators` (`id`);

--
-- Constraints for table `maintenance_schedule`
--
ALTER TABLE `maintenance_schedule`
  ADD CONSTRAINT `maintenance_schedule_ibfk_1` FOREIGN KEY (`generator_id`) REFERENCES `generators` (`id`);

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
  ADD CONSTRAINT `parts_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `service_report` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `service_report`
--
ALTER TABLE `service_report`
  ADD CONSTRAINT `service_report_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `service_reports`
--
ALTER TABLE `service_reports`
  ADD CONSTRAINT `service_reports_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `maintenance_schedule` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `service_report` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
