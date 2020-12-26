-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 09:11 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamroad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` char(30) NOT NULL,
  `password` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'udhav', 'basnet');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `feed` text NOT NULL,
  `tyme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_cats`
--

CREATE TABLE `item_cats` (
  `id` int(1) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_cats`
--

INSERT INTO `item_cats` (`id`, `category`) VALUES
(1, 'Automobile'),
(2, 'Phone & Tablet'),
(3, 'Electronics'),
(4, 'Services'),
(5, 'Hobbies, art & sport'),
(6, 'Fashion'),
(7, 'Real Estate'),
(8, 'Job');

-- --------------------------------------------------------

--
-- Table structure for table `item_sub_cats`
--

CREATE TABLE `item_sub_cats` (
  `cat_id` int(1) DEFAULT NULL,
  `sub_category` varchar(33) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_sub_cats`
--

INSERT INTO `item_sub_cats` (`cat_id`, `sub_category`) VALUES
(1, 'Car'),
(1, 'Car and Motorcycle Accessories'),
(1, 'Commercial and Trucks'),
(1, 'Motorcycles'),
(2, 'Mobile phone'),
(2, 'Phone and Tablet Accessories'),
(2, 'Tablet'),
(3, 'Laptop and Desktop Computer'),
(3, 'Computer accessories'),
(1, 'Winger'),
(3, 'Console and Video games'),
(3, 'TV, Audio and Video'),
(4, 'Automobile services'),
(4, 'Building services'),
(4, 'Educational services'),
(4, 'Laundary and Cleaning services'),
(4, 'Computer and IT services'),
(4, 'DJ and Entertaining services'),
(4, 'Health services'),
(4, 'Classes and course'),
(4, 'Other services'),
(5, 'Books'),
(5, 'Games'),
(5, 'CDs and DVDs'),
(5, 'Art and Craft'),
(5, 'Sporting equipment & Fitness'),
(5, 'Musicals'),
(6, 'Clothing'),
(6, 'Shoes'),
(6, 'Bags'),
(6, 'Jewelry & Watches'),
(6, 'fashion accessories'),
(6, 'Others'),
(7, 'Land & Plot for sale'),
(7, 'House, Apartment & Lodge for rent'),
(7, 'House, Apartment & Lodge for sale'),
(7, 'Office, Shop & Commercial'),
(7, 'Vacational or Temporal rents'),
(8, 'Accounting & Financial job'),
(8, 'Advertising & Marketing job'),
(8, 'Art & Entertainment'),
(8, 'Administrative & Clerical job'),
(8, 'Skilled trade jobs'),
(8, 'Drivers jobs'),
(8, 'Engineering jobs'),
(8, 'Gardening & Lanscaping jobs'),
(8, 'Health & Nursing jobs'),
(8, 'Hotels jobs'),
(8, 'House Keeping & Cleaning jobs'),
(8, 'Internship'),
(8, 'Legal jobs'),
(8, 'Manufacturing jobs'),
(8, 'Retail jobs'),
(8, 'Office jobs'),
(8, 'Part-time jobs'),
(8, 'Restaurant & Bar jobs'),
(8, 'Security jobs'),
(8, 'Teaching jobs'),
(8, 'Travel & Tourism jobs'),
(8, 'Other jobs'),
(2, 'Phone and Tablet Accessories'),
(3, 'Laptop and Desktop Computer'),
(2, 'Nokia'),
(3, 'Console and Video games'),
(3, 'TV, Audio and Video'),
(4, 'Laundary and Cleaning services'),
(4, 'DJ and Entertaining services'),
(4, 'Photographic and Video services'),
(4, 'Travel agent and tour '),
(4, 'Classes and course'),
(5, 'CDs and DVDs'),
(5, 'Art and Craft');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `user`, `password`, `phone`, `email`, `state`) VALUES
(1, 'udhav basnet', 'udhavbasnet0001', 'c06db68e819be6ec3d26c6038d8e8d1f', '9848216599', 'udhavb32@gmail.com', 'Province  No 1'),
(2, 'Jhakas', 'jhakas1', 'c830843c9eb8477c6a9f364538b7ccc4', '9848216599', 'udhav@gmail.com', 'Province  No 1'),
(3, 'Jitendra Shrestha', 'jitendra', '02ef428c4cade90c0abe7a614e4163d3', '9848216599', 'tjiten123@gmail.com', 'Gandaki Pradesh'),
(4, 'Mani Maharjan', 'manimaharjan', '16d7a4fca7442dda3ad93c9a726597e4', '9848030135', 'mani@gmail.com', ''),
(5, 'Rupak Thapa', 'rupak', '16d7a4fca7442dda3ad93c9a726597e4', '123456789', 'rupak@gmail.com', 'Sudurpachimanchal Pachimanchal'),
(6, 'Diwakar Shrestha Bhai', 'diwakar1', '16d7a4fca7442dda3ad93c9a726597e4', '9848216599', 'diwakarshrestham@gmail.com', 'Gandaki Pradesh'),
(7, 'Bikashman Tamang', 'good2bdead', 'fb4e439b3805fa4a247a521df8219f7c', '9864475755', 'www.becashman12345@gmail.com', ''),
(8, 'Babin karmachraya', 'erick', '7b55f59d034002b5fdb7eee735c8846f', '9850000000', 'erick.k@gmail.com', ''),
(9, 'bibek', 'bibek', 'c06db68e819be6ec3d26c6038d8e8d1f', '9848216599', 'udhavb32@gmail.com', 'Province No. 5'),
(10, 'Chanas Gyawali', 'chanas', '16d7a4fca7442dda3ad93c9a726597e4', '9848216599', 'chanas@gmail.com', 'Province No. 5'),
(11, 'jhakas', 'jhakasbasnet', '821106231dd2ca41d2714a4f986ec0ad', '9848216599', 'jhakas@gmail.com', 'Gandaki Pradesh'),
(12, 'Udhav Basent', 'udhavbasnet001', 'c06db68e819be6ec3d26c6038d8e8d1f', '9848216599', 'udhavb32@gmail.com', 'Gandaki Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `ads_id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `content` text NOT NULL,
  `user` varchar(50) NOT NULL,
  `senttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `ads_id`, `title`, `email`, `phone`, `content`, `user`, `senttime`) VALUES
(2, 'EXjM2Tt9qNkPRoWQN253reF9Bp1yB2', '6d glass', 'udhavb@gmail.com', '', 'hello', 'rupak', '2019-05-28 03:08:21'),
(3, 'ztsI6mrSS7W13KHskpioTJA8OzmnQR', 'Merom Card', 'udhavb32@gmail.com', '', 'hello', 'rupak', '2019-05-28 05:49:04'),
(4, '64VbWX9iMsIdLPi0Pp2MHk8MmUevZe', 'Cell Phone', 'bibek@gmail.com', '', 'hello', 'rupak', '2019-05-28 07:07:56'),
(5, '64VbWX9iMsIdLPi0Pp2MHk8MmUevZe', 'Cell Phone', 'udhavb32@gmail.com', '', 'hello', 'rupak', '2019-05-28 07:17:03'),
(6, '64VbWX9iMsIdLPi0Pp2MHk8MmUevZe', 'Cell Phone', 'udhav_b@yahoo.com', '', '2271  Hardesty Street', 'rupak', '2019-06-05 11:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(2) NOT NULL,
  `ads_id` varchar(55) NOT NULL,
  `user` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prize` int(20) NOT NULL,
  `item_pix` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `state` varchar(40) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `ads_id`, `user`, `title`, `description`, `prize`, `item_pix`, `name`, `phone`, `state`, `post_date`, `category`, `sub_category`) VALUES
