-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Generation Time: Nov 03, 2023 at 12:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `care`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `Aname` varchar(255) NOT NULL,
  `Aemail` varchar(255) NOT NULL,
  `Apassword` varchar(255) NOT NULL,
  `AImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Aname`, `Aemail`, `Apassword`, `AImage`) VALUES
(1, 'Ifra', 'ifra@gmail.com', '$2y$10$5l3lAjcaopgu8v7qEUsnn.UpS5xNkCXQcmVCXsGC9oY4O9iGrEqmO', 'barbie 1.jpeg'),
(3, 'ifra', 'ifrakhan2804@gmail.com', '$2y$10$aSMYwuCuaj2elonOOwjxiuhTOiArlpwFZbq2BAmT6izUgvZPaWjnm', 'me.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pemail` varchar(255) NOT NULL,
  `pdoctor` int(255) NOT NULL,
  `pspecialization` varchar(255) NOT NULL,
  `pday` text NOT NULL,
  `ptime` text NOT NULL,
  `pstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`pid`, `pname`, `pemail`, `pdoctor`, `pspecialization`, `pday`, `ptime`, `pstatus`) VALUES
(4, 'fatima', 'fatima@gmail.com', 12, 'Pediatrician', 'Thus  - Sat', '8pm - 10pm', 1),
(5, 'fatima', 'fatima@gmail.com', 9, 'Dentist', 'monday - wednesday', '12am - 2pm', 1),
(6, 'fatima', 'fatima@gmail.com', 16, 'Gynecologist', 'Thus  - Sat', '3pm - 5pm', 1),
(7, 'fatima', 'fatima@gmail.com', 13, 'Gynecologist', 'Tue - Sat', '6pm - 9pm', 1),
(8, 'fatima', 'fatima@gmail.com', 15, 'General physician', 'monday - tuesday', '8pm - 10pm', 1),
(9, 'fatima', 'fatima@gmail.com', 10, 'Radiologist', 'monday - tuesday', '1pm to 5pm', 1),
(10, 'zara', 'zara@gmail.com', 9, 'Dentist', 'monday - wednesday', '12am - 2pm', 1),
(11, 'zara', 'zara@gmail.com', 10, 'Radiologist', 'monday - tuesday', '1pm to 5pm', 1),
(12, 'zara', 'zara@gmail.com', 11, 'Cardiologist', 'Fri - Sun', '5pm - 7pm', 1),
(13, 'zara', 'zara@gmail.com', 12, 'Pediatrician', 'Thus  - Sat', '8pm - 10pm', 1),
(14, 'zara', 'zara@gmail.com', 14, 'Dermatologist', 'Fri - Sat', '3pm - 5pm', 1),
(15, 'saad', 'saad@gmail.com', 16, 'Gynecologist', 'Thus  - Sat', '3pm - 5pm', 1),
(16, 'saad', 'saad@gmail.com', 15, 'General physician', 'monday - tuesday', '8pm - 10pm', 1),
(17, 'saad', 'saad@gmail.com', 13, 'Gynecologist', 'Tue - Sat', '6pm - 9pm', 1),
(18, 'saad', 'saad@gmail.com', 9, 'Dentist', 'monday - wednesday', '12am - 2pm', 1),
(19, 'saad', 'saad@gmail.com', 11, 'Cardiologist', 'Fri - Sun', '5pm - 7pm', 1),
(20, 'ariz', 'ariz@gmail.com', 11, 'Cardiologist', 'Fri - Sun', '5pm - 7pm', 1),
(21, 'ariz', 'ariz@gmail.com', 9, 'Dentist', 'monday - wednesday', '12am - 2pm', 1),
(22, 'ariz', 'ariz@gmail.com', 16, 'Gynecologist', 'Thus  - Sat', '3pm - 5pm', 1),
(23, 'ariz', 'ariz@gmail.com', 13, 'Gynecologist', 'Tue - Sat', '6pm - 9pm', 1),
(24, 'ariz', 'ariz@gmail.com', 15, 'General physician', 'monday - tuesday', '8pm - 10pm', 1),
(25, 'Maya', 'maya@gmail.com', 11, 'Cardiologist', 'Fri - Sun', '5pm - 7pm', 1),
(26, 'Maya', 'maya@gmail.com', 12, 'Pediatrician', 'Thus  - Sat', '8pm - 10pm', 1),
(27, 'Maya', 'maya@gmail.com', 10, 'Radiologist', 'monday - tuesday', '1pm to 5pm', 1),
(28, 'Maya', 'maya@gmail.com', 16, 'Gynecologist', 'Thus  - Sat', '3pm - 5pm', 1),
(29, 'Maya', 'maya@gmail.com', 14, 'Dermatologist', 'Fri - Sat', '3pm - 5pm', 1),
(30, 'fatima', 'fatima@gmail.com', 17, 'Cardiologist', 'Tue - Sat', '5pm - 7pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `bid` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `bdescription` varchar(255) NOT NULL,
  `btime` time(3) NOT NULL,
  `bdate` date NOT NULL,
  `bimage` varchar(255) NOT NULL,
  `bstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cid` int(11) NOT NULL,
  `Cities` varchar(255) NOT NULL,
  `Cstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cid`, `Cities`, `Cstatus`) VALUES
(5, 'Karachi', 1),
(6, 'Lahore', 1),
(7, 'Peshawar', 1),
(8, 'Islamabad', 1),
(9, 'Multan', 1),
(10, 'Faisalabad', 1),
(11, 'Quetta', 1),
(12, 'Hyderabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `Dusername` varchar(255) NOT NULL,
  `Demail` varchar(255) NOT NULL,
  `Dpassword` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `Dcity` int(11) NOT NULL,
  `Days` varchar(255) NOT NULL,
  `Dtime` text NOT NULL,
  `dstatus` tinyint(255) NOT NULL DEFAULT 1,
  `Dimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `Dusername`, `Demail`, `Dpassword`, `specialization`, `Dcity`, `Days`, `Dtime`, `dstatus`, `Dimage`) VALUES
