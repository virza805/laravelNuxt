-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 10:12 AM
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
-- Database: `redit`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('virza805@gmail.com', '$2y$10$Z5vshKrl/zxPtqbVHdJsd.htmo1oFRfQXYhZe6lhbJwfR.I4VgwB6', '2022-03-02 23:50:16');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 3, 'access-token', '56ff6cf8e9fc428a40d276ba1113ec44e209c3fbcbbfedc736504f2516e6bb2a', '[\"*\"]', '2022-03-01 00:24:23', '2022-03-01 00:24:02', '2022-03-01 00:24:23'),
(4, 'App\\Models\\User', 2, 'access-token', '4b39bbf583c41ec0342ccc8aa19a64ee6c9875dbeb0c7d2cf156606910171cff', '[\"*\"]', NULL, '2022-03-01 00:25:27', '2022-03-01 00:25:27'),
(5, 'App\\Models\\User', 3, 'access-token', '3e75205e1c4e8586ef2106b3205dce1dc0586b086484636cdc80f16b672acfba', '[\"*\"]', '2022-03-03 04:18:54', '2022-03-01 00:25:44', '2022-03-03 04:18:54'),
(6, 'App\\Models\\User', 3, 'access-token', '0149a64500abed8d73f3ee2e87e027237abf2ca91046fa1186066fc8758df1d4', '[\"*\"]', '2022-03-02 05:05:25', '2022-03-02 04:31:04', '2022-03-02 05:05:25'),
(7, 'App\\Models\\User', 3, 'access-token', '13dd06c8d18659084425edefd47033b48fc393ab63a83557f32ffe7abf9fd82d', '[\"*\"]', '2022-03-02 05:06:20', '2022-03-02 05:05:44', '2022-03-02 05:06:20'),
(8, 'App\\Models\\User', 10, 'access-token', 'bb4fc96b641bbb05da82811729988eab3659291558010f0359d6c973651f0efa', '[\"*\"]', NULL, '2022-03-03 00:49:39', '2022-03-03 00:49:39'),
(9, 'App\\Models\\User', 10, 'access-token', 'ede8b8ca702f3d7ecd9209daa5a1a0d247993efa7d4e6e872c1e24dc09f6c8d7', '[\"*\"]', '2022-03-03 03:56:44', '2022-03-03 01:35:57', '2022-03-03 03:56:44'),
(10, 'App\\Models\\User', 14, 'access-token', '15e47294aa848b704bd673e17a31b027ac5e3107e8c039f65ce92d2f0bb0f9e1', '[\"*\"]', '2022-03-03 03:58:56', '2022-03-03 03:58:16', '2022-03-03 03:58:56'),
(11, 'App\\Models\\User', 15, 'access-token', '0a742e174fef334594b9bd0c3efb10f0a50fcb7e495a9e9ed3987cbcdb1560c0', '[\"*\"]', '2022-03-06 20:44:22', '2022-03-03 04:00:12', '2022-03-06 20:44:22'),
(12, 'App\\Models\\User', 15, 'access-token', '7d7bc6accee13d0cde3d2d82b78dca5bad6b1d41e319e9ce52dca9a5150a70ac', '[\"*\"]', NULL, '2022-03-04 22:28:20', '2022-03-04 22:28:20'),
(18, 'App\\Models\\User', 19, 'access-token', '6b6b9a15fc49dd1dd76130fc5a9b79eaa0c31e06ca0f461d695d96c6c4aca707', '[\"*\"]', '2022-03-04 23:55:30', '2022-03-04 23:55:26', '2022-03-04 23:55:30'),
(19, 'App\\Models\\User', 20, 'access-token', 'a52491be42557a0d9698590b0baae6763cc113f00aff9d9289f207980c2d98a7', '[\"*\"]', '2022-03-06 20:37:43', '2022-03-06 20:23:55', '2022-03-06 20:37:43'),
(22, 'App\\Models\\User', 19, 'access-token', '948ad5a5fe8baf22357784aab8a4e9a9fa1d12ceaecab849459e1b45b0990fc4', '[\"*\"]', '2022-03-07 03:09:13', '2022-03-07 03:00:42', '2022-03-07 03:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Al-Amin', 'tanvir@gmail.com', NULL, '$2y$10$sniqY9.PPyeHNIp4D0NgF.l2BabWbTTbCmiai.CcpgJ/z2tYvAAme', NULL, '2022-02-28 21:01:51', '2022-03-03 00:56:09'),
(2, 'tanvirmd', 'al-amin@gmail.com', NULL, '$2y$10$qB4pvqrgYqDNrs8bns58AeqFfjprofxUp.7ai8pGaqXpJYiOHYXpq', NULL, '2022-02-28 21:27:16', '2022-02-28 21:27:16'),
(3, 'virza8054', 'virza5051@gmail.com', '2022-03-03 04:18:35', '$2y$10$co6OWcEzoOnPav9YVj6l0eYTQ0CR9JPVTbiQm6F4iJr0QlEBgIgOS', NULL, '2022-02-28 21:27:52', '2022-03-03 04:18:35'),
(4, 'virza505', 'virza505@gmail.com', NULL, '$2y$10$gW0S3auNIo0VK5jyM.05dewioDsGNuHehVO9xKsP8gxF9dvJl4tuu', NULL, '2022-02-28 22:51:19', '2022-02-28 22:51:19'),
(6, 'virzaa505', 'virza4505@gmail.com', NULL, '$2y$10$22EuoGle.eaES4ATOJu4h.HssNT17V8eFx2oH8ShIW8FHZKstdLPO', NULL, '2022-03-01 00:50:21', '2022-03-01 00:50:21'),
(7, 'Vdirzaa505', 'virzaaf4505@gmail.com', NULL, '$2y$10$b5/LOP23yqizX33RSxqu5.E5MKsPzlQJD2FJmEkKXC3LcxaUJaKx2', NULL, '2022-03-01 00:51:23', '2022-03-01 00:51:23'),
(9, 'VDDDsdds', 'sdvirzaaf4505@gmail.com', NULL, '$2y$10$TeUfsDW3L871BuqQpXpCq.1JWMGp74FSAjKCY5JYBNSY.ooIoiP5m', NULL, '2022-03-01 00:51:43', '2022-03-01 00:51:43'),
(10, 'afrozaakter', 'afroza@gmail.com', NULL, '$2y$10$A456nsqbpV6vfR37aUNADexqbbxA77bkCiaA4maEX8u16PatYYGV2', NULL, '2022-03-01 01:04:35', '2022-03-03 00:49:11'),
(11, 'nitu34', 'nitu@gmail.com', NULL, '$2y$10$DyK8H4qaj6FuHg7Wkgj.Numlo87J/EHwtkGGf/McLQLBAiiIIITcq', NULL, '2022-03-03 02:11:16', '2022-03-03 02:11:16'),
(12, 'nitu134', 'nitu34@gmail.com', '2022-03-03 03:27:06', '$2y$10$Wk9AqijEjD8zLMmFjZcs0ehOWvONvtmQQhA/JcMFju7dpu.K/LvW2', NULL, '2022-03-03 03:10:01', '2022-03-03 03:27:06'),
(13, 'nitu124', 'nitu124@gmail.com', '2022-03-03 03:28:04', '$2y$10$sKO/G9xgo3f7sRL0vZV17uk6iLzrmA9ctXFeZ4.emvt7o7bIN044S', NULL, '2022-03-03 03:27:46', '2022-03-03 03:28:04'),
(14, 'nitu123', 'nitu12@gmail.com', '2022-03-03 03:32:31', '$2y$10$140aLR9l64vUSSZuf6a.veMOHfHuGq9cKlNcJ70o9d1jJFES0xxTq', NULL, '2022-03-03 03:32:11', '2022-03-03 03:32:31'),
(15, 'nitu1234', 'nitu1234@gmail.com', '2022-03-03 04:01:21', '$2y$10$41Q.8PPKVyp5SNNm/0d4AuLNxLf6WgGkNVFdaVgEbGW5BQwC5GgS.', NULL, '2022-03-03 03:59:35', '2022-03-03 04:01:21'),
(16, 'tanvir123', 'tanvir123@gmail.com', NULL, '$2y$10$IEaLSHdxfE.yi7AnKhngp.9F6H9Hz8ujgJ.9w23u3k6nEBZDiBwWi', NULL, '2022-03-04 05:35:20', '2022-03-04 05:35:20'),
(17, 'fariaabbashi', 'fariaabbashi@gmail.com', NULL, '$2y$10$V4u78U8Z3L9ORcEewCXzM.srEaMHG5q.nSOvoNi3Ppa37xh8tiWaq', NULL, '2022-03-04 05:42:08', '2022-03-04 05:42:08'),
(18, 'motiul', 'motiul@gmail.com', NULL, '$2y$10$/j/b2bBKc03m53WGNfq6F.T.u6xX.IQXJTzfFwHAgilQLPuVUJw8C', NULL, '2022-03-04 21:23:12', '2022-03-04 21:23:12'),
(19, 'aaaaaa', 'aaaaaa@gmail.com', '2022-03-07 03:07:19', '$2y$10$UtQYq6OFsr8BWjeIeduMouQs1qKlwmUU5WTQqg1WXCmeHzX6jNp1K', NULL, '2022-03-04 22:51:21', '2022-03-07 03:07:19'),
(20, 'tanzil', 'ta@gmai.com', '2022-03-07 02:32:45', '$2y$10$xfbHdI4HIbw2.OghZ3a/rOKm5rVB47gY3cSL65L/sliW4mH9ZeX/i', NULL, '2022-03-06 20:23:29', '2022-03-07 02:32:45'),
(21, 'onamica', 'onamica@gmai.com', '2022-03-07 02:48:30', '$2y$10$3iC1rW.9zK2Z8p5FxPihRe9cbmPlSOv7UzMmPTwxgh.394dhhelHa', NULL, '2022-03-07 02:47:31', '2022-03-07 02:48:30');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
