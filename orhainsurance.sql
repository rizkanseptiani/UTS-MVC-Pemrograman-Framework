-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 03:57 PM
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
-- Database: `orhainsurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `kc`, `date`, `message`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Anggelina Kismasari', 'angelinaaa21@gmail.com', '12345', 'KCU BPJS Dharma Husada', '2022-06-30', 'Tidak ada', 'approved', NULL, '2022-06-02 04:01:02', '2022-06-02 18:01:42'),
(2, 'Lina', 'angelinaaa11@gmail.com', '1234567', 'KCU BPJS Kantor Kedeputian', '2022-06-27', 'Halo', 'terima', NULL, '2022-06-02 04:03:47', '2022-06-02 18:02:51'),
(3, 'Angel', 'angelinaaa20@gmail.com', '12345678910', 'KCU BPJS Dr. Ir. H. Soekarno', '2022-06-25', 'Tes', 'In Progress', '1', '2022-06-02 04:05:53', '2022-06-02 04:05:53'),
(5, 'Dazai', 'dazaisan@gmail.com', '2937120971', 'KCU BPJS Dr. Ir. H. Soekarno', '2022-06-12', 'Hello', 'In Progress', '1', '2022-06-02 04:27:40', '2022-06-02 04:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `kcs`
--

CREATE TABLE `kcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kcs`
--

INSERT INTO `kcs` (`id`, `name`, `phone`, `region`, `address`, `image`, `created_at`, `updated_at`) VALUES
(4, 'KCU BPJS Dharma Husada', '0315947747', 'Surabaya Timur', 'Jl Raya Dharma Husada Indah No. 2, Mojo, Gubeng', '1654153196.jpg', '2022-06-01 23:59:56', '2022-06-01 23:59:56'),
(5, 'KCU BPJS Kantor Kedeputian', '0318432541', 'Surabaya Timur', 'Jl Raya Jemursari No. 234, Prapen, Tenggilis Mejoyo', '1654153259.jpg', '2022-06-02 00:00:59', '2022-06-02 00:00:59'),
(6, 'KCU BPJS Dr. Ir. H. Soekarno', '0315957487', 'Surabaya Timur', 'Jl Dr. Ir. H. Soekarno Blok B No. 6, Klampis Ngasem', '1654153518.jpg', '2022-06-02 00:05:18', '2022-06-02 00:05:18');

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
(1, '2022_10_12_000000_create_users_table', 1),
(2, '2022_10_12_100000_create_password_resets_table', 1),
(3, '2022_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2022_10_19_000000_create_failed_jobs_table', 1),
(5, '2022_10_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_10_15_011443_create_sessions_table', 1),
(7, '2022_10_15_021048_create_k_c_s_table', 2),
(8, '2022_10_15_044724_create_kcs_table', 3),
(9, '2022_10_16_073556_create_appointments_table', 4),
(10, '2022_10_16_082738_create_appointments_table', 5);

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
('a6HbYKqTTsu0jutxpnVCEG3mlijy1WcW3MfwBiuy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVU9tYWYyS0l4czZNako3T2ZwNGNBN2tlbHVlQ3ZBWHA4S0taNEJlcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1667814091),
('tiyyRBzacSXLVcA5dacHmAi1EJVIs1Uza04KVX7n', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXFLZ3FJa3Mxb2lwNjNuOWdFZk1KNGVUQXJhOXRwNXVYczRhRmhBNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teWFwcG9pbnRtZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1667818895),
('YNMWdIL2X1MImdMDFQc8G6L4hRvdcjVNKiwTupLc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTJYbE5ieVk0dGZ4d041OFZWQUxianpNcDBxODVlS1V5Nm52aHVFTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1667832983);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Lina', 'anggelina.20034@mhs.unesa.ac.id', '08815075943', 'Ketandan Baru 2 No 18 Surabaya', '0', NULL, '$2y$10$DHTQNiTp9Rr.Rk.jpl1AeefUT.wAwDzRqEEYkC6zl07t2XkZnP1sS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 19:33:26', '2022-05-31 19:33:26'),
(2, 'admin', 'angeline.guynemer21@gmail.com', '12345', 'Bumi', '1', NULL, '$2y$10$kdAVTIBTd7q3LjQlPiZbVeJreUrvLZ9zcbRRx7rZSiKeA1dzRASxC', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 19:38:10', '2022-05-31 19:38:10'),
(5, 'Kobayashi', 'kobayashii2107@gmail.com', '081010101', 'Ketandan Baru 2', '0', NULL, '$2y$10$kxrN3qKEofG1oeQFOEKHd.5NlCnT88F1mdOXcs4o26I.mYAGGOmJO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 21:02:52', '2022-06-02 21:02:52'),
(6, 'ani', 'rizkaseptiani799@gmail.com', '081310892885', 'rungkut kidul', '0', NULL, '$2y$10$CUGVMBnYiyTrjTXmSN0CEu6ERFGYmrmTw/gdfKgtL8iF7b25kha1K', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 04:41:59', '2022-11-02 04:41:59'),
(7, 'admin2', 'admin2@gmail.com', '0899228822', 'rungkut kidul', '1', NULL, '$2y$10$2gai958Z1wJ.N7LkRA7wSeWQVIPIRmpMIAfnWNCA8MTPDA7z5.9Tq', NULL, NULL, NULL, 'aoeHRmwFF1xSjgtDY0qD9yVgaIxtR6spgPOZCD0fQ6U3Oyzthl1g8orGnzuA', NULL, NULL, '2022-11-02 04:46:05', '2022-11-02 04:46:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kcs`
--
ALTER TABLE `kcs`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kcs`
--
ALTER TABLE `kcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
