-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 06:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examin`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `login_id` int(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`login_id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '151593');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `login_id` int(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`login_id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123'),
(12, 'dagi', 'dagi@gmail.com', '123'),
(13, 'toba', 'toba@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `eid` text NOT NULL,
  `id` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`eid`, `id`, `ansid`) VALUES
('63ef21872574c', '63ef29fd46825', '63ef29fd51890'),
('63ef21872574c', '63ef29fd559e6', '63ef29fd56158'),
('63ef21872574c', '63ef29fd5886f', '63ef29fd59b5d'),
('63ef21872574c', '63ef29fd5c260', '63ef29fd5dab4'),
('63ef21872574c', '63ef29fd5f33e', '63ef29fd60132'),
('63ef21872574c', '63ef29fd62131', '63ef29fd629fa'),
('63ef21872574c', '63ef29fd64e5d', '63ef29fd65607'),
('63ef21872574c', '63ef29fd675cb', '63ef29fd68dc1'),
('63ef21872574c', '63ef29fd69bbe', '63ef29fd6adc8'),
('63ef21872574c', '63ef29fd6c02d', '63ef29fd6d9e2');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(600) NOT NULL,
  `description` varchar(900) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `historyid` bigint(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eid` text NOT NULL,
  `totals` int(20) NOT NULL,
  `correct` int(20) NOT NULL,
  `wrong` int(20) NOT NULL,
  `score` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`historyid`, `email`, `eid`, `totals`, `correct`, `wrong`, `score`, `date`) VALUES
(48, 'admin@gmail.com', '63ef21872574c', 10, 0, 0, 0, '2023-02-23 07:45:17'),
(49, 'ad@gmail.com', '63ef21872574c', 10, 3, 7, -40, '2023-03-04 05:04:11'),
(50, 'sam@gmail.com', '63ef21872574c', 10, 1, 0, 10, '2023-03-01 17:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(50) NOT NULL,
  `meeting_title` varchar(600) NOT NULL,
  `time` varchar(900) NOT NULL,
  `name` varchar(600) NOT NULL,
  `link` varchar(2000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(50) NOT NULL,
  `notification_title` varchar(600) NOT NULL,
  `details` varchar(900) NOT NULL,
  `name` varchar(600) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `optionid` text NOT NULL,
  `id` text NOT NULL,
  `optn` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`optionid`, `id`, `optn`) VALUES
('63ef29fd4b8e4', '63ef29fd46825', 'Collection of hardware components and computer'),
('63ef29fd4f8c9', '63ef29fd46825', 'Interconnected by communication channels'),
('63ef29fd4ff55', '63ef29fd46825', 'Sharing of resources and information'),
('63ef29fd51890', '63ef29fd46825', 'All of the above'),
('63ef29fd56158', '63ef29fd559e6', 'File transfer protocol '),
('63ef29fd5685f', '63ef29fd559e6', 'File transmission protocol '),
('63ef29fd56fd8', '63ef29fd559e6', 'Form transfer protocol '),
('63ef29fd57819', '63ef29fd559e6', 'Form transmission protocol'),
('63ef29fd59b5d', '63ef29fd5886f', 'Bus '),
('63ef29fd5a411', '63ef29fd5886f', 'Ring'),
('63ef29fd5abc5', '63ef29fd5886f', 'Star '),
('63ef29fd5b378', '63ef29fd5886f', 'Tree'),
('63ef29fd5c9f1', '63ef29fd5c260', 'Network virtual terminal '),
('63ef29fd5d19c', '63ef29fd5c260', ' File transfer, access and management '),
('63ef29fd5dab4', '63ef29fd5c260', 'Mail service'),
('63ef29fd5e354', '63ef29fd5c260', 'All of the above'),
('63ef29fd5fa17', '63ef29fd5f33e', 'Node to node delivery '),
('63ef29fd60132', '63ef29fd5f33e', 'End to end delivery '),
('63ef29fd60865', '63ef29fd5f33e', 'Synchronization '),
('63ef29fd6104f', '63ef29fd5f33e', 'Updating and maintaining routing tables'),
('63ef29fd629fa', '63ef29fd62131', ' Physical '),
('63ef29fd6314f', '63ef29fd62131', 'Transport '),
('63ef29fd63832', '63ef29fd62131', 'Data Link '),
('63ef29fd63f7a', '63ef29fd62131', 'Presentation'),
('63ef29fd65607', '63ef29fd64e5d', 'Application '),
('63ef29fd65db8', '63ef29fd64e5d', 'Presentation '),
('63ef29fd663f4', '63ef29fd64e5d', 'Session '),
('63ef29fd6694e', '63ef29fd64e5d', 'Transport'),
('63ef29fd67c12', '63ef29fd675cb', 'File service'),
('63ef29fd68238', '63ef29fd675cb', 'Print service '),
('63ef29fd6882e', '63ef29fd675cb', 'Database service '),
('63ef29fd68dc1', '63ef29fd675cb', 'All of the above'),
('63ef29fd6a1f5', '63ef29fd69bbe', 'Bus Topology '),
('63ef29fd6a804', '63ef29fd69bbe', 'Ring Topology '),
('63ef29fd6adc8', '63ef29fd69bbe', 'Star Topology '),
('63ef29fd6b3ad', '63ef29fd69bbe', 'Tree Topology'),
('63ef29fd6c61d', '63ef29fd6c02d', 'Fiber Distributed Data Interface '),
('63ef29fd6cbf7', '63ef29fd6c02d', 'Fiber Data Distributed Interface '),
('63ef29fd6d1d5', '63ef29fd6c02d', 'Fiber Dual Distributed Interface '),
('63ef29fd6d9e2', '63ef29fd6c02d', 'Fiber Distributed Data Interface');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `eid` text NOT NULL,
  `id` text NOT NULL,
  `qns` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`eid`, `id`, `qns`) VALUES
