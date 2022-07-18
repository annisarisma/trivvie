-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 12:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trivvie`
--

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'assets/gallery/axBAs1YtpFRP50JFWyy58xv1AOa1qRC0sbInwEBl.png', '2022-01-02 19:40:53', '2022-01-02 19:21:53', '2022-01-02 19:40:53'),
(5, 1, 'assets/gallery/3UDr50KxmYoMfdmBlAjnZ5UNlySp0w18USpQm7Bi.png', '2022-01-02 19:40:51', '2022-01-02 19:38:55', '2022-01-02 19:40:51'),
(6, 1, 'assets/gallery/unDXBS4PHlgYvmrD4wr8skYwSiF4Mxj8TjcClAG8.jpg', NULL, '2022-01-02 19:41:07', '2022-01-02 19:41:07'),
(7, 4, 'assets/gallery/NYL0puqKQO7YsiNyG4r3eZb4OC4peC1NkbOEwLP4.jpg', NULL, '2022-01-03 02:17:54', '2022-01-03 02:17:54'),
(8, 5, 'assets/gallery/JwuW1i3zZMDiXGUQV3INrLKi6eJLwoTizhsJcn7K.jpg', NULL, '2022-01-03 02:18:04', '2022-01-03 02:18:04'),
(9, 6, 'assets/gallery/3hMmLSnjeZb9qDSJrROkmKjdj1VZUf3FYzeCEbbH.jpg', NULL, '2022-01-03 02:18:12', '2022-01-03 02:18:12');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_28_133822_create_travel_packages_table', 1),
(6, '2021_12_28_142048_create_galleries_table', 1),
(7, '2021_12_28_143223_create_transactions_table', 1),
(8, '2021_12_28_143856_create_transaction_details_table', 1),
(9, '2021_12_29_131832_add_roles_field_to_users_table', 1),
(10, '2021_12_29_144224_add_username_field_to_users_table', 1);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 200000, 'SUCCESS', NULL, '2022-01-03 01:02:38', '2022-01-02 20:00:23'),
(2, 1, 2, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:12:25', '2022-01-03 18:12:25'),
(3, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:12:55', '2022-01-03 18:12:55'),
(4, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:15:56', '2022-01-03 18:15:56'),
(5, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:18:15', '2022-01-03 18:18:15'),
(6, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:18:32', '2022-01-03 18:18:32'),
(7, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:19:40', '2022-01-03 18:19:40'),
(8, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:19:42', '2022-01-03 18:19:42'),
(9, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:19:44', '2022-01-03 18:19:44'),
(10, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:37:34', '2022-01-03 18:37:34'),
(11, 1, 3, 0, 0, 'IN_CART', NULL, '2022-01-03 18:48:15', '2022-01-03 18:51:42'),
(12, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 18:52:57', '2022-01-03 18:52:57'),
(13, 1, 3, 0, 100000, 'IN_CART', NULL, '2022-01-03 19:10:08', '2022-01-03 19:10:08'),
(14, 1, 3, 190, 200190, 'PENDING', NULL, '2022-01-03 19:27:42', '2022-01-03 19:38:56'),
(15, 1, 2, 0, 100000, 'IN_CART', NULL, '2022-01-04 04:29:12', '2022-01-04 04:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'member2', 'ID', 1, '2022-01-03', NULL, '2022-01-04 01:03:04', '2022-01-03 01:03:04'),
(3, 3, 'member2', 'ID', 1, '2022-01-04', NULL, '2022-01-04 01:17:16', '2022-01-04 01:17:16'),
(4, 11, 'member2', 'ID', 0, '2027-01-04', '2022-01-03 18:51:42', '2022-01-03 18:48:15', '2022-01-03 18:51:42'),
(5, 12, 'member2', 'ID', 0, '2027-01-04', NULL, '2022-01-03 18:52:57', '2022-01-03 18:52:57'),
(6, 13, 'member2', 'ID', 0, '2027-01-04', NULL, '2022-01-03 19:10:08', '2022-01-03 19:10:08'),
(7, 14, 'member2', 'ID', 0, '2027-01-04', NULL, '2022-01-03 19:27:42', '2022-01-03 19:27:42'),
(8, 14, 'member1', 'ID', 1, '2022-04-30', '2022-01-03 19:36:24', '2022-01-03 19:35:42', '2022-01-03 19:36:24'),
(9, 14, 'member1', 'ID', 1, '2022-04-30', NULL, '2022-01-03 19:38:31', '2022-01-03 19:38:31'),
(10, 15, 'member1', 'ID', 0, '2027-01-04', NULL, '2022-01-04 04:29:12', '2022-01-04 04:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'NTB', 'test', 'Joget', 'indonesia', 'Nasi padang', '2022-01-02', '2 hari', 'Open Trip', 100000, NULL, '2022-01-02 04:29:57', '2022-01-02 04:29:57'),
(4, 'Komodo Island', 'komodo-island', 'NTT', 'Komodo Island', 'Beautiful Island', 'Indonesia', 'Nasi Goreng', '2022-01-03', '7 days', 'Open Trip', 1000000, NULL, '2022-01-03 02:15:42', '2022-01-03 02:15:42'),
(5, 'Sanur Beach', 'sanur-beach', 'Bali', 'Sanur Beach', 'Sunset', 'Indonesia', 'Seafood', '2022-01-03', '3 days', 'Open Trip', 200000, NULL, '2022-01-03 02:16:41', '2022-01-03 02:16:41'),
(6, 'Raja Ampat', 'raja-ampat', 'Papua', 'Raja Ampat', 'Snorkling', 'Indonesia', 'Papeda', '2022-01-03', '7 days', 'Open Trip', 500000, NULL, '2022-01-03 02:17:22', '2022-01-03 02:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$K2/cB2nqDwLyYgKeZOYNXuAHvhmwRbEw2zB8gOGYQaK0H/aZjOM9G', NULL, '2021-12-29 19:25:48', '2021-12-29 19:25:48', 'ADMIN', 'admin'),
(2, 'member1', 'member1@gmail.com', '2021-12-30 05:40:52', '$2y$10$gyOaOlLLC.xWmNuB9LyXp.B5moxRu7DFxK5JZZhFmU8VT.Z1.8DpW', NULL, '2021-12-30 04:56:51', '2021-12-30 05:40:52', 'USER', 'member1'),
(3, 'member2', 'member2@gmail.com', '2022-01-02 16:13:22', '$2y$10$dI1HKcu4r.jI2OiLFM9E/OLVz0IBSe4EiLdssbMiDd3KgQ4gIXzve', NULL, '2022-01-02 16:13:05', '2022-01-02 16:13:22', 'USER', 'member2'),
(4, 'admin2', 'admin2@gmail.com', NULL, '$2y$10$u3TMUCTasRd3lmX.2em8Ge1YHKxsw54PxCHqb2kcX9fc0ZMh3Ki8i', NULL, '2022-01-03 05:50:06', '2022-01-03 05:50:06', 'ADMIN', 'admin2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
