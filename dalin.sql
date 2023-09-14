-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 02:43 PM
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
-- Database: `dalin`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `content`, `meta_title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Sports', 'Sports', 'Sports', 'sports', '2022-12-07 17:36:14', '2022-12-07 17:36:14'),
(3, 'Health', 'Healthy Life', 'Health', 'health', '2022-12-07 17:36:56', '2022-12-07 17:36:56'),
(4, 'Inspiration', 'Inspiration for all', 'Inspiration', 'inspiration', '2022-12-09 08:24:57', '2022-12-09 08:24:57'),
(6, 'Economy', 'Economy', 'Economy', 'economy', '2022-12-09 08:36:39', '2022-12-09 08:36:39'),
(7, 'Trending', 'Trending', 'Trending', 'trending', '2022-12-09 08:36:59', '2022-12-09 08:36:59'),
(8, 'Science and Technology', 'Science and Technology', 'Science and Technology', 'science-and-technology', '2022-12-09 08:37:43', '2022-12-09 08:37:43'),
(9, 'Travel', 'Travel', 'Travel', 'travel', '2022-12-09 08:38:27', '2022-12-09 08:38:27'),
(10, 'Worklife', 'Worklife', 'Worklife', 'worklife', '2022-12-09 08:38:49', '2022-12-09 08:38:49'),
(11, 'Entertainment', 'Entertainment', 'Entertainment', 'entertainment', '2022-12-09 08:39:18', '2022-12-09 08:39:18'),
(12, 'Politics', 'Politics', 'Politics', 'politics', '2022-12-09 08:39:53', '2022-12-09 08:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_comment_id`, `user_id`, `guest_user_name`, `guest_user_email`, `commentable_type`, `commentable_id`, `content`, `is_published`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, NULL, 'App\\Models\\Post', 15, 'Some western states, including Montana, Wyoming and South Dakota, are expecting up to 2ft (60cm) of snow.', 1, '2022-12-13 16:27:33', '2022-12-13 16:27:33'),
(2, 1, NULL, 'Tariq', 'tarik@gmail.com', 'App\\Models\\Post', 15, 'Local media has named the state as Qatar, although the Qatari government said any claims of misconduct were \"gravely misinformed\".', 1, '2022-12-13 16:28:14', '2022-12-13 16:28:14'),
(3, 1, NULL, 'Tanji', 'uk3@yahoo.com', 'App\\Models\\Post', 15, 'Prosecutors said they suspected a Gulf state had been influencing economic and political decisions of the parliament for several months, especially by targeting aides.', 1, '2022-12-13 17:40:08', '2022-12-13 17:40:08'),
(4, NULL, 1, NULL, NULL, 'App\\Models\\Post', 21, 'Just like Diego Maradona stamped himself indelibly on Argentina\'s 1986 win in Mexico and Brazil striker Ronaldo wrote a redemption story in Yokohama in their 2002 triumph, this will be known as Messi\'s World Cup if he inspires victory against either France or Morocco in the final.', 1, '2022-12-14 08:31:30', '2022-12-14 08:31:30'),
(5, NULL, 1, NULL, NULL, 'App\\Models\\Post', 20, 'I will explain a step-by-step tutorial check-in blade file if a variable is empty in laravel. This tutorial will give you a simple example of how to check in the blade file if a variable is empty in laravel. I want to show you the laravel check in the blade file if a variable is empty or not example. I explained simply how to check if a variable is empty in laravel blade.', 1, '2022-12-16 07:44:42', '2022-12-16 07:44:42'),
(6, 5, NULL, 'Yasin Ahmed', 'Yasin@gmail.com', 'App\\Models\\Post', 20, 'No huge revelations are expected from the papers, but historians hope to learn more about the alleged assassin.\r\n\r\nKennedy was shot during a visit to Dallas, Texas, on 22 November 1963.', 1, '2022-12-16 07:45:39', '2022-12-16 07:45:39'),
(7, 5, 1, NULL, NULL, 'App\\Models\\Post', 20, '<p>. I want to show you the laravel check in the blade file if a variable is empty or not example. I explained simply how to check if a</p>', 1, '2022-12-16 16:22:37', '2022-12-16 16:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Tanzina Khan', 'tz@begum.com', 'How are you', 'we can keep the actual form file separate in case we want to use it in multiple locations on the website, or just to make maintaining the code easier in the future.we can keep the actual form file separate in case we want to use it in multiple locations on the website, or just to make maintaining the code easier in the future.', '2022-12-15 12:39:43', '2022-12-15 12:39:43'),
(2, 'Shakib Khan', 'shakib@yahoo.com', 'I am shakib', 'shakib is always nice', '2022-12-15 13:44:09', '2022-12-15 13:44:09'),
(3, 'Shakib', 'dgfgfgfg@gmail.com', 'name is khna', 'lorem is nice for', '2022-12-15 13:56:23', '2022-12-15 13:56:23'),
(4, 'Shakib', 'dgfgfgfg@gmail.com', 'name is khna', 'lorem is nice for', '2022-12-15 13:58:43', '2022-12-15 13:58:43'),
(5, 'tanzier', 'tas@gmail.com', 'Contact us', 'lorem is nice to test', '2022-12-15 14:23:33', '2022-12-15 14:23:33'),
(6, 'tamim', 'tam@ga.com', 'tamin is here', 'tamim is a good boy', '2022-12-15 14:35:20', '2022-12-15 14:35:20'),
(7, 'tamim', 'tam@ga.com', 'tamin is here', 'tamim is a good boy', '2022-12-15 14:53:05', '2022-12-15 14:53:05'),
(8, 'tamim', 'tam@ga.com', 'tamin is here', 'tamim is a good boy', '2022-12-15 14:57:45', '2022-12-15 14:57:45');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_30_043914_create_sessions_table', 1),
(7, '2022_11_30_044143_create_permission_tables', 1),
(8, '2022_12_06_210738_create_posts_table', 1),
(9, '2022_12_06_211330_create_tags_table', 1),
(10, '2022_12_06_211436_create_post_tag_table', 1),
(11, '2022_12_06_211832_create_categories_table', 1),
(12, '2022_12_06_211936_create_category_post_table', 1),
(13, '2022_12_06_212134_create_comments_table', 1),
(14, '2022_12_07_094538_create_post_images', 2),
(15, '2022_12_09_041813_add_featured_image_column_to_posts_table', 3),
(16, '2022_12_13_015851_alter_table_comments_change_parent_comment_id', 4),
(17, '2022_12_13_045234_alter_table_comments_change_parent_comment_type', 5),
(18, '2022_12_13_045616_drop_parent_it_from_comments_table', 6),
(19, '2022_12_13_050518_drop_parent_it_from_comments_table2', 7),
(20, '2022_12_13_050654_drop_parent_it_from_comments_table3', 8),
(21, '2022_12_13_050820_drop_parent_it_from_comments_table34', 9),
(22, '2022_12_13_051025_drop_parent_it_from_comments_table34', 10),
(29, '2022_12_13_054535_create_comments_table', 11),
(30, '2022_12_13_103347_add_category_id_to_posts', 12),
(31, '2022_12_14_053910_add_view_count_to_posts_table', 13),
(32, '2022_12_15_072749_create_contacts_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Edit Post', 'web', '2022-12-07 17:35:24', '2022-12-07 17:35:24'),
(2, 'Add Post', 'web', '2022-12-07 17:35:31', '2022-12-07 17:35:31'),
(3, 'Update Post', 'web', '2022-12-07 17:35:38', '2022-12-07 17:35:38');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `meta_title`, `slug`, `content`, `is_published`, `category_id`, `reads`, `featured_image`, `created_at`, `updated_at`) VALUES
(15, 1, 'Murdered Canada billionaires\' son tops cash reward', 'Murdered Canada billionaires\' son tops cash reward', 'murdered-canada-billionaires-son-tops-cash-reward', '<p>Barry Sherman was one of Canada\'s richest men and the founder and chairman of the generic drug company Apotex. He and his wife, Honey, were well-known philanthropists who gave millions to hospitals, universities and Jewish organisations.</p><p>The couple\'s net worth was estimated to be between $5bn and $10bn.</p><p>Police have been unable to name a suspect yet, though they say the investigation is ongoing into the high-profile murders of 15 December 2017.</p><p>In January 2018 - about six weeks after the Shermans had been found - police said the pair were victims of a double homicide, and that both had been targeted.</p><figure class=\"image\"><img src=\"http://127.0.0.1:8000/media/Fundamental_nature_1670930119.jpg\"></figure>', 1, 4, 9, '20221216110108.jpg', '2022-12-13 16:15:31', '2022-12-16 16:16:00'),
(16, 1, 'Spain’s most unexplored city is a tourist-free, hidden gem to visit in 2023', 'Spain’s most unexplored city is a tourist-free, hidden gem to visit in 2023', 'spains-most-unexplored-city-is-a-tourist-free-hidden-gem-to-visit-in-2023', '<p>Despite its enviable location in the Bay of Biscay, thriving culinary scene, and some of Spain’s best <a href=\"https://www.euronews.com/travel/tag/surfing\"><strong>surfing</strong></a> beaches, Santander still goes under the tourist radar.</p><p>The capital of the autonomous Cantabria region, on the north coast of <a href=\"https://www.euronews.com/travel/tag/spain\"><strong>Spain</strong></a>, has a population of 200,000. Although many of its medieval buildings were destroyed in a massive fire in 1941, it still boasts an atmospheric old town.</p><p>A beautiful bay with views of rolling green hills and mountains lies on the opposite side of the shore. Unlike the honeypots of <a href=\"https://www.euronews.com/travel/2022/01/25/everything-happens-around-the-table-why-madrid-is-a-foodie-s-paradise\"><strong>Madrid</strong></a> and <a href=\"https://www.euronews.com/travel/2022/06/27/barcelona-one-way-streets-and-no-more-megaphones-in-crack-down-on-disruptive-tourists\"><strong>Barcelona</strong></a>, the city centre is compact enough to walk around. In the summer months a cooling breeze blows in off the Bahía de Santander. Average winter temperatures hover around a mild 14C.</p><p><img src=\"https://static.euronews.com/articles/stories/06/56/58/22/808x454_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/56/58/22/384x215_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 384w, https://static.euronews.com/articles/stories/06/56/58/22/640x358_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 640w, https://static.euronews.com/articles/stories/06/56/58/22/750x420_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 750w, https://static.euronews.com/articles/stories/06/56/58/22/828x464_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 828w, https://static.euronews.com/articles/stories/06/56/58/22/1080x605_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 1080w, https://static.euronews.com/articles/stories/06/56/58/22/1200x672_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 1200w, https://static.euronews.com/articles/stories/06/56/58/22/1920x1075_cmsv2_82f0f4cd-9b5b-5eea-b509-953476ff461b-6565822.jpg 1920w\" sizes=\"100vw\"><i>The town of Santander, Spain.Canva</i></p><ul><li><a href=\"https://www.euronews.com/travel/2022/12/06/france-bans-short-haul-flights-get-onboard-with-these-spectacular-train-trips\"><strong>France bans short haul flights: Get onboard with these spectacular train trips</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/12/07/ballet-bow-ties-and-fine-wine-what-will-it-be-like-to-travel-on-italys-new-orient-express\"><strong>Ballet, bow ties and fine wine: What will it be like to travel on Italy’s new Orient Express?</strong></a></li></ul><h2>Where to try the best tapas in Santander</h2><p>Santander is famous for its tapas, or pinchos as it’s known locally (sometimes spelled pintxo or pinchu) - meat, fish, cheese and other ingredients spiked onto a piece of crusty bread with a skewer or toothpick.</p><p>You’ll find pincho bars and bodegas dotted all over the city. A good pit stop for lunch is Casa Lita, an unassuming cafe bar overlooking the bay, with indoor booths and an outdoor terrace. It serves a mouthwatering array of bread-based snacks, raciones (sharing plates) and palatable house <a href=\"https://www.euronews.com/travel/tag/wine\"><strong>wines</strong></a> at around €2.50 a glass.</p><p>&nbsp;</p><p>Plaza Cañadio is the place to kick start your evening, bearing in mind that <a href=\"https://www.euronews.com/travel/2022/09/25/beirut-discover-modern-souks-and-pumping-nightlife-in-the-mediterraneans-most-underrated-c\"><strong>nightlife</strong></a> in Spain doesn’t get going till around 9pm. The central public square is flanked by bars and restaurants, including Cañadio, a local pincho institution that gets consistently good reviews in tourist guides.</p><p>However, if you only speak beginners\' <a href=\"https://www.euronews.com/travel/2022/08/05/struggling-to-learn-the-language-the-best-expat-countries-in-europe-for-english-speakers\"><strong>Spanish</strong></a> you might struggle with the monolingual menu here.&nbsp;A better bet for out of towners is La Bodega Riojano, an atmospheric taverna with flag-stone floors, crisp white tablecloths and mahogany wine barrels hung on the walls.</p><p>There’s a comprehensive choice of meat, seafood dishes and Cantabrian <a href=\"https://www.euronews.com/travel/2022/11/06/9-of-the-best-destinations-in-europe-for-cheese-lovers\"><strong>cheeses</strong></a>. Mains start at around €14, wines at €3.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/12/02/tourist-taxes-all-of-the-countries-you-will-have-to-pay-to-enter-in-2022\"><strong>Tourist taxes: All of the countries you will have to pay to enter in 2023</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/12/05/sex-drugs-and-drink-amsterdam-tourism-campaign-wants-to-discourage-nuisance-british-touris\"><strong>Sex, drugs and drink: Amsterdam tourism campaign wants to discourage ‘nuisance’ British tourists</strong></a></li></ul><h2>What are the best museums to visit in Santander, Spain?</h2><p>Opened to great fanfare in 2014, Centro Botin was designed by award-winning Italian architect Renzo Piano and is Santander’s premier arts and cultural hub.</p><p>Overlooking the bay, the high-tech venue hosts year-round exhibitions, screenings and concerts by artists from <a href=\"https://www.euronews.com/travel/2022/11/24/want-to-spend-your-golden-years-in-europe-these-are-the-countries-with-the-best-retirement\"><strong>Spain</strong></a> and around the world. Also on the shoreline, the Museo Marítimo del Cantábrico is a great place to while away a couple of hours.</p><p>&nbsp;</p><p>Charting the region’s seafaring history over four floors, the museum contains intricate models of <a href=\"https://www.euronews.com/travel/2022/10/09/sailing-from-belfast-to-inverness-why-i-chose-11-days-at-sea-over-a-1-hour-flight\"><strong>ships</strong></a> and reconstructions of cabin quarters, as well as an aquarium with stingrays, small sharks and moray eels. The skeleton of a 24-metre-long, 60-tonne fin <a href=\"https://www.euronews.com/travel/2022/08/13/swimming-with-whales-under-the-midnight-sun\"><strong>whale</strong></a>, suspended from the ceiling, is the star attraction.</p><h2>Where to stay in Santander</h2><p>If you want bars, restaurants and shops on your doorstep, choose a <a href=\"https://www.euronews.com/travel/2022/09/13/airbnb-vs-hotel-which-is-cheaper-that-depends-on-group-size-length-of-stay-and-amenities\"><strong>hotel</strong></a> in the middle of town rather than by the El Sardinero beach, a good 30-minute walk eastwards.</p><p>NH Cuidad on Menéndez Pelayo has smart, modern rooms (4th-floor rooms have balconies), with doubles from €51.</p><p>Tucked away down one of Santander’s narrow side streets, the family run Jardín Secreto inhabits a characterful 19th-century townhouse, revamped as a <a href=\"https://www.euronews.com/travel/2022/03/24/flight-free-travel-the-best-english-country-hotels-that-are-just-a-train-ride-away\"><strong>boutique hotel</strong></a>. As its name suggests, it also has a garden. Doubles from €53.</p><blockquote><p><i><strong>For beachside bliss, the Gran Hotel Sardinero overlooks the golden sands of Primera Playa del Sardinero.</strong></i></p></blockquote><p><img src=\"https://static.euronews.com/articles/stories/06/56/58/22/808x454_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg\" alt=\"Cantur\" srcset=\"https://static.euronews.com/articles/stories/06/56/58/22/384x215_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 384w, https://static.euronews.com/articles/stories/06/56/58/22/640x358_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 640w, https://static.euronews.com/articles/stories/06/56/58/22/750x420_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 750w, https://static.euronews.com/articles/stories/06/56/58/22/828x464_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 828w, https://static.euronews.com/articles/stories/06/56/58/22/1080x605_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 1080w, https://static.euronews.com/articles/stories/06/56/58/22/1200x672_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 1200w, https://static.euronews.com/articles/stories/06/56/58/22/1920x1075_cmsv2_230774f6-2fed-5c3d-b96c-1a2e6c23ce14-6565822.jpg 1920w\" sizes=\"100vw\"><i>Bodega del RiojanoCantur</i></p><p>For <a href=\"https://www.euronews.com/travel/tag/beach\"><strong>beachside</strong></a> bliss, the Gran Hotel Sardinero overlooking the golden sands of Primera Playa del Sardinero is a five-minute bus ride away from the centre. The palatial early 1900s exterior gives way to a chic, contemporary interior and neutrally decorated rooms.</p><p>From €60. <a href=\"https://www.euronews.com/travel/2022/11/18/rich-tourists-wanted-whats-behind-the-rush-for-high-spenders-and-will-it-reduce-overtouris\"><strong>Prices</strong></a> for most hotels rise considerably in high season.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/11/17/budget-travellers-should-head-to-this-under-the-radar-spanish-city-for-free-museums-and-ba\"><strong>Budget travellers should head to this under-the-radar Spanish city for free museums and bargain beer</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/03/16/moving-to-spain-could-be-good-for-your-mental-health-new-report-suggests\"><strong>Moving to Spain could be good for your mental health, new report suggests</strong></a></li></ul><p><img src=\"https://static.euronews.com/articles/stories/06/56/58/22/808x454_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg\" alt=\"Cantur\" srcset=\"https://static.euronews.com/articles/stories/06/56/58/22/384x215_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 384w, https://static.euronews.com/articles/stories/06/56/58/22/640x358_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 640w, https://static.euronews.com/articles/stories/06/56/58/22/750x420_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 750w, https://static.euronews.com/articles/stories/06/56/58/22/828x464_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 828w, https://static.euronews.com/articles/stories/06/56/58/22/1080x605_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 1080w, https://static.euronews.com/articles/stories/06/56/58/22/1200x672_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 1200w, https://static.euronews.com/articles/stories/06/56/58/22/1920x1075_cmsv2_a9f6ae7f-29c7-56d9-947d-f82908847489-6565822.jpg 1920w\" sizes=\"100vw\"><i>Sunset views in Santander - Amanecer en la Playa del Sardinero.jpgCantur</i></p><h2>Escape into nature in Santander</h2><p><a href=\"https://www.euronews.com/travel/tag/nature\"><strong>Nature</strong></a> and animal lovers shouldn\'t miss the Parque de la Naturaleza de Cabárceno.</p><p>The only park of its kind in Spain, the government-run 750-hectare nature reserve is 17km south of Santander, located in an old open-air iron mine that’s been repurposed to home 100 <a href=\"https://www.euronews.com/travel/tag/animals\"><strong>animal</strong></a> species.</p><p>You can see everything from rhinos, wallabies and gorillas to the endangered Cantabrian brown <a href=\"https://www.euronews.com/green/2022/03/10/how-are-endangered-bears-escaping-the-russian-invasion-of-ukraine\"><strong>bear</strong></a> - as well as gorges, lakes and rock formations.</p><p><img src=\"https://static.euronews.com/articles/stories/06/56/58/22/808x454_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg\" alt=\"Cantur\" srcset=\"https://static.euronews.com/articles/stories/06/56/58/22/384x215_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 384w, https://static.euronews.com/articles/stories/06/56/58/22/640x358_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 640w, https://static.euronews.com/articles/stories/06/56/58/22/750x420_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 750w, https://static.euronews.com/articles/stories/06/56/58/22/828x464_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 828w, https://static.euronews.com/articles/stories/06/56/58/22/1080x605_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 1080w, https://static.euronews.com/articles/stories/06/56/58/22/1200x672_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 1200w, https://static.euronews.com/articles/stories/06/56/58/22/1920x1075_cmsv2_05a4a9fa-9912-5056-832b-5a85ee9dd93a-6565822.jpg 1920w\" sizes=\"100vw\"><i>Parque de la Naturaleza de CabárcenoCantur</i></p><p>There’s also a 6km-long cable car ride, educational areas, landscaped <a href=\"https://www.euronews.com/travel/2022/09/05/holidaymakers-turned-to-gamping-this-summer-to-beat-down-costs\"><strong>gardens</strong></a> and beautiful, little picnic spots to relax in.</p>', 1, 4, 6, '20221213124501.jpg', '2022-12-13 17:45:01', '2022-12-16 07:39:25'),
(17, 1, 'Cuba now has a 90 day tourist visa, here’s what to see while you’re there', 'Cuba now has a 90 day tourist visa, here’s what to see while you’re there', 'cuba-now-has-a-90-day-tourist-visa-heres-what-to-see-while-youre-there', '<p>Butterflies still clung to my life jacket as our raft upended us into the rushing waters of the Tara River. An unexpected dunking hadn’t been on my Montenegro itinerary, but more on that later.</p><p>I came to this tiny Balkan country in search of adventure. You’ve likely heard of <a href=\"https://www.euronews.com/travel/2020/08/24/would-you-jump-off-montenegro-s-second-tallest-bridge\"><strong>Montenegro</strong></a>’s high end coastal resorts, and fjord-backed Kotor is a stalwart on most Adriatic cruise itineraries. But head inland beyond the coast and you’ll find dramatic mountains, crystal rivers, and some of the last virgin <a href=\"https://www.euronews.com/travel/2022/10/06/i-tried-forest-bathing-in-italy-everything-you-need-to-know-about-the-wellness-trend\"><strong>forest</strong></a> in Europe.</p><p>Here are some of the best ways to get active on holiday in <a href=\"https://www.euronews.com/travel/2022/08/16/montenegro-croatia-iceland-which-european-countries-rely-most-and-least-on-tourism\"><strong>Montenegro</strong></a>, all the while supporting communities and <a href=\"https://www.euronews.com/travel/2022/07/04/could-turkiyes-first-carbon-neutral-hotel-chain-help-kick-start-its-sustainable-tourism-re\"><strong>conservation</strong></a>.</p><h2>How to reach Montenegro by train</h2><p>Choosing <a href=\"https://www.euronews.com/travel/tag/trains\"><strong>train</strong></a> over plane is guaranteed to get your holiday off to an adventurous start. While trains are more comfortable, fast and reliable than flight aficionados think, you never know who you’ll meet or what you’ll see along the way.</p><p>You can reach Montenegro from many places in Europe in a day and a half. From the UK, take the Eurostar from London to <a href=\"https://www.euronews.com/video/2022/10/22/inside-how-the-paris-metro-keeps-millions-of-people-on-the-move\"><strong>Paris</strong></a>, connect through to Stuttgart, on to Zagreb and finally Belgrade in Montenegro’s neighbour, Serbia. From there, take a train to Bar and you’re in Montenegro. The final step is the most adventurous - tickets from <a href=\"https://www.euronews.com/travel/2018/06/08/beautiful-belgrade-a-city-of-contrasts-and-culture\"><strong>Belgrade</strong></a> to Bar can only be booked in person at Belgrade Centar station.</p><p>&nbsp;</p><h2>Tara River: Rafting on one of the cleanest rivers in Europe</h2><p>Until our <a href=\"https://www.euronews.com/travel/2022/02/25/ready-for-the-trip-of-a-lifetime-here-s-the-8-best-travel-experiences-of-2022\"><strong>raft</strong></a> took an unexpected flip, our time on the Tara River had been glorious. We were surrounded by scores of colourful butterflies for most of the journey, making us feel part of the <a href=\"https://www.euronews.com/travel/2021/05/31/four-of-europe-s-best-green-spaces\"><strong>nature</strong></a> that surrounded us.</p><p>Winding along the base of Europe’s deepest canyon, the 144km Tara is one of the longest rivers that is fully drinkable. It’s so clear that it looks like someone has turned on a tap somewhere near <a href=\"https://www.euronews.com/travel/2022/11/02/the-little-known-travel-destinations-set-to-become-wildly-popular-during-post-pandemic-tra\"><strong>Albania</strong></a> and simply left it running. From above it cuts an unbelievably bright swathe of turquoise through the surrounding green mountains.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/10/30/its-not-rocket-science-how-a-family-of-novice-sailors-started-travelling-the-globe\"><strong>‘It’s not rocket science’: How a family of novice sailors started travelling the globe</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/09/21/flight-free-travel-europes-new-long-distance-train-routes-for-2022\"><strong>Flight-free travel: Europe’s latest long-distance train routes for 2022</strong></a></li></ul><p>There’s 85km of river to explore by raft through the gorge. Choose from short day trips to a three-day <a href=\"https://www.euronews.com/travel/2022/05/07/india-where-to-head-for-adventure-wildlife-and-yoga-in-the-world-s-most-colourful-country\"><strong>rafting</strong></a> epic through the entire canyon. From April to June the waters tend to flow fastest, as snowmelt from the surrounding mountains pours into Tara. For a gentler experience pick the end of the European <a href=\"https://www.euronews.com/travel/tag/best-summer-holiday-destinations-2022\"><strong>summer</strong></a>, when the water levels are lower.</p><p>When we did capsize, our rafting guides gave us the dubious honour of being the first group to have done so in years. Maybe your group will be the second.</p><h2>Durmitor Mountains: Hike between homestays</h2><p>With the taste of a post-rapids walnut ‘rakija’ (a type of Montenegrin <a href=\"https://www.euronews.com/travel/2021/05/06/romanian-moonshine-horinca-keeps-romanians-warm-all-winter\"><strong>fruit brandy</strong></a>) still lingering, we headed west to the town of Žabljak.</p><p>There’s a folk tale, our guide Djordje tells us, that when God was making the world he dropped his sack of rocks on Montenegro, creating the mountains that cover the country.</p><p>In Montenegro’s northwest, these <a href=\"https://www.euronews.com/travel/2022/08/19/the-10-best-european-hiking-destinations-where-you-can-reconnect-with-nature\"><strong>mountains</strong></a> form the Durmitor National Park, a UNESCO World Heritage Site thanks to its exceptional natural beauty. Old growth black pine forests shelter brown bears, grey <a href=\"https://www.euronews.com/green/2022/09/27/wolves-bears-and-bison-50-species-make-spectacular-comeback-in-europe\"><strong>wolves</strong></a> and crystal lakes. While high-altitude alpine meadows are home to traditional rural villages like Nedajno and Trsa, only accessible when there’s no <a href=\"https://www.euronews.com/travel/2022/10/18/skiing-on-a-budget-six-european-resorts-that-wont-break-the-bank\"><strong>snow</strong></a> on the ground.</p><p><img src=\"https://static.euronews.com/articles/stories/07/17/02/00/808x454_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg\" alt=\"Sarah Faith\" srcset=\"https://static.euronews.com/articles/stories/07/17/02/00/384x215_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 384w, https://static.euronews.com/articles/stories/07/17/02/00/640x358_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 640w, https://static.euronews.com/articles/stories/07/17/02/00/750x420_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 750w, https://static.euronews.com/articles/stories/07/17/02/00/828x464_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 828w, https://static.euronews.com/articles/stories/07/17/02/00/1080x605_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 1080w, https://static.euronews.com/articles/stories/07/17/02/00/1200x672_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 1200w, https://static.euronews.com/articles/stories/07/17/02/00/1920x1075_cmsv2_60486263-8c74-5eed-8d46-d932a6f6e357-7170200.jpg 1920w\" sizes=\"100vw\"><i>Durmitor\'s eco villages are the perfect bases for hiking and biking.Sarah Faith</i></p><p>The area is beautiful but, like many parts of Europe, a victim of rural depopulation, as residents leave in search of an income. A growing network of <a href=\"https://www.euronews.com/2021/06/15/are-eco-villages-the-future-for-serbia\"><strong>eco villages</strong></a> aims to revitalise Montenegro’s rural villages.</p><p>Homes-turned-lodges offer rural accommodation and serve up traditional local <a href=\"https://www.euronews.com/travel/2021/05/23/seven-european-destinations-for-a-truly-traditional-breakfast\"><strong>food</strong></a>, bringing alternative sources of income that boost living standards and support beekeeping, cheese-making, and other traditional rural livelihoods.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/06/23/an-a-ha-moment-while-hiking-led-this-woman-to-create-a-huge-community-of-female-adventurer\"><strong>An \'a-ha moment\' while hiking led this woman to create a huge community of female adventurers</strong></a></li></ul><p>In Durmitor, the eco villages are perfect for reaching marked <a href=\"https://www.euronews.com/travel/2022/10/20/how-a-mountain-hiking-chihuahua-helped-this-austrian-chase-her-travelling-dreams\"><strong>hiking</strong></a> and <a href=\"https://www.euronews.com/travel/2022/05/19/slovenia-s-green-capitals-route-and-five-other-epic-european-bike-rides-to-try-this-summer\"><strong>biking</strong></a> routes. From Crno Jezero, the Black Lake, you choose anything from a gentle 3.5km walk around its shores to strenuous trails on the surrounding pine-covered peaks.</p><p>Expect to end a hike with a warm welcome and free-flowing rakija, before tucking into a portion of delicious ‘ispod sača’, local lamb slow cooked over coals in an iron bell with potatoes, vegetables, rosemary and garlic.</p><h2>Lake Skadar: Kayak around Montenegrin wine country</h2><p>“We are one of the smallest countries in Europe,” says Djordje, “But if you flattened us out, we’d be one of the biggest in the world.” Montenegrins are very proud of their <a href=\"https://www.euronews.com/travel/2022/08/06/digital-detox-in-morzine-stargazing-foraging-and-wild-swimming-helped-me-to-disconnect\"><strong>mountains</strong></a> and with the Zeta Plain, which surrounds the capital Podgorica (rhymes with pizza), you can see why.</p><p>It stretches to the shores of waterlily-clad Lake Skadar, a huge expanse of freshwater straddling Montenegro and Albania. This is Montenegrin <a href=\"https://www.euronews.com/travel/2022/02/19/this-moroccan-winery-is-bringing-the-flavours-of-the-rhone-valley-to-north-africa\"><strong>wine</strong></a> country, where vines have been grown in the fertile soil for centuries.</p><p><img src=\"https://static.euronews.com/articles/stories/07/17/02/00/808x454_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg\" alt=\"Sarah Faith\" srcset=\"https://static.euronews.com/articles/stories/07/17/02/00/384x215_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 384w, https://static.euronews.com/articles/stories/07/17/02/00/640x358_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 640w, https://static.euronews.com/articles/stories/07/17/02/00/750x420_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 750w, https://static.euronews.com/articles/stories/07/17/02/00/828x464_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 828w, https://static.euronews.com/articles/stories/07/17/02/00/1080x605_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 1080w, https://static.euronews.com/articles/stories/07/17/02/00/1200x672_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 1200w, https://static.euronews.com/articles/stories/07/17/02/00/1920x1075_cmsv2_ae2f4383-234f-51c6-897a-3f0dc225f9b3-7170200.jpg 1920w\" sizes=\"100vw\"><i>Lake Skadar is great for wild swimming and kayaking.Sarah Faith</i></p><p>Combine tastings of black wine - the dark red wine typical of the local Vranac grape - with wild swimming and <a href=\"https://www.euronews.com/travel/2021/04/11/what-it-s-like-to-kayak-down-a-snowy-mountain-at-100km-h\"><strong>kayaking</strong></a> on the lake. Day tours are available from the sleepy, yet tourist-centric village of Virpazar (30 minutes from Podgorica), but longer itineraries take you into its quietest corners and connect you with some of the lake’s most famous inhabitants, the rare Dalmatian pelican.</p><p>Take a kayaking trip with Undiscovered Montenegro and your holiday will help fund the installation and maintenance of artificial breeding platforms on the lake. These have been enormously successful in encouraging more of the <a href=\"https://www.euronews.com/green/2022/09/25/meet-the-villagers-who-have-formed-deep-bonds-with-migrating-white-storks\"><strong>birds</strong></a> to nest, with pelican numbers almost doubling in five years.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/11/01/braver-and-bolder-these-women-are-fulfilling-their-travel-dreams-post-divorce\"><strong>‘Braver and bolder’: These women are fulfilling their travel dreams post-divorce</strong></a></li></ul><p>Travel here in May or June, and you can kayak to see the nesting <a href=\"https://www.euronews.com/green/2022/08/19/world-photography-day-xavi-bous-photos-show-the-magical-traces-birds-leave-in-the-sky\"><strong>birds</strong></a> as pelican chicks are old enough at this point not to be disturbed by visitors, yet young enough to still be in their nests.</p><h2>Podgorica to Kolašin by train: One of Europe’s most spectacular journeys</h2><p>We drove through the ever deepening Morača Canyon between Podgorica and Kolašin. But having seen the route, I wish we’d taken the <a href=\"https://www.euronews.com/travel/2022/10/11/slow-and-sleepy-travel-why-overnight-trains-are-the-best-way-to-go\"><strong>train</strong></a>.</p><p>Where the highway follows the river north, the train climbs. At points, the rattling Yugoslav-era rolling stock disappears into one of the 254 tunnels that punctuate the 470km route between Bar on Montenegro’s Adriatic coast and Belgrade in <a href=\"https://www.euronews.com/travel/2021/06/08/meet-the-digital-nomads-blazing-a-trail-in-serbia\"><strong>Serbia</strong></a>. When it emerges, it’s along a sliver of track clinging to the vertical canyon sides - one of the most spectacular stretches of railway in Europe.&nbsp;</p><p>Sit on the left heading northbound for the best of the vertiginous views and alight at Kolašin or Mojkovac to hike in the Biogradska Gora National Park, home to one of the three remaining virgin <a href=\"https://www.euronews.com/travel/2022/02/08/custom-made-kilts-and-rainforest-walks-these-are-the-9-most-beautiful-train-journeys-in-th\"><strong>rainforests</strong></a> in Europe.</p>', 1, 4, 53, '20221216110306.jpg', '2022-12-13 17:46:19', '2022-12-16 16:57:03'),
(18, 1, 'Here’s why you should visit its pristine beaches and ancient cities', 'Here’s why you should visit its pristine beaches and ancient cities', 'heres-why-you-should-visit-its-pristine-beaches-and-ancient-cities', '<p>Tunisia has dropped all remaining COVID travel restrictions three years after it first shut its borders during the pandemic.</p><p>As of last week, travellers no longer have to present vaccine passes or undergo health checks at the border.</p><p>It’s good news for those who have the stunning Mediterranean country on their bucket list.</p><p>Tunisia tempts tourists with azure waters, sand dune-filled desert and ancient ruins.</p><p>Here’s why you should visit in 2023.</p><p>&nbsp;</p><h2>Are there entry restrictions for Tunisia?</h2><p>Last week, Tunisia lifted all remaining <a href=\"https://www.euronews.com/travel/2022/11/30/global-tourism-rebounds-strongly-after-covid-19\"><strong>COVID</strong></a> travel restrictions.</p><p>The government says the levels of the virus in the country are sufficiently low to allow the move.</p><p>Travellers to Tunisia no longer need to show a vaccine certificate, meaning unvaccinated tourists can also visit.</p><p>Pre-departure tests for <a href=\"https://www.euronews.com/travel/2022/11/11/china-relaxes-travel-restrictions-all-you-need-to-know-about-tests-quarantine-and-flights\"><strong>COVID</strong></a> are not required and there will be no testing or health checks on arrival. There is also no requirement for travellers to quarantine on arrival.</p><p>However, masks remain mandatory in enclosed spaces for those who test positive for COVID.</p><p>Here’s what you should see and do on a trip to Tunisia.</p><h2>Lounge on Tunisia’s best beaches</h2><p>Tunisia has long been a popular <a href=\"https://www.euronews.com/travel/2021/07/03/these-are-the-20-most-beautiful-beaches-in-the-world-and-half-are-in-europe\"><strong>beach</strong></a> destination.</p><p>To the north, you can find wild bays of white cliffs and verdant vegetation, while further south pale stretches of sand lead down to clear waters.</p><p><img src=\"https://static.euronews.com/articles/stories/07/23/44/92/808x608_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg\" alt=\"Aleksandr Sali\" srcset=\"https://static.euronews.com/articles/stories/07/23/44/92/384x288_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 384w, https://static.euronews.com/articles/stories/07/23/44/92/640x480_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 640w, https://static.euronews.com/articles/stories/07/23/44/92/750x563_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 750w, https://static.euronews.com/articles/stories/07/23/44/92/828x621_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 828w, https://static.euronews.com/articles/stories/07/23/44/92/1080x810_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 1080w, https://static.euronews.com/articles/stories/07/23/44/92/1200x900_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 1200w, https://static.euronews.com/articles/stories/07/23/44/92/1920x1440_cmsv2_c99c360b-137b-5ebe-b09a-8e1bf11b6213-7234492.jpg 1920w\" sizes=\"100vw\"><i>Towards the south, head over the bridge to Djerba island for pristine sands and a crystalline sea.Aleksandr Sali</i></p><p>Hammamet is a great choice if you’re staying in the capital, Tunis. The balmy waters of this <a href=\"https://www.euronews.com/travel/2022/06/19/from-hidden-coves-to-nature-reserves-italy-has-europes-most-diverse-beaches-heres-the-top\"><strong>beach</strong></a> are a favourite with <a href=\"https://www.euronews.com/travel/2021/07/19/cyprus-bets-on-snorkelling-tourism-fancy-exploring-ruins-underwater\"><strong>snorkelers</strong></a> and <a href=\"https://www.euronews.com/travel/2022/04/13/accessible-tourism-scuba-diving-opens-for-disabled-travellers-in-thailand\"><strong>scuba divers</strong></a>.</p><p>Towards the south, head over the bridge to Djerba island for pristine sands and a crystalline sea. Retire to one of the old villages nearby for a fresh seafood lunch.</p><h2>Meander medieval streets in Houmt Souk</h2><p>While on Djerba island, stop off at the main settlement and market town of Houmt Souk.</p><p>The city is a melange of cultures as Arabs, Spanish and Ottomans have settled in the coastal area over the centuries.</p><p>Wander the streets of whitewashed adobe houses and dip into the <a href=\"https://www.euronews.com/travel/2022/09/25/beirut-discover-modern-souks-and-pumping-nightlife-in-the-mediterraneans-most-underrated-c\"><strong>bazaars</strong></a> where stalls laden with colourful products crowd the pavements.</p><h2>Marvel at centuries of ancient ruins in Carthage and beyond</h2><p>Centuries of conquests and battles for settlement have shaped the rich history of Tunisia.</p><p>The country is full of tangible traces of the north African and European cultures that converged on the territory.</p><p>The once mighty city of Carthage, now lying just outside modern Tunis, is one of the country’s most famous <a href=\"https://www.euronews.com/my-europe/2022/10/24/project-treasure-unlocking-hidden-wonders-of-the-aegean-and-black-seas\"><strong>archeological sites</strong></a>.</p><p><img src=\"https://static.euronews.com/articles/stories/07/23/44/92/808x608_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg\" alt=\"Albert Gubaydullin\" srcset=\"https://static.euronews.com/articles/stories/07/23/44/92/384x288_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 384w, https://static.euronews.com/articles/stories/07/23/44/92/640x480_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 640w, https://static.euronews.com/articles/stories/07/23/44/92/750x563_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 750w, https://static.euronews.com/articles/stories/07/23/44/92/828x621_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 828w, https://static.euronews.com/articles/stories/07/23/44/92/1080x810_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 1080w, https://static.euronews.com/articles/stories/07/23/44/92/1200x900_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 1200w, https://static.euronews.com/articles/stories/07/23/44/92/1920x1440_cmsv2_5c132261-b4b7-51ad-b3b2-5a0f73c1f75d-7234492.jpg 1920w\" sizes=\"100vw\"><i>The once mighty city of Carthage, now lying just outside modern Tunis, is one of the country’s most famous archeological sites.Albert Gubaydullin</i></p><p>Settled by the Phoenician Greeks, it was a powerful trading hub in the ancient world.</p><p>Centuries of wars and invasions have reduced the city to ruins, but they still evoke the splendour of the historic metropolis.</p><p>A more impressive and better preserved ancient monument is the amphitheatre of El Djem, a <a href=\"https://www.euronews.com/travel/2022/04/19/these-eight-unesco-approved-destinations-balance-conservation-with-tourism\"><strong>UNESCO</strong></a>-designated oval arena to rival the Colosseum in Rome.</p>', 1, 9, 5, '20221213124753.jpg', '2022-12-13 17:47:53', '2022-12-16 16:22:51'),
(19, 1, 'Croatia is now in the Schengen zone', 'Croatia is now in the Schengen zone', 'croatia-is-now-in-the-schengen-zone', '<p>Renowned for its beautiful beaches and with over 1,000 islands to its name, <a href=\"https://www.euronews.com/travel/tag/croatia\"><strong>Croatia</strong></a> is a leading destination for nautical tourism.&nbsp;</p><p>It\'s also about to become a lot more accessible.&nbsp;From January 1, 2023, Croatia will lift its border controls with other <a href=\"https://www.euronews.com/travel/2022/12/08/passports-currency-and-borders-what-changes-when-croatia-joins-the-schengen-zone-in-2023\"><strong>Schengen countries</strong></a>, meaning you can enter from Europe\'s passport-free zone with ease.</p><p>Home to the largest <a href=\"https://www.euronews.com/travel/2022/10/30/its-not-rocket-science-how-a-family-of-novice-sailors-started-travelling-the-globe\"><strong>boat</strong></a> charter fleet in the world, this diverse country sits at the crossroads of central and southeast Europe on the Adriatic Sea.</p><p>Don\'t worry if you get <a href=\"https://www.euronews.com/travel/2022/10/09/sailing-from-belfast-to-inverness-why-i-chose-11-days-at-sea-over-a-1-hour-flight\"><strong>seasick</strong></a> though, there\'s something for everyone in this Balkan country.</p><h2>How do I get to Croatia\'s Peljesac peninsula?</h2><p>While Dubrovnik’s cobbled streets are packed with <a href=\"https://www.euronews.com/travel/2022/09/08/from-cornwall-to-derbyshire-hit-the-house-of-the-dragons-stunning-filming-locations-before\"><strong>Game of Thrones</strong></a> fans (the city was a key filming location for the series), just an hour away you can discover Croatia\'s quiet side.</p><p>&nbsp;</p><p>The 65km Pelješac peninsula, is the second longest in <a href=\"https://www.euronews.com/travel/2022/08/16/montenegro-croatia-iceland-which-european-countries-rely-most-and-least-on-tourism\"><strong>Croatia</strong></a>. Located just 87km north of Dubrovnik and 144km south of Split, it\'s a popular destination for long weekends.&nbsp;</p><p>It, too, recently became more accessible. In July 2022, a <a href=\"https://www.euronews.com/travel/2022/11/18/island-hopping-not-border-hopping-new-peljesac-bridge-brings-croatia-together-at-last\"><strong>bridge</strong></a> was unveiled linking&nbsp;Split and Dubrovnik, finally bypassing the need to travel over the border into Bosnia and Herzegovina.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/12/07/spain-s-most-unexplored-city-is-a-tourist-free-hidden-gem-to-visit-in-2022\"><strong>Spain’s most unexplored city is a tourist-free, hidden gem to visit in 2023</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/12/07/indonesia-bans-sex-outside-of-marriage-will-new-laws-affect-tourists-too\"><strong>Indonesia bans sex outside of marriage: Will new laws affect tourists too?</strong></a></li></ul><p><img src=\"https://static.euronews.com/articles/stories/06/19/29/46/808x539_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg\" alt=\"ELVIS BARUKCIC/AFP\" srcset=\"https://static.euronews.com/articles/stories/06/19/29/46/384x257_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 384w, https://static.euronews.com/articles/stories/06/19/29/46/640x429_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 640w, https://static.euronews.com/articles/stories/06/19/29/46/750x503_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 750w, https://static.euronews.com/articles/stories/06/19/29/46/828x555_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 828w, https://static.euronews.com/articles/stories/06/19/29/46/1080x724_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 1080w, https://static.euronews.com/articles/stories/06/19/29/46/1200x804_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 1200w, https://static.euronews.com/articles/stories/06/19/29/46/1920x1286_cmsv2_500acf96-99d7-52da-88fd-6f5d4ce94d0c-6192946.jpg 1920w\" sizes=\"100vw\"><i>Fireworks near the \"Peljesac bridge\" after final elements of steel were installed in JulyELVIS BARUKCIC/AFP</i></p><p>Arriving via the <a href=\"https://www.euronews.com/travel/2022/11/29/hiking-by-day-wine-by-night-plan-an-active-trip-to-montenegro-while-its-still-under-the-ra\"><strong>Adriatic coast</strong></a> road from Dubrovnik, the first thing that will catch your eye are the Walls of Ston. These&nbsp;5.5km long defensive walls run along the steep slopes that join <strong>Ston</strong> and Mali Ston, two fortified medieval towns on the isthmus (a thin strip of land).</p><p>The Ston Wall, built in 1333, is thought to be the longest preserved medieval stone fortification system in Europe, and one of the longest such walls in the world.</p><p>It\'s also the location of the Ston Wall <a href=\"https://www.euronews.com/travel/2021/11/11/want-to-be-more-resilient-learn-from-this-woman-who-swims-non-stop-for-ten-and-half-hours\"><strong>marathon</strong></a> held every September. Well worth a visit are Ston\'s \'white gold\'&nbsp;salt works, the oldest salt harvesting site in the Mediterranean. Foodies meanwhile, can enjoy Ston\'s famous mussels and oysters, fresh from the beds in the Mali Ston Bay.</p><p><img src=\"https://static.euronews.com/articles/stories/06/19/29/46/808x573_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg\" alt=\"@canva\" srcset=\"https://static.euronews.com/articles/stories/06/19/29/46/384x273_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 384w, https://static.euronews.com/articles/stories/06/19/29/46/640x454_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 640w, https://static.euronews.com/articles/stories/06/19/29/46/750x533_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 750w, https://static.euronews.com/articles/stories/06/19/29/46/828x588_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 828w, https://static.euronews.com/articles/stories/06/19/29/46/1080x767_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 1080w, https://static.euronews.com/articles/stories/06/19/29/46/1200x852_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 1200w, https://static.euronews.com/articles/stories/06/19/29/46/1920x1363_cmsv2_24a75da3-c3ea-5d44-9f3f-6b54d69c455b-6192946.jpg 1920w\" sizes=\"100vw\"><i>Defensive walls of Ston town, Peljesac Peninsula, Croatia@canva</i></p><h2>Where can I try Croatian wine?</h2><p>The peninsula is also Croatia’s most famous <a href=\"https://www.euronews.com/travel/tag/wine\"><strong>wine</strong></a> region. The colourful little harbour of Trstenik is home to Grgić Vina, the winery established in 1996 by legendary Napa Valley winemaker, Croatian-born Miljenko \'Mike\' Grgich.</p><p>Mike made his name with a winning Chardonnay at the 1976 legendary Paris Tasting, the first great triumph of Californian <a href=\"https://www.euronews.com/travel/2022/03/20/france-s-best-food-and-wine-festivals-and-how-to-reach-them-without-flying\"><strong>wines</strong></a> in Europe. In 1958 Mike noticed the resemblance between the Napa Valley Zinfandel grape and Croatia\'s native Plavac Mali.</p><p>35 years later he grew Plavac Mali (meaning \'little blue\' in Croatian) in a small, steep area of <a href=\"https://www.euronews.com/travel/2022/02/19/this-moroccan-winery-is-bringing-the-flavours-of-the-rhone-valley-to-north-africa\"><strong>vineyards</strong></a> on the south-facing slopes of the peninsula, perched above the Adriatic Sea.</p><p><img src=\"https://static.euronews.com/articles/stories/06/19/29/46/808x573_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg\" alt=\"@canva\" srcset=\"https://static.euronews.com/articles/stories/06/19/29/46/384x273_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 384w, https://static.euronews.com/articles/stories/06/19/29/46/640x454_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 640w, https://static.euronews.com/articles/stories/06/19/29/46/750x533_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 750w, https://static.euronews.com/articles/stories/06/19/29/46/828x588_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 828w, https://static.euronews.com/articles/stories/06/19/29/46/1080x767_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 1080w, https://static.euronews.com/articles/stories/06/19/29/46/1200x852_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 1200w, https://static.euronews.com/articles/stories/06/19/29/46/1920x1363_cmsv2_8fa7b606-5ed0-5f62-9a47-40d050f88b49-6192946.jpg 1920w\" sizes=\"100vw\"><i>Dingac vineyards on Peljesac peninsula@canva</i></p><h2>&nbsp;</h2><ul><li><a href=\"https://www.euronews.com/travel/2022/12/08/as-croatia-joins-the-euro-which-7-eu-countries-still-use-their-own-currency\"><strong>As Croatia joins the euro, which 7 EU countries still use their own currency?</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/12/07/ranked-which-country-has-the-most-powerful-passport\"><strong>Ranked: Which country has the most powerful passport?</strong></a></li></ul><h2>Where can I sail in Croatia?</h2><p>To \"truly experience Croatia, try <a href=\"https://www.euronews.com/travel/tag/sailing\"><strong>sailing</strong></a> along the Adriatic and stopping at many of its coastal cities and docking at a few islands en route,\" suggests the director of Croatia\'s National Tourist Board, Kristjan Stanicic.</p>', 1, 9, 1, '20221213124906.jpg', '2022-12-13 17:49:06', '2022-12-16 08:05:43');
INSERT INTO `posts` (`id`, `user_id`, `title`, `meta_title`, `slug`, `content`, `is_published`, `category_id`, `reads`, `featured_image`, `created_at`, `updated_at`) VALUES
(20, 1, 'Bulgaria and Croatia: Take a trip to the UK’s new green list additions', 'Bulgaria and Croatia: Take a trip to the UK’s new green list additions', 'bulgaria-and-croatia-take-a-trip-to-the-uks-new-green-list-additions', '<h2>A sultry vibe inside:&nbsp;</h2><p>A couple of flights up, I find the entrance foyer-come-cocktail lounge - open ‘til the early hours and offering a vast drinks menu and live music.</p><p>One of the first things I notice is that the check-in desk innovatively moonlights as a bar. There is, after all, a shortage of space in London.</p><p>The Hux bar team are an attentive bunch, swiftly ensuring you barely have to stand back up once you’ve settled into one of the plush seating areas. Admittedly, this could be an insurance policy - the decor inside is dark and somewhat cluttered in a cosy way. So realistically it\'s a bit of a nightmare to navigate after a few negronis.</p><p>A sultry, live Portuguese guitar band entertains me throughout the evening, down in the bar. Hidden away from the busy road outside, the vibe is exclusive and sexy.</p><p>It soon becomes clear that showing up single is a faux pas on my part (though my inbox is always open, gents). The bar is largely occupied by well-dressed couples and the odd group reclining on the sprawling sofas. But the presence of the band definitely makes me look a little less out of place.</p><p>As far as Kensington’s elite are concerned, I am just another groupie.</p><p><img src=\"https://static.euronews.com/articles/stories/06/15/63/26/808x539_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg\" alt=\"The Hux\" srcset=\"https://static.euronews.com/articles/stories/06/15/63/26/384x257_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 384w, https://static.euronews.com/articles/stories/06/15/63/26/640x429_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 640w, https://static.euronews.com/articles/stories/06/15/63/26/750x503_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 750w, https://static.euronews.com/articles/stories/06/15/63/26/828x555_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 828w, https://static.euronews.com/articles/stories/06/15/63/26/1080x724_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 1080w, https://static.euronews.com/articles/stories/06/15/63/26/1200x804_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 1200w, https://static.euronews.com/articles/stories/06/15/63/26/1920x1286_cmsv2_d3aa9a09-a917-5d6c-8004-1d0bab62c60a-6156326.jpg 1920w\" sizes=\"100vw\"><i>A double room at the HuxThe Hux</i></p><h2>Ending up in a Korean restaurant</h2><p>My own night takes a bit of a turn when a few drinks later I venture out in the pursuit of food and, navigated by the Roman Emperor, find myself at the Korean takeout a few doors down. One or two shots later and we are blasting Einaudi on the piano and eating fried chicken until the matriarch of the establishment politely asks us to leave (it’s nearly 3am).</p><p><a href=\"https://www.tastykorea.co.uk/\"><strong>Tasty Korea</strong></a> - the dumplings really took the edge off my hangover the next day.</p><p>The verdict? Despite my unconventional end to the evening, the drinks are well-stirred and the energy is chilled. The Hux is a great place to wind down at the end of a night.</p><ul><li><a href=\"https://www.euronews.com/green/2019/09/10/5-incredible-eco-resorts-helping-to-save-endangered-animals\"><strong>5 incredible eco-resorts helping to save endangered animals</strong></a></li><li><a href=\"https://www.euronews.com/travel/2021/01/01/want-drama-here-are-six-of-the-most-dramatic-hotels-in-greece\"><strong>Want drama? Here are six of the most dramatic hotels in Greece</strong></a></li></ul><h2>Where is the Hux Hotel?</h2><p>The Hux is in a prime location on Kensington High Street, west London. It’s right opposite Hyde Park - ideal if you need to walk off the cocktails the next morning.</p><p><img src=\"https://static.euronews.com/articles/stories/06/15/63/26/808x539_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/15/63/26/384x257_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 384w, https://static.euronews.com/articles/stories/06/15/63/26/640x429_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 640w, https://static.euronews.com/articles/stories/06/15/63/26/750x503_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 750w, https://static.euronews.com/articles/stories/06/15/63/26/828x555_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 828w, https://static.euronews.com/articles/stories/06/15/63/26/1080x724_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 1080w, https://static.euronews.com/articles/stories/06/15/63/26/1200x804_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 1200w, https://static.euronews.com/articles/stories/06/15/63/26/1920x1286_cmsv2_943f3e66-667a-56ef-9c89-979daa83050a-6156326.jpg 1920w\" sizes=\"100vw\"><i>The Hux is located directly opposite Hyde ParkCanva</i></p><h2>Is it suitable for families?</h2><p>I saw a couple of families in and out of the Hux, but it definitely has more couples, friends, swingers or solo explorer vibes.</p>', 1, 4, 38, '20221213125026.jpg', '2022-12-13 17:50:26', '2022-12-16 16:22:37'),
(21, 1, 'Sicily’s best boutique hotels: Sleep in style at these high-end hideaways', 'Sicily’s best boutique hotels: Sleep in style at these high-end hideaways', 'sicilys-best-boutique-hotels-sleep-in-style-at-these-high-end-hideaways', '<p>Sicily is full of unique charm and boutique hotels are the perfect way to experience local culture while enjoying luxury. Their smaller size also means more space and less mixing with large crowds, a positive for many travellers since the pandemic.</p><p>But, as in many countries, what is meant by a boutique hotel isn’t always clear.</p><p>One of the options on this list is more of a business hotel, despite being called boutique. While another is a boutique hotel through and through - for all the right reasons. So make sure you do your research and check that what you’re booking is definitely the type of hotel you’re looking for.</p><p>Moving clockwise around this Mediterranean island, we bring you the best small hotels in Sicily’s most popular tourist destinations.</p><h2>Cefalu - Le Calette Garden and Bay</h2><p>Cefalu is most popular for day trips from Palermo, Sicily’s biggest city and only an hour away by train. But there’s plenty to see, do, eat and drink here so it’s worth reserving two or three days for this historic beachside town.</p><p>&nbsp;</p><p><img src=\"https://static.euronews.com/articles/stories/06/14/89/60/808x454_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg\" alt=\"La Calette\" srcset=\"https://static.euronews.com/articles/stories/06/14/89/60/384x215_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 384w, https://static.euronews.com/articles/stories/06/14/89/60/640x358_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 640w, https://static.euronews.com/articles/stories/06/14/89/60/750x420_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 750w, https://static.euronews.com/articles/stories/06/14/89/60/828x464_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 828w, https://static.euronews.com/articles/stories/06/14/89/60/1080x605_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 1080w, https://static.euronews.com/articles/stories/06/14/89/60/1200x672_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 1200w, https://static.euronews.com/articles/stories/06/14/89/60/1920x1075_cmsv2_b15d296d-b62c-5155-ba08-4930ebe56a6d-6148960.jpg 1920w\" sizes=\"100vw\"><i>La Calette Garden and Bay is just 2 kilometres from Cefalu\'s town centre.La Calette</i></p><p>Le Calette Garden and Bay is located 2km from the town centre, tucked away in a bay with sparkling blue water. It’s a small resort with everything you need on your doorstep. So much so that I imagine lots of guests don’t even make it into Cefalu town. For those that do, this charming seaside resort is only a 20-minute walk away or accessible with the free hotel shuttle.</p><p><img src=\"https://static.euronews.com/articles/stories/06/14/89/60/808x454_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg\" alt=\"La Calette\" srcset=\"https://static.euronews.com/articles/stories/06/14/89/60/384x215_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 384w, https://static.euronews.com/articles/stories/06/14/89/60/640x358_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 640w, https://static.euronews.com/articles/stories/06/14/89/60/750x420_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 750w, https://static.euronews.com/articles/stories/06/14/89/60/828x464_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 828w, https://static.euronews.com/articles/stories/06/14/89/60/1080x605_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 1080w, https://static.euronews.com/articles/stories/06/14/89/60/1200x672_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 1200w, https://static.euronews.com/articles/stories/06/14/89/60/1920x1075_cmsv2_ae89704f-2370-5f99-b62c-2dc9e7987df6-6148960.jpg 1920w\" sizes=\"100vw\"><i>There is direct access to the sea from a ladder on the deck.La Calette</i></p><p>The main hotel area is very spacious, with a gorgeous pool and bar area. One level down is a terrace where breakfast is served alongside stunning views out over the sea. Still further below that is Calette Reef Club (open from June to September) where there’s another bar, sun loungers and a private deck. I recommend taking the ladder down to the sea and swimming out from here to discover the tiny hidden beach around the corner from the bay.</p><p><img src=\"https://static.euronews.com/articles/stories/06/14/89/60/808x454_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg\" alt=\"La Calette\" srcset=\"https://static.euronews.com/articles/stories/06/14/89/60/384x215_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 384w, https://static.euronews.com/articles/stories/06/14/89/60/640x358_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 640w, https://static.euronews.com/articles/stories/06/14/89/60/750x420_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 750w, https://static.euronews.com/articles/stories/06/14/89/60/828x464_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 828w, https://static.euronews.com/articles/stories/06/14/89/60/1080x605_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 1080w, https://static.euronews.com/articles/stories/06/14/89/60/1200x672_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 1200w, https://static.euronews.com/articles/stories/06/14/89/60/1920x1075_cmsv2_9c4ff4c8-6e38-53b5-b80e-9a8dc0f6a1c5-6148960.jpg 1920w\" sizes=\"100vw\"><i>Rooms are spacious with private areas indoors and out.La Calette</i></p><p>All of the Le Calette hotels are family-run and they’ve been in business since 1969. It shows in the smooth running and excellent service. Reception staff were especially helpful; on-hand throughout my stay to answer any questions about the hotel’s services, such as the spa and yoga classes.</p><p>Le Calette’s five stars really shine through in its selection of rooms. They feel spacious inside and out thanks to the private outdoor areas. The decor feels high-end and the small touches like fresh fruit really make the experience.</p>', 1, 9, 18, '20221213125121.jpg', '2022-12-13 17:51:21', '2022-12-16 08:05:45'),
(22, 1, 'Tourism that leaves a trace: Five places in Europe your holiday can benefit nature', 'Tourism that leaves a trace: Five places in Europe your holiday can benefit nature', 'tourism-that-leaves-a-trace-five-places-in-europe-your-holiday-can-benefit-nature', '<p>The mountains and meadows here – under two hours from Rome – may feel remote compared to the city, but this isn’t an untouched wilderness.</p><p><a href=\"https://www.euronews.com/travel/2021/05/05/what-to-expect-from-the-rewilding-of-italy-s-largest-mountain-range\"><strong>The Marsican brown bears’ last refuge</strong></a> in Europe has been fragmented and degraded. And it is people – protecting their horses and cattle - who still pose the biggest threat to bears now.</p><p>All that might be about to change.</p><p><img src=\"https://static.euronews.com/articles/stories/07/21/38/32/808x521_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg\" alt=\"Unsplash\" srcset=\"https://static.euronews.com/articles/stories/07/21/38/32/384x246_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 384w, https://static.euronews.com/articles/stories/07/21/38/32/640x410_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 640w, https://static.euronews.com/articles/stories/07/21/38/32/750x480_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 750w, https://static.euronews.com/articles/stories/07/21/38/32/828x530_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 828w, https://static.euronews.com/articles/stories/07/21/38/32/1080x691_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 1080w, https://static.euronews.com/articles/stories/07/21/38/32/1200x768_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 1200w, https://static.euronews.com/articles/stories/07/21/38/32/1920x1229_cmsv2_4c04f2f9-f52f-52d2-864a-ea38e6956902-7213832.jpg 1920w\" sizes=\"100vw\"><i>Instead of resenting the bears, tourism here aims to reduce human-bear conflicts.Unsplash</i></p><p>The development of responsible, nature-based tourism is giving local people another option. It creates opportunities for them to stay in rural villages and benefit economically from the wildlife around them.</p><p>Instead of resenting the bears, tourism here aims to reduce human-bear conflicts while protecting and rewilding their habitat. Take a hike through the Central Apennines <a href=\"https://www.exodus.co.uk/trips/italy-holidays/walking/rewilding-apennines/tir\"><strong>with Exodus Travels</strong></a>, and you’ll help rewild 100 square metres of land just by booking your trip.</p><h2>Boost Dalmation pelican numbers in Lake Skadar, Montenegro</h2><p>Surrounded by dramatic karst mountains, the calm waters of Lake Skadar straddle <a href=\"https://www.euronews.com/travel/tag/montenegro\"><strong>Montenegro</strong></a> and Albania. They offer some of the best kayaking and wild swimming in Europe.</p><p>It’s also an important breeding ground for one of Europe’s rarest birds: the enormous Dalmatian pelican. This majestic animal has a wingspan of over three and a half metres.</p><p><img src=\"https://static.euronews.com/articles/stories/07/21/38/32/808x454_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg\" alt=\"Sarah Faith\" srcset=\"https://static.euronews.com/articles/stories/07/21/38/32/384x215_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 384w, https://static.euronews.com/articles/stories/07/21/38/32/640x358_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 640w, https://static.euronews.com/articles/stories/07/21/38/32/750x420_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 750w, https://static.euronews.com/articles/stories/07/21/38/32/828x464_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 828w, https://static.euronews.com/articles/stories/07/21/38/32/1080x605_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 1080w, https://static.euronews.com/articles/stories/07/21/38/32/1200x672_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 1200w, https://static.euronews.com/articles/stories/07/21/38/32/1920x1075_cmsv2_a7b8aa2f-ca59-584b-889f-ee393ef6c6eb-7213832.jpg 1920w\" sizes=\"100vw\"><i>Kayaking on Lake Skadar, Montenegro.Sarah Faith</i></p><p>Tourism businesses here are working with the Lake Skadar National Park and CZIP (a Montenegrin bird protection charity). They are funding the installation and maintenance of artificial breeding platforms to boost the number of nesting birds.</p><p>And it’s working. Dalmatian pelican numbers on Lake Skadar have almost doubled over the last five years, with estimates that the lake’s natural <a href=\"https://www.euronews.com/tag/biodiversity\"><strong>biodiversity</strong></a> could support many, many more.</p><p>Swim, kayak, hike, and explore on a <a href=\"https://www.responsibletravel.com/holiday/3412/activity-holiday-in-montenegro\"><strong>Lake Skadar family activity holiday</strong></a> and help continue the work to protect the pelican’s breeding sites.</p>', 1, 7, 29, '20221213125257.jpg', '2022-12-13 17:52:57', '2022-12-16 09:26:35'),
(23, 1, 'Flights to and from the UK face continued disruption due to snow', 'Flights to and from the UK face continued disruption due to snow', 'flights-to-and-from-the-uk-face-continued-disruption-due-to-snow', '<p>The new trains are able to switch from the metre-gauge track of the MOB to the Swiss standard gauge by adjusting the distance between their wheels.</p><p>Variable gauge mechanisms are nothing new - <a href=\"https://www.euronews.com/travel/2022/10/04/spain-short-and-medium-distance-trains-will-be-free-this-autumn-thanks-to-a-windfall-tax\"><strong>Spanish</strong></a> Talgo trains have been using them for decades - but the GPX trains stretch further, and are the first to shift between these two types of gauges. And they have another feature which makes them a world first, says MOB.</p><p>Complex trucks beneath each carriage are able to raise the height of the body to meet the higher platforms of the stations between Zweisimmen and Interlaken - which are on the Bern Lotschberg Simplon (BLS), <a href=\"https://www.euronews.com/travel/2022/08/24/is-pump-tourism-a-new-travel-trend-more-swiss-cars-spotted-filling-up-in-france\"><strong>Switzerland</strong></a>\'s largest private railway.</p><p><img src=\"https://static.euronews.com/articles/stories/07/24/62/42/808x603_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg\" alt=\"©David Bochud\" srcset=\"https://static.euronews.com/articles/stories/07/24/62/42/384x288_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 384w, https://static.euronews.com/articles/stories/07/24/62/42/640x480_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 640w, https://static.euronews.com/articles/stories/07/24/62/42/750x563_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 750w, https://static.euronews.com/articles/stories/07/24/62/42/828x621_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 828w, https://static.euronews.com/articles/stories/07/24/62/42/1080x810_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 1080w, https://static.euronews.com/articles/stories/07/24/62/42/1200x900_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 1200w, https://static.euronews.com/articles/stories/07/24/62/42/1920x1440_cmsv2_4402bbfc-2157-5ca9-9cdb-89106852b8ca-7246242.jpg 1920w\" sizes=\"100vw\"><i>Passengers can sit back and enjoy panoramic views without worrying about the connection.©David Bochud</i></p><p>In a matter of seconds, the coach elevates from 350mm to 550mm.</p><p>Swiss train builder Stadler and French multinational transport giant Alstom partnered to create 23 vehicles costing €88.8 million in total. Italian design studio Pininfarina - the maker of Ferrari, Peugeot and <a href=\"https://www.euronews.com/travel/2022/12/01/eurostar-trains-will-be-severely-affected-by-strikes-this-december-union-warns\"><strong>Eurosta</strong></a>r’s iconic exterior colour scheme - also collaborated on the new look.</p><p>The GoldenPass Express “has been desired for more than a hundred years” says MOB, dating the idea back to 1873.</p><p>The dream was revived at numerous points throughout the 20th century, but was stalled by technical and financial obstacles.</p>', 1, 7, 8, '20221213125415.jpg', '2022-12-13 17:54:15', '2022-12-16 07:41:11'),
(24, 1, 'Flight delayed or cancelled due to snow or strikes? Your compensation rights explained', 'Flight delayed or cancelled due to snow or strikes? Your compensation rights explained', 'flight-delayed-or-cancelled-due-to-snow-or-strikes-your-compensation-rights-explained', '<p>You are still entitled to the choice if the cancellation happens after the aircraft took off but was forced to return to the airport of departure.</p><p>If you accept rerouting it is no longer considered a cancellation, but a delay.&nbsp;Don’t forget that you can choose the date; you do not have to take the earliest possible journey.&nbsp;</p><p>Airlines are also required to give you a choice when reimbursing you between cash or a voucher.</p><p><img src=\"https://static.euronews.com/articles/stories/06/83/91/48/808x539_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg\" alt=\"AP Photo/Frank Augstein, File\" srcset=\"https://static.euronews.com/articles/stories/06/83/91/48/384x257_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 384w, https://static.euronews.com/articles/stories/06/83/91/48/640x429_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 640w, https://static.euronews.com/articles/stories/06/83/91/48/750x503_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 750w, https://static.euronews.com/articles/stories/06/83/91/48/828x555_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 828w, https://static.euronews.com/articles/stories/06/83/91/48/1080x724_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 1080w, https://static.euronews.com/articles/stories/06/83/91/48/1200x804_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 1200w, https://static.euronews.com/articles/stories/06/83/91/48/1920x1286_cmsv2_5e7f032a-bef3-5c93-8492-71d9a1376df1-6839148.jpg 1920w\" sizes=\"100vw\"><i>Travellers queue at security at Heathrow Airport in London, Wednesday, June 22, 2022.AP Photo/Frank Augstein, File</i></p><h2>What if my flight is delayed?</h2><p>You have slightly different rights if your <a href=\"https://www.euronews.com/travel/2022/06/23/why-you-shouldn-t-arrive-too-early-for-your-flight-and-more-expert-advice-to-beat-airport-\"><strong>flight is delayed</strong></a> and some of them depend on the duration of the delay and the distance of your trip.&nbsp;</p><p>You have the right to assistance when the delay is at least two hours at departure, and to reimbursement and a return flight when the delay is at least five hours.</p><p>If your flight is delayed at departure by two hours for journeys of less than 1,500km long, three hours for flights between 1,500 and 3,000km or four hours on any other flight, then you have the right to additional assistance.&nbsp;</p><p>The airline must offer you meals, refreshments, <a href=\"https://www.euronews.com/travel/2022/09/13/airbnb-vs-hotel-which-is-cheaper-that-depends-on-group-size-length-of-stay-and-amenities\"><strong>accommodation</strong></a> and transfers to accommodation if needed.&nbsp;You also have the right to free telephone calls, emails or, yes, faxes.</p><p>If you have to pay for any of these, the airline should reimburse you - just remember to keep the receipts.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/07/08/spain-italy-france-the-latest-covid-rules-if-you-test-positive-while-on-holiday-in-europe\"><strong>Italy, Greece, Spain: The latest COVID rules if you test positive while travelling in Europe</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/11/28/portugal-spain-and-greece-welcome-energy-migrants-with-promise-of-warm-weather-and-low-bil\"><strong>Portugal, Spain and Greece welcome energy migrants with promise of warm weather and low bills</strong></a></li></ul><h2>What can I do if my flight is overbooked?</h2><p>If you are denied boarding because your flight has been overbooked then you have a few options.&nbsp;</p><p>If you presented yourself on time and had a valid ticket but were denied boarding because the flight was overbooked or for operational reasons, you have the right to compensation and assistance from the <a href=\"https://www.euronews.com/travel/2022/07/12/ba-easyjet-turkish-airlines-which-european-airlines-are-cancelling-the-most-flights-this-s\"><strong>airline</strong></a>.&nbsp;</p><p>You also have a choice between reimbursement, rerouting, or rebooking for a later flight - the same as if your flight is cancelled.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/12/09/heres-what-balis-digital-nomads-think-of-new-law-banning-sex-before-marriage\"><strong>Here’s what Bali’s digital nomads think of new law banning sex before marriage</strong></a></li></ul><h2>Can I get compensation if my flight is cancelled?</h2><p>If your flight is cancelled less than 14 days before the scheduled departure date you could be entitled to compensation.</p><p>This amounts to €250 per person for flights of 1,500km or less, and €400 for flights between 1,500 and 3,500km.&nbsp;For all <a href=\"https://www.euronews.com/travel/tag/flight\"><strong>flights</strong></a> longer than 3,500km, it’s&nbsp;€600.</p><p>It also means that if two weeks prior to your trip you do not get a notification to say it has been cancelled, the chances that your flight will take off are higher.&nbsp;</p><p>You could also be entitled to compensation if you arrive at your destination with more than a three hour delay. Like with cancellations, the amount depends on the flight distance.&nbsp;</p><p><img src=\"https://static.euronews.com/articles/stories/06/76/63/64/808x539_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg\" alt=\"FRANCOIS WALSCHAERTS/AFP\" srcset=\"https://static.euronews.com/articles/stories/06/76/63/64/384x257_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 384w, https://static.euronews.com/articles/stories/06/76/63/64/640x429_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 640w, https://static.euronews.com/articles/stories/06/76/63/64/750x503_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 750w, https://static.euronews.com/articles/stories/06/76/63/64/828x555_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 828w, https://static.euronews.com/articles/stories/06/76/63/64/1080x724_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 1080w, https://static.euronews.com/articles/stories/06/76/63/64/1200x804_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 1200w, https://static.euronews.com/articles/stories/06/76/63/64/1920x1286_cmsv2_715d8e01-2c76-51be-9946-8ca6579d1872-6766364.jpg 1920w\" sizes=\"100vw\"><i>A flight information board shows cancelled flights due to a strike on June 20, 2022 at Brussels International Airport.FRANCOIS WALSCHAERTS/AFP</i></p><h2>Which flights can I get compensation for?</h2><p>Whether you are protected by <a href=\"https://www.euronews.com/travel/2022/12/09/croatia-the-land-of-1000-islands-visit-2022\"><strong>EU</strong></a> regulations depends on a number of factors but it might not be as clear-cut as you think.</p><p>EU Regulations apply when:</p><ul><li>Your flight is within the EU, no matter what airline operates it</li><li>Your flight arrives in the EU from outside and is operated by an EU airline</li><li>Your flight departs from the EU, no matter what airline operates it</li></ul><p>For any kind of complaint or claim to be successful, it\'s essential that it wasn’t your fault that you couldn’t get on the flight. Make sure you arrive at at the airport at least two hours before the departure time and have a valid ticket and confirmed reservation.&nbsp;</p>', 1, 6, 10, '20221213125515.jpg', '2022-12-13 17:55:15', '2022-12-16 15:47:04'),
(25, 1, 'Here’s what Bali’s digital nomads think of new law banning sex before marriage', 'Here’s what Bali’s digital nomads think of new law banning sex before marriage', 'heres-what-balis-digital-nomads-think-of-new-law-banning-sex-before-marriage', '<p>Indonesia has long been the destination of choice for <a href=\"https://www.euronews.com/travel/2022/12/01/always-wanted-to-move-to-spain-a-new-digital-nomad-visa-could-let-you-stay-for-5-years\"><strong>digital nomads</strong></a> - those who take advantage of remote working to head to another country.</p><p>The community has had mixed reactions to the new laws.</p><p>While some fear an “assault on bodily autonomy”, others accuse the media of sensationalizing the story.</p><h2>Some believe the ban won\'t be actively enforced</h2><p>However, other <a href=\"https://www.euronews.com/travel/2022/11/11/vilnius-is-europes-next-big-digital-nomad-destination-heres-what-you-need-to-know\"><strong>digital nomads</strong></a> were blasè about it, insisting that it was political performance that would not be actively enforced.</p><p>“It won’t affect them [<a href=\"https://www.euronews.com/travel/2022/11/13/brazils-first-digital-nomad-village-opens-this-month-heres-why-you-should-go\"><strong>digital nomads</strong></a>] that much,” said long time expatriate David Carrol.</p><p>“I\'ve experienced a similar cohabitation law in <a href=\"https://www.euronews.com/travel/2022/05/09/dive-into-the-world-s-largest-cave-in-the-heart-of-the-vietnamese-rainforest\"><strong>Vietnam</strong></a> which was thrown out due to being too hard to enforce. People will just be more discreet.</p><p>“Where there\'s a will, there\'s a way.”</p><p>Others pointed out that the law requires direct family members to press charges against the individuals concerned.</p><p>“A) Only direct family members can press charges and B) the new law takes effect in 3 years from now and C) it is not even signed yet,” said Indra Devine.</p><p>At least five remote workers accused the ‘media’ of “overhyping” the story.</p><p><img src=\"https://static.euronews.com/articles/stories/07/24/15/04/808x454_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg\" alt=\"AFP\" srcset=\"https://static.euronews.com/articles/stories/07/24/15/04/384x215_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 384w, https://static.euronews.com/articles/stories/07/24/15/04/640x358_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 640w, https://static.euronews.com/articles/stories/07/24/15/04/750x420_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 750w, https://static.euronews.com/articles/stories/07/24/15/04/828x464_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 828w, https://static.euronews.com/articles/stories/07/24/15/04/1080x605_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 1080w, https://static.euronews.com/articles/stories/07/24/15/04/1200x672_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 1200w, https://static.euronews.com/articles/stories/07/24/15/04/1920x1075_cmsv2_9a170b7b-7fa6-52de-9686-b243e63b7f53-7241504.jpg 1920w\" sizes=\"100vw\"><i>This picture taken on December 5, 2022 shows activists holding a protest against the new criminal code outside the parliament building in JakartaAFP</i></p><h2>Will Indonesia’s new law be legally enforced?</h2><p>Under the law, charges can be based only on police reports lodged by a spouse, parents or children.</p><p>In practice, it will be difficult to enforce - millions of <a href=\"https://www.euronews.com/green/2020/08/03/how-big-fat-indian-weddings-are-going-green\"><strong>unmarried</strong></a> couples already live together in Indonesia.</p><p>It will come into effect in three years, when it is signed into law by the president.</p><h2>What other rules are contained in the criminal code?</h2><p>Australian <a href=\"https://www.euronews.com/travel/2022/11/11/ecuador-is-launching-a-digital-nomad-visa-offering-low-cost-of-living-and-good-quality-of-\"><strong>digital nomad</strong></a> Sara Clark said that the attention attracted by the sex ban was obscuring the most dangerous parts of the law.</p><p>“This isn’t just about the marriage thing, which will be hard to enforce - particularly for tourists,” she said.</p><p>“It’s more about what it means for Indonesian democracy.”</p><p>The extramarital sex ban is not the only conservative rule included in the new penal code. The promotion of <a href=\"https://www.euronews.com/green/2021/11/04/is-your-sex-life-ruining-the-planet\"><strong>contraception</strong></a> is illegal, and abortion is a crime (with exceptions for women with life-threatening medical conditions and for rape, provided that the foetus is less than 12 weeks old). This is in line with the country’s existing regulation.</p><p>Rights activists have been troubled by the restoration of a ban on insulting a sitting president and vice-president, state institutions or national ideology.</p><p>This reinstates an old law annulled by Indonesia’s top court in 2006 - and makes offences punishable by up to three years in jail.</p>', 1, 7, 2, '20221214073941.jpg', '2022-12-14 12:39:41', '2022-12-16 16:22:22'),
(26, 1, '\'Twin Peaks\' and David Lynch film composer Angelo Badalamenti dies at 85', '\'Twin Peaks\' and David Lynch film composer Angelo Badalamenti dies at 85', 'twin-peaks-and-david-lynch-film-composer-angelo-badalamenti-dies-at-85', '<p>Angelo Badalamenti, the composer best known for creating otherworldly scores for many of David Lynch\'s films, from&nbsp;<i>Blue Velvet</i> and <i>Twin Peaks</i> to <i>Mulholland Drive</i>, has died. He was 85.</p><p>He died on Sunday (11 December 2022) of natural causes, surrounded by family at his New Jersey home.&nbsp;</p><h2>Musical beginnings</h2><p><img src=\"https://static.euronews.com/articles/stories/07/24/71/60/808x577_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg\" alt=\"Chris Pizzello/AP\" srcset=\"https://static.euronews.com/articles/stories/07/24/71/60/384x273_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 384w, https://static.euronews.com/articles/stories/07/24/71/60/640x454_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 640w, https://static.euronews.com/articles/stories/07/24/71/60/750x533_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 750w, https://static.euronews.com/articles/stories/07/24/71/60/828x588_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 828w, https://static.euronews.com/articles/stories/07/24/71/60/1080x767_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 1080w, https://static.euronews.com/articles/stories/07/24/71/60/1200x852_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 1200w, https://static.euronews.com/articles/stories/07/24/71/60/1920x1363_cmsv2_ef207d94-0f65-59b5-9b43-37ec4cf74e25-7247160.jpg 1920w\" sizes=\"100vw\"><i>Angelo Badalamenti performs at the David Lynch Foundation Music Celebration at the Theatre at Ace Hotel on April 1, 2015Chris Pizzello/AP</i></p><p>Born in Brooklyn, New York in March 1937 to a fish market owner father with a musical background (a percussionist in Sicily), Badalamenti grew up listening to Italian opera with his family, started piano lessons at age 8 and went on to earn a bachelor’s and master’s degree from the Manhattan School of Music.&nbsp;</p><p>After college he taught middle school. He composed a Christmas carol for his students that ended up on the US Public Broadcasting Service and essentially launched his career in entertainment, where he wrote songs for Nina Simone (<i>Another Spring</i>) and Nancy Wilson (<i>Face It Girl, It’s Over</i>).&nbsp;</p><p>&nbsp;</p><p>He also wrote songs for films such as&nbsp;<i>Gordon’s War</i> and <i>Law and Disorder</i> but his big break came in 1986 when, through a series of industry connections starting with unit manager Peter Runfolo, he was asked to help Isabella Rossellini sing <i>Blue Velvet</i> for iconic American director David Lynch’s film.</p><p>“They were shooting down in North Carolina, and so they flew me down to meet with Isabella and to see what I could do. When I got there, we went into a little room with just Isabella and me and a piano. I worked with her for two or three hours straight until we got a good take on a small recorder,” he said in an interview with Culture.org.&nbsp;</p><p>“David was shooting the last scene. We brought him the cassette tape. He put on his earphones and right away said, “That’s the ticket! This is peachy keen!” I had to ask the line producer what peachy keen meant.”</p>', 1, 7, 0, '20221214074121.jpg', '2022-12-14 12:41:21', '2022-12-16 08:05:55'),
(27, 1, 'Golden Globes 2023 nominations: Key takeaways and full list of nominees', 'Golden Globes 2023 nominations: Key takeaways and full list of nominees', 'golden-globes-2023-nominations-key-takeaways-and-full-list-of-nominees', '<p>Fingers crossed for <i>Everything Everywhere All At Once</i>, which deserves every award it receives; and while it would be foolish to bet against Spielberg and his handsomely made but dispiritingly saccharine autobiographical drama <i>The Fabelmans</i>, here’s hoping that the award goes to a more deserving film.&nbsp;</p><p>But considering Hollywood\'s boundless love for itself, you can bet it won’t go home empty handed.</p><p><img src=\"https://static.euronews.com/articles/stories/07/24/62/46/808x462_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg\" alt=\"Searchlight Pictures\" srcset=\"https://static.euronews.com/articles/stories/07/24/62/46/384x219_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 384w, https://static.euronews.com/articles/stories/07/24/62/46/640x365_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 640w, https://static.euronews.com/articles/stories/07/24/62/46/750x427_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 750w, https://static.euronews.com/articles/stories/07/24/62/46/828x472_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 828w, https://static.euronews.com/articles/stories/07/24/62/46/1080x616_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 1080w, https://static.euronews.com/articles/stories/07/24/62/46/1200x684_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 1200w, https://static.euronews.com/articles/stories/07/24/62/46/1920x1094_cmsv2_d6985261-486a-54d1-b987-15a997e24a33-7246246.jpg 1920w\" sizes=\"100vw\"><i>The Banshees of Inisherin leads the nominations for the 2023 Golden GlobesSearchlight Pictures</i></p><h2><strong>Notable snubs</strong></h2><p>Where are Keke Palmer and Stephanie Hsu, who both merited nods for their show-stopping performances, respectively in Jordan Peele\'s&nbsp;<a href=\"https://www.euronews.com/culture/2022/08/18/jordan-peeles-nope-or-the-art-of-the-audacious-on-screen-alien\"><i><strong>Nope</strong></i></a> and the aforementioned (and still brilliant) <i>Everything Everywhere All At Once</i>?</p><p>On that note…</p><h2><strong>Women, anyone?</strong></h2><p>No women are in the running for Best Director this year, and none of the 10 Best Picture nominees are directed by a woman.</p><p>This is somewhat baffling considering critically acclaimed films this year from Gina Prince-Bythewood (<a href=\"https://www.euronews.com/culture/2022/10/29/film-review-the-woman-king-if-you-only-see-one-movie-this-year-make-it-this\"><i><strong>The Woman King</strong></i></a>), Chinonye Chukwu (<i>Till</i>) and Sarah Polley (<i>Women Talking</i>).</p><p>Still, it shouldn’t come as a complete surprise, as only nine women have been up for Best Director in the Globes’ 80-year history, and only three have won: Barbra Streisand for <i>Yentl</i> in 1983, Chloé Zhao for <i>Nomadland</i> in 2020 and Jane Campion for <i>The Power of the Dog</i>&nbsp;last year.</p><p>Let’s all remind ourselves of this moment in 2018 courtesy of Natalie Portman:</p>', 1, 7, 0, '20221214074208.jpg', '2022-12-14 12:42:08', '2022-12-16 08:06:31');
INSERT INTO `posts` (`id`, `user_id`, `title`, `meta_title`, `slug`, `content`, `is_published`, `category_id`, `reads`, `featured_image`, `created_at`, `updated_at`) VALUES
(28, 1, 'European Minority Languages: Is Basque the most unique language in Europe?', 'European Minority Languages: Is Basque the most unique language in Europe?', 'european-minority-languages-is-basque-the-most-unique-language-in-europe', '<p>Schouten grew up in Iowa but learned Spanish as a child. When he chose to study the language at university, he had the opportunity to travel to Spain as part of his studies.</p><p>A professor with an interest in the Basque region convinced him that he should apply to an <a href=\"https://www.euronews.com/culture/tag/education\"><strong>exchange programme</strong></a> there. In 1990 he moved to the region for a year.</p><p>That year kickstarted a lifelong fascination with the language.</p><p>Basque’s resilience to survive millennia is particularly mysterious. Schouten’s theory lies in the region’s geography.</p><p><img src=\"https://static.euronews.com/articles/stories/06/88/87/28/808x454_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/88/87/28/384x215_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 384w, https://static.euronews.com/articles/stories/06/88/87/28/640x358_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 640w, https://static.euronews.com/articles/stories/06/88/87/28/750x420_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 750w, https://static.euronews.com/articles/stories/06/88/87/28/828x464_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 828w, https://static.euronews.com/articles/stories/06/88/87/28/1080x605_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 1080w, https://static.euronews.com/articles/stories/06/88/87/28/1200x672_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 1200w, https://static.euronews.com/articles/stories/06/88/87/28/1920x1075_cmsv2_6dbbbcea-572f-5f2a-b46b-796cc6441207-6888728.jpg 1920w\" sizes=\"100vw\"><i>Mundaka port in Basque countryCanva</i></p><p>The Basque country spreads from the ocean up into the mountains of the Pyrenees.</p><p>“If the Basques ever had any conflict on the coast, they could just disappear inland into the mountains, and protect their culture and language that way,” Schouten suggests.</p><p>“The Basques in general, as a culture, just like many of the North versus South differences in many countries, tend to be a little bit more closed to external influence, a little bit more difficult to break into socially. I think that\'s probably the sort of stubbornness that\'s aided them over the centuries and maintaining their cultures and traditions,” he adds.</p><h2>Defying censorship</h2><p>That stubbornness has been particularly necessary through eras of active suppression of the language.</p><p>The use of Basque was heavily suppressed during the Franco dictatorship in the 20th century. Under Franco, it was illegal to teach the language and people were fined for speaking in it.</p><p>The suppression was eased after the 60s when a standard official Basque was established, but it’s still a big reason for a lack of speakers today.</p><p>While Franco did his best to extinguish the language, it has grown in the years since his fall. Schouten, who first visited in the 90s, has noticed a distinct increase in its use.</p><p>“I can see a continued renaissance of the language and how almost all the children are speaking it with each other now, and that didn\'t used to be the case,” he says.</p><p><img src=\"https://static.euronews.com/articles/stories/06/88/87/28/808x454_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/88/87/28/384x215_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 384w, https://static.euronews.com/articles/stories/06/88/87/28/640x358_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 640w, https://static.euronews.com/articles/stories/06/88/87/28/750x420_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 750w, https://static.euronews.com/articles/stories/06/88/87/28/828x464_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 828w, https://static.euronews.com/articles/stories/06/88/87/28/1080x605_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 1080w, https://static.euronews.com/articles/stories/06/88/87/28/1200x672_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 1200w, https://static.euronews.com/articles/stories/06/88/87/28/1920x1075_cmsv2_e52586ac-50cd-5f45-8d52-dd5c24bfdd80-6888728.jpg 1920w\" sizes=\"100vw\"><i>Landscape in the Basque countryCanva</i></p><p>One of the biggest hurdles to new learners is that it is a particularly difficult language to learn. For Spanish people who may be used to learning other Latin or Germanic languages, there are very few crutches to lean on in the learning process.</p><p>It’s why schools like Maizpide in Lazkao, where Schouten trained, offer adult education, but there’s still not a full takeup from the locals.</p><ul><li><a href=\"https://www.euronews.com/culture/2022/07/15/european-minority-languages-meet-the-radio-host-trying-to-keep-cornish-alive\"><strong>European Minority Languages: Meet the radio host trying to keep Cornish alive</strong></a></li><li><a href=\"https://www.euronews.com/culture/2022/04/07/cambridge-scholar-cites-taylor-swift-lyrics-as-a-great-way-to-learn-latin\"><strong>Cambridge scholar cites Taylor Swift lyrics as a great way to learn Latin</strong></a></li></ul><h2>A unique national identity</h2><p>The tragedy of locals not learning the language is the importance of the unique tongue to Basque identity.</p><p>Every nation or <a href=\"https://www.euronews.com/culture/tag/minority-rights\"><strong>cultural identity</strong></a> is signified by something, Schouten says. “To be English, you have to have an English passport or have English parents. To be French you have to have French blood. To be Swiss, you have to be accepted by the community in which you live.”</p><p>But in Basque country, it’s all about the language. The ability to speak Basque is what makes you a member of the Basque culture, which is why Schouten felt such a warm reception when he came to the region.</p><p>Part of what makes the language unique is its use of grammatical case, especially the ergative case.</p><p>The word for a Basque person is “Euskaldun”, which literally translates to “one who has the Basque language”.</p><p>The word breaks down to “Euskal” which means “the Basque language”, “du” which is “have”, and “n” which means “person/thing”.</p><p>The language is an official language alongside Spanish in the Basque Autonomous Community as well as in Navarre. But it isn’t recognised as an official language in France.</p><p><img src=\"https://static.euronews.com/articles/stories/06/88/87/28/808x454_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/88/87/28/384x215_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 384w, https://static.euronews.com/articles/stories/06/88/87/28/640x358_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 640w, https://static.euronews.com/articles/stories/06/88/87/28/750x420_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 750w, https://static.euronews.com/articles/stories/06/88/87/28/828x464_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 828w, https://static.euronews.com/articles/stories/06/88/87/28/1080x605_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 1080w, https://static.euronews.com/articles/stories/06/88/87/28/1200x672_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 1200w, https://static.euronews.com/articles/stories/06/88/87/28/1920x1075_cmsv2_2f4a769c-0af2-5c4e-82c1-2c52cfe35549-6888728.jpg 1920w\" sizes=\"100vw\"><i>Basque national flagCanva</i></p><p>The importance of the language to the culture also meant that after Franco more violence followed.</p><p>ETA, or Euskadi Ta Askatasuna (Basque Homeland and Liberty), was a paramilitary group which wanted independence for the Basque country. Formed in 1959, they committed terrorist attacks including bombings and assassinations.</p><p>In 2018, ETA officially disbanded, but there are still more than 260 imprisoned members of the group, mostly in Spain and France.</p><p>“I think the terrorism in the Basque Country, although ostensibly there to defend the language and the culture, among other political agendas they had, probably drove a lot of people away from the language, as well,” Schouten says.</p><p><img src=\"https://static.euronews.com/articles/stories/06/88/87/28/808x454_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg\" alt=\"AP Photo\" srcset=\"https://static.euronews.com/articles/stories/06/88/87/28/384x215_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 384w, https://static.euronews.com/articles/stories/06/88/87/28/640x358_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 640w, https://static.euronews.com/articles/stories/06/88/87/28/750x420_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 750w, https://static.euronews.com/articles/stories/06/88/87/28/828x464_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 828w, https://static.euronews.com/articles/stories/06/88/87/28/1080x605_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 1080w, https://static.euronews.com/articles/stories/06/88/87/28/1200x672_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 1200w, https://static.euronews.com/articles/stories/06/88/87/28/1920x1075_cmsv2_9d439ea4-b73f-5e3a-818c-e8cb411320c9-6888728.jpg 1920w\" sizes=\"100vw\"><i>Masked members of the militant Basque separatist group ETA raise their fists as they declare a permanent cease-fire in a video distributed to Spanish media Jan. 10, 2011AP Photo</i></p><p>“I had my own identity crisis with Basque in April of 1991, when about 20 metres away from me a car bomb that went off and killed a 17 year old girl.”</p><p>“I saw her die. And it really made me ask myself the question, ‘if this culture chooses to defend itself this way, is this something I\'m really interested in?’ And I came to the conclusion that these weren\'t the defenders of the people, they were the enemies of the people,” he continues.</p><p>“The ceasefire that was declared was, I think, a pivotal moment of not only joy and peace, but also development of the culture that it can move ahead in peace,” Schouten says.</p><p><img src=\"https://static.euronews.com/articles/stories/06/88/87/28/808x454_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg\" alt=\"Christopher Schouten\" srcset=\"https://static.euronews.com/articles/stories/06/88/87/28/384x215_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 384w, https://static.euronews.com/articles/stories/06/88/87/28/640x358_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 640w, https://static.euronews.com/articles/stories/06/88/87/28/750x420_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 750w, https://static.euronews.com/articles/stories/06/88/87/28/828x464_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 828w, https://static.euronews.com/articles/stories/06/88/87/28/1080x605_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 1080w, https://static.euronews.com/articles/stories/06/88/87/28/1200x672_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 1200w, https://static.euronews.com/articles/stories/06/88/87/28/1920x1075_cmsv2_917cce85-532f-56fd-a622-96597f502625-6888728.jpg 1920w\" sizes=\"100vw\"><i>Christopher Schouten and his husband on their most recent trip to the Basque CountryChristopher Schouten</i></p><p>All of Schouten’s adoration for the Basque country, its culture and its language was reaffirmed when he returned last week. As an outsider who’s learned the language, he was celebrated and featured in local papers.</p><p>While Schouten has travelled the world and has a command of French, Spanish, Dutch and Japanese, it’s Basque that remains his greatest fixation. When he eventually retires, he intends to move to the region with his husband.&nbsp;</p>', 1, 7, 0, '20221214074405.jpg', '2022-12-14 12:44:06', '2022-12-16 08:05:58'),
(29, 1, 'Here are the destinations in Europe paying digital nomads to work there', 'Here are the destinations in Europe paying digital nomads to work there', 'here-are-the-destinations-in-europe-paying-digital-nomads-to-work-there', '<p>The town of Ponga, Asturias is granting families €3,000 to help them settle in, plus an additional €3,000 for each new baby born in the area. It is adorned with intricate rural churches displaying art dating back to the 17th century and has a population of less than 600 people.</p><h2>pain: tiny towns in Galicia and Asturias</h2><p><img src=\"https://static.euronews.com/articles/stories/06/00/97/70/1280x719_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/00/97/70/384x215_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 384w, https://static.euronews.com/articles/stories/06/00/97/70/640x358_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 640w, https://static.euronews.com/articles/stories/06/00/97/70/750x420_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 750w, https://static.euronews.com/articles/stories/06/00/97/70/828x464_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 828w, https://static.euronews.com/articles/stories/06/00/97/70/1080x605_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 1080w, https://static.euronews.com/articles/stories/06/00/97/70/1200x672_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 1200w, https://static.euronews.com/articles/stories/06/00/97/70/1920x1075_cmsv2_d21789eb-d004-5f9d-82f9-cd203d8f88d8-6009770.jpg 1920w\" sizes=\"100vw\"><i>Get paid to soak up the views of the Iberian Peninsula in Rubiá, GaliciaCanva</i></p><p>Swathes of Spaniards are abandoning the country’s traditional pueblos (villages) in favour of larger cities.</p><p>And local governments have concluded that the best way to bring people back is to offer a financial incentive.</p><p>The town of Ponga, Asturias is granting families €3,000 to help them settle in, plus an additional €3,000 for each new baby born in the area. It is adorned with intricate rural churches displaying art dating back to the 17th century and has a population of less than 600 people.</p><p>Another is Rubiá, tucked away in the mountains of Galicia. If the gorgeous views of the Iberian peninsula aren’t enough to draw you in, the local township supplementing your income with an extra €100-150 per month might be.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/01/31/spain-is-launching-a-digital-nomad-visa-but-where-should-you-stay\"><strong>Spain\'s new law will allow visitors to live and work there for up to 3 years</strong></a></li></ul><h2>Ireland: the entire country</h2><p><img src=\"https://static.euronews.com/articles/stories/06/00/97/70/1280x719_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg\" alt=\"Canva\" srcset=\"https://static.euronews.com/articles/stories/06/00/97/70/384x215_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 384w, https://static.euronews.com/articles/stories/06/00/97/70/640x358_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 640w, https://static.euronews.com/articles/stories/06/00/97/70/750x420_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 750w, https://static.euronews.com/articles/stories/06/00/97/70/828x464_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 828w, https://static.euronews.com/articles/stories/06/00/97/70/1080x605_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 1080w, https://static.euronews.com/articles/stories/06/00/97/70/1200x672_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 1200w, https://static.euronews.com/articles/stories/06/00/97/70/1920x1075_cmsv2_edda3b68-bd2a-576c-b3d3-25cd40486678-6009770.jpg 1920w\" sizes=\"100vw\"><i>Dublin, Ireland has become a hub of business activity for companies big and smallCanva</i></p><p>Fancy starting the next Airbnb, Google, or Paypal? Lots of companies choose Ireland as their European headquarters because of low corporation tax and its links to the EU.</p><p>Digital nomads with a penchant for friendly people, greenery and fresh produce should look no further. The Irish government has designed a scheme for ambitious, well-travelled people looking to follow their lead.</p><p>The criteria for Enterprise Ireland is pretty simple: you’ll need to demonstrate that your company is capable of creating at least 10 jobs and €1 million in sales over the first three years.</p><p>Last year, the scheme awarded over €120 million to start-ups, even throughout the added challenges of COVID-19.</p>', 1, 7, 0, '20221214074552.jpg', '2022-12-14 12:45:52', '2022-12-16 08:06:28'),
(30, 1, 'These are the most underwhelming cities in the world, according to tourists', 'These are the most underwhelming cities in the world, according to tourists', 'these-are-the-most-underwhelming-cities-in-the-world-according-to-tourists', '<p>Prague was the most underwhelming with 3.9 per cent of all reviews mentioning the word using it to describe the Czech capital.</p><p>The city most described as overrated was Da Nang in Vietnam, followed closely by Paris as the city lived up to the syndrome’s name.</p><p><img src=\"https://static.euronews.com/articles/stories/07/25/02/50/808x454_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg\" alt=\"Pexels\" srcset=\"https://static.euronews.com/articles/stories/07/25/02/50/384x215_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 384w, https://static.euronews.com/articles/stories/07/25/02/50/640x358_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 640w, https://static.euronews.com/articles/stories/07/25/02/50/750x420_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 750w, https://static.euronews.com/articles/stories/07/25/02/50/828x464_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 828w, https://static.euronews.com/articles/stories/07/25/02/50/1080x605_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 1080w, https://static.euronews.com/articles/stories/07/25/02/50/1200x672_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 1200w, https://static.euronews.com/articles/stories/07/25/02/50/1920x1075_cmsv2_54d86ffd-4414-57cf-9f3e-fa7bb97db931-7250250.jpg 1920w\" sizes=\"100vw\"><i>Orlando was bumped to the top of the list by reviews complaining about increased costs at theme parks.Pexels</i></p><h2>Which destinations did visitors feel were ‘scams’ or ‘rip-offs’?</h2><p>Orlando also topped the list of ‘rip-off’ destinations with 6.3 per cent of reviews mentioning the phase. <a href=\"https://www.euronews.com/travel/tag/singapore\"><strong>Singapore</strong></a> had the highest proportion of reviews where tourists talked about bad value for money at the attractions on offer.</p><p>But when it came to scams, Marrakech in Morroco claimed the top spot, with more than one in ten of all reviews mentioning scams were about this city.</p><ul><li><a href=\"https://www.euronews.com/travel/2022/12/12/flight-free-travel-switzerlands-high-tech-goldenpass-express-train-can-jump-tracks-and-gro\"><strong>Flight-free travel: Switzerland\'s high-tech GoldenPass Express train can jump tracks and grow taller</strong></a></li><li><a href=\"https://www.euronews.com/travel/2022/12/13/these-stunning-northern-lights-photos-will-take-you-on-a-journey-from-the-arctic-to-new-ze\"><strong>Northern Lights: See some of the best photos of this stunning natural phenomenon</strong></a></li></ul><h2>These cities exceeded travellers\' expectations</h2><p>If you’re looking for somewhere that might surprise you, the study also looked at the places where travellers enjoyed themselves more than they thought they would.</p><p>The top three destinations were all landlocked European cities - maybe tourists have lower expectations for locations away from the beach?</p><p><a href=\"https://www.euronews.com/travel/tag/budapest\"><strong>Budapest</strong></a> was the most pleasantly surprising city according to the reviews, followed by Brussels and Zurich.</p><p><img src=\"https://static.euronews.com/articles/stories/07/25/02/50/808x454_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg\" alt=\"Pixabay\" srcset=\"https://static.euronews.com/articles/stories/07/25/02/50/384x215_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 384w, https://static.euronews.com/articles/stories/07/25/02/50/640x358_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 640w, https://static.euronews.com/articles/stories/07/25/02/50/750x420_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 750w, https://static.euronews.com/articles/stories/07/25/02/50/828x464_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 828w, https://static.euronews.com/articles/stories/07/25/02/50/1080x605_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 1080w, https://static.euronews.com/articles/stories/07/25/02/50/1200x672_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 1200w, https://static.euronews.com/articles/stories/07/25/02/50/1920x1075_cmsv2_79ea07a9-c93b-50cf-b55a-d7ccea9dbbb9-7250250.jpg 1920w\" sizes=\"100vw\"><i>Budapest was the most pleasantly surprising city for tourists.Pixabay</i></p><p>Visitors to Budapest mentioned stunning architecture and the city’s meandering river. More than 96 per cent of reviews the study looked at had positive comments.</p><p><a href=\"https://www.euronews.com/travel/tag/brussels\"><strong>Brussels</strong></a> and Zurich came in only slightly lower at almost exactly 96 per cent of reviews having something good to say about the city.</p><p>Penang in Malaysia was where tourists were most ‘pleasantly surprised’ with what they found. Just over 2 per cent of all the reviews that mentioned this phrase used it to describe the destination.</p>', 1, 11, 9, '20221216031125.jpg', '2022-12-16 08:11:25', '2022-12-16 12:46:12'),
(31, 1, 'Over 100 flights cancelled as freezing rain closes runways', 'Over 100 flights cancelled as freezing rain closes runways', 'over-100-flights-cancelled-as-freezing-rain-closes-runways', '<p>The disruptions follow a week of <a href=\"https://www.euronews.com/travel/2022/12/14/flights-to-and-from-the-uk-face-continued-disruption-due-to-snow-here-are-the-latest-cance\"><strong>chaos</strong></a> at airports across the UK after snow blanketed much of the country.</p><p>Runways at Manchester Airport were shut down on Saturday, followed by closures and flight <a href=\"https://www.euronews.com/travel/2022/12/03/a-full-list-of-the-strikes-set-to-cause-travel-disruption-across-europe-in-december\"><strong>cancellations</strong></a> at London’s Heathrow, Gatwick and Stansted airports on Sunday night and into Monday morning.</p><p>Disruption continued into Wednesday, with at least 75 cancelled flights to and from <a href=\"https://www.euronews.com/travel/2022/11/14/more-than-half-of-tourists-visiting-the-uk-dont-leave-london-heres-what-else-is-on-offer\"><strong>London</strong></a>’s airports affecting more than 10,000 passengers, according to The Independent.</p><figure class=\"image\"><img src=\"http://127.0.0.1:8000/media/773x435_cmsv2_6162f4d2-fe44-5425-9272-8fe025cf5cf0-5881716_1671160368.jpg\"></figure><p>On Wednesday afternoon, 133 flights were cancelled at Munich Airport due to <a href=\"https://www.euronews.com/green/2022/09/01/extreme-weather-climate-change-may-make-hailstones-bigger-research-warns\"><strong>freezing</strong></a> rain.</p><p>Although takeoffs and landings resumed around 6pm on Wednesday, <a href=\"https://www.euronews.com/travel/2022/11/23/northern-uk-airport-ranks-the-worst-for-queues-according-to-consumer-champions-which\"><strong>disruptions</strong></a> have continued into Thursday morning.</p><p>Cancellations this morning include <a href=\"https://www.euronews.com/travel/2022/09/06/lufthansa-pilots-have-threatened-to-strike-again-this-wednesday-and-thursday-over-pay\"><strong>Lufthansa</strong></a> flights between <a href=\"https://www.euronews.com/travel/2022/09/12/oktoberfest-returns-after-a-two-year-break-heres-how-to-make-the-most-of-the-german-beer-f\"><strong>Munich</strong></a> and Basel and Genoa.</p><p>The <a href=\"https://www.euronews.com/travel/tag/germany\"><strong>German</strong></a> airport advises passengers to allow more time for arrival and departure and to check the status of their flights before leaving.</p><figure class=\"image\"><img src=\"http://127.0.0.1:8000/media/773x435_cmsv2_98887ee1-c2a5-588f-aaa3-ada0ad030bf0-6192946_1671160387.jpg\"></figure>', 1, 11, 3, '20221216031315.jpg', '2022-12-16 08:13:15', '2022-12-16 09:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(16, 3),
(16, 7),
(18, 6),
(19, 6),
(20, 6),
(21, 3),
(22, 6),
(23, 6),
(24, 6),
(25, 3),
(26, 7),
(27, 6),
(28, 6),
(29, 3),
(30, 7),
(31, 6),
(15, 7),
(17, 6);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-12-07 10:00:58', '2022-12-07 10:00:58'),
(2, 'writer', 'web', '2022-12-07 10:00:59', '2022-12-07 10:00:59'),
(3, 'user', 'web', '2022-12-07 10:00:59', '2022-12-07 10:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Qqcd7J5rCFqT6K6NthCTejQzWxcQbGfVSOnikanW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3M0Mk9pdTBxOGxJeFlJV1YydW9uR3JSTzVTMXNxUWE2VVNKNlNTeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1671191857);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `content`, `meta_title`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'lifestyle', 'lifestyle is important for all', 'life style good', 'lifestyle', '2022-12-07 13:07:35', '2022-12-07 13:09:09'),
(6, 'Culture', 'Culture', 'Culture', 'culture', '2022-12-09 08:31:46', '2022-12-09 08:31:46'),
(7, 'Featured', 'Featured', 'Featured', 'featured', '2022-12-09 08:41:27', '2022-12-09 08:41:34'),
(8, 'Trending', 'Trending', 'Trending', 'trending', '2022-12-09 08:41:52', '2022-12-09 08:41:52');

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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Nazmul Hasan', 'admin@gmail.com', NULL, '$2y$10$.HsNj9vOa27b6/MbQj/Sm.i2Vgb47hOahUz3ZrcVKqL9AMNoRmSmm', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-07 10:00:59', '2022-12-07 10:00:59'),
(2, 'writer', 'writer@gmail.com', NULL, '$2y$10$8FwGSUbNPQr7cY9Cj6EgNenIP/JQdRbyE9bZTBG06VrtFhpMmuiQO', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-07 10:00:59', '2022-12-07 10:00:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id_index` (`user_id`),
  ADD KEY `posts_reads_index` (`reads`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_images_post_id_index` (`post_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_tag_post_id_index` (`post_id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_images`
--
ALTER TABLE `post_images`
  ADD CONSTRAINT `post_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
