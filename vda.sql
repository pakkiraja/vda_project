-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 02:32 PM
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
-- Database: `vda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `education` text DEFAULT NULL,
  `pancard` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  `esic` varchar(255) DEFAULT NULL,
  `uanno` varchar(255) DEFAULT NULL,
  `aadharno` varchar(255) DEFAULT NULL,
  `passport_photo` varchar(255) DEFAULT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `10th_marksheet` varchar(255) DEFAULT NULL,
  `degree_certificate` varchar(255) DEFAULT NULL,
  `pg_certificate` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `son_count` int(11) DEFAULT NULL,
  `daughter_count` int(11) DEFAULT NULL,
  `personal_email` varchar(255) DEFAULT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `gratuity` decimal(10,2) DEFAULT 0.00,
  `spl_allowance` decimal(10,2) DEFAULT 0.00,
  `ita` decimal(10,2) DEFAULT 0.00,
  `hra` decimal(10,2) DEFAULT 0.00,
  `ctc` decimal(10,2) DEFAULT 0.00,
  `manager_id` int(11) DEFAULT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `decrypt_pass` varchar(255) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `role` enum('USER','ADMIN','SUPERADMIN','HR') NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attendance` tinyint(1) DEFAULT 0,
  `profile_pic` varchar(255) DEFAULT 'default-avatar.png',
  `phone_number` varchar(20) DEFAULT NULL,
  `secondary_phone_number` int(11) DEFAULT NULL,
  `joining_date` text DEFAULT NULL,
  `work_location` varchar(255) DEFAULT NULL,
  `employment_type` enum('Full-time','Part-time','Contract','Intern') DEFAULT NULL,
  `leave_balance` int(11) NOT NULL DEFAULT 12,
  `nationality` varchar(100) DEFAULT NULL,
  `blood_group` enum('O+','O-','A+','B+','B-','A-','AB+','AB-') DEFAULT NULL,
  `preferred_language` enum('Tamil','English','Hindi') DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `employee_id`, `name`, `age`, `dob`, `gender`, `education`, `pancard`, `bankname`, `branch`, `account_no`, `ifsc_code`, `esic`, `uanno`, `aadharno`, `passport_photo`, `aadhar`, `10th_marksheet`, `degree_certificate`, `pg_certificate`, `cv`, `father_name`, `mother_name`, `spouse_name`, `son_count`, `daughter_count`, `personal_email`, `marital_status`, `address1`, `address2`, `address3`, `city`, `state`, `gratuity`, `spl_allowance`, `ita`, `hra`, `ctc`, `manager_id`, `manager_name`, `email`, `position`, `username`, `pass`, `decrypt_pass`, `status`, `role`, `department_id`, `created_at`, `updated_at`, `attendance`, `profile_pic`, `phone_number`, `secondary_phone_number`, `joining_date`, `work_location`, `employment_type`, `leave_balance`, `nationality`, `blood_group`, `preferred_language`, `zip_code`) VALUES
