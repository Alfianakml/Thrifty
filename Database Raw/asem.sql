-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2023 at 11:50 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asem`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nama_categories` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_categories`) VALUES
(1, 'kaos'),
(2, 'celana'),
(3, 'kemeja'),
(4, 'jaket'),
(5, 'sepatu'),
(6, 'topi'),
(7, 'tas');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_07_092235_create_produks_table', 1),
(6, '2023_01_10_085936_add_user_id_in_produk', 2),
(7, '2023_01_10_091607_add_image_in_users', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namaproduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` enum('seperti baru','baik','kurang') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsiproduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuranproduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `hargaproduk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `user_id`, `img1`, `img2`, `img3`, `namaproduk`, `kondisi`, `deskripsiproduk`, `ukuranproduk`, `status`, `hargaproduk`, `stok`, `created_at`, `updated_at`, `id_categories`) VALUES
(14, 17, 'storage/produk/mZ2E713012023104140.jpg', NULL, NULL, 'Kaos Rebel', 'seperti baru', 'lqwhfklqwfnleqqjhkflqfqwfqfqwfqfqqf', 'l', 'off', '1.000.000', '1', '2023-01-13 03:41:40', '2023-01-13 17:46:58', 1),
(15, 17, 'storage/produk/ObemN13012023104200.jpg', NULL, NULL, 'kaos2', 'seperti baru', 'qwdqd', 'Xl', 'off', '2222', '1', '2023-01-13 03:42:00', '2023-01-13 03:42:00', 1),
(16, 17, 'storage/produk/wYHbI13012023104216.jpg', NULL, NULL, 'kaos3', 'seperti baru', 'qwdqdqdqdqdq', 'Xl', 'off', '34443', '32', '2023-01-13 03:42:16', '2023-01-13 03:42:16', 1),
(17, 17, 'storage/produk/J5nFc13012023104233.png', NULL, NULL, 'kaos4', 'seperti baru', '2222222', 'Xl', 'off', '22222', '3', '2023-01-13 03:42:33', '2023-01-13 03:42:33', 1),
(18, 17, 'storage/produk/BdrTd13012023104247.jpg', NULL, NULL, 'kaos5', 'seperti baru', 'wqdwqdq', 'qwdwqdwq', 'off', '3534353', '2', '2023-01-13 03:42:47', '2023-01-13 03:42:47', 1),
(19, 17, 'storage/produk/pvIUN13012023104313.jpg', NULL, NULL, 'kemeja1', 'seperti baru', 'wqdqdq', 'XL', 'off', '23121313', '2', '2023-01-13 03:43:13', '2023-01-13 03:43:13', 3),
(20, 17, 'storage/produk/qKv5113012023104352.jpg', NULL, NULL, 'kemeja2', 'seperti baru', 'wqdwqdq', 's', 'off', '2131', '2', '2023-01-13 03:43:52', '2023-01-13 03:43:52', 3),
(21, 17, 'storage/produk/WakkM13012023104413.jpg', NULL, NULL, 'kemeja3', 'seperti baru', 'wqdqdq', 'l', 'off', '223333', '22', '2023-01-13 03:44:13', '2023-01-13 03:44:13', 3),
(22, 17, 'storage/produk/g3LTZ13012023104431.jpg', NULL, NULL, 'kemeja4', 'seperti baru', 'wqdqdq', 'w', 'off', '2222', '33', '2023-01-13 03:44:31', '2023-01-13 03:44:31', 3),
(23, 17, 'storage/produk/qb4DV13012023104452.jpg', NULL, NULL, 'kemeja5', 'seperti baru', 'wdqdqdq', 'x', 'off', '231231', '2', '2023-01-13 03:44:52', '2023-01-13 03:44:59', 3),
(24, 17, 'storage/produk/LnwwW13012023104530.jpg', NULL, NULL, 'celana1', 'seperti baru', 'wqewqwqw', 'l', 'off', '24232', '3', '2023-01-13 03:45:30', '2023-01-13 03:45:30', 2),
(27, 17, 'storage/produk/ZjFPD13012023104650.jpg', NULL, NULL, 'celana2', 'seperti baru', 'qwdqwd', 'L', 'off', '233', '2', '2023-01-13 03:46:50', '2023-01-13 03:46:50', 2),
(28, 17, 'storage/produk/qZd7U13012023104709.jpg', NULL, NULL, 'celana3', 'seperti baru', '2131231', 'qwdqwdqd', 'off', '12312', '2', '2023-01-13 03:47:09', '2023-01-13 03:47:09', 2),
(29, 17, 'storage/produk/7vDMd13012023104729.jpg', NULL, NULL, 'celana4', 'seperti baru', '21313', 'qwdq', 'off', '213131', '2', '2023-01-13 03:47:29', '2023-01-13 03:47:29', 2),
(30, 17, 'storage/produk/vEcAC13012023104753.jpg', NULL, NULL, 'celana5', 'seperti baru', 'wdqqq', 'Xl', 'off', '5646', '2', '2023-01-13 03:47:53', '2023-01-13 03:47:53', 2),
(31, 17, 'storage/produk/eGi2K13012023104826.jpg', NULL, NULL, 'jaket1', 'seperti baru', 'wdqwqd', 'dfd', 'off', '76575', '2', '2023-01-13 03:48:26', '2023-01-13 03:48:26', 4),
(32, 17, 'storage/produk/EL39M13012023104842.jpg', NULL, NULL, 'jaket2', 'seperti baru', 'qwdqwdqq', 'w', 'off', '5655', '3', '2023-01-13 03:48:42', '2023-01-13 03:48:42', 4),
(33, 17, 'storage/produk/mRCfJ13012023104905.jpg', NULL, NULL, 'jaket3', 'seperti baru', 'qwdwqdq', 'wqdwq', 'off', '2222222', '23131', '2023-01-13 03:49:05', '2023-01-13 03:49:05', 4),
(34, 17, 'storage/produk/rIpHk13012023104924.jpg', NULL, NULL, 'jaket4', 'seperti baru', 'wqwqd', 'd', 'off', '2231', '2', '2023-01-13 03:49:24', '2023-01-13 03:49:24', 3),
(35, 17, 'storage/produk/OjW5s13012023104942.jpg', NULL, NULL, 'jaket5', 'seperti baru', 'krghir', 'x', 'off', '7546', '23', '2023-01-13 03:49:42', '2023-01-13 03:49:42', 4),
(36, 17, 'storage/produk/5PdDt13012023105008.jpg', NULL, NULL, 'sepatu1', 'seperti baru', 'sepatu', 'x', 'off', '12i39131', '2', '2023-01-13 03:50:08', '2023-01-13 03:50:08', 5),
(37, 17, 'storage/produk/BevjT13012023105041.jpg', NULL, NULL, 'sepatu3', 'seperti baru', '123123', '4564564', 'off', '2141214', '2', '2023-01-13 03:50:41', '2023-01-13 03:50:41', 5),
(38, 17, 'storage/produk/0eWzi13012023105100.jpg', NULL, NULL, 'sepatu2', 'seperti baru', '34u5y5u', '6556757', 'off', '213', '3', '2023-01-13 03:51:00', '2023-01-13 03:51:00', 5),
(39, 17, 'storage/produk/9K7En13012023105118.jpg', NULL, NULL, 'sepatu4', 'seperti baru', 'wqdqwdwqd', '9', 'off', '2131', '45', '2023-01-13 03:51:18', '2023-01-13 03:51:18', 5),
(40, 17, 'storage/produk/XuItv13012023105136.jpg', NULL, NULL, 'sepatu5', 'seperti baru', 'lqwhdjkwqhdwq', '2131231', 'off', '5675474474', '2', '2023-01-13 03:51:36', '2023-01-13 03:51:36', 5),
(41, 17, 'storage/produk/fkyhd13012023105200.jpg', NULL, NULL, 'tas1', 'seperti baru', 'dqwdqq', '2', 'off', '3242', '66', '2023-01-13 03:52:00', '2023-01-13 03:52:00', 7),
(42, 17, 'storage/produk/YeIrH13012023105214.jpg', NULL, NULL, 'ta2', 'seperti baru', '22', '22', 'off', '4353', '2', '2023-01-13 03:52:14', '2023-01-13 03:52:14', 7),
(43, 17, 'storage/produk/WoNUM13012023105228.jpg', NULL, NULL, 'tas3', 'seperti baru', 'wqdqdq', 'qwgq', 'off', '21313', '3', '2023-01-13 03:52:28', '2023-01-13 03:52:28', 7),
(44, 17, 'storage/produk/pdIyN13012023105248.jpg', NULL, NULL, 'tas4', 'seperti baru', '21312', 'xl', 'off', '2112312', '3', '2023-01-13 03:52:48', '2023-01-13 03:52:48', 7),
(45, 17, 'storage/produk/XZ2AI13012023105311.jpg', NULL, NULL, 'tas5', 'seperti baru', 'wqdwqdq', '99', 'off', '657', '3', '2023-01-13 03:53:11', '2023-01-13 03:53:11', 7),
(46, 17, 'storage/produk/1GYps13012023105339.jpg', NULL, NULL, 'topi1', 'seperti baru', 'qwdqdqq', '2', 'off', '23232', '2', '2023-01-13 03:53:39', '2023-01-13 03:53:39', 6),
(47, 17, 'storage/produk/JzOHe13012023105358.jpg', NULL, NULL, 'topi2', 'seperti baru', 'rthrhrrhr', '2', 'off', '4565464', '3', '2023-01-13 03:53:58', '2023-01-13 03:53:58', 6),
(48, 17, 'storage/produk/GmHNQ13012023105417.jpg', NULL, NULL, 'topi3', 'seperti baru', 'wqdqwdqd', '1231', 'off', '232', '3', '2023-01-13 03:54:17', '2023-01-13 03:54:17', 6),
(49, 17, 'storage/produk/93PlG13012023105455.jpg', NULL, NULL, 'topi4', 'seperti baru', 'jqwohdqwhjkdq', '2', 'off', '546464', '3', '2023-01-13 03:54:55', '2023-01-13 03:54:55', 6),
(50, 17, 'storage/produk/kfhuN13012023105515.jpg', NULL, NULL, 'topi5', 'seperti baru', 'wqwqdwqd', '23', 'off', '3242', '2', '2023-01-13 03:55:15', '2023-01-13 03:55:15', 6),
(51, 15, 'storage/produk/4olna14012023025643.jpg', NULL, NULL, 'kaos6', 'seperti baru', 'sedikit robek', 'Xl', 'off', '27676733', '3', '2023-01-13 19:56:43', '2023-01-13 19:56:43', 1),
(52, 18, 'storage/produk/Zg0tH14012023031645.jpg', 'storage/produk/CrSpV14012023031645.jpg', 'storage/produk/gny0v14012023031645.png', 'Kaos Oblong', 'baik', 'Kaos Kondisi Mulus', 'L', 'on', '1.000.000', '1', '2023-01-13 20:16:45', '2023-01-13 20:16:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nama_role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `nama_role`) VALUES
(1, 'Admin'),
(2, 'customer ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `gender`, `phonenumber`, `birthdate`, `email`, `img`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_role`) VALUES
(8, 'admin', 'Male', '2222222', '2023-01-12', 'admin@gmail.com', NULL, NULL, '$2y$10$Z4TE83owdNt63eRohZCFYe.Y7SsF5pnu7yi8B2DesyW9Acq/sQ68e', NULL, '2023-01-12 03:34:51', '2023-01-12 03:34:51', 2),
(9, 'arfan', 'Male', '2131312213', '2023-01-27', 'arfan6@gmail.com', NULL, NULL, '$2y$10$Ehd5XMdyH2AAD2rhKPOzrO.1Y//dk4uIE/bE4yXCFxPFOvk7vlrMe', NULL, '2023-01-12 03:44:35', '2023-01-12 03:44:35', 2),
(10, 'arfan', 'Male', '2131231', '2023-01-19', 'arfan23@gmail.com', NULL, NULL, '$2y$10$Xtd7885zPCbaP3rx4iro7Oy4JU6Ge1t60nOu/keQS0l2expy9I/KS', NULL, '2023-01-12 03:45:08', '2023-01-12 03:45:08', 1),
(11, 'ihsan', 'Male', '21312312213', '2023-01-05', 'ihsan2@gmail.com', 'storage/user/lQ4zZ13012023083557.png', NULL, '$2y$10$tKs8yRUmUR3vMmpbY9k/v.FCe.AqGw2ZnIyFuM9xr2a3Zoatrk50e', NULL, '2023-01-12 21:15:17', '2023-01-13 01:35:58', 2),
(13, 'aji', 'Male', '9888123', '2023-01-10', 'ajie@gmail.com', NULL, NULL, '$2y$10$rdRI7H76v9EbZqxCJ7rbTep9Tfggx2aruDBfDy8PWaluelqF6qtme', NULL, '2023-01-13 01:03:47', '2023-01-13 01:03:47', 2),
(14, 'kolay', 'Male', '098123174', '2023-01-04', 'kolay@gmail.com', NULL, NULL, '$2y$10$UVqD1KWtzdZnJwPVN4Uww.IEL36KiucR0U96.K8UfHDobeLrVDdKu', NULL, '2023-01-13 01:04:24', '2023-01-13 01:04:24', 2),
(15, 'kurnia', 'Male', '12345678', '2023-01-09', 'kurnia@gmail.com', 'storage/user/yZQ2F14012023023627.jpg', NULL, '$2y$10$uDVh23mo.bbXqzhhbN/f4.hfXp67CpwytrNmpoTy7U9475qu4lsye', NULL, '2023-01-13 03:10:49', '2023-01-13 19:36:27', 2),
(16, 'adminblack', 'Female', '1231231', '2023-01-10', 'adminblack@gmail.com', 'storage/user/4Exz713012023102405.jpg', NULL, '$2y$10$/Cv3KFRn1Rul.Fyx00JrlOo1qOIzazUyefdkqorC2AgMynDETjxca', NULL, '2023-01-13 03:20:51', '2023-01-13 03:24:05', 1),
(17, 'mieayam', 'Male', '32424', '2023-01-18', 'mieayam@gmail.com', NULL, NULL, '$2y$10$dKeH7vLtB6V2t9r1L7LE4ujkRgkWdUr0sXl1cWUghjoM85q2MzKdG', NULL, '2023-01-13 03:24:56', '2023-01-13 03:24:56', 2),
(18, 'ihsan', 'Male', '088912346712', '2023-01-01', 'ihsan@gmail.com', NULL, NULL, '$2y$10$kArQl8umcuf4U5uzoAzJUuz/urWwULqENTucDk587jetg55brMnWy', NULL, '2023-01-13 20:14:32', '2023-01-13 20:14:32', 2),
(19, 'akmal', 'Male', '11', '2023-03-27', 'alfian@gmail.com', NULL, NULL, '$2y$10$E.V6tIkXnGTiJTWcQMA0sucaHyXN1j.nw4EwCmn6h/7aJlXNwCg1W', NULL, '2023-04-18 04:41:09', '2023-04-18 04:41:09', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produks_user_id_foreign` (`user_id`),
  ADD KEY `categories` (`id_categories`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `categories` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `produks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `id_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
