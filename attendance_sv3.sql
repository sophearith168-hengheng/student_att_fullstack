-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 10:33 AM
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
-- Database: `attendance_sv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendent`
--

CREATE TABLE `attendent` (
  `attendentid` int(11) NOT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `studentid` int(11) DEFAULT NULL,
  `subjectid` int(11) DEFAULT NULL,
  `att_date` datetime DEFAULT NULL,
  `att_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendent`
--

INSERT INTO `attendent` (`attendentid`, `teacherid`, `studentid`, `subjectid`, `att_date`, `att_status`) VALUES
(8, 1, 10, 2, '2026-03-09 00:00:00', 0),
(11, 1, 10, 2, '2026-03-09 00:00:00', 1),
(14, 1, 10, 2, '2026-03-09 00:00:00', 2),
(16, 1, 7, 2, '2026-03-09 00:00:00', 1),
(20, 1, 7, 1, '2026-03-09 00:00:00', 1),
(22, 1, 7, 1, '2026-03-08 00:00:00', 1),
(24, 1, 7, 2, '2026-03-10 00:00:00', 1),
(25, 1, 11, 2, '2026-03-10 00:00:00', 0),
(26, 1, 7, 1, '2026-03-10 00:00:00', 2),
(28, 1, 11, 1, '2026-03-10 00:00:00', 1),
(29, 1, 7, 1, '2026-03-10 00:00:00', 2),
(30, 1, 11, 1, '2026-03-10 00:00:00', 1),
(31, 1, 7, 2, '2026-03-10 00:00:00', 2),
(32, 1, 11, 2, '2026-03-10 00:00:00', 2),
(33, 1, 7, 2, '2026-03-10 00:00:00', 1),
(34, 1, 11, 2, '2026-03-10 00:00:00', 1),
(35, 1, 14, 2, '2026-03-10 00:00:00', 2),
(36, 1, 15, 2, '2026-03-11 00:00:00', 2),
(37, 1, 7, 2, '2026-03-12 00:00:00', 1),
(38, 1, 14, 2, '2026-03-12 00:00:00', 1),
(39, 1, 11, 2, '2026-03-12 00:00:00', 1),
(40, 1, 7, 2, '2026-03-12 00:00:00', 1),
(41, 1, 11, 2, '2026-03-12 00:00:00', 1),
(42, 1, 14, 2, '2026-03-12 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classid`, `classname`) VALUES
(1, 'SV3'),
(2, 'SV10'),
(4, 'sv22');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `studentnamekh` varchar(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `studentnamekh`, `studentname`, `gender`, `classid`) VALUES
(7, 'រឹទ្ធ​ សុភា', 'Rith Sophea', 'F', 1),
(8, 'cc', 'ccc', 'M', 2),
(9, 'sss', 'Vgh', 'F', 2),
(10, 'ហ៊ឹម​ សុភារឹទ្ធ', 'Him Sophearith', 'M', 2),
(11, 'សុវ៉ាត់', 'Sovath', 'F', 1),
(14, 'ហ៊ាន​ ហើរ', 'Hean Hoea', 'M', 1),
(15, 'ហ៊ឹម​ សុភារឹទ្ធ', 'Him Sophearith', 'M', 4),
(16, 'ហុង', 'hong rin', 'M', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectid` int(11) NOT NULL,
  `subjectname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectid`, `subjectname`) VALUES
(1, 'Web '),
(2, 'Java'),
(3, 'MySQL');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL,
  `teachername` varchar(255) NOT NULL,
  `teacheremail` varchar(255) DEFAULT NULL,
  `teacherphone` varchar(255) DEFAULT NULL,
  `subjectid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherid`, `teachername`, `teacheremail`, `teacherphone`, `subjectid`) VALUES
(1, 'Him Sophearith', 'himsophearith44@gmail.com', '+855967629009', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','teacher','student') NOT NULL DEFAULT 'admin',
  `fullName` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendent`
--
ALTER TABLE `attendent`
  ADD PRIMARY KEY (`attendentid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `email_3` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendent`
--
ALTER TABLE `attendent`
  MODIFY `attendentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
