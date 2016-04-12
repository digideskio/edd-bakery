-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 12:25 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

﻿--
-- Database: `edd`
--
﻿CREATE DATABASE IF NOT EXISTS `edd` DEFAULT CHARACTER SET utf16 COLLATE utf16_unicode_520_ci;
﻿USE `edd`;
﻿
-- --------------------------------------------------------

--
-- Table structure for table `store_cakes_tbl`
--

DROP TABLE IF EXISTS `store_cakes_tbl`;
CREATE TABLE IF NOT EXISTS `store_cakes_tbl` (
  `ID` int(10) unsigned NOT NULL,
  `Name` varchar(75) COLLATE utf16_unicode_520_ci NOT NULL,
  `Price` int(10) NOT NULL,
  `ImageBasePath` varchar(75) COLLATE utf16_unicode_520_ci NOT NULL,
  `Details` text COLLATE utf16_unicode_520_ci NOT NULL,
  `ActiveStatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_520_ci;
﻿
--
-- Dumping data for table `store_cakes_tbl`
--

﻿INSERT INTO `store_cakes_tbl` (`ID`, `Name`, `Price`, `ImageBasePath`, `Details`, `ActiveStatus`) VALUES
(1, 'Baker''s Choice Bars Assortment', 300, 'bars_assortment', 'A beautiful and delicious assortment of our bakery’s double fudge brownies, chocolate chunk blondies and magic cookie bars.', 1)﻿,
(2, 'Chocolate Lover''s Cookie Assortment', 450, 'choc-cookies_assortment', 'Enjoy each of our six extra-large cranberry white-chocolate chunk cookies made with tart dried cranberries and toasted pecans, chocolate dipped coconut flavored macaroons with crisp exterior and a soft, chewy interior and a dozen chocolate chunk cookies.', 1)﻿;
﻿
-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

DROP TABLE IF EXISTS `users_tbl`;
CREATE TABLE IF NOT EXISTS `users_tbl` (
  `UserID` int(255) unsigned NOT NULL,
  `FirstName` varchar(25) CHARACTER SET latin1 NOT NULL,
  `LastName` varchar(25) CHARACTER SET latin1 NOT NULL,
  `Username` varchar(25) CHARACTER SET latin1 NOT NULL,
  `Password` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_520_ci;
﻿
--
-- Dumping data for table `users_tbl`
--

﻿INSERT INTO `users_tbl` (`UserID`, `FirstName`, `LastName`, `Username`, `Password`) VALUES
(1, 'admin', '-', 'eddadmin', '$2y$10$JlmqNlL4fFJBGO0VXhn0KuK3tyeLQdF3VXLIMcdm2K0.xNL6zs3V6')﻿;
﻿
--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_cakes_tbl`
--
ALTER TABLE `store_cakes_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`UserID`);
﻿
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store_cakes_tbl`
--
ALTER TABLE `store_cakes_tbl`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `UserID` int(255) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;