(9, 'sarfraz', 'sarfraz@gmail.com', '$2y$10$cTSGQ0ZX1mLbJsCezV3DJ.HfUTzedrfUW.oL86n2Yya4eHW97cbDW', 'Dentist', 5, 'monday - wednesday', '12am - 2pm', 1, 'team-5.jpg'),
(10, 'kiran', 'kiran@gmail.com', '$2y$10$ghH2v.eN4cFj36cAFKa3BuzARgAlCrQ1Euam98iYtaj/TRjzFCuGu', 'Radiologist', 8, 'monday - tuesday', '1pm to 5pm', 1, 'team-2.jpg'),
(11, 'ahad', 'ahad@gmail.com', '$2y$10$vVo1kgEMIOD71L2DtBofVOP/SBJOgnjLJFz8uqljgnEcD6O45X5ju', 'Cardiologist', 6, 'Fri - Sun', '5pm - 7pm', 1, 'team-1.jpg'),
(12, 'Amna', 'amna@gmail.com', '$2y$10$3pth.XI8f3E6DhVy0RGLh.ae3WwM/bgr/KmNnDLmnuQvaFYQGcLVW', 'Pediatrician', 9, 'Thus  - Sat', '8pm - 10pm', 1, 'team-4.jpg'),
(13, 'Ali', 'ali@gmail.com', '$2y$10$WoSOQUFbJlNIH9hPtLZej.YWo8EEygCsF7aFfFTaUOU371V5k0lAe', 'Gynecologist', 12, 'Tue - Sat', '6pm - 9pm', 1, 'testimonial-1.jpg'),
(14, 'arham', 'arham@gmail.com', '$2y$10$h6Ls6kcWrvlK8TqctNHbxOeaKCCxr0lRSoetU90t0UEPbWu.niaRO', 'Dermatologist', 7, 'Fri - Sat', '3pm - 5pm', 1, 'team-3.jpg'),
(15, 'sara', 'sara@gmail.com', '$2y$10$hJParrGYoM9VNAHI1Ft9OOSZ9BOqdkOakQ1GtPdxQet6KUkqEgNkG', 'General physician', 5, 'monday - tuesday', '8pm - 10pm', 1, 'g1.jpg'),
(16, 'maha', 'maha@gmail.com', '$2y$10$cdD/Gz0.n1Lkhz/1Hwe54esO8D3s4NLX0ygI0owcW10JW0tutrOLK', 'Gynecologist', 10, 'Thus  - Sat', '3pm - 5pm', 1, 'g3.jpg'),
(17, 'azlan', 'azlan@gmail.com', '$2y$10$dRRFvAFPLqtFx/DsQENAT.q3TaLVGm4cxyNS8Zh/lYkgphlYollDy', 'Cardiologist', 7, 'Tue - Sat', '5pm - 7pm', 1, 'b2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `PImage` varchar(255) NOT NULL,
  `pstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `email`, `password`, `phone`, `PImage`, `pstatus`) VALUES
(2, 'fatima', 'fatima@gmail.com', '$2y$10$oLqlmaO2ct/ZPkseS9TQ2uIvYjwIH/LW9Z2/bKilR2jzqiTZpYtGK', '', 'g2.jpeg', 1),
(3, 'zara', 'zara@gmail.com', '$2y$10$iahBl2YmH40x00/UPzkUf.YUHw.le6SVTB6MtZWwQ0CR8Ku11oA/S', '09865433', 'g3.jpg', 1),
(4, 'saad', 'saad@gmail.com', '$2y$10$YHpSaa8r.mCJqSv/KCONZ.Mn0jLA9oTiLI01Ir4CbB5FGDcPh.tSW', '898e673e76', 'b1.jpeg', 1),
(5, 'ariz', 'ariz@gmail.com', '$2y$10$RZSWcQ0bwCTFOVxOmwJlg.DD05YfwZNoNptMGXF7osJn.2gBJzdhy', '', 'g4.jpg', 1),
(6, 'Maya', 'maya@gmail.com', '$2y$10$MRiY98T2dAlKNZ7ecFQKF.UvkdRNwU3NCXMGxrOqp.VuU.hTD7ufK', '89783647', 'g5.jpg', 1),
(7, 'marium', 'marium@gmail.com', '$2y$10$NvK4I3kJdaS8zPuEBajwUu4aLZGlilsxZEJX9O6TiX/Q90gWJNiky', '89783647', '', 1),
(8, 'aleena', 'aleens@gmail.com', '$2y$10$z4qGKPLgtMXFZ4em18KFDejWwUnTQvsMj6yqzycTDoiqjfJ6PSCV.', '03123456789', '', 1),
(9, 'wania', 'wania@gmail.com', '$2y$10$c8WWVZhbIUe6rd1ciE9FJ.zPewIcMWFrhFSaiQxoVR7vtiXgM2myW', '89783647', '', 1),
(10, 'sameer', 'sameer@gmail.com', '$2y$10$GeOCW4MlzEcJQvENWHpPmOnhjniauVTplVL9vABLdZVgbwxvNr5qe', '89783647', '', 1),
(11, 'hamza', 'hamza@gmail.com', '$2y$10$q6oxl9lA4jeokRl1vhQktO3/eGUYiZ08nlgT.gNXbDEzTXTHagLrC', '0340870676ty', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `fk` (`pdoctor`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tt` (`Dcity`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `fk` FOREIGN KEY (`pdoctor`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `tt` FOREIGN KEY (`Dcity`) REFERENCES `cities` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
