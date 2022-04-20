-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2022 at 02:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pts`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `pin`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin@2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `category_name`, `category_image`) VALUES
(4, 'Test4', 'Login4.png'),
(5, 'test66', 'Green-fevicon.png'),
(6, 'tesy', 'Green-fevicon1.png'),
(7, 'Test90', 'test3.png'),
(8, 'test88', 'test31.png');

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

CREATE TABLE `course_master` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `course_description` varchar(255) NOT NULL,
  `course_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`id`, `category_id`, `course_title`, `course_image`, `course_description`, `course_duration`) VALUES
(1, 4, 'Test2', 'test2.jpg', 'Test', 'test'),
(2, 6, 'test', 'test41.jpg', 'Test', 'tets'),
(3, 5, 'test00', 'test3.png', 'test99', 'test9');

-- --------------------------------------------------------

--
-- Table structure for table `event_master`
--

CREATE TABLE `event_master` (
  `id` int(11) NOT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_master`
--

INSERT INTO `event_master` (`id`, `event_title`, `event_date`, `event_description`, `event_image`) VALUES
(2, 'Annnual Fution', '2022-04-09', 'test', 'test3.png'),
(3, 'Test', '2022-04-29', 'test', 'test4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`id`, `user_id`, `user_feedback`) VALUES
(5, 1, 'You are super super !'),
(7, 4, 'Good job');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `enrollment_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `passing_year` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `enrollment_no`, `name`, `department`, `email`, `contact_no`, `date_of_birth`, `passing_year`, `password`) VALUES
(1, '032425454564532', 'student', 'Mechanical', 'student@gmail.com', '0987654321', '2008-10-28', '2022-11', '123456'),
(2, '032425454564532', 'student', 'CSE', 'student@gmail.com1', '0987654120', '2021-11-30', '2021-11', '123456'),
(3, '0324254545645321', 'student', 'CSE', 'student@gmail.com1', '0987654120', '2021-11-30', '2021-11', '123456'),
(4, '12345', 'student', 'CSE', 'student@gmail.com', '0998794584', '2021-11-30', '2021-11', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tpo`
--

CREATE TABLE `tpo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tpo`
--

INSERT INTO `tpo` (`id`, `name`, `department`, `email`, `contact_no`, `password`) VALUES
(1, 'TPO', '', 'tpo@gmail.com', '8888888888', 'tpo'),
(3, 'tpo', 'CSE', 'tpo@tpo.com', '888888888', '123456'),
(4, 'test', 'CSE', 'student@gmail.com', '0987456254', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_master`
--
ALTER TABLE `course_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_master`
--
ALTER TABLE `event_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tpo`
--
ALTER TABLE `tpo`
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
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_master`
--
ALTER TABLE `course_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_master`
--
ALTER TABLE `event_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tpo`
--
ALTER TABLE `tpo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
