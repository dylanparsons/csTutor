-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 10:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comptutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Phone` char(12) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `LastName`, `FirstName`, `Phone`, `Email`) VALUES
(1, 'Parsons', 'Dylan', '206-329-9675', 'Dylan.Parsons@smsu.edu'),
(2,'Man','Shushuang','111-000-1111', 'Shushuang.Man@smsu.edu'),
(3,'Mortezapour','Koroush','222-444-2222','Koroush.Mortezapour@smsu.edu'),
(4,'Kaiser','Dan','123-123-2444','Dan.Kaiser@smsu.edu'),
(5, 'Keenan', 'Kelsey', '206-329-9675', 'Kelsey.Keenan@smsu.edu');

-- --------------------------------------------------------

--
-- Stand-in structure for view `basicadminview`
--
CREATE TABLE `basicadminview` (
`AdminID` int(11)
,`LastName` varchar(50)
,`FirstName` varchar(50)
,`Phone` char(12)
,`Email` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `basicstudentview`
--
CREATE TABLE `basicstudentview` (
  `StudentID` int(11)
,`LastName` varchar(50)
,`FirstName` varchar(50)
,`Phone` char(12)
,`Email` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `LessonId` int(11) NOT NULL,
  `StudentName` varchar(50) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Semester` char(12) DEFAULT NULL,
  `LessonDate` varchar(10) DEFAULT '01/01/1900',
  `StartTime` varchar(5) NOT NULL DEFAULT '00:00',
  `EndTime` varchar(5) NOT NULL DEFAULT '00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `MemberId` int(11) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`MemberId`, `Role`, `Username`, `Password`) VALUES
(1, 'Tutor', 'Samson.Chen@smsu.edu', 'Samson'),
(2, 'Student', 'Haruki.Nagata@smsu.edu', 'Haruki'),
(3, 'Student', 'Olympia.Lala@smsu.edu', 'Olympia'),
(4, 'Admin', 'Dylan.Parsons@smsu.edu', 'Dylan');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `LastName`, `FirstName`, `Email`) VALUES
(1, 'Parsons', 'Dylan', 'Dylan.Parsons@smsu.edu'),
(2, 'Alsworth', 'Andrew', 'Andrew.Alsworth@smsu.edu'),
(3, 'Nagata', 'Haruki', 'Haruki.Nagata@smsu.edu'),
(4, 'Ivanov', 'Nikolay', 'Nikolay.Ivanov@smsu.edu'),
(5, 'Olympia', 'Lala', 'Olympia.Lala@smsu.edu'),
(6, 'Samson', 'Chen', 'Samson.Chen@smsu.edu'),
(7, 'Yana', 'Gariprova', 'Yana.Gariprova@smsu.edu'),
(8, 'Samson', 'Chen', 'Samson.Chen@smsu.edu'),
(9, 'Yana', 'Gariprova', 'Yana.Gariprova@smsu.edu'),
(10, 'Keenan', 'Kelsey', 'Kelsey.Keenan@smsu.edu');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `TutorID` varchar(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `Phone` char(12) DEFAULT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`TutorID`, `LastName`, `FirstName`, `Phone`, `Email`) VALUES
('T101', 'Parsons', 'Dylan', '507-555-2954', 'Dylan.Parsons@smsu.edu'),
('T102', 'Chen', 'Samson', '507-555-0010', 'Samsun.Chen@smsu.edu'),
('T103', 'Alsworth','Andrew', '507-555-2346', 'Andrew.Alsworth@smsu.edu'),
('T104', 'Samuelson', 'Zach', '507-555-5793', 'Zach.Samuelson@smsu.edu'),
('T105', 'Keenan', 'Kelsey', '206-329-9675', 'Kelsey.Keenan@smsu.edu');
-- --------------------------------------------------------

--
-- Stand-in structure for view `tutornameemail`
--
CREATE TABLE `tutornameemail` (
`TutorID` varchar(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`Phone` char(12)
,`Email` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_rating`
--

CREATE TABLE `tutor_rating` (
  `TutorID` varchar(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `WasHelpful` varchar(3) NOT NULL,
  `Rating` int(1) NOT NULL DEFAULT '0',
  `Comments` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_rating`
--

INSERT INTO `tutor_rating` (`TutorID`, `FirstName`, `WasHelpful`, `Rating`, `Comments`) VALUES
('T102', 'Samson', 'Yes', 4, 'Helpful'),
('T101', 'Dylan', 'Yes', 5, 'Helpful'),
('T103', 'Andrew', 'Yes', 4, 'Helpful'),
('T105', 'Kelsey', 'Yes', 3, 'Okay'),
('T104', 'Zach', 'Yes', 2, 'Okay');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_schedule`
--

CREATE TABLE `tutor_schedule` (
  `Day` varchar(15) NOT NULL,
  `Time` varchar(15) NOT NULL,
  `Tutor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_schedule`
--

INSERT INTO `tutor_schedule` (`Day`, `Time`, `Tutor`) VALUES
('Sunday', '7:00-10:00 PM', 'Samson'),
('Monday', '7:00-10:00 PM', 'Zach'),
('Tuesday', '7:00-10:00 PM', 'Andrew'),
('Wednesday', '7:00-10:00 PM', 'Dylan'),
('Thursday', '7:00-10:00 PM', 'Kelsey');

-- --------------------------------------------------------

--
-- Structure for view `basicadminview`
--
DROP TABLE IF EXISTS `basicadminview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicadminview`  AS  select `admin`.`AdminID` AS `AdminID`,`admin`.`LastName` AS `LastName`,`admin`.`FirstName` AS `FirstName`,`admin`.`Phone` AS `Phone`,`admin`.`Email` AS `Email` from `admin` ;

-- --------------------------------------------------------

--
-- Structure for view `basicstudentview`
--
DROP TABLE IF EXISTS `basicstudentview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicstudentview`  AS  select `student`.`StudentID` AS `StarID`,`student`.`FirstName` AS `FirstName`,`student`.`LastName` AS `LastName`,`student`.`Email` AS `Email` from `student` ;

-- --------------------------------------------------------

--
-- Structure for view `tutornameemail`
--
DROP TABLE IF EXISTS `tutornameemail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tutornameemail`  AS  select `tutor`.`TutorID` AS `TutorID`,`tutor`.`FirstName` AS `FirstName`,`tutor`.`LastName` AS `LastName`,`tutor`.`Phone` AS `Phone`,`tutor`.`Email` AS `Email` from `tutor` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`LessonId`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberId`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`TutorID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `tutor_rating`
--
ALTER TABLE `tutor_rating`
  ADD PRIMARY KEY (`TutorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `LessonId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `MemberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
