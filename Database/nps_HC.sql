-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2023 at 09:15 AM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nps_HC`
--

-- --------------------------------------------------------

--
-- Table structure for table `nps_answers_details`
--

CREATE TABLE `nps_answers_details` (
  `answer_id` int(11) NOT NULL,
  `answer_name` text NOT NULL,
  `description` text NOT NULL,
  `created_id` int(11) NOT NULL,
  `info_details` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_answers_details`
--

INSERT INTO `nps_answers_details` (`answer_id`, `answer_name`, `description`, `created_id`, `info_details`, `created_at`) VALUES
(1, 'Customer service', 'Customer service', 1, '', '2023-09-02 16:10:41'),
(2, 'Free Shipping', 'Free Shipping', 1, '', '2023-09-02 16:11:21'),
(3, 'Stock inventory', 'Stock inventory', 1, '', '2023-09-02 16:11:47'),
(4, 'Order process', 'Order process', 1, '', '2023-09-02 16:12:01'),
(5, 'Quality', 'Quality', 1, '', '2023-09-02 16:12:14'),
(6, 'Work hours', 'Work hours', 1, '', '2023-09-02 16:13:40'),
(7, 'in person visit', 'in person visit', 1, '', '2023-09-02 16:13:40'),
(8, 'custom order', 'custom order', 1, '', '2023-09-02 16:13:40'),
(9, '24/7 support', '24/7 support', 1, '', '2023-09-02 16:14:06'),
(10, 'Return policy', 'Return policy', 1, '', '2023-09-02 16:14:33'),
(15, 'sddfdsf', 'sdfsdf', 1, '', '2023-09-02 20:03:50'),
(18, 'Customer service', 'Customer service', 31, '', '2023-09-02 20:44:32'),
(19, 'Free Shipping', 'Free Shipping', 31, '', '2023-09-02 20:44:49'),
(20, 'Stock inventory', 'Stock inventory', 31, '', '2023-09-02 20:44:56'),
(21, 'Order process', 'Order process', 31, '', '2023-09-02 20:45:55'),
(22, 'Quality', 'Quality', 31, '', '2023-09-02 20:46:02'),
(23, 'Work hours', 'Work hours', 31, '', '2023-09-02 20:46:08'),
(24, 'in person visit', 'in person visit', 31, '', '2023-09-02 20:46:15'),
(25, 'custom order', 'custom order', 31, '', '2023-09-02 20:46:22'),
(26, '24/7 support', '24/7 support', 31, '', '2023-09-02 20:46:30'),
(27, 'Return policy', 'Return policy', 31, '', '2023-09-02 20:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `nps_campign_details`
--

CREATE TABLE `nps_campign_details` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` varchar(55) NOT NULL,
  `answer_id` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nps_email_send_list`
--

CREATE TABLE `nps_email_send_list` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `email_list` text NOT NULL,
  `message` blob NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_email_send_list`
--

INSERT INTO `nps_email_send_list` (`id`, `survey_id`, `user_id`, `subject`, `email_list`, `message`, `created_at`) VALUES
(1, 13, 37, 'testsurvey', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 05:24:22'),
(2, 13, 37, 'tester', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 05:25:36'),
(3, 13, 37, 'tester one', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 10:53:00'),
(4, 14, 38, 'demo mailer', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 11:13:03'),
(5, 13, 37, 'test demo', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 11:32:33'),
(6, 13, 37, 'What did you think about NPS', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 11:33:42'),
(7, 13, 37, 'What did you think about NPS', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 11:33:51'),
(8, 13, 37, 'What did you think about NPS', 'jeyprabu@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-08-26 11:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `nps_external_contacts`
--

CREATE TABLE `nps_external_contacts` (
  `id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL COMMENT 'User_id',
  `name` varchar(120) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `contact_details` text NOT NULL,
  `email_id` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_external_contacts`
--

INSERT INTO `nps_external_contacts` (`id`, `created_by`, `name`, `firstname`, `lastname`, `contact_details`, `email_id`, `created_at`) VALUES
(1, 37, 'Prabhu', 'jp', 'jj', '43422242', 'jeyprabu@gmail.com', '2023-08-26 05:24:13'),
(2, 37, 'vivek KT', 'vivek', 'KT', '384304039', 'vivekkt.1991@gmail.com', '2023-08-26 05:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `nps_login_user_info`
--

CREATE TABLE `nps_login_user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nps_question_details`
--

CREATE TABLE `nps_question_details` (
  `question_id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `description` text NOT NULL,
  `info_details` varchar(120) NOT NULL,
  `other_option` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_question_details`
--

INSERT INTO `nps_question_details` (`question_id`, `question_name`, `description`, `info_details`, `other_option`, `user_id`, `created_at`) VALUES
(19, '??', 'tesr', 'nps', '', 34, '2023-07-28 14:23:43'),
(38, 'test1', 'tests', 'nps', '', 37, '2023-08-26 04:56:53'),
(39, 'test2', 'test2', 'other', '[\"Customer service\",\"Free Shipping\"]', 37, '2023-08-26 04:57:10'),
(40, 'test3', 'test3', 'other', '[\"Stock inventory\",\"Order process\"]', 37, '2023-08-26 04:57:26'),
(41, 'test4', 'test4', 'other', '[\"24/7 support\"]', 37, '2023-08-26 04:57:41'),
(42, 'Question1', 'question1', 'nps', '', 38, '2023-08-26 11:10:21'),
(43, 'Question2 below 7', 'below 7', 'other', '[\"Customer service\",\"Free Shipping\"]', 38, '2023-08-26 11:10:47'),
(44, 'Question3', '7-8', 'other', '[\"Stock inventory\"]', 38, '2023-08-26 11:11:13'),
(45, 'Question 4', 'q4', 'other', '[\"Stock inventory\"]', 38, '2023-08-26 11:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `nps_survey_details`
--

CREATE TABLE `nps_survey_details` (
  `campign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campain_name` varchar(120) NOT NULL,
  `question_id_1` int(11) NOT NULL,
  `question_id_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_survey_details`
--

INSERT INTO `nps_survey_details` (`campign_id`, `user_id`, `campain_name`, `question_id_1`, `question_id_2`, `created_at`) VALUES
(11, 34, '22', 19, 19, '2023-07-28 14:23:59'),
(13, 37, 'testsurvey', 38, 39, '2023-08-26 04:58:07'),
(14, 38, 'demo survey', 42, 43, '2023-08-26 11:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `nps_survey_response`
--

CREATE TABLE `nps_survey_response` (
  `id` int(11) NOT NULL,
  `campign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` varchar(55) NOT NULL,
  `question_id2` int(11) NOT NULL,
  `answer_id2` text NOT NULL,
  `mail_status` varchar(120) NOT NULL,
  `ip_details` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_survey_response`
--

INSERT INTO `nps_survey_response` (`id`, `campign_id`, `user_id`, `email`, `question_id`, `answer_id`, `question_id2`, `answer_id2`, `mail_status`, `ip_details`, `created_at`) VALUES
(38, 13, 37, 'jeyprabu@gmail.com', 38, '10', 41, '24/7 support', 'gCFTGq', '68.178.154.233', '2023-08-26 05:26:02'),
(40, 13, 37, 'jeyprabu@gmail.com', 38, '8', 40, 'Order process', 'QZ7qXtPX', '68.178.154.233', '2023-08-26 10:55:29'),
(41, 13, 37, 'jeyprabu@gmail.com', 38, '6', 39, 'Free Shipping', 'A@WX9!Gc', '68.178.154.233', '2023-08-26 11:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `nps_users`
--

CREATE TABLE `nps_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(120) DEFAULT NULL,
  `lastname` varchar(55) NOT NULL,
  `username` varchar(120) DEFAULT NULL,
  `tenant_id` int(11) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone_no` varchar(120) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `password` varchar(240) NOT NULL,
  `logo_update` text NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_users`
--

INSERT INTO `nps_users` (`id`, `firstname`, `lastname`, `username`, `tenant_id`, `email`, `phone_no`, `role`, `password`, `logo_update`, `status`, `created_at`, `updated_at`) VALUES
(34, 'prj', 'jj', 'jeyjey', 23, 'jeyprabu@gmail.com', '9003831680', 'admin', '$2y$10$h3JLMSQO2I/bMRrg8Ppvt.yIhAeDAt9JdMe29qlWh5ixKuRcSOiry', '', '1', '2023-08-26 11:26:43', '2023-07-28 14:19:36'),
(37, 'HC', 'California', 'jeyprabhu', 23, 'jeyprabhu@icloud.com', '7550085431', 'admin', '$2y$10$uXroj4dD2drmZmcuzIznwOjuCa7Kwq.SoBEmJC0J10mNDB1UPH8cq', '', '1', '2023-08-26 04:55:19', '2023-08-26 04:55:19'),
(38, 'sina', 'B', 'sinahc', 23, 'sina@haircompounds.com', '8877665544', 'admin', '$2y$10$h3JLMSQO2I/bMRrg8Ppvt.yIhAeDAt9JdMe29qlWh5ixKuRcSOiry', '', '1', '2023-08-27 14:45:40', '2023-08-27 14:45:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nps_answers_details`
--
ALTER TABLE `nps_answers_details`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `nps_campign_details`
--
ALTER TABLE `nps_campign_details`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `nps_email_send_list`
--
ALTER TABLE `nps_email_send_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_external_contacts`
--
ALTER TABLE `nps_external_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_login_user_info`
--
ALTER TABLE `nps_login_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_question_details`
--
ALTER TABLE `nps_question_details`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `nps_survey_details`
--
ALTER TABLE `nps_survey_details`
  ADD PRIMARY KEY (`campign_id`);

--
-- Indexes for table `nps_survey_response`
--
ALTER TABLE `nps_survey_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_users`
--
ALTER TABLE `nps_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nps_answers_details`
--
ALTER TABLE `nps_answers_details`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `nps_campign_details`
--
ALTER TABLE `nps_campign_details`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nps_email_send_list`
--
ALTER TABLE `nps_email_send_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nps_external_contacts`
--
ALTER TABLE `nps_external_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nps_login_user_info`
--
ALTER TABLE `nps_login_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nps_question_details`
--
ALTER TABLE `nps_question_details`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `nps_survey_details`
--
ALTER TABLE `nps_survey_details`
  MODIFY `campign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nps_survey_response`
--
ALTER TABLE `nps_survey_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `nps_users`
--
ALTER TABLE `nps_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
