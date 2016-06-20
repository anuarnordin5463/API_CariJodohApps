-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2016 at 06:22 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carijodoh`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

DROP TABLE IF EXISTS `active_users`;
CREATE TABLE IF NOT EXISTS `active_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `signature` varchar(50) NOT NULL,
  `device_id` varchar(100) DEFAULT NULL,
  `login_time` varchar(50) NOT NULL,
  `last_active` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_users`
--

INSERT INTO `active_users` (`id`, `email`, `signature`, `device_id`, `login_time`, `last_active`, `updated_at`, `created_at`) VALUES
(1, 'imalpasha@gmail.com', '573c246b458a5', NULL, '2016-05-18 08:14:35', '', '2016-05-18 08:14:35', '2016-05-18 08:14:35'),
(2, 'imalpasha91@gmail.com', '573c2488c5495', NULL, '2016-05-18 08:15:04', '', '2016-05-18 08:15:04', '2016-05-18 08:15:04'),
(3, 'imalpasha91@gmail.com', '573d203185b87', NULL, '2016-05-19 02:08:49', '', '2016-05-19 02:08:49', '2016-05-19 02:08:49'),
(4, 'q@yahoo.com', '573d24b61b058', NULL, '2016-05-19 02:28:06', '', '2016-05-19 02:28:06', '2016-05-19 02:28:06'),
(5, 'q@yahoo.com', '573d2723adb1d', NULL, '2016-05-19 02:38:27', '', '2016-05-19 02:38:27', '2016-05-19 02:38:27'),
(6, 'q@yahoo.com', '573d2a1318758', NULL, '2016-05-19 02:50:59', '', '2016-05-19 02:50:59', '2016-05-19 02:50:59'),
(7, 'q@yahoo.com', '573d3715e7390', NULL, '2016-05-19 03:46:29', '', '2016-05-19 03:46:29', '2016-05-19 03:46:29'),
(8, 'q@yahoo.com', '573d41bd5ef94', NULL, '2016-05-19 04:31:57', '', '2016-05-19 04:31:57', '2016-05-19 04:31:57'),
(9, 'q@yahoo.com', '573d5574dd581', NULL, '2016-05-19 05:56:04', '', '2016-05-19 05:56:04', '2016-05-19 05:56:04'),
(10, 'q@yahoo.com', '573d5e5a60ed9', NULL, '2016-05-19 06:34:02', '', '2016-05-19 06:34:02', '2016-05-19 06:34:02'),
(11, 'q@yahoo.com', '573d5e8894125', NULL, '2016-05-19 06:34:48', '', '2016-05-19 06:34:48', '2016-05-19 06:34:48'),
(12, 'ww', '573d61a70174a', NULL, '2016-05-19 06:48:07', '', '2016-05-19 06:48:07', '2016-05-19 06:48:07'),
(13, 'ww', '573d66be9884e', NULL, '2016-05-19 07:09:50', '', '2016-05-19 07:09:50', '2016-05-19 07:09:50'),
(14, 'ww', '573d6719ec23f', NULL, '2016-05-19 07:11:21', '', '2016-05-19 07:11:21', '2016-05-19 07:11:21'),
(15, 'q@yahoo.com', '573d682ca4579', NULL, '2016-05-19 07:15:56', '', '2016-05-19 07:15:56', '2016-05-19 07:15:56'),
(16, 'ww', '573d6aefc1c28', NULL, '2016-05-19 07:27:43', '', '2016-05-19 07:27:43', '2016-05-19 07:27:43'),
(17, 'ww', '573d6b6962cf9', NULL, '2016-05-19 07:29:45', '', '2016-05-19 07:29:45', '2016-05-19 07:29:45'),
(18, 'ww', '573d6dcc167b7', NULL, '2016-05-19 07:39:56', '', '2016-05-19 07:39:56', '2016-05-19 07:39:56'),
(19, 'ww', '573d6e6f7338d', NULL, '2016-05-19 07:42:39', '', '2016-05-19 07:42:39', '2016-05-19 07:42:39'),
(20, 'ww', '573d707aaa1c4', NULL, '2016-05-19 07:51:22', '', '2016-05-19 07:51:22', '2016-05-19 07:51:22'),
(21, 'ww', '573d70e3c5eb2', NULL, '2016-05-19 07:53:07', '', '2016-05-19 07:53:07', '2016-05-19 07:53:07'),
(22, 'ww', '573d71d11a684', NULL, '2016-05-19 07:57:05', '', '2016-05-19 07:57:05', '2016-05-19 07:57:05'),
(23, 'ww', '573d72afa2ac8', NULL, '2016-05-19 08:00:47', '', '2016-05-19 08:00:47', '2016-05-19 08:00:47'),
(24, 'ww', '573d73c21db25', NULL, '2016-05-19 08:05:22', '', '2016-05-19 08:05:22', '2016-05-19 08:05:22'),
(25, 'ww', '573d74f593b35', NULL, '2016-05-19 08:10:29', '', '2016-05-19 08:10:29', '2016-05-19 08:10:29'),
(26, 'f@gmail.com', '573d78003dd22', NULL, '2016-05-19 08:23:28', '', '2016-05-19 08:23:28', '2016-05-19 08:23:28'),
(27, 'qq', '573d78924a777', NULL, '2016-05-19 08:25:54', '', '2016-05-19 08:25:54', '2016-05-19 08:25:54'),
(28, 'ww', '573d78a7f376f', NULL, '2016-05-19 08:26:15', '', '2016-05-19 08:26:15', '2016-05-19 08:26:15'),
(29, 'qq', '573d7abe1ea86', NULL, '2016-05-19 08:35:10', '', '2016-05-19 08:35:10', '2016-05-19 08:35:10'),
(30, 'qq', '573d7ac623756', NULL, '2016-05-19 08:35:18', '', '2016-05-19 08:35:18', '2016-05-19 08:35:18'),
(31, 'ww', '573d7b8e687b9', NULL, '2016-05-19 08:38:38', '', '2016-05-19 08:38:38', '2016-05-19 08:38:38'),
(32, 'ww', '573d7bf9f3629', NULL, '2016-05-19 08:40:25', '', '2016-05-19 08:40:25', '2016-05-19 08:40:25'),
(33, 'f@gmail.com', '573d7c9886b51', NULL, '2016-05-19 08:43:04', '', '2016-05-19 08:43:04', '2016-05-19 08:43:04'),
(34, 'f@gmail.com', '573d7de975b3e', NULL, '2016-05-19 08:48:41', '', '2016-05-19 08:48:41', '2016-05-19 08:48:41'),
(35, 'ww', '573d82549be5c', NULL, '2016-05-19 09:07:32', '', '2016-05-19 09:07:32', '2016-05-19 09:07:32'),
(36, 'ww', '573d83391ab12', NULL, '2016-05-19 09:11:21', '', '2016-05-19 09:11:21', '2016-05-19 09:11:21'),
(37, 'ww', '573d83fcabc8e', NULL, '2016-05-19 09:14:36', '', '2016-05-19 09:14:36', '2016-05-19 09:14:36'),
(38, 'ww', '573d8691e93d9', NULL, '2016-05-19 09:25:37', '', '2016-05-19 09:25:37', '2016-05-19 09:25:37'),
(39, 'ww', '573d86a7a0ccf', NULL, '2016-05-19 09:25:59', '', '2016-05-19 09:25:59', '2016-05-19 09:25:59'),
(40, 'ww', '573d86a97c22a', NULL, '2016-05-19 09:26:01', '', '2016-05-19 09:26:01', '2016-05-19 09:26:01'),
(41, 'ww', '573d86aab41ed', NULL, '2016-05-19 09:26:02', '', '2016-05-19 09:26:02', '2016-05-19 09:26:02'),
(42, 'ww', '573d86abd4f14', NULL, '2016-05-19 09:26:03', '', '2016-05-19 09:26:03', '2016-05-19 09:26:03'),
(43, 'ww', '573d86c419944', NULL, '2016-05-19 09:26:28', '', '2016-05-19 09:26:28', '2016-05-19 09:26:28'),
(44, 'ee', '573d882935e4c', NULL, '2016-05-19 09:32:25', '', '2016-05-19 09:32:25', '2016-05-19 09:32:25'),
(45, 'ee', '573d88c5a2d22', NULL, '2016-05-19 09:35:01', '', '2016-05-19 09:35:01', '2016-05-19 09:35:01'),
(46, 'ww', '573d8a0cd3c2b', NULL, '2016-05-19 09:40:28', '', '2016-05-19 09:40:28', '2016-05-19 09:40:28'),
(47, 'ww', '573d8d48a3a52', NULL, '2016-05-19 09:54:16', '', '2016-05-19 09:54:16', '2016-05-19 09:54:16'),
(48, 'ww', '573d8fd50a4f4', NULL, '2016-05-19 10:05:09', '', '2016-05-19 10:05:09', '2016-05-19 10:05:09'),
(49, 'ww', '573d90ab7e1e2', NULL, '2016-05-19 10:08:43', '', '2016-05-19 10:08:43', '2016-05-19 10:08:43'),
(50, 'imalpasha91x@gmail.com', '573e857e2cf51', NULL, '2016-05-20 03:33:18', '', '2016-05-20 03:33:18', '2016-05-20 03:33:18'),
(51, 'imalpasha91@gmail.com', '573e8f44aa047', NULL, '2016-05-20 04:15:00', '', '2016-05-20 04:15:00', '2016-05-20 04:15:00'),
(52, 'imalpasha91@gmail.com', '573e8f95c4ff9', NULL, '2016-05-20 04:16:21', '', '2016-05-20 04:16:21', '2016-05-20 04:16:21'),
(53, 'f@gmail.com', '573e8fb91c253', NULL, '2016-05-20 04:16:57', '', '2016-05-20 04:16:57', '2016-05-20 04:16:57'),
(54, 'f@gmail.com', '573e92198ae9f', NULL, '2016-05-20 04:27:05', '', '2016-05-20 04:27:05', '2016-05-20 04:27:05'),
(55, 'f@gmail.com', '573ed9256feea', NULL, '2016-05-20 09:30:13', '', '2016-05-20 09:30:13', '2016-05-20 09:30:13'),
(56, 'ww', '573ede6fd9857', NULL, '2016-05-20 09:52:47', '', '2016-05-20 09:52:47', '2016-05-20 09:52:47'),
(57, 'ww', '573ee08dbff94', NULL, '2016-05-20 10:01:49', '', '2016-05-20 10:01:49', '2016-05-20 10:01:49'),
(58, 'ww', '573ee0ce60ea3', NULL, '2016-05-20 10:02:54', '', '2016-05-20 10:02:54', '2016-05-20 10:02:54'),
(59, 'ww', '573ee1b6b92a7', NULL, '2016-05-20 10:06:46', '', '2016-05-20 10:06:46', '2016-05-20 10:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

DROP TABLE IF EXISTS `chat_rooms`;
CREATE TABLE IF NOT EXISTS `chat_rooms` (
  `chat_room_id` int(11) NOT NULL,
  `user_email_1` varchar(55) NOT NULL,
  `user_email_2` varchar(55) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`chat_room_id`, `user_email_1`, `user_email_2`, `id`) VALUES
(3321, 'imalpasha@gmail.com', 'imalpasha91@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `device_info`
--

DROP TABLE IF EXISTS `device_info`;
CREATE TABLE IF NOT EXISTS `device_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(300) NOT NULL,
  `gcm_key` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_info`
--

INSERT INTO `device_info` (`id`, `device_id`, `gcm_key`) VALUES
(1, '1234', 'APA91bHGMWi4N4GXscyU5kdhSxhmiliSj-BWIpxp8qXlFBPoCAnk1pMa7PuGCaaQa6Y-gCRzmLSfiL5SlUq6UhHiF2E5JvEH0icbbkPDzfomH8waNcTvt-0'),
(2, '5678', 'APA91bEOFL3wEIEyTLEpkbU2EKkNEhxE26KV_vWCbBW3cRdsqF1-B9hoSXt9c_cvd7aKnfX3WjY-V8jQH9U0LkzD7v5nuY6m-V6jthEzng2ifTscoIGQRGA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(120) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gcm_key` varchar(200) NOT NULL,
  `updated_at` varchar(55) NOT NULL,
  `created_at` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `gcm_key`, `updated_at`, `created_at`) VALUES
