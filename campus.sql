-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2019 at 07:56 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mail` varchar(30) NOT NULL,
  `adress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`, `mail`, `adress`) VALUES
('anand', '321', 'a@gmail.com', 'khadra');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE IF NOT EXISTS `apply` (
  `student` varchar(30) NOT NULL,
  `rid` varchar(30) NOT NULL,
  `cid` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`student`, `rid`, `cid`, `cname`) VALUES
('az@gmail.com', '1110', 'az@gmail.com', 'wipro 2'),
('sasa@gmail.com', '1110', 'az@gmail.com', 'wipro 2'),
('anand@gmail.com', '1110', 'az@gmail.com', 'wipro 2'),
('das@gmail.com', 'tech007', 'tech@gmail.com', 'techvault');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `post_job` varchar(10) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `eligibility_criteria` int(5) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companyreg`
--

CREATE TABLE IF NOT EXISTS `companyreg` (
  `cname` varchar(30) NOT NULL,
  `cmail` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `work` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`cmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyreg`
--

INSERT INTO `companyreg` (`cname`, `cmail`, `location`, `contact`, `work`, `password`) VALUES
('Analyze infotech', 'analyze@gmail.com', 'jksldgfyug', '8855669955', 'development,selling', '123'),
('Analyze', 'az@gmail.com', 'lko', '12123121', 'learning center', '123'),
('company', 'company@gmail.com', 'lko', '123', 'lucknow', '123'),
('techvault', 'tech@gmail.com', 'lko', '9988556633', 'development and ,marketing', '123');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE IF NOT EXISTS `recruitment` (
  `rid` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cid` varchar(30) NOT NULL,
  `courses` varchar(30) NOT NULL,
  `batch` varchar(30) NOT NULL,
  `visitingdate` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `criteria` varchar(30) NOT NULL,
  `jobprofile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`rid`, `cname`, `cid`, `courses`, `batch`, `visitingdate`, `location`, `criteria`, `jobprofile`) VALUES
('1110', 'wipro 2', 'az@gmail.com', 'mca', '2020-2019', '2019-05-25', 'lko', '50', 'developer'),
('tech007', 'techvault', 'tech@gmail.com', 'mca', '2019-2018', '2019-02-01', 'lko', 'no', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `fname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `stream` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`fname`, `lastname`, `mail`, `number`, `qualification`, `stream`, `password`) VALUES
('anand', 'gupta', 'anand@gmail.com', '9977889988', 'bca+mca', 'developer', '123'),
('shubham', 'pal', 'sasa@gmail.com', '87878754', 'mca', 'php coder', '123'),
('duleshwar', 'das', 'das@gmail.com', '7474747474', 'mca', 'coder in php', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
