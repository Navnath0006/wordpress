-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 05:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtonehealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4');

-- --------------------------------------------------------

--
-- Table structure for table `disease_data`
--

CREATE TABLE `disease_data` (
  `SAMPLE_ID` varchar(150) NOT NULL,
  `SAMPLE_NO` int(30) NOT NULL,
  `STATE_NAME` varchar(255) NOT NULL,
  `DISTRICT_NAME` varchar(255) NOT NULL,
  `BLOCK_TALUK` varchar(255) NOT NULL DEFAULT 'None',
  `VILLAGE_NAME` varchar(255) NOT NULL,
  `DATE` date NOT NULL,
  `SPECIES` varchar(255) NOT NULL,
  `BREED` varchar(150) NOT NULL,
  `SEX` varchar(25) NOT NULL,
  `AGE` varchar(10) NOT NULL,
  `SAMPLE_TYPE` varchar(255) NOT NULL,
  `TEST` varchar(255) NOT NULL,
  `TEST_RESULT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_data`
--

INSERT INTO `disease_data` (`SAMPLE_ID`, `SAMPLE_NO`, `STATE_NAME`, `DISTRICT_NAME`, `BLOCK_TALUK`, `VILLAGE_NAME`, `DATE`, `SPECIES`, `BREED`, `SEX`, `AGE`, `SAMPLE_TYPE`, `TEST`, `TEST_RESULT`) VALUES
('S 1', 1, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'F', '4yr 5m', '1', 'SITT', '2'),
('S 2', 2, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'F', '5yr 1m', '1', 'SITT', '2'),
('S 3', 3, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'F', '3yr 8m', '1', 'SITT', '2'),
('S 4', 4, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'F', '5yr 2m', '1', 'SITT', '2'),
('S 5', 5, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'M', '4yr 3m', '1', 'SITT', '2'),
('S 6', 6, 'Assam', 'Karbi Anglong', '', 'Dihingiagaon', '2022-09-04', '1', '8', 'F', '5yr 5m', '1', 'SITT', '2'),
('S 7', 7, 'Assam', 'Karbi Anglong', '', 'Taralangsu', '2022-09-04', '1', '8', 'F', '4yr 6m', '1', 'SITT', '2'),
('S 8', 8, 'Assam', 'Karbi Anglong', '', 'Taralangsu', '2022-09-04', '1', '8', 'F', '5yr 3m', '1', 'SITT', '2'),
('S 9', 9, 'Assam', 'Karbi Anglong', '', 'Taralangsu', '2022-09-04', '1', '8', 'F', '4yr 6m', '1', 'SITT', '2'),
('S 10', 10, 'Assam', 'Karbi Anglong', '', 'Taralangsu', '2022-09-04', '1', '8', 'F', '5yr 2m', '1', 'SITT', '2'),
('S 11', 11, 'Assam', 'Kamrup (M)', '', '8th Mile', '2022-11-04', '1', '8', 'F', '4yr 1m', '1', 'SITT', '2'),
('S 12', 12, 'Assam', 'Kamrup (M)', '', '8th Mile', '2022-11-04', '1', '8', 'F', '5yr 3m', '1', 'SITT', '2'),
('S 13', 13, 'Assam', 'Kamrup (M)', '', '8th Mile', '2022-11-04', '1', '8', 'F', '4yr 2m', '1', 'SITT', '2'),
('S 14', 14, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-24', '1', '8', 'F', '3yr 2m', '1', 'SITT', '2'),
('S 15', 15, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-25', '1', '8', 'M', '4yr 1m', '1', 'SITT', '2'),
('S 16', 16, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-26', '1', '8', 'F', '5yr 3m', '1', 'SITT', '2'),
('S 17', 17, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-27', '1', '8', 'F', '6yr 2m', '1', 'SITT', '2'),
('S 18', 18, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-28', '1', '8', 'F', '4yr 5m', '1', 'SITT', '2'),
('S 19', 19, 'Assam', 'Kamrup (M)', '', 'Bonda', '2022-06-29', '1', '8', 'M', '6yr 7m', '1', 'SITT', '2'),
('S 20', 20, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 21', 21, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 22', 22, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 23', 23, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 24', 24, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 25', 25, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 26', 26, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 27', 27, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 28', 28, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 29', 29, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 30', 30, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 31', 31, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 32', 32, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 33', 33, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 34', 34, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 35', 35, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 36', 36, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 37', 37, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 38', 38, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 39', 39, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 40', 40, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 41', 41, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 42', 42, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 43', 43, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 44', 44, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 45', 45, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 46', 46, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 47', 47, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 48', 48, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 49', 49, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 50', 50, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 51', 51, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 52', 52, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 53', 53, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 54', 54, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 55', 55, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 56', 56, 'Assam', 'Barpeta', '', 'Barpeta road', '2022-07-25', '1', '8', 'M', 'N/A', '1', 'SITT', '2'),
('S 57', 57, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr 6m', '1', 'SITT', '2'),
('S 58', 58, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '6yr', '1', 'SITT', '2'),
('S 59', 59, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'M', '5yr 2m', '1', 'SITT', '2'),
('S 60', 60, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr 8m', '1', 'SITT', '2'),
('S 61', 61, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr 3m', '1', 'SITT', '2'),
('S 62', 62, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'M', '6yr 2m', '1', 'SITT', '2'),
('S 63', 63, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '7yr 1m', '1', 'SITT', '2'),
('S 64', 64, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr', '1', 'SITT', '2'),
('S 65', 65, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr 2m', '1', 'SITT', '2'),
('S 66', 66, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'M', '5yr 7m', '1', 'SITT', '2'),
('S 67', 67, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'F', '5yr', '1', 'SITT', '2'),
('S 68', 68, 'Assam', 'Golaghat', '', 'Bengenakhowa Gaon', '2022-08-30', '1', '8', 'M', '4yr 3m', '1', 'SITT', '2'),
('S 69', 69, 'Assam', 'Golaghat', '', 'Mohmaikigaon', '2022-08-30', '1', '8', 'F', '6yr 3m', '1', 'SITT', '2'),
('S 70', 70, 'Assam', 'Golaghat', '', 'Mohmaikigaon', '2022-08-30', '1', '8', 'F', '6yr 1m', '1', 'SITT', '2'),
('S 71', 71, 'Assam', 'Golaghat', '', 'Mohmaikigaon', '2022-08-30', '1', '8', 'F', '6yr 8m', '1', 'SITT', '2'),
('S 72', 72, 'Assam', 'Golaghat', '', 'Sokodharagaon', '2022-08-30', '1', '8', 'F', '6yr', '1', 'SITT', '2'),
('S 73', 73, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '5yr 1m', '1', 'SITT', '2'),
('S 74', 74, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '5yr 7m', '1', 'SITT', '2'),
('S 75', 75, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '5yr 1m', '1', 'SITT', '2'),
('S 76', 76, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'M', '5yr 6m', '1', 'SITT', '2'),
('S 77', 77, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '6yr', '1', 'SITT', '2'),
('S 78', 78, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '6yr 3m', '1', 'SITT', '2'),
('S 79', 79, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'M', '5yr', '1', 'SITT', '2'),
('S 80', 80, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '5yr 9m', '1', 'SITT', '2'),
('S 81', 81, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'M', '5yr 2m', '1', 'SITT', '2'),
('S 82', 82, 'Assam', 'Nagaon', '', 'Barhampur', '2022-09-09', '1', '8', 'F', '4yr 1m', '1', 'SITT', '2'),
('S 83', 83, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '5yr 5m', '1', 'SITT', '2'),
('S 84', 84, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '6yr 2m', '1', 'SITT', '2'),
('S 85', 85, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '4yr 6m', '1', 'SITT', '2'),
('S 86', 86, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '5yr 3m', '1', 'SITT', '2'),
('S 87', 87, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '5yr 8m', '1', 'SITT', '2'),
('S 88', 88, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '6yr 5m', '1', 'SITT', '2'),
('S 89', 89, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '5yr 7m', '1', 'SITT', '2'),
('S 90', 90, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '4yr 5m', '1', 'SITT', '2'),
('S 91', 91, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'M', '4yr 2m', '1', 'SITT', '2'),
('S 92', 92, 'Assam', 'Nagaon', '', 'Salpara', '2022-09-09', '1', '8', 'F', '6yr 7m', '1', 'SITT', '2'),
('S 93', 93, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '5yr 6m', '1', 'SITT', '2'),
('S 94', 94, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '4yr 7m', '1', 'SITT', '2'),
('S 95', 95, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'M', '5yr 4m', '1', 'SITT', '2'),
('S 96', 96, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '5yr 2m', '1', 'SITT', '2'),
('S 97', 97, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '3yr 7m', '1', 'SITT', '2'),
('S 98', 98, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'M', '3yr 2m', '1', 'SITT', '2'),
('S 99', 99, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '4yr 6m', '1', 'SITT', '2'),
('S 100', 100, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'M', '4yr 1m', '1', 'SITT', '2'),
('S 101', 101, 'Assam', 'Nagaon', '', 'Pub Singimari', '2022-09-09', '1', '8', 'F', '5yr 2m', '1', 'SITT', '2'),
('S 102', 102, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'M', '5yr 4m', '1', 'SITT', '2'),
('S 103', 103, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '6yr', '1', 'SITT', '2'),
('S 104', 104, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '5yr 6m', '1', 'SITT', '2'),
('S 105', 105, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '4yr 4m', '1', 'SITT', '2'),
('S 106', 106, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'M', '4yr', '1', 'SITT', '2'),
('S 107', 107, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '3yr 8m', '1', 'SITT', '2'),
('S 108', 108, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '4yr 3m', '1', 'SITT', '2'),
('S 109', 109, 'Assam', 'Nagaon', '', 'Pachim Singimari', '2022-09-09', '1', '8', 'F', '6yr 8m', '1', 'SITT', '2'),
('S 110', 110, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '4yr 7m', '1', 'SITT', '2'),
('S 111', 111, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '5yr 8m', '1', 'SITT', '2'),
('S 112', 112, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '6yr 3m', '1', 'SITT', '2'),
('S 113', 113, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '4yr 3m', '1', 'SITT', '2'),
('S 114', 114, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '4yr 8m', '1', 'SITT', '2'),
('S 115', 115, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'M', '5yr 6m', '1', 'SITT', '2'),
('S 116', 116, 'Assam', 'Nagaon', '', 'Karaiguri', '2022-09-09', '1', '8', 'F', '4yr 2m', '1', 'SITT', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `ID` int(11) NOT NULL,
  `StateName` varchar(255) NOT NULL,
  `FileName` varchar(30) NOT NULL,
  `Location` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfiles`
--

INSERT INTO `tblfiles` (`ID`, `StateName`, `FileName`, `Location`) VALUES
(51, 'ASSAM', 'Brucellosis', 'file/Uploaded_Files/23032023050509Upload2_Manipur_Assam_.csv'),
(52, 'MANIPUR', 'Tuberculosis', 'file/Uploaded_Files/23032023050531TB_MANIPUR_ASSAM.csv');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `cname` varchar(150) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `cname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(13, 'Anuj', 'Kumar', 'NIFMD', 'phpgurukulteam@gmail.com', 'Test@123', '1234567890', '2021-08-09 18:30:00'),
(18, 'uma', 'I', '', 'uma@gmail.com', 'Uma@123', '4578451212', '2023-03-07 06:58:47'),
(19, 'raju', 's', 'NIFMD', 'nifmd@gmail.com', 'Nifmd@456', '8861602048', '2023-03-07 09:23:37'),
(20, 'Hari', 'krishna', 'NIAB', 'hari@niab.org.in', 'Hari@456', '7845121475', '2023-03-21 07:14:41'),
(21, 'suresh', 'kp', 'nivedi', 'suresh.kp@icar.gov.in', 'Sureshkp97', '9663590140', '2023-03-21 08:52:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
