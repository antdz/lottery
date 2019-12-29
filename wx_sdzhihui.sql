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
-- 转存表中的数据 `dep_lottery`
--

INSERT INTO `dep_lottery` (`id`, `open_id`, `status`, `create_time`, `update_time`) VALUES
(1, 'ojinp1bkJBQlnpSHyo52Vq2_gfyQ', 1, 1577338877, 1577338877),
(2, 'ojinp1QAqDXuv4U6BfsVIwhNSQxg', 1, 1577339365, 1577339365),
(3, 'ojinp1WEFOGGzKyF0KpGGPEyLzZo', 0, 1577339435, 1577339435),
(4, 'ojinp1Wn3xy0Kkds2XfzP-cUtgE8', 1, 1577339797, 1577339797),
(5, 'ojinp1ZVmKFqQLJNDgVTXG7Ez0Ps', 1, 1577339886, 1577339886),
(6, 'ojinp1XonjoPS3eoohXH4BayT534', 1, 1577340380, 1577340380),
(7, 'ojinp1YprDusL-CbHqvCgnmfX7XE', 0, 1577340576, 1577340576),
(8, 'ojinp1X3vjhAoWxmmP7j3Lg5WQl0', 0, 1577340659, 1577340659),
(9, 'ojinp1Z4NG2TQp-qRbWDkEI9x8IM', 0, 1577342533, 1577342533),
(10, 'ojinp1SkbUZkUcycbzr3x_Gkh8Tg', 0, 1577342679, 1577342679);

-- --------------------------------------------------------

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
-- 转存表中的数据 `dep_wxuser`
--

INSERT INTO `dep_wxuser` (`id`, `open_id`, `nickname`, `headimgurl`, `realname`, `telphone`, `create_time`, `update_time`) VALUES
(1, 'ojinp1bkJBQlnpSHyo52Vq2_gfyQ', '8J+HpiDwn4ezIPCfh7kg8J+HqSDwn4e/', 'http://thirdwx.qlogo.cn/mmopen/dY9SY5XM35f0CvaVfwLtGSKLf3ldNf7JoFwp4MQM2Rra6FyUsp8O7TI5D0XSDJ137I3YRyHEwG0stVssIibFYm3yFttmJ9FZk/132', '郭振东', '13869697709', 1577338838, 1577338877),
(2, 'ojinp1X3vjhAoWxmmP7j3Lg5WQl0', 'VGhlIGhvcGU=', 'http://thirdwx.qlogo.cn/mmopen/dY9SY5XM35f0CvaVfwLtGam4YwVOxPpYkBJll8NggU6XlZAPE04IBSp0e3LrGwvdIDGcDyv5WpS4gcvG85mK58GO42bhoPRZ/132', '宫志远', '18369605328', 1577339192, 1577340659),
(3, 'ojinp1QAqDXuv4U6BfsVIwhNSQxg', '5L6v5qKm55G2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAVKOepUPJ25lGQM2MfNCGVY32NlrGVicXXfZMerKnx3tUp5VkG0cJZysOodWvibUibFlhWk2kZK1gMQ/132', '侯梦瑶', '13791626576', 1577339347, 1577339365),
(4, 'ojinp1WEFOGGzKyF0KpGGPEyLzZo', '5pWP', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBe2iaPEF4INK1NRwnjhxJnicGErZrX58DMMnib5kHcnVcqPM2MjQp5qnTRNHpNFjUu25C86YTEGYRSrZ08icmNZYgR5rDGLb9tmQo/132', '杜敏', '13791693511', 1577339422, 1577339440),
(5, 'ojinp1Wn3xy0Kkds2XfzP-cUtgE8', '546L5qCL', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7c9oqBko4diamYqSww4HMBLC6qHbmmYQ6eJz4N4UEOCNgISmdwDpyuzcDIicPkYYKeIHELRyObaKPrP0Bd7Uk1PAMMib1BYHdTA4/132', '王栋', '18866708389', 1577339781, 1577339802),
(6, 'ojinp1ZVmKFqQLJNDgVTXG7Ez0Ps', '8J+Ng+WPqumBk+Wvu+W4uA==', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4CGmtGNibX6iafUZARxAbYHOU2dia3XgraHqWDz0I0mAj6lsJ8bg5tbjYZO5uDYPO6iaRpylC8hM3eTIv6cEU0A4fPYTPghNDS5pI/132', '李炜烨', '15621600982', 1577339879, 1577339886),
(7, 'ojinp1XonjoPS3eoohXH4BayT534', '546L5pmT', 'http://thirdwx.qlogo.cn/mmopen/dY9SY5XM35f0CvaVfwLtGYML4ZGCJGjR53OYnuQHS5nic6hJrrPFvbv5XgW54S8sy9mLicfzghW5DawLZbX4cd63CJ6KXXFibDic/132', '王晓', '13583653963', 1577340356, 1577340380),
(8, 'ojinp1YprDusL-CbHqvCgnmfX7XE', '8J+mgeiZvuS7geeMquW/gw==', 'http://thirdwx.qlogo.cn/mmopen/qia0tyNQK9tmnYLeDBbrXchojcNwm3vA1PRFxPJ5lOhuEQKSS6rNR1WVScPiavUzbnia2ePazpdH1D1WZMBez4Syou2tm87sdRL/132', '王炳宇', '18763662827', 1577340563, 1577340576),
(9, 'ojinp1Z4NG2TQp-qRbWDkEI9x8IM', '6L+Z5Liq5p2A5omL5LiN5aSq5Ya3', 'http://thirdwx.qlogo.cn/mmopen/vhOqpic3rRTHYIGRsiajRKuRF9REb5ybbf9Uicvdq25XL1rZQo8BNM04HmOyqRsFsYFjoetN4Rb1kZXKWsRsI43Rv68HRiaxKEiam/132', '张冰冰', '13869609433', 1577342523, 1577342665),
(10, 'ojinp1SkbUZkUcycbzr3x_Gkh8Tg', '5bKB5pyI6Z2Z5aW9', 'http://thirdwx.qlogo.cn/mmopen/XzhF92tBcewDXVpOy7WSSc5ZZXmgbVM7XzAoCmMgPibzHNQ0KCGcU2S1nD1tDILyGcJOVSYC2MSP29IatLh9KpQ/132', '宋亚炜', '15095219842', 1577342664, 1577342679);

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
