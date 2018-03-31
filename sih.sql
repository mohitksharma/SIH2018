-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 12:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sih`
--

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `oof` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `name`, `username`, `password`, `dept`, `oof`) VALUES
(1, 'mohit', 'mohit', 'mohit123', 'IT', 1),
(2, 'rahul', 'rahul', 'rahul123', 'Comps', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `approved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `email`, `role`, `approved`) VALUES
(1, 'raunak', 'abc', '', '', 0),
(2, 'raunak', 'abc', '', '', 0),
(3, 'raunak', 'abc', '', '', 0),
(4, 'ashna', 'ashna', '', '', 0),
(5, 'mohit', 'mohit', '', '', 0),
(6, 'krissh', 'ks', '', '', 0),
(7, 'user', 'user', '', '', 0),
(8, 'raunak_bhagwani', 'raunak', 'ra@g', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `oof` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_username` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `student_code` varchar(255) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `student_college` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `student_department` varchar(255) NOT NULL,
  `student_status` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  `approved_dept` varchar(255) NOT NULL,
  `student_number` varchar(11) NOT NULL,
  `student_address` varchar(200) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `training_status` int(11) NOT NULL,
  `training_selected` varchar(255) NOT NULL,
  `last_training_date` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `oof`, `student_name`, `student_username`, `student_email`, `role`, `student_code`, `student_password`, `student_college`, `qualifications`, `gender`, `city`, `student_department`, `student_status`, `approved`, `approved_by`, `approved_dept`, `student_number`, `student_address`, `postal`, `training_status`, `training_selected`, `last_training_date`) VALUES
(1, 1, 'kunal', 'kunal', '', '', '', 'kunal', 'somaiya', 'BE', 'Male', 'Ulhas', 'IT', 1, 0, 'mohit', 'IT', '0', '', '0', 0, 'management contracts', 2015),
(3, 1, 'aashna', 'aashna', '', '', '', 'aashna123', 'TSEC ', 'PHD', 'Female', 'Bandra', 'Comps', 1, 0, 'mohit', 'IT', '0', '', '0', 1, 'management contracts', 2011),
(4, 1, 'prajna', 'prajna', '', '', '', 'prajna123', 'TSEC', 'BE', 'Female', 'Bandra', 'IT', 1, 0, 'mohit', 'IT', '0', '', '0', 1, 'project management', 2016),
(5, 0, 'Raunak', '', '', '', '', '', 'VESIT', 'PHD', '', ' Mumbai', 'IT', 1, 0, 'mohit', 'IT', '2147483647', 'dajfddfo', '400024', 1, '', 2017),
(6, 0, 'abc', 'raunak@123', 'raunak@gmail.com', 'hod', '1234', 'raunak', 'NEIT', '', '', '', 'Mechanical', 1, 0, '', '', '', '', '', 0, '', 2011),
(7, 1, 'mohit', 'mohit', 'mohit@gmail.com', 'hod', '4321', '123', 'Somaiya', '', '', '', 'IT', 1, 0, '', '', '', '', '', 0, '', 2009),
(10, 0, 'raunak', 'raunak2', 'raunak@gmail.com', 'hod', '123', 'abc', 'TSEC', '', '', '', 'designer', 1, 0, '', '', '', '', '', 1, '', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `pass_reset` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `pass_reset`) VALUES
(1, 'Raunak Bhagwani', 'raunak', 'raunak222@gmail.com', 0),
(2, 'Hitesh', 'hit', 'hit@gmail.com', 0),
(3, 'Raunak', 'raunak', 'raunak.bhagwani@gmail.com', 519230),
(4, 'Krissha', 'kj', 'krisshajirawl97@gail.co', 0),
(5, 'Ritu Arya', 'ritu', 'ritu@gmail.com', 0),
(6, 'ashna', 'ashna', 'ashna@gmail.com', 0),
(7, 'mohit', 'mohit', 'mohit@gmail.com', 0),
(8, 'nehal', 'nehal', 'nehal@gmail.com', 0),
(9, 'abcc', 'abc', 'abc@gmail.com', 0),
(10, 'abc2', 'abc2', 'abc2@gmail.com', 0),
(11, 'raunak', 'ra', 'ra@gmail.com', 0),
(12, 'abcd', 'abcd', 'abcd@gmail.com', 0),
(13, 'namrata', 'nam', 'nam@gmail.com', 0),
(14, 'Anmol Bhagwani', 'anmol2', 'anmol2@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_username` (`student_username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hod`
--
ALTER TABLE `hod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
