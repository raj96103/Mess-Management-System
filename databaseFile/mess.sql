-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 11:37 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mess`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `sno` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`sno`, `fname`, `lname`, `email`, `password`, `mobile`) VALUES
(1, 'Mr.', 'Admin', 'admin@gmail.com', 'admin@123', 9988776655);

-- --------------------------------------------------------

--
-- Table structure for table `attendance1`
--

CREATE TABLE `attendance1` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance1`
--

INSERT INTO `attendance1` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance2`
--

CREATE TABLE `attendance2` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance2`
--

INSERT INTO `attendance2` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance3`
--

CREATE TABLE `attendance3` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance3`
--

INSERT INTO `attendance3` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Absent'),
(2, 2, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance4`
--

CREATE TABLE `attendance4` (
  `sno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `attendance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance4`
--

INSERT INTO `attendance4` (`sno`, `id`, `date`, `attendance`) VALUES
(1, 1, '2021-04-17', 'Present'),
(2, 2, '2021-04-17', 'Present'),
(3, 3, '2021-04-17', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `rating` varchar(100) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `uid`, `date`, `rating`, `feedback`) VALUES
(2, 2, '2021-04-16', 'Good', 'Food is awesome'),
(3, 1, '2021-04-16', 'Excellent', 'Delicious food.');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `sno` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `meal1` varchar(250) NOT NULL,
  `meal2` varchar(250) NOT NULL,
  `meal3` varchar(250) NOT NULL,
  `meal4` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`sno`, `day`, `meal1`, `meal2`, `meal3`, `meal4`) VALUES
(1, 'Monday', 'Idly-Shambar ,Nariyal chutney and sprouts.', 'Sev-tamatar ,Arhar dal tadka, Jeera rice ,Chapati ,Masala chhas, Green Chutney.', 'One bread, Glass of milk or tea.', 'Aloo mutter tamatar(dry), Arhar dal fry ,veg-biryani , Poori and Boondi ladoo.'),
(2, 'Tuesday', 'Poha jalebi, Namkeen , Chopped onion, Lemon and sprouts.', 'Mix-veg, Masoor dal(fry) , Veg rice, Chapatti , Dahi vada, papad.', 'One cup  grapes, Glass of lemon tea or herbal tea', 'Shahi-paneer, Dal makhani, Plian rice and chapatti, suji halwa.'),
(3, 'Wednesday', 'Option 1: Gobhi-Methi Paratha,\r\nTomato Chutney and Sprouts.\r\n\r\nOption 2: Suji Halwa (using kirana items), Chana Masala and Sprouts.', 'Bhindi Masala, Kadhi-Pakoda, Jeera\r\n\r\nRice, Chapati, Fryms', 'One apple, One cheese toast.', 'Chole, Bhature, Arhar Daal Fry, Plain Rice, Green-Salad and Imarti or Ice Cream'),
(4, 'Thursday', 'Paav-Bhaji with Chopped Onions,\r\nLemon and Sprouts.', 'Mix-Veg, Mix Dal Fry, Veg-Pulao, Chapati, Boondi Raita.', 'One fresh pineapple slice, Four graham crackers, Sparkling water with lemon or lime slice.', 'Paneer Masala, Arhar Dal Tadka, Jeera Rice, Chapati, Fryms and Gulab Jamun (2-pieces).'),
(5, 'Friday', 'Aloo Sabji, Poori and Sprouts.', 'Phool Gobhi-Mutter, Masoor Daal (Dal Fry), Jeera Rice, Chapati, Green Chutney.', 'One apple, One pita with two tablespoons hummus, Sparkling water with lime slice', 'Baigan Bharta, Moong Dal Fry, Plain Rice, Chapati, Papad\r\n Option 1: Sevai; Option 2: Kheer; Option 3: Nariyal Barf'),
(6, 'Saturday', 'Masala Dosa, Sambhar, Nariy Chutney and Sprouts.', 'Chole, Khichdi, Chapati, Papad, Masala Chhas, Green Chutney.', 'One cup cottage cheese, One fresh peach.', 'Phool Gobhi-Aloo, Arhar Dal fry, Plain Rice, Chapati'),
(7, 'Sunday', 'Aloo Paratha, Tomato Chutney and Sprouts.', 'Chhas, Green Chutney ,Aloo-Baigan Masala, Arhar Dal Fry. Plain Rice, Chapati, Fryms, and Boondi Raita', 'One cup raw broccoli florets, One cup raw sliced carrot, Two tablespoons veggie dip or salad dressing', 'Matter-Paneer. Dal Makhani, Veg Biryani, Chapati, Veg-Raita, Rasgulla (2-piece), Tawa Veg (Phool Gobhi, Aloo, Karela) and Papad');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `fname`, `lname`, `email`, `password`, `mobile`, `address`) VALUES
(1, 'abhijit', 'sarkar', 'abhijit@gmail.com', 'abhijit@123', 6290023450, 'W.B.'),
(2, 'abhiraj', 'ram', 'ram@gmail.com', 'ram@123', 6290078920, 'Maharastra.'),
(3, 'adarsh', 'kumar', 'kumar@gmail.com', 'kumar@123', 6290045639, 'Bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance1`
--
ALTER TABLE `attendance1`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance2`
--
ALTER TABLE `attendance2`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance3`
--
ALTER TABLE `attendance3`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attendance4`
--
ALTER TABLE `attendance4`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance1`
--
ALTER TABLE `attendance1`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance2`
--
ALTER TABLE `attendance2`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance3`
--
ALTER TABLE `attendance3`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance4`
--
ALTER TABLE `attendance4`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
