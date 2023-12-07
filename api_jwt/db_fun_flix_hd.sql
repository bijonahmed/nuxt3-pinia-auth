-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 07:27 AM
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
-- Database: `db_fun_flix_hd`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_pay`
--

CREATE TABLE `annual_pay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_pay`
--

INSERT INTO `annual_pay` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Registered Nurse', 1, 1),
(2, 'Software Developer', 1, 1),
(3, 'Marketing Manager', 1, 1),
(4, 'Financial Analyst', 1, 1),
(5, 'Mechanical Engineer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `job_publish_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_address` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `candidate_num` varchar(255) DEFAULT NULL,
  `total_year_exp` varchar(255) DEFAULT NULL,
  `educa_qualifcation` text DEFAULT NULL,
  `skill_set` text DEFAULT NULL,
  `expeted_salary` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `job_publish_id`, `job_title`, `candidate_name`, `candidate_address`, `candidate_email`, `candidate_num`, `total_year_exp`, `educa_qualifcation`, `skill_set`, `expeted_salary`, `files`, `application_date`, `remarks`, `status`, `entry_by`, `created_at`) VALUES
(2, 2, 'Senior BI Engineer', 'Bijon', 'Dhaka', 'mdbijon@gmail.com', '01915728982', '7 Yrs 5 Months', 'MSC', 'Soft Dev.', '5000', '/backend/files/JnT9wFEZM8JeK1gLjq4X.doc', '2023-08-29', '', 8, 1, '2023-08-29 10:44:24'),
(3, 2, 'Senior BI Engineer', 'Kabir', 'Dhaka', 'kabir@gmail.com', '01915728983', '10 Yrs', 'MSC', 'TEST', '1050', '/backend/files/mURkiEiAo1NR9wFEJ2No.pdf', '2023-08-29', '', 2, 1, '2023-08-29 10:45:32'),
(4, 2, 'Senior BI Engineer', 'Jannat', 'DHK', 'jannat@gmail.com', '01915728984', '10 Yrs', 'TEST', 'Computer', '50000', '/backend/files/FHSfhhsLtpUDx5w1yGaX.doc', '2023-08-29', NULL, 8, NULL, '2023-08-29 10:46:47'),
(5, 1, 'Software Engineer', 'Kabir ahmed', 'DHK', 'karim@gmail.com', '01915728985', '10 Yrs', 'TEST', 'DK', '50000', '/backend/files/BEMMoAGUMb0lFvg49YPF.pdf', '2023-08-29', NULL, NULL, NULL, '2023-08-29 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_at`, `updated_at`, `entry_by`) VALUES
(1, 'size', 1, '2023-10-14 10:28:05', '2023-10-14 16:28:05', 1),
(2, 'color', 1, '2023-10-14 10:30:19', '2023-10-14 16:30:19', 1),
(3, 'capacity', 1, '2023-10-14 10:30:43', '2023-10-14 16:30:43', 1),
(4, 'sleeve length', 1, '2023-10-14 10:31:01', '2023-10-14 16:31:01', 1),
(5, 'neckline', 1, '2023-10-14 10:31:23', '2023-10-14 16:31:23', 1),
(6, 'closure type', 1, '2023-10-14 10:31:45', '2023-10-14 16:31:45', 1),
(7, 'material', 1, '2023-10-14 10:32:02', '2023-10-14 16:32:02', 1),
(8, 'brand', 1, '2023-10-14 10:32:29', '2023-10-14 16:32:29', 1),
(9, 'weight', 1, '2023-10-14 10:32:52', '2023-10-14 16:32:52', 1),
(10, 'gender', 1, '2023-10-14 10:33:05', '2023-10-14 16:33:05', 1),
(11, 'style', 1, '2023-10-14 10:33:25', '2023-10-14 16:33:25', 1),
(12, 'pattern', 1, '2023-10-14 10:33:42', '2023-10-14 16:33:42', 1),
(13, 'fit', 1, '2023-10-14 10:33:58', '2023-10-14 16:33:58', 1),
(14, 'type', 1, '2023-10-14 10:34:14', '2023-10-14 16:34:14', 1),
(15, 'occasion', 1, '2023-10-14 10:34:27', '2023-10-14 16:34:27', 1),
(16, 'season', 1, '2023-10-14 10:34:40', '2023-10-14 16:34:40', 1),
(17, 'features', 1, '2023-10-14 10:34:56', '2023-10-14 16:34:56', 1),
(18, 'compatibility', 1, '2023-10-14 10:35:12', '2023-10-14 16:35:12', 1),
(19, 'resolution', 1, '2023-10-14 10:35:43', '2023-10-14 16:35:43', 1),
(20, 'warranty', 1, '2023-10-14 10:35:58', '2023-10-14 16:35:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_values`
--

CREATE TABLE `attributes_values` (
  `id` int(11) NOT NULL,
  `attributes_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes_values`
--

INSERT INTO `attributes_values` (`id`, `attributes_id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(2, 1, 'M', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(3, 1, 'L', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(4, 1, 'XL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(5, 1, 'XXL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(6, 1, 'XXXL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(7, 1, '3XL', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(8, 1, '1', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(9, 1, '2', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(10, 1, '3', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(11, 1, '4', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(12, 1, '5', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(13, 1, '6', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(14, 1, '10', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(15, 1, '11', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(16, 1, '12', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(17, 1, '13', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(18, 1, '16', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(19, 1, '17', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(20, 1, '18', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(21, 1, '19', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(22, 1, '20', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(23, 1, '21', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(24, 1, '25', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(25, 1, '30', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(26, 1, '45', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(27, 1, '60', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(28, 1, '54', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(29, 1, '28', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(30, 1, '230', 1, 1, '2023-10-14 16:28:05', '2023-10-14 16:28:05'),
(31, 2, 'Green', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(32, 2, 'Blue', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(33, 2, 'Yellow', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(34, 2, 'Red', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(35, 2, 'Dark', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(36, 2, 'White', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(37, 2, 'Neviblue', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(38, 2, 'Darkness', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(39, 2, 'Whiteness', 1, 1, '2023-10-14 16:30:19', '2023-10-14 16:30:19'),
(40, 3, '1GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(41, 3, '2GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(42, 3, '3GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(43, 3, '5GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(44, 3, '6GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(45, 3, '7GB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(46, 3, '1TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(47, 3, '2TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(48, 3, '3TB', 1, 1, '2023-10-14 16:30:43', '2023-10-14 16:30:43'),
(49, 4, 'Short Sleeve', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(50, 4, 'Long Sleeve', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(51, 4, 'Sleeveless', 1, 1, '2023-10-14 16:31:01', '2023-10-14 16:31:01'),
(52, 5, 'Round Neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(53, 5, 'V-neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(54, 5, 'Scoop Neck', 1, 1, '2023-10-14 16:31:23', '2023-10-14 16:31:23'),
(55, 6, 'Zipper', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(56, 6, 'Button', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(57, 6, 'Velcro', 1, 1, '2023-10-14 16:31:45', '2023-10-14 16:31:45'),
(58, 7, 'Cotton', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(59, 7, 'Leather', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(60, 7, 'Metal', 1, 1, '2023-10-14 16:32:02', '2023-10-14 16:32:02'),
(61, 8, 'Nike', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(62, 8, 'Apple', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(63, 8, 'Sony', 1, 1, '2023-10-14 16:32:29', '2023-10-14 16:32:29'),
(64, 9, 'Light', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(65, 9, 'Medium', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(66, 9, 'Heavy', 1, 1, '2023-10-14 16:32:52', '2023-10-14 16:32:52'),
(67, 10, 'Male', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(68, 10, 'Female', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(69, 10, 'Unisex', 1, 1, '2023-10-14 16:33:05', '2023-10-14 16:33:05'),
(70, 11, 'Casual', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(71, 11, ' Formal', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(72, 11, ' Sporty', 1, 1, '2023-10-14 16:33:25', '2023-10-14 16:33:25'),
(73, 12, 'Striped', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(74, 12, 'Polka Dot', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(75, 12, 'Solid', 1, 1, '2023-10-14 16:33:42', '2023-10-14 16:33:42'),
(76, 13, 'Slim Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(77, 13, 'Loose Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(78, 13, 'Regular Fit', 1, 1, '2023-10-14 16:33:58', '2023-10-14 16:33:58'),
(79, 14, 'Shirt', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(80, 14, 'Pants', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(81, 14, 'Shoes', 1, 1, '2023-10-14 16:34:14', '2023-10-14 16:34:14'),
(82, 15, 'Party', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(83, 15, 'Wedding', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(84, 15, 'Casual', 1, 1, '2023-10-14 16:34:27', '2023-10-14 16:34:27'),
(85, 16, 'Spring', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(86, 16, 'Summer', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(87, 16, 'Fall', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(88, 16, 'Winter', 1, 1, '2023-10-14 16:34:40', '2023-10-14 16:34:40'),
(89, 17, 'Waterproof', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(90, 17, 'UV Protection', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(91, 17, 'Breathable', 1, 1, '2023-10-14 16:34:56', '2023-10-14 16:34:56'),
(92, 18, 'iOS', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(93, 18, 'Android', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(94, 18, 'Windows', 1, 1, '2023-10-14 16:35:12', '2023-10-14 16:35:12'),
(95, 3, '16GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(96, 3, '32GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(97, 3, '64GB', 1, 1, '2023-10-14 16:35:29', '2023-10-14 16:35:29'),
(98, 19, '720p', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(99, 19, '1080p', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(100, 19, '4K', 1, 1, '2023-10-14 16:35:43', '2023-10-14 16:35:43'),
(101, 20, '1 Year', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(102, 20, '2 Years', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(103, 20, 'Lifetime', 1, 1, '2023-10-14 16:35:58', '2023-10-14 16:35:58'),
(104, 2, 'Black', 1, 1, '2023-10-16 09:29:17', '2023-10-16 09:29:17'),
(105, 3, '128GB', 1, 1, '2023-10-16 09:30:41', '2023-10-25 15:31:10'),
(106, 3, '512GB', 1, 1, '2023-10-16 09:30:51', '2023-10-16 09:30:51'),
(107, 20, '6 Months', 1, 1, '2023-10-16 09:31:48', '2023-10-16 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'HSBC BANK', 1, 1),
(2, 'BARCLAYS BANK', 1, 1),
(3, 'SANTANDER BANK', 1, 1),
(4, 'HALIFAX BANK', 1, 1),
(5, 'NATWEST BANK', 1, 1),
(6, 'LLOYDS BANK', 1, 1),
(7, 'TSB BANK', 1, 1),
(8, 'TESCO BANK', 1, 1),
(9, 'CO-OPERATIVE BANK', 1, 1),
(10, 'BANK OF SCOTLAND', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_short_code`
--

CREATE TABLE `bank_short_code` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_short_code`
--

INSERT INTO `bank_short_code` (`id`, `bank_id`, `name`, `status`, `entry_by`) VALUES
(1, 9, '56854', 1, 1),
(2, 2, '11545', 1, 1),
(3, 2, '165586', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `sort_order`, `file`, `status`, `mobile_view_class`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Software', 'software', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-cloud-arrow-down', 1, NULL, NULL, '2023-11-12 13:21:59', '2023-11-12 13:21:59'),
(2, 'Games', 'games', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-gamepad', 1, NULL, NULL, '2023-11-12 13:22:20', '2023-11-12 13:22:20'),
(3, 'Movies', 'movies', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-video', 1, NULL, NULL, '2023-11-12 13:22:30', '2023-11-12 13:22:30'),
(4, 'Courses', 'courses', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-code', 1, NULL, NULL, '2023-11-12 13:22:49', '2023-11-12 13:22:49'),
(5, 'Adobe All Series', 'adobe-all-series', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:24:48', '2023-11-12 13:24:48'),
(6, 'Antivirus', 'antivirus', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:23', '2023-11-12 13:25:23'),
(7, 'Browsers', 'browsers', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:34', '2023-11-12 13:25:34'),
(8, 'Developers Tools', 'developers-tools', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:44', '2023-11-12 13:25:44'),
(9, 'Microsoft Office', 'microsoft-office', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:55', '2023-11-12 13:25:55'),
(10, 'Multimedia Software', 'multimedia-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:05', '2023-11-12 13:26:05'),
(11, 'OS', 'os', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:16', '2023-11-12 13:26:16'),
(12, 'Others Software', 'others-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:25', '2023-11-12 13:26:25'),
(13, 'Utility Software', 'utility-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:36', '2023-11-12 13:26:36'),
(14, 'Android Games', 'android-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:20', '2023-11-12 13:30:20'),
(15, 'Kids Games', 'kids-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:42', '2023-11-12 13:30:42'),
(16, 'Racing Games', 'racing-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:54', '2023-11-12 13:30:54'),
(17, 'Strategy Games', 'strategy-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:31:05', '2023-11-12 13:31:05'),
(18, '3D', '3d', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:39:14', '2023-11-12 13:39:14'),
(19, '4K', '4k', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:39:26', '2023-11-12 13:39:26'),
(20, 'Animated', 'animated', NULL, 'null', 'null', 'null', 3, 0, '', 1, 'null', 'null', '2023-11-12 13:39:35', '2023-11-12 13:39:55'),
(21, 'Anime', 'anime', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:12', '2023-11-12 13:40:12'),
(22, 'Bangla', 'bangla', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:23', '2023-11-12 13:40:23'),
(23, 'Chiness Movies', 'chiness-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:33', '2023-11-12 13:40:33'),
(24, 'Documentaries', 'documentaries', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:43', '2023-11-12 13:40:43'),
(25, 'Dual Audio', 'dual-audio', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:56', '2023-11-12 13:40:56'),
(26, 'Koriean Movies', 'koriean-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:12', '2023-11-12 13:41:12'),
(27, 'Others Foreign Moves', 'others-foreign-moves', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:30', '2023-11-12 13:41:30'),
(28, 'Pakstani Movies', 'pakstani-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:44', '2023-11-12 13:41:44'),
(29, 'Punjabi Movies', 'punjabi-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:56', '2023-11-12 13:41:56'),
(30, 'South India (Dubbed Hindi)', 'south-india-dubbed-hindi-', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:07', '2023-11-12 13:42:07'),
(31, 'South Indian Movies', 'south-indian-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:18', '2023-11-12 13:42:18'),
(32, 'English Movies', 'english-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:27', '2023-11-12 13:42:27'),
(33, 'Exclusive HD Movies', 'exclusive-hd-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:42', '2023-11-12 13:42:42'),
(34, 'Japanese Movies', 'japanese-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:52', '2023-11-12 13:42:52'),
(35, 'Hindin Movies', 'hindin-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:43:04', '2023-11-12 13:43:04'),
(36, 'Indonesian Movies', 'indonesian-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:43:13', '2023-11-12 13:43:13'),
(37, 'Udemy', 'udemy', NULL, NULL, NULL, NULL, 4, 0, '', 1, NULL, NULL, '2023-11-12 13:43:38', '2023-11-12 13:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `circumstances`
--

CREATE TABLE `circumstances` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circumstances`
--

INSERT INTO `circumstances` (`id`, `employe_id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 6, 7, 6, 'Mrs. Jan Ahmed', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Mrs.', 'Jan', 'Ahmed', 'sdfsdf', 'Widow', 10, 'FULL TIME', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:22:16', 1),
(2, 5, 3, 4, 'Mr. Bijon Ahmed', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'Mr.', 'Bijon', 'Ahmed', 'dsff1111', 'Single', 4, 'FULL TIME', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:38:09', 1),
(3, 3, 8, 4, 'Mrs. Raheem Ahmd', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'Mrs.', 'Raheem', 'Ahmd', '11122233445', 'Single', 9, 'LEFT', '0000-00-00', '0000-00-00', '0000-00-00', 'Test', 'Test', 'Test', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', '2023-08-23', '2023-08-31', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', '5', 'Pay Group', '4', 'null', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'Pay Group', '11', '10', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'No', 'Pay Group', 'Pay Group', '3', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'Pay Group', '5', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-16 14:13:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`) VALUES
(1, 'ABW', 'Aruba', 'AW'),
(2, 'AFG', 'Afghanistan', 'AF'),
(3, 'AGO', 'Angola', 'AO'),
(4, 'AIA', 'Anguilla', 'AI'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'AND', 'Andorra', 'AD'),
(8, 'ARE', 'United Arab Emirates', 'AE'),
(9, 'ARG', 'Argentina', 'AR'),
(10, 'ARM', 'Armenia', 'AM'),
(11, 'ASM', 'American Samoa', 'AS'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATF', 'French Southern Territories', 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'AG'),
(15, 'AUS', 'Australia', 'AU'),
(16, 'AUT', 'Austria', 'AT'),
(17, 'AZE', 'Azerbaijan', 'AZ'),
(18, 'BDI', 'Burundi', 'BI'),
(19, 'BEL', 'Belgium', 'BE'),
(20, 'BEN', 'Benin', 'BJ'),
(21, 'BES', 'Bonaire', 'BQ'),
(22, 'BFA', 'Burkina Faso', 'BF'),
(23, 'BGD', 'Bangladesh', 'BD'),
(24, 'BGR', 'Bulgaria', 'BG'),
(25, 'BHR', 'Bahrain', 'BH'),
(26, 'BHS', 'Bahamas', 'BS'),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(28, 'BLM', 'Saint Barthélemy', 'BL'),
(29, 'BLR', 'Belarus', 'BY'),
(30, 'BLZ', 'Belize', 'BZ'),
(31, 'BMU', 'Bermuda', 'BM'),
(32, 'BOL', 'Bolivia', 'BO'),
(33, 'BRA', 'Brazil', 'BR'),
(34, 'BRB', 'Barbados', 'BB'),
(35, 'BRN', 'Brunei', 'BN'),
(36, 'BTN', 'Bhutan', 'BT'),
(37, 'BVT', 'Bouvet Island', 'BV'),
(38, 'BWA', 'Botswana', 'BW'),
(39, 'CAF', 'Central African Republic', 'CF'),
(40, 'CAN', 'Canada', 'CA'),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(42, 'CHE', 'Switzerland', 'CH'),
(43, 'CHL', 'Chile', 'CL'),
(44, 'CHN', 'China', 'CN'),
(45, 'CIV', 'Ivory Coast', 'CI'),
(46, 'CMR', 'Cameroon', 'CM'),
(47, 'COD', 'Democratic Republic of the Congo', 'CD'),
(48, 'COG', 'Republic of the Congo', 'CG'),
(49, 'COK', 'Cook Islands', 'CK'),
(50, 'COL', 'Colombia', 'CO'),
(51, 'COM', 'Comoros', 'KM'),
(52, 'CPV', 'Cape Verde', 'CV'),
(53, 'CRI', 'Costa Rica', 'CR'),
(54, 'CUB', 'Cuba', 'CU'),
(55, 'CUW', 'Curacao', 'CW'),
(56, 'CXR', 'Christmas Island', 'CX'),
(57, 'CYM', 'Cayman Islands', 'KY'),
(58, 'CYP', 'Cyprus', 'CY'),
(59, 'CZE', 'Czech Republic', 'CZ'),
(60, 'DEU', 'Germany', 'DE'),
(61, 'DJI', 'Djibouti', 'DJ'),
(62, 'DMA', 'Dominica', 'DM'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DOM', 'Dominican Republic', 'DO'),
(65, 'DZA', 'Algeria', 'DZ'),
(66, 'ECU', 'Ecuador', 'EC'),
(67, 'EGY', 'Egypt', 'EG'),
(68, 'ERI', 'Eritrea', 'ER'),
(69, 'ESH', 'Western Sahara', 'EH'),
(70, 'ESP', 'Spain', 'ES'),
(71, 'EST', 'Estonia', 'EE'),
(72, 'ETH', 'Ethiopia', 'ET'),
(73, 'FIN', 'Finland', 'FI'),
(74, 'FJI', 'Fiji', 'FJ'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRA', 'France', 'FR'),
(77, 'FRO', 'Faroe Islands', 'FO'),
(78, 'FSM', 'Micronesia', 'FM'),
(79, 'GAB', 'Gabon', 'GA'),
(80, 'GBR', 'United Kingdom', 'GB'),
(81, 'GEO', 'Georgia', 'GE'),
(82, 'GGY', 'Guernsey', 'GG'),
(83, 'GHA', 'Ghana', 'GH'),
(84, 'GIB', 'Gibraltar', 'GI'),
(85, 'GIN', 'Guinea', 'GN'),
(86, 'GLP', 'Guadeloupe', 'GP'),
(87, 'GMB', 'Gambia', 'GM'),
(88, 'GNB', 'Guinea-Bissau', 'GW'),
(89, 'GNQ', 'Equatorial Guinea', 'GQ'),
(90, 'GRC', 'Greece', 'GR'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GRL', 'Greenland', 'GL'),
(93, 'GTM', 'Guatemala', 'GT'),
(94, 'GUF', 'French Guiana', 'GF'),
(95, 'GUM', 'Guam', 'GU'),
(96, 'GUY', 'Guyana', 'GY'),
(97, 'HKG', 'Hong Kong', 'HK'),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(99, 'HND', 'Honduras', 'HN'),
(100, 'HRV', 'Croatia', 'HR'),
(101, 'HTI', 'Haiti', 'HT'),
(102, 'HUN', 'Hungary', 'HU'),
(103, 'IDN', 'Indonesia', 'ID'),
(104, 'IMN', 'Isle of Man', 'IM'),
(105, 'IND', 'India', 'IN'),
(106, 'IOT', 'British Indian Ocean Territory', 'IO'),
(107, 'IRL', 'Ireland', 'IE'),
(108, 'IRN', 'Iran', 'IR'),
(109, 'IRQ', 'Iraq', 'IQ'),
(110, 'ISL', 'Iceland', 'IS'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'JAM', 'Jamaica', 'JM'),
(114, 'JEY', 'Jersey', 'JE'),
(115, 'JOR', 'Jordan', 'JO'),
(116, 'JPN', 'Japan', 'JP'),
(117, 'KAZ', 'Kazakhstan', 'KZ'),
(118, 'KEN', 'Kenya', 'KE'),
(119, 'KGZ', 'Kyrgyzstan', 'KG'),
(120, 'KHM', 'Cambodia', 'KH'),
(121, 'KIR', 'Kiribati', 'KI'),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(123, 'KOR', 'South Korea', 'KR'),
(124, 'KWT', 'Kuwait', 'KW'),
(125, 'LAO', 'Laos', 'LA'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LBR', 'Liberia', 'LR'),
(128, 'LBY', 'Libya', 'LY'),
(129, 'LCA', 'Saint Lucia', 'LC'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LKA', 'Sri Lanka', 'LK'),
(132, 'LSO', 'Lesotho', 'LS'),
(133, 'LTU', 'Lithuania', 'LT'),
(134, 'LUX', 'Luxembourg', 'LU'),
(135, 'LVA', 'Latvia', 'LV'),
(136, 'MAC', 'Macao', 'MO'),
(137, 'MAF', 'Saint Martin', 'MF'),
(138, 'MAR', 'Morocco', 'MA'),
(139, 'MCO', 'Monaco', 'MC'),
(140, 'MDA', 'Moldova', 'MD'),
(141, 'MDG', 'Madagascar', 'MG'),
(142, 'MDV', 'Maldives', 'MV'),
(143, 'MEX', 'Mexico', 'MX'),
(144, 'MHL', 'Marshall Islands', 'MH'),
(145, 'MKD', 'Macedonia', 'MK'),
(146, 'MLI', 'Mali', 'ML'),
(147, 'MLT', 'Malta', 'MT'),
(148, 'MMR', 'Myanmar [Burma]', 'MM'),
(149, 'MNE', 'Montenegro', 'ME'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNP', 'Northern Mariana Islands', 'MP'),
(152, 'MOZ', 'Mozambique', 'MZ'),
(153, 'MRT', 'Mauritania', 'MR'),
(154, 'MSR', 'Montserrat', 'MS'),
(155, 'MTQ', 'Martinique', 'MQ'),
(156, 'MUS', 'Mauritius', 'MU'),
(157, 'MWI', 'Malawi', 'MW'),
(158, 'MYS', 'Malaysia', 'MY'),
(159, 'MYT', 'Mayotte', 'YT'),
(160, 'NAM', 'Namibia', 'NA'),
(161, 'NCL', 'New Caledonia', 'NC'),
(162, 'NER', 'Niger', 'NE'),
(163, 'NFK', 'Norfolk Island', 'NF'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIC', 'Nicaragua', 'NI'),
(166, 'NIU', 'Niue', 'NU'),
(167, 'NLD', 'Netherlands', 'NL'),
(168, 'NOR', 'Norway', 'NO'),
(169, 'NPL', 'Nepal', 'NP'),
(170, 'NRU', 'Nauru', 'NR'),
(171, 'NZL', 'New Zealand', 'NZ'),
(172, 'OMN', 'Oman', 'OM'),
(173, 'PAK', 'Pakistan', 'PK'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PCN', 'Pitcairn Islands', 'PN'),
(176, 'PER', 'Peru', 'PE'),
(177, 'PHL', 'Philippines', 'PH'),
(178, 'PLW', 'Palau', 'PW'),
(179, 'PNG', 'Papua New Guinea', 'PG'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRI', 'Puerto Rico', 'PR'),
(182, 'PRK', 'North Korea', 'KP'),
(183, 'PRT', 'Portugal', 'PT'),
(184, 'PRY', 'Paraguay', 'PY'),
(185, 'PSE', 'Palestine', 'PS'),
(186, 'PYF', 'French Polynesia', 'PF'),
(187, 'QAT', 'Qatar', 'QA'),
(188, 'REU', 'Réunion', 'RE'),
(189, 'ROU', 'Romania', 'RO'),
(190, 'RUS', 'Russia', 'RU'),
(191, 'RWA', 'Rwanda', 'RW'),
(192, 'SAU', 'Saudi Arabia', 'SA'),
(193, 'SDN', 'Sudan', 'SD'),
(194, 'SEN', 'Senegal', 'SN'),
(195, 'SGP', 'Singapore', 'SG'),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(197, 'SHN', 'Saint Helena', 'SH'),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(199, 'SLB', 'Solomon Islands', 'SB'),
(200, 'SLE', 'Sierra Leone', 'SL'),
(201, 'SLV', 'El Salvador', 'SV'),
(202, 'SMR', 'San Marino', 'SM'),
(203, 'SOM', 'Somalia', 'SO'),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(205, 'SRB', 'Serbia', 'RS'),
(206, 'SSD', 'South Sudan', 'SS'),
(207, 'STP', 'São Tomé and Príncipe', 'ST'),
(208, 'SUR', 'Suriname', 'SR'),
(209, 'SVK', 'Slovakia', 'SK'),
(210, 'SVN', 'Slovenia', 'SI'),
(211, 'SWE', 'Sweden', 'SE'),
(212, 'SWZ', 'Swaziland', 'SZ'),
(213, 'SXM', 'Sint Maarten', 'SX'),
(214, 'SYC', 'Seychelles', 'SC'),
(215, 'SYR', 'Syria', 'SY'),
(216, 'TCA', 'Turks and Caicos Islands', 'TC'),
(217, 'TCD', 'Chad', 'TD'),
(218, 'TGO', 'Togo', 'TG'),
(219, 'THA', 'Thailand', 'TH'),
(220, 'TJK', 'Tajikistan', 'TJ'),
(221, 'TKL', 'Tokelau', 'TK'),
(222, 'TKM', 'Turkmenistan', 'TM'),
(223, 'TLS', 'East Timor', 'TL'),
(224, 'TON', 'Tonga', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'TT'),
(226, 'TUN', 'Tunisia', 'TN'),
(227, 'TUR', 'Turkey', 'TR'),
(228, 'TUV', 'Tuvalu', 'TV'),
(229, 'TWN', 'Taiwan', 'TW'),
(230, 'TZA', 'Tanzania', 'TZ'),
(231, 'UGA', 'Uganda', 'UG'),
(232, 'UKR', 'Ukraine', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(234, 'URY', 'Uruguay', 'UY'),
(235, 'USA', 'United States', 'US'),
(236, 'UZB', 'Uzbekistan', 'UZ'),
(237, 'VAT', 'Vatican City', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(239, 'VEN', 'Venezuela', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'VI'),
(242, 'VNM', 'Vietnam', 'VN'),
(243, 'VUT', 'Vanuatu', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'WF'),
(245, 'WSM', 'Samoa', 'WS'),
(246, 'XKX', 'Kosovo', 'XK'),
(247, 'YEM', 'Yemen', 'YE'),
(248, 'ZAF', 'South Africa', 'ZA'),
(249, 'ZMB', 'Zambia', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Research and development', 1, 1, '2023-07-15 21:33:10'),
(2, 'Operations', 1, 1, '2023-07-15 21:33:24'),
(3, 'fhfghfghfgh1111', 1, 1, '2023-07-16 09:57:04'),
(4, 'Marketing and sales', 1, 1, '2023-07-16 09:57:51'),
(5, 'Human resources', 1, 1, '2023-07-16 09:57:58'),
(6, 'Customer service', 1, 1, '2023-07-16 09:58:07'),
(7, 'Accounting and finance', 1, 1, '2023-07-16 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Chairman', 1, 1, '2023-07-15 21:56:25'),
(2, 'Director', 1, 1, '2023-07-15 22:01:20'),
(3, 'Managing Director', 1, 1, '2023-07-16 09:54:43'),
(4, 'Chief Executive Officer (CEO)', 1, 1, '2023-07-16 09:54:51'),
(5, 'Chief Financial Officer (CFO)', 1, 1, '2023-07-16 09:55:05'),
(6, 'Secretary', 1, 1, '2023-07-16 09:55:12'),
(7, 'Chief Operating Officer (COO)', 1, 1, '2023-07-16 09:55:23'),
(8, 'Chief Technology Officer (CTO)', 1, 1, '2023-07-16 09:55:30'),
(9, 'Vice President', 1, 1, '2023-07-16 09:55:37'),
(10, 'Manager', 1, 1, '2023-07-16 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 8, 4, 'Employee-1', 'bijon@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-001', NULL, NULL, NULL, NULL, NULL, NULL, 'CONTRACTUAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-16 11:11:49', 1),
(2, 4, 5, 'Ibraheem', 'Ibraheem@gmail.com', '2', '1', 'Dhaka , Bangladesh', 50000.00, '112233456', '2023-07-28', '2023-07-27', '/backend/files/0HjRR3tDHvFgdwr00NAB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-002', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', NULL, '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:12:51', 0),
(3, 8, 4, 'Raheem', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:11:49', 0),
(4, 6, 6, 'Employee-3', 'we2022@gmail.com', '444', '1', '333', 34343.00, '343434', '2023-08-08', '2023-08-08', '/backend/files/ESzCAGIDj20ZJNLXthmy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-004', 'Md.', 'Gazi', 'Uddin', '343434', 'Married', 8, 'CONTRACTUAL', '2023-08-29', '2023-08-17', '2023-08-18', 'fdg', 'dfg', 'dfg', 'dfg', 'dfg', 'dfgdfgdfg', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', NULL, 'null', 'null', 'null', 'null', 1, '2023-08-08 09:55:34', 0),
(5, 3, 4, 'Employee-4', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'df1111', 'sdff1111', 'sdff1111', 'dsff1111', 'Single', 4, 'SUSPEND', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 11:10:11', 1),
(6, 7, 6, 'Employee6 Six Emp', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Employee6', 'Six', 'Emp', 'sdfsdf', 'Widow', 10, 'SUSPEND', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-08-15 21:39:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE `employee_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL COMMENT 'primary key of employee table',
  `title` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`id`, `emp_id`, `title`, `note`, `doc_name`, `doc`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Title-1', 'Note', NULL, '/backend/files/0LtHc43MXnbUgWIXk2KX.sql', 1, 1, '2023-07-13 04:41:50', '2023-07-28 04:42:07'),
(2, 1, 'Documents of bijon', 'Documents of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijon', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:33:22', '2023-07-28 04:33:22'),
(3, 3, 'Raheem122', 'RaheemRaheemRaheem', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:45:56', '2023-07-28 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_holidays`
--

CREATE TABLE `employee_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'PK Of employees table',
  `holiday` varchar(255) NOT NULL,
  `used_holiday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_holidays`
--

INSERT INTO `employee_holidays` (`id`, `employee_id`, `holiday`, `used_holiday`, `created_at`, `updated_at`) VALUES
(1, 80, '28', 0, '2023-07-21 11:42:56', '2023-07-21 11:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_request`
--

CREATE TABLE `employee_leave_request` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=pending,\r\n1=Approved 2=Reject. 	',
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave_request`
--

INSERT INTO `employee_leave_request` (`id`, `employe_id`, `leave_type_id`, `frm_date`, `to_date`, `date_of_application`, `no_of_leave`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 15:06:15'),
(2, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '200', 1, 'xddd', '2023-09-02 19:43:31', '2023-09-03 13:47:43'),
(3, 3, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(4, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(5, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(6, 5, 2, '2023-09-04', '2023-09-21', '2023-09-03', '44', 0, 'kk', '2023-09-03 13:35:14', '2023-09-03 13:35:14'),
(7, 5, 4, '2023-09-01', '2023-09-28', '2023-09-03', '27', 0, 'ddd', '2023-09-03 13:57:44', '2023-09-03 13:58:37'),
(8, 5, 2, '2023-09-01', '2023-09-02', '2023-09-03', '1', 0, NULL, '2023-09-03 13:58:05', '2023-09-03 13:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'FULL TIME', 1, 1),
(2, 'CONTRACTUAL', 1, 1),
(3, 'SUSPEND', 1, 1),
(4, 'PART TIME', 1, 1),
(5, 'LEFT', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', 1, NULL, NULL),
(2, 'Good Friday', 1, NULL, NULL),
(3, 'Early May Bank Holiday', 1, NULL, NULL),
(4, 'Spring Bank Holiday', 1, NULL, NULL),
(5, 'Christmas Day', 1, NULL, NULL),
(6, 'Boxing Day', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_allocation`
--

CREATE TABLE `leave_allocation` (
  `id` int(11) NOT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `maximum_no_annual` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_in_hand` varchar(255) DEFAULT NULL,
  `effective_year` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_allocation`
--

INSERT INTO `leave_allocation` (`id`, `employee_type`, `employe_id`, `year`, `maximum_no_annual`, `leave_type`, `leave_in_hand`, `effective_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FULL TIME', 6, '2024', '265', 'Unauthorised Absence', '65', '22222222222', 1, '2023-08-30 17:47:18', '2023-08-31 03:27:51'),
(2, 'FULL TIME', 6, '2021', '265', 'Unauthorised Absence', '5', '2021', 1, '2023-08-30 17:47:18', '2023-08-30 17:47:18'),
(3, 'FULL TIME', 6, '2026', '265', 'Unauthorised Absence', '70', '2022', 1, '2023-08-30 18:12:00', '2023-08-30 18:12:00'),
(4, 'FULL TIME', 5, '2021', '265', 'Unauthorised Absence', '10', '2022', 1, '2023-08-31 03:34:26', '2023-08-31 03:34:26'),
(5, 'FULL TIME', 5, '2023', '265', 'Unauthorised Absence', '5', '2023', 1, '2023-08-31 03:35:16', '2023-08-31 03:35:16'),
(7, 'LEFT', 3, '2026', '150', 'Unauthorised Absence', '5', '2026', 1, '2023-08-31 03:48:27', '2023-08-31 03:48:27'),
(8, 'LEFT', 3, '2024', '150', 'Unauthorised Absence', '145', '2014', 1, '2023-08-31 03:48:59', '2023-08-31 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = Casual Leave, 2 = Medical Leave',
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `previous_start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `previous_end_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `dp_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Approved, 3 = Declined',
  `dp_approved_by` tinyint(4) DEFAULT NULL,
  `dp_approved_date` date DEFAULT NULL,
  `hr_status` tinyint(4) DEFAULT NULL,
  `hr_approved_by` tinyint(4) DEFAULT NULL,
  `hr_approved_date` date DEFAULT NULL,
  `application_date_changed_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_list`
--

CREATE TABLE `leave_list` (
  `id` int(11) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `no_of_days` varchar(255) DEFAULT NULL,
  `holiday_description` varchar(255) DEFAULT NULL,
  `holiday_type_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_list`
--

INSERT INTO `leave_list` (`id`, `day`, `frm_date`, `to_date`, `no_of_days`, `holiday_description`, `holiday_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Friday', '2023-08-03', '2023-08-31', '434', 'Description-1', 3, 1, '2023-08-30 05:57:54', '2023-08-30 06:54:51'),
(2, 'thrusday', '2023-08-30', '2023-09-27', '3', 'Description-2', 3, 1, '2023-08-30 05:59:11', '2023-08-30 05:59:11'),
(3, 'tuesday', '2023-08-24', '2023-08-31', '33', 'Description-3', 5, 1, '2023-08-30 06:07:15', '2023-08-30 06:07:15'),
(4, 'sunday', '2023-08-24', '2023-08-31', '333', 'Description-4', 4, 1, '2023-08-30 06:08:00', '2023-08-30 06:08:00'),
(5, 'monday', '2023-08-01', '2023-08-17', '16', 'Description-5', 3, 1, '2023-08-30 06:20:10', '2023-08-30 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `leave_rule`
--

CREATE TABLE `leave_rule` (
  `id` int(11) NOT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `maximum_no_annual` varchar(150) DEFAULT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_rule`
--

INSERT INTO `leave_rule` (`id`, `employee_type_id`, `leave_type_id`, `maximum_no_annual`, `effective_from`, `effective_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '265', '2023-01-01', '2023-12-31', 2, '2023-08-30 13:01:21', '2023-09-02 15:05:11'),
(2, 2, 7, '160', '2023-01-01', '2023-12-31', 1, '2023-08-30 13:02:06', '2023-08-30 16:40:26'),
(3, 5, 1, '150', '2024-01-01', '2024-12-31', 1, '2023-08-31 03:48:09', '2023-08-31 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Unauthorised Absence', 'U', 1, '2023-08-30 11:37:29', '2023-08-30 11:51:33'),
(2, 'Paternity Leave', 'PT', 1, '2023-08-30 11:39:39', '2023-08-30 11:51:40'),
(3, 'Holiday', 'H', 1, '2023-08-30 11:51:54', '2023-08-30 11:51:54'),
(4, 'Parental Leave', 'PL', 1, '2023-08-30 11:52:06', '2023-08-30 11:52:06'),
(5, 'Public Duties', 'P', 1, '2023-08-30 11:52:17', '2023-08-30 11:52:17'),
(6, 'Maternity Leave', 'M', 1, '2023-08-30 11:52:28', '2023-08-30 11:52:28'),
(7, 'Jury Service', 'J', 1, '2023-08-30 11:52:41', '2023-08-30 11:52:41'),
(8, 'Bereavement Leave', 'B', 1, '2023-08-30 11:52:50', '2023-08-30 11:52:50'),
(9, 'Antenatal', 'AN', 1, '2023-08-30 11:53:01', '2023-08-30 11:53:01'),
(10, 'Adoption Leave', 'AL', 1, '2023-08-30 11:53:11', '2023-08-30 11:53:11'),
(11, 'Authorised Absence', 'A', 1, '2023-08-30 11:53:25', '2023-08-30 11:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Payment_type',
  `working_hour` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`, `working_hour`, `rate`, `status`, `entry_by`) VALUES
(1, 'Bank', '120', 100.00, 1, 1),
(2, 'Bank', '12', 15.00, 1, 1),
(3, 'Bank', '12', 30.00, 1, 1),
(4, 'Crypto', '6', 40.00, 1, 1),
(5, 'Crypto', '120', 100.00, 1, 1),
(6, 'TT', '33', 3333.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_item`
--

CREATE TABLE `payroll_pay_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Head',
  `in_percent` varchar(255) DEFAULT NULL,
  `in_rupees` varchar(255) DEFAULT NULL,
  `min_value` varchar(255) DEFAULT NULL,
  `max_value` varchar(255) DEFAULT NULL,
  `effective_frm` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_pay_item`
--

INSERT INTO `payroll_pay_item` (`id`, `name`, `in_percent`, `in_rupees`, `min_value`, `max_value`, `effective_frm`, `effective_to`, `status`, `entry_by`) VALUES
(1, 'Test', '5', 'Yes', '15', '254', '2023-08-27', '2023-08-27', 1, 1),
(2, '213333', 'sdfsdf', '34', '33', '33', '2023-08-24', '2023-08-31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay_group`
--

CREATE TABLE `pay_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_group`
--

INSERT INTO `pay_group` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Administrative Staff', 1, 1),
(2, 'Technical Team', 1, 1),
(3, 'Sales Team', 1, 1),
(4, 'Customer Service', 1, 1),
(5, 'Management', 1, 1),
(6, 'Production Workers', 1, 1),
(7, 'Finance and Accounting', 1, 1),
(8, 'Marketing and Communications', 1, 1),
(9, 'Research and Development (R&D)', 1, 1),
(10, 'Operations and Logistics', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `product_tag` varchar(255) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `discount_status` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `free_shopping` int(11) DEFAULT NULL,
  `flat_rate_status` int(11) DEFAULT NULL,
  `flat_rate_price` double(10,5) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_status` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_status` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(1, 'Acrobat', 'acrobat', '<p>Adobe Acrobat is a family of software and services developed by Adobe Inc. that allows users to view, create, manipulate, print, and manage Portable Document Format (PDF) files. Here\'s a short description of Adobe Acrobat:</p><p>**Adobe Acrobat:**<br>Adobe Acrobat is a versatile software suite designed for working with PDF documents. It provides a comprehensive set of tools for creating, editing, converting, and managing PDF files. Acrobat allows users to easily view, annotate, and collaborate on PDF documents, making it an essential tool for individuals and businesses dealing with electronic documents.</p><p>Key Features:<br>1. **PDF Creation:** Easily create PDF documents from various file formats, ensuring consistent and professional-looking files.<br>2. **Editing Tools:** Edit text, images, and other elements within PDFs, making it simple to update and modify existing documents.<br>3. **Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.<br>4. **Conversion:** Convert PDFs to and from other popular file formats, maintaining document integrity across different platforms.<br>5. **Security:** Implement security features such as password protection, encryption, and digital signatures to safeguard sensitive information.<br>6. **Form Handling:** Create, fill, and manage forms in PDF format, streamlining data collection and processing.<br>7. **Integration:** Seamlessly integrate with other Adobe products and services, enhancing workflow efficiency and document management.</p><p>Adobe Acrobat is an essential tool for professionals who require reliable and feature-rich PDF handling, offering a wide range of capabilities to meet the diverse needs of its users.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/hHdGyBaa#G_VfqqfdrvYzyMn_zzSRZg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/G9fpbzssqIqsA1C5qSLA.jpg', 1, 1, 7500, NULL, '2023-11-26 06:20:41'),
(2, 'Adobe After Effects(2020) PRE-ACTIVATED [FILECR]', 'adobe-after-effects-2020-pre-activated-filecr-', '<p>As of my last knowledge update in January 2022, Adobe After Effects is a digital visual effects, motion graphics, and compositing application developed by Adobe Inc. It is widely used in the post-production process of filmmaking, video editing, and television production. Below is a short description of Adobe After Effects (as of the 2020 version):</p><p>**Adobe After Effects (2020):**<br>Adobe After Effects is an industry-standard software used by motion graphics and visual effects professionals to create stunning visual content. Released in 2020, this version of After Effects builds upon its legacy of providing powerful tools for artists, animators, and video editors.</p><p>Key Features:</p><p>1. **Motion Graphics:** Create intricate motion graphics and visually appealing animations using a wide array of built-in tools and effects.<br>&nbsp;<br>2. **Visual Effects (VFX):** Enhance videos with advanced visual effects, such as compositing, green screen keying, and 3D tracking.</p><p>3. **Dynamic Link:** Seamlessly integrate with other Adobe Creative Cloud applications like Adobe Premiere Pro and Adobe Photoshop for a smooth workflow.</p><p>4. **Expression Language:** Leverage the power of expressions to automate animation and achieve complex motion effects.</p><p>5. **3D Rendering:** Generate and animate 3D objects and scenes, adding depth and realism to your visual projects.</p><p>6. **Advanced Editing:** Edit and manipulate video content with precision, including time remapping, color correction, and advanced masking.</p><p>7. **Plugins and Scripting:** Extend functionality through a vast array of plugins and scripts developed by the community.</p><p>8. **Dynamic Typography:** Create engaging kinetic typography and text animations to enhance storytelling.</p><p>Adobe After Effects is an essential tool for professionals in the film, television, and advertising industries, providing the creative freedom to bring imaginative ideas to life through captivating visual effects and animations. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe After Effects.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/obMgwaqQ#Mv-IJTWK1N-gEPRUxm6BOw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/9MFB5MvGrn0JCYquLHoo.jpg', 1, 1, 3500, NULL, NULL),
(3, 'Adobe Illustrator CC (2020) (V24.0.1.341) X64 PRE-ACTIVATED', 'adobe-illustrator-cc-2020-v24-0-1-341-x64-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Illustrator CC (2020) version 24.0.1.341 x64 is a vector graphics editing software developed by Adobe Inc. It is a part of Adobe Creative Cloud, a suite of design and multimedia applications. Below is a short description of Adobe Illustrator CC (2020) version 24.0.1.341 x64:</p><p>**Adobe Illustrator CC (2020) V24.0.1.341 X64:**<br>Adobe Illustrator CC is a leading vector graphics editor that empowers designers and artists to create scalable and high-quality illustrations, logos, icons, typography, and other complex graphics. The 2020 version (V24.0.1.341) introduced various features and improvements to enhance the user experience and creative capabilities.</p><p>Key Features:</p><p>1. **Vector Graphics:** Create and edit vector-based graphics, allowing for scalability without loss of quality. This makes Illustrator ideal for a wide range of design projects.</p><p>2. **Drawing Tools:** Utilize a comprehensive set of drawing tools, including the Pen tool, Shape tools, and brushes, to bring your creative ideas to life.</p><p>3. **Typography:** Manage and customize text with a variety of font styles, spacing options, and text effects. Create artistic and professional typography in your designs.</p><p>4. **Creative Cloud Integration:** Seamlessly integrate with other Adobe Creative Cloud applications, enabling a smooth workflow with software like Adobe Photoshop and Adobe InDesign.</p><p>5. **Artboards:** Work with multiple artboards in a single document, allowing for the creation of diverse design elements within one file.</p><p>6. **Illustrator Effects:** Apply a range of effects such as gradients, shadows, and blurs to enhance the visual appeal of your illustrations.</p><p>7. **Precision and Control:** Benefit from precise control over anchor points, paths, and shapes, ensuring accuracy in your designs.</p><p>8. **Export Options:** Export your designs in various formats, including PDF, SVG, and more, to accommodate different output requirements.</p><p>Adobe Illustrator CC is an essential tool for graphic designers, illustrators, and artists who need a versatile platform for creating stunning visuals. Please note that there may have been updates or additional features introduced since my last knowledge update, so it\'s recommended to check the official Adobe website for the latest information on Adobe Illustrator.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/oXd3DAII#4KKTtScREhj6nIMTG1vZ8Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/AmaRZlCwc4pDBWy6t4Pv.jpg', 1, 1, 3500, NULL, NULL),
(4, 'Adobe Photoshop 2020 (V21.1.3.190) (X64) MULTILINGUAL REPACK (PRE-ACTIVATED)', 'adobe-photoshop-2020-v21-1-3-190-x64-multilingual-repack-pre-activated-', '<p>As of my last knowledge update in January 2022, here\'s a short description of Adobe Photoshop 2020 (version 21.1.3.190) based on the details provided:</p><p>**Adobe Photoshop 2020 (V21.1.3.190) (X64) MULTILINGUAL REPACK:**<br>Adobe Photoshop is a powerful and widely-used raster graphics editing software developed by Adobe Inc. The 2020 version, identified as V21.1.3.190, is a feature-packed release catering to the needs of graphic designers, photographers, and digital artists.</p><p>Key Features:</p><p>1. **Image Editing:** Perform advanced image editing tasks with a comprehensive set of tools for retouching, cropping, and manipulating images.</p><p>2. **Layers:** Work with multiple layers to organize and enhance your designs, allowing for non-destructive editing and complex compositions.</p><p>3. **Selection Tools:** Use a variety of selection tools to isolate and manipulate specific areas of an image with precision.</p><p>4. **Filters and Effects:** Apply a wide range of filters and effects to enhance and stylize your images, including blurs, distortions, and artistic filters.</p><p>5. **Adobe Creative Cloud Integration:** Seamlessly integrate with other Adobe Creative Cloud applications for a streamlined workflow, enabling easy collaboration between different creative projects.</p><p>6. **Multilingual Support:** The MULTILINGUAL REPACK version provides support for multiple languages, making it accessible to a diverse global user base.</p><p>7. **Performance Improvements:** Benefit from improved performance and efficiency in various operations, ensuring a smoother user experience.</p><p>8. **Content-Aware Fill:** Use advanced content-aware technology to intelligently fill in or remove elements from your images, saving time in the editing process.</p><p>9. **Typography:** Create and edit text with a wide range of typography tools, including advanced controls over font styles, spacing, and more.</p><p>Adobe Photoshop 2020 is an industry-standard software known for its versatility and extensive capabilities in graphic design and digital image editing. Please note that software versions and features may have been updated since my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Photoshop.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/gOd3EY4a#bCs3hCXJ_fJLNiOjp19nBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/vRzmVpadlYQzcgPOvZMz.jpg', 1, 1, 3500, NULL, NULL),
(5, 'Adobe Photoshop Lightroom CC (2019) (2.4.1) PRE-ACTIVATED', 'adobe-photoshop-lightroom-cc-2019-2-4-1-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Photoshop Lightroom CC (2019) version 2.4.1 is a digital photo editing and organization software within the Adobe Creative Cloud suite. Below is a short description of Adobe Photoshop Lightroom CC (2019) version 2.4.1:</p><p>**Adobe Photoshop Lightroom CC (2019) version 2.4.1:**<br>Adobe Photoshop Lightroom CC is a professional-grade photo editing and management application, catering to photographers and visual content creators. The 2019 version (2.4.1) represents a snapshot of the software\'s features and capabilities during that period.</p><p>Key Features:</p><p>1. **Photo Editing:** Perform non-destructive editing on RAW and JPEG images, applying adjustments to exposure, color, contrast, and other parameters.</p><p>2. **Organizational Tools:** Efficiently organize and manage large photo libraries with features like keyword tagging, star ratings, and color labels.</p><p>3. **Library and Develop Modules:** Navigate between Library and Develop modules to manage and edit photos seamlessly.</p><p>4. **Presets and Profiles:** Apply and create presets to achieve consistent looks across multiple photos. Explore a variety of profiles for creative enhancements.</p><p>5. **Sync Across Devices:** Synchronize photo collections and edits across multiple devices, ensuring a seamless workflow.</p><p>6. **HDR and Panorama Merge:** Combine multiple photos to create high dynamic range (HDR) or panorama images directly within Lightroom.</p><p>7. **Face Detection and Tagging:** Automatically detect and tag faces in photos for easier organization and searching.</p><p>8. **Integrated Map Module:** Geotag photos and view them on a map, enhancing the organization and storytelling aspects of your photography.</p><p>9. **Adobe Creative Cloud Integration:** Seamlessly integrate with other Adobe Creative Cloud applications, such as Photoshop, for a comprehensive editing workflow.</p><p>Adobe Photoshop Lightroom CC (2019) version 2.4.1 is designed to streamline the photography workflow, providing photographers with powerful tools for editing, organizing, and sharing their work. Note that software versions and features may have been updated since my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Photoshop Lightroom CC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/cGtk2QSB#Q_K58z_XAJeoIeKZeo3Kcw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/MulyO7Sf4VQxTJLMNUC7.jpg', 1, 1, 3500, NULL, NULL),
(6, 'Adobe PhotoshopV23.0.0.36', 'adobe-photoshopv23-0-0-36', '<p>As of my last knowledge update in January 2022, Adobe Photoshop does not have a version identified as \"V23.0.0.36.\" My information might be outdated, and newer versions could have been released since then. However, I can provide you with a general description of Adobe Photoshop based on its typical features and capabilities:</p><p>**Adobe Photoshop:**<br>Adobe Photoshop is a leading graphic editing software developed by Adobe Inc. It is widely used by designers, photographers, and creative professionals for a variety of image editing tasks. As a versatile and powerful application, Photoshop offers an extensive set of tools and features for manipulating, enhancing, and creating digital images.</p><p>Key Features:</p><p>1. **Image Editing:** Perform basic to advanced image editing tasks, including cropping, resizing, retouching, and color correction.<br>&nbsp;&nbsp;<br>2. **Layers:** Work with layers to organize and manipulate different elements of an image independently, enabling complex compositions.</p><p>3. **Selection Tools:** Utilize various selection tools for precise control over image areas, allowing for targeted edits.</p><p>4. **Filters and Effects:** Apply a wide range of filters and effects to enhance or transform the appearance of images.</p><p>5. **Retouching and Healing:** Remove imperfections, blemishes, and unwanted elements from photos using retouching and healing tools.</p><p>6. **Text Editing:** Add and customize text, including typography, fonts, and styles, directly within the application.</p><p>7. **3D Editing:** Create and manipulate 3D objects within Photoshop, adding depth and realism to designs.</p><p>8. **Integration with Adobe Creative Cloud:** Seamlessly collaborate with other Adobe applications, such as Adobe Illustrator and Adobe InDesign, through Adobe Creative Cloud integration.</p><p>9. **Automation:** Use features like actions and scripting to automate repetitive tasks, improving workflow efficiency.</p><p>Adobe Photoshop is an industry-standard software for digital imaging and is widely used across various creative disciplines. It provides a comprehensive set of tools for both beginners and professionals to bring their creative vision to life. For the most accurate and up-to-date information, please check the official Adobe website or release notes for the specific version you are inquiring about.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/YWUmCZ7A#UsdJq0G2PVCk7jJprrZD9g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/LSdR455egep4d4F3QJRE.jpg', 1, 1, 3500, NULL, NULL),
(7, 'Illustrator', 'illustrator', '<p>Adobe Illustrator is a vector graphics editor developed by Adobe Inc. It is a powerful design tool widely used by graphic designers, illustrators, and artists for creating scalable and high-quality vector graphics. Below is a short description of Adobe Illustrator:</p><p>**Adobe Illustrator:**<br>Adobe Illustrator is a versatile vector graphics editor that enables users to create, edit, and design a wide range of visual content. Launched by Adobe Inc., Illustrator is renowned for its precision and flexibility in handling vector-based illustrations and graphics. Key features include:</p><p>1. **Vector Graphics:** Create graphics using vector paths that allow for infinite scalability without loss of quality, making Illustrator ideal for logos, icons, and illustrations.</p><p>2. **Drawing Tools:** Access a comprehensive set of drawing tools, including the Pen tool, Shape tools, and Pencil tool, to bring creative concepts to life.</p><p>3. **Typography:** Effortlessly handle text with powerful typography tools, enabling precise control over fonts, spacing, and styles.</p><p>4. **Artboards:** Work with multiple artboards within a single document, facilitating the creation of diverse design elements in one workspace.</p><p>5. **Color and Gradient:** Apply and manipulate colors and gradients with ease, utilizing features like the Color Picker and Gradient tool for vibrant and nuanced designs.</p><p>6. **Creative Cloud Integration:** Seamlessly integrate with other Adobe Creative Cloud applications, such as Photoshop and InDesign, for a cohesive design workflow.</p><p>7. **Illustration Effects:** Apply a variety of effects, such as shadows, glows, and distortions, to enhance the visual appeal of illustrations.</p><p>8. **Export Options:** Export designs in various formats, including PDF, SVG, and more, ensuring compatibility with different platforms and devices.</p><p>Adobe Illustrator is an industry-standard tool for graphic design and illustration, providing a robust platform for creating visually striking and professional-quality artwork. Its versatility and integration with other Adobe software make it a preferred choice for designers working on a wide range of projects. Keep in mind that feature updates may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Illustrator.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/wbkFTSyJ#Dxo6E-LEUDAvHBrz5u_beQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/R9EbxG8uIfecnxLzUYJ8.jpg', 1, 1, 3500, NULL, NULL),
(8, 'Lightroom', 'lightroom', '<p>Adobe Lightroom is a comprehensive photo editing and management software developed by Adobe Inc. It is widely used by photographers to organize, edit, and enhance their digital photos efficiently. Here\'s a short description of Adobe Lightroom:</p><p>**Adobe Lightroom:**<br>Adobe Lightroom is a professional-grade photo editing and management application designed for photographers. It provides a streamlined workflow for organizing, editing, and sharing digital images. With a user-friendly interface, Lightroom offers a range of powerful tools and features to enhance the quality of photographs while simplifying the overall post-production process.</p><p>Key Features:</p><p>1. **Non-Destructive Editing:** Lightroom uses a non-destructive editing approach, allowing users to make adjustments to images without altering the original file. This ensures flexibility and preserves the integrity of the original photo.</p><p>2. **Organization and Cataloging:** Efficiently organize and manage large photo collections with features like keyword tagging, star ratings, and customizable metadata. The software facilitates easy searching and retrieval of images.</p><p>3. **Global and Local Adjustments:** Make global adjustments to the entire image or apply localized edits to specific areas using tools like the adjustment brush, gradient filter, and radial filter.</p><p>4. **Presets and Profiles:** Apply predefined presets or create custom presets to quickly enhance the look and feel of photos. Profiles offer a starting point for color grading and stylizing images.</p><p>5. **RAW Editing:** Lightroom supports the editing of RAW files, providing photographers with greater control over image quality and detail during the editing process.</p><p>6. **Integration with Adobe Ecosystem:** Seamlessly integrate Lightroom with other Adobe Creative Cloud applications like Photoshop. This integration allows for a smooth transition between editing stages.</p><p>7. **Mobile and Web Connectivity:** Access and edit photos on mobile devices through the Lightroom mobile app. Sync and share edited images across devices through Adobe Creative Cloud.</p><p>8. **Map and Facial Recognition:** Geotag photos using the map module and utilize facial recognition to easily categorize and tag images based on recognizable faces.</p><p>Adobe Lightroom is an indispensable tool for photographers of all levels, offering a powerful set of features to enhance and organize digital photo collections. It enables photographers to achieve professional-level results with ease and efficiency. Note that features and updates may have been introduced after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Lightroom.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/pDlWGRTT#EIwztH1W3F08ks8LDe-ZOw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/fIDaC9zOEKAtw4N96HY3.jpg', 1, 1, 4750, NULL, '2023-11-26 06:20:52'),
(9, 'ACDSee Pro 5.0 (Build 110) Release Notes', 'acdsee-pro-5-0-build-110-release-notes', '<p>As of my last knowledge update in January 2022, I don\'t have specific release notes for ACDSee Pro 5.0 (Build 110). However, I can guide you on where you can typically find release notes for software updates:</p><p>1. **Official Website:** Visit the official ACDSee website or the product page for ACDSee Pro. Release notes are often published on the product page, providing details about new features, enhancements, and bug fixes.</p><p>2. **Update Notifications:** If you have the software installed, check for update notifications within the application. Some software programs display release notes when prompting users to update.</p><p>3. **Documentation or Help Section:** Explore the software\'s documentation or help section. Release notes are commonly included in user manuals or online help resources.</p><p>4. **Customer Support:** Contact ACDSee\'s customer support if you have difficulty finding release notes. They may be able to direct you to the relevant information.</p><p>To ensure you get the most accurate and up-to-date information, it\'s recommended to check the official ACDSee website or contact their customer support. Release notes typically provide insights into the changes and improvements introduced in a specific software version.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/5T8yVTRK#HEVpyAE46ssUTvlin5-qIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/FAsTOJLLFoYDy2KJOr6Z.jpg', 1, 1, 3500, NULL, NULL),
(10, 'Adobe Media Encoder 2020 (PRE-ACTIVATED)', 'adobe-media-encoder-2020-pre-activated-', '<p>As of my last knowledge update in January 2022, Adobe Media Encoder 2020 is part of the Adobe Creative Cloud suite and is designed to efficiently encode media files. It plays a crucial role in the post-production process, allowing users to export and optimize their media content for various platforms and devices. Here\'s a short description of Adobe Media Encoder 2020:</p><p>**Adobe Media Encoder 2020:**<br>Adobe Media Encoder is a powerful software application that enables users to export and encode audio and video files seamlessly. Released in 2020, this version of Adobe Media Encoder provides a range of features to streamline the media encoding and export process.</p><p>Key Features:</p><p>1. **Media Export:** Export media files from various Adobe Creative Cloud applications, including Adobe Premiere Pro and Adobe After Effects, for further distribution or sharing.</p><p>2. **Format Support:** Encode media files into a wide range of formats, including popular video codecs (H.264, H.265, ProRes) and audio codecs (AAC, MP3).</p><p>3. **Presets:** Use pre-configured encoding presets for common output formats and devices, simplifying the export process.</p><p>4. **Queue Management:** Create encoding queues to process multiple files in a batch, optimizing workflow efficiency.</p><p>5. **Time Tuner:** Adjust the duration of rendered content without affecting the quality, helping meet specific time constraints.</p><p>6. **Watch Folders:** Set up watch folders to automatically encode media files placed in designated directories, saving time and effort.</p><p>7. **Dolby Vision Support:** Encode content with Dolby Vision HDR (High Dynamic Range) support for enhanced visual quality.</p><p>8. **Extensive Platform Compatibility:** Export media content optimized for various platforms, including social media, web, mobile devices, and more.</p><p>Adobe Media Encoder is an integral part of the post-production pipeline, ensuring that media projects are exported and optimized efficiently for different viewing platforms. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Media Encoder.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/0HsGQQbQ#jcXtCHlI0kwYWwOXv9rMrw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/HmWWWAxw7YIfGzHJFvgm.jpg', 1, 1, 3500, NULL, NULL),
(11, 'Adobe Acrobat Pro DC(2020) CRACK', 'adobe-acrobat-pro-dc-2020-crack', '<p>Adobe Acrobat Pro DC is a comprehensive software solution for creating, editing, signing, and managing Portable Document Format (PDF) files. It is part of the Adobe Document Cloud, offering a range of powerful tools for professionals and businesses dealing with digital documents. Here\'s a short description of Adobe Acrobat Pro DC as of the 2020 version:</p><p>**Adobe Acrobat Pro DC (2020):**</p><p>Adobe Acrobat Pro DC is a feature-rich application designed for handling PDF documents with efficiency and precision. Released in 2020, this version builds on its legacy of providing a versatile platform for working with PDFs, offering a suite of tools to streamline document workflows.</p><p>Key Features:</p><p>1. **PDF Creation:** Easily create PDF documents from various sources, ensuring document consistency and professional presentation.</p><p>2. **Editing Tools:** Edit text, images, and other elements within PDFs, allowing users to update and modify documents with ease.</p><p>3. **Document Review:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, enabling multiple users to review and provide feedback.</p><p>4. **Form Handling:** Create, fill, and manage forms in PDF format, simplifying data collection and processing.</p><p>5. **Conversion:** Convert PDFs to and from other popular file formats while preserving document formatting and integrity.</p><p>6. **Security Features:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>7. **OCR (Optical Character Recognition):** Recognize and convert scanned documents into editable and searchable text.</p><p>8. **Integration with Adobe Sign:** Seamlessly integrate with Adobe Sign for electronic signature workflows, making it easy to sign and track documents digitally.</p><p>9. **Mobile Accessibility:** Access and work with PDFs on the go with mobile apps, ensuring productivity and collaboration anytime, anywhere.</p><p>Adobe Acrobat Pro DC is an essential tool for professionals and businesses that rely on efficient and secure document management. Whether creating, editing, or collaborating on PDFs, Acrobat Pro DC offers a robust set of features to meet the diverse needs of its users. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/gL80ELTK#7DCsemuHyIVKlh-zGOFs0g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/TuTCy66fXYxpRMtNZBpR.jpg', 1, 1, 3500, NULL, NULL),
(12, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(13, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(14, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(15, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(16, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(17, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(18, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(19, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(20, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(21, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(22, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(23, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(24, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(25, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(26, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(27, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(28, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(29, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(30, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(31, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(32, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(33, 'Adobe Acrobat Pro DC(2020) Multilangual PRE-ACTIVATED', 'adobe-acrobat-pro-dc-2020-multilangual-pre-activated', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(34, 'course-1', 'course-1', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(35, 'course-2', 'course-2', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(36, 'course-3', 'course-3', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(37, 'course-4', 'course-4', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(38, 'course-5', 'course-5', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(39, 'course-6', 'course-6', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(40, 'course-7', 'course-7', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(41, 'course-8', 'course-8', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(42, 'course-9', 'course-9', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(43, 'course-10', 'course-10', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(44, 'course-11', 'course-11', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(45, 'course-12', 'course-12', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(46, 'course-13', 'course-13', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(47, 'course-14', 'course-14', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(48, 'course-15', 'course-15', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(49, 'course-16', 'course-16', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(50, 'course-17', 'course-17', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(51, 'course-18', 'course-18', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(52, 'course-19', 'course-19', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(53, 'course-20', 'course-20', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(54, 'course-21', 'course-21', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(55, 'Movie-1', 'Movie-1', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(56, 'Movie-2', 'Movie-2', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(57, 'Movie-3', 'Movie-3', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(58, 'Movie-4', 'Movie-4', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(59, 'Movie-5', 'Movie-5', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 16000, NULL, '2023-11-26 06:25:21'),
(60, 'Movie-6', 'Movie-6', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(61, 'Movie-7', 'Movie-7', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(62, 'Movie-8', 'Movie-8', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(63, 'Movie-9', 'Movie-9', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(64, 'Movie-10', 'Movie-10', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(65, 'Movie-11', 'Movie-11', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(66, 'Movie-111', 'Movie-111', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(67, 'Movie-12', 'Movie-12', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(68, 'Movie-13', 'Movie-13', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(69, 'Movie-14', 'Movie-14', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(70, 'Movie-15', 'Movie-15', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(71, 'Movie-16', 'Movie-16', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(72, 'Movie-17', 'Movie-17', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(73, 'Movie-18', 'Movie-18', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(74, 'Movie-19', 'Movie-19', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(75, 'Movie-20', 'Movie-20', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(76, 'Movie-21', 'Movie-21', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(77, 'Movie-22', 'Movie-22', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(78, 'Movie-23', 'Movie-23', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(79, 'Movie-24', 'Movie-24', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(80, 'Movie-25', 'Movie-25', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(81, 'Movie-26', 'Movie-26', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(82, 'Movie-27', 'Movie-27', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(83, 'Movie-28', 'Movie-28', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(84, 'Movie-29', 'Movie-29', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(85, 'Movie-30', 'Movie-30', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(86, 'Movie-31', 'Movie-31', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(87, 'Movie-32', 'Movie-32', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(88, 'Movie-33', 'Movie-33', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(89, 'Movie-34', 'Movie-34', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(90, 'Movie-35', 'Movie-35', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(91, 'Movie-36', 'Movie-36', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(92, 'Movie-37', 'Movie-37', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(93, 'Movie-38', 'Movie-38', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(94, 'Movie-39', 'Movie-39', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(95, 'Movie-40', 'Movie-40', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(96, 'Movie-41', 'Movie-41', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(97, 'Movie-42', 'Movie-42', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(98, 'Movie-43', 'Movie-43', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(99, 'Movie-44', 'Movie-44', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(100, 'Movie-45', 'Movie-45', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(101, 'Movie-46', 'Movie-1', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/embed/ILlxkQoI#hWipHLGMLBB2LhEYsAlYo9eWQ_bdEKIBarozPyLtrL8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/slider4.jpg', 1, 1, 3500, NULL, NULL),
(102, 'course-22', 'course-22', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(103, 'course-23', 'course-23', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(104, 'course-24', 'course-24', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(105, 'course-25', 'course-25', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(106, 'course-26', 'course-26', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(107, 'course-27', 'course-27', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(108, 'course-28', 'course-28', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(109, 'course-29', 'course-29', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(110, 'course-30', 'course-30', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(111, 'course-31', 'course-31', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(112, 'course-32', 'course-32', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(113, 'course-33', 'course-33', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(114, 'course-34', 'course-34', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(115, 'course-35', 'course-35', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(116, 'course-36', 'course-36', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(117, 'course-33', 'course-33', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(118, 'course-37', 'course-37', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(119, 'course-38', 'course-38', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(120, 'course-39', 'course-39', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL),
(121, 'course-40', 'course-40', '<p>As of my last knowledge update in January 2022, Adobe Acrobat Pro DC (2020) Multilingual is a robust document management and editing software developed by Adobe Inc. It is an advanced version of the standard Adobe Acrobat and offers additional features for professionals and businesses. Here\'s a short description of Adobe Acrobat Pro DC (2020) Multilingual:</p><p>**Adobe Acrobat Pro DC (2020) Multilingual:**<br>Adobe Acrobat Pro DC is a comprehensive PDF solution designed for creating, editing, signing, and managing PDF documents. The 2020 Multilingual version builds upon the strengths of its predecessors, providing a versatile set of tools for individuals and organizations working with digital documents.</p><p>Key Features:</p><p>1. **PDF Creation and Editing:** Easily create professional-quality PDF documents and edit existing ones with advanced tools for text, images, and more.</p><p>2. **Document Collaboration:** Facilitate collaboration by adding comments, annotations, and markups to PDFs, allowing multiple users to review and provide feedback.</p><p>3. **Form Handling:** Create, fill, and manage interactive PDF forms, streamlining data collection and processing.</p><p>4. **Document Security:** Implement robust security measures, including password protection, encryption, and digital signatures, to safeguard sensitive information.</p><p>5. **OCR Technology:** Convert scanned documents and images into searchable and editable PDFs using Optical Character Recognition (OCR) technology.</p><p>6. **Mobile Accessibility:** Access and work on PDF documents on the go with Adobe Acrobat mobile apps, ensuring productivity from anywhere.</p><p>7. **Cloud Integration:** Seamlessly integrate with Adobe Document Cloud for easy storage, access, and sharing of PDFs across devices.</p><p>8. **Export and Share:** Convert PDFs to other popular file formats and share documents effortlessly while maintaining formatting integrity.</p><p>Adobe Acrobat Pro DC (2020) Multilingual is an indispensable tool for professionals and businesses that rely on efficient and secure document workflows. Note that feature updates and improvements may have occurred after my last knowledge update, so it\'s advisable to check the official Adobe website for the latest information on Adobe Acrobat Pro DC.</p>', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/folder/ZCtQzSBA#IKzmfYq8w-x4sL0eCiNUUQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/WBTxsDZth7ibrR9Bzw7h.jpg', 1, 1, 3500, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributes_id` int(11) NOT NULL,
  `attr_status` int(11) NOT NULL COMMENT '0=delete action off\r\n1=delete action on \r\nwhen matching product_variants table then action working',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes_values_history`
--

CREATE TABLE `product_attributes_values_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `product_attribute_id` int(11) DEFAULT NULL,
  `product_att_value_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pro_attr_val_his_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants_history`
--

CREATE TABLE `product_variants_history` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pro_varient_id` int(11) NOT NULL,
  `pro_attr_val_his_id` int(11) NOT NULL,
  `varient_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produc_categories`
--

CREATE TABLE `produc_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produc_categories`
--

INSERT INTO `produc_categories` (`id`, `product_id`, `category_id`, `parent_id`) VALUES
(1, 1, 5, '1,5'),
(2, 2, 5, '1,5'),
(3, 3, 5, '1,5'),
(4, 4, 5, '1,5'),
(5, 5, 5, '1,5'),
(6, 6, 5, '1,5'),
(7, 7, 5, '1,5'),
(8, 8, 5, '1,5'),
(9, 9, 5, '1,5'),
(10, 10, 5, '1,5'),
(11, 11, 5, '1,5'),
(12, 12, 5, '1,5'),
(13, 13, 5, '1,5'),
(14, 14, 5, '1,5'),
(15, 15, 5, '1,5'),
(16, 16, 5, '1,5'),
(17, 17, 5, '1,5'),
(18, 18, 5, '1,5'),
(19, 19, 5, '1,5'),
(20, 20, 5, '1,5'),
(21, 21, 5, '1,5'),
(22, 22, 5, '1,5'),
(23, 23, 5, '1,5'),
(24, 24, 5, '1,5'),
(25, 25, 5, '1,5'),
(26, 26, 5, '1,5'),
(27, 27, 5, '1,5'),
(28, 28, 5, '1,5'),
(29, 29, 5, '1,5'),
(30, 30, 5, '1,5'),
(31, 31, 5, '1,5'),
(32, 32, 5, '1,5'),
(33, 33, 5, '1,5'),
(34, 34, 37, '1,37'),
(35, 35, 37, '1,37'),
(36, 36, 37, '1,37'),
(37, 37, 37, '1,37'),
(38, 38, 37, '1,37'),
(39, 39, 37, '1,37'),
(40, 40, 37, '1,37'),
(41, 41, 37, '1,37'),
(42, 42, 37, '1,37'),
(43, 43, 37, '1,37'),
(44, 44, 37, '1,37'),
(45, 45, 37, '1,37'),
(46, 46, 37, '1,37'),
(47, 47, 37, '1,37'),
(48, 48, 37, '1,37'),
(49, 49, 37, '1,37'),
(50, 50, 37, '1,37'),
(51, 51, 37, '1,37'),
(52, 52, 37, '1,37'),
(53, 53, 37, '1,37'),
(54, 54, 37, '1,37'),
(55, 55, 18, '1,18'),
(56, 56, 18, '1,18'),
(58, 57, 18, '1,18'),
(59, 58, 18, '1,18'),
(60, 59, 18, '1,18'),
(61, 60, 18, '1,18'),
(62, 61, 18, '1,18'),
(63, 62, 18, '1,18'),
(64, 63, 18, '1,18'),
(65, 64, 18, '1,18'),
(66, 65, 18, '1,18'),
(67, 66, 18, '1,18'),
(68, 67, 18, '1,18'),
(69, 68, 18, '1,18'),
(70, 69, 18, '1,18'),
(71, 70, 18, '1,18'),
(72, 71, 18, '1,18'),
(73, 72, 18, '1,18'),
(74, 73, 18, '1,18'),
(75, 74, 18, '1,18'),
(76, 75, 18, '1,18'),
(77, 76, 18, '1,18'),
(78, 77, 18, '1,18'),
(79, 78, 18, '1,18'),
(80, 79, 18, '1,18'),
(81, 80, 18, '1,18'),
(82, 81, 18, '1,18'),
(83, 82, 18, '1,18'),
(84, 83, 18, '1,18'),
(85, 84, 18, '1,18'),
(86, 85, 18, '1,18'),
(87, 86, 18, '1,18'),
(88, 87, 18, '1,18'),
(89, 88, 18, '1,18'),
(90, 89, 18, '1,18'),
(91, 90, 18, '1,18'),
(92, 91, 18, '1,18'),
(93, 92, 18, '1,18'),
(94, 93, 18, '1,18'),
(95, 94, 18, '1,18'),
(96, 95, 18, '1,18'),
(97, 96, 18, '1,18'),
(98, 97, 18, '1,18'),
(99, 98, 18, '1,18'),
(100, 99, 18, '1,18'),
(101, 100, 18, '1,18'),
(102, 101, 18, '1,18'),
(104, 102, 37, '1,37'),
(105, 103, 37, '1,37'),
(106, 104, 37, '1,37'),
(107, 105, 37, '1,37'),
(108, 106, 37, '1,37'),
(109, 107, 37, '1,37'),
(110, 108, 37, '1,37'),
(111, 109, 37, '1,37'),
(112, 110, 37, '1,37'),
(113, 111, 37, '1,37'),
(114, 112, 37, '1,37'),
(115, 113, 37, '1,37'),
(116, 114, 37, '1,37'),
(117, 115, 37, '1,37'),
(118, 116, 37, '1,37'),
(119, 117, 37, '1,37'),
(120, 118, 37, '1,37'),
(121, 119, 37, '1,37'),
(122, 120, 37, '1,37');

-- --------------------------------------------------------

--
-- Table structure for table `produc_img_history`
--

CREATE TABLE `produc_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Smokee BBQ', 1, NULL, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(2, 'Project-3', 1, 1, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(3, 'Project-2', 1, 1, NULL, NULL),
(4, 'Project-1', 1, 1, NULL, NULL),
(5, 'sdfwwww', 1, 1, NULL, NULL),
(6, 'undefined', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Employee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `candidate_cc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `send_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `send_message`
--

INSERT INTO `send_message` (`id`, `candidate_name`, `candidate_email`, `subject`, `candidate_cc`, `description`, `file`, `send_by`, `created_at`) VALUES
(3, 'fgdfg', 'mdbijon@gmail.com', 'sdf', 'mdbijon@gmail.com', 'mdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.com', NULL, 1, '2023-08-19 04:33:25'),
(4, 'dsfsfsdf', 'mdbijon@gmail.com', 'ssss', '', 'In Laravel, you can easily attach files to a model using the attach method, especially when dealing with relationships like Eloquent\'s BelongsToMany or HasMany relationships. However, since you mentioned attaching files, I\'ll assume you\'re working with file uploads in the context of a form submission.', '/backend/files/SVfaIInZEZCDCGheQiF2.png', 1, '2023-08-19 05:02:28'),
(5, 'dfgdfg', 'mdbijon@gmail.com', 'ssss', '', 'sfdsf', '/backend/files/GwEyNFbWS6qZzWUCwjOE.png', 1, '2023-08-19 05:14:41'),
(6, 'dsfdsfsdf', 'mdbijon@gmail.com', 'fdgdfg', '', 'fggfdg', '', 1, '2023-08-19 06:30:44'),
(7, 'Md. Gazi Giash Uddin', 'ib@gmail.com', 'New Subject', '', 'Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate', '/backend/files/88wrHYRxDG94tmZ0Endb.png', 1, '2023-08-19 06:31:37'),
(8, 'Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'ffff', '/backend/files/m6RklwhKmcSifwgvTfH0.png', 1, '2023-08-19 06:45:59'),
(9, 'Abdur Rahman Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:', '/backend/files/u1ujrkQMqTX6ES7VZh69.png', 1, '2023-08-19 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `images`, `href`, `status`) VALUES
(1, '/slider_image/01.jpg', NULL, 1),
(2, '/slider_image/02.jpg', NULL, 1),
(3, '/slider_image/03.jpg', NULL, 1),
(4, '/slider_image/04.jpg', NULL, 1),
(5, '/slider_image/05.jpg', NULL, 1),
(6, '/slider_image/06.jpg', NULL, 1),
(7, '/slider_image/07.jpg', NULL, 1),
(8, '/slider_image/08.jpg', NULL, 1),
(9, '/slider_image/09.jpg', NULL, 1),
(10, '/slider_image/10.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'primary key of project table',
  `emp_id` varchar(255) DEFAULT NULL COMMENT 'primary key of employee table',
  `type` tinyint(4) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Processing, 3 = Done',
  `email_files` varchar(3) DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `emp_id`, `type`, `start_date`, `end_date`, `done_date`, `image`, `entry_by`, `status`, `email_files`, `created_at`, `updated_at`) VALUES
(1, 'bijon1114144', 'sdlkflskdfsdf\r\nsdf\r\nsdf', 3, '2', 1, '2023-07-19', '2023-07-26', NULL, '/backend/files/QESG49nK6XzDuTd953Lm.env', 1, 1, 'No', NULL, NULL),
(2, 'Tesssss', 'fasd', 4, '1', 1, '2023-07-14', '2023-07-28', NULL, '/backend/files/tAWzPRjL7xUKnSUcOpW3.env', 1, 2, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `name`, `email`, `image`, `phone_number`, `address`, `website`, `github`, `twitter`, `instagram`, `facebook`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 'JONS', 'admin@gmail.com', '/backend/files/Gj1CClu5li9lnBa8bqxx.jpg', '343434', 'Dhaka', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'admin', NULL, '$2a$12$KTM4o4shushdJtyHggJOEuoVzhTde88F2M2VZ1B89egoavVyQOycG', NULL, 1, '2023-06-22 03:20:43', '2023-07-14 04:47:21', 1),
(2, 2, 6, 'Employee6 Six Emp', 'OnlinessSit2221@gmail.com', NULL, '324234', '', NULL, NULL, NULL, NULL, NULL, 'Employee6', NULL, '$2y$10$4kiOBSk.NaB6ufs2rjKbU.BprUAELnD8vKdxbe0kSTRD3c6p7AlO2', NULL, 1, NULL, NULL, 1),
(3, 2, 5, 'Md. Gazi Giash Uddin Bijon', 'onlinesoft@gmail.com', '/backend/files/lPPEVF6wwxNYZVZKTUNH.jpg', '+8801915728982', 'Mirpur-1', 'null', 'null', 'null', 'null', 'null', 'Employee-4', NULL, '$2y$10$Dlo8W8qUsp./g0/KVKorr.eWVqATVLV4jyGjWApqsk6TFrl6adMhK', NULL, 1, NULL, NULL, 1),
(4, 2, 4, 'Employee-3', 'we2022@gmail.com', NULL, '343434', '', NULL, NULL, NULL, NULL, NULL, 'PasswordPassword', NULL, '$2y$10$oOca7klZbcO0xXV8glSx6ORQBIPsXOVNmZBdnex7JzeT7cjlyiLcm', NULL, 1, NULL, '2023-09-03 04:40:03', 1),
(5, 2, 2, 'Md. JONS', 'Ibraheem@gmail.com', '/backend/files/mIpe6aKfR5Lw5NDWFHAF.jpg', '+8801915728982', 'Mirpur-1', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', '', '', '112233456', NULL, '$2y$10$j0HQIkxcqrnN5Dt7hlm3rOhLzq.TBOhrbtmQi9tkrnybICy91U5lS', NULL, 1, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_pay`
--
ALTER TABLE `annual_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circumstances`
--
ALTER TABLE `circumstances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_docs`
--
ALTER TABLE `employee_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_holidays_used_holiday` (`used_holiday`);

--
-- Indexes for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_list`
--
ALTER TABLE `leave_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_rule`
--
ALTER TABLE `leave_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_group`
--
ALTER TABLE `pay_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes_values_history`
--
ALTER TABLE `product_attributes_values_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_categories`
--
ALTER TABLE `produc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_pay`
--
ALTER TABLE `annual_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attributes_values`
--
ALTER TABLE `attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `circumstances`
--
ALTER TABLE `circumstances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_docs`
--
ALTER TABLE `employee_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_list`
--
ALTER TABLE `leave_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_rule`
--
ALTER TABLE `leave_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_group`
--
ALTER TABLE `pay_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes_values_history`
--
ALTER TABLE `product_attributes_values_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produc_categories`
--
ALTER TABLE `produc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
