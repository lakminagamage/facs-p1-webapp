-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2023 at 07:04 AM
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
-- Database: `faculty_access_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_4`
--

CREATE TABLE `attendance_4` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_4`
--

INSERT INTO `attendance_4` (`id`, `Student`) VALUES
(1, 1007),
(2, 4257231),
(3, 4287746);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_5`
--

CREATE TABLE `attendance_5` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  `ses6` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form',
  `ses12` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form'
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_5`
--

INSERT INTO `attendance_5` (`id`, `Student`, `ses6`, `ses12`) VALUES
(1, 4723197, '13:20:00', '13:25:00'),
(2, 4269898, '13:25:00', '0'),
(3, 4287567, '13:28:00', '13:45:00'),
(4, 1007, '0', '13:22:00'),
(5, 4257231, '13:30:00', '13:27:00'),
(6, 4287746, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_6`
--

CREATE TABLE `attendance_6` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  `ses2` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form',
  `ses8` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form'
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_6`
--

INSERT INTO `attendance_6` (`id`, `Student`, `ses2`, `ses8`) VALUES
(1, 4723197, '10:45:00', '11:20:00'),
(2, 4269898, '0', '11:30:00'),
(3, 4287567, '10:55:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_7`
--

CREATE TABLE `attendance_7` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_7`
--

INSERT INTO `attendance_7` (`id`, `Student`) VALUES
(1, 1007),
(2, 4257231),
(3, 4287746);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_8`
--

CREATE TABLE `attendance_8` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  `ses1` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form',
  `ses7` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form',
  `ses15` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form'
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_8`
--

INSERT INTO `attendance_8` (`id`, `Student`, `ses1`, `ses7`, `ses15`) VALUES
(1, 4723197, '08:20:00', '0', '02:27:04'),
(2, 4269898, '08:24:00', '0', '02:26:53'),
(3, 4287567, '08:30:00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_9`
--

CREATE TABLE `attendance_9` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  `ses10` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form',
  `ses11` varchar(20) NOT NULL DEFAULT '0' COMMENT '0 - absent, Timestamp - present, other(filename) - medical form'
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_9`
--

INSERT INTO `attendance_9` (`id`, `Student`, `ses10`, `ses11`) VALUES
(1, 4723197, '08:40:00', '10:45:00'),
(2, 4269898, '08:50:00', '10:55:00'),
(3, 4287567, '0', '0'),
(4, 1007, '08:49:00', '10:49:00'),
(5, 4257231, '0', '10:35:00'),
(6, 4287746, '08:56:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_10`
--

CREATE TABLE `attendance_10` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_10`
--

INSERT INTO `attendance_10` (`id`, `Student`) VALUES
(1, 4260157),
(2, 4268408),
(3, 1006);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_11`
--

CREATE TABLE `attendance_11` (
  `id` int(11) NOT NULL,
  `Student` int(11) NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `attendance_11`
--

INSERT INTO `attendance_11` (`id`, `Student`) VALUES
(1, 4260157),
(2, 4268408),
(3, 1006);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `Batch` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `Batch`, `create_time`, `update_time`) VALUES
(1, 20, '2023-02-18 06:47:28', NULL),
(2, 21, '2023-02-18 06:47:33', NULL),
(10, 22, '2023-03-02 15:45:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `Degree` varchar(255) NOT NULL,
  `Faculty` int(10) UNSIGNED NOT NULL,
  `Department` int(10) UNSIGNED NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `Degree`, `Faculty`, `Department`, `create_time`, `update_time`) VALUES