(12534, 'EMP2039', 'Administrator', 23, '2001-10-25', 'Male', '{\"qualification1\":\"\",\"college1\":\"\",\"year1\":\"\",\"qualification2\":\"\",\"college2\":\"\",\"year2\":\"\"}', 'PNTPS1325F', 'Indian Bank', 'Karukkupettai', '6650540781', 'IDIB000K232', NULL, NULL, '692506553488', '6cd3cc347f89d9acf3e120809e062fe1.jpg', '2402f01d9a038ffd4f0d63a9ba66c3b4.jpeg', '5844dfbfc2a3002eab48b4a55082c19b.jpeg', 'fff068b56ea12bc205b0b556e01db01a.jpeg', NULL, 'f4fa84b8886e5f41db3ce1ed5a5fae2d.pdf', 'Seenivasan', 'Uma', 'Spouse', 0, 0, 'codersaro@gmail.com', 'Single', '3,main road', 'thimmarajampettai', 'walajabad post', 'kanchipuram', 'Tamil Nadu', 0.00, 0.00, 0.00, 0.00, 50000.00, NULL, 'Vijay', 'admin@gmail.com', 'CEO', 'ADMIN', '$2y$10$t/KFBkYBR5rpky35EgU.3OR04LcGFOc05AtKHwOW4Gb1BKH4JdxOi', 'admin@1234', 'active', 'SUPERADMIN', NULL, '2024-07-13 13:11:09', '2025-03-01 13:55:01', 0, '05f141462b316bda59969c047b76eacc.png', '8838976048', 0, '2024-06-21', 'Perumbakkam', 'Full-time', 10, 'Indian', 'B+', NULL, '631605'),
(12539, 'EMP8232173', 'Lathika Saran', 0, '', 'Female', '{\"qualification1\":\"\",\"college1\":\"\",\"year1\":\"\",\"qualification2\":\"\",\"college2\":\"\",\"year2\":\"\"}', 'PNTPS1325F', '', '', '', '', '', '', '692506553488', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, '', 'Single', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 40000.00, NULL, NULL, 'lathika@gmail.com', '2', 'EMP81692', '$2y$10$FNdcY4bnz2uodrkyLuWiIuj9eG6tzSUPK45mA3ZAWpgna5Qe.vgUe', 'lathika@123', 'active', 'USER', 0, '2024-07-22 05:10:57', '2024-12-04 12:51:10', 0, 'default-avatar.png', '8667627885', 0, '', NULL, 'Full-time', 10, 'Indian', 'A+', NULL, ''),
(12542, 'EMP8232170', 'testman', 20, '2002-10-31', 'Male', '{\"qualification1\":\"bachelor of science\",\"college1\":\"harvard university\",\"year1\":\"2022\",\"qualification2\":\"\",\"college2\":\"\",\"year2\":\"\"}', 'PNTPS1325F', '', '', '', '', '', '', '692506553488', 'bdeb3ca699d3112081ae5f59ca55ed3f.png', 'e7b9bb9e55abe418fa56e1835244ec94.png', '5844dfbfc2a3002eab48b4a55082c19b.jpeg', '96d95212137f863eac84472756a070ab.png', 'f4b39da45ca2dd60471684caea2c0241.png', '3bee419d69fe709c1098c3942d2ce6fc.pdf', 'Father', 'Mother', 'Spouse', 0, 0, 'personalemail@gmail.com', 'Single', '3,main road', 'xyz', 'XYZ', 'kanchipuram', 'Tamil Nadu', 0.00, 0.00, 0.00, 0.00, 28000.00, 0, NULL, 'testman@gmail.com', '', 'EMP8232170', '$2y$10$5n9dSmg2VXcU7KYWUCuG4eIayYDnZN0h9ZfQ1THmnIYqDb5hyrbii', 'testman@123', 'active', 'USER', 1, '2024-10-13 06:27:39', '2024-11-25 06:16:40', 0, '3226d9eb0f1c161e2ad5fa3dcfa11730.png', '09361187937', 0, '2024-10-15', NULL, 'Full-time', 10, 'Indian', 'B+', NULL, '631605'),
(12543, 'EMP6786989', 'Aamrapali', 20, '2004-01-15', 'Female', NULL, 'PNTPS1325F', '', '', '', '', '', '', '692506553488', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, '', 'Single', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 24999.99, 0, NULL, 'hr@gmail.com', '12', 'EMP6786989', '$2y$10$ogZZuLX5vAGO9Y4uspzJyObVxS75OHAaYigtaLGHX9576L1oopphK', 'hr@123', 'active', 'HR', 0, '2024-10-14 04:19:51', '2025-01-05 14:30:30', 0, 'default-avatar.png', '8667627885', NULL, '2024-10-01', NULL, 'Part-time', 12, NULL, 'A+', NULL, ''),
(12544, 'EMP1775851', 'Lakshitha', 21, '2004-01-02', 'Female', NULL, 'PNTPS1325F', '', '', '', '', '', '', '692506553488', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, '', 'Single', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 50000.00, NULL, NULL, 'lakshitha@gmail.com', '', 'EMP1775851', '$2y$10$BmwCuDel1.Dck0OXFU2k2uxC7ZnO6tFDer/zAxVZtPTZ9fSDImm.m', 'lakshitha@123', 'active', 'ADMIN', 0, '2024-10-24 11:12:39', '2024-12-04 12:26:15', 0, 'default-avatar.png', '9925678283', NULL, '2024-10-21', NULL, 'Full-time', 8, NULL, 'O+', NULL, ''),
(12546, 'EMP9514730', 'asha', 0, '', 'Male', NULL, 'PNTPS1325F', '', '', '', '', '', '', '692506553488', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, 0, '', 'Single', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 35000.00, 12544, NULL, 'asha.bhat@vdasolutions.co.in', '1', 'EMP9514730', '$2y$10$ftP1qmSUYK5WhcVME6ZBkejP79fa5rDgLuu.pD1h8ue8f7HdwE0dy', 'asha@123', 'active', 'USER', NULL, '2024-10-27 05:03:01', '2024-10-27 16:45:31', 0, 'default-avatar.png', '', NULL, '2024-10-28', NULL, 'Full-time', 12, NULL, 'B+', NULL, ''),
(12554, 'EMP5777609', 'aamra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.02, 12544, NULL, 'aamravenkat@gmail.com', '4', 'EMP5777609', '$2y$10$9/bSh37YUiuM3FqWnoPGLeD.ICZyhCo4PObp5erkvFIhVUc1hVJdy', 'aamra', 'active', 'USER', 1, '2025-03-15 12:59:06', '2025-03-15 12:59:06', 0, 'default-avatar.png', NULL, NULL, '2025-03-11', NULL, 'Full-time', 12, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id` int(11) NOT NULL,
  `assetid` varchar(50) NOT NULL,
  `assetname` varchar(100) NOT NULL,
  `assetimage` varchar(255) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 0,
  `vacant` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`id`, `assetid`, `assetname`, `assetimage`, `available`, `vacant`, `created_at`) VALUES
(1, 'asset_671a1b86793d7', 'Notebook', '6b560832a68746e74afa4e560d56c277.png', 20, 12, '2024-10-24 15:33:50'),
(2, 'asset_6719faac6ee36', 'Notebookk', '6b560832a68746e74afa4e560d56c277.png', 12, 14, '2024-10-24 13:13:40'),
(3, 'asset_671dc80568237', 'Laptop', '15f9e8c6f86e7d6fd732504c4e6e66e8.jpg', 10, 1, '2024-10-27 10:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asset_requests`
--

CREATE TABLE `tbl_asset_requests` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `assetid` varchar(50) NOT NULL,
  `need_count` int(11) NOT NULL DEFAULT 1,
  `status` enum('approved','rejected','pending') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_asset_requests`
--

INSERT INTO `tbl_asset_requests` (`id`, `userid`, `assetid`, `need_count`, `status`) VALUES
(1, 12534, 'asset_671a1b86793d7', 1, 'approved'),
(4, 12539, 'asset_671a1b86793d7', 1, 'approved'),
(6, 12534, 'asset_671dc80568237', 1, 'approved'),
(7, 12534, 'asset_6719faac6ee36', 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `login_time` time DEFAULT NULL,
  `logout_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `user_id`, `date`, `login_time`, `logout_time`) VALUES
