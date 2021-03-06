-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 11:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrol_car_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrol_car_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(6, 'QX1123V', '2021-03-01 22:06:20', '2021-03-04 16:45:44', '0000-00-00 00:00:00'),
(34, 'QX222B', '2021-03-01 22:13:33', '2021-03-04 16:47:34', '0000-00-00 00:00:00'),
(35, 'QX222B', '2021-03-01 22:13:49', '2021-03-04 16:47:34', '0000-00-00 00:00:00'),
(36, 'QX223A', '2021-03-01 22:39:00', '2021-03-04 17:19:07', '0000-00-00 00:00:00'),
(37, 'QX3334E', '2021-03-01 22:41:26', '2021-03-04 16:48:31', '2021-03-04 17:07:54'),
(38, 'QX8885', '2021-03-04 17:21:03', '2021-03-04 17:31:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(1, 'David', '84736284', '060', 'ouside ITE West', 'Car clashed with van', '1', '2021-02-25 18:54:19'),
(2, 'David', '91234567', '010', 'CCK', 'Fire At CCK', '1', '2021-03-01 11:52:52'),
(3, 'David', '91234567', '010', 'CCK', 'Fire At CCK', '1', '2021-03-01 11:53:40'),
(4, 'david', '90280429', '010', 'jurong', 'fire at jurong', '1', '2021-03-01 12:16:25'),
(5, 'david', '90280429', '010', 'jurong', 'fire at jurong', '1', '2021-03-01 12:21:25'),
(6, 'Xen', '85357842', '010', 'BB', 'Fire at BB', '1', '2021-03-01 12:22:13'),
(7, 'Xen', '85357842', '010', 'BB', 'Fire at BB', '1', '2021-03-01 12:24:17'),
(8, 'Xen', '85357842', '010', 'BB', 'Fire at BB', '1', '2021-03-01 12:25:28'),
(9, 'Xen', '85357842', '010', 'woodlands', 'Fire at kopitiam', '1', '2021-03-01 13:37:53'),
(10, 'Xen', '90280429', '010', 'woodlands', 'Fire at shop', '1', '2021-03-01 13:40:23'),
(11, 'Xen', '90280429', '050', 'woodlands', 'tree fall on human', '1', '2021-03-01 13:40:41'),
(12, 'Xen', '90280429', '020', 'jurong west', 'gang fight', '1', '2021-03-01 13:41:43'),
(13, 'Xen', '90280429', '020', 'jurong west', 'fight kat jurong west', '1', '2021-03-01 13:45:58'),
(14, 'Xen', '90280429', '020', 'jurong west', 'pe sia', '1', '2021-03-01 13:50:52'),
(15, 'Xen', '90280429', '040', 'jurong west', 'bully siol', '1', '2021-03-01 13:51:38'),
(16, 'Xen', '85357842', '020', 'jurong west', 'riot at jurong', '1', '2021-03-01 13:57:10'),
(17, 'david', '85357842', '010', 'jurong west', 'fire jurong', '1', '2021-03-01 14:01:41'),
(18, 'Xen', '90280429', '020', 'jurong west', 'fight', '1', '2021-03-01 14:13:12'),
(19, 'Xen', '85357842', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 19:54:19'),
(20, 'david', '90280429', '020', 'jurong west', 'fight at west', '1', '2021-03-01 20:01:15'),
(21, 'Xen', '90280429', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 20:02:43'),
(22, 'Xen', '85357842', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 20:56:52'),
(23, 'Xen', '90280429', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 20:57:49'),
(24, 'Xen', '90280429', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 20:59:17'),
(25, 'david', '85357842', '020', 'jurong west', 'fight at jurong west', '1', '2021-03-01 21:01:48'),
(26, 'Xen', '85357842', '020', 'jurong west', 'fight at jurong', '1', '2021-03-01 21:11:40'),
(27, 'Xen', '85357842', '020', 'jurong west', 'fight at jurong', '1', '2021-03-01 21:12:03'),
(30, 'Xen ', '90280429', '020', 'jurong west', 'fight at jurong west', '2', '2021-03-01 21:48:19'),
(31, 'david ', '85357842', '020', 'jurong west', 'fight at jurong west', '2', '2021-03-01 21:54:05'),
(32, 'Xen ', '90280429', '020', 'jurong west', 'fight at jurong west', '2', '2021-03-01 22:01:39'),
(33, 'Xen', '90280429', '020', 'jurong west', 'riot at jurong west', '1', '2021-03-01 22:12:13'),
(34, 'Xen ', '90280429', '020', 'jurong west', 'riot at jurong west', '2', '2021-03-01 22:13:33'),
(35, 'Xen  ', '90280429', '020', 'jurong west', 'riot at jurong west', '2', '2021-03-01 22:13:49'),
(36, 'Xen   ', '90280429', '020', 'jurong west', 'riot at jurong west', '2', '2021-03-01 22:39:00'),
(37, 'Xen ', '90280429', '020', 'jurong west', 'fight at jurong west', '3', '2021-03-01 22:41:26'),
(38, 'sarah ', '85357842', '050', 'jurong west', 'tree fall', '2', '2021-03-04 17:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `inciden_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `inciden_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX999E', '1'),
('QX1111A', '3'),
('QX3334E', '3'),
('QX5521W', '3'),
('QX555T', '3'),
('QX7774', '3'),
('QX8885', '3'),
('QX1123V', '4'),
('QX222B', '4'),
('QX223A', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD KEY `patrol_car_id` (`patrol_car_id`),
  ADD KEY `incident_id` (`incident_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_desc` (`patrolcar_status_desc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrol_car_id`) REFERENCES `patrolcar` (`patrolcar_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
