-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 03 月 16 日 10:34
-- 伺服器版本: 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `milestone2`
--

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `requestNo` int(11) NOT NULL,
  `passengerName` varchar(20) NOT NULL,
  `driverName` varchar(20) NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL,
  `fare` double NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Request = 0, Confirmed = 1, Cancelled = 2, Finished = 3, Dispute = 4, Accept_dispute = 5, Reject_dispute = 6',
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `history`
--

INSERT INTO `history` (`requestNo`, `passengerName`, `driverName`, `startTime`, `finishTime`, `fare`, `status`, `reason`) VALUES
(19, 'noelwong', 'noel', '2019-03-16 03:09:19', '2019-03-16 00:00:00', 0.001, 4, 'HKHKHHK'),
(20, 'noelwong', 'noelwong', '2019-03-16 03:11:39', '2019-03-16 15:59:21', 0.001, 4, 'nonono'),
(21, 'noelwong', 'noelwong', '2019-03-16 03:46:57', '2019-03-16 16:07:11', 0.001, 5, ''),
(22, 'noelwong', 'noelwong', '2019-03-16 04:06:43', '2019-03-16 04:07:57', 0.001, 1, 'Noel is good'),
(23, 'noel', 'noelwong', '2019-03-16 04:10:55', '2019-03-16 04:11:43', 0.001, 3, ''),
(24, 'noel', 'noelwong', '2019-03-16 04:10:57', '2019-03-16 16:06:39', 0.001, 5, '');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` int(12) DEFAULT NULL,
  `wallet` varchar(200) NOT NULL,
  `email` text,
  `verified` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `verification_code` varchar(256) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phoneNumber`, `wallet`, `email`, `verified`, `verification_code`, `created_at`) VALUES
(9, 'admin', '$2y$10$J12/tNYhq1NgzIbihqb2IuzLvMMYyc52q34wdMrOiLuXUxjMz5EMC', 12346789, '', 'adf@qpwieoru.com', 0, '84fb1626b097480ed52c746255cdc96a', '2019-02-18 18:24:46'),
(7, 'ashleylam', '$2y$10$zvfGbqTxaFgWwcQx26BNuOfzx0WL6GG7.khl7Pab6VH.PlxDKXJTK', 23456789, '', 'ashleylam1228@gmail.com', 0, 'aea9595adea3fec0c783ab55d2d98337', '2019-02-17 22:27:02'),
(3, 'charleswmc', '$2y$10$qDwVcoHqDGuwuUErDXMYB.odGQ3cGFcB2/4NW8gHdpwpl.PCEj4Me', 66452438, '', 'charleswmc19970124@gmail.com', 1, 'ad9a7155ffdf16110343bb8013301084', '2019-02-17 19:38:39'),
(1, 'noel', '$2y$10$kDOV.n6gsibiyJRDCR1X9OU1GSvcFqu6swMh.fz.u45FsTpdCThuG', NULL, '', NULL, 0, NULL, '2019-01-15 14:36:54'),
(2, 'noelwong', '$2y$10$.kJhEOZcWtzCLvTEvA2QdOMJV2UCNyrgs7VLZ8ZQSXU5TV1hCbTQ.', NULL, 'abcdefghijk', NULL, 1, NULL, '2019-01-30 18:56:24');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`requestNo`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `requestNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