(5, '3ePAy0VejOosWhQc0RoOxLWafO2AUq', 'rupak', 'mobile cover', 'Latest New Unused Product', 800, 'img/mobile cover', 'Rupak Thapa', 123456789, 'Province No. 5', '2019-05-27 21:10:28', '2', 'Mobile phone'),
(5, 'ztsI6mrSS7W13KHskpioTJA8OzmnQR', 'rupak', 'Merom Card', '64 gb', 300, 'img/Merom Card', 'Rupak Thapa', 123456789, 'Province No. 5', '2019-05-27 21:11:07', '2', 'Mobile phone'),
(5, 'RRlW6O5WitBPnsudGinqGaaztFPcFu', 'rupak', 'Watch', 'babal watch', 200, 'img/Watch', 'Rupak Thapa', 123456789, 'Sudurpachimanchal Pachimanchal', '2019-05-27 21:12:16', '2', 'Mobile phone'),
(5, '64VbWX9iMsIdLPi0Pp2MHk8MmUevZe', 'rupak', 'Cell Phone', 'cell phone started from 2000', 2000, 'img/Cell Phone', 'Rupak Thapa', 123456789, 'Province No. 5', '2019-05-27 21:13:11', '2', 'Mobile phone');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(4) NOT NULL,
  `state` varchar(40) DEFAULT NULL,
  `s_id` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `s_id`) VALUES
(1, 'Province  No 1', 1),
(4, 'Gandaki Pradesh', 4),
(3, 'Province  No 3', 3),
(2, 'Province No 2', 2),
(10, 'Province No. 5', 10),
(25, 'Karnali Pradesh', 25),
(27, 'Sudurpachimanchal Pachimanchal', 27);

-- --------------------------------------------------------

--
-- Table structure for table `user_count`
--

CREATE TABLE `user_count` (
  `pagename` varchar(250) NOT NULL,
  `views` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_count`
--

INSERT INTO `user_count` (`pagename`, `views`) VALUES
('main', 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
