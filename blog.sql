-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 06:13 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'amet', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(2, 'ea', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(3, 'amet', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(4, 'voluptatem', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(5, 'et', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(6, 'quidem', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(7, 'animi', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(8, 'dolorem', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(9, 'dolor', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(10, 'a', '2020-04-26 12:17:17', '2020-04-26 12:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_31_161030_create_categories_table', 1),
(5, '2020_03_31_161041_create_posts_table', 1),
(6, '2020_04_08_090218_create_tags_table', 1),
(7, '2020_04_08_105142_create_post_tag_table', 1),
(8, '2020_04_15_101905_create_profiles_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `user_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Atque omnis quae sapiente.', 'Distinctio esse facere aut et. Velit perferendis consequatur voluptatem veniam. Aut error qui ab ea et vero cupiditate.', 'Ad praesentium qui consequatur esse sit. In nulla est quam ullam unde maxime. Nam numquam et dolorem aut fugit est ex. Sit voluptatem ipsa rem. Voluptatem ea consequatur tempora ut pariatur quod et. Enim similique neque nihil qui. Adipisci dignissimos inventore nisi et consequatur nihil porro. Aperiam voluptatibus soluta quia libero et iusto neque. Praesentium error voluptatibus qui eius. Dicta earum aut et praesentium. Veritatis quibusdam rem maxime ipsum dolor exercitationem.', 'images/5c0bd7916ab492b68c68a45e6c019dfe.jpg', 8, 5, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(2, 'Eos doloribus ut.', 'Molestiae ipsam quasi molestias molestiae sed. Dolorem doloribus vitae perferendis ipsam asperiores molestias quia.', 'Qui ratione eos voluptas reiciendis eos. Aliquid ex omnis fugit laboriosam unde aut maiores. Quia cupiditate sunt sit. Voluptas doloribus quis aut qui facere modi autem. Quasi facere animi laborum dolores magnam molestiae. Laborum sit aut provident est suscipit optio quis. Vero voluptate dolores ut et quasi et.', 'images/3850e2355276892ad2521e00cb6936eb.jpg', 7, 4, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(3, 'Autem veritatis tempora magni.', 'Modi magni id sed sit laboriosam aperiam. Et quas ipsum accusamus doloremque dolorum nemo. Soluta facilis doloremque ipsum corrupti amet ut.', 'Quis quis soluta ut aut aperiam dicta accusantium. Ducimus vel eos quam repudiandae facere quod et. Cumque nihil est nostrum aut consequuntur veritatis molestias id. Rem cum et nisi nihil cupiditate harum explicabo. Mollitia fuga nihil ex nostrum a sed et. Sint dignissimos natus et nesciunt aspernatur veritatis. Sed non voluptas ut et. Placeat nam animi voluptate in reiciendis voluptatibus officia.', 'images/a7391078f15e00b5342865a1e7c180a2.jpg', 1, 10, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(4, 'Eos ipsam sed.', 'Neque quidem similique est officiis amet laborum aliquam. Eum quaerat eos facilis sapiente veniam quidem.', 'Omnis porro enim iusto dolores. Quia nam porro odio sit. Similique enim ipsum qui in nesciunt. Voluptatem itaque dolorem autem earum. Ullam accusamus possimus et voluptatum dolore nemo eos. Vitae eligendi necessitatibus minima cupiditate porro. Incidunt quaerat et fuga corrupti ut quia. Pariatur mollitia ut et sed. Veritatis temporibus repellat consequuntur commodi. Quia rerum tempore maxime cupiditate rerum.', 'images/267d8480da33156cd20deb4e43a9a2a3.jpg', 3, 3, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(5, 'Temporibus et quidem.', 'Voluptatibus voluptatum dicta quasi omnis. Pariatur et sunt et libero unde non. Aliquam ipsam ipsa assumenda quam.', 'Placeat ex nesciunt incidunt dolores maiores vitae voluptatum. Fugit doloribus quo officia fugit. Dolores distinctio error non qui veniam et. Facilis doloribus velit aut ab illo. Assumenda blanditiis et voluptas distinctio eum minus. Vitae qui voluptas unde vitae iure nihil tempora. Quia omnis dolor aliquam eius.', 'images/2fd46a57b8b83e42208fc6f71e158dd5.jpg', 3, 1, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(6, 'Qui quas quis vel.', 'Non doloremque quasi similique consequatur. In ea voluptatibus molestias. Tempore iusto qui sunt enim et eaque.', '<div>Unde sit totam qui adipisci soluta. Quisquam debitis aliquid sed laborum laboriosam. Voluptate corporis odit recusandae voluptatem ipsam accusantium. Repudiandae quas expedita dolorem temporibus quis. Ad expedita sit est eum. Voluptatem pariatur non minima vero ut fugiat sed esse. Vel excepturi sit aut eum deserunt. Quo eveniet aut fuga vero voluptas hic aut. Id nam quo qui. Quo voluptates ea atque fugit quibusdam qui.</div>', 'images/e5e95e54992a438baea885ce158ef914.jpg', 2, 8, NULL, '2020-04-26 12:17:31', '2020-04-26 12:28:33'),
(7, 'Et voluptatem quasi.', 'Voluptatum velit qui laboriosam sequi. Dolorem expedita nulla iusto reiciendis illo recusandae quod.', 'Laboriosam sit praesentium nobis et officia praesentium vel. Aliquam omnis quos harum numquam beatae. Doloremque rerum saepe tempora. Distinctio nulla est rerum magnam corporis. Deserunt sit optio incidunt explicabo vel. Commodi debitis et rerum sunt quis non. Dolore dolore non architecto possimus. Tempore enim labore sit provident placeat magni consequatur. Dolorem rerum beatae nostrum vero ut. Rerum quisquam expedita error est.', 'images/8bf44569c0431b076f9222a48e3d2d3a.jpg', 4, 7, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(8, 'Quasi ducimus.', 'Quod ullam id dolores laboriosam. Est cumque molestias eos cupiditate. Corporis omnis cumque est omnis quo. Molestiae in optio sed hic id.', 'Distinctio qui eum animi officiis voluptatibus esse in autem. Dolorem officiis enim aut laborum dolore consequatur in consequatur. Totam velit a architecto ut ipsum cupiditate. Molestiae nobis minus iure tenetur saepe facere nam nemo. Et eum suscipit eveniet quis reiciendis nam quas.', 'images/8bf2319ed1f914f537e9c612f45e946e.jpg', 9, 3, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(9, 'Ea et itaque exercitationem.', 'Quia soluta et exercitationem perferendis dicta ipsum eum. Est quidem voluptatum eius est placeat. Praesentium vero aut rem.', 'Qui dolores commodi exercitationem iusto iure. Aspernatur aliquam distinctio eius amet minus. Qui molestias cumque sint soluta architecto harum accusantium. Consequatur quia amet in enim dolorem. Architecto unde voluptatem ipsa necessitatibus et consectetur ut. Iusto inventore dolor facere saepe velit. At reprehenderit est ut doloribus vero. Non totam fugiat quae. Recusandae repudiandae perspiciatis ut dolore natus vel.', 'images/2f82bf9919c13d7926ad93ba8a717d07.jpg', 3, 2, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(10, 'Expedita veniam accusantium ab.', 'Ea quaerat consectetur est. Excepturi consequatur enim ut doloribus id. Nostrum qui quia adipisci et. Voluptate repellendus voluptatem sunt.', 'Earum tempora eos quis tempora accusamus. Et quibusdam magni corrupti laboriosam quam sit culpa dolorem. Deleniti pariatur ea enim inventore delectus sed ipsum voluptas. Esse officiis dolores aut qui est. Atque ipsam ea laborum. Accusantium praesentium praesentium ea ad facilis. Rerum hic assumenda laboriosam illo doloribus voluptatem qui omnis. Earum est vero maiores voluptatum laboriosam ad tenetur.', 'images/1768860f8af6372d09039e88cad948b7.jpg', 8, 4, NULL, '2020-04-26 12:17:31', '2020-04-26 12:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(2, 2, 7, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(3, 3, 8, '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(4, 4, 9, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(5, 5, 10, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(6, 6, 11, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(7, 7, 12, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(8, 8, 13, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(9, 9, 14, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(10, 10, 15, '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(11, 6, 13, '2020-04-26 12:28:33', '2020-04-26 12:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `about`, `picture`, `facebook`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 2, 'Necessitatibus id et omnis labore porro voluptas qui sit omnis sequi earum rerum provident.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(2, 4, 'Sunt sit quis unde sunt culpa similique ut nesciunt ea nihil molestiae facilis blanditiis.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(3, 8, 'Omnis ducimus unde libero omnis praesentium quo aut magnam ut voluptatem in.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(4, 5, 'At sit ut non necessitatibus corrupti animi unde.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(5, 7, 'Exercitationem doloremque reprehenderit a voluptas exercitationem quis laborum quisquam et ut ipsa reprehenderit.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(6, 9, 'Eius cupiditate odio ut iste eum ad molestiae qui sed in dolores qui eum.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(7, 3, 'Fuga sint blanditiis omnis nihil ut quo aliquid laborum.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(8, 1, 'Sunt qui quae eos porro autem est voluptas quia sint reprehenderit ipsum ut.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(9, 6, 'Quo reprehenderit qui reprehenderit qui dolores ipsa.', 'profilePictures\\defaultPicture.jpg', NULL, NULL, '2020-04-26 12:17:17', '2020-04-26 12:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'impedit', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(2, 'blanditiis', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(3, 'sed', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(4, 'neque', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(5, 'unde', '2020-04-26 12:17:17', '2020-04-26 12:17:17'),
(6, 'aut', '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(7, 'quam', '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(8, 'vero', '2020-04-26 12:17:31', '2020-04-26 12:17:31'),
(9, 'nesciunt', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(10, 'ullam', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(11, 'impedit', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(12, 'doloribus', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(13, 'iste', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(14, 'ducimus', '2020-04-26 12:17:32', '2020-04-26 12:17:32'),
(15, 'et', '2020-04-26 12:17:32', '2020-04-26 12:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('writer','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'writer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samy', 'samy@cms.com', NULL, '$2y$10$bPPibBuS6/e5TZNig4zZFeUy690iQ6.4IOCmVNQV1AX2i..UxNYIi', 'admin', 'vbCNJzCbOu2NUV1k9PUrXWQ18J5jRErgw0TCw79rfvjAPl7TdDf5aoRwOW3E', NULL, NULL),
(2, 'Ahmed', 'ahmed@cms.com', NULL, '$2y$10$wRd5mO2bm6kx/IeEzCxt3Oaca/Tr0H3b7rGwXlYvL7b6XUpNZ3Aze', 'writer', NULL, NULL, NULL),
(3, 'Fabian Feil', 'mcorwin@example.com', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', 'Kx9MJCV3bf', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(4, 'Alexandra Lockman', 'joanie.pagac@example.net', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', 'U4tqlvS9hG', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(5, 'Marshall Schimmel Sr.', 'katlyn.conn@example.com', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', '2wZysHl2gU', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(6, 'Dr. Sean McClure I', 'zella25@example.org', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', 'zH3AqAwueY', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(7, 'Beryl Brakus IV', 'lue53@example.org', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', 'JFIIrPiIXj', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(8, 'Sunny Feeney', 'bgibson@example.org', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', '2m9SGdvmhU', '2020-04-26 12:17:16', '2020-04-26 12:17:16'),
(9, 'Dr. Amelia Hoppe PhD', 'loy82@example.net', '2020-04-26 12:17:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'writer', 'diDjv9SXdU', '2020-04-26 12:17:16', '2020-04-26 12:17:16');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
