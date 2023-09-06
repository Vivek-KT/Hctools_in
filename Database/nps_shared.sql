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
-- Database: `nps_shared`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-06-18-184403', 'App\\Database\\Migrations\\CreateDatabase', 'default', 'App', 1687113911, 1);

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
(1, 12, 1, 'What did you think about NPS', 'jeyprabu@gmail.com, vivekkt.1991@outlook.com, vivekkt.1991@gmail.com, hctoolssmtp@gmail.com, Jeyprabu@hctools.in, saranilango91@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-09-02 21:05:48'),
(2, 12, 1, 'What did you think about NPS', 'jeyprabu@gmail.com, vivekkt.1991@outlook.com, vivekkt.1991@gmail.com, hctoolssmtp@gmail.com, Jeyprabu@hctools.in, saranilango91@gmail.com', 0x3c703e5468616e6b7320616e642063686565727320746f20686176696e67206265656e2070617274206f66206f7572207465616d2e3c2f703e0d0a3c703e57652077686f6c65686561727465646c79206170707265636961746520796f7572206566666f7274732e3c2f703e0d0a3c703e5765606420626520737570657220676c616420746f206861766520796f757220666565646261636b3c2f703e0d0a3c703e266e6273703b3c2f703e, '2023-09-05 21:12:58');

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
(1, 1, 'Prabhu', 'jp', 'jj', '43422242', 'jeyprabu@gmail.com', '2023-09-02 21:05:43'),
(2, 1, 'vivek KT', 'vivek', 'KT', '384304039', 'vivekkt.1991@outlook.com', '2023-09-02 21:05:43'),
(3, 1, 'Vivek Gmail', 'Vivek', 'Gmail', '9003831680', 'vivekkt.1991@gmail.com', '2023-09-02 21:05:43'),
(4, 1, 'HcTools', 'Hctools', 'Gmail', '9003831680', 'hctoolssmtp@gmail.com', '2023-09-02 21:05:43'),
(5, 1, 'Prabhu', 'jp', 'jj', '43422242', 'Jeyprabu@hctools.in', '2023-09-02 21:05:43'),
(6, 1, 'Saranya Vivek', 'saranya', 'Vivek', '8870060482', 'saranilango91@gmail.com', '2023-09-02 21:05:43');

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
  `priority` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_question_details`
--

INSERT INTO `nps_question_details` (`question_id`, `question_name`, `description`, `info_details`, `other_option`, `priority`, `user_id`, `created_at`) VALUES
(12, 'what is your occupation?', 'Occupation details', 'nps', '', 0, 26, '2023-07-01 18:54:20'),
(13, 'What is ur salary?', 'What is ur salary?', 'nps', '', 0, 26, '2023-07-01 18:54:41'),
(17, 'How Likely are you to recommend Hair & component to a friend as colleage?', 'How Likely are you to recommend Hair & component to a friend as colleage?', 'nps', '', 0, 31, '2023-07-22 18:07:08'),
(18, 'What could we improve?', 'implementation', 'nps', '', 0, 31, '2023-07-22 18:07:56'),
(19, '??', 'tesr', 'nps', '', 0, 34, '2023-07-28 14:23:43'),
(30, 'How likely is it that you would recommend [Tenant Company Name] to a friend or colleague?', 'How likely is it that you would recommend [Tenant Company Name] to a friend or colleague?', 'nps', '', 0, 1, '2023-08-03 20:24:08'),
(34, 'Thank you for your feedback. What could we do better?', 'Thank you for your feedback. What could we do better?', 'other', '[\"Customer service\",\"Free Shipping\",\"Stock inventory\",\"Order process\",\"Quality\"]', 1, 1, '2023-08-04 18:09:54'),
(35, 'Thank you for your feedback. Where could we improve your perception of us? ', 'Thank you for your feedback. Where could we improve your perception of us? ', 'other', '[\"Customer service\",\"Order process\",\"Quality\",\"Work hours\",\"in person visit\"]', 2, 1, '2023-08-05 16:56:18'),
(37, 'We\\\'re excited to hear that! What is working so great with us? ', 'We\\\'re excited to hear that! What is working so great with us? ', 'other', '[\"Order process\",\"Quality\",\"custom order\",\"24\\/7 support\",\"Return policy\"]', 3, 1, '2023-08-06 19:35:14'),
(38, 'test1', 'tests', 'nps', '', 0, 37, '2023-08-26 04:56:53'),
(39, 'test2', 'test2', 'other', '[\"Customer service\",\"Free Shipping\"]', 0, 37, '2023-08-26 04:57:10'),
(40, 'test3', 'test3', 'other', '[\"Stock inventory\",\"Order process\"]', 0, 37, '2023-08-26 04:57:26'),
(41, 'test4', 'test4', 'other', '[\"24\\/7 support\"]', 0, 37, '2023-08-26 04:57:41'),
(42, 'Question1', 'question1', 'nps', '', 0, 38, '2023-08-26 11:10:21'),
(43, 'Question2 below 7', 'below 7', 'other', '[\"Customer service\",\"Free Shipping\"]', 0, 38, '2023-08-26 11:10:47'),
(44, 'Question3', '7-8', 'other', '[\"Stock inventory\"]', 0, 38, '2023-08-26 11:11:13'),
(45, 'Question 4', 'q4', 'other', '[\"Stock inventory\"]', 0, 38, '2023-08-26 11:11:35');

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
(5, 26, 'sample survey', 12, 13, '2023-07-02 16:21:14'),
(6, 26, 'survey 2', 13, 12, '2023-07-02 16:21:28'),
(10, 31, 'Survey Option', 17, 18, '2023-07-22 18:15:02'),
(11, 34, '22', 19, 19, '2023-07-28 14:23:59'),
(12, 1, 'sample survery', 30, 34, '2023-08-05 17:08:48'),
(13, 37, 'testsurvey', 38, 39, '2023-08-26 04:58:07'),
(14, 38, 'demo survey', 42, 43, '2023-08-26 11:12:01'),
(15, 1, 'Test by Sina', 30, 34, '2023-08-27 11:28:35');

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
(1, 12, 1, 'vivekkt.1991@outlook.com', 30, '9', 37, 'Quality,custom order,24/7 support', '6KNcdhw*', '68.178.154.233', '2023-08-01 21:08:15'),
(2, 12, 1, 'vivekkt.1991@gmail.com', 30, '5', 34, 'Stock inventory,Order process,Quality', 'sas5yqM7', '68.178.154.233', '2023-09-02 21:08:44'),
(3, 12, 1, 'hctoolssmtp@gmail.com', 30, '0', 34, 'Stock inventory,Order process,Quality', '2CjwdhY$', '68.178.154.233', '2023-09-02 21:09:10'),
(4, 12, 1, 'Jeyprabu@hctools.in', 30, '7', 35, 'Customer service,Order process,Quality', 'CqG83TUd', '68.178.154.233', '2023-09-02 21:09:40'),
(5, 12, 1, 'hctoolssmtp@gmail.com', 30, '9', 37, 'Quality,custom order', 'bzzAtzeE', '68.178.154.233', '2023-09-05 21:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `nps_tenant`
--

CREATE TABLE `nps_tenant` (
  `tenant_id` int(11) NOT NULL,
  `tenant_name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `database_name` varchar(120) NOT NULL,
  `host` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_tenant`
--

INSERT INTO `nps_tenant` (`tenant_id`, `tenant_name`, `created_at`, `updated_at`, `database_name`, `host`, `username`, `password`) VALUES
(1, 'shark', '2023-06-18 15:17:25', '2023-06-18 15:17:25', 'nps_shared', 'localhost', 'root', ''),
(22, 'tvs', '2023-07-22 17:08:31', '2023-07-22 17:08:31', '', '', '', ''),
(23, 'HC', '2023-07-28 14:19:35', '2023-07-28 14:19:35', '', '', '', '');

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
  `otp_check` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nps_users`
