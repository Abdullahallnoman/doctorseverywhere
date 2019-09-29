-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 05:52 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorseverywhere`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `serial` varchar(20) DEFAULT NULL,
  `dphone` varchar(20) DEFAULT NULL,
  `pid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`date`, `time`, `area`, `serial`, `dphone`, `pid`) VALUES
('19/12/2017', '3.00', 'it7', '1', '1', '44'),
('19/12/2017', '3.15', 'it7', '2', '1', '44'),
('19/12/2017', '3.30', 'it7', '3', '1', '44');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `regid` varchar(20) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dsex` varchar(20) NOT NULL,
  `dspecialist` varchar(20) NOT NULL,
  `dphone` varchar(20) NOT NULL,
  `daddress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`regid`, `dname`, `dsex`, `dspecialist`, `dphone`, `daddress`) VALUES
('1', 'dyujrdtu', 'rsustyh', 'rtuystry', 'tuyery', 'rtseyhrey'),
('2', '2', '2', '2', '2', '2'),
('3', 'r6u', '68i', 'rt57i9', 'te9i', '6tr8u'),
('4', 'rte5t', 'eye5y6', 'erywey', 'ye5y', 'yyy'),
('5', 'p[p[', 'oiphuoy', 'yiopiop', 'ipoiuo', 'ip8oy');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `page` varchar(20) NOT NULL,
  `psex` varchar(20) NOT NULL,
  `pphone` varchar(20) NOT NULL,
  `paddress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pname`, `page`, `psex`, `pphone`, `paddress`) VALUES
('123', '123', '123', '123', '123', '123'),
('44', '44', '44', '44', '44', '44'),
('tui', 'uit', 'ydityu', 'iytyi', 'tuityui', 'tyir'),
('yu', 'yi', 'ik', 'y', 'yfu', 'yuj'),
('zzz', 'zzz', 'zzz', 'zz', 'zzz', 'zzz');

-- --------------------------------------------------------

--
-- Table structure for table `patientpastrecord`
--

CREATE TABLE `patientpastrecord` (
  `pid` varchar(20) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `previousdoctor` varchar(20) NOT NULL,
  `previousmedicine` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientpastrecord`
--

INSERT INTO `patientpastrecord` (`pid`, `disease`, `previousdoctor`, `previousmedicine`) VALUES
('123', '123', '123', '123'),
('44', '44', '44', '44'),
('fyuy', 'fukity', 'tfuty', 'tuikt'),
('zzz', 'zzz', 'zzz', 'zzz');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `regid` varchar(20) NOT NULL,
  `institution` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`regid`, `institution`) VALUES
('1', 'a'),
('2', 'b'),
('3', 'c'),
('4', 'd'),
('5', 'e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `patientpastrecord`
--
ALTER TABLE `patientpastrecord`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`regid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
