-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 06:06 PM
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
  `activity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `activity_name`) VALUES
(1, 'Soccer'),
(2, 'Basketball'),
(3, 'Tennis'),
(4, 'Skating'),
(5, 'Cycling'),
(6, 'Running'),
(7, 'Fishing'),
(8, 'Dog Walking'),
(9, 'Picnicking'),
(10, 'Reading'),
(11, 'Yoga'),
(12, 'BBQ'),
(13, 'Skateboarding'),
(14, 'Swimming'),
(15, 'Playground'),
(16, 'Waterpark');

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
CREATE TABLE `park` (
  `park_id` int(11) NOT NULL,
  `park_name` varchar(100) NOT NULL,
  `park_address` text NOT NULL,
  `park_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`park_id`, `park_name`, `park_address`, `park_link`) VALUES
(1, 'Park Notre-Dame-de-Grâce', '3500 Av. Girouard, Montréal, QC H4A 1R2', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.8539966556073!2d-73.61641338446857!3d45.47274497910102!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc910b1c7d8a393%3A0x922f2e39b00077cd!2sParc%20Notre-Dame-de-Gr%C3%A2ce!5e0!3m2!1sfr!2sca!4v1680363261144!5m2!1sfr!2sca'),
(2, 'Park Angrignon', '3400 Trinitaires Blvd, Montreal, Quebec H4E 4J3', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2799.3129028613894!2d-73.60476438446949!3d45.443350379100615!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc9111d0b11ce91%3A0x6da70e35cff2055e!2sParc%20Angrignon!5e0!3m2!1sfr!2sca!4v1680363380280!5m2!1sfr!2sca'),
(3, 'Park Georges-Saint-Pierre', '999 Ave. Oxford, Montreal, Quebec H4A 2X4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2798.0633093246947!2d-73.61020688446871!3d45.46852857910094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc910bbdcfc4d79%3A0x443815d455094454!2sParc%20Georges-Saint-Pierre!5e0!3m2!1sfr!2sca!4v1680363420983!5m2!1sfr!2sca'),
(4, 'Vimy Park', '1 Argyle Ave, Westmount, Quebec', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.195588602518!2d-73.59788518446813!3d45.48600597910122!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91bd2a410f61f%3A0xffcf7e33b77ab364!2sParc%20de%20Vimy!5e0!3m2!1sfr!2sca!4v1680363466025!5m2!1sfr!2sca'),
(5, 'Park Saint-Henri', '810 Rue Agnès, Montreal, Quebec H4C 2P8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.489832756528!2d-73.58851808446828!3d45.48007997910112!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91a75facc9f21%3A0x8ac49d240d84e336!2sParc%20Saint-Henri!5e0!3m2!1sfr!2sca!4v1680363554535!5m2!1sfr!2sca'),
(6, 'Mount Royal Park', '1260 Remembrance Rd, Montreal, Quebec H3H 1A2', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2796.4228243795415!2d-73.59540658446757!3d45.501566379101305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91a3b89d50ee1%3A0x4c8dc463a4718c9a!2sParc%20du%20Mont-Royal!5e0!3m2!1sfr!2sca!4v1680363581983!5m2!1sfr!2sca'),
(7, 'Park Westmount', '327 Av. Melville, Westmount, Quebec H3Z 2J7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.4492332124414!2d-73.60086748446825!3d45.48089767910117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91a0a1d2a781d%3A0x2985b894593ec82d!2sParc%20Westmount!5e0!3m2!1sfr!2sca!4v1680363620446!5m2!1sfr!2sca'),
(8, 'Louis-Cyr Park', '200 Rue Saint-Ferdinand, Montreal, Quebec H4C 2S8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2797.691074352562!2d-73.58435658446841!3d45.476026679101174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc9109cd08977fd%3A0x8561612af1e4bac9!2sParc%20Louis-Cyr!5e0!3m2!1sfr!2sca!4v1680363688885!5m2!1sfr!2sca'),
(9, 'Park Treholme', '6800 Sherbrooke St W, Montreal, Quebec H4B 1P4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2798.4410802325883!2d-73.63450868446895!3d45.46091797910087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91733482f6d1f%3A0x2a068b9e4fa0d792!2sParc%20Trenholme!5e0!3m2!1sfr!2sca!4v1680363724569!5m2!1sfr!2sca'),
(10, 'Square Sir-George-Etienne-Cartier', '4550 Sainte Émilie St, Montreal, Quebec H4C 1L8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2798.4410802325883!2d-73.63450868446895!3d45.46091797910087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91733482f6d1f%3A0x2a068b9e4fa0d792!2sParc%20Trenholme!5e0!3m2!1sfr!2sca!4v1680363724569!5m2!1sfr!2sca'),
(11, 'Park Jarry', '205 Rue Gary-Carter, Montreal, Quebec H2R 2V7', ''),
(12, 'Paul-Doyon Park', 'Monkland Ave, Montreal, Quebec H4A 1C4', ''),
(13, 'Park Vinet', '550 Rue Vinet, Montreal, Quebec H3J 2L5', ''),
(14, 'Van-Horne Park', '4900 Ave Van Horne, Montreal, Quebec H3W 1J3', ''),
(15, 'Jeanne-Mance Park', '4422 Esplanade Ave, Montreal, Quebec H2W 2N4', ''),
(16, 'Madleine-Parent Park', '2801-2983 Saint-Patrick St., Montreal, Quebec H3K 1B9', ''),
(17, 'Park de la Confederation', '6262 Fielding Ave, Montreal, Quebec H3X 3S8', ''),
(18, 'Terry Fox Park', '5700 Rue Saint-Jacques, Montreal, Quebec H4A 2E9', ''),
(19, 'Park Benny', '6445 Monkland Ave, Montreal, Quebec H4B 1H2', ''),
(20, 'Leduc Park', 'Avenue Kensington, Montreal, Quebec H4B 2X6', '');

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
(1, 1, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(2, 2, '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm'),
(3, 3, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(4, 4, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(5, 5, '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm'),
(6, 6, '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7'),
(7, 7, '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7'),
(8, 8, '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm'),
(9, 9, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(10, 10, '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm'),
(11, 11, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(12, 12, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(13, 13, '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm', '6:00 am to 11:00 pm'),
(14, 14, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(15, 15, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(16, 16, '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7', '24h/7'),
(17, 17, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(18, 18, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(19, 19, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am'),
(20, 20, '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am', '6:00 am to 12:00 am');

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
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `park`
--
ALTER TABLE `park`
  MODIFY `park_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `park_open_hours`
--
ALTER TABLE `park_open_hours`
  MODIFY `open_hours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