(1, 'BSc. (IT)', 1, 1, '2023-02-18 07:06:17', NULL),
(2, 'BSc. (AI)', 1, 2, '2023-02-18 07:06:41', NULL),
(5, 'BSc. (ITM)', 1, 5, '2023-02-21 17:07:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `degree_of_groups`
--

CREATE TABLE `degree_of_groups` (
  `id` int(11) NOT NULL,
  `Stu_group` int(11) NOT NULL,
  `Degree` int(11) NOT NULL
) ENGINE=MyISAM ;

--
-- Dumping data for table `degree_of_groups`
--

INSERT INTO `degree_of_groups` (`id`, `Stu_group`, `Degree`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 5),
(4, 3, 1),
(5, 3, 5),
(6, 4, 2),
(7, 5, 1),
(8, 5, 2),
(9, 6, 1),
(10, 7, 2),
(11, 8, 1),
(12, 9, 1),
(13, 9, 2),
(14, 10, 5),
(15, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Faculty` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `Name`, `Faculty`) VALUES
(1, 'Department of Information Technology', 1),
(2, 'Department of Computational Mathematics', 1),
(5, 'Department of Interdisciplinary Studies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `Name`) VALUES
(1, 'Lecturer'),
(2, 'Professor'),
(3, 'Head of Department'),
(4, 'Dean'),
(5, 'Non Academic');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `IndexNo` varchar(255) NOT NULL,
  `Uid` varchar(255) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Faculty` int(10) UNSIGNED NOT NULL,
  `Department` int(10) UNSIGNED NOT NULL,
  `Designation` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Email_verified_at` timestamp NULL DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Api_token` varchar(80) DEFAULT NULL,
  `Remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `IndexNo`, `Uid`, `Name`, `Telephone`, `Address`, `Faculty`, `Department`, `Designation`, `created_at`, `updated_at`, `Email`, `Email_verified_at`, `Password`, `Api_token`, `Remember_token`) VALUES
(6, 'lec1000', '1000', 'Supunmalee Ahangama', '1111', 'Colombo, Sri Lanka.', 1, 1, 1, NULL, NULL, 'ahangama@uom.lk', NULL, 'sa', NULL, NULL),
(7, 'lec1001', '1001', 'Priyanga Thalagala', '2222', 'Gampaha, Sri Lanka.', 1, 2, 1, NULL, NULL, 'thalagala@uom.lk', NULL, 'pt', NULL, NULL),
(8, 'lec1002', '1002', 'Mohommad Firdous', '3333', 'Colombo, Sri Lanka.', 1, 1, 2, NULL, NULL, 'firdhouse@uom.lk', NULL, 'mf', NULL, NULL),
(9, 'lec1003', '1003', 'Roshani Wijesooriya', '4444', 'Colombo, Sri Lanka.', 1, 1, 1, NULL, NULL, 'roshani@uom.lk', NULL, 'rw', NULL, NULL),
(10, 'lec1004', '1004', 'Thanuja Sandanayaka', '5555', 'Colombo, Sri Lanka.', 1, 5, 3, NULL, NULL, 'thanuja@uom.lk', NULL, 'ts', NULL, NULL),
(11, 'lec1005', '1005', 'Nipuni Chandimali', '6666', 'Colombo, Sri Lanka.', 1, 1, 1, NULL, NULL, 'nipuni@uom.lk', NULL, 'nc', NULL, NULL),
(12, 'lec1006', '1006', 'M. Mufitha', '7777', 'Colombo, Sri Lanka.', 1, 5, 1, NULL, NULL, 'mufitha@uom.lk', NULL, 'mm', NULL, NULL),
(13, 'lec1007', '1007', 'B.H. Sudantha', '8888', 'Colombo, Sri Lanka.', 1, 1, 4, NULL, NULL, 'sudantha@uom.lk', NULL, 'bhs', NULL, NULL),
(14, 'lec1008', '1008', 'Thilini Piyathilake', '9999', 'Colombo, Sri Lanka.', 1, 2, 2, NULL, NULL, 'thilini@uom.lk', NULL, 'tp', NULL, NULL),
(15, 'lec1009', '1009', 'Saminda Premarathne', '1111', 'Colombo, Sri Lanka.', 1, 1, 3, NULL, NULL, 'saminda@uom.lk', NULL, 'sp', NULL, NULL),
(16, 'lec1010', '1010', 'Sasika Kumarasinghe', '2222', 'Colombo, Sri Lanka.', 1, 1, 1, NULL, NULL, 'sasika@uom.lk', NULL, 'sk', NULL, NULL),
(17, 'lec1011', '1011', 'Sumudu Wijethunga', '2222', 'Colombo, Sri Lanka.', 1, 5, 1, NULL, NULL, 'sumudu@uom.lk', NULL, 'sw', NULL, NULL),
(18, 'lec1012', '1012', 'Dilanthi Fernando', '5555', 'Colombo, Sri Lanka.', 1, 5, 1, NULL, NULL, 'dilanthi@uom.lk', NULL, 'df', NULL, NULL),
(19, 'empna1000', '15426', 'Nuwan Perera', '0710424155', 'Piliyandala', 1, 1, 5, NULL, NULL, 'nuwanp@uom.lk', NULL, 'sf', NULL, NULL),
(20, 'lec1013', '1013', 'Akila Warnapura', '123456789', 'Gampaha', 1, 1, 1, NULL, NULL, 'akila@uom.lk', NULL, 'aw', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees_of_groups`
--

CREATE TABLE `employees_of_groups` (
  `id` int(11) NOT NULL,
  `Employee` int(10) UNSIGNED NOT NULL,
  `Emp_group` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `employees_of_groups`
--

INSERT INTO `employees_of_groups` (`id`, `Employee`, `Emp_group`, `create_time`, `update_time`) VALUES
(1, 6, 1, '2023-07-09 16:45:16', NULL),
(2, 20, 1, '2023-07-09 16:45:16', NULL),
(3, 6, 2, '2023-07-09 16:45:56', NULL),
(4, 7, 3, '2023-07-09 16:46:23', NULL),
(5, 7, 4, '2023-07-09 16:46:46', NULL),
(6, 11, 5, '2023-07-09 16:47:35', NULL),
(7, 8, 6, '2023-07-09 16:48:06', NULL),
(8, 8, 7, '2023-07-09 16:48:48', NULL),
(9, 10, 8, '2023-07-09 16:49:23', NULL),
(10, 12, 8, '2023-07-09 16:49:23', NULL),
(11, 9, 9, '2023-07-09 16:49:59', NULL),
(12, 10, 10, '2023-07-09 16:50:28', NULL),
(13, 16, 11, '2023-07-09 16:51:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `Name`) VALUES
(1, 'Faculty of Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `groups_for_students`
--

CREATE TABLE `groups_for_students` (
  `id` int(11) NOT NULL,
  `Student` bigint(11) NOT NULL,
  `Stu_group` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `groups_for_students`
--

INSERT INTO `groups_for_students` (`id`, `Student`, `Stu_group`, `create_time`, `update_time`) VALUES
(1, 4723197, 1, '2023-07-09 16:45:16', NULL),
(2, 4269898, 1, '2023-07-09 16:45:16', NULL),
(3, 4287567, 1, '2023-07-09 16:45:16', NULL),
(4, 1007, 1, '2023-07-09 16:45:16', NULL),
(5, 4257231, 1, '2023-07-09 16:45:16', NULL),
(6, 4287746, 1, '2023-07-09 16:45:16', NULL),
(7, 4260157, 2, '2023-07-09 16:45:56', NULL),
(8, 4268408, 2, '2023-07-09 16:45:56', NULL),
(9, 1006, 2, '2023-07-09 16:45:56', NULL),
(10, 4723197, 3, '2023-07-09 16:46:23', NULL),
(11, 4269898, 3, '2023-07-09 16:46:23', NULL),
(12, 4287567, 3, '2023-07-09 16:46:23', NULL),
(13, 4260157, 3, '2023-07-09 16:46:23', NULL),
(14, 4268408, 3, '2023-07-09 16:46:23', NULL),
(15, 1006, 3, '2023-07-09 16:46:23', NULL),
(16, 1007, 4, '2023-07-09 16:46:46', NULL),
(17, 4257231, 4, '2023-07-09 16:46:46', NULL),
(18, 4287746, 4, '2023-07-09 16:46:46', NULL),
(19, 4723197, 5, '2023-07-09 16:47:35', NULL),
(20, 4269898, 5, '2023-07-09 16:47:35', NULL),
(21, 4287567, 5, '2023-07-09 16:47:35', NULL),
(22, 1007, 5, '2023-07-09 16:47:35', NULL),
(23, 4257231, 5, '2023-07-09 16:47:35', NULL),
(24, 4287746, 5, '2023-07-09 16:47:35', NULL),
(25, 4723197, 6, '2023-07-09 16:48:06', NULL),
(26, 4269898, 6, '2023-07-09 16:48:06', NULL),
(27, 4287567, 6, '2023-07-09 16:48:06', NULL),
(28, 1007, 7, '2023-07-09 16:48:48', NULL),
(29, 4257231, 7, '2023-07-09 16:48:48', NULL),
(30, 4287746, 7, '2023-07-09 16:48:48', NULL),
(31, 4723197, 8, '2023-07-09 16:49:23', NULL),
(32, 4269898, 8, '2023-07-09 16:49:23', NULL),
(33, 4287567, 8, '2023-07-09 16:49:23', NULL),
(34, 4723197, 9, '2023-07-09 16:49:59', NULL),
(35, 4269898, 9, '2023-07-09 16:49:59', NULL),
(36, 4287567, 9, '2023-07-09 16:49:59', NULL),
(37, 1007, 9, '2023-07-09 16:49:59', NULL),
(38, 4257231, 9, '2023-07-09 16:49:59', NULL),
(39, 4287746, 9, '2023-07-09 16:49:59', NULL),
(40, 4260157, 10, '2023-07-09 16:50:28', NULL),
(41, 4268408, 10, '2023-07-09 16:50:28', NULL),
(42, 1006, 10, '2023-07-09 16:50:28', NULL),
(43, 4260157, 11, '2023-07-09 16:51:28', NULL),
(44, 4268408, 11, '2023-07-09 16:51:28', NULL),
(45, 1006, 11, '2023-07-09 16:51:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_forms`
--

CREATE TABLE `medical_forms` (
  `id` int(11) NOT NULL,
  `Student` bigint(11) NOT NULL,
  `Session` int(11) NOT NULL,
  `Medical_form` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `Code` varchar(45) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Faculty` int(10) UNSIGNED NOT NULL,
  `Department` int(10) UNSIGNED NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `Code`, `Name`, `Faculty`, `Department`, `create_time`, `update_time`) VALUES
(1, 'IN1000', 'Programming Fundamentals', 1, 1, '2023-02-18 07:53:47', NULL),
(2, 'IN1001', 'Digital Systems Design', 1, 1, '2023-02-18 07:53:57', NULL),
(3, 'CM1000', 'Fundamentals of Mathematics', 1, 2, '2023-02-18 07:54:15', NULL),
(4, 'CM1001', 'Elements of Statistics', 1, 2, '2023-02-18 07:54:30', NULL),
(5, 'IS1000', 'English', 1, 5, '2023-02-18 07:57:16', NULL),
(6, 'IN1002', 'Multimedia Technologies', 1, 1, '2023-02-21 17:15:48', NULL),
(7, 'IN1003', 'Fundamentals of Databases', 1, 1, '2023-02-21 17:16:36', NULL),
(8, 'IN1004', 'Data Structures and Algorithms', 1, 1, '2023-02-21 17:17:04', NULL),
(9, 'IN1005', 'Data Communication', 1, 1, '2023-02-21 17:17:28', NULL),
(10, 'IN1006', 'Web Technologies', 1, 1, '2023-02-21 17:18:05', NULL),
(11, 'IS1001', 'Principles of Management', 1, 5, '2023-02-21 17:18:26', NULL),
(12, 'IS1002', 'Business Recognition', 1, 5, '2023-02-21 17:18:50', NULL),
(13, 'IN1007', 'AI Principles', 1, 1, '2023-02-21 17:19:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `Ses_group` int(11) NOT NULL,
  `Start_time` varchar(20) NOT NULL,
  `Duration` double NOT NULL,
  `Method` tinyint(4) NOT NULL COMMENT '0 - physical, 1 - online',
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL,
  `Type` int(11) NOT NULL COMMENT '0 - lecture, 1 - lab, 2 - assignment, 3 - exam',
  `Lecturer` int(11) NOT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `Ses_group`, `Start_time`, `Duration`, `Method`, `create_time`, `update_time`, `Type`, `Lecturer`) VALUES
(1, 8, '2023-07-10 10:30', 1, 0, '2023-07-09 17:00:27', NULL, 1, 10),
(2, 6, '2023-07-10 10:30', 1, 0, '2023-07-09 17:00:46', NULL, 1, 8),
(3, 1, '2023-07-10 13:15', 2, 0, '2023-07-09 17:00:55', NULL, 0, 6),
(4, 3, '2023-07-11 09:15', 1, 0, '2023-07-09 17:01:57', NULL, 1, 7),
(5, 3, '2023-07-11 10:30', 2, 0, '2023-07-09 17:02:01', NULL, 0, 7),
(6, 5, '2023-07-11 13:15', 2, 0, '2023-07-09 17:02:05', NULL, 0, 11),
(7, 8, '2023-07-12 08:15', 2, 0, '2023-07-09 17:02:20', NULL, 0, 10),
(8, 6, '2023-07-12 10:30', 2, 0, '2023-07-09 17:02:25', NULL, 0, 8),
(9, 1, '2023-07-13 08:15', 2, 0, '2023-07-09 17:03:05', NULL, 1, 20),
(10, 9, '2023-07-14 08:15', 2, 0, '2023-07-09 17:03:22', NULL, 0, 9),
(11, 9, '2023-07-14 10:30', 2, 0, '2023-07-09 17:03:27', NULL, 1, 9),
(12, 5, '2023-07-14 13:15', 2, 1, '2023-07-09 17:03:32', NULL, 1, 11),
(13, 1, '2023-07-10 13:15', 2, 0, '2023-07-09 19:37:27', NULL, 0, 6),
(14, 1, '2023-07-10 13:15', 2, 0, '2023-07-09 19:46:26', NULL, 0, 6),
(15, 8, '2023-07-10 10:30', 1, 0, '2023-07-10 07:48:09', NULL, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(11) NOT NULL,
  `IndexNo` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Faculty` int(10) UNSIGNED NOT NULL,
  `Degree` int(11) NOT NULL,
  `Batch` int(11) NOT NULL,
  `Academic_Advisor` int(10) UNSIGNED NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Email_verified_at` timestamp NULL DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Api_token` varchar(80) DEFAULT NULL,
  `Remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `IndexNo`, `Name`, `Telephone`, `Address`, `Faculty`, `Degree`, `Batch`, `Academic_Advisor`, `Email`, `Email_verified_at`, `Password`, `Api_token`, `Remember_token`, `created_at`, `updated_at`) VALUES
(1006, '2151006P', 'JAYASANKHA K.', '0987654321', 'Badulla, Sri Lanka.', 1, 5, 2, 10, 'kj@uom.lk', NULL, 'kj', NULL, NULL, NULL, NULL),
(1007, '2151007P', 'PERERA E.', '1237894560', 'Panadura, Sri Lanka.', 1, 2, 2, 13, 'ep@uom.lk', NULL, 'ep', NULL, NULL, NULL, NULL),
(4257231, '2161003P', 'BHAGYA L.G.V.', '071000003', 'Kandy', 1, 2, 2, 17, 'gayuniabc.21@uom.lk', NULL, 'gab', '\r\n', NULL, NULL, NULL),
(4260157, '215001P', 'LAKPRIYA D.D.S.', '071000001', 'Matara', 1, 5, 2, 9, 'kavindarlm.21@uom.lk', NULL, 'mkr', NULL, NULL, NULL, NULL),
(4268408, '2151002P', 'DILSHAN R.P.', '071000002', 'Kekanadura', 1, 5, 2, 12, 'weerasingheas.21@uom.lk', NULL, 'asw', NULL, NULL, NULL, NULL),
(4269898, '214065V', 'GAMAGE L.P.G.', '0768000029', 'Yatiyata', 1, 1, 2, 8, ' gamagelpg.21@uom.lk', NULL, 'lpg', NULL, NULL, NULL, NULL),
(4287567, '214226R', 'WELHENA W.I.T.', '1234567890', 'Matara, Sri Lanka.', 1, 1, 2, 9, 'it@uom.lk', NULL, 'itw', NULL, NULL, NULL, NULL),
(4287746, '2161004P', 'WADUMULLA G.M.D.', '071000004', 'Galle', 1, 2, 2, 18, 'dushanj.21@upm.lk', NULL, 'dj', NULL, NULL, NULL, NULL),
(4723197, '214014P', 'AMBEYPITIYA S.B.', '0710424155', 'Matara', 1, 1, 2, 6, 'ambeypitiyasb.21@uom.lk', NULL, 'sba', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Module` int(11) NOT NULL,
  `Batch` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `Name`, `Module`, `Batch`, `create_time`, `update_time`) VALUES
(1, '21-IN1003-BSc. (IT)-BSc. (AI)', 7, 2, '2023-07-09 16:45:16', NULL),
(2, '21-IN1003-BSc. (ITM)', 7, 2, '2023-07-09 16:45:56', NULL),
(3, '21-CM1001-BSc. (IT)-BSc. (ITM)', 4, 2, '2023-07-09 16:46:23', NULL),
(4, '21-CM1001-BSc. (AI)', 4, 2, '2023-07-09 16:46:46', NULL),
(5, '21-IN1006-BSc. (IT)-BSc. (AI)', 10, 2, '2023-07-09 16:47:35', NULL),
(6, '21-IN1005-BSc. (IT)', 9, 2, '2023-07-09 16:48:06', NULL),
(7, '21-IN1005-BSc. (AI)', 9, 2, '2023-07-09 16:48:48', NULL),
(8, '21-IS1001-BSc. (IT)', 11, 2, '2023-07-09 16:49:23', NULL),
(9, '21-IN1004-BSc. (IT)-BSc. (AI)', 8, 2, '2023-07-09 16:49:59', NULL),
(10, '21-IS1002-BSc. (ITM)', 12, 2, '2023-07-09 16:50:28', NULL),
(11, '21-IN1000-BSc. (ITM)', 1, 2, '2023-07-09 16:51:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `T_group` int(11) NOT NULL,
  `Day` int(10) UNSIGNED NOT NULL,
  `Start_time` varchar(20) NOT NULL,
  `Duration` double DEFAULT 0,
  `Method` int(11) NOT NULL COMMENT '0 - physical, 1 - online',
  `Type` int(11) NOT NULL COMMENT '0 - lecture, 1 - lab, 2 - assignment, 3 - exam	',
  `Session_repeat` int(11) NOT NULL COMMENT '0 - every week, 1- every other week',
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `T_group`, `Day`, `Start_time`, `Duration`, `Method`, `Type`, `Session_repeat`, `create_time`, `update_time`) VALUES
(1, 8, 1, '10:30', 1, 0, 1, 0, '2023-07-09 16:52:41', NULL),
(2, 6, 1, '10:30', 1, 0, 1, 0, '2023-07-09 16:53:17', NULL),
(3, 1, 1, '13:15', 2, 0, 0, 0, '2023-07-09 16:53:56', NULL),
(4, 3, 2, '09:15', 1, 0, 1, 0, '2023-07-09 16:54:35', NULL),
(5, 3, 2, '10:30', 2, 0, 0, 0, '2023-07-09 16:55:07', NULL),
(6, 5, 2, '13:15', 2, 0, 0, 0, '2023-07-09 16:55:29', NULL),
(7, 8, 3, '08:15', 2, 0, 0, 0, '2023-07-09 16:55:50', NULL),
(8, 6, 3, '10:30', 2, 0, 0, 0, '2023-07-09 16:56:03', NULL),
(9, 1, 4, '08:15', 2, 0, 1, 1, '2023-07-09 16:56:30', NULL),
(10, 9, 5, '08:15', 2, 0, 0, 0, '2023-07-09 16:56:50', NULL),
(11, 9, 5, '10:30', 2, 0, 1, 1, '2023-07-09 16:57:07', NULL),
(12, 5, 5, '13:15', 2, 1, 1, 0, '2023-07-09 16:57:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_4`
--
ALTER TABLE `attendance_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_5`
--
ALTER TABLE `attendance_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_6`
--
ALTER TABLE `attendance_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_7`
--
ALTER TABLE `attendance_7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_8`
--
ALTER TABLE `attendance_8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_9`
--
ALTER TABLE `attendance_9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_10`
--
ALTER TABLE `attendance_10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_11`
--
ALTER TABLE `attendance_11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degree_faculty_foreign_idx` (`Faculty`),
  ADD KEY `degree_department_foreign_idx` (`Department`);

--
-- Indexes for table `degree_of_groups`
--
ALTER TABLE `degree_of_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_faculty_foreign_idx` (`Faculty`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_department_foreign` (`Department`),
  ADD KEY `employees_designation_foreign` (`Designation`),
  ADD KEY `employees_faculty_foreign_idx` (`Faculty`);

--
-- Indexes for table `employees_of_groups`
--
ALTER TABLE `employees_of_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeegroup_employee_foreign_idx` (`Employee`),
  ADD KEY `employeegroup_group_foreign_idx` (`Emp_group`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_for_students`
--
ALTER TABLE `groups_for_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupStudent_group_foreign_idx` (`Stu_group`),
  ADD KEY `groupStudent_student_foreign_idx` (`Student`);

--
-- Indexes for table `medical_forms`
--
ALTER TABLE `medical_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_student_foreign_idx` (`Student`),
  ADD KEY `medical_session_foreign_idx` (`Session`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_faculty_foreign_idx` (`Faculty`),
  ADD KEY `module_department_foreign_idx` (`Department`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_group_foreign_idx` (`Ses_group`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_faculty_foreign` (`Faculty`),
  ADD KEY `student_degree_foreign_idx` (`Degree`),
  ADD KEY `student_batch_foreign_idx` (`Batch`),
  ADD KEY `student_advisor_foreign_idx` (`Academic_Advisor`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_module_foreign_idx` (`Module`),
  ADD KEY `group_batch_foreign_idx` (`Batch`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetable_groups_foreign_idx` (`T_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_4`
--
ALTER TABLE `attendance_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_5`
--
ALTER TABLE `attendance_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance_6`
--
ALTER TABLE `attendance_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_7`
--
ALTER TABLE `attendance_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_8`
--
ALTER TABLE `attendance_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_9`
--
ALTER TABLE `attendance_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance_10`
--
ALTER TABLE `attendance_10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance_11`
--
ALTER TABLE `attendance_11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `degree_of_groups`
--
ALTER TABLE `degree_of_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1178;

--
-- AUTO_INCREMENT for table `employees_of_groups`
--
ALTER TABLE `employees_of_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups_for_students`
--
ALTER TABLE `groups_for_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `medical_forms`
--
ALTER TABLE `medical_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degree_department_foreign` FOREIGN KEY (`Department`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `degree_faculty_foreign` FOREIGN KEY (`Faculty`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `department_faculty_foreign` FOREIGN KEY (`Faculty`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_department_foreign` FOREIGN KEY (`Department`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_designation_foreign` FOREIGN KEY (`Designation`) REFERENCES `designations` (`id`),
  ADD CONSTRAINT `employees_faculty_foreign` FOREIGN KEY (`Faculty`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `student_advisor_foreign` FOREIGN KEY (`Academic_Advisor`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `student_batch_foreign` FOREIGN KEY (`Batch`) REFERENCES `batches` (`id`),
  ADD CONSTRAINT `student_degree_foreign` FOREIGN KEY (`Degree`) REFERENCES `degrees` (`id`),
  ADD CONSTRAINT `students_faculty_foreign` FOREIGN KEY (`Faculty`) REFERENCES `faculties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