(1, 12534, '2024-10-24', '15:24:50', '15:47:56'),
(18, 12534, '2024-07-14', '12:16:57', '15:57:09'),
(19, 12534, '2024-07-15', '06:15:42', '06:15:49'),
(20, 12534, '2024-07-15', '08:36:45', '12:12:49'),
(21, 12534, '2024-07-16', '08:59:36', '09:47:27'),
(22, 12534, '2024-07-18', '07:02:14', '12:54:13'),
(23, 12534, '2024-07-19', '05:58:31', '07:23:28'),
(24, 12534, '2024-07-26', '09:12:36', '09:12:52'),
(25, 12534, '2024-07-26', '09:13:02', '09:13:04'),
(35, 12534, '2024-10-12', '21:10:24', '21:22:59'),
(36, 12537, '2024-10-12', '23:00:01', '23:01:56'),
(37, 12534, '2024-10-14', '09:46:55', '09:47:55'),
(38, 12542, '2024-10-14', '14:48:25', '17:41:11'),
(39, 12534, '2024-10-23', '13:12:01', NULL),
(40, 12542, '2024-10-24', '15:25:59', '15:48:22'),
(41, 0, '2024-10-24', '16:57:28', NULL),
(42, 12539, '2024-10-24', '17:29:14', '17:30:42'),
(43, 12543, '2024-10-24', '17:44:35', NULL),
(44, 12534, '2024-10-26', '13:01:02', '15:02:32'),
(45, 12544, '2024-10-26', '14:25:35', '15:03:33'),
(46, 12539, '2024-10-27', '08:58:51', NULL),
(47, 12534, '2024-10-27', '10:14:11', '21:51:46'),
(48, 12534, '2024-10-28', '12:00:51', '12:19:49'),
(49, 12534, '2024-10-29', '10:57:37', '16:24:34'),
(50, 12534, '2024-11-14', '18:14:18', NULL),
(51, 12550, '2024-12-04', '18:04:10', '18:09:41'),
(52, 12534, '2024-12-05', '14:13:58', NULL),
(53, 12553, '2024-12-22', '12:56:59', NULL),
(54, 12534, '2025-03-01', '19:12:34', '19:12:51'),
(55, 12534, '2025-03-15', '18:50:43', NULL),
(56, 12534, '2025-05-19', '12:58:34', '12:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_common_allowances_deductions_bonus`
--

CREATE TABLE `tbl_common_allowances_deductions_bonus` (
  `id` int(11) NOT NULL,
  `type` enum('allowance','deduction','bonus') NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_percentage` tinyint(1) DEFAULT 0,
  `percentage` decimal(5,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_common_allowances_deductions_bonus`
--

INSERT INTO `tbl_common_allowances_deductions_bonus` (`id`, `type`, `name`, `is_percentage`, `percentage`, `amount`, `created_at`) VALUES
(2, 'deduction', 'PF', 1, 2.00, 1000.00, '2024-10-27 03:21:09'),
(3, 'deduction', 'GST', 1, 0.00, 0.00, '2024-10-27 03:21:31'),
(6, 'bonus', 'Christmas Bonus', 1, 5.00, 0.00, '2024-11-23 07:34:06'),
(7, 'bonus', 'reward bonus', 0, NULL, 1000.00, '2024-11-27 22:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `complaint_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','in_progress','resolved','closed') NOT NULL DEFAULT 'pending',
  `priority` enum('low','medium','high','urgent') NOT NULL DEFAULT 'medium',
  `user_type` enum('user','co_employee','hr','manager') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subject` varchar(255) DEFAULT NULL,
  `happened_at` date DEFAULT NULL,
  `admin_action` text DEFAULT NULL,
  `action_taken_by` int(10) UNSIGNED DEFAULT NULL,
  `action_taken_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaints`
--

INSERT INTO `tbl_complaints` (`complaint_id`, `user_id`, `description`, `status`, `priority`, `user_type`, `created_at`, `updated_at`, `subject`, `happened_at`, `admin_action`, `action_taken_by`, `action_taken_at`) VALUES
(1, 0, 'my co employee - xyz bullied me today', 'resolved', 'medium', 'co_employee', '2024-10-24 11:37:52', '2024-10-26 08:33:00', 'bullying', '2024-10-24', 'he has been suspended', NULL, '2024-10-24 06:13:50'),
(2, 12534, 'An employee named xxxx in yyy department bullied me today.', 'resolved', 'medium', 'co_employee', '2024-07-20 16:34:13', '2024-10-26 08:32:59', 'Bullying', '2024-07-20', 'He has been warned and suspended for 5 days!', NULL, '2024-07-21 05:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Healthcare', 'manage health related boundaries.', '2024-11-25 04:29:21', '2024-11-25 04:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_range` varchar(50) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `name`, `date`, `time_range`, `created_by`, `created_at`, `event_description`) VALUES
(1, 'Rewards Distribution', '2024-08-29', '11:00 - 01:30', 'Saravanan', '2024-07-19 01:40:12', 'Distribution of rewards for all employees.'),
(2, 'Diwali Celebration', '2024-10-30', '15:00 - 16:00', 'Administrator', '2024-10-24 04:06:18', 'Join us in celebrating the joyous festival of Diwali with lights, music, and festivities! Let’s come together to share happiness and spread the glow of this vibrant occasion.'),
(3, 'tect event ', '2024-10-25', '09:00 - 11:00', 'Administrator', '2024-10-24 05:12:58', 'emerging tech support event'),
(4, 'tech event', '2024-10-28', '10:00 - 13:59', 'Administrator', '2024-10-26 23:25:31', 'technical event');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `productivity_rating` tinyint(4) NOT NULL,
  `quality_rating` tinyint(4) NOT NULL,
  `punctuality_rating` tinyint(4) NOT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `employee_id`, `manager_id`, `productivity_rating`, `quality_rating`, `punctuality_rating`, `comments`, `created_at`) VALUES
