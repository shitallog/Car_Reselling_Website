-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 08:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_resells`
--

CREATE TABLE `car_resells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Car name',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Normal Car' COMMENT 'Car Type',
  `price` double(8,2) NOT NULL COMMENT 'Car Price',
  `top_speed` int(11) NOT NULL COMMENT 'Car Top Speed',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Car Belongs to user.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_resells`
--

INSERT INTO `car_resells` (`id`, `name`, `type`, `price`, `top_speed`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Normal Car Name', 'Normal Car', 10000.00, 100, 1, '2013-09-22 01:28:59', '2023-09-24 01:28:59'),
(2, 'Luxury Car Name', 'Luxury Car', 20000.00, 200, 1, '2023-09-24 01:28:59', '2023-09-24 01:28:59'),
(3, 'Sports Car Name', 'Sports Car', 30000.00, 300, 1, '2023-09-24 01:28:59', '2023-09-24 01:28:59'),
(4, 'Sports Car Name 2', 'Sports Car', 40000.00, 400, 1, '2023-09-24 01:28:59', '2023-09-24 01:28:59'),
(5, 'Normal Name 2', 'Normal Car', 400.00, 40, 1, '2023-09-24 01:28:59', '2023-09-24 01:28:59'),
(6, 'Luxury Name 2', 'Luxury Car', 200.00, 299, 1, '2023-09-24 01:28:59', '2023-09-24 01:28:59'),
(7, 'Stewart Alford', 'Normal Car', 951.00, 222, 2, '2023-09-24 02:22:52', '2023-09-24 02:57:29'),
(8, 'Keelie Houston', 'Sports Car', 506.00, 444, 2, '2023-09-24 02:23:05', '2023-09-24 02:23:05'),
(9, 'Xerxes Townsend', 'Luxury Car', 763.00, 333, 2, '2023-09-24 02:23:17', '2023-09-24 02:56:59'),
(10, 'Marsden Wilkins', 'Normal Car', 847.00, 2, 1, '2023-09-24 03:38:37', '2023-09-24 03:38:37'),
(11, 'Zahir Kinney', 'Normal Car', 91.00, 73, 1, '2023-09-24 03:43:28', '2023-09-24 03:43:28'),
(12, 'Some', 'Normal Car', 20.00, 20, 1, '2023-09-24 03:46:15', '2023-09-24 03:46:15'),
(13, 'Rose Conrad', 'Normal Car', 470.00, 40, 1, '2023-09-24 03:48:31', '2023-09-24 03:48:31'),
(14, 'Kylie Peterson', 'Normal Car', 874.00, 31, 1, '2023-09-24 04:01:03', '2023-09-24 04:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_09_24_032841_create_users_table', 1),
(2, '2023_09_24_032752_create_password_resets_table', 1),
(3, '2023_09_24_031729_create_failed_jobs_table', 1),
(4, '2023_09_24_032344_create_personal_access_tokens_table', 1),
(5, '2023_09_24_032543_create_car_resells_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shital', 'shitalkatre@gmail.com', '$2y$10$Y6tXTFKa2dw0iaLcsJHYA.0Qzp1eIPNxxKMeBQa/E0TYcYr4SCgZW', 'aADB9nIbq8pnEGVxF1VVeAxyYjU9l9xAN8E51P74z7dJ8viih2o09hORSkzG', '2023-09-21 15:57:39', '2023-09-21 15:57:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_resells`
--
ALTER TABLE `car_resells`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_resells`
--
ALTER TABLE `car_resells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
