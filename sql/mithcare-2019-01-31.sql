-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 10:12 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mithcare`
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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2018_12_26_053230_create_patients_table', 2),
(10, '2018_12_26_101404_create_treatments_table', 3);

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizen_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drug_allergy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `patient_name`, `gender`, `blood_type`, `citizen_id`, `date_of_birth`, `address`, `phone`, `medical_condition`, `drug_allergy`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Madison Bogisich', 'olga64@example.net', 'O', '9288024993910', '2006-04-23', '777 Gulgowski ShoreEast Moniqueshire, WY 68587', '844.793.6732', 'Eos corporis sequi non nesciunt tempora maiores. Voluptatibus modi quam dolorem ut eum. Cum consequatur rerum earum nemo distinctio id. Asperiores odio et eaque ut facilis.', 'Sed voluptatum eveniet ut nam repudiandae. Nihil itaque labore dolorum assumenda ut. Architecto iusto quia molestiae quisquam velit est nihil.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(2, 'Loy Greenholt', 'caleb.green@example.org', 'B', '8265587348415', '1984-05-09', '17667 Elnora MewsWest Cathryn, MT 08675-1054', '(888) 727-4100', 'Nulla expedita eligendi qui. Sint neque possimus qui rerum et. Nulla quisquam ut dolorum repellat sunt saepe rem temporibus. Omnis minus est voluptatum animi et odit quo.', 'Dolore autem dolore recusandae voluptatem qui aut. Quo consequatur quis at pariatur officiis. Labore maxime expedita asperiores.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(3, 'Miss Ayana Howe', 'fahey.rickey@example.net', 'B', '9928423644926', '2009-07-13', '237 Beahan Square Apt. 124Runolfssonbury, WA 95480-5742', '(877) 617-1310', 'Reprehenderit doloribus sunt voluptas culpa ea impedit eum eos. Et animi exercitationem voluptatibus est doloremque quibusdam. Animi et ut maiores.', 'Dolor nihil eos cum voluptas. Eius voluptas ut voluptatem quibusdam. Sed tempore omnis quis quae fugit corrupti et aliquam.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(4, 'Prof. Cedrick Larkin V', 'shagenes@example.org', 'A', '0135552663304', '2003-02-23', '524 Taya Terrace Suite 120Melvinaview, VT 17975-3774', '844-430-2110', 'Suscipit vel quasi veniam suscipit qui quo. Libero voluptates cupiditate aspernatur. Adipisci dolorem enim et. Maiores iusto aspernatur qui sapiente et.', 'Cum nesciunt quas accusantium ipsa. Tenetur ex doloribus quia eos dolores eos.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(5, 'Rickie Senger II', 'pdickinson@example.com', 'A', '6144565196555', '1971-06-12', '769 Deckow Views Suite 162North Elianetown, PA 40512', '(877) 306-3750', 'Ipsum ipsam perspiciatis consequuntur dolores nihil iste. Eos incidunt nesciunt nihil. Voluptate sapiente incidunt iste nam. Perferendis impedit officiis autem suscipit maxime quo ut.', 'Impedit accusantium in iusto ducimus alias molestias. Quo modi asperiores ut consectetur. Culpa et perferendis ipsa sunt quis id.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(6, 'Reyes Crona MD', 'witting.joyce@example.net', 'O', '0258970237539', '1987-02-28', '36094 Genoveva Village Suite 014East Vedaton, IN 57723-4113', '888-564-2437', 'Quibusdam odio sunt omnis voluptatem est odit. Maiores qui sunt voluptatem sit ea eaque. Aut quia fugiat laborum est doloribus. Sit ut laborum dignissimos laborum saepe odit deserunt.', 'Corrupti officiis accusamus eveniet ut odio. Sit aut ducimus sit dolores rerum et quo. Delectus quasi itaque dolores.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(7, 'Dr. Alan Daugherty DDS', 'xokon@example.net', 'A', '5054081476333', '1989-04-07', '719 Lubowitz Mountain Suite 605New Clint, CT 17312', '(844) 242-3729', 'Enim quisquam cupiditate enim iste. Et occaecati nihil in ea temporibus suscipit quis dolore. Qui illo quidem magni est ea ut nisi.', 'Vitae sit sed dolores eius sapiente omnis. Deleniti officiis dolores atque unde quis. Quia earum eum nam ut aperiam debitis.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(8, 'Constance Crona V', 'rowe.jaime@example.com', 'A', '6824130583938', '1973-03-16', '84241 Ivory RapidsLake Houstonchester, WI 30498', '1-800-407-6623', 'Porro qui animi ut deserunt qui cupiditate. Quod voluptatem sit aut minima repellat officiis voluptatem. Sit cumque inventore ut alias quia.', 'Sed ab facilis expedita et. Fugit nesciunt praesentium debitis illum. Iure explicabo consequatur officia illo quo iste quasi.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(9, 'Dora Kuvalis V', 'turner.hazle@example.com', 'B', '0817741637050', '2011-01-04', '2327 Jenkins Fall Suite 382North Nathanael, MT 80305-6575', '877-766-2967', 'Aspernatur qui hic sed aut voluptate non explicabo. Et et similique omnis ipsam.', 'Facere aut dolores est. Et et sint accusantium sed et. Laborum ipsam facilis esse voluptas quam. Et ullam repellat voluptatibus inventore.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10'),
(10, 'Carmela McCullough', 'annetta.kunde@example.net', 'O', '9742104582639', '1973-06-23', '55824 Wilfrid LandingMarvinstad, ME 20434', '(855) 643-7620', 'Sed harum sed et perspiciatis fugit. Quia omnis eligendi quidem at ut quia necessitatibus. Eius est autem quia quia.', 'Voluptas quam aut in tenetur pariatur deserunt et. Dicta perferendis est voluptatem tempora et fuga. Ad laborum quos mollitia nemo et quos.', 'http://lorempixel.com/300/300/people/', '2018-12-26 02:17:10', '2018-12-26 02:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `treatment_id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnose` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`treatment_id`, `patient_id`, `admin_id`, `problem`, `diagnose`, `solution`, `prescription`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Voluptatem soluta dolorum numquam distinctio quibusdam nisi aut. Tenetur maiores aliquam aliquid fugit velit quia. Unde nobis dicta error rerum ducimus.', 'Aperiam ipsum magni sequi quo non debitis commodi. Vel ut temporibus culpa et. Ullam quis quisquam et maxime.', 'Blanditiis omnis dicta dolores dolorum. Fuga aut doloribus quas ipsam facilis veniam. Quo consequatur omnis repellendus sed nemo. Provident cumque sunt aut architecto optio enim ad eos.', 'Saepe quasi tenetur quisquam ut in saepe et. Facilis aut repellat quia sit. Id repudiandae maxime soluta necessitatibus in eaque aut. Dolore odio debitis consequuntur repellendus ipsum.', '2018-12-26 03:28:29', '2018-12-26 03:28:29'),
(2, 1, 1, 'Itaque omnis ratione molestiae delectus quos esse. Omnis nihil voluptas aperiam. Architecto sunt excepturi aut nihil. Necessitatibus numquam perspiciatis et veniam nesciunt porro ullam.', 'Porro vel tenetur odit nesciunt culpa in possimus. Ut ipsum tempora ipsum dolor in. Quasi sint possimus ut qui facere ut.', 'Soluta quos ex ab ex et nulla consequatur. Impedit molestias eos tenetur natus et mollitia necessitatibus. Qui veritatis nobis neque dolore.', 'Autem nihil nostrum maxime inventore dignissimos id magni. Voluptatum ut et minima. Et quidem error est dolore. Laboriosam ut aut qui eaque. Adipisci illum beatae ut incidunt aut.', '2018-12-26 03:28:29', '2018-12-26 03:28:29'),
(3, 1, 1, 'Provident dolorum maiores dolor. Ab rerum eos illo laborum. Voluptatibus qui optio reprehenderit. Et quis eius rerum modi quasi reiciendis.', 'Quae deserunt qui assumenda necessitatibus maiores atque. Autem debitis qui et aut consequatur.', 'Qui atque deserunt aut fugit atque sapiente consequuntur. Tempore veritatis quod doloribus cum. Similique quaerat ab totam veritatis praesentium reprehenderit. Perspiciatis illum dicta qui autem.', 'Quas eos culpa ut tempore placeat quod facere recusandae. Eos maxime culpa unde.', '2018-12-26 03:28:29', '2018-12-26 03:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chavalit Koweerawong', 'chavalit.kow@gmail.com', NULL, '$2y$10$tL1yz.SYDBOMc4eu8bMEC.58oi6zAuNkVw4kpsCWkHTK9pGu8Ed8S', 'ZsSCcJCZ6GUNTYQeVU6v1XwTPmhZNqMbtJEDFNnD3Oj5hxkHwLgMzJtF5hl4', '2018-12-25 22:49:12', '2018-12-25 22:49:12');

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
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`treatment_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `treatment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
