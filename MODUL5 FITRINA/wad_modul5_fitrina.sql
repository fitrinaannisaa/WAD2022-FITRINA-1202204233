-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Dec 11, 2022 at 02:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wad_modul5_fitrina`
--

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_12_10_144948_create_showrooms_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `showrooms`
--

CREATE TABLE `showrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` enum('Lunas','Belum-Lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showrooms`
--

INSERT INTO `showrooms` (`id`, `user_id`, `name`, `owner`, `brand`, `purchase_date`, `description`, `image`, `Status`, `created_at`, `updated_at`) VALUES
(1, 0, 'fortuner', 'Nolan', 'toyota', '1997-11-08', 'Nemo quo voluptatem quo at dolores. Consequatur quia sint incidunt. Corporis facilis pariatur ut esse et.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(2, 0, 'fortuner', 'Cummerata', 'toyota', '2003-01-27', 'Tempora magni quod rerum voluptas porro voluptatem laboriosam. Voluptas perferendis quo magni id autem provident et. Doloremque et facere modi qui quia accusantium minima.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(3, 0, 'fortuner', 'Lemke', 'toyota', '1983-01-03', 'Quibusdam corporis aut beatae. Atque voluptates rerum ut voluptas magnam amet reiciendis.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(4, 0, 'fortuner', 'Gleichner', 'toyota', '1977-04-16', 'Quis voluptatum sunt reprehenderit perspiciatis maxime at. Provident labore cum rerum autem ut cum debitis. Recusandae saepe voluptate veritatis quod ipsum exercitationem. Dolores dolor voluptatem nesciunt. Et dignissimos aut accusantium dicta ut ut.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(5, 0, 'fortuner', 'Bechtelar', 'toyota', '1974-12-07', 'Ea eum temporibus vel qui. Optio ipsum qui tempora est. Laboriosam sit beatae aut aut repellat tenetur.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(6, 0, 'fortuner', 'Schiller', 'toyota', '1970-06-19', 'Quasi aut ipsam repellat nulla autem. Accusamus facere eos ea voluptatem eos quis. Excepturi incidunt pariatur praesentium cum repellendus natus. Enim eum hic aut est autem et.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(7, 0, 'fortuner', 'Kiehn', 'toyota', '1991-11-16', 'Praesentium rerum sequi quia qui. In consequatur doloremque ex veniam quia sunt. Aliquid voluptas ut quis ut deserunt quis aspernatur saepe.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(8, 0, 'fortuner', 'Lang', 'toyota', '1984-07-12', 'Quo aliquam dolores ullam eius eaque. Recusandae voluptatem assumenda iusto placeat inventore ipsum.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(9, 0, 'fortuner', 'Osinski', 'toyota', '1988-05-23', 'Accusamus facilis fugiat fugiat est. Harum voluptate in nulla delectus quod. Libero aliquam non ea fugiat.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(10, 0, 'fortuner', 'Walsh', 'toyota', '2010-04-08', 'Fuga nihil sit maxime quos alias. Enim et laudantium ullam tenetur odio qui. Aut hic ullam possimus magnam ut qui sint. Maiores et est placeat qui.', 'car.jpg', 'Lunas', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(11, 0, 'vw', 'ina', 'vw', '1111-11-11', 'ss', 'Screenshot (1).png', 'Lunas', '2022-12-11 05:53:38', '2022-12-11 05:53:38'),
(12, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'ss', 'car1.jpg', 'Lunas', '2022-12-11 06:01:15', '2022-12-11 06:01:15'),
(13, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'ss', 'car1.jpg', 'Lunas', '2022-12-11 06:02:30', '2022-12-11 06:02:30'),
(14, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'hhhhhhhhhhhhhhhhhhh', 'car1.jpg', 'Lunas', '2022-12-11 06:03:55', '2022-12-11 06:03:55'),
(15, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'hhhhhhhhhhhhhhhhhhh', 'car1.jpg', 'Lunas', '2022-12-11 06:04:50', '2022-12-11 06:04:50'),
(16, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'ss', 'car1.jpg', 'Lunas', '2022-12-11 06:14:14', '2022-12-11 06:14:14'),
(17, 0, 'Lambo', 'ina', 'Lambo', '1111-11-11', 'hhhhhhhhhhhhhhhhhhh', 'car1.jpg', 'Lunas', '2022-12-11 06:15:20', '2022-12-11 06:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `no_hp`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Oral Osinski', '+1-341-708-3856', 'kaley.bogan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(2, 'George Durgan', '912-857-0338', 'amarks@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(3, 'Dr. Madisyn Watsica DDS', '+1 (240) 724-6176', 'concepcion.stanton@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(4, 'Kolby Schimmel', '+1.906.822.1020', 'fay.valentin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(5, 'Dr. Arielle Kuhic DDS', '1-954-783-3518', 'dagmar90@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(6, 'Carmen Hamill', '1-231-403-5795', 'hilbert.kemmer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(7, 'Felipa O\'Connell', '781.347.7344', 'sonia.stark@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(8, 'Trever Schultz', '260.909.9812', 'mustafa11@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(9, 'Cleve Hilpert', '+1.430.847.8376', 'lindsey.kessler@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14'),
(10, 'Celestine Yost', '+1.770.775.7896', 'mariane57@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-12-10 08:57:14', '2022-12-10 08:57:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `showrooms`
--
ALTER TABLE `showrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showrooms`
--
ALTER TABLE `showrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
