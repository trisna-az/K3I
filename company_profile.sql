-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 08:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjudul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `judul`, `subjudul`, `deskripsi_1`, `deskripsi_2`, `kelebihan_1`, `kelebihan_2`, `kelebihan_3`, `kelebihan_4`, `created_at`, `updated_at`) VALUES
(1, 'Lorem, ipsum dolor sit amet', 'des Lorem, ipsum dolor sit amet consectetur adipisicing elit. Explicabo porro libero doloribus cum voluptatibus accusantium magnam nesciunt corporis', 'des Lorem, ipsum dolor sit amet consectetur adipisicing elit. Culpa provident, quibusdam eum vero ea', 'des Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque, quia excepturi odio architecto,', 'des Lorem ipsum dolor sit amet consectetur', 'des Lorem ipsum dolor sit amet consectetur', 'des Lorem ipsum dolor sit amet consectetur', 'des Lorem ipsum dolor sit amet consectetur', '2022-07-14 03:36:22', '2022-07-25 03:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Client 1', 'ini adalah portofolio', 'b1.svg', '2022-07-14 09:25:48', '2022-07-14 09:25:48'),
(4, 'Client 2', 'ini adalah portofolio', 'b7.svg', '2022-07-14 09:26:03', '2022-07-25 03:01:57'),
(5, 'Client 3', 'ini adalah portofolio', 'b3.svg', '2022-07-14 09:26:16', '2022-07-14 09:26:16'),
(6, 'Client 4', 'ini adalah portofolio', 'b4.svg', '2022-07-14 09:26:32', '2022-07-14 09:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps_embed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `description`, `logo`, `alamat`, `email`, `telepon`, `maps_embed`, `created_at`, `updated_at`) VALUES
(1, 'Daya Amani', 'ini adalah deskrpsi kontak daya amani', 'logo.png', 'Jl. Antapani lama', 'daya-amani@gmail.com', '08232333231', '!1m18!1m12!1m3!1d126741.32109537374!2d107.6232192!3d-6.930432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e64c5e8866e5%3A0x37be7ac9d575f7ed!2sGedung%20Sate!5e0!3m2!1sen!2sid!4v1657262448287!5m2!1sen!2sid', '2022-07-14 03:24:23', '2022-07-14 20:37:36');

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
(4, '2022_07_12_083201_create_sliders_table', 2),
(5, '2022_07_13_082027_create_services_table', 3),
(6, '2022_07_13_090929_create_testimonials_table', 4),
(7, '2022_07_13_093945_create_portfolio_table', 5),
(8, '2022_07_13_100406_create_portfolios_table', 6),
(9, '2022_07_13_101235_create_clients_table', 7),
(10, '2022_07_13_102907_create_teams_table', 8),
(14, '2022_07_13_113216_create_contact_table', 9),
(15, '2022_07_14_101112_create_about_table', 10);

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
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'p1', 'ini adalah portofolio', 'pexels-pixabay-270360.jpg', '2022-07-14 09:21:37', '2022-07-25 02:55:56'),
(3, 'p2', 'ini adalah portofolio', 'pexels-tyler-lastovich-699122.jpg', '2022-07-14 09:21:52', '2022-07-25 02:56:49'),
(4, 'p3', 'ini adalah portofolio', 'pexels-christina-morillo-1181673.jpg', '2022-07-14 09:22:09', '2022-07-25 02:57:02'),
(5, 'p4', 'ini adalah portofolio', 'pexels-sergei-starostin-6466141.jpg', '2022-07-14 09:22:26', '2022-07-25 02:57:15'),
(6, 'p5', 'ini adalah portofolio', 'p5.jpg', '2022-07-14 09:22:51', '2022-07-14 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Service 1', 'Ini adalah serviceke 1', 'open-book.png', '2022-07-14 05:31:34', '2022-07-14 05:31:34'),
(4, 'Service 2', 'Ini adalah service 2', 'cms.png', '2022-07-14 05:34:32', '2022-07-14 05:34:32'),
(5, 'Service 3', 'Ini adalah service 3', 'processor.png', '2022-07-14 05:34:47', '2022-07-14 05:34:47'),
(6, 'Service 4', 'Ini adalah service 4', 'consultant.png', '2022-07-14 05:35:03', '2022-07-14 05:35:03'),
(7, 'Service 5', 'Ini adalah service 5', 'web-maintenance.png', '2022-07-14 05:35:20', '2022-07-14 05:35:20'),
(8, 'Service 6', 'Ini adalah service 6', 'browser.png', '2022-07-14 05:35:36', '2022-07-14 05:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(9, 'KOPERASI KONSUMEN KARYA KELUARGA INDONESIA', 'Koperasi adalah sebuah organisasi ekonomi yang dimiliki dan dioperasikan oleh orang-seorang demi kepentingan bersama. Koperasi melandaskan kegiatan berdasarkan prinsip gerakan ekonomi rakyat yang berdasarkan asas kekeluargaan.', 'money-gb0c4b8fd1_1920.jpg', '2023-02-02 20:37:11', '2023-02-02 21:38:19'),
(10, 'PERTANIAN', 'Sebagai negara kepulauan dan memiliki wilayah yang luas. Dari keindahan alam untuk wisata hingga kekayaan alam yang bisa diproduksi menjadi sumber energi tersendiri, salah satunya berasal dari sektor pertanian.', 'agriculture-g6b5e27a80_1920.jpg', '2023-02-02 20:41:31', '2023-02-02 21:40:36'),
(11, 'PASAR', 'Institusi, prosedur, hubungan sosial dan infrastruktur tempat usaha menjual barang, jasa, dan tenaga kerja untuk orang-orang dengan imbalan uang.', 'the-market-g57f691489_1920.jpg', '2023-02-02 21:34:16', '2023-02-02 21:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Team 1', 'ini adalah portofolio', 'avatar-g064676957_1280.png', '2022-07-14 09:27:17', '2022-07-27 00:19:28'),
(4, 'Team 2', 'ini adalah portofolio', 'user1.png', '2022-07-14 09:27:32', '2022-07-27 00:19:40'),
(5, 'Team 3', 'ini adalah portofolio', 'user2.png', '2022-07-14 09:27:50', '2022-07-27 00:19:51'),
(6, 'Team 4', 'ini adalah portofolio', 'user3.png', '2022-07-14 09:28:10', '2022-07-27 00:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Testimoni 1', 'ini adalah testimonial ke 1', 'avatar-g064676957_1280.png', '2022-07-14 09:15:14', '2022-07-27 00:22:25'),
(3, 'Testimoni 2', 'ini adalah testimonial 2', 'user1.png', '2022-07-14 09:15:56', '2022-07-27 00:22:36'),
(4, 'Testimoni 3', 'ini adalah testimonial 3', 'user2.png', '2022-07-14 09:16:15', '2022-07-27 00:22:47'),
(5, 'Testimoni 4', 'ini adalah testimoni 4', 'user3.png', '2022-07-14 09:16:36', '2022-07-27 00:22:57');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'trisna', 'trisna@gmail.com', NULL, '$2y$10$4.s/73nkKsASqHRdKXWOf.wfJkGoAsjIlFWLOkyqluvQWYQ3wJuKi', NULL, '2022-07-06 00:08:51', '2022-07-06 00:08:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
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
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
