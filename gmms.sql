-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 01:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmms`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `admintimetableview`
-- (See below for the actual view)
--
CREATE TABLE `admintimetableview` (
`deptName` varchar(30)
,`courseName` varchar(20)
,`subNAME` varchar(50)
,`fname` varchar(50)
,`lname` varchar(50)
,`faculty_ID` int(10)
,`date` date
,`day` varchar(10)
,`year` varchar(10)
,`section` varchar(2)
,`startTime` time(6)
,`endTime` time(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(20) NOT NULL,
  `deptID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `deptID`) VALUES
(101, 'BCA', '56'),
(102, 'BBA', '57');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptID` int(10) NOT NULL,
  `deptName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptID`, `deptName`) VALUES
(56, 'Computer Science'),
(57, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `faculty_ID` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`faculty_ID`, `fname`, `lname`, `designation`, `branch`, `course`, `email`, `gender`, `dob`, `phone`, `address`, `city`, `country`, `pcode`) VALUES
(4676, 'Varsha', 'Kumari', 'Assistat Ptofessor', 'Computer Science', 'BCA', 'varsha.kumari@gla.ac.in', 'Female', '1990-06-08', '789456123', 'GLA, Mathura', 'Mathura', 'India', '281004'),
(5678, 'Atul', 'Uttam', 'Assistat Ptofessor', 'Computer Science', 'BCA', 'atul.uttam@gla.ac.in', 'Male', '1989-06-05', '7845555545', 'Mathura', 'Mathura', 'India', '281004'),
(5681, 'Gaurav', 'Sharma', 'Assistant Professor', 'Computer Science', 'BCA', 'gaurav.sharma@gla.ac.in', 'Male', '0000-00-00', '8126188769', 'Mathura', 'Mathura', 'India', '281004');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `uname` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `usertype` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`uname`, `pass`, `usertype`) VALUES
('', 'vTrp', 'student'),
('174200171', 'abcd', 'student'),
('174200172', 'abcd', 'student'),
('4676', 'LqQo', 'faculty'),
('4678', 'abcd', 'faculty'),
('5678', 'abcd', 'faculty'),
('5681', 'abcd', 'faculty'),
('gmms_admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `marks_sem1`
--

CREATE TABLE `marks_sem1` (
  `stdID` varchar(10) NOT NULL,
  `subID` varchar(10) NOT NULL,
  `mod1` int(2) NOT NULL,
  `mod2` int(2) NOT NULL,
  `mod3` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks_sem1`
--

INSERT INTO `marks_sem1` (`stdID`, `subID`, `mod1`, `mod2`, `mod3`) VALUES
('174200172', 'BCA6002', 15, 15, 15),
('174200172', 'BCA6022', 14, 14, 14),
('174200172', 'BCA6041', 13, 13, 13);

-- --------------------------------------------------------

--
-- Table structure for table `newregistration`
--

