-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2017 at 02:00 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`Depno` int(11) NOT NULL,
  `Dname` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Depno`, `Dname`, `Location`) VALUES
(101, 'Civil', 'nasik'),
(102, 'Computer', 'pune'),
(104, 'Hr', 'delhi');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
`empno` int(11) NOT NULL,
  `eno` int(11) NOT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `Mgr` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `Depno` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`empno`, `eno`, `ename`, `job`, `Mgr`, `location`, `Depno`) VALUES
(1, 0, 'dhananjay', 'managar', 'yes', 'nasik', 101),
(2, 0, 'pallavi', 'manager', 'yes', 'pune', 101),
(3, 0, 'apeksha', 'hr', 'no', 'pune', 102),
(4, 0, 'shivani', 'hr', 'no', 'pune', 102),
(5, 0, 'tushar', 'developer', 'no', 'nasik', 104),
(6, 0, 'pankaj', 'designer', 'no', 'pune', 104);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phno` int(12) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `cpassword`, `fname`, `lname`, `email`, `phno`, `location`) VALUES
(15, 'pallavi', 'palli', 'palli', 'pallavi', 'Nagpure', 'pallavinahpure1@gmail.com', 784512558, 'pune'),
(23, 'Apeksha', 'appi', 'appi', 'apeksha', 'bhurande', 'appi@gmail.com', 784512458, 'pune'),
(30, '', '', '', 'Shivani', 'Sadegaonkar', '', 985623589, 'Nanded');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`Depno`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
 ADD PRIMARY KEY (`empno`), ADD KEY `Depno` (`Depno`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `Depno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
MODIFY `empno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`Depno`) REFERENCES `department` (`Depno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