--

INSERT INTO `nps_users` (`id`, `firstname`, `lastname`, `username`, `tenant_id`, `email`, `phone_no`, `role`, `password`, `logo_update`, `status`, `otp_check`, `created_at`, `updated_at`) VALUES
(1, 'HCTools', 'Chennai', 'HCTOOLs', 1, 'jeyprabu@gmail.com', '9003831680', 'admin', '$2y$10$PS7ByV7f6WQDuRMQK9NhgOFzbjwcJHTj/t0tIXQWPbN.U7nRFoeFi', 'uploads/vivekkt_58007428_png-clipart-payoneer-logo-payment-invoice-business-logos-company-text.png', '1', 881794, '2023-08-29 04:22:23', '2023-06-18 16:29:38'),
(26, 'vivek', 'tiger', 'vivektiger', 20, 'vivekkt.1991@tiger.com', '9874561230', 'admin', '$2y$10$zu0UnXb4DFREQQCB0MxkKubWyuqb2kb4cn2jqTx1eyoA/SydoAzPK', '', '1', 0, '2023-07-07 14:52:24', '2023-06-22 17:45:23'),
(29, 'sample', 'ONE', 'sampleone', 1, 'sample1@gmail.com', '1234567980', 'user', '$2y$10$PS7ByV7f6WQDuRMQK9NhgOFzbjwcJHTj/t0tIXQWPbN.U7nRFoeFi', '', '1', 0, '2023-07-28 15:08:36', '2023-06-22 18:34:14'),
(30, 'vivek', 'Thiagarajan', 'sampletwo', 1, 'sample2@gmail.com', '9874566123', 'user', '$2y$10$JRt9BfoiUnxUQLZzgGYA5.BlVj5z4j.7NnSd1cEZntKOR7KRjQJGu', '', '1', 0, '2023-06-29 11:13:56', '2023-06-29 11:03:50'),
(31, 'Tvs', 'Sports', 'TvsSport', 22, 'hctoolssmtp@gmail.com', '7889645612', 'admin', '$2y$10$F/z37Rpdj8xUHMUdKgwhNe2npHmVRl03V6frH9KUMthoWSoiCmatu', '', '1', 0, '2023-08-18 21:35:49', '2023-07-22 17:08:31'),
(34, 'prj', 'jj', 'jeyjey', 23, 'prabhujay@gmail.com', '9003831680', 'admin', '$2y$10$4j7fUOo8Y9XsR6l5tIMFNOhdag4A.Xbb7su4BZGqzbAb65gDncleK', '', '1', 0, '2023-08-15 18:54:07', '2023-07-28 14:19:36'),
(35, 'vivek', 'Thiagarajan', 'vivekoutlook', 1, 'vivekkt.1s991@outlook.com', '9874561230', 'admin', '$2y$10$ctjAzEf3VW6CQFjPbrQ02.njctTevMU5UCPaQrnRAOMzoheTkkZya', '', '1', 0, '2023-08-27 06:16:16', '2023-08-25 12:56:26'),
(37, 'HC', 'California', 'jeyprabhu', 23, 'jeyprabhu@icloud.com', '7550085431', 'admin', '$2y$10$kXq8T5DsMYV6CNHSzuK6ZebFLI1l/sE9M1awUscYS5Me7HHhk0l9W', '', '0', 0, '2023-08-26 04:55:19', '2023-08-26 04:55:19'),
(38, 'sina', 'B', 'sinahc', 23, 'sina@haircompounds.com', '8877665544', 'admin', '$2y$10$av0FPoji5lbvbmKEA96S2O9eibRx8HV.D1nVP3WJ2NuxCvAFH9bSW', '', '1', 0, '2023-08-27 14:45:40', '2023-08-26 11:09:16'),
(42, 'vivek', 'Thiagarajan', 'jeyprabu', 24, 'vivekkt.1991@outlook.com', '1234567890', 'admin', '$2y$10$PIia8RkN4vIx1aAcoI4XYu9pc3tPyoQyM9lUkB1fr7z3uFvYzQO6u', '', '0', 0, '2023-08-28 11:01:34', '2023-08-28 11:01:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_answers_details`
--
ALTER TABLE `nps_answers_details`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `nps_campign_details`
--
ALTER TABLE `nps_campign_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `nps_tenant`
--
ALTER TABLE `nps_tenant`
  ADD PRIMARY KEY (`tenant_id`),
  ADD UNIQUE KEY `tenant_name` (`tenant_name`);

--
-- Indexes for table `nps_users`
--
ALTER TABLE `nps_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nps_answers_details`
--
ALTER TABLE `nps_answers_details`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nps_campign_details`
--
ALTER TABLE `nps_campign_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nps_email_send_list`
--
ALTER TABLE `nps_email_send_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nps_external_contacts`
--
ALTER TABLE `nps_external_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nps_login_user_info`
--
ALTER TABLE `nps_login_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nps_question_details`
--
ALTER TABLE `nps_question_details`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `nps_survey_details`
--
ALTER TABLE `nps_survey_details`
  MODIFY `campign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nps_survey_response`
--
ALTER TABLE `nps_survey_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nps_tenant`
--
ALTER TABLE `nps_tenant`
  MODIFY `tenant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nps_users`
--
ALTER TABLE `nps_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