CREATE TABLE `newregistration` (
  `registrationID` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `f_phone` varchar(10) NOT NULL,
  `m_phone` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `course` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pcode` varchar(6) NOT NULL,
  `isNew` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newregistration`
--

INSERT INTO `newregistration` (`registrationID`, `fname`, `lname`, `phone`, `email`, `dob`, `gender`, `f_name`, `m_name`, `f_phone`, `m_phone`, `country`, `state`, `city`, `course`, `address`, `pcode`, `isNew`) VALUES
('BCA105', 'Udit', 'Arora', '0904595053', 'uditarora755@gmail.com', '2020-06-12', 'Male', '', '', '', '', 'India', 'Uttar Pradesh', 'Mathura', 'BCA', '73,74 Main Market Krishna Nagar', '281004', 'yes'),
('BCA847', 'Udit', 'Arora', '0904595053', 'uditarora755@gmail.com', '2020-06-12', 'Male', '', '', '', '', 'India', 'Uttar Pradesh', 'Mathura', 'BCA', '73,74 Main Market Krishna Nagar', '281004', 'yes'),
('BCA374', 'Udit', 'Arora', '0904595053', 'uditarora755@gmail.com', '2020-06-11', 'Male', '', '', '', '', 'India', 'Uttar Pradesh', 'Mathura', 'BCA', '73,74 Main Market Krishna Nagar', '281004', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `noticeID` int(10) NOT NULL,
  `title` varchar(35) NOT NULL,
  `description` varchar(100) NOT NULL,
  `foruser` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`noticeID`, `title`, `description`, `foruser`) VALUES
(3, 'Admission Open', 'Admissions are open!', 'All'),
(4, 'Completion of Project', 'Complete your major project soon!', 'student'),
(5, 'Meeting for the Cultural Fest', 'There will be a meeting for the cultural fest on Saturday at 12:00 PM', 'faculty');

-- --------------------------------------------------------

--
-- Table structure for table `registrationotp`
--

CREATE TABLE `registrationotp` (
  `registrationID` varchar(10) NOT NULL,
  `OTP` int(4) NOT NULL,
  `isExpired` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sample_table`
--

CREATE TABLE `sample_table` (
  `subject` varchar(50) NOT NULL,
  `marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sample_table`
--

INSERT INTO `sample_table` (`subject`, `marks`) VALUES
('hindi', 40),
('english', 60),
('science', 30),
('math', 50);

-- --------------------------------------------------------

--
-- Table structure for table `student_images`
--

CREATE TABLE `student_images` (
  `u_rollno` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `u_rollno` int(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `course` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pcode` varchar(10) NOT NULL,
  `year` varchar(3) NOT NULL,
  `section` varchar(1) NOT NULL,
  `D.O.B` date NOT NULL,
  `Father_Name` varchar(50) NOT NULL,
  `Mother_Name` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Father_Phone` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Mother_Phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`u_rollno`, `branch`, `course`, `email`, `fname`, `lname`, `address`, `city`, `country`, `pcode`, `year`, `section`, `D.O.B`, `Father_Name`, `Mother_Name`, `Gender`, `Father_Phone`, `phone`, `State`, `Mother_Phone`) VALUES
(174200171, 'Computer Science', 'BCA', 'tripti.upadhyay@gla.ac.in', 'Tripti', 'Upadhyay', 'Agra', 'Agra', 'India', '5678', '3', 'B', '2020-05-12', 'rtyu', 'fyghj', 'Female', '56789', '567890', 'Uttar Pradesh', ''),
(174200172, 'Computer Science', 'BCA', 'uditarora755@gmail.com', 'Udit', 'Arora', '73,74 Main Market Krishna Nagar', 'Mathura', 'India', '281004', '3', 'C', '1999-02-23', 'Rajesh Arora', 'Jyoti Arora', 'Male', '9897579094', '9045950537', 'Uttar Pradesh', ''),
(174200178, 'BBA', 'BBA', 'vaibhav.srivastava@gla.ac.in', 'Vaibhav', 'Srivastava', 'Delhi', 'Delhi', 'India', '281004', '3', 'C', '2020-05-12', 'ABC', 'DEF', 'Male', '234567890', '34567890', 'Uttar Pradesh', ''),
(174200456, 'Pharmacy', 'B.Pharma', 'shubangi.kumari@gla.ac.in', 'Shubhangi', 'Kumari', 'Bihar', 'Bihar', 'India', '4567', '1', 'A', '2020-05-18', 'sdxfcgvh', 'xdtcfgbhj', 'Female', '45678', '456789', 'Uttar Pradesh', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subID` varchar(10) NOT NULL,
  `subNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subID`, `subNAME`) VALUES
('BCA6002', '.Net Framework Using Vb.NET'),
('BCA6022', 'Advanced Database Management System'),
('BCA6041', 'Introduction To Cloud Computing');

-- --------------------------------------------------------

--
-- Table structure for table `subject_att`
--

CREATE TABLE `subject_att` (
  `rollno` varchar(10) NOT NULL,
  `sub1` int(5) NOT NULL,
  `sub2` int(5) NOT NULL,
  `sub3` int(5) NOT NULL,
  `sub4` int(5) NOT NULL,
  `sub5` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_att`
--

INSERT INTO `subject_att` (`rollno`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`) VALUES
('174200171', 50, 60, 70, 90, 75),
('174200172', 80, 75, 32, 90, 100);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `deptID` int(10) NOT NULL,
  `courseID` int(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `subjectID` varchar(10) NOT NULL,
  `facultyID` int(10) NOT NULL,
  `section` varchar(2) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(10) NOT NULL,
  `startTime` time(6) NOT NULL,
  `endTime` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`deptID`, `courseID`, `year`, `subjectID`, `facultyID`, `section`, `date`, `day`, `startTime`, `endTime`) VALUES
(56, 101, '3', 'BCA6002', 5678, 'C', '2020-06-07', 'Sunday', '12:00:00.000000', '15:00:00.000000'),
(56, 101, '3', 'BCA6041', 5678, 'C', '2020-06-07', 'Sunday', '10:00:00.000000', '12:00:00.000000'),
(56, 101, '3', 'BCA6022', 5678, 'C', '2020-06-07', 'Sunday', '15:00:00.000000', '16:00:00.000000'),
(56, 101, '3', 'BCA6022', 5678, 'C', '2020-06-07', 'Sunday', '16:00:00.000000', '17:00:00.000000'),
(56, 101, '3', 'BCA6022', 5681, 'C', '2020-06-08', 'Monday', '20:07:00.000000', '21:07:00.000000'),
(56, 101, '3', 'BCA6002', 4676, 'C', '2020-06-08', 'Monday', '16:00:00.000000', '17:00:00.000000');

-- --------------------------------------------------------

--
-- Stand-in structure for view `timetableview`
-- (See below for the actual view)
--
CREATE TABLE `timetableview` (
`faculty_ID` int(10)
,`fname` varchar(50)
,`lname` varchar(50)
,`subNAME` varchar(50)
,`subjectID` varchar(10)
,`year` varchar(10)
,`section` varchar(2)
,`date` date
,`day` varchar(10)
,`startTime` time(6)
,`endTime` time(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalgen`
-- (See below for the actual view)
--
CREATE TABLE `totalgen` (
`u_rollno` int(11)
,`Gender` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `admintimetableview`
--
DROP TABLE IF EXISTS `admintimetableview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admintimetableview`  AS  select `a`.`deptName` AS `deptName`,`b`.`courseName` AS `courseName`,`c`.`subNAME` AS `subNAME`,`d`.`fname` AS `fname`,`d`.`lname` AS `lname`,`d`.`faculty_ID` AS `faculty_ID`,`e`.`date` AS `date`,`e`.`day` AS `day`,`e`.`year` AS `year`,`e`.`section` AS `section`,`e`.`startTime` AS `startTime`,`e`.`endTime` AS `endTime` from ((((`department` `a` join `courses` `b`) join `subject` `c`) join `faculty_details` `d`) join `timetable` `e`) where `a`.`deptID` = `e`.`deptID` and `b`.`courseID` = `e`.`courseID` and `c`.`subID` = `e`.`subjectID` and `d`.`faculty_ID` = `e`.`facultyID` ;

-- --------------------------------------------------------

--
-- Structure for view `timetableview`
--
DROP TABLE IF EXISTS `timetableview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `timetableview`  AS  select `a`.`faculty_ID` AS `faculty_ID`,`a`.`fname` AS `fname`,`a`.`lname` AS `lname`,`b`.`subNAME` AS `subNAME`,`c`.`subjectID` AS `subjectID`,`c`.`year` AS `year`,`c`.`section` AS `section`,`c`.`date` AS `date`,`c`.`day` AS `day`,`c`.`startTime` AS `startTime`,`c`.`endTime` AS `endTime` from ((`faculty_details` `a` join `subject` `b`) join `timetable` `c`) where `a`.`faculty_ID` = `c`.`facultyID` and `b`.`subID` = `c`.`subjectID` ;

-- --------------------------------------------------------

--
-- Structure for view `totalgen`
--
DROP TABLE IF EXISTS `totalgen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalgen`  AS  (select `student_info`.`u_rollno` AS `u_rollno`,`student_info`.`Gender` AS `Gender` from `student_info`) union (select `faculty_details`.`faculty_ID` AS `faculty_ID`,`faculty_details`.`gender` AS `gender` from `faculty_details`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`faculty_ID`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`noticeID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`u_rollno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `subject_att`
--
ALTER TABLE `subject_att`
  ADD PRIMARY KEY (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `faculty_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5682;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `noticeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `u_rollno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174200458;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
