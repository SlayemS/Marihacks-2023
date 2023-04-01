-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 04:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parktivity`
--
CREATE DATABASE IF NOT EXISTS `parktivity` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parktivity`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `activity_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `activity_name`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
CREATE TABLE `park` (
  `park_id` int(11) NOT NULL,
  `park_name` varchar(100) NOT NULL,
  `park_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`park_id`, `park_name`, `park_address`) VALUES
(1, 'Park Notre-Dame-de-Grâce', '3500 Av. Girouard, Montréal, QC H4A 1R2'),
(2, 'Park Angrignon', '3400 Trinitaires Blvd, Montreal, Quebec H4E 4J3'),
(3, 'Park Georges-Saint-Pierre', '999 Ave. Oxford, Montreal, Quebec H4A 2X4'),
(4, 'Vimy Park', '1 Argyle Ave, Westmount, Quebec'),
(5, 'Park Saint-Henri', '810 Rue Agnès, Montreal, Quebec H4C 2P8'),
(6, 'Mount Royal Park', '1260 Remembrance Rd, Montreal, Quebec H3H 1A2'),
(7, 'Park Westmount', '327 Av. Melville, Westmount, Quebec H3Z 2J7'),
(8, 'Louis-Cyr Park', '200 Rue Saint-Ferdinand, Montreal, Quebec H4C 2S8'),
(9, 'Park Treholme', '6800 Sherbrooke St W, Montreal, Quebec H4B 1P4'),
(10, 'Square Sir-George-Etienne-Cartier', '4550 Sainte Émilie St, Montreal, Quebec H4C 2B1'),
(11, 'Park Jarry', '205 Rue Gary-Carter, Montreal, Quebec H2R 2V7'),
(12, 'Paul-Doyon Park', 'Monkland Ave, Montreal, Quebec H4A 1C4'),
(13, 'Park Vinet', '550 Rue Vinet, Montreal, Quebec H3J 2L5'),
(14, 'Van-Horne Park', '4900 Ave Van Horne, Montreal, Quebec H3W 1J3'),
(15, 'Jeanne-Mance Park', '4422 Esplanade Ave, Montreal, Quebec H2W 2N4'),
(16, 'Madleine-Parent Park', '2801-2983 Saint-Patrick St., Montreal, Quebec H3K 1B9'),
(17, 'Park de la Confederation', '6262 Fielding Ave, Montreal, Quebec H3X 3S8'),
(18, 'Terry Fox Park', '5700 Rue Saint-Jacques, Montreal, Quebec H4A 2E9'),
(19, 'Park Benny', '6445 Monkland Ave, Montreal, Quebec H4B 1H2'),
(20, 'Leduc Park', 'Avenue Kensington, Montreal, Quebec H4B 2X6');

-- --------------------------------------------------------

--
-- Table structure for table `park_activities`
--

DROP TABLE IF EXISTS `park_activities`;
CREATE TABLE `park_activities` (
  `activity_id` int(11) NOT NULL,
  `park_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `park_open_hours`
--

DROP TABLE IF EXISTS `park_open_hours`;
CREATE TABLE `park_open_hours` (
  `open_hours_id` int(11) NOT NULL,
  `park_id` int(11) NOT NULL,
  `open_hours_monday` text NOT NULL,
  `open_hours_tuesday` text NOT NULL,
  `open_hours_wednesday` text NOT NULL,
  `open_hours_thursday` text NOT NULL,
  `open_hours_friday` text NOT NULL,
  `open_hours_saturday` text NOT NULL,
  `open_hours_sunday` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `park_open_hours`
--

INSERT INTO `park_open_hours` (`open_hours_id`, `park_id`, `open_hours_monday`, `open_hours_tuesday`, `open_hours_wednesday`, `open_hours_thursday`, `open_hours_friday`, `open_hours_saturday`, `open_hours_sunday`) VALUES
(1, 1, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `park`
--
ALTER TABLE `park`
  ADD PRIMARY KEY (`park_id`);

--
-- Indexes for table `park_activities`
--
ALTER TABLE `park_activities`
  ADD PRIMARY KEY (`activity_id`,`park_id`),
  ADD KEY `park_to_park_activities` (`park_id`);

--
-- Indexes for table `park_open_hours`
--
ALTER TABLE `park_open_hours`
  ADD PRIMARY KEY (`open_hours_id`),
  ADD KEY `park_to_park_open_hours` (`park_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `park`
--
ALTER TABLE `park`
  MODIFY `park_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `park_open_hours`
--
ALTER TABLE `park_open_hours`
  MODIFY `open_hours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `park_activities`
--
ALTER TABLE `park_activities`
  ADD CONSTRAINT `activity_to_park_activities` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`activity_id`),
  ADD CONSTRAINT `park_to_park_activities` FOREIGN KEY (`park_id`) REFERENCES `park` (`park_id`);

--
-- Constraints for table `park_open_hours`
--
ALTER TABLE `park_open_hours`
  ADD CONSTRAINT `park_to_park_open_hours` FOREIGN KEY (`park_id`) REFERENCES `park` (`park_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
