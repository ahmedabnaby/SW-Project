-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2018 at 03:42 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_01_121615_create_posts_table', 1),
(4, '2018_10_16_094235_add_user_id_to_posts', 2),
(5, '2018_10_26_151033_add_cover_image_to_posts', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Post Three', '<p>l</p>', '2018-12-19 15:06:32', '2018-12-19 15:06:32', 1),
(2, 'd', '<p>55</p>', '2018-12-19 15:07:00', '2018-12-19 15:07:00', 1),
(3, 'test', '<p><em><strong>testt</strong></em></p>', '2018-12-20 08:29:58', '2018-12-20 08:30:39', 4),
(4, 'New', '<p>Post</p>', '2018-12-21 11:41:00', '2018-12-21 11:41:00', 5),
(6, 'wwwwwwww', '<p><strong>wwwwwwwwwwwwwwwwwwwwwwwwwwwww</strong></p>', '2018-12-22 11:48:38', '2018-12-22 11:49:43', 5);

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
(1, 'Ahmed Abdel Naby', 'ahmedabnaby@gmail.com', '$2y$10$WgRLq9WSyF/7gJHwifmXwuEv1VLswhLEHVPP9mG8lBaHhrqH5t4kW', 'uGssWKGBO9CTFSd2Ad7d6qvo4DZIJne9MbjGDIKKqMt22lLtfSY4m5qIZZNH', '2018-10-16 07:37:24', '2018-10-16 07:37:24'),
(2, 'Test', 'test@test.c', '$2y$10$JkGhnrXEx0ELIQRbuqQu9.gaHaQuLK.MSAVBeov9mkbXfABQMBVcW', 'XY4X0jVxxkA2XftrFI3UVOEAkqJA9crAnnkOCTmUVlMVzC9WxRzGdTUDMiI9', '2018-10-26 11:14:15', '2018-10-26 11:14:15'),
(3, 'a', 'a@a.c', '$2y$10$2mKDt4dcFzX7O16ih6fyMewx4GI/hk59tCT8Otbbpt5foSR4kzBrS', 'uKR2Uqv9ci9fravclVoG9cDerzh53xz77020dhNuYvNk0FlUEy6hHa8Ljwe4', '2018-12-19 15:07:16', '2018-12-19 15:07:16'),
(4, 'Mizo', 'ahmedabnaby5@gmail.com', '$2y$10$uaOYYm6D2Hs/jJC22/xP9uuG62W8xRdaZJeMyU75cfJ/7gPlZii12', 'VpCTChuPbDxR2bWPCLZw3H9lJ0pgdUs4rpPliBUJOZKyJevTINvbcIs70Poe', '2018-12-20 08:27:34', '2018-12-20 08:27:34'),
(5, 'Youssry', 'youssry@yahoo.com', '$2y$10$AT1f9ol28Az/l5Enu0rxYu3rjhRcPc23XvXL7wLCbfD0Xqp7XshsO', 'B1fy1WeIKj9Cm025Nvasu3RcKCpkOvGdaHclM3VJRWJdGa5vReEl5P8TsCX8', '2018-12-20 08:40:37', '2018-12-20 08:40:37');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