(1, 12542, 12539, 3, 3, 3, 'need to improve more', '2024-10-23 07:28:54'),
(2, 0, 12539, 5, 4, 5, 'i appreciate your ontime completion', '2024-10-24 06:35:23'),
(3, 12539, 0, 5, 5, 5, 'good lathika', '2024-10-24 07:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `holiday_date`, `title`, `created_at`, `updated_at`) VALUES
(1, '2024-07-17', 'Muharram', '2024-07-14 14:24:39', '2024-07-14 14:24:39'),
(2, '2024-08-15', 'Independence Day ', '2024-07-14 14:25:27', '2024-07-14 14:25:27'),
(3, '2024-09-07', 'Ganesh chadhurthi', '2024-07-18 07:25:51', '2024-07-18 07:25:51'),
(4, '2024-10-11', 'Vijaya Dhasami', '2024-10-12 14:17:39', '2024-10-14 09:17:51'),
(5, '2024-10-31', 'Diwali (Deepavali)', '2024-10-24 09:30:58', '2024-10-24 09:30:58'),
(6, '2024-11-01', 'Diwali (Deepavali)', '2024-10-24 09:31:11', '2024-10-24 09:31:11'),
(7, '2024-12-25', 'Christmas', '2024-10-24 09:31:32', '2024-10-24 09:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_request`
--

CREATE TABLE `tbl_leave_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_reason` text NOT NULL,
  `reject_reason` text DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `leave_type_duration` enum('single_day','multi_days') NOT NULL DEFAULT 'single_day',
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `leave_type` text NOT NULL,
  `leave_pay_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_leave_request`
--

INSERT INTO `tbl_leave_request` (`id`, `user_id`, `leave_reason`, `reject_reason`, `status`, `created_at`, `leave_type_duration`, `start_date`, `end_date`, `leave_type`, `leave_pay_type`) VALUES
(5, 12534, 'dfdfdf', NULL, 'Pending', '2024-07-17 07:13:45', 'single_day', '2024-07-18', '2024-07-18', '', 'unpaid'),
(6, 12534, 'test', NULL, 'Approved', '2024-07-17 07:14:10', 'multi_days', '2024-07-18', '2024-07-18', '', 'unpaid'),
(7, 12534, 'test', 'We are having important meeting on that day', 'Rejected', '2024-07-17 07:14:48', 'multi_days', '2024-07-18', '2024-07-27', '', 'unpaid'),
(8, 12534, 'gdfg', NULL, 'Approved', '2024-07-17 07:17:07', 'single_day', '2024-07-26', '2024-07-26', 'vacation', 'unpaid'),
(9, 12534, 'family function', 'Sorry, we are having important on that day.', 'Rejected', '2024-07-18 04:35:02', 'single_day', '2024-07-19', '2024-07-19', 'personal', 'unpaid'),
(10, 12542, 'i was suffering from fever', NULL, 'Approved', '2024-10-14 11:59:38', 'single_day', '2024-10-14', '2024-10-14', 'sick', 'unpaid'),
(11, 12539, 'testing', NULL, 'Approved', '2024-10-23 07:56:14', 'single_day', '2024-10-22', '2024-10-22', 'vacation', 'unpaid'),
(12, 12542, 'fever', NULL, 'Pending', '2024-10-23 10:09:43', 'single_day', '2024-10-24', '2024-10-24', 'sick', 'unpaid'),
(13, 12542, 'I was suffering from fever, pls approve my leave', NULL, 'Approved', '2024-10-24 09:14:43', 'single_day', '2024-10-24', '2024-10-24', 'sick', 'unpaid'),
(22, 12542, 'I am going to vacation', NULL, 'Pending', '2024-10-24 09:56:37', 'single_day', '2024-10-25', '2024-10-25', 'vacation', 'unpaid'),
(23, 12542, 'Need personal leave', NULL, 'Pending', '2024-10-24 09:56:52', 'multi_days', '2024-10-25', '2024-10-26', 'vacation', 'unpaid'),
(24, 12534, 'its my personal ', NULL, 'Approved', '2024-10-24 10:44:05', 'single_day', '2024-10-25', '2024-10-25', 'personal', 'unpaid'),
(25, 0, 'sick ', NULL, 'Approved', '2024-10-24 11:35:23', 'single_day', '2024-10-25', '2024-10-25', 'sick', 'unpaid'),
(26, 0, 'sick ', 'you dont enough time to complete the  project , so do come', 'Rejected', '2024-10-24 11:35:24', 'single_day', '2024-10-25', '2024-10-25', 'sick', 'unpaid'),
(27, 0, 'ooty tour with colleagues', NULL, 'Approved', '2024-10-24 11:47:13', 'multi_days', '2024-10-28', '2024-10-30', 'vacation', 'unpaid'),
(28, 12539, 'want to spend time with my family\r\n', NULL, 'Approved', '2024-10-24 12:03:06', 'single_day', '2024-10-31', '2024-10-31', 'family', 'unpaid'),
(29, 12543, 'personal', 'you dont enough time to complete the project', 'Rejected', '2024-10-24 12:15:12', 'single_day', '2024-10-25', '2024-10-25', 'personal', 'unpaid'),
(30, 12534, 'Test long Leave', NULL, 'Approved', '2024-10-27 16:18:03', 'multi_days', '2024-10-27', '2024-11-21', 'personal', 'unpaid'),
(33, 12534, 'Fever', NULL, 'Approved', '2025-05-04 06:18:50', 'single_day', '2025-05-05', '2025-05-05', 'sick', 'unpaid'),
(34, 12534, 'Cold', NULL, 'Approved', '2025-05-04 06:26:35', 'single_day', '2025-05-05', '2025-05-05', 'sick', 'unpaid'),
(35, 12534, 'Cough', NULL, 'Approved', '2025-05-04 06:30:08', 'single_day', '0000-00-00', '0000-00-00', 'sick', 'unpaid'),
(36, 12543, 'Test', NULL, 'Pending', '2025-05-19 07:03:44', 'single_day', '2025-05-20', '2025-05-20', 'vacation', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_messages`
--

INSERT INTO `tbl_messages` (`id`, `user_id`, `sender_id`, `message`, `created_at`, `read`) VALUES
(7, 12537, 'Admin', 'Hello Richard, pls complete your profile details', '2024-10-12 13:05:00', 1),
(8, 12542, 'Admin', 'dear testman, Pls fill your profile details', '2024-10-13 03:32:23', 1),
(12, 12534, 'Administrator', 'hii', '2024-10-13 03:38:41', 1),
(13, 12542, 'hr', 'Come to ofice room', '2024-10-24 04:42:27', 1),
(14, 0, 'Administrator', 'pls enter personal details', '2024-10-24 05:43:16', 1),
(15, 12543, 'Administrator', 'enter your ps details pls', '2024-10-24 06:44:10', 1),
(16, 12539, 'Administrator', 'enter your details', '2024-10-26 23:47:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notes`
--

CREATE TABLE `tbl_notes` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','completed') DEFAULT 'pending',
  `remind` enum('yes','no') DEFAULT 'no',
  `datetime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_notes`
--

INSERT INTO `tbl_notes` (`id`, `employee_id`, `name`, `description`, `status`, `remind`, `datetime`, `created_at`) VALUES
(3, 12534, 'demo meet', 'demo meet', 'completed', 'yes', '2024-11-15 18:19:00', '2024-11-14 12:49:30'),
(4, 12543, 'Zoom meeting', 'Zoom meeting evening 6 pm', 'completed', 'yes', '2024-11-23 19:43:00', '2024-11-23 13:13:53'),
(5, 12546, 'Evening meeting', 'Zoom call', 'pending', 'yes', '2024-12-28 18:00:00', '2024-12-28 07:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(11) NOT NULL,
  `notice` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`id`, `notice`, `created_at`) VALUES
(3, '<p>We are pleased to announce that we have optimized the payroll processing system for all <strong>employees</strong>. This improvement aims to streamline <span style=\"text-decoration: underline;\">payroll operations</span>, ensure accuracy, and enhance efficiency across the organizations.</p>\r\n<p>&nbsp;</p>\r\n<p>Key enhancements include:</p>\r\n<p>- Automated calculations to reduce manual errors.</p>\r\n<p>- Improved integration with HR systems for seamless data synchronization.</p>\r\n<p>- Enhanced reporting capabilities to provide insights into payroll metrics.</p>\r\n<p>&nbsp;</p>\r\n<p>These optimizations will contribute to a more efficient payroll process, ensuring timely and accurate payments to all employees.</p>\r\n<p>Thank you for your continued dedication and support.</p>\r\n<p>HR Team</p>\r\n<p>&nbsp;</p>', '2024-07-14 11:10:06'),
(9, '<p>xyz joined today</p>', '2024-10-27 04:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `read` tinyint(1) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`id`, `user_id`, `message`, `created_at`, `read`, `title`) VALUES
(1, 12534, 'He has been warned and suspended for 5 days!', '2024-07-21 10:34:16', 1, 'Complaint status'),
(9, 12542, 'Your leave request has been approved', '2024-10-14 14:36:47', 1, 'Leave Application Status'),
(10, 12539, 'Your leave request has been approved', '2024-10-23 09:56:31', 1, 'Leave Application Status'),
(14, 12542, 'You have been rewarded, check the rewards section.', '2024-10-23 13:58:07', 1, 'REWARDS'),
(15, 12542, 'Your asset request has been approved.', '2024-10-24 09:26:25', 1, 'Asset Request Status'),
(16, 12542, 'Your leave request has been approved', '2024-10-24 09:38:55', 1, 'Leave Application Status'),
(17, 12542, 'Your asset request has been approved.', '2024-10-24 10:02:45', 1, 'Asset Request Status'),
(18, 12542, 'Your asset request has been approved.', '2024-10-24 10:08:06', 1, 'Asset Request Status'),
(19, 12534, 'Your leave request has been approved', '2024-10-24 10:44:32', 1, 'Leave Application Status'),
(20, 12534, 'Your asset request has been approved.', '2024-10-24 11:03:10', 1, 'Asset Request Status'),
(21, 12534, 'Your asset request has been rejected.', '2024-10-24 11:10:19', 1, 'Asset Request Status'),
(22, 0, 'Your leave request has been rejected.', '2024-10-24 11:39:57', 0, 'Leave Application Status'),
(23, 0, 'Your leave request has been approved', '2024-10-24 11:40:02', 0, 'Leave Application Status'),
(24, 0, 'Your asset request has been approved.', '2024-10-24 11:42:24', 0, 'Asset Request Status'),
(25, 0, 'Your asset request has been approved.', '2024-10-24 11:42:35', 0, 'Asset Request Status'),
(26, 0, 'he has been suspended', '2024-10-24 11:43:50', 0, 'Complaint Status'),
(27, 0, 'Your leave request has been approved', '2024-10-24 11:47:54', 0, 'Leave Application Status'),
(28, 0, 'You have been rewarded, check the rewards section.', '2024-10-24 11:53:05', 0, 'REWARDS'),
(29, 0, 'You have been rewarded, check the rewards section.', '2024-10-24 11:53:16', 0, 'REWARDS'),
(30, 12539, 'Your leave request has been approved', '2024-10-24 12:03:20', 1, 'Leave Application Status'),
(31, 12539, 'Your asset request has been approved.', '2024-10-24 12:04:24', 1, 'Asset Request Status'),
(32, 12539, 'Your asset request has been rejected.', '2024-10-24 12:04:38', 1, 'Asset Request Status'),
(33, 12544, 'You have been rewarded, check the rewards section.', '2024-10-26 08:42:12', 1, 'REWARDS'),
(38, 12543, 'Your leave request has been rejected.', '2024-10-27 04:47:13', 0, 'Leave Application Status'),
(39, 12534, 'Your asset request has been approved.', '2024-10-27 04:58:21', 1, 'Asset Request Status'),
(40, 12534, 'Your leave request has been approved', '2024-10-28 10:46:24', 1, 'Leave Application Status'),
(41, 12534, 'Your leave request has been approved', '2025-04-04 08:19:01', 1, 'Leave Application Status'),
(42, 12534, 'Your leave request has been approved', '2025-05-04 08:24:41', 1, 'Leave Application Status'),
(43, 12534, 'Your leave request has been approved', '2025-05-04 08:26:45', 1, 'Leave Application Status'),
(44, 12534, 'Your leave request has been approved', '2025-05-04 12:02:24', 1, 'Leave Application Status');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parking`
--

CREATE TABLE `tbl_parking` (
  `id` int(11) NOT NULL,
  `parking_type` enum('car','bike') DEFAULT NULL,
  `slot_number` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `allocated_to` varchar(255) DEFAULT NULL,
  `status` enum('available','occupied') DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parking_requests`
--

CREATE TABLE `tbl_parking_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_type` enum('car','bike') DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `vehicle_number` varchar(50) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_parking_requests`
--

INSERT INTO `tbl_parking_requests` (`id`, `user_id`, `vehicle_type`, `slot_id`, `vehicle_number`, `status`, `created_at`, `updated_at`) VALUES
(21, 12542, 'car', 8, 'tn02 b0903', 'approved', '2024-10-24 09:14:02', '2024-10-24 11:38:42'),
(22, 12534, 'car', 1, 'tn 21B 2115', 'approved', '2024-10-24 10:48:33', '2024-10-24 10:50:45'),
(28, 12539, 'bike', 4, 'tn 34 l90', 'approved', '2024-10-24 12:00:59', '2024-10-27 04:46:09'),
(29, 12543, 'bike', 5, 'tn 21 b64', 'approved', '2024-10-24 12:14:50', '2025-05-04 06:24:21'),
(33, 12534, 'car', 6, 'tn02 b0903', 'approved', '2025-05-19 07:02:37', '2025-05-19 07:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parking_slots`
--

CREATE TABLE `tbl_parking_slots` (
  `slot_id` int(11) NOT NULL,
  `slot_name` varchar(50) NOT NULL,
  `occupied` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `vehicle_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_parking_slots`
--

INSERT INTO `tbl_parking_slots` (`slot_id`, `slot_name`, `occupied`, `created_at`, `user_id`, `vehicle_type`) VALUES
(1, 'left corner', 0, '2024-07-18 09:20:34', NULL, ''),
(2, 'Slot 2', 0, '2024-07-18 09:20:34', 0, 'bike'),
(3, 'first middle', 0, '2024-07-18 09:20:34', 0, 'bike'),
(4, 'Slot 4', 1, '2024-07-18 09:20:34', 12539, 'bike'),
(5, 'first right', 1, '2024-07-18 09:20:34', 12543, 'bike'),
(6, 'Slot 6', 1, '2024-07-18 09:20:34', 12534, 'car'),
(7, 'Slot 7', 0, '2024-07-18 09:20:34', 12534, 'car'),
(8, 'Slot 8', 1, '2024-07-18 09:20:34', 12542, 'car'),
(9, 'Slot 9', 0, '2024-07-18 09:20:34', NULL, ''),
(10, 'Slot 10', 0, '2024-07-18 09:20:34', NULL, ''),
(11, 'corner slot', 0, '2024-10-14 08:26:35', NULL, ''),
(12, 'right corner', 0, '2024-10-24 06:31:34', NULL, ''),
(13, 'Slot 11', 0, '2024-10-24 06:32:32', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payslip`
--

CREATE TABLE `tbl_payslip` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `allowances` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `deductions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `unpaid_leave_days` varchar(20) DEFAULT NULL,
  `bonuses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_payslip`
--

INSERT INTO `tbl_payslip` (`id`, `employee_id`, `basic_salary`, `allowances`, `deductions`, `unpaid_leave_days`, `bonuses`, `date`, `created_at`) VALUES
(5, 12546, 35000, '[]', '[{\"id\": \"1\", \"name\": \"ESI\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:32:25\", \"percentage\": \"0.75\", \"is_percentage\": \"1\"}, {\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"12.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"18.00\", \"is_percentage\": \"1\"}]', '0', '[{\"id\": \"1\", \"name\": \"Deepavali Bonus\", \"type\": \"bonus\", \"amount\": \"2500.00\", \"created_at\": \"2024-10-27 06:26:51\", \"percentage\": null, \"employee_id\": \"12546\", \"is_percentage\": \"0\"}]', '2024-10-27', '2024-10-27 11:12:42'),
(7, 12542, 28000, '[]', '[{\"id\": \"1\", \"name\": \"ESI\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:32:25\", \"percentage\": \"0.75\", \"is_percentage\": \"1\"}, {\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"12.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"18.00\", \"is_percentage\": \"1\"}]', '2', '[]', '2024-10-28', '2024-10-28 10:55:11'),
(8, 12539, 40000, '[]', '[{\"id\": \"1\", \"name\": \"ESI\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:32:25\", \"percentage\": \"0.75\", \"is_percentage\": \"1\"}, {\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"12.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"18.00\", \"is_percentage\": \"1\"}]', '0', '[]', '2024-11-14', '2024-11-14 12:47:06'),
(10, 12539, 40000, '[]', '[{\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"1000.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"5.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"18.00\", \"is_percentage\": \"1\"}]', '0', '[{\"id\": \"6\", \"name\": \"Christmas Bonus\", \"type\": \"bonus\", \"amount\": \"0.00\", \"created_at\": \"2024-11-23 13:04:06\", \"percentage\": \"5.00\", \"is_percentage\": \"1\"}, {\"id\": \"7\", \"name\": \"reward bonus\", \"type\": \"bonus\", \"amount\": \"1000.00\", \"created_at\": \"2024-11-28 04:11:01\", \"percentage\": null, \"is_percentage\": \"0\"}]', '2024-11-28', '2024-11-28 04:15:50'),
(11, 12542, 28000, '[]', '[{\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"1000.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"2.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"15.00\", \"is_percentage\": \"1\"}]', '0', '[{\"id\": \"6\", \"name\": \"Christmas Bonus\", \"type\": \"bonus\", \"amount\": \"0.00\", \"created_at\": \"2024-11-23 13:04:06\", \"percentage\": \"5.00\", \"is_percentage\": \"1\"}, {\"id\": \"7\", \"name\": \"reward bonus\", \"type\": \"bonus\", \"amount\": \"1000.00\", \"created_at\": \"2024-11-28 04:11:01\", \"percentage\": null, \"is_percentage\": \"0\"}]', '2024-11-28', '2024-11-28 04:18:16'),
(13, 12543, 25000, '[]', '[{\"id\": \"2\", \"name\": \"PF\", \"type\": \"deduction\", \"amount\": \"1000.00\", \"created_at\": \"2024-10-27 08:51:09\", \"percentage\": \"2.00\", \"is_percentage\": \"1\"}, {\"id\": \"3\", \"name\": \"GST\", \"type\": \"deduction\", \"amount\": \"0.00\", \"created_at\": \"2024-10-27 08:51:31\", \"percentage\": \"0.00\", \"is_percentage\": \"1\"}]', '0', '[{\"id\": \"6\", \"name\": \"Christmas Bonus\", \"type\": \"bonus\", \"amount\": \"0.00\", \"created_at\": \"2024-11-23 13:04:06\", \"percentage\": \"5.00\", \"is_percentage\": \"1\"}, {\"id\": \"7\", \"name\": \"reward bonus\", \"type\": \"bonus\", \"amount\": \"1000.00\", \"created_at\": \"2024-11-28 04:11:01\", \"percentage\": null, \"is_percentage\": \"0\"}]', '2024-12-14', '2024-12-14 09:17:21'),
(14, 12546, 35000, '[]', '[{\"id\":\"2\",\"type\":\"deduction\",\"name\":\"PF\",\"is_percentage\":\"1\",\"percentage\":\"2.00\",\"amount\":\"1000.00\",\"created_at\":\"2024-10-27 08:51:09\"},{\"id\":\"3\",\"type\":\"deduction\",\"name\":\"GST\",\"is_percentage\":\"1\",\"percentage\":\"0.00\",\"amount\":\"0.00\",\"created_at\":\"2024-10-27 08:51:31\"}]', '0', '[{\"id\":\"6\",\"type\":\"bonus\",\"name\":\"Christmas Bonus\",\"is_percentage\":\"1\",\"percentage\":\"5.00\",\"amount\":\"0.00\",\"created_at\":\"2024-11-23 13:04:06\"},{\"id\":\"7\",\"type\":\"bonus\",\"name\":\"reward bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"1000.00\",\"created_at\":\"2024-11-28 04:11:01\"},{\"id\":\"1\",\"employee_id\":\"12546\",\"type\":\"bonus\",\"name\":\"Deepavali Bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"2600.00\",\"created_at\":\"2024-10-27 06:26:51\"}]', '2025-03-01', '2025-03-01 13:44:23'),
(15, 12544, 50000, '[]', '[{\"id\":\"2\",\"type\":\"deduction\",\"name\":\"PF\",\"is_percentage\":\"1\",\"percentage\":\"2.00\",\"amount\":\"1000.00\",\"created_at\":\"2024-10-27 08:51:09\"},{\"id\":\"3\",\"type\":\"deduction\",\"name\":\"GST\",\"is_percentage\":\"1\",\"percentage\":\"0.00\",\"amount\":\"0.00\",\"created_at\":\"2024-10-27 08:51:31\"}]', '0', '[{\"id\":\"6\",\"type\":\"bonus\",\"name\":\"Christmas Bonus\",\"is_percentage\":\"1\",\"percentage\":\"5.00\",\"amount\":\"0.00\",\"created_at\":\"2024-11-23 13:04:06\"},{\"id\":\"7\",\"type\":\"bonus\",\"name\":\"reward bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"1000.00\",\"created_at\":\"2024-11-28 04:11:01\"}]', '2025-03-09', '2025-03-09 15:00:25'),
(16, 12546, 35000, '[]', '[{\"id\":\"2\",\"type\":\"deduction\",\"name\":\"PF\",\"is_percentage\":\"1\",\"percentage\":\"2.00\",\"amount\":\"1000.00\",\"created_at\":\"2024-10-27 08:51:09\"},{\"id\":\"3\",\"type\":\"deduction\",\"name\":\"GST\",\"is_percentage\":\"1\",\"percentage\":\"0.00\",\"amount\":\"0.00\",\"created_at\":\"2024-10-27 08:51:31\"}]', '0', '[{\"id\":\"6\",\"type\":\"bonus\",\"name\":\"Christmas Bonus\",\"is_percentage\":\"1\",\"percentage\":\"5.00\",\"amount\":\"0.00\",\"created_at\":\"2024-11-23 13:04:06\"},{\"id\":\"7\",\"type\":\"bonus\",\"name\":\"reward bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"1000.00\",\"created_at\":\"2024-11-28 04:11:01\"},{\"id\":\"1\",\"employee_id\":\"12546\",\"type\":\"bonus\",\"name\":\"Deepavali Bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"2600.00\",\"created_at\":\"2024-10-27 06:26:51\"}]', '2025-03-13', '2025-03-13 08:45:44'),
(17, 12542, 28000, '[]', '[{\"id\":\"2\",\"type\":\"deduction\",\"name\":\"PF\",\"is_percentage\":\"1\",\"percentage\":\"2.00\",\"amount\":\"1000.00\",\"created_at\":\"2024-10-27 08:51:09\"},{\"id\":\"3\",\"type\":\"deduction\",\"name\":\"GST\",\"is_percentage\":\"1\",\"percentage\":\"0.00\",\"amount\":\"0.00\",\"created_at\":\"2024-10-27 08:51:31\"}]', '0', '[{\"id\":\"6\",\"type\":\"bonus\",\"name\":\"Christmas Bonus\",\"is_percentage\":\"1\",\"percentage\":\"5.00\",\"amount\":\"0.00\",\"created_at\":\"2024-11-23 13:04:06\"},{\"id\":\"7\",\"type\":\"bonus\",\"name\":\"reward bonus\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"1000.00\",\"created_at\":\"2024-11-28 04:11:01\"},{\"id\":\"1\",\"employee_id\":\"12542\",\"type\":\"bonus\",\"name\":\"Test\",\"is_percentage\":\"0\",\"percentage\":null,\"amount\":\"200.00\",\"created_at\":\"2025-05-19 08:52:35\"}]', '2025-05-19', '2025-05-19 06:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_positions`
--

CREATE TABLE `tbl_positions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_positions`
--

INSERT INTO `tbl_positions` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Data analyst', 'data validation and visualization', 1, '2024-10-24 16:44:04', '2024-10-24 16:44:04'),
(3, 'senior manager', 'senior manager', 1, '2024-10-27 10:48:08', '2024-10-27 10:48:08'),
(4, 'Human Resources Manager', 'Oversee and manage the human resources department, including recruitment, employee relations, and compliance with labor laws', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(5, 'Software Engineer', 'Develop and maintain software applications and systems, ensuring quality and efficiency in coding practices', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(6, 'Product Manager', 'Guide the development of products from conception to launch, collaborating with cross-functional teams to ensure product success', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(7, 'Marketing Specialist', 'Develop and implement marketing strategies to promote products and services, conducting market research and analysis', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(8, 'Sales Representative', 'Drive sales growth by developing relationships with customers, identifying their needs, and offering appropriate solutions', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(9, 'Graphic Designer', 'Create visual concepts and designs for branding, advertising, and marketing materials', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(10, 'Customer Support Specialist', 'Provide assistance and support to customers, addressing inquiries and resolving issues related to products or services', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(11, 'Finance Analyst', 'Analyze financial data, prepare reports, and assist in budgeting and forecasting activities for the company', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(12, 'IT Support Technician', 'Provide technical support and troubleshooting for IT systems and equipment, ensuring smooth operations', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14'),
(13, 'Administrative Assistant', 'Provide administrative support, including scheduling meetings, managing communications, and organizing files', 1, '2024-10-28 12:17:14', '2024-10-28 12:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_allowances_deductions_bonus`
--

CREATE TABLE `tbl_private_allowances_deductions_bonus` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `type` enum('allowance','deduction','bonus') NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_percentage` tinyint(1) DEFAULT 0,
  `percentage` decimal(5,2) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_private_allowances_deductions_bonus`
--

INSERT INTO `tbl_private_allowances_deductions_bonus` (`id`, `employee_id`, `type`, `name`, `is_percentage`, `percentage`, `amount`, `created_at`) VALUES
(1, 12542, 'bonus', 'Test', 0, NULL, 200.00, '2025-05-19 03:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rewards`
--

CREATE TABLE `tbl_rewards` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rewards`
--

INSERT INTO `tbl_rewards` (`id`, `employee_id`, `subject`, `description`, `image`, `created_at`) VALUES
(4, 12542, 'Best employee of the month', 'Congrats, You have been choose for best Employee of this month (October 2024) ', '49b8c11b0bf638b86a2c338859120d7f.jpeg', '2024-10-23 13:58:07'),
(5, 12544, 'Reliance trends offer- 1000rs', 'project completed within given time ', 'e9b48d8aa37f250380aaf7436a2ec4af.png', '2024-10-24 11:53:05'),
(6, 12544, 'Reliance trends offer- 1000rs', 'project completed within given time ', '2ff2ace48b72c2d0043eec72314ce7db.png', '2024-10-24 11:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `seat_count` int(11) NOT NULL,
  `room_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`room_id`, `room_name`, `seat_count`, `room_img`) VALUES
(1, 'Room 1', 15, '3f6362e8ff21f7eef549f8cd2940d592.jpg'),
(5, 'ganga', 12, 'b5ea1151a93d602e2e1259b8eaf4b41f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_bookings`
--

CREATE TABLE `tbl_room_bookings` (
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `booked_user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_room_bookings`
--

INSERT INTO `tbl_room_bookings` (`booking_id`, `title`, `description`, `room_id`, `booked_user_id`, `start_time`, `end_time`) VALUES
(1, 'meeting', 'conference meeting', 1, 12534, '2024-07-21 11:30:00', '2024-07-21 12:00:00'),
(4, 'test', 'trdt', 1, 12539, '2024-10-16 12:00:00', '2024-10-16 12:00:00'),
(5, 'Work discussion Metting', 'Team A , we are going to disccus about the new project', 1, 12542, '2024-10-25 12:00:00', '2024-10-25 13:00:00'),
(8, 'conference', 'to dicuss about the project', 1, 0, '2024-10-24 18:00:00', '2024-10-24 19:00:00'),
(10, 'gd', 'gd', 1, 12543, '2024-10-24 12:00:00', '2024-10-24 17:53:00'),
(12, 'gd', 'gd', 0, 12543, '2024-10-24 17:56:00', '2024-10-24 17:57:00'),
(13, 'interview', 'test', 1, 1, '2024-10-22 12:00:00', '2024-10-22 13:00:00'),
(14, 'Zoom Meeting Classs ', 'Zoom Meeting Classs conduction', 1, 12534, '2024-10-28 17:00:00', '2024-10-28 18:00:00'),
(15, 'Discussions', 'Test', 1, 12534, '2025-05-01 12:00:00', '2025-05-01 12:20:00'),
(16, 'Test', 'test', 0, 12534, '2025-05-05 12:00:00', '2025-05-05 13:20:00'),
(17, 'Test', 'test', 1, 12534, '2025-05-05 12:00:00', '2025-05-05 13:00:00'),
(18, 'Test', 'Test', 1, 12534, '2025-05-20 12:00:00', '2025-05-20 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_work_details`
--

CREATE TABLE `tbl_work_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `work_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_work_details`
--

INSERT INTO `tbl_work_details` (`id`, `user_id`, `date`, `work_details`, `created_at`) VALUES
(7, 12534, '2024-10-12', 'testing  ds ds ds ds d ds   sd sds d d d sd', '2024-10-12 15:52:59'),
(8, 12537, '2024-10-12', 'worked on attendance features, holidays, messages, daily work details modules', '2024-10-12 17:31:55'),
(9, 12534, '2024-10-14', 'worked on different modules like datatables, positions, employee view and edit pages', '2024-10-14 04:17:55'),
(10, 12542, '2024-10-14', 'filled profile details, uploaded documents , requested sick leave for today ', '2024-10-14 12:11:11'),
(11, 12534, '2024-10-24', 'completed Demo of website and fixed all bugs and added new feature', '2024-10-24 10:17:56'),
(12, 12542, '2024-10-24', 'completed Demo of website and fixed all bugs and added new feature', '2024-10-24 10:18:22'),
(13, 12539, '2024-10-24', 'today\'s work is successfully assigned to lakshitha - emp01 and she will take over everything.', '2024-10-24 12:00:42'),
(14, 12539, '2024-10-24', 'today\'s work is successfully assigned to lakshitha - emp01 and she will take over everything.', '2024-10-24 12:00:43'),
(15, 12534, '2024-10-26', 'test test test test test test test test test test test test test test test test test test ', '2024-10-26 09:32:31'),
(16, 12544, '2024-10-26', 'fixed rewards page and other minor database bugs. . . .', '2024-10-26 09:33:32'),
(19, 12534, '2024-10-27', 'Created Payroll Feature and Payslips Generations and Downloading as PDF', '2024-10-27 16:21:46'),
(20, 12534, '2024-10-28', 'Implemented Notes feature, add edit, delete mark as complete, with reminder etc', '2024-10-28 06:49:49'),
(21, 12534, '2024-10-29', 'implemented many things and new features etc etc etc etc', '2024-10-29 10:54:34'),
(22, 12550, '2024-12-04', 'i have finished the the work that was assigned to me.', '2024-12-04 12:39:41'),
(23, 12534, '2025-03-01', 'test test test test test test test test test test', '2025-03-01 13:42:51'),
(24, 12534, '2025-05-19', 'Test test Test test Test test Test test Test test ', '2025-05-19 07:28:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assetid` (`assetid`);

--
-- Indexes for table `tbl_asset_requests`
--
ALTER TABLE `tbl_asset_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_common_allowances_deductions_bonus`
--
ALTER TABLE `tbl_common_allowances_deductions_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `action_taken_by` (`action_taken_by`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leave_request`
--
ALTER TABLE `tbl_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notes`
--
ALTER TABLE `tbl_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_parking_requests`
--
ALTER TABLE `tbl_parking_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_parking_slots`
--
ALTER TABLE `tbl_parking_slots`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `tbl_payslip`
--
ALTER TABLE `tbl_payslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_private_allowances_deductions_bonus`
--
ALTER TABLE `tbl_private_allowances_deductions_bonus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `tbl_rewards`
--
ALTER TABLE `tbl_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tbl_room_bookings`
--
ALTER TABLE `tbl_room_bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_work_details`
--
ALTER TABLE `tbl_work_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12555;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_asset_requests`
--
ALTER TABLE `tbl_asset_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_common_allowances_deductions_bonus`
--
ALTER TABLE `tbl_common_allowances_deductions_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_leave_request`
--
ALTER TABLE `tbl_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_notes`
--
ALTER TABLE `tbl_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_parking_requests`
--
ALTER TABLE `tbl_parking_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_parking_slots`
--
ALTER TABLE `tbl_parking_slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_payslip`
--
ALTER TABLE `tbl_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_positions`
--
ALTER TABLE `tbl_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_private_allowances_deductions_bonus`
--
ALTER TABLE `tbl_private_allowances_deductions_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rewards`
--
ALTER TABLE `tbl_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_room_bookings`
--
ALTER TABLE `tbl_room_bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_work_details`
--
ALTER TABLE `tbl_work_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
