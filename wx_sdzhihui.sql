-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2019-12-26 15:43:16
-- 服务器版本： 5.7.26-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wx_sdzhihui`
--

-- --------------------------------------------------------

--
-- 表的结构 `dep_lottery`
--

CREATE TABLE IF NOT EXISTS `dep_lottery` (
  `id` int(11) NOT NULL,
  `open_id` varchar(50) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


--
-- 表的结构 `dep_wxuser`
--

CREATE TABLE IF NOT EXISTS `dep_wxuser` (
  `id` int(11) NOT NULL,
  `open_id` varchar(50) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `dep_lottery`
--
ALTER TABLE `dep_lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep_wxuser`
--
ALTER TABLE `dep_wxuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dep_lottery`
--
ALTER TABLE `dep_lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dep_wxuser`
--
ALTER TABLE `dep_wxuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