('63ef21872574c', '63ef29fd46825', 'Computer Network is '),
('63ef21872574c', '63ef29fd559e6', 'FTP stands for'),
('63ef21872574c', '63ef29fd5886f', 'Ethernet system uses which of the following technology.'),
('63ef21872574c', '63ef29fd5c260', 'Which of the following is an application layer service?'),
('63ef21872574c', '63ef29fd5f33e', 'Which is the main function of transport layer?'),
('63ef21872574c', '63ef29fd62131', 'The............. layer change bits onto electromagnetic signals.\r\n'),
('63ef21872574c', '63ef29fd64e5d', 'TCP/IP ..................layer corresponds to the OSI models to three layers.\r\n'),
('63ef21872574c', '63ef29fd675cb', 'Which of the following are the network services?'),
('63ef21872574c', '63ef29fd69bbe', 'If all devices are connected to a central hub, then topology is called\r\n'),
('63ef21872574c', '63ef29fd6c02d', 'FDDI stands for');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(100) NOT NULL,
  `time` bigint(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `total`, `correct`, `wrong`, `time`, `date`) VALUES
('63ef21872574c ', 'NETWORKING', 10, 10, 10, 15, '2023-02-17 06:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `email` varchar(100) NOT NULL,
  `rank` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`email`, `rank`) VALUES
('abc@gmail.com', 0),
('xyz@gmail.com', -2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `collage` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `collage`, `email`, `password`) VALUES
('abc', 'Male', 'juet', 'abc@gmail.com', 'abc123'),
('io', 'Male', 'au', 'ad@gmail.com', 'zaq'),
('uedyiu', 'Male', 'wedi', 'admini@gmail.com', '123'),
('xxz', 'female', 'zx', 'admm@gmail.com', 'zz'),
('xjz', 'female', 'ssd', 'au@gmail.com', 'mmm'),
('gui', 'female', 'da', 'gui@gmail.com', 'zxc'),
('sam', 'Male', 'cosc', 'sam@gmail.com', 'asd'),
('xyz', 'Male', 'jp', 'xyz@gmail.com', 'xyz123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD UNIQUE KEY `ansid` (`ansid`) USING HASH;

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`historyid`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD UNIQUE KEY `optionid` (`optionid`) USING HASH;

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD UNIQUE KEY `id` (`id`) USING HASH;

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `eid` (`eid`) USING HASH;

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `login_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `historyid` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
