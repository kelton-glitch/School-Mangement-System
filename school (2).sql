-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 08:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$q7/.ERL14XgLYfK/vloQ3.2rij8sDO7hITuNlSxEQq9qtDEHitI5a', 'irGzD2jspcp4v8WUflSHAg3Gkk2nidxcEgf46y110OlCXC86GAZp8NoItCUt', NULL, '202202211035iStock-476085198.jpg', '2021-02-02 15:36:52', '2022-02-21 18:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 2, 6, '2022-03-14 10:20:19', '2022-03-18 09:44:33'),
(2, 12, 2, 2, 6, '2022-03-14 14:15:19', '2022-03-18 09:44:33'),
(3, 13, 3, 2, 6, '2022-03-14 14:29:04', '2022-03-18 09:44:33'),
(4, 14, NULL, 1, 6, '2022-03-14 14:31:58', '2022-03-14 14:31:58'),
(5, 13, 5, 4, 6, '2022-03-15 12:38:07', '2022-03-18 11:14:32'),
(6, 15, 4, 2, 6, '2022-03-18 09:02:56', '2022-03-18 09:44:33'),
(7, 16, NULL, 4, 6, '2022-03-18 09:54:02', '2022-03-18 09:54:02'),
(8, 22, NULL, 1, 1, '2022-03-28 14:51:08', '2022-03-28 14:51:08'),
(9, 23, NULL, 1, 1, '2022-03-28 14:56:15', '2022-03-28 14:56:15'),
(10, 24, NULL, 6, 2, '2022-03-28 15:04:32', '2022-03-28 15:04:32'),
(11, 25, NULL, 6, 2, '2022-03-28 15:06:18', '2022-03-28 15:06:18'),
(12, 26, NULL, 10, 3, '2022-03-28 15:11:28', '2022-03-28 15:11:28'),
(13, 27, NULL, 10, 3, '2022-03-28 15:16:38', '2022-03-28 15:16:38'),
(14, 28, NULL, 14, 4, '2022-03-28 15:18:39', '2022-03-28 15:18:39'),
(15, 29, NULL, 14, 4, '2022-03-28 15:21:58', '2022-03-28 15:21:58'),
(16, 30, NULL, 17, 6, '2022-03-28 23:16:03', '2022-03-28 23:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(159, 14, 1, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(160, 14, 2, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(161, 14, 4, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(162, 14, 5, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(163, 14, 6, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(164, 14, 7, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(165, 14, 8, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(166, 14, 9, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(167, 14, 10, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(168, 14, 11, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(169, 14, 12, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(170, 14, 13, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(171, 14, 14, 20, 10, 12, '2022-03-27 04:03:32', '2022-03-27 04:03:32'),
(172, 13, 1, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(173, 13, 2, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(174, 13, 4, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(175, 13, 5, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(176, 13, 6, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(177, 13, 7, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(178, 13, 8, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(179, 13, 9, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(180, 13, 10, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(181, 13, 11, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(182, 13, 12, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(183, 13, 13, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(184, 13, 14, 20, 10, 12, '2022-03-27 04:08:49', '2022-03-27 04:08:49'),
(185, 12, 1, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(186, 12, 2, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(187, 12, 4, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(188, 12, 5, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(189, 12, 6, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(190, 12, 7, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(191, 12, 8, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(192, 12, 9, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(193, 12, 10, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(194, 12, 11, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(195, 12, 12, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(196, 12, 13, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(197, 12, 14, 20, 10, 12, '2022-03-27 04:18:21', '2022-03-27 04:18:21'),
(198, 15, 1, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(199, 15, 2, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(200, 15, 4, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(201, 15, 5, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(202, 15, 6, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(203, 15, 7, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(204, 15, 8, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(205, 15, 9, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(206, 15, 10, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(207, 15, 11, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(208, 15, 12, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(209, 15, 13, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(210, 15, 14, 20, 10, 12, '2022-03-27 04:25:03', '2022-03-27 04:25:03'),
(211, 16, 1, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(212, 16, 2, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(213, 16, 4, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(214, 16, 5, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(215, 16, 6, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(216, 16, 7, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(217, 16, 8, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(218, 16, 9, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(219, 16, 10, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(220, 16, 11, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(221, 16, 12, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(222, 16, 13, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(223, 16, 14, 20, 10, 12, '2022-03-27 04:30:21', '2022-03-27 04:30:21'),
(224, 11, 1, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(225, 11, 2, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(226, 11, 4, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(227, 11, 5, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(228, 11, 6, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(229, 11, 7, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(230, 11, 8, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(231, 11, 9, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(232, 11, 10, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(233, 11, 11, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(234, 11, 12, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(235, 11, 13, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(236, 11, 14, 20, 10, 12, '2022-03-27 04:38:46', '2022-03-27 04:38:46'),
(237, 10, 1, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(238, 10, 2, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(239, 10, 4, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(240, 10, 5, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(241, 10, 6, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(242, 10, 7, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(243, 10, 8, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(244, 10, 9, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(245, 10, 10, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(246, 10, 11, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(247, 10, 12, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(248, 10, 13, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(249, 10, 14, 20, 10, 12, '2022-03-27 04:41:22', '2022-03-27 04:41:22'),
(250, 9, 1, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(251, 9, 2, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(252, 9, 4, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(253, 9, 5, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(254, 9, 6, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(255, 9, 7, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(256, 9, 8, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(257, 9, 9, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(258, 9, 10, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(259, 9, 11, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(260, 9, 12, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(261, 9, 13, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(262, 9, 14, 20, 10, 12, '2022-03-27 04:43:34', '2022-03-27 04:43:34'),
(263, 8, 1, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(264, 8, 2, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(265, 8, 4, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(266, 8, 5, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(267, 8, 6, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(268, 8, 7, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(269, 8, 8, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(270, 8, 9, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(271, 8, 10, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(272, 8, 11, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(273, 8, 12, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(274, 8, 13, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(275, 8, 14, 20, 10, 12, '2022-03-27 04:47:52', '2022-03-27 04:47:52'),
(276, 7, 1, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(277, 7, 2, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(278, 7, 4, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(279, 7, 5, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(280, 7, 6, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(281, 7, 7, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(282, 7, 8, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(283, 7, 9, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(284, 7, 10, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(285, 7, 11, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(286, 7, 12, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(287, 7, 13, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(288, 7, 14, 20, 10, 12, '2022-03-27 04:51:33', '2022-03-27 04:51:33'),
(289, 6, 1, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(290, 6, 2, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(291, 6, 4, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(292, 6, 5, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(293, 6, 6, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(294, 6, 7, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(295, 6, 8, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(296, 6, 9, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(297, 6, 10, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(298, 6, 11, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(299, 6, 12, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(300, 6, 13, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(301, 6, 14, 20, 10, 12, '2022-03-27 04:57:39', '2022-03-27 04:57:39'),
(302, 5, 1, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(303, 5, 2, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(304, 5, 4, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(305, 5, 5, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(306, 5, 6, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(307, 5, 7, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(308, 5, 8, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(309, 5, 9, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(310, 5, 10, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(311, 5, 11, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(312, 5, 12, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(313, 5, 13, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(314, 5, 14, 20, 10, 12, '2022-03-27 04:59:28', '2022-03-27 04:59:28'),
(315, 4, 1, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(316, 4, 2, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(317, 4, 4, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(318, 4, 5, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(319, 4, 6, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(320, 4, 7, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(321, 4, 8, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(322, 4, 9, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(323, 4, 10, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(324, 4, 11, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(325, 4, 12, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(326, 4, 13, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(327, 4, 14, 20, 10, 12, '2022-03-27 05:01:01', '2022-03-27 05:01:01'),
(341, 2, 1, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(342, 2, 2, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(343, 2, 4, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(344, 2, 5, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(345, 2, 6, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(346, 2, 7, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(347, 2, 8, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(348, 2, 9, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(349, 2, 10, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(350, 2, 11, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(351, 2, 12, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(352, 2, 13, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(353, 2, 14, 20, 10, 12, '2022-03-27 05:03:47', '2022-03-27 05:03:47'),
(354, 1, 1, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(355, 1, 2, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(356, 1, 4, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(357, 1, 5, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(358, 1, 6, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(359, 1, 7, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(360, 1, 8, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(361, 1, 9, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(362, 1, 10, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(363, 1, 11, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(364, 1, 12, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(365, 1, 13, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52'),
(366, 1, 14, 20, 10, 12, '2022-03-27 05:04:52', '2022-03-27 05:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Principal', '2022-03-22 03:18:58', '2022-03-27 05:05:22'),
(2, 'Vice Principal', '2022-03-22 03:19:11', '2022-03-27 05:05:52'),
(3, 'Teacher', '2022-03-22 03:19:18', '2022-03-23 03:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2022-03-14 10:20:19', '2022-03-14 10:20:19'),
(2, 2, 1, 5, '2022-03-14 14:15:19', '2022-03-14 14:15:19'),
(3, 3, 1, 5, '2022-03-14 14:29:04', '2022-03-14 14:29:04'),
(4, 4, 1, 5, '2022-03-14 14:31:58', '2022-03-14 14:31:58'),
(5, 5, 1, 5, '2022-03-15 12:38:07', '2022-03-15 12:38:07'),
(6, 6, 1, NULL, '2022-03-18 09:02:56', '2022-03-18 09:02:56'),
(7, 7, 1, 0, '2022-03-18 09:54:02', '2022-03-18 09:54:02'),
(8, 8, 1, 0, '2022-03-28 14:51:08', '2022-03-28 14:53:59'),
(9, 9, 1, 0, '2022-03-28 14:56:15', '2022-03-28 14:56:15'),
(10, 10, 1, 0, '2022-03-28 15:04:32', '2022-03-28 15:04:32'),
(11, 11, 1, 0, '2022-03-28 15:06:18', '2022-03-28 15:06:18'),
(12, 12, 1, 0, '2022-03-28 15:11:28', '2022-03-28 15:11:28'),
(13, 13, 1, 0, '2022-03-28 15:16:38', '2022-03-28 15:16:38'),
(14, 14, 1, 0, '2022-03-28 15:18:39', '2022-03-28 15:18:39'),
(15, 15, 1, 0, '2022-03-28 15:21:58', '2022-03-28 15:21:58'),
(16, 16, 1, 0, '2022-03-28 23:16:03', '2022-03-28 23:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(5, 18, '2022-03-23', 'Present', '2022-03-23 05:33:18', '2022-03-23 05:33:18'),
(6, 18, '1970-01-01', 'Present', '2022-03-23 13:45:10', '2022-03-23 13:45:10'),
(7, 19, '1970-01-01', 'Present', '2022-03-23 13:45:10', '2022-03-23 13:45:10'),
(8, 20, '1970-01-01', 'Present', '2022-03-23 13:45:10', '2022-03-23 13:45:10'),
(9, 21, '1970-01-01', 'Leave', '2022-03-23 13:45:10', '2022-03-23 13:45:10'),
(10, 18, '2022-03-24', 'Present', '2022-03-25 01:05:06', '2022-03-25 01:05:06'),
(11, 19, '2022-03-24', 'Present', '2022-03-25 01:05:06', '2022-03-25 01:05:06'),
(12, 20, '2022-03-24', 'Present', '2022-03-25 01:05:06', '2022-03-25 01:05:06'),
(13, 21, '2022-03-24', 'Present', '2022-03-25 01:05:06', '2022-03-25 01:05:06'),
(22, 18, '2022-03-25', 'Absent', '2022-03-25 15:52:39', '2022-03-25 15:52:39'),
(23, 19, '2022-03-25', 'Absent', '2022-03-25 15:52:39', '2022-03-25 15:52:39'),
(24, 20, '2022-03-25', 'Present', '2022-03-25 15:52:39', '2022-03-25 15:52:39'),
(25, 21, '2022-03-25', 'Present', '2022-03-25 15:52:39', '2022-03-25 15:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 18, 3, '2022-03-23', '2022-04-08', '2022-03-23 05:26:20', '2022-03-23 09:17:51'),
(2, 21, 4, '2022-03-23', '2023-03-24', '2022-03-23 13:46:12', '2022-03-23 13:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_logs`
--

CREATE TABLE `employee_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salary_logs`
--

INSERT INTO `employee_salary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_salary`, `created_at`, `updated_at`) VALUES
(1, 18, 300000, 300000, 0, '2022-03-23', '2022-03-23 02:28:28', '2022-03-23 02:28:28'),
(2, 19, 300000, 300000, 0, '2022-03-23', '2022-03-23 05:56:09', '2022-03-23 05:56:09'),
(3, 20, 400000, 400000, 0, '2022-03-23', '2022-03-23 09:12:49', '2022-03-23 09:12:49'),
(4, 21, 1000000, 1000000, 0, '2022-03-23', '2022-03-23 13:43:24', '2022-03-23 13:43:24'),
(5, 18, 300000, 350000, 50000, '2022-03-24', '2022-03-24 06:07:54', '2022-03-24 06:07:54'),
(6, 18, 350000, 300000, -50000, '2022-03-24', '2022-03-24 17:29:53', '2022-03-24 17:29:53'),
(7, 18, 300000, 350000, 50000, '2022-03-25', '2022-03-25 15:50:58', '2022-03-25 15:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Sequence', '2022-03-21 14:04:45', '2022-03-21 14:04:45'),
(2, '2nd Sequence', '2022-03-26 11:29:11', '2022-03-26 11:29:11'),
(3, '3rd Sequence', '2022-03-26 11:29:22', '2022-03-26 11:29:22'),
(4, '4th Sequence', '2022-03-26 11:29:33', '2022-03-26 11:29:33'),
(5, '5th Sequence', '2022-03-26 11:29:46', '2022-03-26 11:29:46'),
(6, '6th Sequence', '2022-03-26 11:30:18', '2022-03-26 11:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration (Old Student)', '2022-03-10 11:49:53', '2022-03-28 23:23:43'),
(3, 'Registration(New Student)', '2022-03-10 11:51:07', '2022-03-28 23:23:56'),
(10, 'Special Case', '2022-03-26 11:25:59', '2022-03-26 11:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(16, 3, 2, 300, '2022-03-12 04:40:53', '2022-03-12 04:40:53'),
(33, 1, 1, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(34, 1, 2, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(35, 1, 4, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(36, 1, 5, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(37, 1, 6, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(38, 1, 7, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(39, 1, 8, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(40, 1, 9, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(41, 1, 10, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(42, 1, 11, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(43, 1, 12, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(44, 1, 13, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(45, 1, 14, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(46, 1, 15, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(47, 1, 16, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10'),
(48, 1, 17, 20000, '2022-03-28 23:37:10', '2022-03-28 23:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accident', '2022-03-23 05:26:20', '2022-03-23 05:26:20'),
(2, 'Belle', '2022-03-23 09:16:33', '2022-03-23 09:16:33'),
(3, 'Maternal leave', '2022-03-23 09:17:51', '2022-03-23 09:17:51'),
(4, 'Shayo', '2022-03-23 13:46:12', '2022-03-23 13:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `grade_name`, `grade_point`, `start_marks`, `end_marks`, `start_point`, `end_point`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'A', '4.00', '16', '20', '4.00', '4.00', 'Excellent', '2022-03-29 00:25:03', '2022-03-29 00:25:03'),
(2, 'B+', '3.5', '14', '15.8', '3.5', '3.5', 'Good', '2022-03-31 13:22:41', '2022-03-31 13:22:41'),
(3, 'B', '3.0', '12', '13.8', '3.0', '3.0', 'Good', '2022-03-31 13:26:02', '2022-03-31 13:26:02'),
(4, 'C+', '2.5', '11', '11.8', '2.5', '2.5', 'Fairly Good', '2022-03-31 13:27:32', '2022-03-31 13:27:32'),
(5, 'C', '2.0', '10', '10.8', '2.0', '2.0', 'Fair', '2022-03-31 13:28:24', '2022-03-31 13:28:24'),
(6, 'F', '0.0', '0', '9.8', '0.0', '0.0', 'Failed', '2022-03-31 13:31:03', '2022-03-31 13:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_04_185345_create_sessions_table', 1),
(8, '2022_03_10_041450_create_student_classes_table', 3),
(9, '2022_03_10_090437_create_student_years_table', 4),
(10, '2022_03_10_120732_create_fee_categories_table', 5),
(11, '2022_03_10_140121_create_fee_category_amounts_table', 6),
(12, '2014_10_12_000000_create_users_table', 7),
(13, '2022_03_13_194446_create_assign_students_table', 8),
(14, '2022_03_13_194849_create_discount_students_table', 8),
(15, '2022_03_21_135053_create_exam_types_table', 9),
(16, '2022_03_21_151618_create_school_subjects_table', 10),
(17, '2022_03_21_153736_create_assign_subjects_table', 11),
(18, '2022_03_22_040228_create_designations_table', 12),
(19, '2022_03_22_131029_create_employee_salary_logs_table', 13),
(22, '2022_03_22_131810_create_employee_attendances_table', 14),
(23, '2022_03_22_151856_create_employee_leaves_table', 14),
(24, '2022_03_22_153924_create_leave_purposes_table', 14),
(26, '2022_03_22_155600_create_leave_purposes_table', 15),
(27, '2022_03_23_032307_create_employee_salary_logs_table', 16),
(28, '2022_03_24_074408_create_student_marks_table', 17),
(29, '2022_03_24_075106_create_marks_grades_table', 17),
(30, '2022_03_24_112356_create_account_employee_salaries_table', 18),
(31, '2022_03_24_112505_create_account_other_costs_table', 18),
(32, '2022_03_24_112552_create_account_student_fees_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Biology', '2022-03-21 14:30:56', '2022-03-21 14:30:56'),
(2, 'History', '2022-03-21 14:31:18', '2022-03-21 14:31:28'),
(4, 'Mathematics', '2022-03-26 11:03:46', '2022-03-26 11:03:46'),
(5, 'English Language', '2022-03-26 11:04:47', '2022-03-26 11:04:47'),
(6, 'French', '2022-03-26 11:05:22', '2022-03-26 11:05:22'),
(7, 'Economics', '2022-03-26 11:09:03', '2022-03-26 11:09:03'),
(8, 'Chemistry', '2022-03-26 11:11:42', '2022-03-26 11:11:42'),
(9, 'Physics', '2022-03-26 11:11:54', '2022-03-26 11:11:54'),
(10, 'Computer Science', '2022-03-26 11:12:13', '2022-03-26 11:12:13'),
(11, 'Food and Nutrition', '2022-03-26 11:12:33', '2022-03-26 11:12:33'),
(12, 'Geography', '2022-03-26 11:12:48', '2022-03-26 11:12:48'),
(13, 'Citizenship', '2022-03-26 11:13:27', '2022-03-26 11:13:27'),
(14, 'Logic', '2022-03-26 11:14:23', '2022-03-26 11:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4lf8ll88ZwdDJlgYhDcnH8uvx8dA4j2rzdOeIikR', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSkQ5MGtudHZ1QVgzYVdyNkRQQkpNYXlld0J5SU9nczVLU01kMXppVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjgxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3R1ZGVudHMveWVhci9jbGFzcy93aXNlP2NsYXNzX2lkPTEmc2VhcmNoPVNlYXJjaCZ5ZWFyX2lkPTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkQktHTHBGWHR2cU5PSkZBZlQ0d1U1dWZoQkFHeXk4RnV4c0NyUklXS29sQ0RxUHpGRmNETC4iO30=', 1648737370),
('DEIjUYTkCSss9SQDXMDif9ewmwLBWlyVJXu4fl23', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVWRtY2llWE5rVU5jd3J5YlR5SzBFYURJaDY5MlplUmN6NHRvYU9seiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbWFya3MvbWFya3MvZ3JhZGUvYWRkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEJLR0xwRlh0dnFOT0pGQWZUNHdVNXVmaEJBR3l5OEZ1eHNDclJJV0tvbENEcVB6RkZjREwuIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRCS0dMcEZYdHZxTk9KRkFmVDR3VTV1ZmhCQUd5eThGdXhzQ3JSSVdLb2xDRHFQekZGY0RMLiI7fQ==', 1648517130),
('LUhBKvLjPIbVbEoi7BH9ffHCMKR8NooGpvI1ANel', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTG5XblIxWFNIR05ST3NwWVQ1SWtMYlVyVUd3VHV6UE1Zdjg2ZnVQVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50cy95ZWFyL2NsYXNzL3dpc2U/Y2xhc3NfaWQ9MTAmc2VhcmNoPVNlYXJjaCZ5ZWFyX2lkPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkQktHTHBGWHR2cU5PSkZBZlQ0d1U1dWZoQkFHeXk4RnV4c0NyUklXS29sQ0RxUHpGRmNETC4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEJLR0xwRlh0dnFOT0pGQWZUNHdVNXVmaEJBR3l5OEZ1eHNDclJJV0tvbENEcVB6RkZjREwuIjt9', 1648484798);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Form 1A', '2022-03-10 04:09:43', '2022-03-10 04:30:51'),
(2, 'Form 1B', '2022-03-10 04:10:14', '2022-03-10 04:30:39'),
(4, 'Form 1C', '2022-03-15 12:37:29', '2022-03-26 11:15:58'),
(5, 'Form 1D', '2022-03-25 15:46:37', '2022-03-26 11:16:10'),
(6, 'Form 2A', '2022-03-26 11:16:27', '2022-03-26 11:16:27'),
(7, 'Form 2B', '2022-03-26 11:16:39', '2022-03-26 11:16:39'),
(8, 'Form 2C', '2022-03-26 11:16:48', '2022-03-26 11:16:48'),
(9, 'Form 2D', '2022-03-26 11:17:02', '2022-03-26 11:17:02'),
(10, 'Form 3A', '2022-03-26 11:17:33', '2022-03-26 11:17:33'),
(11, 'Form 3B', '2022-03-26 11:17:42', '2022-03-26 11:17:42'),
(12, 'Form 3C', '2022-03-26 11:17:52', '2022-03-26 11:17:52'),
(13, 'Form 3D', '2022-03-26 11:18:01', '2022-03-26 11:18:01'),
(14, 'Form 4A', '2022-03-26 11:18:38', '2022-03-26 11:18:38'),
(15, 'Form 4B', '2022-03-26 11:18:50', '2022-03-26 11:18:50'),
(16, 'Form 4C', '2022-03-26 11:19:11', '2022-03-26 11:19:11'),
(17, 'Form 4D', '2022-03-26 11:19:36', '2022-03-26 11:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(1, 22, '2017/20180017', 1, 1, 354, 1, 20, '2022-03-28 23:59:54', '2022-03-28 23:59:54'),
(2, 23, '2017/20180023', 1, 1, 354, 1, 20, '2022-03-28 23:59:54', '2022-03-28 23:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2017/2018', '2022-03-10 08:42:43', '2022-03-22 03:32:15'),
(2, '2018/2019', '2022-03-10 08:45:00', '2022-03-22 03:32:30'),
(3, '2019/2020', '2022-03-10 08:46:08', '2022-03-22 03:32:43'),
(4, '2020/2021', '2022-03-10 10:42:46', '2022-03-22 03:33:43'),
(6, '2021/2022', '2022-03-14 10:01:50', '2022-03-22 03:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin will be head of software, operator,computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive,=Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$BKGLpFXtvqNOJFAfT4wU5ufhBAGyy8FuxsCrRIWKolCDqPzFFcDL.', '049238025843', 'Buea', 'Male', '202203131545admin profile.png', NULL, NULL, NULL, NULL, NULL, 'Admin', NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-13 14:44:24', '2022-03-13 14:45:52'),
(5, 'Admin', 'Kazi', 'kazi@gmail.com', NULL, '$2y$10$O9HRRkab7mpGB27.imWNBOOZUqWU61BInJjayOBdRwe/JthCquuLW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '43587080', 'Operator', NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-13 21:40:09', '2022-03-13 21:45:13'),
(11, 'Student', 'Jeff', NULL, NULL, '$2y$10$L/MDLOz4NeSI1cQ4b4BNqO.Ovz45bnbmYvITJTIVEvUD19WJdXE1S', '29458892485', 'Bwitingi', 'Male', '202203141120user image.png', 'Pa Jeff', 'Ma Jeff', '202200001', '2009-02-26', '88348540', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-14 10:20:19', '2022-03-14 10:20:19'),
(12, 'Student', 'Oli', NULL, NULL, '$2y$10$GPSUKXgLfwv8OqEG/5RlW.5v8WM396IAVD4PSQWaKt1t2OC562cfS', '34567845678', 'Bwitingi', 'Female', '202203141515user image.png', 'Pa Oli', 'Ma Oli', '20220012', '2005-05-23', '38027004', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-14 14:15:19', '2022-03-14 14:15:19'),
(13, 'Student', 'Langia Mangwi', NULL, NULL, '$2y$10$uL.q7GTkch.YqzincAm29.wBklDXDoyJhqYgenWhzZoQHS2iqqyEe', '34567345678', 'Ndongo', 'Female', '202203141529WhatsApp Image 2022-03-14 at 4.10.46 PM.jpeg', 'Pa Mangwi', 'Ma Mangwi', '20220013', '2001-11-10', '40156276', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-14 14:29:04', '2022-03-22 11:55:02'),
(14, 'Student', 'Flor', NULL, NULL, '$2y$10$ARmg7IJ0mGLc2HSmeWKzwu3PKAylL6HZlwBgkcYSKIZ0Ze1s4n0ri', '4567345678', 'Bwitingi', 'Female', '202203141531user image.png', 'Pa Flor', 'Ma Flor', '20220014', '2000-01-08', '96443070', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-14 14:31:58', '2022-03-14 14:31:58'),
(15, 'Student', 'Blessing', NULL, NULL, '$2y$10$ReZSnGwMF92xjg8dFsZPY.Oj/Hsj8bdAciTM68fMH.QGU0OMMChCW', '56786789', 'Dubai', 'Female', '202203181002Screenshot 2022-03-16 192047.png', 'Pa Ble', 'Ma Ble', '20220015', '1996-03-18', '59023775', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-18 09:02:56', '2022-03-18 09:02:56'),
(16, 'Student', 'Hans', NULL, NULL, '$2y$10$Eg1gY10kHd6PsFezGTV6sulfThcO7KAH4PK09wt9NZiTvQiLjvKBC', '435678934567', 'Bwitingi', 'Male', '202203181054user image.png', 'Pa Hans', 'Ma Hans', '20220016', '2000-01-09', '78531291', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, '2022-03-18 09:54:02', '2022-03-18 09:54:02'),
(18, 'employee', 'Dinero', NULL, NULL, '$2y$10$/gBK0zp/H9DsuKj7O3uDYuQgevcQgyPIo.I6QbcAxg./SdT42piWi', '234567897654', 'Bakweri town', 'Male', '202203230328user image.png', 'Pa Dinero', 'Ma Dinero', '2022030001', '2000-05-09', '97713563', NULL, '2022-03-23', 3, 350000, 1, NULL, NULL, NULL, '2022-03-23 02:28:28', '2022-03-25 15:50:58'),
(19, 'employee', 'Theola', NULL, NULL, '$2y$10$QZ7QfmYPsUkog304S05.muJKP/sfWxNpQfTxUasF738Lpx5hiODu6', '34567345678', 'OIC', 'Female', '202203230656user image.png', 'Pa Theola', 'Ma Theola', '2022030019', '2001-03-23', '51348881', NULL, '2022-03-23', 3, 300000, 1, NULL, NULL, NULL, '2022-03-23 05:56:09', '2022-03-23 05:56:09'),
(20, 'employee', 'Ndambi', NULL, NULL, '$2y$10$yA0kRRit2I8217J3uE8DpObGqOC7EbM4EOfGDq8/ZdmCVzUjhZfl.', '2345674567', 'Yard', 'Male', '202203231012user image.png', 'Pa Ndambi', 'Ma Ndambi', '2022030020', '2001-03-23', '84192314', NULL, '2022-03-23', 3, 400000, 1, NULL, NULL, NULL, '2022-03-23 09:12:49', '2022-03-23 09:12:49'),
(21, 'employee', 'Langia Mangwi', NULL, NULL, '$2y$10$7yGmaHPHRJBHYyBAo6ITgeXjkkNcY80cxLrNOFVHH60YhfsqZIChS', '23456783456', 'Ndongo', 'Female', '202203231443user image.png', 'Pa Mangwi', 'Ma Mangwi', '2022030021', '2001-11-10', '25223722', NULL, '2022-03-23', 1, 1000000, 1, NULL, NULL, NULL, '2022-03-23 13:43:24', '2022-03-23 13:43:24'),
(22, 'Student', 'Florenda', NULL, NULL, '$2y$10$KHYNECm8Q/.jg2cSCYhtIusr07q44RZm.M5FBB4ZpdJe8IBPt0Stq', '234564567', 'Bwitingi', 'Female', '202203281551user image.png', 'Pa Flor', 'Ma Flor', '2017/20180017', '2000-03-28', '14056960', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 14:51:08', '2022-03-28 14:51:08'),
(23, 'Student', 'Olivia', NULL, NULL, '$2y$10$ye2CmQ8VfsOhBTL3hFND3uANjTbL59.bO7v9H7C0.7V.yRneHpGMa', '4356745678', 'Molyko', 'Female', '202203281556admin profile.png', 'Pa Oli', 'Ma Oli', '2017/20180023', '2005-03-22', '17537651', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 14:56:15', '2022-03-28 14:56:15'),
(24, 'Student', 'Jefferson', NULL, NULL, '$2y$10$hRc/hnYJZ0RQxYC6udLc4.fzOuBqWMLw1D16w.t7KAHidfRG9gHPO', '456745678576', 'Buea Town', 'Male', '202203281604user image.png', 'Pa Jeff', 'Ma Jeff', '2018/20190024', '2009-03-28', '37334876', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:04:32', '2022-03-28 15:04:32'),
(25, 'Student', 'Sandrine', NULL, NULL, '$2y$10$nkzj1c1S0Yo6rwHGW.Ab1OGV3KnffRAvO4TY8cTGewpEYLi9WMqWS', '45675675678', 'Bokwai', 'Female', '202203281606user image.png', 'Pa San', 'Ma San', '2018/20190025', '2007-03-28', '86889196', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:06:18', '2022-03-28 15:06:18'),
(26, 'Student', 'Charlotte', NULL, NULL, '$2y$10$9TAEY8/6kUts0gw461gx0.j4lck.UTaH1tNm0ZbJOoUVs/jNYvGvC', '5678768768', 'Malingo', 'Female', '202203281611user image.png', 'Pa Cha', 'Ma Cha', '2019/20200026', '2009-03-21', '84306905', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:11:28', '2022-03-28 15:11:28'),
(27, 'Student', 'Jasper', NULL, NULL, '$2y$10$Ho7cz.jkwpBSw2T4/XHgcOKrWWnq2ogDgpkIb6qdiW31RGMQzlkLm', '4567567878', 'Bonduma', 'Male', '202203281616user image.png', 'Pa Jas', 'Ma Jas', '2019/20200027', '2006-03-15', '30059062', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:16:38', '2022-03-28 15:16:38'),
(28, 'Student', 'Henry', NULL, NULL, '$2y$10$pikowTld4o2bChG8RTmli.PJ2WtwexPs0yWFFU65AxBL6UEBMvlue', '8765567654', 'UB Junction', 'Male', '202203281618admin profile.png', 'Pa Hen', 'Ma Hen', '2020/20210028', '2001-03-29', '64624672', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:18:39', '2022-03-28 15:18:39'),
(29, 'Student', 'Boris', NULL, NULL, '$2y$10$O1hFzhhwiUFEOY8LUmZVeO3rOKmOIMxWVpM7Ogu1ITcIJgX7AI7a6', '34567845678', 'Bokwai', 'Male', '202203281621admin profile.png', 'Pa Bo', 'Ma Bo', '2020/20210029', '1999-03-28', '75982940', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 15:21:58', '2022-03-28 15:21:58'),
(30, 'Student', 'Damaris', NULL, NULL, '$2y$10$7vQwEAvWDq0C3v9p.EqGMOILwWw/c3zKpxfN.erevojKFWh3AyXIO', '7686786788', 'Tiko', 'Female', '202203290016admin profile.png', 'Pa Dam', 'Ma Dam', '2021/20220030', '2003-03-29', '8670', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2022-03-28 23:16:03', '2022-03-28 23:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_salary_logs`
--
ALTER TABLE `employee_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