(1, '$2y$10$x2gLEATOU5mOjaxTT.vTaeWUsvCwFR0/I35ChGJSRpBjDWDH60SFq', 'imalpasha91x@gmail.com', '1', '2016-05-13 08:27:07', '2016-05-13 08:27:07'),
(2, '$2y$10$49Fzu/blVvcErCe9aDCpweKjIFo0WiTAvmRgJfKQiG8ei7KtGMuke', 'anuar@gmail.com', '2', '2016-05-13 08:30:02', '2016-05-13 08:30:02'),
(4, '$2y$10$5hVOl89kyvu58moY7BP9ouf24ImwebIrI/odLGuKnZmMTtg0R4Ch2', 'aten93.hzyra@gmail.com', '', '2016-05-16 06:12:46', '2016-05-16 06:12:46'),
(5, '$2y$10$Mu01krESoRDH2IoNXVa27u/RaRMFJ16Ye8dSSi/Jd3h/zWpI7hAz6', 'imalpasha91@gmail.com', '', '2016-05-16 06:19:59', '2016-05-16 06:19:59'),
(6, '$2y$10$PT6Kx/Nm1zMiotBWQBCVleucsd6q77lWA1MdkMSkxs7ptV0I6N84y', 'imalpashas91@gmail.com', '', '2016-05-16 06:41:28', '2016-05-16 06:41:28'),
(7, '$2y$10$EccwafX29wu6UMZWZoFuNu1JgEXkXJLv/7v2g5TLh6B9sP9GG31Oa', 'imalpashass91@gmail.com', '', '2016-05-16 06:41:43', '2016-05-16 06:41:43'),
(8, '$2y$10$WQ6p9maiC7vI3pIZI9Y6HOq0Mr5/cV6Imo.hbLB5mQNafdNpBPfQm', 'imalpashasss91@gmail.com', '', '2016-05-16 06:41:56', '2016-05-16 06:41:56'),
(9, '$2y$10$ZSEExbn5ohkMlXzv4xaWG.t.P8J4Y4QXM/WKNtNv46XtnHScYu9WK', 'imalpashassss91@gmail.com', '', '2016-05-16 06:45:18', '2016-05-16 06:45:18'),
(10, '$2y$10$ISdhbcJWuoMyjIhodt/z8eNejQ7vnKZrej.jvx.QC7Q0EyGM9E3H.', 's', '', '2016-05-16 06:55:17', '2016-05-16 06:55:17'),
(11, '$2y$10$WWfI0uwUkkApWHtEzU5zA.G8Fl6SWLRuV/fRKIrMHncByd9.OShly', 'imalpasha@gmail.com', '', '2016-05-16 06:57:21', '2016-05-16 06:57:21'),
(12, '$2y$10$U9FQBC7LYVNDJJDxVU9MhOgf.C7ktJ5n.ZLuolxtikUtlONgFGgZK', 'imalpassha@gmail.com', '', '2016-05-16 06:58:14', '2016-05-16 06:58:14'),
(13, '$2y$10$764HAOlbg3ZlDp9ZfXAS8.Wg829bYO1nzkxpZGr7ukGsGMloyg42K', 'a@gmail.com', '', '2016-05-16 08:14:23', '2016-05-16 08:14:23'),
(14, '$2y$10$7cClEXeEQ.o0X6G4x3BEGOWZOzzWUzacGVnZhVPFdBSsco723iQUi', 'test@gmail.com', '', '2016-05-16 08:53:44', '2016-05-16 08:53:44'),
(15, '$2y$10$JaHmknXLwQRKJYRcd9OOuuWl.adxznNwKXo9QtnhBjK.AePQmSk/W', 'b@gmail.com', '', '2016-05-17 02:35:39', '2016-05-17 02:35:39'),
(16, '$2y$10$2XU.ZJNopy5ZFnpzCRQMbOiF/eRu7GndB8H22VK5jdq20jt9.QIO2', 'c@gmail.com', '', '2016-05-17 02:42:39', '2016-05-17 02:42:39'),
(17, '$2y$10$w4LvZQzS6VfKk/KmBANvBeAfz7/NVmTVJh3gxZHeZeCa68.xmP4oq', 'aa@gmail.com', '', '2016-05-17 02:44:35', '2016-05-17 02:44:35'),
(18, '$2y$10$zTtl6xjPXkRVaOhH0GwVCOni79NLxbP8s2xiq8xNaeiTTTszd/Q2G', 'ba@gmail.com', '', '2016-05-17 03:02:04', '2016-05-17 03:02:04'),
(19, '$2y$10$F35wIdcF1OC9FPm7gwWe5uW6AVnMgqFR8ttwqA9PkrT6AKt.POiu2', 'x@yahoo.com', '', '2016-05-17 03:42:10', '2016-05-17 03:42:10'),
(20, '$2y$10$a4a45A7BxZHzdp8BFEWMf.Vg1l5YQJWXhgQa6mqUC7K4Q95dZxqYu', 'q@yahoo.com', '', '2016-05-17 06:29:00', '2016-05-17 06:29:00'),
(21, '$2y$10$FUxrTJbZ1MR1/ssJ7YdUjurF5WGhn904JPNr4ZFovZsfSXcvx91t2', 'pb@gmail.com', '', '2016-05-17 07:52:32', '2016-05-17 07:52:32'),
(22, '$2y$10$.szr4f5vHu9j3hUoZIt/Z.XW/8lgTz2zC1X8x8U1gTHaUU5x.nGeW', '1@gmail.com', '', '2016-05-18 03:40:33', '2016-05-18 03:40:33'),
(23, '$2y$10$J5nEI7YVKz6Z/q8iNko3GOXO4T057xJTs5uQD6nsVlArQPeAq.Jr6', '2@gmail.com', '', '2016-05-18 03:44:19', '2016-05-18 03:44:19'),
(24, '$2y$10$sKE6e9n7FoYGlArnDJUZW.VB5LzvqJx25qA9N6vFIS.AyGQQ0qEXW', '5@g.c', '', '2016-05-18 04:12:28', '2016-05-18 04:12:28'),
(25, '$2y$10$8dKBqsGIFAyGuVvcP5on1e2H0FU1Mn7DwYZoDRiqwOXReFrq8O3Da', '1@g.m', '', '2016-05-18 04:13:51', '2016-05-18 04:13:51'),
(26, '$2y$10$phDmxXi48yQ6dlnIgiU8L./z3QR4FOWBaULhbuG6M73CmtgPLKDUW', 'sd', '', '2016-05-18 04:15:51', '2016-05-18 04:15:51'),
(27, '$2y$10$dGRZ3vAWSQl.9KJxd8whqey0/y52nxbB65j6tZXYaSmR.Phb1fzgm', 'fg', '', '2016-05-18 04:17:12', '2016-05-18 04:17:12'),
(28, '$2y$10$L7UbbG5igoN2RS03o7Tyie4u9Mi/YOtk4L2zUirXS/kJSdGg7Cngq', 'lk', '', '2016-05-18 04:23:14', '2016-05-18 04:23:14'),
(29, '$2y$10$A8bYD1peaoY6rY73D0ANSekjfjGjsZS8bWnI//deWt2gRZfiqZsxa', 'kj', '', '2016-05-18 04:42:46', '2016-05-18 04:42:46'),
(30, '$2y$10$SW6hivDAxnzjKuECCxSAceHbvxnaJngJ5xvlxxznE1guPJLrtgBHW', 'kju', '', '2016-05-18 04:43:49', '2016-05-18 04:43:49'),
(31, '$2y$10$AhZ/F0412T2WloelIKKofu4EPyEAMXw2Yb/phE/o/9CbeCADgeaEK', 'gx', '', '2016-05-18 04:45:14', '2016-05-18 04:45:14'),
(32, '$2y$10$iDMXHgtlbC/Dyl2PpbchouuYQoffHjZNpPO9KOEH/I0cH2w7wsszi', 'faez', '', '2016-05-18 05:10:30', '2016-05-18 05:10:30'),
(33, '$2y$10$DsSVwrzX.wJaU4lGuwAxzOYSNnXpycYEInm5sFrPd6i.FV0jQxMQm', 'ww', '', '2016-05-19 06:47:45', '2016-05-19 06:47:45'),
(34, '$2y$10$PbFedceZkfNnr4j0RdGN2OjD5UfLioobqFxgr9AhP9K3iA1ijcI76', 'f@gmail.com', '', '2016-05-19 08:22:56', '2016-05-19 08:22:56'),
(35, '$2y$10$pmGNbWJvUzp5E..EKaNOGORK7IphktB5huPjvKiemky9Nawzz7xBO', 'qq', '', '2016-05-19 08:25:41', '2016-05-19 08:25:41'),
(36, '$2y$10$7nso/nCjSq9G1wZ1sxuRqu7dsXyyKBwMv3qSyo9Qhu9Tv7nFzrjEK', 'ee', '', '2016-05-19 09:31:40', '2016-05-19 09:31:40'),
(37, '$2y$10$UdizFJFc5G9dDI6qZIVSe.AZh.tx2QYxcfisV1YvEGIhJT//sYUTi', 'sdh', '', '2016-05-19 10:08:25', '2016-05-19 10:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
CREATE TABLE IF NOT EXISTS `users_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(50) NOT NULL,
  `user_dob` varchar(50) DEFAULT NULL,
  `user_mobile` varchar(50) DEFAULT NULL,
  `user_height` varchar(50) DEFAULT NULL,
  `user_weight` varchar(50) DEFAULT NULL,
  `user_smoke` varchar(50) DEFAULT NULL,
  `user_religion` varchar(11) DEFAULT NULL,
  `user_country` varchar(11) DEFAULT NULL,
  `user_state` varchar(11) DEFAULT NULL,
  `user_town` varchar(50) DEFAULT NULL,
  `user_education` varchar(50) DEFAULT NULL,
  `user_occupation` varchar(50) DEFAULT NULL,
  `user_image` varchar(100) NOT NULL,
  `updated_at` varchar(55) NOT NULL,
  `created_at` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `user_email`, `user_dob`, `user_mobile`, `user_height`, `user_weight`, `user_smoke`, `user_religion`, `user_country`, `user_state`, `user_town`, `user_education`, `user_occupation`, `user_image`, `updated_at`, `created_at`) VALUES
(1, 'imalpasha91x@gmail.com', NULL, '123s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1463461198_profile.png', '2016-05-17 04:59:58', '2016-05-13 08:27:07'),
(2, 'anuar@gmail.com', '2016-05-17 07:50:43 +0000', '4', '8', '5', 'Yes', NULL, NULL, 'Johor', 'h', 'n', 'j', '', '2016-05-17 07:51:14', '2016-05-13 08:30:02'),
(3, 'aten93.hzyra@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:12:46', '2016-05-16 06:12:46'),
(4, 'imalpasha91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:19:59', '2016-05-16 06:19:59'),
(5, 'imalpashas91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:41:28', '2016-05-16 06:41:28'),
(6, 'imalpashass91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:41:43', '2016-05-16 06:41:43'),
(7, 'imalpashasss91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:41:56', '2016-05-16 06:41:56'),
(8, 'imalpashassss91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:45:18', '2016-05-16 06:45:18'),
(9, 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:55:17', '2016-05-16 06:55:17'),
(10, 'imalpasha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:57:21', '2016-05-16 06:57:21'),
(11, 'imalpassha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 06:58:14', '2016-05-16 06:58:14'),
(12, 'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 08:14:23', '2016-05-16 08:14:23'),
(13, 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-16 08:53:44', '2016-05-16 08:53:44'),
(14, 'b@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-17 02:35:39', '2016-05-17 02:35:39'),
(15, 'c@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-17 02:42:39', '2016-05-17 02:42:39'),
(16, 'aa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-17 02:44:35', '2016-05-17 02:44:35'),
(17, 'ba@gmail.com', '22.8.1991', '019312322', '160', '50kg', 'No', NULL, NULL, 'Melaka', 'Alor Gajah', 'Degree', 'Intern', '', '2016-05-17 07:05:40', '2016-05-17 03:02:04'),
(18, 'x@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-17 03:42:10', '2016-05-17 03:42:10'),
(19, 'q@yahoo.com', '2016-05-04', '6', '6', '6', 'Yes', NULL, NULL, 'Kedah', 'g', 'h', 'j', '', '2016-05-19 07:26:28', '2016-05-17 06:29:00'),
(20, 'pb@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-17 07:52:32', '2016-05-17 07:52:32'),
(21, '1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 03:40:33', '2016-05-18 03:40:33'),
(22, '2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 03:44:19', '2016-05-18 03:44:19'),
(23, '5@g.c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:12:28', '2016-05-18 04:12:28'),
(24, '1@g.m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:13:51', '2016-05-18 04:13:51'),
(25, 'sd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:15:51', '2016-05-18 04:15:51'),
(26, 'fg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:17:12', '2016-05-18 04:17:12'),
(27, 'lk', '2016-05-18 04:23:43 +0000', '8', '5', '8', 'Yes', NULL, NULL, 'Johor', 'h', 'hn', 'b', '', '2016-05-18 04:25:02', '2016-05-18 04:23:14'),
(28, 'kj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:42:46', '2016-05-18 04:42:46'),
(29, 'kju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:43:49', '2016-05-18 04:43:49'),
(30, 'gx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-18 04:45:14', '2016-05-18 04:45:14'),
(31, 'faez', '2016-05-18 05:11:05 +0000', '55', '8', '5', 'Yes', NULL, NULL, 'Johor', 'b', 'n', 'np', '', '2016-05-18 05:11:25', '2016-05-18 05:10:30'),
(32, 'ww', '2016-05-19 09:26:32 +0000', '8', '8', '8', 'Yes', NULL, NULL, 'Johor', 'g', 'c', 'b', '', '2016-05-19 09:26:52', '2016-05-19 06:47:45'),
(33, 'f@gmail.com', '2016-05-01', '6', '9', '6', 'No', NULL, NULL, 'Johor', 'h', 'h', 'hm', '', '2016-05-20 09:37:34', '2016-05-19 08:22:56'),
(34, 'qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-19 08:25:41', '2016-05-19 08:25:41'),
(35, 'ee', '22.8.1991', '019312322', '160', '50kg', 'No', NULL, NULL, 'Melaka', 'Alor Gajah', 'Degree', 'Intern', '', '2016-05-19 09:35:31', '2016-05-19 09:31:40'),
(36, 'sdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2016-05-19 10:08:25', '2016-05-19 10:08:25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
