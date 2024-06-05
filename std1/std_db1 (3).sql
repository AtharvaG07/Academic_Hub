-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 09:58 PM
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
-- Database: `std_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `reg_date`) VALUES
(1, 100, 'Admin_ADH', 'Admin_ADH', 'Male', 'India, Nashik', '111-111-1114', 'admin@gmail.com', 'uploads/20240412074524.jpeg', '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_index` bigint(11) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `name`, `student_count`) VALUES
(18, 'Class A', 30),
(19, 'Class B', 30);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `create_by` bigint(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `note`, `color`, `category_id`, `grade_id`, `create_by`, `creator_type`, `start_date_time`, `end_date_time`, `year`, `month`) VALUES
(1, 'PBL Presentation', 'Submit PBL', '#f7ff00', 1, '', 100, 'Admin', '2024-06-06 10:30:00', '2024-06-06 12:00:00', 2024, 5),
(2, 'PBL Presentation', 'FYMCA Sem - II Final PBL Presentation', '#306156', 6, '', 101, 'Student', '2024-06-06 10:00:00', '2024-06-06 12:00:00', 2024, 5);

-- --------------------------------------------------------

--
-- Table structure for table `event_category`
--

CREATE TABLE `event_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_category_type`
--

CREATE TABLE `event_category_type` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`) VALUES
(4, 'Term 1'),
(5, 'Term 2'),
(6, 'Final'),
(7, 'Practical Exam'),
(8, 'PBL');

-- --------------------------------------------------------

--
-- Table structure for table `exam_range_grade`
--

CREATE TABLE `exam_range_grade` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `mark_range` varchar(255) NOT NULL,
  `_from` int(11) NOT NULL,
  `_to` int(11) NOT NULL,
  `mark_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_range_grade`
--

INSERT INTO `exam_range_grade` (`id`, `grade_id`, `mark_range`, `_from`, `_to`, `mark_grade`) VALUES
(51, 11, '0-35', 0, 35, 'F'),
(52, 11, '35-45', 35, 45, 'D'),
(53, 11, '45-55', 45, 55, 'C'),
(54, 11, '55-75', 55, 75, 'B'),
(55, 11, '75-85', 75, 85, 'A'),
(56, 11, '85-100', 85, 100, 'O'),
(57, 12, '0-35', 0, 35, 'F'),
(58, 12, '35-45', 35, 45, 'D'),
(59, 12, '45-55', 45, 55, 'C'),
(60, 12, '55-75', 55, 75, 'B'),
(61, 12, '75-85', 75, 85, 'A'),
(62, 12, '85-100', 85, 100, 'O'),
(63, 13, '0-35', 0, 35, 'F'),
(64, 13, '35-45', 35, 45, 'D'),
(65, 13, '45-55', 45, 55, 'C'),
(66, 13, '55-75', 55, 75, 'B'),
(67, 13, '75-85', 75, 85, 'A'),
(68, 13, '85-100', 85, 100, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `exam_timetable`
--

CREATE TABLE `exam_timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_timetable`
--

INSERT INTO `exam_timetable` (`id`, `grade_id`, `exam_id`, `day`, `subject_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(8, 11, 4, 'Saturday', 21, 18, 10.00, 12.00),
(9, 11, 4, 'Monday', 22, 18, 10.00, 12.00),
(10, 11, 4, 'Tuesday', 23, 18, 10.00, 12.00),
(11, 11, 4, 'Wednesday', 24, 18, 10.00, 12.00),
(12, 11, 4, 'Thursday', 25, 18, 10.00, 12.00),
(14, 11, 4, 'Friday', 26, 18, 10.00, 12.00),
(15, 11, 4, 'Tuesday', 21, 19, 12.30, 2.30),
(16, 11, 4, 'Monday', 22, 19, 12.30, 2.30),
(17, 11, 4, 'Wednesday', 23, 19, 12.30, 2.30),
(18, 11, 4, 'Thursday', 24, 19, 12.30, 2.30),
(19, 11, 4, 'Friday', 25, 19, 12.30, 2.30),
(20, 11, 4, 'Saturday', 26, 19, 12.30, 2.30),
(21, 11, 4, 'Monday', 27, 18, 12.00, 3.00),
(22, 11, 4, 'Tuesday', 28, 18, 12.00, 3.00),
(23, 11, 4, 'Wednesday', 29, 18, 12.00, 3.00),
(24, 11, 4, 'Thursday', 27, 19, 12.00, 3.00),
(25, 11, 4, 'Friday', 28, 19, 12.00, 3.00),
(26, 11, 4, 'Saturday', 29, 19, 12.00, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `hall_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `hall_charge`) VALUES
(11, 'FYMCA', 1000.00, 25),
(12, 'SYMCA', 1000.00, 25);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_notifications`
--

CREATE TABLE `main_notifications` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_notifications`
--

INSERT INTO `main_notifications` (`id`, `notification_id`, `_status`, `year`, `month`, `date`, `_isread`) VALUES
(1, 1, 'Payments', '2024', 'January', '2024-01-12', 1),
(2, 1, 'Events', '2024', 'June', '2024-06-05', 1),
(3, 2, 'Events', '2024', 'June', '2024-06-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `my_friends`
--

CREATE TABLE `my_friends` (
  `id` int(11) NOT NULL,
  `my_index` bigint(11) NOT NULL,
  `friend_index` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `my_type` varchar(255) NOT NULL,
  `friend_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `my_friends`
--

INSERT INTO `my_friends` (`id`, `my_index`, `friend_index`, `_status`, `conversation_id`, `my_type`, `friend_type`, `_isread`) VALUES
(1, 2, 1, 'Friend_Request_Sent', 1, 'Student', 'Teacher', 0),
(2, 1, 2, 'Pending', 1, 'Teacher', 'Student', 0),
(3, 2, 1, 'Friend_Request_Sent', 3, 'Student', 'Teacher', 0),
(4, 1, 2, 'Pending', 3, 'Teacher', 'Student', 0),
(5, 2, 100, 'Friend', 5, 'Student', 'Admin', 1),
(6, 100, 2, 'Friend', 5, 'Admin', 'Student', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_history`
--

CREATE TABLE `notification_history` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_history`
--

INSERT INTO `notification_history` (`id`, `notification_id`, `index_number`, `user_type`, `_isread`) VALUES
(1, 1, 2, 'Student', 0),
(2, 1, 1, 'Teacher', 0),
(3, 1, 2, 'Teacher', 0),
(4, 1, 3, 'Teacher', 0),
(5, 1, 4, 'Teacher', 0),
(6, 1, 5, 'Teacher', 0),
(7, 1, 6, 'Teacher', 0),
(8, 1, 0, 'Parents', 0),
(9, 1, 0, 'Parents', 0),
(10, 2, 101, 'Student', 0),
(11, 2, 102, 'Student', 0);

-- --------------------------------------------------------

--
-- Table structure for table `online_chat`
--

CREATE TABLE `online_chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_index` bigint(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `index_number` varchar(255) NOT NULL,
  `my_son_index` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `index_number`, `my_son_index`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `reg_date`, `reg_year`, `reg_month`, `_status`) VALUES
(18, 'G-101', 101, 'Pravin Bandusheth Gosavi', 'P.B.Gosavi', 'Male', 'Nashik', '233-234-2322', 'g1@gmail.com', 'uploads/2024065070640.png', '0000-00-00', '2024-06-05', '2024', 'June', ''),
(19, 'G-102', 102, 'Yogesh Gurav', 'Y.Gurav', 'Male', 'Chalisgaon,Jalgaon', '231-123-3432', 'g2@gmail.com', 'uploads/2024065071642.jpg', '0000-00-00', '2024-06-05', '2024', 'June', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_notifications`
--

CREATE TABLE `payment_notifications` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_notifications`
--

INSERT INTO `payment_notifications` (`id`, `index_number`, `year`, `month`, `date`, `_status`) VALUES
(1, 11, '2017', 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `paid` double(11,2) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_history`
--

CREATE TABLE `petty_cash_history` (
  `id` int(11) NOT NULL,
  `_desc` varchar(255) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_paid` double(11,2) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `_status` varchar(255) NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `_status`, `reg_year`, `reg_month`, `reg_date`) VALUES
(25, 101, 'Atharva Pravin Gosavi', 'A.P.Gosavi', 'Male', 'Nashik', '111-222-1212', 'std1@gmail.com', 'uploads/2024065070639.png', '0000-00-00', '', '2024', 'June', '2024-06-05'),
(26, 102, 'Akshay Yogesh Gurav', 'A.Y.Gurav', 'Male', 'Chalisgaon,Jalgaon', '111-333-1221', 'std2@gmail.com', 'uploads/2024065071641.jpeg', '0000-00-00', '', '2024', 'June', '2024-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 1, '2024-01-12', 'January', '2024', '00:00:12', '', ''),
(2, 2, '2024-06-05', 'June', '2024', '12:17:17', 'intime', 'Present'),
(3, 2, '2024-06-05', 'June', '2024', '01:20:51', 'outtime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`id`, `index_number`, `grade_id`, `exam_id`, `subject_id`, `marks`, `year`, `date`) VALUES
(57, 2, 11, 4, 21, '55', '2024', '2024-06-05'),
(58, 2, 11, 4, 22, '60', '2024', '2024-06-05'),
(59, 2, 11, 4, 23, '53', '2024', '2024-06-05'),
(60, 2, 11, 4, 24, '48', '2024', '2024-06-05'),
(61, 2, 11, 4, 25, '50', '2024', '2024-06-05'),
(62, 2, 11, 4, 26, '35', '2024', '2024-06-05'),
(63, 2, 11, 4, 27, '35', '2024', '2024-06-05'),
(64, 2, 11, 4, 28, '45', '2024', '2024-06-05'),
(65, 2, 11, 4, 29, '40', '2024', '2024-06-05'),
(66, 101, 11, 4, 21, '88', '2024', '2024-06-05'),
(67, 101, 11, 4, 22, '75', '2024', '2024-06-05'),
(68, 101, 11, 4, 23, '86', '2024', '2024-06-05'),
(69, 101, 11, 4, 24, '67', '2024', '2024-06-05'),
(70, 101, 11, 4, 25, '70', '2024', '2024-06-05'),
(71, 101, 11, 4, 26, '45', '2024', '2024-06-05'),
(72, 101, 11, 4, 27, '35', '2024', '2024-06-05'),
(73, 101, 11, 4, 28, '45', '2024', '2024-06-05'),
(74, 101, 11, 4, 29, '40', '2024', '2024-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `index_number`, `grade_id`, `year`) VALUES
(87, 15, 11, '2024'),
(93, 101, 11, '2024'),
(94, 102, 12, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `student_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `index_number`, `year`, `month`, `date`, `paid`, `_status`, `student_status`) VALUES
(225, 11, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(226, 11, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(227, 12, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(228, 12, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(229, 13, '2017', 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(230, 13, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(234, 14, '2017', 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(235, 25252525, '2018', 'February', '2018-02-04', 1000.00, 'Admission Fee', ''),
(236, 25252525, '2018', 'February', '2018-02-04', 1500.00, 'Monthly Fee1', ''),
(237, 1, '2024', 'June', '2024-06-04', 1000.00, 'Admission Fee', ''),
(238, 1, '2024', 'June', '2024-06-04', 2750.00, 'Monthly Fee1', ''),
(239, 2, '2024', 'June', '2024-06-05', 1000.00, 'Admission Fee', ''),
(240, 2, '2024', 'June', '2024-06-05', 200000.00, 'Monthly Fee1', ''),
(241, 3, '2024', 'June', '2024-06-05', 200000.00, 'Monthly Fee', ''),
(242, 101, '2024', 'June', '2024-06-05', 1000.00, 'Admission Fee', ''),
(243, 101, '2024', 'June', '2024-06-05', 200000.00, 'Monthly Fee1', ''),
(244, 102, '2024', 'June', '2024-06-05', 1000.00, 'Admission Fee', ''),
(245, 102, '2024', 'June', '2024-06-05', 210000.00, 'Monthly Fee1', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_history`
--

CREATE TABLE `student_payment_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `index_number`, `grade_id`, `subject_id`, `teacher_id`, `subject_fee`, `subtotal`, `_status`, `month`, `year`, `date`, `invoice_number`) VALUES
(582, 11, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(583, 11, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(584, 11, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(585, 11, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(586, 11, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(587, 11, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 1),
(588, 12, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(589, 12, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(590, 12, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(591, 12, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(592, 12, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(593, 12, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 227),
(594, 13, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(595, 13, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(596, 13, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(597, 13, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(598, 13, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(599, 13, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 229),
(612, 14, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(613, 14, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(614, 14, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(615, 14, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(616, 14, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(617, 14, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', '2017', '2017-11-24', 231),
(618, 25252525, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(619, 25252525, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(620, 25252525, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(621, 25252525, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(622, 25252525, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(623, 25252525, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'February', '2018', '2018-02-04', 235),
(624, 1, 11, 21, 18, 350.00, 350.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(625, 1, 11, 22, 20, 350.00, 350.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(626, 1, 11, 23, 17, 350.00, 350.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(627, 1, 11, 24, 21, 350.00, 350.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(628, 1, 11, 25, 16, 350.00, 350.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(629, 1, 11, 26, 20, 250.00, 250.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(630, 1, 11, 27, 17, 250.00, 250.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(631, 1, 11, 28, 19, 250.00, 250.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(632, 1, 11, 29, 16, 250.00, 250.00, 'Monthly Fee', 'June', '2024', '2024-06-04', 237),
(633, 2, 11, 21, 18, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(634, 2, 11, 22, 20, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(635, 2, 11, 23, 17, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(636, 2, 11, 24, 21, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(637, 2, 11, 25, 16, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(638, 2, 11, 26, 20, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(639, 2, 11, 27, 17, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(640, 2, 11, 28, 19, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(641, 2, 11, 29, 16, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 239),
(642, 3, 11, 21, 18, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(643, 3, 11, 22, 20, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(644, 3, 11, 23, 17, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(645, 3, 11, 24, 21, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(646, 3, 11, 25, 16, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(647, 3, 11, 26, 20, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(648, 3, 11, 27, 17, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(649, 3, 11, 28, 19, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(650, 3, 11, 29, 16, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 240),
(651, 101, 11, 21, 18, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(652, 101, 11, 22, 20, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(653, 101, 11, 23, 17, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(654, 101, 11, 24, 21, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(655, 101, 11, 25, 16, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(656, 101, 11, 26, 20, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(657, 101, 11, 27, 17, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(658, 101, 11, 28, 19, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(659, 101, 11, 29, 16, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 242),
(660, 102, 12, 39, 20, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(661, 102, 12, 40, 17, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(662, 102, 12, 41, 20, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(663, 102, 12, 42, 19, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(664, 102, 12, 44, 17, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(665, 102, 12, 46, 20, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(666, 102, 12, 47, 16, 25000.00, 25000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(667, 102, 12, 48, 16, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(668, 102, 12, 49, 16, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244),
(669, 102, 12, 50, 21, 20000.00, 20000.00, 'Monthly Fee', 'June', '2024', '2024-06-05', 244);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `reg_month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `index_number`, `_status`, `sr_id`, `year`, `reg_month`) VALUES
(290, 101, '', 37, 2024, ''),
(291, 101, '', 38, 2024, ''),
(292, 101, '', 39, 2024, ''),
(293, 101, '', 40, 2024, ''),
(294, 101, '', 41, 2024, ''),
(295, 101, '', 42, 2024, ''),
(296, 101, '', 43, 2024, ''),
(297, 101, '', 44, 2024, ''),
(298, 101, '', 45, 2024, ''),
(299, 102, '', 55, 2024, ''),
(300, 102, '', 56, 2024, ''),
(301, 102, '', 57, 2024, ''),
(302, 102, '', 58, 2024, ''),
(303, 102, '', 60, 2024, ''),
(304, 102, '', 61, 2024, ''),
(305, 102, '', 62, 2024, ''),
(306, 102, '', 63, 2024, ''),
(307, 102, '', 64, 2024, ''),
(308, 102, '', 65, 2024, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(21, 'Discrete Mathematics and Statistics'),
(22, 'Data Structures and Algorithms '),
(23, 'Object Oriented Programming '),
(24, 'Software Engineering & Project Management'),
(25, 'Information Systems and Engineering Economics'),
(26, 'Data Structures and Algorithms Laboratory'),
(27, 'OOP Laboratory '),
(28, 'Python Programming Laboratory'),
(29, 'Business Communication Lab'),
(30, 'Database Management System'),
(31, 'Computer Network'),
(32, 'Java Programming'),
(33, 'Operating Systems'),
(34, 'Elective-I '),
(35, 'Database Management System Laboratory '),
(36, 'Operating System Laboratory '),
(37, 'Java Programming Laboratory'),
(38, 'Project Based Learning-I (Mini Project- I)'),
(39, 'Data Science'),
(40, 'Web Technologies'),
(41, 'Cloud Computing '),
(42, 'Elective - II'),
(44, 'Web Technologies Lab'),
(45, 'Computer Lab'),
(46, 'Data Science Lab'),
(47, 'Project Based Learning-I (Mini Project- II)'),
(48, 'Major Project'),
(49, 'Seminar on Major Project'),
(50, 'Software Testing & Quality Assurance');

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

CREATE TABLE `subject_routing` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(17, 11, 15, 10, 250.00),
(18, 11, 16, 11, 250.00),
(19, 11, 17, 12, 250.00),
(20, 11, 18, 13, 250.00),
(21, 11, 19, 14, 250.00),
(22, 11, 20, 15, 250.00),
(23, 12, 15, 10, 350.00),
(24, 12, 16, 11, 350.00),
(25, 12, 17, 12, 350.00),
(26, 12, 18, 13, 350.00),
(27, 12, 19, 14, 350.00),
(28, 12, 20, 15, 350.00),
(29, 13, 15, 10, 400.00),
(30, 13, 16, 11, 400.00),
(31, 13, 17, 12, 400.00),
(32, 13, 18, 13, 400.00),
(33, 13, 19, 14, 400.00),
(34, 13, 20, 15, 400.00),
(35, 11, 15, 11, 380.00),
(36, 12, 16, 15, 5000.00),
(37, 11, 21, 18, 20000.00),
(38, 11, 22, 20, 20000.00),
(39, 11, 23, 17, 20000.00),
(40, 11, 24, 21, 20000.00),
(41, 11, 25, 16, 20000.00),
(42, 11, 26, 20, 25000.00),
(43, 11, 27, 17, 25000.00),
(44, 11, 28, 19, 25000.00),
(45, 11, 29, 16, 25000.00),
(46, 11, 30, 16, 20000.00),
(47, 11, 31, 20, 20000.00),
(48, 11, 32, 17, 20000.00),
(49, 11, 33, 20, 20000.00),
(50, 11, 34, 19, 20000.00),
(51, 11, 35, 18, 25000.00),
(52, 11, 36, 20, 25000.00),
(53, 11, 37, 17, 25000.00),
(54, 11, 38, 16, 20000.00),
(55, 12, 39, 20, 20000.00),
(56, 12, 40, 17, 20000.00),
(57, 12, 41, 20, 20000.00),
(58, 12, 42, 19, 20000.00),
(59, 12, 0, 21, 20000.00),
(60, 12, 44, 17, 20000.00),
(61, 12, 46, 20, 25000.00),
(62, 12, 47, 16, 25000.00),
(63, 12, 48, 16, 20000.00),
(64, 12, 49, 16, 20000.00),
(65, 12, 50, 21, 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `index_number`, `reg_date`) VALUES
(16, 'Poonam Chaudhari', 'P.Chaudhari', 'Female', 'Nashik, Maharshtra', '123-456-7890', 't1@gmail.com', 'uploads/2024065101059.png', 1, '2024-06-04'),
(17, 'Trupti Ahirrao', 'T.Ahirrao', 'Female', 'Nashik,Maharashtra', '234-567-1234', 't2@gmail.com', 'uploads/2024064080002.png', 2, '2024-06-04'),
(18, 'Gayatri Raut', 'G.Raut', 'Female', 'Nashik,Maharashtra', '123-567-2345', 't3@gmail.com', 'uploads/2024064080119.png', 3, '2024-06-04'),
(19, 'Rucha Samat', 'R.Samat', 'Female', 'Nashik,Maharashtra', '232-543-1214', 't4@gmail.com', 'uploads/2024064080155.png', 4, '2024-06-04'),
(20, 'Pranjali Deshmukh', 'P.Deshmukh', 'Female', 'Nashik,Maharashtra', '342-432-3543', 't5@gmail.com', 'uploads/2024064080311.png', 5, '2024-06-04'),
(21, 'Neha Bhathambhe', 'N.Bhathambhe', 'Female', 'Nashik,Maharashtra', '243-232-3453', 't6@gmail.com', 'uploads/2024064080442.png', 6, '2024-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 1, '2024-06-05', 'June', '2024', '01:20:48', 'intime', 'Present'),
(2, 3, '2024-06-05', 'June', '2024', '01:20:55', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_history`
--

CREATE TABLE `teacher_salary_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `student_count` int(11) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `grade_id`, `day`, `subject_id`, `teacher_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(90, 11, 'Monday', 25, 16, 18, 10.00, 10.40),
(91, 11, 'Monday', 29, 16, 19, 10.40, 12.15),
(92, 11, 'Tuesday', 29, 16, 19, 10.00, 10.40),
(93, 11, 'Wednesday', 30, 16, 18, 10.00, 10.40),
(94, 11, 'Thursday', 38, 16, 18, 10.00, 10.40),
(95, 12, 'Friday', 48, 16, 18, 10.00, 10.40),
(96, 12, 'Saturday', 48, 16, 19, 10.00, 10.40),
(97, 11, 'Tuesday', 29, 16, 19, 10.40, 12.15),
(98, 11, 'Friday', 38, 16, 18, 10.40, 12.15),
(99, 11, 'Monday', 30, 16, 18, 12.00, 12.50),
(100, 11, 'Monday', 29, 16, 18, 12.50, 1.40),
(101, 12, 'Tuesday', 49, 16, 18, 2.00, 2.50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(29, 'admin@gmail.com', '12345', 'Admin'),
(71, 't1@gmail.com', '12345', 'Teacher'),
(72, 't2@gmail.com', '12345', 'Teacher'),
(73, 't3@gmail.com', '12345', 'Teacher'),
(74, 't4@gmail.com', '12345', 'Teacher'),
(75, 't5@gmail.com', '12345', 'Teacher'),
(76, 't6@gmail.com', '12345', 'Teacher'),
(85, 'std1@gmail.com', '12345', 'Student'),
(86, 'g1@gmail.com', '12345', 'Parents'),
(87, 'std2@gmail.com', '12345', 'Student'),
(88, 'g2@gmail.com', '12345', 'Parents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category_type`
--
ALTER TABLE `event_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_notifications`
--
ALTER TABLE `main_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_friends`
--
ALTER TABLE `my_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_history`
--
ALTER TABLE `notification_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_chat`
--
ALTER TABLE `online_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_category`
--
ALTER TABLE `event_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_category_type`
--
ALTER TABLE `event_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `group_message`
--
ALTER TABLE `group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_notifications`
--
ALTER TABLE `main_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `my_friends`
--
ALTER TABLE `my_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification_history`
--
ALTER TABLE `notification_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `online_chat`
--
ALTER TABLE `online_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
