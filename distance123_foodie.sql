-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2021 at 10:00 AM
-- Server version: 10.2.36-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distance123_foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `name`, `shop_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kashif food 2', 3, '2020-04-11 06:39:51', '2020-04-11 06:39:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_products`
--

CREATE TABLE `addon_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `addon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_products`
--

INSERT INTO `addon_products` (`id`, `addon_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 200, '2020-04-11 06:44:03', '2020-04-11 06:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `avatar`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', '8168951077', '$2y$10$2jjr.8MqO30NzQGUOUCKgOBSYIx3584Pq2VpJLJaheRvIhJuATM1u', 'ub77t0QPJbyzoxHeT2i96ebaJmxWuCjLM3izKtdB5SK4xI54fB9JMMRiwgrr', NULL, '2020-06-04 21:21:24', NULL),
(2, 'shoaib', NULL, 'shoaib@gmail.com', '03333681466', '$2y$10$4uFkFfJXYfb7bkCa1JtG7eBQZ6g419dLfU4CfmuSIGGuWTfWtg9Wm', 'hq66lpqojc0Ivd4lnZdDWfH8g9Yfxzw49RyIG2Ny9NJGLcLzPnsS3omxjQbb', '2020-04-14 22:05:10', '2020-04-14 22:05:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_type` enum('stripe','braintree') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `last_four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_addons`
--

CREATE TABLE `cart_addons` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_cart_id` int(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_addons`
--

INSERT INTO `cart_addons` (`id`, `user_cart_id`, `addon_product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 32, 1, 1, '2020-04-11 06:44:34', '2020-04-11 06:44:34', NULL),
(2, 40, 1, 1, '2020-04-11 09:27:42', '2020-04-11 09:27:42', NULL),
(3, 47, 1, 1, '2020-04-11 21:37:17', '2020-04-11 21:37:17', NULL),
(4, 65, 1, 1, '2020-04-21 07:45:11', '2020-04-21 07:45:11', NULL),
(5, 71, 1, 1, '2020-05-27 22:51:56', '2020-05-27 22:52:05', '2020-05-27 22:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `shop_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `shop_id`, `name`, `description`, `position`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 1, 'Appetizer', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(2, 0, 1, 'Meat and Game Birds', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(3, 0, 1, 'Dessert', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(4, 0, 2, 'Burgers', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(5, 0, 2, 'Sandwitch', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(6, 0, 2, 'Snacks', 'special', NULL, 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(7, 0, 3, 'Shrimp Dishes', 'Spicy, sweet and just plain jane good ole homemade shrimp in many ways to curve that growl.', 1, 'enabled', '2020-04-11 00:16:17', '2020-04-18 12:57:50', NULL),
(8, 7, 3, 'Burgers', 'Well done grilled burgers seasoned well and then garnished with all of the sandwich fixings.', 1, 'enabled', '2020-04-11 06:42:10', '2020-04-18 12:55:32', NULL),
(9, 0, 3, 'Chicken and Fish Dishes', 'Different homemade oven baked chicken dishes, with two different ways to have your fish cooked as well.', 1, 'enabled', '2020-04-14 22:14:21', '2020-04-18 12:56:47', NULL),
(10, 0, 5, 'Pizza', 'best Pizza', 1, 'enabled', '2020-05-12 10:33:57', '2020-05-12 10:33:57', NULL),
(11, 0, 6, 'sdf', 'sdf', 1, 'enabled', '2020-06-04 21:47:49', '2020-06-04 21:52:15', '2020-06-04 21:52:15'),
(12, 0, 5, 'Burger', 'Quality Burger', 1, 'enabled', '2020-06-04 22:29:12', '2020-06-04 22:29:12', NULL),
(13, 0, 5, 'Zinger Burger', 'Quality Zinger Burger', 1, 'enabled', '2020-06-04 22:32:09', '2020-06-04 22:45:53', '2020-06-04 22:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE `category_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`id`, `category_id`, `url`, `position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'http://foodapp.distance123.com/storage/categories/UTIEMPQkaI8rdeRPpadMut1VYdLN4OzVcQAb08eF.jpeg', 0, '2020-04-11 00:16:17', '2020-04-11 00:16:17', NULL),
(2, 8, 'http://foodapp.distance123.com/storage/categories/33AOTOGBkEf97pA7hMK0Wq1Dpk1gxGa3LyG8jKrS.jpeg', 0, '2020-04-11 06:42:10', '2020-04-11 06:42:10', NULL),
(3, 9, 'http://foodapp.distance123.com/storage/categories/xA937jHq7gg841Wu3oZ5wiZ0g2QVwSxJGxkFrHcf.jpeg', 0, '2020-04-14 22:14:21', '2020-04-14 22:34:40', NULL),
(4, 10, 'http://foodapp.distance123.com/storage/categories/i9kbOvpQRMprL4iWGM4sWtSDS0RsIW1HH7Qbc1fw.jpeg', 0, '2020-05-12 10:33:57', '2020-05-12 10:33:57', NULL),
(5, 11, 'http://foodapp.distance123.com/storage/categories/iEBLiNDXteeZdvotyVTOnmMvcIoQO1aEHNr8z56m.png', 0, '2020-06-04 21:47:49', '2020-06-04 21:47:49', NULL),
(6, 12, 'http://foodapp.distance123.com/storage/categories/dyx0a0cpbLw1HlRKUJXV2osXodrpfWYJ7JFugy2f.jpeg', 0, '2020-06-04 22:29:12', '2020-06-04 22:29:12', NULL),
(7, 13, 'http://foodapp.distance123.com/storage/categories/SOgTOI646ubZ96Xgu47QVig3obAZN95HEjxGvgdw.webp', 0, '2020-06-04 22:32:10', '2020-06-04 22:32:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'INDIAN', NULL, '2020-04-14 21:48:00', '2020-04-14 21:48:00'),
(2, 'SOUTH INDIAN', NULL, '2020-04-14 21:47:34', '2020-04-14 21:47:34'),
(3, 'BBQ', NULL, '2020-04-14 21:47:12', NULL),
(4, 'Fast Foods', '2020-04-11 00:02:49', '2020-04-11 00:02:49', NULL),
(5, 'Cookies', '2020-04-14 15:06:33', '2020-04-14 15:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cuisine_shop`
--

CREATE TABLE `cuisine_shop` (
  `cuisine_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisine_shop`
--

INSERT INTO `cuisine_shop` (`cuisine_id`, `shop_id`) VALUES
(3, 5),
(4, 5),
(5, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pushes`
--

CREATE TABLE `custom_pushes` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_to` enum('ALL','USERS','PROVIDERS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` enum('ACTIVE','LOCATION','RIDES','AMOUNT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_data` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` int(11) NOT NULL DEFAULT 0,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_transporters`
--

CREATE TABLE `enquiry_transporters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `shop_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 3, '2020-04-11 00:12:31', '2020-04-11 00:12:32', '2020-04-11 00:12:32'),
(2, 3, 3, '2020-04-11 03:28:34', '2020-04-11 06:40:29', '2020-04-11 06:40:29'),
(3, 3, 3, '2020-04-11 06:40:30', '2020-04-12 02:18:42', '2020-04-12 02:18:42'),
(4, 3, 3, '2020-04-14 05:59:43', '2020-04-15 01:03:56', '2020-04-15 01:03:56'),
(5, 4, 8, '2020-04-15 13:56:23', '2020-04-15 13:56:23', NULL),
(6, 3, 3, '2020-04-16 04:14:13', '2020-04-16 04:14:14', '2020-04-16 04:14:14'),
(7, 3, 20, '2020-05-27 22:51:13', '2020-05-27 22:51:15', '2020-05-27 22:51:15'),
(8, 3, 20, '2020-05-27 22:51:17', '2020-05-27 22:51:22', '2020-05-27 22:51:22'),
(9, 5, 21, '2020-05-28 00:13:16', '2020-05-28 00:13:18', '2020-05-28 00:13:18'),
(10, 5, 21, '2020-05-28 00:13:19', '2020-05-28 00:13:19', NULL),
(11, 5, 18, '2020-06-06 07:10:49', '2020-06-06 07:10:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
(3, '2015_08_25_172600_create_settings_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2017_01_11_181312_create_cards_table', 1),
(10, '2017_01_11_182717_create_request_filters_table', 1),
(11, '2017_06_08_123940_create_admins_table', 1),
(12, '2017_06_08_123941_create_admin_password_resets_table', 1),
(13, '2017_06_09_044823_create_shops_table', 1),
(14, '2017_06_09_044824_create_shop_password_resets_table', 1),
(15, '2017_06_09_045212_create_transporters_table', 1),
(16, '2017_06_09_045213_create_transporter_password_resets_table', 1),
(17, '2017_06_09_102917_create_products_table', 1),
(18, '2017_06_09_105225_create_categories_table', 1),
(19, '2017_06_12_064740_create_user_addresses_table', 1),
(20, '2017_06_12_101042_create_orders_table', 1),
(21, '2017_06_12_101114_create_order_invoices_table', 1),
(22, '2017_06_12_101147_create_order_ratings_table', 1),
(23, '2017_06_12_101212_create_order_disputes_table', 1),
(24, '2017_06_12_101446_create_surge_pricings_table', 1),
(25, '2017_06_12_113225_create_notifications_table', 1),
(26, '2017_06_13_124334_create_zones_table', 1),
(27, '2017_06_13_125525_create_transporter_documents_table', 1),
(28, '2017_06_13_130530_create_category_images_table', 1),
(29, '2017_06_15_115211_create_product_images_table', 1),
(30, '2017_06_15_115323_create_product_prices_table', 1),
(31, '2017_06_16_112721_create_user_carts_table', 1),
(32, '2017_06_23_124807_create_oauth_access_token_guards', 1),
(33, '2017_08_03_194354_create_custom_pushes_table', 1),
(34, '2017_09_19_053529_create_cuisines_table', 1),
(35, '2017_09_19_053543_create_documents_table', 1),
(36, '2017_09_19_053556_create_order_dispute_comments_table', 1),
(37, '2017_09_19_053608_create_promocode_usages_table', 1),
(38, '2017_09_19_053619_create_transporter_vehicles_table', 1),
(39, '2017_09_19_053635_create_transporter_shifts_table', 1),
(40, '2017_09_19_053648_create_transporter_shift_timings_table', 1),
(41, '2017_09_19_053659_create_wallet_passbooks_table', 1),
(42, '2017_09_19_110911_create_shop_timings_table', 1),
(43, '2017_09_25_125459_create_transporter_locations_table', 1),
(44, '2017_10_04_130254_create_order_timings_table', 1),
(45, '2017_10_07_103112_create_favorites_table', 1),
(46, '2017_10_12_122111_create_shop_banners_table', 1),
(47, '2017_10_13_062225_create_notice_boards_table', 1),
(48, '2017_10_20_070027_create_order_dispute_helps_table', 1),
(49, '2017_10_21_063643_create_permission_tables', 1),
(50, '2017_11_06_111106_create_addons_table', 1),
(51, '2017_11_08_121819_create_cart_addons_table', 1),
(52, '2017_11_08_133602_create_enquiry_transporters_table', 1),
(53, '2017_11_09_062754_create_addon_products_table', 1),
(54, '2017_11_27_142447_create_restuarants_table', 1),
(55, '2017_11_28_063349_create_newsletters_table', 1),
(56, '2017_12_05_043339_add_delivery_date_to_orders', 1),
(57, '2017_12_06_091412_add_schedule_status_to_orders', 1),
(58, '2018_02_01_105814_create_favourites_table', 1),
(59, '2018_04_26_125520_create_email_template_table', 1),
(60, '2018_05_07_111346_create_promocodes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 1, 'App\\Admin'),
(2, 2, 'App\\Admin');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `transporter_id` int(11) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `transporter_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:26:46', '2020-04-09 06:26:46'),
(2, 1, 0, 'Your order Delivery Otp is 175745', '2020-04-09 06:26:46', '2020-04-09 06:26:46'),
(3, 1, 0, 'Dispute created against order ', '2020-04-09 06:27:23', '2020-04-09 06:27:23'),
(4, 1, 0, 'Dispute created against order ', '2020-04-09 06:27:24', '2020-04-09 06:27:24'),
(5, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:32:44', '2020-04-09 06:32:44'),
(6, 1, 0, 'Your order Delivery Otp is 165106', '2020-04-09 06:32:44', '2020-04-09 06:32:44'),
(7, 1, 0, 'Dispute created against order ', '2020-04-09 06:32:50', '2020-04-09 06:32:50'),
(8, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 06:32:58', '2020-04-09 06:32:58'),
(9, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:35:18', '2020-04-09 06:35:18'),
(10, 1, 0, 'Your order Delivery Otp is 744843', '2020-04-09 06:35:19', '2020-04-09 06:35:19'),
(11, 1, 0, 'Dispute created against order ', '2020-04-09 06:35:23', '2020-04-09 06:35:23'),
(12, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 06:35:25', '2020-04-09 06:35:25'),
(13, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:39:17', '2020-04-09 06:39:17'),
(14, 1, 0, 'Your order Delivery Otp is 388737', '2020-04-09 06:39:17', '2020-04-09 06:39:17'),
(15, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 06:39:35', '2020-04-09 06:39:35'),
(16, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:44:01', '2020-04-09 06:44:01'),
(17, 1, 0, 'Your order Delivery Otp is 262458', '2020-04-09 06:44:01', '2020-04-09 06:44:01'),
(18, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 06:44:26', '2020-04-09 06:44:26'),
(19, 1, 0, 'Your Order Created Successfully', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(20, 1, 0, 'Your order Delivery Otp is 349043', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(21, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 06:47:51', '2020-04-09 06:47:51'),
(22, 0, 1, 'New order request', '2020-04-09 07:00:11', '2020-04-09 07:00:11'),
(23, 1, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-09 07:00:12', '2020-04-09 07:00:12'),
(24, 1, 0, 'Your Order Created Successfully', '2020-04-09 07:05:26', '2020-04-09 07:05:26'),
(25, 1, 0, 'Your order Delivery Otp is 523307', '2020-04-09 07:05:26', '2020-04-09 07:05:26'),
(26, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 07:05:38', '2020-04-09 07:05:38'),
(27, 1, 0, 'Your Order Created Successfully', '2020-04-09 07:11:56', '2020-04-09 07:11:56'),
(28, 1, 0, 'Your order Delivery Otp is 797070', '2020-04-09 07:11:56', '2020-04-09 07:11:56'),
(29, 1, 0, 'Your order Successfully Accepted By restaurant', '2020-04-09 07:12:20', '2020-04-09 07:12:20'),
(30, 1, 0, 'Dispute created against order ', '2020-04-09 07:14:20', '2020-04-09 07:14:20'),
(31, 1, 0, 'Dispute created against order ', '2020-04-09 07:30:37', '2020-04-09 07:30:37'),
(32, 1, 0, 'Dispute created against order ', '2020-04-09 07:35:27', '2020-04-09 07:35:27'),
(33, 1, 0, 'Dispute created against order ', '2020-04-09 07:35:27', '2020-04-09 07:35:27'),
(34, 1, 0, 'Dispute created against order ', '2020-04-09 07:56:42', '2020-04-09 07:56:42'),
(35, 3, 0, 'Your Order Created Successfully', '2020-04-10 23:50:18', '2020-04-10 23:50:18'),
(36, 3, 0, 'Your order Delivery Otp is 623038', '2020-04-10 23:50:18', '2020-04-10 23:50:18'),
(37, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-10 23:50:42', '2020-04-10 23:50:42'),
(38, 0, 2, 'New order request', '2020-04-10 23:50:53', '2020-04-10 23:50:53'),
(39, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-10 23:50:53', '2020-04-10 23:50:53'),
(40, 3, 0, 'Your Order Created Successfully', '2020-04-11 00:44:08', '2020-04-11 00:44:08'),
(41, 3, 0, 'Your order Delivery Otp is 206230', '2020-04-11 00:44:08', '2020-04-11 00:44:08'),
(42, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 00:44:25', '2020-04-11 00:44:25'),
(43, 0, 4, 'New order request', '2020-04-11 00:44:37', '2020-04-11 00:44:37'),
(44, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 00:44:37', '2020-04-11 00:44:37'),
(45, 3, 0, 'Your Order Created Successfully', '2020-04-11 01:18:34', '2020-04-11 01:18:34'),
(46, 3, 0, 'Your order Delivery Otp is 533451', '2020-04-11 01:18:34', '2020-04-11 01:18:34'),
(47, 3, 0, 'Dispute created against order ', '2020-04-11 01:19:35', '2020-04-11 01:19:35'),
(48, 3, 0, 'Your Order Created Successfully', '2020-04-11 01:22:10', '2020-04-11 01:22:10'),
(49, 3, 0, 'Your order Delivery Otp is 361645', '2020-04-11 01:22:10', '2020-04-11 01:22:10'),
(50, 3, 0, 'Dispute created against order ', '2020-04-11 01:23:11', '2020-04-11 01:23:11'),
(51, 3, 0, 'Your Order Created Successfully', '2020-04-11 01:23:50', '2020-04-11 01:23:50'),
(52, 3, 0, 'Your order Delivery Otp is 505035', '2020-04-11 01:23:50', '2020-04-11 01:23:50'),
(53, 3, 0, 'Dispute created against order ', '2020-04-11 01:24:51', '2020-04-11 01:24:51'),
(54, 3, 0, 'Your Order Created Successfully', '2020-04-11 01:25:03', '2020-04-11 01:25:03'),
(55, 3, 0, 'Your order Delivery Otp is 523732', '2020-04-11 01:25:03', '2020-04-11 01:25:03'),
(56, 3, 0, 'Dispute created against order ', '2020-04-11 01:26:06', '2020-04-11 01:26:06'),
(57, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 01:49:39', '2020-04-11 01:49:39'),
(58, 3, 0, 'order.order_ready_user_shop', '2020-04-11 02:00:09', '2020-04-11 02:00:09'),
(59, 0, 4, 'order.order_ready_transporter_shop', '2020-04-11 02:00:09', '2020-04-11 02:00:09'),
(60, 3, 0, 'Your Order Created Successfully', '2020-04-11 02:01:31', '2020-04-11 02:01:31'),
(61, 3, 0, 'Your order Delivery Otp is 149388', '2020-04-11 02:01:31', '2020-04-11 02:01:31'),
(62, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:02:13', '2020-04-11 02:02:13'),
(63, 0, 5, 'New order request', '2020-04-11 02:02:28', '2020-04-11 02:02:28'),
(64, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 02:02:28', '2020-04-11 02:02:28'),
(65, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 02:02:59', '2020-04-11 02:02:59'),
(66, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 02:03:25', '2020-04-11 02:03:25'),
(67, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 02:03:46', '2020-04-11 02:03:46'),
(68, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 02:04:01', '2020-04-11 02:04:01'),
(69, 3, 0, 'Your Order Created Successfully', '2020-04-11 02:09:08', '2020-04-11 02:09:08'),
(70, 3, 0, 'Your order Delivery Otp is 996490', '2020-04-11 02:09:08', '2020-04-11 02:09:08'),
(71, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:09:21', '2020-04-11 02:09:21'),
(72, 0, 5, 'New order request', '2020-04-11 02:09:54', '2020-04-11 02:09:54'),
(73, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 02:09:54', '2020-04-11 02:09:54'),
(74, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 02:10:08', '2020-04-11 02:10:08'),
(75, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 02:10:24', '2020-04-11 02:10:24'),
(76, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 02:10:48', '2020-04-11 02:10:48'),
(77, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 02:11:13', '2020-04-11 02:11:13'),
(78, 3, 0, 'Your Order Created Successfully', '2020-04-11 02:23:02', '2020-04-11 02:23:02'),
(79, 3, 0, 'Your order Delivery Otp is 278111', '2020-04-11 02:23:02', '2020-04-11 02:23:02'),
(80, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:23:14', '2020-04-11 02:23:14'),
(81, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:23:15', '2020-04-11 02:23:15'),
(82, 3, 0, 'Your Order Created Successfully', '2020-04-11 02:28:43', '2020-04-11 02:28:43'),
(83, 3, 0, 'Your order Delivery Otp is 368980', '2020-04-11 02:28:43', '2020-04-11 02:28:43'),
(84, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:28:55', '2020-04-11 02:28:55'),
(85, 3, 0, 'Your Order Id  Status is :status', '2020-04-11 02:29:18', '2020-04-11 02:29:18'),
(86, 0, 5, 'New order request', '2020-04-11 02:30:32', '2020-04-11 02:30:32'),
(87, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 02:30:32', '2020-04-11 02:30:32'),
(88, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 02:30:46', '2020-04-11 02:30:46'),
(89, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 02:30:51', '2020-04-11 02:30:51'),
(90, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 02:30:58', '2020-04-11 02:30:58'),
(91, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 02:31:14', '2020-04-11 02:31:14'),
(92, 3, 0, 'Your Order Id  Status is :status', '2020-04-11 02:34:17', '2020-04-11 02:34:17'),
(93, 3, 0, 'Your Order Id  Status is :status', '2020-04-11 02:34:48', '2020-04-11 02:34:48'),
(94, 3, 0, 'Your Order Created Successfully', '2020-04-11 02:35:32', '2020-04-11 02:35:32'),
(95, 3, 0, 'Your order Delivery Otp is 863234', '2020-04-11 02:35:32', '2020-04-11 02:35:32'),
(96, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 02:35:56', '2020-04-11 02:35:56'),
(97, 0, 5, 'New order request', '2020-04-11 02:36:14', '2020-04-11 02:36:14'),
(98, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 02:36:14', '2020-04-11 02:36:14'),
(99, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 02:36:30', '2020-04-11 02:36:30'),
(100, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 02:36:51', '2020-04-11 02:36:51'),
(101, 3, 0, 'order.order_ready_user_shop', '2020-04-11 02:36:59', '2020-04-11 02:36:59'),
(102, 0, 5, 'order.order_ready_transporter_shop', '2020-04-11 02:36:59', '2020-04-11 02:36:59'),
(103, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 02:37:13', '2020-04-11 02:37:13'),
(104, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 02:37:39', '2020-04-11 02:37:39'),
(105, 3, 0, 'Your Order Id  Status is :status', '2020-04-11 02:38:39', '2020-04-11 02:38:39'),
(106, 3, 0, 'Your Order Created Successfully', '2020-04-11 06:04:40', '2020-04-11 06:04:40'),
(107, 3, 0, 'Your order Delivery Otp is 277878', '2020-04-11 06:04:40', '2020-04-11 06:04:40'),
(108, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 06:05:14', '2020-04-11 06:05:14'),
(109, 0, 4, 'New order request', '2020-04-11 06:05:42', '2020-04-11 06:05:42'),
(110, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 06:05:43', '2020-04-11 06:05:43'),
(111, 3, 0, 'Your Order Id  Status is :status', '2020-04-11 06:08:34', '2020-04-11 06:08:34'),
(112, 3, 0, 'Your Order Created Successfully', '2020-04-11 06:08:54', '2020-04-11 06:08:54'),
(113, 3, 0, 'Your order Delivery Otp is 170350', '2020-04-11 06:08:54', '2020-04-11 06:08:54'),
(114, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 06:09:10', '2020-04-11 06:09:10'),
(115, 0, 5, 'New order request', '2020-04-11 06:09:40', '2020-04-11 06:09:40'),
(116, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 06:09:40', '2020-04-11 06:09:40'),
(117, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 06:09:47', '2020-04-11 06:09:47'),
(118, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 06:09:57', '2020-04-11 06:09:57'),
(119, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 06:10:05', '2020-04-11 06:10:05'),
(120, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 06:10:25', '2020-04-11 06:10:25'),
(121, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:17:17', '2020-04-11 09:17:17'),
(122, 3, 0, 'Your order Delivery Otp is 925770', '2020-04-11 09:17:17', '2020-04-11 09:17:17'),
(123, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:17:28', '2020-04-11 09:17:28'),
(124, 0, 5, 'New order request', '2020-04-11 09:17:42', '2020-04-11 09:17:42'),
(125, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:17:42', '2020-04-11 09:17:42'),
(126, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:17:48', '2020-04-11 09:17:48'),
(127, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:17:56', '2020-04-11 09:17:56'),
(128, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:17:58', '2020-04-11 09:17:58'),
(129, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:18:02', '2020-04-11 09:18:02'),
(130, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:19:58', '2020-04-11 09:19:58'),
(131, 3, 0, 'Your order Delivery Otp is 462614', '2020-04-11 09:19:58', '2020-04-11 09:19:58'),
(132, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:20:09', '2020-04-11 09:20:09'),
(133, 0, 5, 'New order request', '2020-04-11 09:20:16', '2020-04-11 09:20:16'),
(134, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:20:16', '2020-04-11 09:20:16'),
(135, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:20:51', '2020-04-11 09:20:51'),
(136, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:20:54', '2020-04-11 09:20:54'),
(137, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:20:58', '2020-04-11 09:20:58'),
(138, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:21:03', '2020-04-11 09:21:03'),
(139, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:22:22', '2020-04-11 09:22:22'),
(140, 3, 0, 'Your order Delivery Otp is 584598', '2020-04-11 09:22:22', '2020-04-11 09:22:22'),
(141, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:22:36', '2020-04-11 09:22:36'),
(142, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:22:46', '2020-04-11 09:22:46'),
(143, 0, 5, 'New order request', '2020-04-11 09:22:51', '2020-04-11 09:22:51'),
(144, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:22:51', '2020-04-11 09:22:51'),
(145, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:23:00', '2020-04-11 09:23:00'),
(146, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:23:03', '2020-04-11 09:23:03'),
(147, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:23:05', '2020-04-11 09:23:05'),
(148, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:23:10', '2020-04-11 09:23:10'),
(149, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:23:16', '2020-04-11 09:23:16'),
(150, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:23:54', '2020-04-11 09:23:54'),
(151, 3, 0, 'Your order Delivery Otp is 834157', '2020-04-11 09:23:54', '2020-04-11 09:23:54'),
(152, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:24:04', '2020-04-11 09:24:04'),
(153, 0, 5, 'New order request', '2020-04-11 09:24:14', '2020-04-11 09:24:14'),
(154, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:24:14', '2020-04-11 09:24:14'),
(155, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:24:23', '2020-04-11 09:24:23'),
(156, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:24:25', '2020-04-11 09:24:25'),
(157, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:24:27', '2020-04-11 09:24:27'),
(158, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:24:29', '2020-04-11 09:24:29'),
(159, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:24:35', '2020-04-11 09:24:35'),
(160, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:27:51', '2020-04-11 09:27:51'),
(161, 3, 0, 'Your order Delivery Otp is 456972', '2020-04-11 09:27:51', '2020-04-11 09:27:51'),
(162, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:28:05', '2020-04-11 09:28:05'),
(163, 0, 5, 'New order request', '2020-04-11 09:28:09', '2020-04-11 09:28:09'),
(164, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:28:10', '2020-04-11 09:28:10'),
(165, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:28:17', '2020-04-11 09:28:17'),
(166, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:28:19', '2020-04-11 09:28:19'),
(167, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:28:20', '2020-04-11 09:28:20'),
(168, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:28:23', '2020-04-11 09:28:23'),
(169, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:28:27', '2020-04-11 09:28:27'),
(170, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:31:03', '2020-04-11 09:31:03'),
(171, 3, 0, 'Your order Delivery Otp is 864017', '2020-04-11 09:31:03', '2020-04-11 09:31:03'),
(172, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:31:08', '2020-04-11 09:31:08'),
(173, 0, 5, 'New order request', '2020-04-11 09:31:16', '2020-04-11 09:31:16'),
(174, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:31:16', '2020-04-11 09:31:16'),
(175, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:31:25', '2020-04-11 09:31:25'),
(176, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:31:27', '2020-04-11 09:31:27'),
(177, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:31:27', '2020-04-11 09:31:27'),
(178, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:31:29', '2020-04-11 09:31:29'),
(179, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:31:32', '2020-04-11 09:31:32'),
(180, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:31:35', '2020-04-11 09:31:35'),
(181, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:31:41', '2020-04-11 09:31:41'),
(182, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:33:59', '2020-04-11 09:33:59'),
(183, 3, 0, 'Your order Delivery Otp is 434186', '2020-04-11 09:33:59', '2020-04-11 09:33:59'),
(184, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:34:12', '2020-04-11 09:34:12'),
(185, 0, 5, 'New order request', '2020-04-11 09:34:24', '2020-04-11 09:34:24'),
(186, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:34:24', '2020-04-11 09:34:24'),
(187, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:34:31', '2020-04-11 09:34:31'),
(188, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:34:35', '2020-04-11 09:34:35'),
(189, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:34:39', '2020-04-11 09:34:39'),
(190, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:34:44', '2020-04-11 09:34:44'),
(191, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:34:51', '2020-04-11 09:34:51'),
(192, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:39:50', '2020-04-11 09:39:50'),
(193, 3, 0, 'Your order Delivery Otp is 204548', '2020-04-11 09:39:51', '2020-04-11 09:39:51'),
(194, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:40:00', '2020-04-11 09:40:00'),
(195, 0, 4, 'New order request', '2020-04-11 09:40:58', '2020-04-11 09:40:58'),
(196, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-11 09:40:58', '2020-04-11 09:40:58'),
(197, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:41:26', '2020-04-11 09:41:26'),
(198, 3, 0, 'Your order Delivery Otp is 279665', '2020-04-11 09:41:26', '2020-04-11 09:41:26'),
(199, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:41:37', '2020-04-11 09:41:37'),
(200, 3, 0, 'Dispute created against order ', '2020-04-11 09:43:37', '2020-04-11 09:43:37'),
(201, 3, 0, 'Your Order Created Successfully', '2020-04-11 09:51:15', '2020-04-11 09:51:15'),
(202, 3, 0, 'Your order Delivery Otp is 946806', '2020-04-11 09:51:15', '2020-04-11 09:51:15'),
(203, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 09:51:28', '2020-04-11 09:51:28'),
(204, 0, 5, 'You Have One Incoming Request', '2020-04-11 09:52:31', '2020-04-11 09:52:31'),
(205, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 09:52:47', '2020-04-11 09:52:47'),
(206, 3, 0, 'order.order_ready_user_shop', '2020-04-11 09:52:47', '2020-04-11 09:52:47'),
(207, 0, 5, 'order.order_ready_transporter_shop', '2020-04-11 09:52:47', '2020-04-11 09:52:47'),
(208, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 09:53:00', '2020-04-11 09:53:00'),
(209, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 09:53:02', '2020-04-11 09:53:02'),
(210, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 09:53:05', '2020-04-11 09:53:05'),
(211, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 09:53:10', '2020-04-11 09:53:10'),
(212, 3, 0, 'Your Order Created Successfully', '2020-04-11 21:37:41', '2020-04-11 21:37:41'),
(213, 3, 0, 'Your order Delivery Otp is 283502', '2020-04-11 21:37:41', '2020-04-11 21:37:41'),
(214, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-11 21:43:30', '2020-04-11 21:43:30'),
(215, 0, 5, 'You Have One Incoming Request', '2020-04-11 21:44:34', '2020-04-11 21:44:34'),
(216, 3, 0, 'Your Order Ready To Dispatched', '2020-04-11 21:53:24', '2020-04-11 21:53:24'),
(217, 3, 0, 'order.order_ready_user_shop', '2020-04-11 21:53:25', '2020-04-11 21:53:25'),
(218, 0, 5, 'order.order_ready_transporter_shop', '2020-04-11 21:53:25', '2020-04-11 21:53:25'),
(219, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-11 21:53:51', '2020-04-11 21:53:51'),
(220, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-11 21:54:12', '2020-04-11 21:54:12'),
(221, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-11 21:54:26', '2020-04-11 21:54:26'),
(222, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-11 21:54:42', '2020-04-11 21:54:42'),
(223, 3, 0, 'Your Order Created Successfully', '2020-04-13 04:38:33', '2020-04-13 04:38:33'),
(224, 3, 0, 'Your order Delivery Otp is 330439', '2020-04-13 04:38:33', '2020-04-13 04:38:33'),
(225, 3, 0, 'Your Order Created Successfully', '2020-04-13 04:39:02', '2020-04-13 04:39:02'),
(226, 3, 0, 'Your order Delivery Otp is 535499', '2020-04-13 04:39:02', '2020-04-13 04:39:02'),
(227, 3, 0, 'Your Order Created Successfully', '2020-04-14 07:28:56', '2020-04-14 07:28:56'),
(228, 3, 0, 'Your order Delivery Otp is 995811', '2020-04-14 07:28:56', '2020-04-14 07:28:56'),
(229, 1, 0, 'Dispute created against order ', '2020-04-14 07:35:22', '2020-04-14 07:35:22'),
(230, 0, 1, 'Dispute created against order ', '2020-04-14 07:35:22', '2020-04-14 07:35:22'),
(231, 3, 0, 'Dispute created against order ', '2020-04-14 07:35:22', '2020-04-14 07:35:22'),
(232, 6, 0, 'Your Order Created Successfully', '2020-04-14 07:37:21', '2020-04-14 07:37:21'),
(233, 6, 0, 'Your order Delivery Otp is 705824', '2020-04-14 07:37:21', '2020-04-14 07:37:21'),
(234, 6, 0, 'Your order Successfully Accepted By restaurant', '2020-04-14 07:41:34', '2020-04-14 07:41:34'),
(235, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-14 07:44:12', '2020-04-14 07:44:12'),
(236, 6, 0, 'Dispute created against order ', '2020-04-14 07:45:03', '2020-04-14 07:45:03'),
(237, 6, 0, 'Dispute created against order ', '2020-04-14 07:45:03', '2020-04-14 07:45:03'),
(238, 3, 0, 'Your Order Created Successfully', '2020-04-14 07:45:41', '2020-04-14 07:45:41'),
(239, 3, 0, 'Your order Delivery Otp is 393516', '2020-04-14 07:45:41', '2020-04-14 07:45:41'),
(240, 3, 0, 'Dispute created against order ', '2020-04-14 07:46:22', '2020-04-14 07:46:22'),
(241, 3, 0, 'Dispute created against order ', '2020-04-14 07:46:43', '2020-04-14 07:46:43'),
(242, 3, 0, 'Your Order Created Successfully', '2020-04-14 07:48:47', '2020-04-14 07:48:47'),
(243, 3, 0, 'Your order Delivery Otp is 786582', '2020-04-14 07:48:47', '2020-04-14 07:48:47'),
(244, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-14 07:49:08', '2020-04-14 07:49:08'),
(245, 3, 0, 'Dispute created against order ', '2020-04-14 07:51:08', '2020-04-14 07:51:08'),
(246, 3, 0, 'Your Order Created Successfully', '2020-04-14 07:52:17', '2020-04-14 07:52:17'),
(247, 3, 0, 'Your order Delivery Otp is 620771', '2020-04-14 07:52:17', '2020-04-14 07:52:17'),
(248, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-14 07:52:24', '2020-04-14 07:52:24'),
(249, 0, 5, 'New order request', '2020-04-14 07:52:36', '2020-04-14 07:52:36'),
(250, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-14 07:52:36', '2020-04-14 07:52:36'),
(251, 3, 0, 'Your Order Ready To Dispatched', '2020-04-14 07:53:28', '2020-04-14 07:53:28'),
(252, 3, 0, 'order.order_ready_user_shop', '2020-04-14 07:53:28', '2020-04-14 07:53:28'),
(253, 0, 5, 'order.order_ready_transporter_shop', '2020-04-14 07:53:28', '2020-04-14 07:53:28'),
(254, 3, 0, 'Your Order Ready To Dispatched', '2020-04-14 07:53:29', '2020-04-14 07:53:29'),
(255, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-14 07:53:39', '2020-04-14 07:53:39'),
(256, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-14 07:53:51', '2020-04-14 07:53:51'),
(257, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-14 07:53:52', '2020-04-14 07:53:52'),
(258, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-14 07:54:18', '2020-04-14 07:54:18'),
(259, 3, 0, 'Your Order Created Successfully', '2020-04-14 08:06:12', '2020-04-14 08:06:12'),
(260, 3, 0, 'Your order Delivery Otp is 328808', '2020-04-14 08:06:12', '2020-04-14 08:06:12'),
(261, 3, 0, 'Your order Successfully Accepted By restaurant', '2020-04-14 08:06:34', '2020-04-14 08:06:34'),
(262, 0, 5, 'New order request', '2020-04-14 08:09:05', '2020-04-14 08:09:05'),
(263, 3, 0, 'Your Order Assigned To DeliveryBoy', '2020-04-14 08:09:05', '2020-04-14 08:09:05'),
(264, 3, 0, 'Your Order Ready To Dispatched', '2020-04-14 08:09:55', '2020-04-14 08:09:55'),
(265, 3, 0, 'Your Order Id  Status is REACHED', '2020-04-14 08:09:55', '2020-04-14 08:09:55'),
(266, 3, 0, 'Your Order Id  Status is PICKEDUP', '2020-04-14 08:10:00', '2020-04-14 08:10:00'),
(267, 3, 0, 'Your Order Id  Status is ARRIVED', '2020-04-14 08:10:05', '2020-04-14 08:10:05'),
(268, 3, 0, 'Dispute created against order ', '2020-04-14 14:58:44', '2020-04-14 14:58:44'),
(269, 0, 2, 'Dispute created against order ', '2020-04-14 14:58:44', '2020-04-14 14:58:44'),
(270, 3, 0, 'Your Order Id  Status is COMPLETED', '2020-04-14 16:41:11', '2020-04-14 16:41:11'),
(271, 8, 0, 'Your Order Created Successfully', '2020-04-14 16:46:54', '2020-04-14 16:46:54'),
(272, 8, 0, 'Your order Delivery Otp is 235126', '2020-04-14 16:46:54', '2020-04-14 16:46:54'),
(273, 3, 0, 'Dispute created against order ', '2020-04-14 22:11:32', '2020-04-14 22:11:32'),
(274, 0, 4, 'Dispute created against order ', '2020-04-14 22:11:32', '2020-04-14 22:11:32'),
(275, 8, 0, 'Dispute created against order ', '2020-04-14 22:11:33', '2020-04-14 22:11:33'),
(276, 5, 0, 'Your Order Created Successfully', '2020-04-15 01:01:03', '2020-04-15 01:01:03'),
(277, 5, 0, 'Your order Delivery Otp is 549087', '2020-04-15 01:01:03', '2020-04-15 01:01:03'),
(278, 3, 0, 'Your Order Created Successfully', '2020-04-15 03:02:33', '2020-04-15 03:02:33'),
(279, 3, 0, 'Your order Delivery Otp is 387348', '2020-04-15 03:02:33', '2020-04-15 03:02:33'),
(280, 5, 0, 'Dispute created against order ', '2020-04-15 05:16:05', '2020-04-15 05:16:05'),
(281, 3, 0, 'Dispute created against order ', '2020-04-15 05:16:06', '2020-04-15 05:16:06'),
(282, 13, 0, 'Your Order Created Successfully', '2020-04-21 07:46:43', '2020-04-21 07:46:43'),
(283, 13, 0, 'Your order Delivery Otp is 825388', '2020-04-21 07:46:43', '2020-04-21 07:46:43'),
(284, 13, 0, 'Dispute created against order ', '2020-04-21 07:46:46', '2020-04-21 07:46:46'),
(285, 13, 0, 'Your Order Created Successfully', '2020-04-21 07:48:30', '2020-04-21 07:48:30'),
(286, 13, 0, 'Your order Delivery Otp is 746421', '2020-04-21 07:48:30', '2020-04-21 07:48:30'),
(287, 13, 0, 'Your order Successfully Accepted By restaurant', '2020-04-21 07:48:43', '2020-04-21 07:48:43'),
(288, 13, 0, 'Dispute created against order ', '2020-04-21 07:48:52', '2020-04-21 07:48:52'),
(289, 20, 0, 'Your Order Created Successfully', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(290, 20, 0, 'Your order Delivery Otp is 239817', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(291, 18, 0, 'Your Order Created Successfully', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(292, 18, 0, 'Your order Delivery Otp is 594134', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(293, 18, 0, 'Dispute created against order ', '2020-06-05 00:04:24', '2020-06-05 00:04:24'),
(294, 18, 0, 'Your Order Created Successfully', '2020-06-05 00:21:19', '2020-06-05 00:21:19'),
(295, 18, 0, 'Your order Delivery Otp is 350158', '2020-06-05 00:21:19', '2020-06-05 00:21:19'),
(296, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-05 00:22:32', '2020-06-05 00:22:32'),
(297, 18, 0, 'Your Order Created Successfully', '2020-06-05 00:34:16', '2020-06-05 00:34:16'),
(298, 18, 0, 'Your order Delivery Otp is 588204', '2020-06-05 00:34:16', '2020-06-05 00:34:16'),
(299, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-05 00:34:54', '2020-06-05 00:34:54'),
(300, 18, 0, 'Your Order Created Successfully', '2020-06-05 01:21:58', '2020-06-05 01:21:58'),
(301, 18, 0, 'Your order Delivery Otp is 209704', '2020-06-05 01:21:58', '2020-06-05 01:21:58'),
(302, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-05 01:23:28', '2020-06-05 01:23:28'),
(303, 18, 0, 'Dispute created against order ', '2020-06-05 01:28:41', '2020-06-05 01:28:41'),
(304, 18, 0, 'Dispute created against order ', '2020-06-05 01:28:41', '2020-06-05 01:28:41'),
(305, 18, 0, 'Dispute created against order ', '2020-06-05 01:28:46', '2020-06-05 01:28:46'),
(306, 18, 0, 'Your Order Created Successfully', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(307, 18, 0, 'Your order Delivery Otp is 690197', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(308, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-06 07:19:31', '2020-06-06 07:19:31'),
(309, 18, 0, 'Dispute created against order ', '2020-06-06 07:21:23', '2020-06-06 07:21:23'),
(310, 18, 0, 'Your Order Id  Status is :status', '2020-06-06 07:25:43', '2020-06-06 07:25:43'),
(311, 18, 0, 'Your Order Created Successfully', '2020-06-06 07:27:38', '2020-06-06 07:27:38'),
(312, 18, 0, 'Your order Delivery Otp is 367758', '2020-06-06 07:27:38', '2020-06-06 07:27:38'),
(313, 18, 0, 'Dispute created against order ', '2020-06-06 07:27:39', '2020-06-06 07:27:39'),
(314, 18, 0, 'Dispute created against order ', '2020-06-06 07:27:39', '2020-06-06 07:27:39'),
(315, 18, 0, 'Your Order Created Successfully', '2020-06-06 07:30:14', '2020-06-06 07:30:14'),
(316, 18, 0, 'Your order Delivery Otp is 482751', '2020-06-06 07:30:14', '2020-06-06 07:30:14'),
(317, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-06 07:30:28', '2020-06-06 07:30:28'),
(318, 18, 0, 'Your Order Created Successfully', '2020-06-06 07:37:02', '2020-06-06 07:37:02'),
(319, 18, 0, 'Your order Delivery Otp is 476622', '2020-06-06 07:37:02', '2020-06-06 07:37:02'),
(320, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-06 07:37:11', '2020-06-06 07:37:11'),
(321, 0, 5, 'New order request', '2020-06-06 07:38:52', '2020-06-06 07:38:52'),
(322, 18, 0, 'Your Order Assigned To DeliveryBoy', '2020-06-06 07:38:52', '2020-06-06 07:38:52'),
(323, 18, 0, 'Dispute created against order ', '2020-06-06 07:42:28', '2020-06-06 07:42:28'),
(324, 18, 0, 'Dispute created against order ', '2020-06-06 07:42:29', '2020-06-06 07:42:29'),
(325, 18, 0, 'Your Order Ready To Dispatched', '2020-06-06 07:42:55', '2020-06-06 07:42:55'),
(326, 18, 0, 'Your Order Id  Status is REACHED', '2020-06-06 07:42:56', '2020-06-06 07:42:56'),
(327, 18, 0, 'Your Order Ready To Dispatched', '2020-06-06 07:42:58', '2020-06-06 07:42:58'),
(328, 18, 0, 'Your Order Id  Status is REACHED', '2020-06-06 07:43:12', '2020-06-06 07:43:12'),
(329, 18, 0, 'Your Order Id  Status is PICKEDUP', '2020-06-06 07:43:17', '2020-06-06 07:43:17'),
(330, 18, 0, 'Your Order Id  Status is ARRIVED', '2020-06-06 07:43:36', '2020-06-06 07:43:36'),
(331, 18, 0, 'Your Order Id  Status is COMPLETED', '2020-06-06 07:44:32', '2020-06-06 07:44:32'),
(332, 18, 0, 'Your Order Created Successfully', '2020-06-06 07:46:01', '2020-06-06 07:46:01'),
(333, 18, 0, 'Your order Delivery Otp is 364309', '2020-06-06 07:46:01', '2020-06-06 07:46:01'),
(334, 18, 0, 'Your order Successfully Accepted By restaurant', '2020-06-06 07:46:28', '2020-06-06 07:46:28'),
(335, 0, 5, 'New order request', '2020-06-06 07:47:26', '2020-06-06 07:47:26'),
(336, 18, 0, 'Your Order Assigned To DeliveryBoy', '2020-06-06 07:47:26', '2020-06-06 07:47:26'),
(337, 18, 0, 'Your Order Ready To Dispatched', '2020-06-06 07:48:01', '2020-06-06 07:48:01'),
(338, 18, 0, 'order.order_ready_user_shop', '2020-06-06 07:48:01', '2020-06-06 07:48:01'),
(339, 0, 5, 'order.order_ready_transporter_shop', '2020-06-06 07:48:01', '2020-06-06 07:48:01'),
(340, 18, 0, 'Your Order Ready To Dispatched', '2020-06-06 07:48:05', '2020-06-06 07:48:05'),
(341, 18, 0, 'Your Order Id  Status is REACHED', '2020-06-06 07:48:05', '2020-06-06 07:48:05'),
(342, 18, 0, 'Your Order Id  Status is PICKEDUP', '2020-06-06 07:48:32', '2020-06-06 07:48:32'),
(343, 18, 0, 'Your Order Id  Status is ARRIVED', '2020-06-06 07:49:11', '2020-06-06 07:49:11'),
(344, 18, 0, 'Your Order Id  Status is COMPLETED', '2020-06-06 07:49:21', '2020-06-06 07:49:21'),
(345, 25, 0, 'Your Order Created Successfully', '2020-06-27 02:00:46', '2020-06-27 02:00:46'),
(346, 25, 0, 'Your order Delivery Otp is 971786', '2020-06-27 02:00:47', '2020-06-27 02:00:47'),
(347, 25, 0, 'Your order Successfully Accepted By restaurant', '2020-06-27 02:02:14', '2020-06-27 02:02:14'),
(348, 25, 0, 'Your order Successfully Accepted By restaurant', '2020-06-27 02:02:16', '2020-06-27 02:02:16'),
(349, 25, 0, 'Your order Successfully Accepted By restaurant', '2020-06-27 02:02:18', '2020-06-27 02:02:18'),
(350, 25, 0, 'Dispute created against order ', '2020-06-27 05:56:30', '2020-06-27 05:56:30'),
(351, 18, 0, 'Your Order Id  Status is :status', '2020-06-27 05:59:52', '2020-06-27 05:59:52'),
(352, 25, 0, 'Your Order Created Successfully', '2020-06-27 06:01:50', '2020-06-27 06:01:50'),
(353, 25, 0, 'Your order Delivery Otp is 592533', '2020-06-27 06:01:50', '2020-06-27 06:01:50'),
(354, 25, 0, 'Your order Successfully Accepted By restaurant', '2020-06-27 06:03:51', '2020-06-27 06:03:51'),
(355, 0, 5, 'New order request', '2020-06-27 06:05:10', '2020-06-27 06:05:10'),
(356, 25, 0, 'Your Order Assigned To DeliveryBoy', '2020-06-27 06:05:10', '2020-06-27 06:05:10'),
(357, 25, 0, 'Your Order Ready To Dispatched', '2020-06-27 06:14:25', '2020-06-27 06:14:25'),
(358, 25, 0, 'Your Order Id  Status is REACHED', '2020-06-27 06:14:59', '2020-06-27 06:14:59'),
(359, 25, 0, 'order.order_ready_user_shop', '2020-06-27 06:15:12', '2020-06-27 06:15:12'),
(360, 0, 5, 'order.order_ready_transporter_shop', '2020-06-27 06:15:12', '2020-06-27 06:15:12'),
(361, 25, 0, 'Your Order Id  Status is PICKEDUP', '2020-06-27 06:15:48', '2020-06-27 06:15:48'),
(362, 25, 0, 'Your Order Id  Status is ARRIVED', '2020-06-27 06:16:41', '2020-06-27 06:16:41'),
(363, 25, 0, 'Your Order Id  Status is COMPLETED', '2020-06-27 06:17:16', '2020-06-27 06:17:16'),
(364, 25, 0, 'Your Order Created Successfully', '2020-06-27 06:44:24', '2020-06-27 06:44:24'),
(365, 25, 0, 'Your order Delivery Otp is 191060', '2020-06-27 06:44:24', '2020-06-27 06:44:24'),
(366, 25, 0, 'Your order Successfully Accepted By restaurant', '2020-06-27 06:45:15', '2020-06-27 06:45:15'),
(367, 0, 5, 'New order request', '2020-06-27 06:45:57', '2020-06-27 06:45:57'),
(368, 25, 0, 'Your Order Assigned To DeliveryBoy', '2020-06-27 06:45:58', '2020-06-27 06:45:58'),
(369, 25, 0, 'Your Order Ready To Dispatched', '2020-06-27 06:47:42', '2020-06-27 06:47:42'),
(370, 25, 0, 'Your Order Id  Status is REACHED', '2020-06-27 06:47:43', '2020-06-27 06:47:43'),
(371, 25, 0, 'Your Order Ready To Dispatched', '2020-06-27 06:47:44', '2020-06-27 06:47:44'),
(372, 25, 0, 'Your Order Id  Status is REACHED', '2020-06-27 06:47:52', '2020-06-27 06:47:52'),
(373, 25, 0, 'Your Order Id  Status is PICKEDUP', '2020-06-27 06:48:13', '2020-06-27 06:48:13'),
(374, 25, 0, 'Your Order Id  Status is ARRIVED', '2020-06-27 07:06:07', '2020-06-27 07:06:07'),
(375, 25, 0, 'Your Order Id  Status is COMPLETED', '2020-06-27 07:06:20', '2020-06-27 07:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00f9b3af58404cb349064a5aea2d06f0733b632c3e2b16f49383638341963f5f94be453e1c2af44c', 18, 2, NULL, '[]', 0, '2020-05-08 05:19:48', '2020-05-08 05:19:48', '2021-05-08 00:19:48'),
('0170e55e986d6bb0db0c33ca0f6a12ad44fd7758982bddaed37d558016ecc8ea4700cc08cc886865', 18, 2, NULL, '[]', 0, '2020-06-07 19:04:25', '2020-06-07 19:04:25', '2021-06-07 14:04:25'),
('04bedaec3ccd83ec6ba49169e60fd89b11e0d9b97086bfe05952ed791fa9ad8ae36698c23b8de2c8', 3, 2, NULL, '[]', 0, '2020-04-11 03:02:47', '2020-04-11 03:02:47', '2021-04-10 22:02:47'),
('08207a5e38db8c30ab581eacd883d7ebe6ce5eae27cad9b2f84bef7fadb9ec6f7efe34ef3332bc93', 5, 2, NULL, '[]', 0, '2020-04-14 06:03:04', '2020-04-14 06:03:04', '2021-04-14 01:03:04'),
('0c8fa471f1b80dd196d9f25d10a44973f6c86696578de00445088365297a4efffb99716dbf608c88', 6, 1, '6transporter', '[]', 0, '2020-05-10 09:03:19', '2020-05-10 09:03:19', '2021-05-10 04:03:19'),
('0d37871ed0da858be991735c66a64d2b7ac71dcf2e822ed9141ac3c3c4bec6b1f36ada8ea6a434b4', 22, 2, NULL, '[]', 0, '2020-06-06 16:25:25', '2020-06-06 16:25:25', '2021-06-06 11:25:25'),
('0dc2da0ccb0c71431748aeabb92aedfa8991e223a1390c88988bd9531de5ae87d2457a7f5830a976', 3, 2, NULL, '[]', 0, '2020-04-16 01:54:16', '2020-04-16 01:54:16', '2021-04-15 20:54:16'),
('0f76f230be029cdacae1f3398ff20c92806a67707fc0ce196b6cc4c85b37b51895398133f9f95dc6', 6, 2, NULL, '[]', 0, '2020-04-14 06:16:49', '2020-04-14 06:16:49', '2021-04-14 01:16:49'),
('1330c72854163a5587a0b37672e4eff4444577290714923478907cad5bf596519818060bdd6168a3', 5, 1, '5transporter', '[]', 0, '2020-04-14 07:23:19', '2020-04-14 07:23:19', '2021-04-14 02:23:19'),
('14aeacabf10679841c50b27210bdc6399892e15e5b30cb4fc3ac147db9e328984b1904ea7042abfd', 5, 1, '5transporter', '[]', 0, '2020-06-27 06:13:32', '2020-06-27 06:13:32', '2021-06-27 01:13:32'),
('19671931896394938151da19ba0102a6059fd72c0e83d09d72d92479f2e00ce90795c9298d4732a3', 4, 1, '4transporter', '[]', 0, '2020-04-11 00:42:40', '2020-04-11 00:42:40', '2021-04-10 19:42:40'),
('1b7d3bfc7c0cb54524b53f76c457bb0de4cae15007a5cd953ca010b62f29b9f636be66a16e5b23d6', 1, 1, '1transporter', '[]', 0, '2020-04-10 06:10:20', '2020-04-10 06:10:20', '2021-04-10 01:10:20'),
('1e0181903c58961b01a7ccf221eb88ac961871b9f1f80e9f76408d00eeff6b85bda8ef9d81ff636c', 5, 1, '5transporter', '[]', 0, '2020-04-14 05:39:55', '2020-04-14 05:39:55', '2021-04-14 00:39:55'),
('1e175c78c6aa7e72307a62db68bb1d60a5ec2c8cb5c840df489db658fff09bf2513102d00f1c42a4', 3, 2, NULL, '[]', 0, '2020-04-16 01:19:23', '2020-04-16 01:19:23', '2021-04-15 20:19:23'),
('1e36fe1f0059fdc8964ba235d60c8892674f8290198160c0d0cd3e38c558319f3318a37f48781429', 3, 2, NULL, '[]', 0, '2020-04-12 02:50:58', '2020-04-12 02:50:58', '2021-04-11 21:50:58'),
('251c649ee9e45c348cf8729df343f934466d93f8d6cb61ba9ce5265d42b75458311207475fab56b6', 18, 2, NULL, '[]', 0, '2020-06-06 21:20:04', '2020-06-06 21:20:04', '2021-06-06 16:20:04'),
('26047b4e9799f719ce0410ef064b8d429fb0cff4383c178016963b580cc2b3fff933a54904f81e7a', 5, 1, '5transporter', '[]', 0, '2020-06-04 21:18:03', '2020-06-04 21:18:03', '2021-06-04 16:18:03'),
('271f1308ff14a22a4e33697ca8b7f9c703dd8db036656784a603e29b6420482bcb19a9133591508a', 5, 1, '5transporter', '[]', 0, '2020-06-04 21:16:22', '2020-06-04 21:16:22', '2021-06-04 16:16:22'),
('27b4b6a16fea36550459b9aefff6952fbe6bf719ca4c1f84876bc218a9eed35dd2912aad7faf1d0b', 10, 2, NULL, '[]', 0, '2020-04-17 14:54:59', '2020-04-17 14:54:59', '2021-04-17 09:54:59'),
('2eaa71acdc0a80e0e18503b3e763b2814f562904e05f14a83a4fae0deb1a3ad92e05f05769d326e1', 15, 2, NULL, '[]', 0, '2020-06-06 16:13:55', '2020-06-06 16:13:55', '2021-06-06 11:13:55'),
('2f4ab350e7eefaa5f41696328f5e2fa94d33b8bee67b4b742639ea70bcb432b0025cadb49d7d8d63', 14, 2, NULL, '[]', 0, '2020-04-23 02:49:14', '2020-04-23 02:49:14', '2021-04-22 21:49:14'),
('336b80557cb7c376f467a5112f04260c6e358321be800633337ca7928cb6e6d5eaa0c7104c68386a', 17, 2, NULL, '[]', 0, '2020-06-07 03:07:34', '2020-06-07 03:07:34', '2021-06-06 22:07:34'),
('38460b1d9f010853020951131307a4673ca88633ddb83aaee8f56847ab54cb90093fed3e3a3beacb', 15, 2, NULL, '[]', 0, '2020-06-06 16:12:13', '2020-06-06 16:12:13', '2021-06-06 11:12:13'),
('3f3136680fbb2640a6f2529a414b50f6facd5b70b8cf538d8e74bb77f8ad8408a51b6039b5916fb0', 22, 2, NULL, '[]', 0, '2020-06-06 16:15:56', '2020-06-06 16:15:56', '2021-06-06 11:15:56'),
('3f48dd81aff63a58f8b1fe0b8a35c317965e5f6119ea905a2e452323917a99283d61a049fd6b6840', 3, 2, NULL, '[]', 0, '2020-04-14 04:24:55', '2020-04-14 04:24:55', '2021-04-13 23:24:55'),
('45da11899dc893c98858ff234d272a8c01025245764290c5d2bf7641342711cf560dde03475ba459', 5, 1, '5transporter', '[]', 0, '2020-04-11 02:20:14', '2020-04-11 02:20:14', '2021-04-10 21:20:14'),
('480e509d9b9c85433461d9c2a8f6a804c8ec3cc7f4f126e6645b09d3993daad916e6656c3c7fe9c8', 14, 2, NULL, '[]', 0, '2020-04-21 21:53:46', '2020-04-21 21:53:46', '2021-04-21 16:53:46'),
('4f0ea54e5a083f45efe50a0f6055def3fe738a88c7ab9f13e81770929ddfac33b046f2289372f9b6', 2, 1, '2transporter', '[]', 0, '2020-04-10 23:48:33', '2020-04-10 23:48:33', '2021-04-10 18:48:33'),
('52d4e8f935ce2e9c4837bca76a4456fe7947f5c7ef0fb31c9ecae187efafcd598ca751d60789a63b', 1, 1, '1transporter', '[]', 0, '2020-04-10 06:29:56', '2020-04-10 06:29:56', '2021-04-10 01:29:56'),
('6331db0a0d3e145b261d9de37df08ae5891b5022749825f1e6a15d94f19ed60d4389755e5f47072d', 8, 2, NULL, '[]', 0, '2020-04-14 16:39:13', '2020-04-14 16:39:13', '2021-04-14 11:39:13'),
('64af82fe7e015fe97f3d39e9dbfd9125f91e62d01a9dcda9df835d40ff7444ce555c566f8e4c11d3', 25, 2, NULL, '[]', 0, '2020-06-26 19:47:32', '2020-06-26 19:47:32', '2021-06-26 14:47:32'),
('6582e90e51066ca6b196536befb88def11f6b0216266880f42fb128a14a55f4861becfcf9e94e99a', 12, 2, NULL, '[]', 0, '2020-04-21 02:36:32', '2020-04-21 02:36:32', '2021-04-20 21:36:32'),
('66cdd769b8c55c32c02bd1cb77b68cd2b02b591c4b9cff9f83c20339e0ebdd5c98cd570bead69d23', 15, 2, NULL, '[]', 0, '2020-06-06 16:14:21', '2020-06-06 16:14:21', '2021-06-06 11:14:21'),
('68e4308ef812dc0d5e291d4fc7f58695a1c1ed09fe98a1b388479cbef65a128eb9e2925c539ed2d9', 5, 1, '5transporter', '[]', 0, '2020-04-11 02:00:58', '2020-04-11 02:00:58', '2021-04-10 21:00:58'),
('70d8e7045fde2d7cc9960e2653ab389a331c320e5a0d77c8a694fc25315ad458abc3d36a0733725d', 5, 1, '5transporter', '[]', 0, '2020-04-11 21:51:37', '2020-04-11 21:51:37', '2021-04-11 16:51:37'),
('7397b658b6f370b8dfe707e0a8556a96f7a809893a490f1c24cfb87316bc9158b3226d6a90f4c36e', 3, 2, NULL, '[]', 0, '2020-04-16 01:03:40', '2020-04-16 01:03:40', '2021-04-15 20:03:40'),
('79b29057045f829b8a094646ab75265bd896ea699f68690cc3180cf963f3352781e109944a078361', 3, 2, NULL, '[]', 0, '2020-04-14 05:02:35', '2020-04-14 05:02:35', '2021-04-14 00:02:35'),
('79f1ac1a8e76ca13c4386608ac573c697bf3c9c7ad0c7a1defa631b336134d1134f4908ff2b4200c', 3, 2, NULL, '[]', 0, '2020-04-14 07:26:45', '2020-04-14 07:26:45', '2021-04-14 02:26:45'),
('7f18e7d55d4f70696bc9bb8df61bde2e0dfc9c94a208e7282f92b92ab2ea830e327df1de0913295c', 5, 1, '5transporter', '[]', 0, '2020-04-16 03:59:22', '2020-04-16 03:59:22', '2021-04-15 22:59:22'),
('81817ea735dbe8159487162e99c98829d0128621efa8c5297a2e2467195b635b2e21f5fa0d4d7140', 24, 2, NULL, '[]', 0, '2020-06-07 04:18:36', '2020-06-07 04:18:36', '2021-06-06 23:18:36'),
('86a892523ad8ec264188f438903d7f801db8d23ece234740edc808ecd87ba4a55bba0f13ca12e679', 18, 2, NULL, '[]', 0, '2020-06-05 06:48:12', '2020-06-05 06:48:12', '2021-06-05 01:48:12'),
('8829d9d29da9224e605b01ad029f09c66b7a2fd68a07bcf6dad110fd0e93bdca3de4c9576c6c5b01', 5, 1, '5transporter', '[]', 0, '2020-04-11 03:55:36', '2020-04-11 03:55:36', '2021-04-10 22:55:36'),
('8ab50f93ebd4fc5dfcbc6bbf27a69e6d580e425baf83e3c536a9a42f0c4f24e9fbac4d3facb01f83', 11, 2, NULL, '[]', 0, '2020-04-18 21:25:32', '2020-04-18 21:25:32', '2021-04-18 16:25:32'),
('8ad52a6f4ff9793c1f02beaf20ece37f911933f02f74745468043e1af80f6c149d455a12fafdc2e8', 3, 2, NULL, '[]', 0, '2020-04-14 05:48:26', '2020-04-14 05:48:26', '2021-04-14 00:48:26'),
('8b92e400c06d71e5ed354151f114e275c41d1aefab9a7afcebd686f104be1926d4392573ceb930b3', 26, 2, NULL, '[]', 0, '2020-07-07 16:40:46', '2020-07-07 16:40:46', '2021-07-07 11:40:46'),
('8f4979202734753aaf53162c2f3043083999218da792b0c2ae163c918534464223d852c75f81d39d', 15, 2, NULL, '[]', 0, '2020-04-22 22:13:46', '2020-04-22 22:13:46', '2021-04-22 17:13:46'),
('9bc2602e13ee5e1dc2ff6c8109f20a58959907c8957fcdea93eb61d8bd5fc33b806c675eb5419ef1', 6, 1, '6transporter', '[]', 0, '2020-07-01 01:14:55', '2020-07-01 01:14:55', '2021-06-30 20:14:55'),
('a18aab87b460c125ff2525014d630a9d29777026a822ed64c3e04686a382cc0b306cdb98b304bf14', 19, 2, NULL, '[]', 0, '2020-05-25 10:37:23', '2020-05-25 10:37:23', '2021-05-25 05:37:23'),
('abbb74c112673ee71151a44b2d3f2f360d5b8784309ff8307f3343333dbcf0fe5664b97ec6043895', 3, 2, NULL, '[]', 0, '2020-04-12 02:17:01', '2020-04-12 02:17:01', '2021-04-11 21:17:01'),
('acf44b41e4b2ce769afb5c3fb0e733514121c5deac0797c3c14b63d3157b2061b143cc67320c576c', 11, 2, NULL, '[]', 0, '2020-05-08 00:55:42', '2020-05-08 00:55:42', '2021-05-07 19:55:42'),
('ae16aa82b66694f7db883ba527fd418c44c45e7bf7bb7f977b7b232c79b1cd334aec2c6feaf62d38', 14, 2, NULL, '[]', 0, '2020-04-21 21:52:39', '2020-04-21 21:52:39', '2021-04-21 16:52:39'),
('b3aaef88b64428efcbfd4fc1ff1a5a852667e30d82cc006350f6bed7cb2e26d18a7f810511621bfd', 21, 2, NULL, '[]', 0, '2020-05-28 00:06:44', '2020-05-28 00:06:44', '2021-05-27 19:06:44'),
('b5bc7ea6b83880e932bc5b93b6a739e44f64d34de2ca154dfb8105026fcbdd9302ce8f1ad2084860', 22, 2, NULL, '[]', 0, '2020-06-08 06:06:41', '2020-06-08 06:06:41', '2021-06-08 01:06:41'),
('b7045392daed7fb0313101fcfd2dd0e14894bd995109751079ab9695f6733eac5efa7daff6a1669f', 22, 2, NULL, '[]', 0, '2020-06-06 16:21:40', '2020-06-06 16:21:40', '2021-06-06 11:21:40'),
('befc68cc8dfc18d52a547ca9c06a483c5367e3e2fab3dc06b0373efaaa7c79cab6e9a7ee197a5d7c', 15, 2, NULL, '[]', 0, '2020-06-06 16:13:25', '2020-06-06 16:13:25', '2021-06-06 11:13:25'),
('c46c515d624cb4e5718ae672631a929d80c420e37e7ab0a801f6e09c4e5726580c02b9f0216b1688', 7, 2, NULL, '[]', 0, '2020-04-14 06:25:16', '2020-04-14 06:25:16', '2021-04-14 01:25:16'),
('c589fc95817f3132e99d765542912110e609c05d0c1e39e145ac8614ca5db7637a3ac7463f346c5d', 18, 2, NULL, '[]', 0, '2020-06-06 07:52:54', '2020-06-06 07:52:54', '2021-06-06 02:52:54'),
('ca6ac41c428fa8bbb0479d25a2422c02aa601b5ee849164e8d4ed1d6f5be881f5013c645b0c9f41c', 9, 2, NULL, '[]', 0, '2020-04-17 06:08:05', '2020-04-17 06:08:05', '2021-04-17 01:08:05'),
('cc22b46067b3834cc77167f43daf66238f4ef2cac4b9b13b63b2a024380789a72c9ec31c06ec8474', 3, 2, NULL, '[]', 0, '2020-04-15 01:03:17', '2020-04-15 01:03:17', '2021-04-14 20:03:17'),
('cd842d66dd9df63efe8efa259cfdb6c89754345da6c6a758ec1dd5c334a8ec25b220995e551b9c48', 18, 2, NULL, '[]', 0, '2020-06-04 21:00:16', '2020-06-04 21:00:16', '2021-06-04 16:00:16'),
('cebbf24fbb35403a3b43199448a6e73d0c3badb99048604a9bc5d32e490b1eef4d12800eb681aa86', 3, 2, NULL, '[]', 0, '2020-04-14 05:49:53', '2020-04-14 05:49:53', '2021-04-14 00:49:53'),
('d51e1b1ca455aa42ea851a2f5015380b0db2ee579d96e6eb2a9137e529946b4d80d01a58ccc79f8c', 17, 2, NULL, '[]', 0, '2020-05-07 03:28:06', '2020-05-07 03:28:06', '2021-05-06 22:28:06'),
('d8b7fb4767fe5e520d647e02504575cec23a3239bdc3bba86fe679fff9d11ee30055aebe3a6d3fe4', 18, 2, NULL, '[]', 0, '2020-06-05 06:37:37', '2020-06-05 06:37:37', '2021-06-05 01:37:37'),
('dc13869600a8410e9ec13cf12b820dd4822cf23ae69d696d91efad7a8779425d7372156ecd94cdd1', 3, 1, '3transporter', '[]', 0, '2020-04-14 17:04:50', '2020-04-14 17:04:50', '2021-04-14 12:04:50'),
('defba1f473f6b0b6a54a20b024ed99f9319c09d9b42c0c24f51251b545adb1d3e42566fb6a6e4bac', 18, 2, NULL, '[]', 0, '2020-06-07 03:30:27', '2020-06-07 03:30:27', '2021-06-06 22:30:27'),
('e2886e734f0236254faca72a329e4b5c986e3685cfcac499efd2bb96f0aab74b0a2ee9877868f81b', 3, 2, NULL, '[]', 0, '2020-04-11 21:36:20', '2020-04-11 21:36:20', '2021-04-11 16:36:20'),
('e32e37099307354f09467845498b940f5f24b3b780bdd85e8bcfec8ea0dceee2b4ab40c912b6500d', 3, 2, NULL, '[]', 0, '2020-04-11 02:45:39', '2020-04-11 02:45:39', '2021-04-10 21:45:39'),
('e50275f6a6cbfd62e8da71be10ef2c0432fe7889293de4991a877c20c938145f97989f73f08bd8e4', 18, 2, NULL, '[]', 0, '2020-06-04 21:11:52', '2020-06-04 21:11:52', '2021-06-04 16:11:52'),
('e5dd339b4e4840902f8f19d59563601fbea272c54c0a7ff0cbc22a0b4474203cf78a13a0f094ac9a', 3, 2, NULL, '[]', 0, '2020-04-17 00:30:50', '2020-04-17 00:30:50', '2021-04-16 19:30:50'),
('e69727227a533ce869242f116c53b37b34138bd8dff6d1f1cba8d4f74073385134adde1202ba43d7', 17, 2, NULL, '[]', 0, '2020-05-07 03:43:03', '2020-05-07 03:43:03', '2021-05-06 22:43:03'),
('e7810d840dbf19ddd4093f94c8db294ba5df6d16090de67bfa599603b07779c705639d8ea3aee089', 22, 2, NULL, '[]', 0, '2020-06-07 03:09:02', '2020-06-07 03:09:02', '2021-06-06 22:09:02'),
('f0d3dba19087f9758c3fa1dbbd74f7102065fca97579042b8e6e86ce2db1f95accf938b8c5c59d56', 5, 2, NULL, '[]', 0, '2020-04-14 05:55:13', '2020-04-14 05:55:13', '2021-04-14 00:55:13'),
('f254a1012a195515191b351361174d6208e91d126f0e81cb5e044b02f41e31c2dec464c949ee7e54', 3, 2, NULL, '[]', 0, '2020-04-13 04:38:09', '2020-04-13 04:38:09', '2021-04-12 23:38:09'),
('f60827b1dc59c14821dcbb6a04791b0ec7d9e5f37ed47ffcfd6933fa37d176619553f92fe1533743', 3, 2, NULL, '[]', 0, '2020-04-11 07:16:19', '2020-04-11 07:16:19', '2021-04-11 02:16:19'),
('f9402bf0ee1061c2a4d6d10d68070fb11153bd64358018da3c550caa3dcda57b1698a9c47f341176', 5, 1, '5transporter', '[]', 0, '2020-04-14 07:39:34', '2020-04-14 07:39:34', '2021-04-14 02:39:34'),
('fffb16ffc629c32728eb83d0b2e9a3a38ab377184b0ea7b93c4ef20f05339db4d79ffd7cc269c38f', 3, 2, NULL, '[]', 0, '2020-04-11 19:51:01', '2020-04-11 19:51:01', '2021-04-11 14:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token_providers`
--

CREATE TABLE `oauth_access_token_providers` (
  `oauth_access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_token_providers`
--

INSERT INTO `oauth_access_token_providers` (`oauth_access_token_id`, `provider`, `created_at`, `updated_at`) VALUES
('00f9b3af58404cb349064a5aea2d06f0733b632c3e2b16f49383638341963f5f94be453e1c2af44c', 'users', '2020-05-08 05:19:48', '2020-05-08 05:19:48'),
('0170e55e986d6bb0db0c33ca0f6a12ad44fd7758982bddaed37d558016ecc8ea4700cc08cc886865', 'users', '2020-06-07 19:04:25', '2020-06-07 19:04:25'),
('04bedaec3ccd83ec6ba49169e60fd89b11e0d9b97086bfe05952ed791fa9ad8ae36698c23b8de2c8', 'users', '2020-04-11 03:02:47', '2020-04-11 03:02:47'),
('08207a5e38db8c30ab581eacd883d7ebe6ce5eae27cad9b2f84bef7fadb9ec6f7efe34ef3332bc93', 'users', '2020-04-14 06:03:04', '2020-04-14 06:03:04'),
('0c8fa471f1b80dd196d9f25d10a44973f6c86696578de00445088365297a4efffb99716dbf608c88', 'users', '2020-05-10 09:03:19', '2020-05-10 09:03:19'),
('0d37871ed0da858be991735c66a64d2b7ac71dcf2e822ed9141ac3c3c4bec6b1f36ada8ea6a434b4', 'users', '2020-06-06 16:25:25', '2020-06-06 16:25:25'),
('0dc2da0ccb0c71431748aeabb92aedfa8991e223a1390c88988bd9531de5ae87d2457a7f5830a976', 'users', '2020-04-16 01:54:16', '2020-04-16 01:54:16'),
('0f76f230be029cdacae1f3398ff20c92806a67707fc0ce196b6cc4c85b37b51895398133f9f95dc6', 'users', '2020-04-14 06:16:49', '2020-04-14 06:16:49'),
('1330c72854163a5587a0b37672e4eff4444577290714923478907cad5bf596519818060bdd6168a3', 'users', '2020-04-14 07:23:19', '2020-04-14 07:23:19'),
('14aeacabf10679841c50b27210bdc6399892e15e5b30cb4fc3ac147db9e328984b1904ea7042abfd', 'users', '2020-06-27 06:13:32', '2020-06-27 06:13:32'),
('19671931896394938151da19ba0102a6059fd72c0e83d09d72d92479f2e00ce90795c9298d4732a3', 'users', '2020-04-11 00:42:40', '2020-04-11 00:42:40'),
('1b7d3bfc7c0cb54524b53f76c457bb0de4cae15007a5cd953ca010b62f29b9f636be66a16e5b23d6', 'users', '2020-04-10 06:10:20', '2020-04-10 06:10:20'),
('1e0181903c58961b01a7ccf221eb88ac961871b9f1f80e9f76408d00eeff6b85bda8ef9d81ff636c', 'users', '2020-04-14 05:39:55', '2020-04-14 05:39:55'),
('1e175c78c6aa7e72307a62db68bb1d60a5ec2c8cb5c840df489db658fff09bf2513102d00f1c42a4', 'users', '2020-04-16 01:19:23', '2020-04-16 01:19:23'),
('1e36fe1f0059fdc8964ba235d60c8892674f8290198160c0d0cd3e38c558319f3318a37f48781429', 'users', '2020-04-12 02:50:58', '2020-04-12 02:50:58'),
('251c649ee9e45c348cf8729df343f934466d93f8d6cb61ba9ce5265d42b75458311207475fab56b6', 'users', '2020-06-06 21:20:04', '2020-06-06 21:20:04'),
('26047b4e9799f719ce0410ef064b8d429fb0cff4383c178016963b580cc2b3fff933a54904f81e7a', 'users', '2020-06-04 21:18:03', '2020-06-04 21:18:03'),
('271f1308ff14a22a4e33697ca8b7f9c703dd8db036656784a603e29b6420482bcb19a9133591508a', 'users', '2020-06-04 21:16:22', '2020-06-04 21:16:22'),
('27b4b6a16fea36550459b9aefff6952fbe6bf719ca4c1f84876bc218a9eed35dd2912aad7faf1d0b', 'users', '2020-04-17 14:54:59', '2020-04-17 14:54:59'),
('2eaa71acdc0a80e0e18503b3e763b2814f562904e05f14a83a4fae0deb1a3ad92e05f05769d326e1', 'users', '2020-06-06 16:13:55', '2020-06-06 16:13:55'),
('2f4ab350e7eefaa5f41696328f5e2fa94d33b8bee67b4b742639ea70bcb432b0025cadb49d7d8d63', 'users', '2020-04-23 02:49:14', '2020-04-23 02:49:14'),
('336b80557cb7c376f467a5112f04260c6e358321be800633337ca7928cb6e6d5eaa0c7104c68386a', 'users', '2020-06-07 03:07:34', '2020-06-07 03:07:34'),
('38460b1d9f010853020951131307a4673ca88633ddb83aaee8f56847ab54cb90093fed3e3a3beacb', 'users', '2020-06-06 16:12:13', '2020-06-06 16:12:13'),
('3f3136680fbb2640a6f2529a414b50f6facd5b70b8cf538d8e74bb77f8ad8408a51b6039b5916fb0', 'users', '2020-06-06 16:15:56', '2020-06-06 16:15:56'),
('3f48dd81aff63a58f8b1fe0b8a35c317965e5f6119ea905a2e452323917a99283d61a049fd6b6840', 'users', '2020-04-14 04:24:55', '2020-04-14 04:24:55'),
('45da11899dc893c98858ff234d272a8c01025245764290c5d2bf7641342711cf560dde03475ba459', 'users', '2020-04-11 02:20:14', '2020-04-11 02:20:14'),
('480e509d9b9c85433461d9c2a8f6a804c8ec3cc7f4f126e6645b09d3993daad916e6656c3c7fe9c8', 'users', '2020-04-21 21:53:46', '2020-04-21 21:53:46'),
('4f0ea54e5a083f45efe50a0f6055def3fe738a88c7ab9f13e81770929ddfac33b046f2289372f9b6', 'users', '2020-04-10 23:48:33', '2020-04-10 23:48:33'),
('52d4e8f935ce2e9c4837bca76a4456fe7947f5c7ef0fb31c9ecae187efafcd598ca751d60789a63b', 'users', '2020-04-10 06:29:56', '2020-04-10 06:29:56'),
('6331db0a0d3e145b261d9de37df08ae5891b5022749825f1e6a15d94f19ed60d4389755e5f47072d', 'users', '2020-04-14 16:39:13', '2020-04-14 16:39:13'),
('64af82fe7e015fe97f3d39e9dbfd9125f91e62d01a9dcda9df835d40ff7444ce555c566f8e4c11d3', 'users', '2020-06-26 19:47:32', '2020-06-26 19:47:32'),
('6582e90e51066ca6b196536befb88def11f6b0216266880f42fb128a14a55f4861becfcf9e94e99a', 'users', '2020-04-21 02:36:32', '2020-04-21 02:36:32'),
('66cdd769b8c55c32c02bd1cb77b68cd2b02b591c4b9cff9f83c20339e0ebdd5c98cd570bead69d23', 'users', '2020-06-06 16:14:21', '2020-06-06 16:14:21'),
('68e4308ef812dc0d5e291d4fc7f58695a1c1ed09fe98a1b388479cbef65a128eb9e2925c539ed2d9', 'users', '2020-04-11 02:00:58', '2020-04-11 02:00:58'),
('70d8e7045fde2d7cc9960e2653ab389a331c320e5a0d77c8a694fc25315ad458abc3d36a0733725d', 'users', '2020-04-11 21:51:37', '2020-04-11 21:51:37'),
('7397b658b6f370b8dfe707e0a8556a96f7a809893a490f1c24cfb87316bc9158b3226d6a90f4c36e', 'users', '2020-04-16 01:03:40', '2020-04-16 01:03:40'),
('79b29057045f829b8a094646ab75265bd896ea699f68690cc3180cf963f3352781e109944a078361', 'users', '2020-04-14 05:02:35', '2020-04-14 05:02:35'),
('79f1ac1a8e76ca13c4386608ac573c697bf3c9c7ad0c7a1defa631b336134d1134f4908ff2b4200c', 'users', '2020-04-14 07:26:45', '2020-04-14 07:26:45'),
('7f18e7d55d4f70696bc9bb8df61bde2e0dfc9c94a208e7282f92b92ab2ea830e327df1de0913295c', 'users', '2020-04-16 03:59:22', '2020-04-16 03:59:22'),
('81817ea735dbe8159487162e99c98829d0128621efa8c5297a2e2467195b635b2e21f5fa0d4d7140', 'users', '2020-06-07 04:18:36', '2020-06-07 04:18:36'),
('86a892523ad8ec264188f438903d7f801db8d23ece234740edc808ecd87ba4a55bba0f13ca12e679', 'users', '2020-06-05 06:48:12', '2020-06-05 06:48:12'),
('8829d9d29da9224e605b01ad029f09c66b7a2fd68a07bcf6dad110fd0e93bdca3de4c9576c6c5b01', 'users', '2020-04-11 03:55:36', '2020-04-11 03:55:36'),
('8ab50f93ebd4fc5dfcbc6bbf27a69e6d580e425baf83e3c536a9a42f0c4f24e9fbac4d3facb01f83', 'users', '2020-04-18 21:25:32', '2020-04-18 21:25:32'),
('8ad52a6f4ff9793c1f02beaf20ece37f911933f02f74745468043e1af80f6c149d455a12fafdc2e8', 'users', '2020-04-14 05:48:26', '2020-04-14 05:48:26'),
('8b92e400c06d71e5ed354151f114e275c41d1aefab9a7afcebd686f104be1926d4392573ceb930b3', 'users', '2020-07-07 16:40:46', '2020-07-07 16:40:46'),
('8f4979202734753aaf53162c2f3043083999218da792b0c2ae163c918534464223d852c75f81d39d', 'users', '2020-04-22 22:13:46', '2020-04-22 22:13:46'),
('9bc2602e13ee5e1dc2ff6c8109f20a58959907c8957fcdea93eb61d8bd5fc33b806c675eb5419ef1', 'users', '2020-07-01 01:14:55', '2020-07-01 01:14:55'),
('a18aab87b460c125ff2525014d630a9d29777026a822ed64c3e04686a382cc0b306cdb98b304bf14', 'users', '2020-05-25 10:37:23', '2020-05-25 10:37:23'),
('abbb74c112673ee71151a44b2d3f2f360d5b8784309ff8307f3343333dbcf0fe5664b97ec6043895', 'users', '2020-04-12 02:17:01', '2020-04-12 02:17:01'),
('acf44b41e4b2ce769afb5c3fb0e733514121c5deac0797c3c14b63d3157b2061b143cc67320c576c', 'users', '2020-05-08 00:55:42', '2020-05-08 00:55:42'),
('ae16aa82b66694f7db883ba527fd418c44c45e7bf7bb7f977b7b232c79b1cd334aec2c6feaf62d38', 'users', '2020-04-21 21:52:39', '2020-04-21 21:52:39'),
('b3aaef88b64428efcbfd4fc1ff1a5a852667e30d82cc006350f6bed7cb2e26d18a7f810511621bfd', 'users', '2020-05-28 00:06:44', '2020-05-28 00:06:44'),
('b5bc7ea6b83880e932bc5b93b6a739e44f64d34de2ca154dfb8105026fcbdd9302ce8f1ad2084860', 'users', '2020-06-08 06:06:41', '2020-06-08 06:06:41'),
('b7045392daed7fb0313101fcfd2dd0e14894bd995109751079ab9695f6733eac5efa7daff6a1669f', 'users', '2020-06-06 16:21:40', '2020-06-06 16:21:40'),
('befc68cc8dfc18d52a547ca9c06a483c5367e3e2fab3dc06b0373efaaa7c79cab6e9a7ee197a5d7c', 'users', '2020-06-06 16:13:25', '2020-06-06 16:13:25'),
('c46c515d624cb4e5718ae672631a929d80c420e37e7ab0a801f6e09c4e5726580c02b9f0216b1688', 'users', '2020-04-14 06:25:16', '2020-04-14 06:25:16'),
('c589fc95817f3132e99d765542912110e609c05d0c1e39e145ac8614ca5db7637a3ac7463f346c5d', 'users', '2020-06-06 07:52:54', '2020-06-06 07:52:54'),
('ca6ac41c428fa8bbb0479d25a2422c02aa601b5ee849164e8d4ed1d6f5be881f5013c645b0c9f41c', 'users', '2020-04-17 06:08:05', '2020-04-17 06:08:05'),
('cc22b46067b3834cc77167f43daf66238f4ef2cac4b9b13b63b2a024380789a72c9ec31c06ec8474', 'users', '2020-04-15 01:03:17', '2020-04-15 01:03:17'),
('cd842d66dd9df63efe8efa259cfdb6c89754345da6c6a758ec1dd5c334a8ec25b220995e551b9c48', 'users', '2020-06-04 21:00:16', '2020-06-04 21:00:16'),
('cebbf24fbb35403a3b43199448a6e73d0c3badb99048604a9bc5d32e490b1eef4d12800eb681aa86', 'users', '2020-04-14 05:49:53', '2020-04-14 05:49:53'),
('d51e1b1ca455aa42ea851a2f5015380b0db2ee579d96e6eb2a9137e529946b4d80d01a58ccc79f8c', 'users', '2020-05-07 03:28:06', '2020-05-07 03:28:06'),
('d8b7fb4767fe5e520d647e02504575cec23a3239bdc3bba86fe679fff9d11ee30055aebe3a6d3fe4', 'users', '2020-06-05 06:37:37', '2020-06-05 06:37:37'),
('dc13869600a8410e9ec13cf12b820dd4822cf23ae69d696d91efad7a8779425d7372156ecd94cdd1', 'users', '2020-04-14 17:04:50', '2020-04-14 17:04:50'),
('defba1f473f6b0b6a54a20b024ed99f9319c09d9b42c0c24f51251b545adb1d3e42566fb6a6e4bac', 'users', '2020-06-07 03:30:27', '2020-06-07 03:30:27'),
('e2886e734f0236254faca72a329e4b5c986e3685cfcac499efd2bb96f0aab74b0a2ee9877868f81b', 'users', '2020-04-11 21:36:20', '2020-04-11 21:36:20'),
('e32e37099307354f09467845498b940f5f24b3b780bdd85e8bcfec8ea0dceee2b4ab40c912b6500d', 'users', '2020-04-11 02:45:39', '2020-04-11 02:45:39'),
('e50275f6a6cbfd62e8da71be10ef2c0432fe7889293de4991a877c20c938145f97989f73f08bd8e4', 'users', '2020-06-04 21:11:52', '2020-06-04 21:11:52'),
('e5dd339b4e4840902f8f19d59563601fbea272c54c0a7ff0cbc22a0b4474203cf78a13a0f094ac9a', 'users', '2020-04-17 00:30:50', '2020-04-17 00:30:50'),
('e69727227a533ce869242f116c53b37b34138bd8dff6d1f1cba8d4f74073385134adde1202ba43d7', 'users', '2020-05-07 03:43:03', '2020-05-07 03:43:03'),
('e7810d840dbf19ddd4093f94c8db294ba5df6d16090de67bfa599603b07779c705639d8ea3aee089', 'users', '2020-06-07 03:09:02', '2020-06-07 03:09:02'),
('f0d3dba19087f9758c3fa1dbbd74f7102065fca97579042b8e6e86ce2db1f95accf938b8c5c59d56', 'users', '2020-04-14 05:55:13', '2020-04-14 05:55:13'),
('f254a1012a195515191b351361174d6208e91d126f0e81cb5e044b02f41e31c2dec464c949ee7e54', 'users', '2020-04-13 04:38:09', '2020-04-13 04:38:09'),
('f60827b1dc59c14821dcbb6a04791b0ec7d9e5f37ed47ffcfd6933fa37d176619553f92fe1533743', 'users', '2020-04-11 07:16:19', '2020-04-11 07:16:19'),
('f9402bf0ee1061c2a4d6d10d68070fb11153bd64358018da3c550caa3dcda57b1698a9c47f341176', 'users', '2020-04-14 07:39:34', '2020-04-14 07:39:34'),
('fffb16ffc629c32728eb83d0b2e9a3a38ab377184b0ea7b93c4ef20f05339db4d79ffd7cc269c38f', 'users', '2020-04-11 19:51:01', '2020-04-11 19:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Foodie Personal Access Client', 'CpnvLAJR0M4iIhA6y51aopuRMq45M5VHxsx9ZtUd', 'http://localhost', 1, 0, 0, '2020-04-08 18:09:41', '2020-04-08 18:09:41'),
(2, NULL, 'Foodie Password Grant Client', 'IdkdAUYQBa4AZ58F3apLaKGsOV6bEKsOY1bUx3Fk', 'http://localhost', 0, 1, 0, '2020-04-08 18:09:41', '2020-04-08 18:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-08 18:09:41', '2020-04-08 18:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('01bd55febb654cf46b9df7370a915beb1e1493b7525767e4a08b37a7a42d8f2a22b27023c5a5330a', '0f76f230be029cdacae1f3398ff20c92806a67707fc0ce196b6cc4c85b37b51895398133f9f95dc6', 0, '2021-04-14 01:16:49'),
('0a9b322b6ebc5e766733334694010423ad70af0afa4cd7339a92892dd0adc18c4f42a76f206ec660', '0dc2da0ccb0c71431748aeabb92aedfa8991e223a1390c88988bd9531de5ae87d2457a7f5830a976', 0, '2021-04-15 20:54:16'),
('0f4e4afce04d87e6f47fe30ff26abc199a5a74d5f17f1f017745a8fdf3da0da0aa67a4f1f9de78a0', '8ad52a6f4ff9793c1f02beaf20ece37f911933f02f74745468043e1af80f6c149d455a12fafdc2e8', 0, '2021-04-14 00:48:26'),
('128df8d34678b20a8ea1f483bb074500deadf91512e42b6f79cdd00a12bf667d0961c99892de4514', '38460b1d9f010853020951131307a4673ca88633ddb83aaee8f56847ab54cb90093fed3e3a3beacb', 0, '2021-06-06 11:12:13'),
('135e9a4b5e5596255bd9f2bf1e871ca0e6fd97eed08183e1db4730af4b60a0f0d2cd729634ee41cb', '04bedaec3ccd83ec6ba49169e60fd89b11e0d9b97086bfe05952ed791fa9ad8ae36698c23b8de2c8', 0, '2021-04-10 22:02:47'),
('198b3b3bf160fca9e696e091e85e2b3369da930ddbb48114dc38a4abec20222773f8e1e6f3eb8342', '8b92e400c06d71e5ed354151f114e275c41d1aefab9a7afcebd686f104be1926d4392573ceb930b3', 0, '2021-07-07 11:40:46'),
('1a3adc9e543890aafd6f2b29adef4e7d86beabbd45384678eddfb25358db9be4b6b28f69a707400b', '8ab50f93ebd4fc5dfcbc6bbf27a69e6d580e425baf83e3c536a9a42f0c4f24e9fbac4d3facb01f83', 0, '2021-04-18 16:25:32'),
('21efb432d6d3dd520f5ec770e610b00d56e68e5df4987ade2b3989120c9a762ca3d9a4110275f738', '0170e55e986d6bb0db0c33ca0f6a12ad44fd7758982bddaed37d558016ecc8ea4700cc08cc886865', 0, '2021-06-07 14:04:25'),
('23e7c91650b645e712e386eb9d75cf81b88555dddce6b11bae16bce447d5edbe5141491e4bdb696f', 'd51e1b1ca455aa42ea851a2f5015380b0db2ee579d96e6eb2a9137e529946b4d80d01a58ccc79f8c', 0, '2021-05-06 22:28:06'),
('38184cfc35fdd9f8253bac8a6062d2d0ddeefc03145c5ec0401662c5ad23554a47cb34ab0318a927', '27b4b6a16fea36550459b9aefff6952fbe6bf719ca4c1f84876bc218a9eed35dd2912aad7faf1d0b', 0, '2021-04-17 09:54:59'),
('3ce817102424b3ead1da0c699d31e72f580f951e330a1e5340cd321db70c03975ead7084ff576e0d', 'b7045392daed7fb0313101fcfd2dd0e14894bd995109751079ab9695f6733eac5efa7daff6a1669f', 0, '2021-06-06 11:21:40'),
('405ae6b482efc31a5ab74995571532abb1f4660c510714fd6a3c67dc5ac6959d9a80fc65352d93fb', '251c649ee9e45c348cf8729df343f934466d93f8d6cb61ba9ce5265d42b75458311207475fab56b6', 0, '2021-06-06 16:20:04'),
('460b3ad7dd5294825237b6ae4603a8d028434210893c27db2242d77fe580373c48bd0d473c0a537b', 'e2886e734f0236254faca72a329e4b5c986e3685cfcac499efd2bb96f0aab74b0a2ee9877868f81b', 0, '2021-04-11 16:36:20'),
('47d76835bb944a3c4273b74dcc210c044f8461c3d8aae28cb0224e22d4a59d0ddb9a92ae8b8a9295', 'cebbf24fbb35403a3b43199448a6e73d0c3badb99048604a9bc5d32e490b1eef4d12800eb681aa86', 0, '2021-04-14 00:49:53'),
('4912739fd5f85b95bf6c94261a9b7a17b84bf3c86df6be4b68366c240f3a2f17dc1f689d437ad886', 'f60827b1dc59c14821dcbb6a04791b0ec7d9e5f37ed47ffcfd6933fa37d176619553f92fe1533743', 0, '2021-04-11 02:16:19'),
('4f4646944edaa592d16ede423315c239b1f73a1820fcc5a0c36101bea83ac0fdeb643706189f2174', '79b29057045f829b8a094646ab75265bd896ea699f68690cc3180cf963f3352781e109944a078361', 0, '2021-04-14 00:02:35'),
('514cffbd3258baf8c28373ea3ce1e99d2fa215f5914c4ab4d7691197e6420dd4e4df3e57150fc351', '6582e90e51066ca6b196536befb88def11f6b0216266880f42fb128a14a55f4861becfcf9e94e99a', 0, '2021-04-20 21:36:32'),
('5297df64b136af5965afe5a21db9f77e36a37a94ac90bc010151a0032f4da5166791e010235d125e', '8f4979202734753aaf53162c2f3043083999218da792b0c2ae163c918534464223d852c75f81d39d', 0, '2021-04-22 17:13:46'),
('55c230179a557d1b5d67ab978be14f1ebd15c1473e2f7b7216bde4af75b5edca69492be5ed30037b', 'defba1f473f6b0b6a54a20b024ed99f9319c09d9b42c0c24f51251b545adb1d3e42566fb6a6e4bac', 0, '2021-06-06 22:30:27'),
('570273174de860c8de844af03e646f26629a255748a722dbf9fc5920cc461738386c9a8056c836ab', 'fffb16ffc629c32728eb83d0b2e9a3a38ab377184b0ea7b93c4ef20f05339db4d79ffd7cc269c38f', 0, '2021-04-11 14:51:01'),
('60cb59719f2247c6cadcab9ac9e13b6ba72c0828691e84554c9bfa0b93c93643ef7d294aa5863939', 'a18aab87b460c125ff2525014d630a9d29777026a822ed64c3e04686a382cc0b306cdb98b304bf14', 0, '2021-05-25 05:37:23'),
('651d879f7353e6beb36d8537fbbb242583ccca5a380fe8f9640f7f1f2453ad9b86220b4e03bcaf4a', 'cc22b46067b3834cc77167f43daf66238f4ef2cac4b9b13b63b2a024380789a72c9ec31c06ec8474', 0, '2021-04-14 20:03:17'),
('677fa84b83a4046beeb6b33d87ed755ea4629f28467c651d0c694db125da3b45ca6f0fd3fc1a148d', 'e7810d840dbf19ddd4093f94c8db294ba5df6d16090de67bfa599603b07779c705639d8ea3aee089', 0, '2021-06-06 22:09:02'),
('69e71e4a93f089d4d90b1b5535bb083e1e895adcbc61bb22a48fdabcc8e2156ba14bed637531ad8b', '336b80557cb7c376f467a5112f04260c6e358321be800633337ca7928cb6e6d5eaa0c7104c68386a', 0, '2021-06-06 22:07:34'),
('6dc49b8ee972e88a9361dec6ad574b51db6db3feab5f03ac1a9a731ee6fd08ccb3086b5e0b588619', 'e69727227a533ce869242f116c53b37b34138bd8dff6d1f1cba8d4f74073385134adde1202ba43d7', 0, '2021-05-06 22:43:03'),
('7415e77785e76ca2e7fce452356916e8799f45533f0910192d41c83d95efdb39931ae5a0393bac73', 'b3aaef88b64428efcbfd4fc1ff1a5a852667e30d82cc006350f6bed7cb2e26d18a7f810511621bfd', 0, '2021-05-27 19:06:44'),
('7b9880e153c46db08685cf10ce6c2335761bedc3bf7e40e91fefd200aa2ad6484c42ba7bfe07030b', '7397b658b6f370b8dfe707e0a8556a96f7a809893a490f1c24cfb87316bc9158b3226d6a90f4c36e', 0, '2021-04-15 20:03:40'),
('831edde1b9462007cc94b775c041b2d48c03b2cf57c92f9b3197d963941f6d95c8beeaa8b269fcb9', '81817ea735dbe8159487162e99c98829d0128621efa8c5297a2e2467195b635b2e21f5fa0d4d7140', 0, '2021-06-06 23:18:36'),
('86a89a7f9dc3b446256233181288d5c324fb9273f6f5daddfb1aaf5d2cecf71a3105be3e1d9ee0a6', '6331db0a0d3e145b261d9de37df08ae5891b5022749825f1e6a15d94f19ed60d4389755e5f47072d', 0, '2021-04-14 11:39:13'),
('88c8d0d3507b5e0e1ab9a13b1e5b2ce9117c013192fcd6b05d7f329c35ed851abfb7e6652167e2ff', '2eaa71acdc0a80e0e18503b3e763b2814f562904e05f14a83a4fae0deb1a3ad92e05f05769d326e1', 0, '2021-06-06 11:13:55'),
('8a9607206548bba5ae0e21469b15a72702c3687529bc9c954aa5bdbb05c55d675fcbcc89e0b6cef1', 'ae16aa82b66694f7db883ba527fd418c44c45e7bf7bb7f977b7b232c79b1cd334aec2c6feaf62d38', 0, '2021-04-21 16:52:39'),
('8fae909597aa6fe6cc1bc9e053090cb03e39c44a7cd21e3e514b74207408e41aced381b685fda9fa', '1e36fe1f0059fdc8964ba235d60c8892674f8290198160c0d0cd3e38c558319f3318a37f48781429', 0, '2021-04-11 21:50:58'),
('95ed3c76f50cc3e8d0a621c915c14ce4bafb1b25bece2bf6e115aaf02d1330da0eb683ea0aad6710', 'c46c515d624cb4e5718ae672631a929d80c420e37e7ab0a801f6e09c4e5726580c02b9f0216b1688', 0, '2021-04-14 01:25:16'),
('968c6ccbb0c4507e2445c2b2fbefe632c294492268e45d321b5521460a3eb7df506a38a857cf581e', 'acf44b41e4b2ce769afb5c3fb0e733514121c5deac0797c3c14b63d3157b2061b143cc67320c576c', 0, '2021-05-07 19:55:42'),
('98f11f2a3324be6df7be573df534deea37ebcf23e9a4f2ed303a2d1be15fc1c2df8963199746cf37', '1e175c78c6aa7e72307a62db68bb1d60a5ec2c8cb5c840df489db658fff09bf2513102d00f1c42a4', 0, '2021-04-15 20:19:23'),
('9ce868682d4d6bc1ae00dff0379f0367ce7d889270c28897d561dd714474e50e157e86430fb8e82a', '79f1ac1a8e76ca13c4386608ac573c697bf3c9c7ad0c7a1defa631b336134d1134f4908ff2b4200c', 0, '2021-04-14 02:26:45'),
('9e774d41e0e5167b0ea842cfc6596341cc892a7c5390dd7205d81f1cf1a8c6958686b2fc4599310b', 'd8b7fb4767fe5e520d647e02504575cec23a3239bdc3bba86fe679fff9d11ee30055aebe3a6d3fe4', 0, '2021-06-05 01:37:37'),
('9f224dd292211802eef312a5b7d3d9ad95437f93bad1c7895defabc5b04d17417680787966ddff05', 'b5bc7ea6b83880e932bc5b93b6a739e44f64d34de2ca154dfb8105026fcbdd9302ce8f1ad2084860', 0, '2021-06-08 01:06:41'),
('ac5bc0160f45f771281f2d42024b71e3e008d83e36d92c6e5857e1bfe212a0192dd348e09ff730d9', 'cd842d66dd9df63efe8efa259cfdb6c89754345da6c6a758ec1dd5c334a8ec25b220995e551b9c48', 0, '2021-06-04 16:00:16'),
('b3726131505d9f42ceb7a0792c05646a9fffad58d99d3107ed6c83349b9c2e8944d520ebf2b57114', 'f254a1012a195515191b351361174d6208e91d126f0e81cb5e044b02f41e31c2dec464c949ee7e54', 0, '2021-04-12 23:38:09'),
('c3c5198f02ff785ff779d788212beff92d67659a2b284b90f90e06283f129ab82330a0e50ec226b0', 'e5dd339b4e4840902f8f19d59563601fbea272c54c0a7ff0cbc22a0b4474203cf78a13a0f094ac9a', 0, '2021-04-16 19:30:50'),
('c43bd0df53efa8bc3dba0662cb9926cbd9a95e0f131130c0e63dfdd038f00064fddbaefdd6f61c32', 'e32e37099307354f09467845498b940f5f24b3b780bdd85e8bcfec8ea0dceee2b4ab40c912b6500d', 0, '2021-04-10 21:45:39'),
('c630055311a17696e22b06182978866abcf12d0c09df6a9bc11a13893833c1361b415a05275f6ef7', 'c589fc95817f3132e99d765542912110e609c05d0c1e39e145ac8614ca5db7637a3ac7463f346c5d', 0, '2021-06-06 02:52:54'),
('c75d648a9dfe79c996663de447624f8f059c45ec78cdfaef08e28bce61e43d2bdca52e0bed448da9', '86a892523ad8ec264188f438903d7f801db8d23ece234740edc808ecd87ba4a55bba0f13ca12e679', 0, '2021-06-05 01:48:12'),
('c8a189e5a3b2a463d5c1325f05c0c99d6eae130d2cd2bcccc33af84b286c062e81c4c42482685939', '3f3136680fbb2640a6f2529a414b50f6facd5b70b8cf538d8e74bb77f8ad8408a51b6039b5916fb0', 0, '2021-06-06 11:15:56'),
('cc772a69442a589e8891ed53d5965d28264a78df1d62f3929c6c74400b56c7ee676a9ea44e3a9abf', '64af82fe7e015fe97f3d39e9dbfd9125f91e62d01a9dcda9df835d40ff7444ce555c566f8e4c11d3', 0, '2021-06-26 14:47:32'),
('e0e1e10b4b86aec18e0eedd44d7686965471b2168fc81419cbb3b78154995b51f32008ee87613a06', 'befc68cc8dfc18d52a547ca9c06a483c5367e3e2fab3dc06b0373efaaa7c79cab6e9a7ee197a5d7c', 0, '2021-06-06 11:13:25'),
('e110f6aeea7b98e6d285fc051bf9e792307f1f3e100fbf7c8592255beebf6213ec8236fb20d39334', '480e509d9b9c85433461d9c2a8f6a804c8ec3cc7f4f126e6645b09d3993daad916e6656c3c7fe9c8', 0, '2021-04-21 16:53:46'),
('e237645563d27c65d5c5459c696c3ebfe3ebc3f73d91169fe078175d389b9f8a76ebd156c8547b9a', 'ca6ac41c428fa8bbb0479d25a2422c02aa601b5ee849164e8d4ed1d6f5be881f5013c645b0c9f41c', 0, '2021-04-17 01:08:05'),
('e54b21dc1c067f5e38431a862a6fd9a2328628ec58b384050d01fc209adef9aa1183ee645ee10ffb', '0d37871ed0da858be991735c66a64d2b7ac71dcf2e822ed9141ac3c3c4bec6b1f36ada8ea6a434b4', 0, '2021-06-06 11:25:25'),
('e7e01a5a209d7282c596d7a32141bf1e7616c88a5535b4c12787917b465d08abdee90162b339b7f9', '2f4ab350e7eefaa5f41696328f5e2fa94d33b8bee67b4b742639ea70bcb432b0025cadb49d7d8d63', 0, '2021-04-22 21:49:14'),
('eb8bb04c253ae752e91813772b2b83d6a8e4c7cb7697121f1ffbb5b836490fe19af8b7f02db9d5d5', '08207a5e38db8c30ab581eacd883d7ebe6ce5eae27cad9b2f84bef7fadb9ec6f7efe34ef3332bc93', 0, '2021-04-14 01:03:04'),
('f09c22bcb9c876ce336f8008eea323d27cef02add4eb1a30f3baac724fbd83c159943529c7c2ba7c', '66cdd769b8c55c32c02bd1cb77b68cd2b02b591c4b9cff9f83c20339e0ebdd5c98cd570bead69d23', 0, '2021-06-06 11:14:21'),
('f0ef67198a34b7b827bffb865df09fd519318b9c6cb816d0c4694cee5bc02c8bf928211741d397dc', 'abbb74c112673ee71151a44b2d3f2f360d5b8784309ff8307f3343333dbcf0fe5664b97ec6043895', 0, '2021-04-11 21:17:01'),
('f4dba3669009ef68742446fe3105a0b9dfabb3887eef57c34ac702e501e1520830202491a0f4c642', 'e50275f6a6cbfd62e8da71be10ef2c0432fe7889293de4991a877c20c938145f97989f73f08bd8e4', 0, '2021-06-04 16:11:52'),
('f6ab7512e45febb778c0ca4fbe7e4d890de9556ad2d7a5398798c6d0bcd6e89941a0284290055503', '3f48dd81aff63a58f8b1fe0b8a35c317965e5f6119ea905a2e452323917a99283d61a049fd6b6840', 0, '2021-04-13 23:24:55'),
('fafed788257c8a36efce506c26c76b10873dfddcef01ba4519fbf5929d76d94d95472062b757c2ba', '00f9b3af58404cb349064a5aea2d06f0733b632c3e2b16f49383638341963f5f94be453e1c2af44c', 0, '2021-05-08 00:19:48'),
('fb6b4f466fdb77c6de0c7235ebeb9edcc95953c769e889e4e8d8cc2bead0f13f1164d23e786ce851', 'f0d3dba19087f9758c3fa1dbbd74f7102065fca97579042b8e6e86ce2db1f95accf938b8c5c59d56', 0, '2021-04-14 00:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `user_address_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `transporter_id` int(11) DEFAULT NULL,
  `transporter_vehicle_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispute` enum('CREATED','RESOLVE','NODISPUTE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NODISPUTE',
  `delivery_date` datetime NOT NULL,
  `order_otp` int(11) NOT NULL,
  `order_ready_time` int(11) NOT NULL DEFAULT 0,
  `order_ready_status` int(11) NOT NULL DEFAULT 0,
  `status` enum('ORDERED','RECEIVED','CANCELLED','ASSIGNED','PROCESSING','SEARCHING','REACHED','PICKEDUP','ARRIVED','COMPLETED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ORDERED',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `schedule_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `shift_id`, `user_address_id`, `shop_id`, `transporter_id`, `transporter_vehicle_id`, `reason`, `note`, `route_key`, `dispute`, `delivery_date`, `order_otp`, `order_ready_time`, `order_ready_status`, `status`, `created_at`, `updated_at`, `deleted_at`, `schedule_status`) VALUES
(47, '7e0625ce-1782-46d9-9fe5-54a2fcaa0658', 18, NULL, 15, 5, NULL, NULL, NULL, NULL, '', 'CREATED', '2020-06-04 19:04:00', 594134, 0, 0, 'ORDERED', '2020-06-05 00:04:21', '2020-06-05 00:04:24', NULL, 0),
(48, '0769d9fe-b0e5-4b48-89f9-8341fe8749f6', 18, NULL, 15, 5, NULL, NULL, NULL, NULL, '', 'CREATED', '2020-06-04 19:21:00', 350158, 10, 0, 'RECEIVED', '2020-06-05 00:21:19', '2020-06-05 01:28:41', NULL, 0),
(49, 'f50c4ba9-ea9e-4084-a024-f1f58157269b', 18, NULL, 17, 5, NULL, NULL, NULL, NULL, '', 'CREATED', '2020-06-04 19:34:00', 588204, 1, 0, 'RECEIVED', '2020-06-05 00:34:16', '2020-06-05 01:28:41', NULL, 0),
(50, 'b98be4e9-be3f-4021-ac03-31dafdfb5606', 18, NULL, 18, 5, NULL, NULL, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'CREATED', '2020-06-04 20:21:00', 209704, 1, 0, 'RECEIVED', '2020-06-05 01:21:58', '2020-06-05 01:28:46', NULL, 0),
(51, 'af5ebf05-770e-4083-b797-90a64ab59e11', 18, NULL, 18, 5, NULL, NULL, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'CREATED', '2020-06-06 02:18:00', 690197, 1, 0, 'CANCELLED', '2020-06-06 07:18:14', '2020-06-06 07:25:43', NULL, 0),
(52, '8651a7e2-e996-41b9-95e9-4c6acbb1c92d', 18, NULL, 18, 5, NULL, NULL, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'CREATED', '2020-06-06 02:27:00', 367758, 0, 0, 'ORDERED', '2020-06-06 07:27:38', '2020-06-06 07:27:39', NULL, 0),
(53, 'b9b0ecac-0fc1-41b6-bbaa-2b88c3bec19f', 18, NULL, 18, 5, NULL, NULL, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'CREATED', '2020-06-06 02:30:00', 482751, 2, 0, 'CANCELLED', '2020-06-06 07:30:14', '2020-06-27 05:59:52', NULL, 0),
(54, 'b4288119-47e3-4f52-912b-eb9745482751', 18, 6, 18, 5, 5, 6, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'NODISPUTE', '2020-06-06 02:37:00', 476622, 1, 0, 'COMPLETED', '2020-06-06 07:37:02', '2020-06-06 07:44:32', NULL, 0),
(55, '550c0100-dc6e-4332-973d-ecabb7f305f9', 18, 6, 18, 5, 5, 6, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgM|@iASSoBnCcBzB}BfDwB~BKBo@Qy@GsAYk@?qDb@sFp@UFSTV^tFfIlAbB', 'NODISPUTE', '2020-06-06 02:46:00', 364309, 1, 1, 'COMPLETED', '2020-06-06 07:46:01', '2020-06-06 07:49:21', NULL, 0),
(56, '3d0b5d50-9e11-4cc7-b45b-aceb49b207b5', 25, NULL, 22, 5, NULL, NULL, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgMrAiBrBeDtBqDxAsBxBkC~A}BNELKnB}CtByCHGD?BDAHiA~AY`@E\\wEtGaB`CmAnBeDnE_CjDqBtCqG~IsArBg@`AyA|BmBpCkA~AIj@?h@@RJXv@hAtGpJbDtEbDpEXX]Vg@`@}@qAqByCaCoDiHgKsBoCo@y@iAiBO_@[gAoFuHqIwLqJ_NsNsSWe@[y@yA{DeD_JoEcM_GsOoAgDwCcKcCaJkA}F}EoZ_AoFe@uCsAaI]uBeBqJ]qBUsBe@}C]uDq@yGmA}Ki@sE]sC]gCc@iCO}@GFO`@Uh@yAc@Lg@LQFODe@AO', 'CREATED', '2020-06-26 21:00:00', 971786, 30, 0, 'RECEIVED', '2020-06-27 02:00:46', '2020-06-27 05:56:30', NULL, 0),
(57, 'dd5c488b-d639-487f-981b-28b41fc39fe1', 25, 6, 22, 5, 5, 6, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgMrAiBrBeDtBqDxAsBxBkC~A}BNELKnB}CtByCHGD?BDAHiA~AY`@E\\wEtGaB`CmAnBeDnE_CjDqBtCqG~IsArBg@`AyA|BmBpCkA~AIj@?h@@RJXv@hAtGpJbDtEbDpEXX]Vg@`@}@qAqByCaCoDiHgKsBoCo@y@iAiBO_@[gAoFuHqIwLqJ_NsNsSWe@[y@yA{DeD_JoEcM_GsOoAgDwCcKcCaJkA}F}EoZ_AoFe@uCsAaI]uBeBqJ]qBUsBe@}C]uDq@yGmA}Ki@sE]sC]gCc@iCO}@GFO`@Uh@yAc@Lg@LQFODe@AO', 'NODISPUTE', '2020-06-27 01:01:00', 592533, 5, 1, 'COMPLETED', '2020-06-27 06:01:50', '2020-06-27 06:17:16', NULL, 0),
(58, '8e60a220-38bc-4f9c-95e8-ba47ee51f5aa', 25, 6, 22, 5, 5, 6, NULL, NULL, 'wxawC}{oxKpBoBbCqCdBcCvB}CfJgMrAiBrBeDtBqDxAsBxBkC~A}BNELKnB}CtByCHGD?BDAHiA~AY`@E\\wEtGaB`CmAnBeDnE_CjDqBtCqG~IsArBg@`AyA|BmBpCkA~AIj@?h@@RJXv@hAtGpJbDtEbDpEXX]Vg@`@}@qAqByCaCoDiHgKsBoCo@y@iAiBO_@[gAoFuHqIwLqJ_NsNsSWe@[y@yA{DeD_JoEcM_GsOoAgDwCcKcCaJkA}F}EoZ_AoFe@uCsAaI]uBeBqJ]qBUsBe@}C]uDq@yGmA}Ki@sE]sC]gCc@iCO}@GFO`@Uh@yAc@Lg@LQFODe@AO', 'NODISPUTE', '2020-06-27 01:44:00', 191060, 10, 0, 'COMPLETED', '2020-06-27 06:44:24', '2020-06-27 07:06:20', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_disputes`
--

CREATE TABLE `order_disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_disputehelp_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `transporter_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `type` enum('CANCELLED','COMPLAINED','REFUND','REASSIGN') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` enum('user','shop','transporter') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_to` enum('user','shop','transporter','dispatcher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('CREATED','RESOLVED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_disputes`
--

INSERT INTO `order_disputes` (`id`, `order_id`, `order_disputehelp_id`, `user_id`, `transporter_id`, `shop_id`, `type`, `created_by`, `created_to`, `status`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-09 06:27:23', '2020-04-09 06:27:23', NULL),
(2, 1, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-09 06:27:24', '2020-04-09 06:27:24', NULL),
(3, 2, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-09 06:32:50', '2020-04-09 06:32:50', NULL),
(4, 3, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-09 06:35:23', '2020-04-09 06:35:23', NULL),
(5, 8, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-09 07:14:20', '2020-04-09 07:14:20', NULL),
(6, 4, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-09 07:30:37', '2020-04-09 07:30:37', NULL),
(7, 5, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-09 07:35:27', '2020-04-09 07:35:27', NULL),
(8, 5, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-09 07:35:27', '2020-04-09 07:35:27', NULL),
(9, 7, 0, 0, 0, 1, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-09 07:56:42', '2020-04-09 07:56:42', NULL),
(10, 11, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-11 01:19:35', '2020-04-11 01:19:35', NULL),
(11, 12, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-11 01:23:11', '2020-04-11 01:23:11', NULL),
(12, 13, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-11 01:24:51', '2020-04-11 01:24:51', NULL),
(13, 14, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-11 01:26:06', '2020-04-11 01:26:06', NULL),
(14, 30, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-11 09:43:37', '2020-04-11 09:43:37', NULL),
(15, 6, 0, 0, 1, 0, 'COMPLAINED', 'transporter', 'transporter', 'CREATED', 'No Delivery receive request', '2020-04-14 07:35:22', '2020-04-14 07:35:22', NULL),
(16, 33, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-14 07:35:22', '2020-04-14 07:35:22', NULL),
(17, 36, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-14 07:45:02', '2020-04-14 07:45:02', NULL),
(18, 36, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-14 07:45:03', '2020-04-14 07:45:03', NULL),
(19, 35, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-14 07:46:22', '2020-04-14 07:46:22', NULL),
(20, 37, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-14 07:46:43', '2020-04-14 07:46:43', NULL),
(21, 38, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-14 07:51:08', '2020-04-14 07:51:08', NULL),
(22, 9, 0, 0, 2, 0, 'COMPLAINED', 'transporter', 'transporter', 'CREATED', 'No Delivery receive request', '2020-04-14 14:58:44', '2020-04-14 14:58:44', NULL),
(23, 29, 0, 0, 4, 0, 'COMPLAINED', 'transporter', 'transporter', 'CREATED', 'No Delivery receive request', '2020-04-14 22:11:32', '2020-04-14 22:11:32', NULL),
(24, 41, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-14 22:11:33', '2020-04-14 22:11:33', NULL),
(25, 42, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-15 05:16:05', '2020-04-15 05:16:05', NULL),
(26, 43, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-15 05:16:06', '2020-04-15 05:16:06', NULL),
(27, 44, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-04-21 07:46:46', '2020-04-21 07:46:46', NULL),
(28, 45, 0, 0, 0, 3, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-04-21 07:48:52', '2020-04-21 07:48:52', NULL),
(29, 47, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-06-05 00:04:24', '2020-06-05 00:04:24', NULL),
(30, 48, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-05 01:28:41', '2020-06-05 01:28:41', NULL),
(31, 49, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-05 01:28:41', '2020-06-05 01:28:41', NULL),
(32, 50, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-05 01:28:46', '2020-06-05 01:28:46', NULL),
(33, 51, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-06 07:21:23', '2020-06-06 07:21:23', NULL),
(34, 52, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-06-06 07:27:39', '2020-06-06 07:27:39', NULL),
(35, 52, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'Restaurant not received', '2020-06-06 07:27:39', '2020-06-06 07:27:39', NULL),
(36, 53, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-06 07:42:28', '2020-06-06 07:42:28', NULL),
(37, 53, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-06 07:42:29', '2020-06-06 07:42:29', NULL),
(38, 56, 0, 0, 0, 5, 'COMPLAINED', 'shop', 'shop', 'CREATED', 'No Delivery people available', '2020-06-27 05:56:30', '2020-06-27 05:56:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_dispute_comments`
--

CREATE TABLE `order_dispute_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `order_dispute_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_dispute_helps`
--

CREATE TABLE `order_dispute_helps` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('CANCELLED','COMPLAINED','REFUND','REASSIGN') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_dispute_helps`
--

INSERT INTO `order_dispute_helps` (`id`, `name`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hello', 'CANCELLED', '2020-04-11 09:30:37', '2020-04-11 09:30:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_invoices`
--

CREATE TABLE `order_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `gross` double(10,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `delivery_charge` double(10,2) NOT NULL DEFAULT 0.00,
  `wallet_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `payable` int(11) NOT NULL DEFAULT 0,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `net` int(11) NOT NULL DEFAULT 0,
  `total_pay` double NOT NULL DEFAULT 0,
  `tender_pay` double NOT NULL DEFAULT 0,
  `ripple_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` enum('cash','stripe','paypal','braintree','wallet','ripple','eather','bitcoin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `DestinationTag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','failed','success') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_invoices`
--

INSERT INTO `order_invoices` (`id`, `order_id`, `quantity`, `paid`, `gross`, `discount`, `delivery_charge`, `wallet_amount`, `payable`, `tax`, `net`, `total_pay`, `tender_pay`, `ripple_price`, `payment_mode`, `DestinationTag`, `payment_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, 100.00, 20.00, 20.00, 0.00, 108, 8.00, 108, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:26:46', '2020-04-09 06:26:46', NULL),
(2, 2, 1, 0, 200.00, 40.00, 20.00, 0.00, 196, 16.00, 196, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:32:44', '2020-04-09 06:32:44', NULL),
(3, 3, 2, 0, 200.00, 40.00, 20.00, 0.00, 196, 16.00, 196, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:35:18', '2020-04-09 06:35:18', NULL),
(4, 4, 3, 0, 300.00, 60.00, 20.00, 0.00, 284, 24.00, 284, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:39:17', '2020-04-09 06:39:17', NULL),
(5, 5, 3, 0, 300.00, 60.00, 20.00, 0.00, 284, 24.00, 284, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:44:01', '2020-04-09 06:44:01', NULL),
(6, 6, 6, 0, 1500.00, 300.00, 20.00, 0.00, 1340, 120.00, 1340, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 06:47:25', '2020-04-09 06:47:25', NULL),
(7, 7, 3, 0, 300.00, 60.00, 20.00, 0.00, 284, 24.00, 284, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 07:05:26', '2020-04-09 07:05:26', NULL),
(8, 8, 1, 0, 100.00, 20.00, 20.00, 0.00, 108, 8.00, 108, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-09 07:11:56', '2020-04-09 07:11:56', NULL),
(9, 9, 1, 0, 100.00, 20.00, 20.00, 0.00, 108, 8.00, 108, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-10 23:50:18', '2020-04-10 23:50:18', NULL),
(10, 10, 3, 0, 450.00, 45.00, 20.00, 0.00, 466, 40.50, 466, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 00:44:08', '2020-04-11 00:44:08', NULL),
(11, 11, 1, 0, 150.00, 15.00, 20.00, 0.00, 169, 13.50, 169, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 01:18:34', '2020-04-11 01:18:34', NULL),
(12, 12, 1, 0, 150.00, 15.00, 20.00, 0.00, 169, 13.50, 169, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 01:22:10', '2020-04-11 01:22:10', NULL),
(13, 13, 1, 0, 150.00, 15.00, 20.00, 0.00, 169, 13.50, 169, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 01:23:50', '2020-04-11 01:23:50', NULL),
(14, 14, 1, 0, 1200.00, 120.00, 20.00, 0.00, 1208, 108.00, 1208, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 01:25:03', '2020-04-11 01:25:03', NULL),
(15, 15, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 02:01:31', '2020-04-11 02:04:08', NULL),
(16, 16, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 02:09:08', '2020-04-11 02:11:27', NULL),
(17, 17, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 02:23:02', '2020-04-11 02:23:02', NULL),
(18, 18, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 140, 6, '0', 'cash', '', '0', 'success', '2020-04-11 02:28:43', '2020-04-11 02:31:22', NULL),
(19, 19, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 02:35:32', '2020-04-11 02:37:58', NULL),
(20, 20, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 06:04:40', '2020-04-11 06:04:40', NULL),
(21, 21, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 06:08:54', '2020-04-11 06:10:31', NULL),
(22, 22, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:17:17', '2020-04-11 09:18:10', NULL),
(23, 23, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:19:58', '2020-04-11 09:21:11', NULL),
(24, 24, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:22:22', '2020-04-11 09:23:15', NULL),
(25, 25, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:23:54', '2020-04-11 09:24:34', NULL),
(26, 26, 1, 1, 400.00, 124.00, 20.00, 0.00, 324, 27.60, 324, 324, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:27:51', '2020-04-11 09:28:27', NULL),
(27, 27, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:31:02', '2020-04-11 09:31:40', NULL),
(28, 28, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:33:59', '2020-04-11 09:34:50', NULL),
(29, 29, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 09:39:50', '2020-04-11 09:39:50', NULL),
(30, 30, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-11 09:41:26', '2020-04-11 09:41:26', NULL),
(31, 31, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-11 09:51:15', '2020-04-11 09:53:09', NULL),
(32, 32, 1, 1, 550.00, 170.50, 20.00, 0.00, 437, 37.95, 437, 450, 13, '0', 'cash', '', '0', 'success', '2020-04-11 21:37:41', '2020-04-11 21:54:41', NULL),
(33, 33, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-13 04:38:33', '2020-04-13 04:38:33', NULL),
(34, 34, 2, 0, 300.00, 93.00, 20.00, 0.00, 248, 20.70, 248, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-13 04:39:02', '2020-04-13 04:39:02', NULL),
(35, 35, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-14 07:28:56', '2020-04-14 07:28:56', NULL),
(36, 36, 2, 0, 300.00, 93.00, 20.00, 0.00, 248, 20.70, 248, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-14 07:37:21', '2020-04-14 07:37:21', NULL),
(37, 37, 1, 0, 200.00, 62.00, 20.00, 0.00, 172, 13.80, 172, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-14 07:45:41', '2020-04-14 07:45:41', NULL),
(38, 38, 1, 0, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-14 07:48:47', '2020-04-14 07:48:47', NULL),
(39, 39, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-14 07:52:17', '2020-04-14 07:54:17', NULL),
(40, 40, 1, 1, 150.00, 46.50, 20.00, 0.00, 134, 10.35, 134, 134, 0, '0', 'cash', '', '0', 'success', '2020-04-14 08:06:12', '2020-04-14 16:41:10', NULL),
(41, 41, 1, 0, 200.00, 62.00, 20.00, 0.00, 172, 13.80, 172, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-14 16:46:54', '2020-04-14 16:46:54', NULL),
(42, 42, 3, 0, 1500.00, 465.00, 20.00, 0.00, 1159, 103.50, 1159, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-15 01:01:03', '2020-04-15 01:01:03', NULL),
(43, 43, 1, 0, 800.00, 248.00, 20.00, 0.00, 627, 55.20, 627, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-15 03:02:33', '2020-04-15 03:02:33', NULL),
(44, 44, 1, 0, 400.00, 40.00, 2.50, 0.00, 399, 36.00, 399, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-21 07:46:43', '2020-04-21 07:46:43', NULL),
(45, 45, 1, 0, 200.00, 20.00, 2.50, 0.00, 201, 18.00, 201, 0, 0, '0', 'cash', '', '0', 'pending', '2020-04-21 07:48:30', '2020-04-21 07:48:30', NULL),
(46, 46, 1, 0, 2100.00, 210.00, 2.50, 0.00, 2082, 189.00, 2082, 0, 0, '0', 'cash', '', '0', 'pending', '2020-05-27 22:57:08', '2020-05-27 22:57:08', NULL),
(47, 47, 1, 0, 2940.00, 2940.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-05 00:04:21', '2020-06-05 00:04:21', NULL),
(48, 48, 2, 0, 500.00, 500.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-05 00:21:19', '2020-06-05 00:21:19', NULL),
(49, 49, 2, 0, 440.00, 440.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-05 00:34:16', '2020-06-05 00:34:16', NULL),
(50, 50, 4, 0, 4000.00, 4000.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-05 01:21:58', '2020-06-05 01:21:58', NULL),
(51, 51, 1, 0, 5470.00, 5470.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-06 07:18:14', '2020-06-06 07:18:14', NULL),
(52, 52, 1, 0, 220.00, 220.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-06 07:27:38', '2020-06-06 07:27:38', NULL),
(53, 53, 1, 0, 250.00, 250.00, 2.50, 0.00, 3, 0.00, 3, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-06 07:30:14', '2020-06-06 07:30:14', NULL),
(54, 54, 1, 1, 250.00, 250.00, 2.50, 0.00, 3, 0.00, 3, 5, 2, '0', 'cash', '', '0', 'success', '2020-06-06 07:37:02', '2020-06-06 07:44:28', NULL),
(55, 55, 1, 1, 220.00, 220.00, 2.50, 0.00, 3, 0.00, 3, 3, 0, '0', 'cash', '', '0', 'success', '2020-06-06 07:46:01', '2020-06-06 07:49:17', NULL),
(56, 56, 1, 0, 1000.00, 1000.00, 20.00, 0.00, 20, 0.00, 20, 0, 0, '0', 'cash', '', '0', 'pending', '2020-06-27 02:00:46', '2020-06-27 02:00:46', NULL),
(57, 57, 1, 1, 220.00, 220.00, 20.00, 0.00, 20, 0.00, 20, 25, 5, '0', 'cash', '', '0', 'success', '2020-06-27 06:01:50', '2020-06-27 06:17:12', NULL),
(58, 58, 1, 1, 470.00, 470.00, 20.00, 0.00, 20, 0.00, 20, 50, 30, '0', 'cash', '', '0', 'success', '2020-06-27 06:44:24', '2020-06-27 07:06:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_ratings`
--

CREATE TABLE `order_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_rating` int(11) DEFAULT NULL,
  `user_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transporter_id` int(11) DEFAULT NULL,
  `transporter_rating` int(11) DEFAULT NULL,
  `transporter_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `shop_rating` int(11) DEFAULT NULL,
  `shop_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_ratings`
--

INSERT INTO `order_ratings` (`id`, `order_id`, `user_id`, `user_rating`, `user_comment`, `transporter_id`, `transporter_rating`, `transporter_comment`, `shop_id`, `shop_rating`, `shop_comment`, `created_at`, `updated_at`) VALUES
(1, 15, 3, 5, 'Dkdk', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 02:04:13', '2020-04-11 02:07:15'),
(2, 16, 3, 5, 'Ok', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 02:11:37', '2020-04-11 02:12:30'),
(3, 18, 3, 5, 'Fg', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 02:31:29', '2020-04-11 02:31:29'),
(4, 19, 3, 5, 'Ddd', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 02:38:18', '2020-04-11 02:38:18'),
(5, 21, 3, 5, 'Fff', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 06:10:35', '2020-04-11 09:14:22'),
(6, 22, 3, 5, 'Tvr', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 09:18:14', '2020-04-11 09:19:03'),
(7, 23, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 09:22:36', '2020-04-11 09:22:36'),
(8, 24, 3, 5, 'H', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 09:23:24', '2020-04-11 09:23:24'),
(9, 28, 3, 5, 'Gg', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 09:34:57', '2020-04-11 09:34:57'),
(10, 31, 3, 5, 'F', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 09:53:14', '2020-04-11 09:53:14'),
(11, 32, 3, 5, 'Fine greag', 5, 5, 'Great', NULL, NULL, NULL, '2020-04-11 21:54:55', '2020-04-11 21:55:12'),
(12, 39, 3, 5, 'Hello', 5, 4, 'ok', NULL, NULL, NULL, '2020-04-14 07:54:21', '2020-04-14 07:54:54'),
(13, 40, 3, 5, 'the delivery was fast. thanks', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-14 16:41:43', '2020-04-14 16:41:43'),
(14, 54, 18, 5, 'good', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-06 07:44:39', '2020-06-06 07:44:39'),
(15, 55, 18, 5, 'gsgshs', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-06 07:49:21', '2020-06-06 07:49:21'),
(16, 57, 25, 5, NULL, 5, 5, NULL, NULL, NULL, NULL, '2020-06-27 06:17:16', '2020-06-27 06:39:22'),
(17, 58, 25, 5, 'Great', NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 07:06:33', '2020-06-27 07:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_timings`
--

CREATE TABLE `order_timings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` enum('ORDERED','RECEIVED','CANCELLED','ASSIGNED','PROCESSING','REACHED','PICKEDUP','ARRIVED','COMPLETED','SEARCHING') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_timings`
--

INSERT INTO `order_timings` (`id`, `order_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORDERED', '2020-04-09 06:26:46', '2020-04-09 06:26:46'),
(2, 2, 'ORDERED', '2020-04-09 06:32:44', '2020-04-09 06:32:44'),
(3, 2, 'RECEIVED', '2020-04-09 06:32:58', '2020-04-09 06:32:58'),
(4, 3, 'ORDERED', '2020-04-09 06:35:18', '2020-04-09 06:35:18'),
(5, 3, 'RECEIVED', '2020-04-09 06:35:25', '2020-04-09 06:35:25'),
(6, 4, 'ORDERED', '2020-04-09 06:39:17', '2020-04-09 06:39:17'),
(7, 4, 'RECEIVED', '2020-04-09 06:39:35', '2020-04-09 06:39:35'),
(8, 5, 'ORDERED', '2020-04-09 06:44:01', '2020-04-09 06:44:01'),
(9, 5, 'RECEIVED', '2020-04-09 06:44:26', '2020-04-09 06:44:26'),
(10, 6, 'ORDERED', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(11, 6, 'RECEIVED', '2020-04-09 06:47:51', '2020-04-09 06:47:51'),
(12, 6, 'ASSIGNED', '2020-04-09 07:00:12', '2020-04-09 07:00:12'),
(13, 7, 'ORDERED', '2020-04-09 07:05:26', '2020-04-09 07:05:26'),
(14, 7, 'RECEIVED', '2020-04-09 07:05:38', '2020-04-09 07:05:38'),
(15, 8, 'ORDERED', '2020-04-09 07:11:56', '2020-04-09 07:11:56'),
(16, 8, 'RECEIVED', '2020-04-09 07:12:20', '2020-04-09 07:12:20'),
(17, 9, 'ORDERED', '2020-04-10 23:50:18', '2020-04-10 23:50:18'),
(18, 9, 'RECEIVED', '2020-04-10 23:50:42', '2020-04-10 23:50:42'),
(19, 9, 'ASSIGNED', '2020-04-10 23:50:53', '2020-04-10 23:50:53'),
(20, 10, 'ORDERED', '2020-04-11 00:44:08', '2020-04-11 00:44:08'),
(21, 10, 'RECEIVED', '2020-04-11 00:44:25', '2020-04-11 00:44:25'),
(22, 10, 'ASSIGNED', '2020-04-11 00:44:37', '2020-04-11 00:44:37'),
(23, 11, 'ORDERED', '2020-04-11 01:18:34', '2020-04-11 01:18:34'),
(24, 12, 'ORDERED', '2020-04-11 01:22:10', '2020-04-11 01:22:10'),
(25, 13, 'ORDERED', '2020-04-11 01:23:50', '2020-04-11 01:23:50'),
(26, 14, 'ORDERED', '2020-04-11 01:25:03', '2020-04-11 01:25:03'),
(27, 10, 'PROCESSING', '2020-04-11 01:49:39', '2020-04-11 01:49:39'),
(28, 15, 'ORDERED', '2020-04-11 02:01:31', '2020-04-11 02:01:31'),
(29, 15, 'RECEIVED', '2020-04-11 02:02:13', '2020-04-11 02:02:13'),
(30, 15, 'ASSIGNED', '2020-04-11 02:02:28', '2020-04-11 02:02:28'),
(31, 15, 'PROCESSING', '2020-04-11 02:02:59', '2020-04-11 02:02:59'),
(32, 15, 'REACHED', '2020-04-11 02:03:25', '2020-04-11 02:03:25'),
(33, 15, 'PICKEDUP', '2020-04-11 02:03:46', '2020-04-11 02:03:46'),
(34, 15, 'ARRIVED', '2020-04-11 02:04:01', '2020-04-11 02:04:01'),
(35, 16, 'ORDERED', '2020-04-11 02:09:08', '2020-04-11 02:09:08'),
(36, 16, 'RECEIVED', '2020-04-11 02:09:21', '2020-04-11 02:09:21'),
(37, 16, 'ASSIGNED', '2020-04-11 02:09:54', '2020-04-11 02:09:54'),
(38, 16, 'PROCESSING', '2020-04-11 02:10:08', '2020-04-11 02:10:08'),
(39, 16, 'REACHED', '2020-04-11 02:10:24', '2020-04-11 02:10:24'),
(40, 16, 'PICKEDUP', '2020-04-11 02:10:48', '2020-04-11 02:10:48'),
(41, 16, 'ARRIVED', '2020-04-11 02:11:13', '2020-04-11 02:11:13'),
(42, 17, 'ORDERED', '2020-04-11 02:23:02', '2020-04-11 02:23:02'),
(43, 17, 'RECEIVED', '2020-04-11 02:23:14', '2020-04-11 02:23:14'),
(44, 17, 'RECEIVED', '2020-04-11 02:23:15', '2020-04-11 02:23:15'),
(45, 18, 'ORDERED', '2020-04-11 02:28:43', '2020-04-11 02:28:43'),
(46, 18, 'RECEIVED', '2020-04-11 02:28:55', '2020-04-11 02:28:55'),
(47, 17, 'CANCELLED', '2020-04-11 02:29:18', '2020-04-11 02:29:18'),
(48, 18, 'ASSIGNED', '2020-04-11 02:30:32', '2020-04-11 02:30:32'),
(49, 18, 'PROCESSING', '2020-04-11 02:30:46', '2020-04-11 02:30:46'),
(50, 18, 'REACHED', '2020-04-11 02:30:51', '2020-04-11 02:30:51'),
(51, 18, 'PICKEDUP', '2020-04-11 02:30:58', '2020-04-11 02:30:58'),
(52, 18, 'ARRIVED', '2020-04-11 02:31:14', '2020-04-11 02:31:14'),
(53, 10, 'CANCELLED', '2020-04-11 02:34:17', '2020-04-11 02:34:17'),
(54, 18, 'CANCELLED', '2020-04-11 02:34:48', '2020-04-11 02:34:48'),
(55, 19, 'ORDERED', '2020-04-11 02:35:32', '2020-04-11 02:35:32'),
(56, 19, 'RECEIVED', '2020-04-11 02:35:56', '2020-04-11 02:35:56'),
(57, 19, 'ASSIGNED', '2020-04-11 02:36:14', '2020-04-11 02:36:14'),
(58, 19, 'PROCESSING', '2020-04-11 02:36:30', '2020-04-11 02:36:30'),
(59, 19, 'REACHED', '2020-04-11 02:36:51', '2020-04-11 02:36:51'),
(60, 19, 'PICKEDUP', '2020-04-11 02:37:13', '2020-04-11 02:37:13'),
(61, 19, 'ARRIVED', '2020-04-11 02:37:39', '2020-04-11 02:37:39'),
(62, 19, 'CANCELLED', '2020-04-11 02:38:39', '2020-04-11 02:38:39'),
(63, 20, 'ORDERED', '2020-04-11 06:04:40', '2020-04-11 06:04:40'),
(64, 20, 'RECEIVED', '2020-04-11 06:05:14', '2020-04-11 06:05:14'),
(65, 20, 'ASSIGNED', '2020-04-11 06:05:43', '2020-04-11 06:05:43'),
(66, 20, 'CANCELLED', '2020-04-11 06:08:34', '2020-04-11 06:08:34'),
(67, 21, 'ORDERED', '2020-04-11 06:08:54', '2020-04-11 06:08:54'),
(68, 21, 'RECEIVED', '2020-04-11 06:09:10', '2020-04-11 06:09:10'),
(69, 21, 'ASSIGNED', '2020-04-11 06:09:40', '2020-04-11 06:09:40'),
(70, 21, 'PROCESSING', '2020-04-11 06:09:47', '2020-04-11 06:09:47'),
(71, 21, 'REACHED', '2020-04-11 06:09:57', '2020-04-11 06:09:57'),
(72, 21, 'PICKEDUP', '2020-04-11 06:10:05', '2020-04-11 06:10:05'),
(73, 21, 'ARRIVED', '2020-04-11 06:10:25', '2020-04-11 06:10:25'),
(74, 22, 'ORDERED', '2020-04-11 09:17:17', '2020-04-11 09:17:17'),
(75, 22, 'RECEIVED', '2020-04-11 09:17:28', '2020-04-11 09:17:28'),
(76, 22, 'ASSIGNED', '2020-04-11 09:17:42', '2020-04-11 09:17:42'),
(77, 22, 'PROCESSING', '2020-04-11 09:17:48', '2020-04-11 09:17:48'),
(78, 22, 'REACHED', '2020-04-11 09:17:56', '2020-04-11 09:17:56'),
(79, 22, 'PICKEDUP', '2020-04-11 09:17:58', '2020-04-11 09:17:58'),
(80, 22, 'ARRIVED', '2020-04-11 09:18:02', '2020-04-11 09:18:02'),
(81, 23, 'ORDERED', '2020-04-11 09:19:58', '2020-04-11 09:19:58'),
(82, 23, 'RECEIVED', '2020-04-11 09:20:09', '2020-04-11 09:20:09'),
(83, 23, 'ASSIGNED', '2020-04-11 09:20:16', '2020-04-11 09:20:16'),
(84, 23, 'PROCESSING', '2020-04-11 09:20:51', '2020-04-11 09:20:51'),
(85, 23, 'REACHED', '2020-04-11 09:20:54', '2020-04-11 09:20:54'),
(86, 23, 'PICKEDUP', '2020-04-11 09:20:58', '2020-04-11 09:20:58'),
(87, 23, 'ARRIVED', '2020-04-11 09:21:03', '2020-04-11 09:21:03'),
(88, 24, 'ORDERED', '2020-04-11 09:22:22', '2020-04-11 09:22:22'),
(89, 23, 'COMPLETED', '2020-04-11 09:22:36', '2020-04-11 09:22:36'),
(90, 24, 'RECEIVED', '2020-04-11 09:22:46', '2020-04-11 09:22:46'),
(91, 24, 'ASSIGNED', '2020-04-11 09:22:51', '2020-04-11 09:22:51'),
(92, 24, 'PROCESSING', '2020-04-11 09:23:00', '2020-04-11 09:23:00'),
(93, 24, 'REACHED', '2020-04-11 09:23:03', '2020-04-11 09:23:03'),
(94, 24, 'PICKEDUP', '2020-04-11 09:23:05', '2020-04-11 09:23:05'),
(95, 24, 'ARRIVED', '2020-04-11 09:23:10', '2020-04-11 09:23:10'),
(96, 24, 'COMPLETED', '2020-04-11 09:23:16', '2020-04-11 09:23:16'),
(97, 25, 'ORDERED', '2020-04-11 09:23:54', '2020-04-11 09:23:54'),
(98, 25, 'RECEIVED', '2020-04-11 09:24:04', '2020-04-11 09:24:04'),
(99, 25, 'ASSIGNED', '2020-04-11 09:24:14', '2020-04-11 09:24:14'),
(100, 25, 'PROCESSING', '2020-04-11 09:24:23', '2020-04-11 09:24:23'),
(101, 25, 'REACHED', '2020-04-11 09:24:25', '2020-04-11 09:24:25'),
(102, 25, 'PICKEDUP', '2020-04-11 09:24:27', '2020-04-11 09:24:27'),
(103, 25, 'ARRIVED', '2020-04-11 09:24:29', '2020-04-11 09:24:29'),
(104, 25, 'COMPLETED', '2020-04-11 09:24:35', '2020-04-11 09:24:35'),
(105, 26, 'ORDERED', '2020-04-11 09:27:51', '2020-04-11 09:27:51'),
(106, 26, 'RECEIVED', '2020-04-11 09:28:05', '2020-04-11 09:28:05'),
(107, 26, 'ASSIGNED', '2020-04-11 09:28:10', '2020-04-11 09:28:10'),
(108, 26, 'PROCESSING', '2020-04-11 09:28:17', '2020-04-11 09:28:17'),
(109, 26, 'REACHED', '2020-04-11 09:28:19', '2020-04-11 09:28:19'),
(110, 26, 'PICKEDUP', '2020-04-11 09:28:20', '2020-04-11 09:28:20'),
(111, 26, 'ARRIVED', '2020-04-11 09:28:23', '2020-04-11 09:28:23'),
(112, 26, 'COMPLETED', '2020-04-11 09:28:27', '2020-04-11 09:28:27'),
(113, 27, 'ORDERED', '2020-04-11 09:31:03', '2020-04-11 09:31:03'),
(114, 27, 'RECEIVED', '2020-04-11 09:31:08', '2020-04-11 09:31:08'),
(115, 27, 'ASSIGNED', '2020-04-11 09:31:16', '2020-04-11 09:31:16'),
(116, 27, 'PROCESSING', '2020-04-11 09:31:25', '2020-04-11 09:31:25'),
(117, 27, 'REACHED', '2020-04-11 09:31:27', '2020-04-11 09:31:27'),
(118, 27, 'PROCESSING', '2020-04-11 09:31:27', '2020-04-11 09:31:27'),
(119, 27, 'REACHED', '2020-04-11 09:31:29', '2020-04-11 09:31:29'),
(120, 27, 'PICKEDUP', '2020-04-11 09:31:32', '2020-04-11 09:31:32'),
(121, 27, 'ARRIVED', '2020-04-11 09:31:35', '2020-04-11 09:31:35'),
(122, 27, 'COMPLETED', '2020-04-11 09:31:41', '2020-04-11 09:31:41'),
(123, 28, 'ORDERED', '2020-04-11 09:33:59', '2020-04-11 09:33:59'),
(124, 28, 'RECEIVED', '2020-04-11 09:34:12', '2020-04-11 09:34:12'),
(125, 28, 'ASSIGNED', '2020-04-11 09:34:24', '2020-04-11 09:34:24'),
(126, 28, 'PROCESSING', '2020-04-11 09:34:31', '2020-04-11 09:34:31'),
(127, 28, 'REACHED', '2020-04-11 09:34:35', '2020-04-11 09:34:35'),
(128, 28, 'PICKEDUP', '2020-04-11 09:34:39', '2020-04-11 09:34:39'),
(129, 28, 'ARRIVED', '2020-04-11 09:34:44', '2020-04-11 09:34:44'),
(130, 28, 'COMPLETED', '2020-04-11 09:34:51', '2020-04-11 09:34:51'),
(131, 29, 'ORDERED', '2020-04-11 09:39:50', '2020-04-11 09:39:50'),
(132, 29, 'RECEIVED', '2020-04-11 09:40:00', '2020-04-11 09:40:00'),
(133, 29, 'ASSIGNED', '2020-04-11 09:40:58', '2020-04-11 09:40:58'),
(134, 30, 'ORDERED', '2020-04-11 09:41:26', '2020-04-11 09:41:26'),
(135, 30, 'RECEIVED', '2020-04-11 09:41:37', '2020-04-11 09:41:37'),
(136, 31, 'ORDERED', '2020-04-11 09:51:15', '2020-04-11 09:51:15'),
(137, 31, 'RECEIVED', '2020-04-11 09:51:28', '2020-04-11 09:51:28'),
(138, 31, 'SEARCHING', '2020-04-11 09:52:31', '2020-04-11 09:52:31'),
(139, 31, 'PROCESSING', '2020-04-11 09:52:47', '2020-04-11 09:52:47'),
(140, 31, 'REACHED', '2020-04-11 09:53:00', '2020-04-11 09:53:00'),
(141, 31, 'PICKEDUP', '2020-04-11 09:53:02', '2020-04-11 09:53:02'),
(142, 31, 'ARRIVED', '2020-04-11 09:53:05', '2020-04-11 09:53:05'),
(143, 31, 'COMPLETED', '2020-04-11 09:53:10', '2020-04-11 09:53:10'),
(144, 32, 'ORDERED', '2020-04-11 21:37:41', '2020-04-11 21:37:41'),
(145, 32, 'RECEIVED', '2020-04-11 21:43:30', '2020-04-11 21:43:30'),
(146, 32, 'SEARCHING', '2020-04-11 21:44:34', '2020-04-11 21:44:34'),
(147, 32, 'PROCESSING', '2020-04-11 21:53:24', '2020-04-11 21:53:24'),
(148, 32, 'REACHED', '2020-04-11 21:53:51', '2020-04-11 21:53:51'),
(149, 32, 'PICKEDUP', '2020-04-11 21:54:12', '2020-04-11 21:54:12'),
(150, 32, 'ARRIVED', '2020-04-11 21:54:26', '2020-04-11 21:54:26'),
(151, 32, 'COMPLETED', '2020-04-11 21:54:42', '2020-04-11 21:54:42'),
(152, 33, 'ORDERED', '2020-04-13 04:38:33', '2020-04-13 04:38:33'),
(153, 34, 'ORDERED', '2020-04-13 04:39:02', '2020-04-13 04:39:02'),
(154, 34, 'CANCELLED', '2020-04-13 04:39:12', '2020-04-13 04:39:12'),
(155, 35, 'ORDERED', '2020-04-14 07:28:56', '2020-04-14 07:28:56'),
(156, 36, 'ORDERED', '2020-04-14 07:37:21', '2020-04-14 07:37:21'),
(157, 36, 'RECEIVED', '2020-04-14 07:41:34', '2020-04-14 07:41:34'),
(158, 35, 'RECEIVED', '2020-04-14 07:44:12', '2020-04-14 07:44:12'),
(159, 37, 'ORDERED', '2020-04-14 07:45:41', '2020-04-14 07:45:41'),
(160, 38, 'ORDERED', '2020-04-14 07:48:47', '2020-04-14 07:48:47'),
(161, 38, 'RECEIVED', '2020-04-14 07:49:08', '2020-04-14 07:49:08'),
(162, 39, 'ORDERED', '2020-04-14 07:52:17', '2020-04-14 07:52:17'),
(163, 39, 'RECEIVED', '2020-04-14 07:52:24', '2020-04-14 07:52:24'),
(164, 39, 'ASSIGNED', '2020-04-14 07:52:36', '2020-04-14 07:52:36'),
(165, 39, 'PROCESSING', '2020-04-14 07:53:28', '2020-04-14 07:53:28'),
(166, 39, 'PROCESSING', '2020-04-14 07:53:29', '2020-04-14 07:53:29'),
(167, 39, 'REACHED', '2020-04-14 07:53:39', '2020-04-14 07:53:39'),
(168, 39, 'PICKEDUP', '2020-04-14 07:53:51', '2020-04-14 07:53:51'),
(169, 39, 'ARRIVED', '2020-04-14 07:53:52', '2020-04-14 07:53:52'),
(170, 39, 'COMPLETED', '2020-04-14 07:54:18', '2020-04-14 07:54:18'),
(171, 40, 'ORDERED', '2020-04-14 08:06:12', '2020-04-14 08:06:12'),
(172, 40, 'RECEIVED', '2020-04-14 08:06:34', '2020-04-14 08:06:34'),
(173, 40, 'ASSIGNED', '2020-04-14 08:09:05', '2020-04-14 08:09:05'),
(174, 40, 'PROCESSING', '2020-04-14 08:09:55', '2020-04-14 08:09:55'),
(175, 40, 'REACHED', '2020-04-14 08:09:55', '2020-04-14 08:09:55'),
(176, 40, 'PICKEDUP', '2020-04-14 08:10:00', '2020-04-14 08:10:00'),
(177, 40, 'ARRIVED', '2020-04-14 08:10:05', '2020-04-14 08:10:05'),
(178, 40, 'COMPLETED', '2020-04-14 16:41:11', '2020-04-14 16:41:11'),
(179, 41, 'ORDERED', '2020-04-14 16:46:54', '2020-04-14 16:46:54'),
(180, 42, 'ORDERED', '2020-04-15 01:01:03', '2020-04-15 01:01:03'),
(181, 43, 'ORDERED', '2020-04-15 03:02:33', '2020-04-15 03:02:33'),
(182, 44, 'ORDERED', '2020-04-21 07:46:43', '2020-04-21 07:46:43'),
(183, 45, 'ORDERED', '2020-04-21 07:48:30', '2020-04-21 07:48:30'),
(184, 45, 'RECEIVED', '2020-04-21 07:48:43', '2020-04-21 07:48:43'),
(185, 46, 'ORDERED', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(186, 47, 'ORDERED', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(187, 48, 'ORDERED', '2020-06-05 00:21:19', '2020-06-05 00:21:19'),
(188, 48, 'RECEIVED', '2020-06-05 00:22:32', '2020-06-05 00:22:32'),
(189, 49, 'ORDERED', '2020-06-05 00:34:16', '2020-06-05 00:34:16'),
(190, 49, 'RECEIVED', '2020-06-05 00:34:54', '2020-06-05 00:34:54'),
(191, 50, 'ORDERED', '2020-06-05 01:21:58', '2020-06-05 01:21:58'),
(192, 50, 'RECEIVED', '2020-06-05 01:23:28', '2020-06-05 01:23:28'),
(193, 51, 'ORDERED', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(194, 51, 'RECEIVED', '2020-06-06 07:19:31', '2020-06-06 07:19:31'),
(195, 51, 'CANCELLED', '2020-06-06 07:25:43', '2020-06-06 07:25:43'),
(196, 52, 'ORDERED', '2020-06-06 07:27:38', '2020-06-06 07:27:38'),
(197, 53, 'ORDERED', '2020-06-06 07:30:14', '2020-06-06 07:30:14'),
(198, 53, 'RECEIVED', '2020-06-06 07:30:28', '2020-06-06 07:30:28'),
(199, 54, 'ORDERED', '2020-06-06 07:37:02', '2020-06-06 07:37:02'),
(200, 54, 'RECEIVED', '2020-06-06 07:37:11', '2020-06-06 07:37:11'),
(201, 54, 'ASSIGNED', '2020-06-06 07:38:52', '2020-06-06 07:38:52'),
(202, 54, 'PROCESSING', '2020-06-06 07:42:55', '2020-06-06 07:42:55'),
(203, 54, 'REACHED', '2020-06-06 07:42:56', '2020-06-06 07:42:56'),
(204, 54, 'PROCESSING', '2020-06-06 07:42:58', '2020-06-06 07:42:58'),
(205, 54, 'REACHED', '2020-06-06 07:43:12', '2020-06-06 07:43:12'),
(206, 54, 'PICKEDUP', '2020-06-06 07:43:17', '2020-06-06 07:43:17'),
(207, 54, 'ARRIVED', '2020-06-06 07:43:36', '2020-06-06 07:43:36'),
(208, 54, 'COMPLETED', '2020-06-06 07:44:32', '2020-06-06 07:44:32'),
(209, 55, 'ORDERED', '2020-06-06 07:46:01', '2020-06-06 07:46:01'),
(210, 55, 'RECEIVED', '2020-06-06 07:46:28', '2020-06-06 07:46:28'),
(211, 55, 'ASSIGNED', '2020-06-06 07:47:26', '2020-06-06 07:47:26'),
(212, 55, 'PROCESSING', '2020-06-06 07:48:01', '2020-06-06 07:48:01'),
(213, 55, 'PROCESSING', '2020-06-06 07:48:05', '2020-06-06 07:48:05'),
(214, 55, 'REACHED', '2020-06-06 07:48:05', '2020-06-06 07:48:05'),
(215, 55, 'PICKEDUP', '2020-06-06 07:48:32', '2020-06-06 07:48:32'),
(216, 55, 'ARRIVED', '2020-06-06 07:49:11', '2020-06-06 07:49:11'),
(217, 55, 'COMPLETED', '2020-06-06 07:49:21', '2020-06-06 07:49:21'),
(218, 56, 'ORDERED', '2020-06-27 02:00:46', '2020-06-27 02:00:46'),
(219, 56, 'RECEIVED', '2020-06-27 02:02:14', '2020-06-27 02:02:14'),
(220, 56, 'RECEIVED', '2020-06-27 02:02:16', '2020-06-27 02:02:16'),
(221, 56, 'RECEIVED', '2020-06-27 02:02:18', '2020-06-27 02:02:18'),
(222, 53, 'CANCELLED', '2020-06-27 05:59:52', '2020-06-27 05:59:52'),
(223, 57, 'ORDERED', '2020-06-27 06:01:50', '2020-06-27 06:01:50'),
(224, 57, 'RECEIVED', '2020-06-27 06:03:51', '2020-06-27 06:03:51'),
(225, 57, 'ASSIGNED', '2020-06-27 06:05:10', '2020-06-27 06:05:10'),
(226, 57, 'PROCESSING', '2020-06-27 06:14:25', '2020-06-27 06:14:25'),
(227, 57, 'REACHED', '2020-06-27 06:14:59', '2020-06-27 06:14:59'),
(228, 57, 'PICKEDUP', '2020-06-27 06:15:48', '2020-06-27 06:15:48'),
(229, 57, 'ARRIVED', '2020-06-27 06:16:41', '2020-06-27 06:16:41'),
(230, 57, 'COMPLETED', '2020-06-27 06:17:16', '2020-06-27 06:17:16'),
(231, 58, 'ORDERED', '2020-06-27 06:44:24', '2020-06-27 06:44:24'),
(232, 58, 'RECEIVED', '2020-06-27 06:45:15', '2020-06-27 06:45:15'),
(233, 58, 'ASSIGNED', '2020-06-27 06:45:58', '2020-06-27 06:45:58'),
(234, 58, 'PROCESSING', '2020-06-27 06:47:42', '2020-06-27 06:47:42'),
(235, 58, 'REACHED', '2020-06-27 06:47:43', '2020-06-27 06:47:43'),
(236, 58, 'PROCESSING', '2020-06-27 06:47:44', '2020-06-27 06:47:44'),
(237, 58, 'REACHED', '2020-06-27 06:47:52', '2020-06-27 06:47:52'),
(238, 58, 'PICKEDUP', '2020-06-27 06:48:13', '2020-06-27 06:48:13'),
(239, 58, 'ARRIVED', '2020-06-27 07:06:07', '2020-06-27 07:06:07'),
(240, 58, 'COMPLETED', '2020-06-27 07:06:20', '2020-06-27 07:06:20');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `shop_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `food_type` enum('veg','non-veg') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'veg',
  `avalability` tinyint(1) NOT NULL DEFAULT 0,
  `max_quantity` int(11) NOT NULL DEFAULT 10,
  `featured` int(11) NOT NULL DEFAULT 0,
  `addon_status` int(11) NOT NULL DEFAULT 0,
  `out_of_stock` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `parent_id`, `shop_id`, `name`, `description`, `position`, `food_type`, `avalability`, `max_quantity`, `featured`, `addon_status`, `out_of_stock`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 1, 'Crispy farm egg gribs', 'special', NULL, 'veg', 0, 10, 0, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(2, 0, 1, 'Coconut thai curry with shirump', 'special', NULL, 'veg', 0, 10, 0, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(3, 0, 1, 'Baked choclate shuffle', 'special', NULL, 'veg', 0, 10, 0, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:25', '2020-04-14 08:45:25'),
(4, 0, 2, 'Big mac', 'special', 1000, 'veg', 0, 10, 1, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(5, 0, 2, 'Chicken Sandwitch', 'special', NULL, 'veg', 0, 10, 0, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(6, 0, 2, 'Apple slice', 'special', NULL, 'veg', 0, 10, 0, 0, 'NO', 'enabled', NULL, '2020-04-14 08:45:29', '2020-04-14 08:45:29'),
(7, 0, 3, 'Shrimp Scampi', 'Shrimp cooked in minced garlic, butter and mixture of seasons along with with linguine noodles.', 1, 'non-veg', 0, 10, 1, 1, 'NO', 'enabled', '2020-04-11 00:19:05', '2020-04-15 17:51:25', NULL),
(8, 0, 3, 'asd', 'asda', 2, 'veg', 0, 10, 2, 0, 'NO', 'enabled', '2020-04-11 06:44:03', '2020-04-11 06:44:03', NULL),
(9, 0, 3, 'Best Pizza', 'Best Pizza Best Pizza Best Pizza', 1, 'veg', 0, 10, 1, 0, 'NO', 'enabled', '2020-04-14 22:44:01', '2020-04-15 00:38:46', NULL),
(10, 0, 5, 'Bbq Pizza', 'Best Pizza Specially Recommended for Chesse Lover', 2, 'veg', 0, 10, 1, 0, 'NO', 'enabled', '2020-05-12 10:36:35', '2020-06-04 22:42:37', NULL),
(11, NULL, 6, 'xfv', 'asd', 100, 'veg', 0, 10, 1, 0, 'NO', 'enabled', '2020-06-04 21:49:26', '2020-06-04 21:52:15', '2020-06-04 21:52:15'),
(12, 0, 5, 'Beef Burger', 'We Provide Qulaity Zinger  Burger', 1, 'veg', 0, 10, 1, 0, 'NO', 'enabled', '2020-06-04 22:38:53', '2020-06-04 22:46:25', NULL),
(13, 0, 5, 'Zinger Burger', 'Crispy and Cheezy Zinger Burger', 1, 'veg', 0, 10, 1, 0, 'NO', 'enabled', '2020-06-04 22:51:35', '2020-06-04 22:52:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `url`, `position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'http://foodapp.distance123.com/storage/products/e0GHC7iHjHIuoWoeEcbrQmYagt4VU50F9WqsW4v6.jpeg', 0, '2020-04-09 23:22:42', '2020-04-09 23:22:42', NULL),
(2, 4, 'http://foodapp.distance123.com/storage/products/oayeTlOmOOOMYzpwtXIwTRme8otMDGVaMsXCE386.jpeg', 1, '2020-04-09 23:22:42', '2020-04-09 23:23:11', NULL),
(3, 4, 'http://foodapp.distance123.com/storage/products/wkB9ynIGuOcpJF2E09qkNXS2iWDxWq9as3wFryDx.jpeg', 0, '2020-04-09 23:23:09', '2020-04-09 23:23:09', NULL),
(4, 4, 'http://foodapp.distance123.com/storage/products/hfjMpP9bAZCNWsUwko6DBGv26kUV1lTm9D482w7K.jpeg', 0, '2020-04-09 23:23:11', '2020-04-09 23:23:11', NULL),
(5, 7, 'http://foodapp.distance123.com/storage/products/OhVWIUj8Hpx5h54tZya0wNMg9LIkNm7EvDfpBWan.jpeg', 0, '2020-04-11 00:19:05', '2020-04-11 00:26:47', '2020-04-11 00:26:47'),
(6, 7, 'http://foodapp.distance123.com/storage/products/D80lTfEvpNKNdjOOY9Gw6hcMTLGS19Sfmh0pBTCM.jpeg', 1, '2020-04-11 00:19:05', '2020-04-15 17:51:25', NULL),
(7, 8, 'http://foodapp.distance123.com/storage/products/Mnp75hl7M7HYTLRvkGF2IdyWYrOUY90BfwS0weCI.jpeg', 0, '2020-04-11 06:44:03', '2020-04-11 06:44:03', NULL),
(8, 8, 'http://foodapp.distance123.com/storage/products/USd9hmPu6L7JZGeLQl3o3OSsRIhHDIHOnnxf9Y4M.jpeg', 1, '2020-04-11 06:44:03', '2020-04-11 06:44:03', NULL),
(9, 9, 'http://foodapp.distance123.com/storage/products/pwYFn2VbeGqJzcTCWAAaiT6k9bcimWpBn8W2dvi3.jpeg', 0, '2020-04-14 22:44:01', '2020-04-14 22:44:01', NULL),
(10, 9, 'http://foodapp.distance123.com/storage/products/BXqKPIxUU1s1jhonkUCVBQ188xvuIafYRFRB9tnO.jpeg', 1, '2020-04-14 22:44:01', '2020-04-14 22:44:01', NULL),
(11, 7, 'http://foodapp.distance123.com/storage/products/56VTIhV5fzaBxu9rDWrYqKwD8hAstqslnn6lqFLg.jpeg', 0, '2020-04-15 17:51:25', '2020-04-15 17:51:25', NULL),
(12, 10, 'http://foodapp.distance123.com/storage/products/XukTdZYXoUhwdS0YTcp6KTgzYAeJqVKKs9laEzPu.jpeg', 0, '2020-05-12 10:36:35', '2020-05-12 10:36:35', NULL),
(13, 10, 'http://foodapp.distance123.com/storage/products/FWfmOmc6GTMnstrf8x05CtJxkW3rnzeZ1LhxGjfz.jpeg', 1, '2020-05-12 10:36:35', '2020-05-12 10:36:35', NULL),
(14, 11, 'http://foodapp.distance123.com/storage/products/Rz9PtCiSm8xyLlzuxWE6UqCbzrZ8Wi5oJ3OznQRF.png', 0, '2020-06-04 21:49:26', '2020-06-04 21:49:26', NULL),
(15, 11, 'http://foodapp.distance123.com/storage/products/rCE3bqTvHuCAHzWQaetANePFyu4gtskrOP97MF4M.png', 1, '2020-06-04 21:49:26', '2020-06-04 21:49:26', NULL),
(16, 12, 'http://foodapp.distance123.com/storage/products/5gotCpKoZo4hQ8zh5y9q0eRTZ3p1cXH74p8zbwX9.jpeg', 0, '2020-06-04 22:38:53', '2020-06-04 22:38:53', NULL),
(17, 12, 'http://foodapp.distance123.com/storage/products/ckdtFUd5QX0tODBBOUBJobDlBWRUkGeAx33SJsn4.jpeg', 1, '2020-06-04 22:38:53', '2020-06-04 22:38:53', NULL),
(18, 13, 'http://foodapp.distance123.com/storage/products/5OGRQfGwMkBmEpqSk4Loy2ZTL9KVzD5fgRhuEOhC.jpeg', 0, '2020-06-04 22:51:35', '2020-06-04 22:51:35', NULL),
(19, 13, 'http://foodapp.distance123.com/storage/products/RkZgYFbTwUTyIjRVkDqtDveisic9kKd5I2hYsosa.jpeg', 1, '2020-06-04 22:51:35', '2020-06-04 22:51:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `orignal_price` double(10,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount_type` enum('percentage','amount') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `price`, `orignal_price`, `currency`, `discount`, `discount_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 100, 0.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(2, 2, 100, 0.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(3, 3, 100, 0.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(4, 4, 100, 100.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(5, 5, 100, 0.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(6, 6, 100, 0.00, 'Rs', 0, 'percentage', NULL, '2020-06-27 05:54:32', NULL),
(7, 7, 19, 18.99, 'Rs', 0, 'percentage', '2020-04-11 00:19:05', '2020-06-27 05:54:32', NULL),
(8, 8, 200, 0.00, 'Rs', 0, 'percentage', '2020-04-11 06:44:03', '2020-06-27 05:54:32', NULL),
(9, 9, 500, 0.00, 'Rs', 0, 'percentage', '2020-04-14 22:44:01', '2020-06-27 05:54:32', NULL),
(10, 10, 1000, 0.00, 'Rs', 0, 'percentage', '2020-05-12 10:36:35', '2020-06-27 05:54:32', NULL),
(11, 11, 100, 90.00, 'Rs', 10, 'percentage', '2020-06-04 21:49:26', '2020-06-27 05:54:32', NULL),
(12, 12, 220, 0.00, 'Rs', 0, 'percentage', '2020-06-04 22:38:53', '2020-06-27 05:54:32', NULL),
(13, 13, 250, 0.00, 'Rs', 0, 'percentage', '2020-06-04 22:51:35', '2020-06-27 05:54:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promocode_type` enum('amount','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `coupon_limit` double(10,2) NOT NULL DEFAULT 0.00,
  `coupon_user_limit` double(10,2) NOT NULL DEFAULT 0.00,
  `avail_from` datetime NOT NULL,
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `promo_code`, `promocode_type`, `discount`, `coupon_limit`, `coupon_user_limit`, `avail_from`, `expiration`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ban20', 'amount', 20.00, 100.00, 1.00, '2020-04-17 00:00:00', '2020-04-30 00:00:00', 'ADDED', NULL, '2020-04-18 12:07:37', '2020-04-18 12:07:37'),
(2, 'Boss86', 'amount', 25.00, 100.00, 1.00, '2020-04-17 00:00:00', '2020-04-30 00:00:00', 'ADDED', NULL, '2020-04-18 12:08:23', '2020-04-18 12:08:23'),
(3, 'Scampi2015', 'amount', 10.00, 100.00, 1.00, '2020-04-17 00:00:00', '2020-04-30 00:00:00', 'ADDED', NULL, '2020-04-18 12:08:59', '2020-04-18 12:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restuarants`
--

CREATE TABLE `restuarants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_opening` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_closing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Dispute Manager', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'Crave Party'),
(2, 'site_logo', 'http://foodapp.distance123.com/uploads/70c1cb105d32f5ebf7ac8f34ee83223f0b5152f9.png'),
(3, 'site_favicon', 'http://foodapp.distance123.com/uploads/c102e5efc24479ad4e9d38eeed1893f6f0112b46.ico'),
(4, 'site_copyright', '© 2020 Codev Innovations'),
(5, 'delivery_charge', '20'),
(6, 'resturant_response_time', '600'),
(7, 'currency', 'Rs'),
(8, 'currency_code', 'PKR'),
(9, 'search_distance', '10000000000000000000000000000000000000000000000000000000'),
(10, 'tax', '10'),
(11, 'payment_mode', 'CASH'),
(12, 'manual_assign', '0'),
(13, 'transporter_response_time', '300000'),
(14, 'GOOGLE_MAP_KEY', 'AIzaSyBIUaBvvlXdLIxkhAVVqQJC7jhSg98g7NE'),
(15, 'TWILIO_SID', 'TEST'),
(16, 'TWILIO_TOKEN', 'TEST'),
(17, 'TWILIO_FROM', 'TEST'),
(18, 'PUBNUB_PUB_KEY', 'TEST'),
(19, 'PUBNUB_SUB_KEY', 'TEST'),
(20, 'stripe_charge', '0'),
(21, 'stripe_publishable_key', 'pk_test_39kly6aEfUEfvMpRnN6BnxLb'),
(22, 'stripe_secret_key', 'sk_test_I1OGCnG8zVIXCC7sSImIJsOy'),
(23, 'FB_CLIENT_ID', '290984818086469'),
(24, 'FB_CLIENT_SECRET', '1f52cb4378e623bb819cd8469e408482'),
(25, 'FB_REDIRECT', 'http://localhost'),
(26, 'GOOGLE_CLIENT_ID', '299256700052-rts0nr0a49dutr831oin38aj7mjju2ua.apps.googleusercontent.com'),
(27, 'GOOGLE_CLIENT_SECRET', 'FL0YR5dw9RuV6OdI8IkkI9oS'),
(28, 'GOOGLE_REDIRECT', 'http://localhost'),
(29, 'GOOGLE_API_KEY', 'AIzaSyAKGFZT_5uhpOOkma-GBOPamDw_mRIB-p8'),
(30, 'ANDROID_ENV', 'development'),
(31, 'ANDROID_PUSH_KEY', 'AIzaSyBzvWOtvpuNXBKp6vxBBRMizNJj_1wIQVg'),
(32, 'IOS_USER_ENV', 'development'),
(33, 'IOS_PROVIDER_ENV', 'development'),
(34, 'DEMO_MODE', '1'),
(35, 'SUB_CATEGORY', '0'),
(36, 'SCHEDULE_ORDER', '1'),
(37, 'client_id', '2'),
(38, 'client_secret', 'IdkdAUYQBa4AZ58F3apLaKGsOV6bEKsOY1bUx3Fk'),
(39, 'PRODUCT_ADDONS', '1'),
(40, 'BRAINTREE_ENV', 'sandbox'),
(41, 'BRAINTREE_MERCHANT_ID', 'twbd779hfc859jxq'),
(42, 'BRAINTREE_PUBLIC_KEY', '7bn6hystx7vs2g8r'),
(43, 'BRAINTREE_PRIVATE_KEY', '721e48cc74fdf2dfaacc6c3410de2f27'),
(44, 'RIPPLE_KEY', 'rEsaDShsYPmMZopoG3nNjutWJCk1Zn9cbX'),
(45, 'RIPPLE_BARCODE', 'http://localhost/images/ripple.png'),
(46, 'ETHER_ADMIN_KEY', '0x16abb22fd68c25286d72e77226ddaad87323cbb1'),
(47, 'ETHER_KEY', 'R92FW87ER1QZIDYX1UHTVBY625T8HCPKNR'),
(48, 'ETHER_BARCODE', 'http://localhost/images/ether.jpeg'),
(49, 'CLIENT_AUTHORIZATION', 'sandbox_v5r97hvk_twbd779hfc859jxq'),
(50, 'SOCIAL_FACEBOOK_LINK', 'http://facebook.com'),
(51, 'SOCIAL_TWITTER_LINK', 'http://twitter.com'),
(52, 'SOCIAL_G-PLUS_LINK', 'http://google.com'),
(53, 'SOCIAL_INSTAGRAM_LINK', 'http://instagram.com'),
(54, 'SOCIAL_PINTEREST_LINK', 'http://pinterest.com'),
(55, 'SOCIAL_VIMEO_LINK', 'http://vimeo.com'),
(56, 'SOCIAL_YOUTUBE_LINK', 'http://youtube.com'),
(57, 'COMMISION_OVER_FOOD', '5'),
(58, 'COMMISION_OVER_DELIVERY_FEE', '10'),
(59, 'APP_STORE_LINK', 'https://itunes.apple.com/us/app/foodie-express-food-delivery/id1296870125?mt=8'),
(60, 'GOOGLE_PLAY_LINK', 'https://play.google.com/store/apps/details?id=com.foodie.app&hl=en'),
(61, 'about', '<p>Bossladys Famous Shrimp is owned and founded by Nashaunda Law. Nashaunda used her cooking skills to get herself through nursing school and afterwards was asked to cater many work events and few weddings after hearing great things about the food. Bosslady is here to share here to share her mixtures and spices with you over a bowl of shrimp. You also will experience getting full for the first time off a meal that is majority shrimp related. Guess what, its because our goal is to not only serve you go food but make sure you are full after eating our food.&nbsp;</p>'),
(62, 'faq', '<p>What hours are you open?</p>\r\n\r\n<p>We are open for deliveries Friday - Sunday 12pm-7pm.</p>\r\n\r\n<p>How do I place a order?</p>\r\n\r\n<p>You can go online to www.bossladysfamousshrimp.com to place and order or you can call us at 816-895-1077.</p>\r\n\r\n<p>How do I pay for my order?</p>\r\n\r\n<p>You will pay for your order at checkout when you place it online. If you call and make a order you are required to pay with a credit or debit card over the phone.</p>\r\n\r\n<p>Do you have daily specials?</p>\r\n\r\n<p>Yes, please call or check our facebook page to keep up with our daily specials.</p>\r\n\r\n<p>Can I order food during the week?</p>\r\n\r\n<p>Yes, we need at least a 24 hours notice.</p>\r\n\r\n<p>What areas do you offer delivery?</p>\r\n\r\n<p>Raytown, Grandview, South Kansas City, Lees Summit, Independence</p>\r\n\r\n<p>Will you deliver out of your normal delivery areas?</p>\r\n\r\n<p>Yes, if your order is over $100.00 and depends on the distance because we like to deliver fresh and hot food and if the drive prevents this we would need confirmation before delivery.</p>\r\n\r\n<p>Do you offer group discounts?</p>\r\n\r\n<p>Yes, if the ticket is paid together.</p>\r\n\r\n<p>What kinds of food do you serve?</p>\r\n\r\n<p>Chicken, Beef, Turkey, Shrimp, and vegetables.</p>\r\n\r\n<p>Do you cater events?</p>\r\n\r\n<p>No, we do offer platter specia pricing and drop off service.</p>\r\n\r\n<p>How long does delivery take?</p>\r\n\r\n<p>Delivery normally takes 45min to 60min, unless there is a rush then we will notify you of a longer wait to see if you still would like your order.</p>\r\n\r\n<p>How do I get a refund?</p>\r\n\r\n<p>Email bossladysfamousshrimp@gmail.com and put in subject line &quot;Refund&quot;, then in the body area explain the reason for your refund so we can assist you.</p>\r\n\r\n<p>How long does it take to receive a refund?</p>\r\n\r\n<p>It takes 10-14 days to recieve a refund.</p>\r\n\r\n<p>How old do I have to be to work here?</p>\r\n\r\n<p>You have to be 18yrs of age and older.</p>\r\n\r\n<p>&nbsp;</p>'),
(63, 'refund', '<p>If you cancel your order and would like a refund, it will take 10-14 days to recieve refund on the same payment method used to purchase items.</p>'),
(64, 'help', '<p>Please email us at bossladysfamousshrimp@gmail.com or call us at 816-895-1077 between the hours of 12pm-7pm Monday thru Friday.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_min_amount` double(20,2) DEFAULT 0.00,
  `offer_percent` int(11) DEFAULT 0,
  `estimated_delivery_time` int(11) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `pure_veg` tinyint(1) DEFAULT 0,
  `popular` tinyint(1) DEFAULT 0,
  `rating` int(11) DEFAULT 0,
  `rating_status` int(11) NOT NULL DEFAULT 0,
  `status` enum('onboarding','banned','active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onboarding',
  `device_type` enum('ios','android') COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `email`, `password`, `phone`, `avatar`, `default_banner`, `description`, `offer_min_amount`, `offer_percent`, `estimated_delivery_time`, `otp`, `address`, `maps_address`, `latitude`, `longitude`, `pure_veg`, `popular`, `rating`, `rating_status`, `status`, `device_type`, `device_token`, `device_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'ChikaChino', 'shoaib@codevinnovations.com', '$2y$10$Zx/2a0CQrtWLronuQjLUF.2iGaFrQQfhooR82rt8qQEBlhAAB.bYG', '03333681466', 'http://foodapp.distance123.com/storage/shops/X9kYqwOYMFtwufPJfFQH8IBEiAiiurXdTfG9d6Y7.jpeg', 'http://foodapp.distance123.com/storage/shops/f6SyZhJE68VmdY7Z61CKruZZjAobPwcms5NsbJgV.png', 'best services', 200.00, 100, 20, NULL, 'Gulshan-e-Iqbal, Karachi, Pakistan', 'Gulshan-e-Iqbal, Karachi, Pakistan', 24.91802710, 67.09709160, 0, 0, 5, 0, 'active', 'ios', NULL, NULL, 'C6KRVaQCJSzMoH0mByploX3Er3jRYuo0Xs4fu0VM8IgHLwdi8X0gIc2N4AuH', '2020-05-12 10:22:33', '2020-06-04 21:51:52', NULL),
(6, 'asdfa', 'admin@admin.com-5ed8e06fd315e', '$2y$10$8lFEH0uofFDn0/YA3C8Z8e2ZFLAXpUQzVFQBkFs/IQAkd9g09bKbm', '123456-5ed8e06fd3138', 'http://foodapp.distance123.com/storage/shops/BtmVgmL2JMec6GKg9Xt8dj4y9XOEJPwmg7pyKWRt.jpeg', NULL, 's', 50.00, 10, 20, NULL, 'Karachi, Pakistan', 'Karachi, Pakistan', 24.86073430, 67.00113640, 0, 0, 5, 1, 'active', 'ios', NULL, NULL, NULL, '2020-06-04 21:44:06', '2020-06-04 21:52:15', '2020-06-04 21:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `shop_banners`
--

CREATE TABLE `shop_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_banners`
--

INSERT INTO `shop_banners` (`id`, `shop_id`, `product_id`, `url`, `position`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 5, 10, 'http://foodapp.distance123.com/storage/shops/banner/18Pvw0puaxMfMet8NQ5kptmwVHObnkeCkNXrZnqe.png', 1, 'inactive', '2020-06-04 21:37:51', '2020-06-04 21:51:23', '2020-06-04 21:51:23'),
(10, 5, 10, 'http://foodapp.distance123.com/storage/shops/banner/nsGGkXbPRn0MP8CUUYwN7jBrbrwVzzvL399NZuKC.png', 2, 'active', '2020-06-04 21:41:49', '2020-06-04 21:42:02', '2020-06-04 21:42:02'),
(11, 6, 11, 'http://foodapp.distance123.com/storage/shops/banner/s3UeMs8eeEpbviJTyCz1o3vT6WBqN1JJx0N948Dk.png', 1, 'active', '2020-06-04 21:51:10', '2020-06-04 21:51:27', '2020-06-04 21:51:27'),
(12, 5, 12, 'http://foodapp.distance123.com/storage/shops/banner/x52nbHbt5TBAJ9ojMHF7Knmii24aF0w6svDCFfF2.jpeg', 1, 'active', '2020-06-04 23:50:04', '2020-06-04 23:51:11', '2020-06-04 23:51:11'),
(13, 5, 10, 'http://foodapp.distance123.com/storage/shops/banner/xbQsRBZdfr8vDkhH0LPYCbs7QGsMEOdYnjYsN3rZ.png', 1, 'inactive', '2020-06-04 23:55:51', '2020-06-05 03:41:06', '2020-06-05 03:41:06'),
(14, 5, 12, 'http://foodapp.distance123.com/storage/shops/banner/aymtVNRoKjjdw3nYAs6R7vcdAxrrXiKqjgBL4QpD.png', 2, 'inactive', '2020-06-04 23:56:19', '2020-06-05 03:41:13', '2020-06-05 03:41:13'),
(15, 5, 10, 'http://foodapp.distance123.com/storage/shops/banner/w1orniZiDKzRZ2ZPiEOJBTBgJ88PtqloPrmRtNr1.jpeg', 1, 'active', '2020-06-05 03:53:05', '2020-06-07 01:39:06', NULL),
(16, 5, 13, 'http://foodapp.distance123.com/storage/shops/banner/4ry1Lm6Vil4pYpAGY559SZSnLN4qQeh1hqevhuzq.jpeg', 2, 'active', '2020-06-05 07:08:16', '2020-06-07 01:39:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_password_resets`
--

CREATE TABLE `shop_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_password_resets`
--

INSERT INTO `shop_password_resets` (`email`, `token`, `created_at`) VALUES
('bossladysfamousshrimp@gmail.com', '$2y$10$687sgBEinb6MD/9OFghPWuyu7Y09zRKhkaVN0hhiv3t3dWlznJOjG', '2020-04-18 12:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `shop_timings`
--

CREATE TABLE `shop_timings` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` enum('ALL','SUN','MON','TUE','WED','THU','FRI','SAT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ALL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_timings`
--

INSERT INTO `shop_timings` (`id`, `shop_id`, `start_time`, `end_time`, `day`, `created_at`, `updated_at`) VALUES
(2, 2, '08:00', '20:00', 'ALL', NULL, NULL),
(9, 1, '01:00', '23:00', 'ALL', NULL, NULL),
(28, 4, '01:00', '23:00', 'ALL', NULL, NULL),
(46, 3, '01:00', '23:55', 'ALL', NULL, NULL),
(51, 6, '01:00', '23:55', 'ALL', NULL, NULL),
(58, 5, '1:00', '00:00', 'ALL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surge_pricings`
--

CREATE TABLE `surge_pricings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transporters`
--

CREATE TABLE `transporters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `longitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT 5,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('assessing','banned','online','offline','riding','unsettled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'assessing',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transporters`
--

INSERT INTO `transporters` (`id`, `name`, `email`, `phone`, `password`, `avatar`, `address`, `latitude`, `longitude`, `otp`, `rating`, `device_token`, `device_id`, `device_type`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo User', 'demo@foodie.com-5ed9084b91527', '+919898765654-5ed9084b914ea', '$2y$10$D4PNCqSQnJZ9e8iRWEjSeOEKjHMg9WuxMhGpTUEmNPrkWhIT5kxsW', NULL, 'Tamil Nadu, India', 24.92896020, 67.09890246, '0', 5, 'dpKaE0eaE2w:APA91bEEFbqHKzFoPBdPJeTihaGFOVA2KulCQfgr2qfWVdRKKzDNXPuAfOE_WFVXO83Xqo1SzwYt1ziBC7UW4dYljDgJHARvsnNT8UgssllNeD0DK_o5-PhwGaxLe-hxFyavCILbRbtE', 'a579db31dea1dfdb', 'android', 'riding', NULL, NULL, '2020-06-05 00:42:19', '2020-06-05 00:42:19'),
(2, 'Demo Delivery Person', 'demo@mail.com-5ed9085996f47', '+919876543212-5ed9085996f25', '$2y$10$fLITSPC6Iy.OQzHh15jrTeXjOYHPiUuGRb9boAsdP6FKVoY2E3Oum', NULL, 'Triplicane, Chennai, Tamil Nadu, India', 24.92903857, 67.09863217, '0', 5, 'e3apBOPLv30:APA91bEUxzoT7Yjt4Yav_qdj_vu0XuTaK6KWX7TpkjI5QSQlhhuvuU2hg4M0ilKEFTiLo4Mo9f43P5ddW22YhNEx_0Opn1mVVQqY7cfS7FUB0A962y2MPPKz2owr5Ecb1UZOQxlvxx4P', 'a579db31dea1dfdb', 'android', 'riding', NULL, '2020-04-09 07:03:43', '2020-06-05 00:42:33', '2020-06-05 00:42:33'),
(3, 'Cropaa', 'test@demo.com-5ed9086073c8d', '+929876543213-5ed9086073c6c', '$2y$10$mtBSigu4dF0EdMqhOC.fAOIH7u3s3xanIeXQiPoW0duqDZdE4Jl5e', NULL, 'Old no 21 New no 47 Poonamalle High Road, Periamet, Adikesavarpuram, Poongavanapuram, Chennai, Tamil Nadu 600003, India', 7.65224580, 4.75702470, '0', 5, 'drDz2J71_yk:APA91bHfrt9KS_hEvpntTLunksMOnqeqj8x7KJHe8lY2pk_A3px87EaFqHMJRCUncRrPfK1yOPyZvpRn_3w62kAtMIrXfBlPxqIR1D4W8aZJhtZxGHSWN5j62bmiAw1Imd6ga0j0aUY9', 'a2a6c76fe4599c98', 'android', 'online', NULL, '2020-04-09 07:07:35', '2020-06-05 00:42:40', '2020-06-05 00:42:40'),
(4, 'tabish', 'mtabishjawaid@gmail.com-5ed908468a568', '+913222483141-5ed908468a522', '$2y$10$meBxs88lpPKqTmemutSgAea2NI0UxLB9q7p5N7aTCqfPcYv5EqNva', NULL, 'Nipa Chowrangi Bus Stop, Karachi, Pakistan', 24.92901921, 67.09847867, '0', 5, 'cHO7XP9fpu8:APA91bGksTTUL50IdNyALsmBa6zCnIe8LjPUbpK6RB3cLAhZ2bZxOd2jFLsrAncKxvCz-eckdpV2s6yc4gVQFuQF5v4CX9swS-JJQqOIzjKAde5qeuW5FQuvg6dT6g18G5bisoj78h6v', 'a579db31dea1dfdb', 'android', 'riding', NULL, '2020-04-11 00:41:35', '2020-06-05 00:42:14', '2020-06-05 00:42:14'),
(5, 'delivery Person', 'delivery@demo.com', '+922345678901', '$2y$10$tJUGdV72Fqp88832JwV8MefU.YbM/6TOz6DfRO.h.Cs4obK1M1NxS', NULL, 'Nipa, Karachi, Pakistan', 24.93639810, 67.08420240, '0', 5, 'c-VgskCZkp4:APA91bHJCOvmvq8SYUMCD5qsj3qIozVuTWVxzXbV4LdksMq6XyAw5lVHIqar9iDHlihEZIm0QB5Z_hdboDzGw0TTBy8uRCurKlK2mVkZux9Q4g4TuB806_klcUJSHyHhi0biDniduy5h', '7aefc1ef4b7e6c6c', 'android', 'offline', NULL, '2020-04-11 01:59:53', '2020-07-12 05:02:52', NULL),
(6, 'shoaib', 'shoaib@codevinnovations.com', '+923333681466', '$2y$10$Cd.e1pGsr.qJc/Mu3U4c9.XZq1kMvgl6yGoJlXSYb91MqGKf01vxe', 'crave logo.jpeg', 'Model Colony, Karachi, Pakistan', 24.92906830, 67.09865530, '0', 5, 'cKJmc-pHz78:APA91bFhd4pckqxqJxhv0s4_hmwfqNKYuVeAHksnZSwnnzSXzogGnBZpab4Wjw0My36ajFYu5aBfRQ3YhvxCYSvRv-4KzAILHfUlNmH58NIZnIYriDNWpWMV-oQw9tzOoO6XOVOSXHzr', '0f6f0ead4b592281', 'android', 'offline', NULL, '2020-05-10 09:02:28', '2020-08-02 16:19:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transporter_documents`
--

CREATE TABLE `transporter_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_id` int(11) NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transporter_locations`
--

CREATE TABLE `transporter_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_id` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transporter_password_resets`
--

CREATE TABLE `transporter_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transporter_shifts`
--

CREATE TABLE `transporter_shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_id` int(11) NOT NULL,
  `transporter_vehicle_id` int(11) NOT NULL,
  `total_order` int(11) NOT NULL DEFAULT 0,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transporter_shifts`
--

INSERT INTO `transporter_shifts` (`id`, `transporter_id`, `transporter_vehicle_id`, `total_order`, `start_time`, `end_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2020-04-10 01:10:41', NULL, NULL, '2020-04-10 06:10:41', '2020-04-10 06:10:41'),
(2, 2, 2, 0, '2020-04-10 18:48:44', NULL, NULL, '2020-04-10 23:48:44', '2020-04-10 23:48:44'),
(3, 4, 3, 0, '2020-04-10 19:42:49', NULL, '2020-04-11 06:06:40', '2020-04-11 00:42:49', '2020-04-11 06:06:40'),
(4, 5, 4, 10, '2020-04-10 21:01:08', NULL, '2020-04-11 02:24:31', '2020-04-11 02:01:08', '2020-04-11 02:24:31'),
(5, 5, 5, 6, '2020-04-10 21:27:17', NULL, '2020-04-11 06:07:17', '2020-04-11 02:27:17', '2020-04-11 06:07:17'),
(6, 5, 6, 26, '2020-04-11 01:07:34', NULL, NULL, '2020-04-11 06:07:34', '2020-06-27 07:06:15'),
(7, 3, 7, 0, '2020-04-15 08:59:22', NULL, NULL, '2020-04-15 13:59:22', '2020-04-15 13:59:22'),
(8, 6, 8, 0, '2020-05-10 04:03:46', NULL, '2020-06-05 00:44:19', '2020-05-10 09:03:46', '2020-06-05 00:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `transporter_shift_timings`
--

CREATE TABLE `transporter_shift_timings` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_shift_id` int(11) NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transporter_shift_timings`
--

INSERT INTO `transporter_shift_timings` (`id`, `transporter_shift_id`, `start_time`, `end_time`, `order_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '2020-04-10 21:20:18', '2020-04-10 21:21:37', 10, '2020-04-11 02:20:18', '2020-04-11 02:21:37', '2020-04-11 02:21:37'),
(2, 4, '2020-04-10 21:21:39', '2020-04-10 21:22:02', 0, '2020-04-11 02:21:39', '2020-04-11 02:22:02', '2020-04-11 02:22:02'),
(3, 4, '2020-04-10 21:22:06', NULL, 0, '2020-04-11 02:22:06', '2020-04-11 02:22:06', NULL),
(4, 5, '2020-04-11 01:06:05', '2020-04-11 01:06:18', 6, '2020-04-11 06:06:05', '2020-04-11 06:06:18', '2020-04-11 06:06:18'),
(5, 5, '2020-04-11 01:06:20', '2020-04-11 01:06:47', 0, '2020-04-11 06:06:20', '2020-04-11 06:06:47', '2020-04-11 06:06:47'),
(6, 5, '2020-04-11 01:06:48', NULL, 0, '2020-04-11 06:06:48', '2020-04-11 06:06:48', NULL),
(7, 6, '2020-04-11 04:13:09', '2020-04-11 04:15:50', 1, '2020-04-11 09:13:09', '2020-04-11 09:15:50', '2020-04-11 09:15:50'),
(8, 6, '2020-04-11 04:16:17', '2020-04-11 04:16:23', 6, '2020-04-11 09:16:17', '2020-04-11 09:16:23', '2020-04-11 09:16:23'),
(9, 6, '2020-04-11 16:51:45', '2020-04-14 00:40:27', 12, '2020-04-11 21:51:45', '2020-04-14 05:40:27', '2020-04-14 05:40:27'),
(10, 6, '2020-04-14 00:40:58', '2020-04-14 02:24:25', 1, '2020-04-14 05:40:58', '2020-04-14 07:24:25', '2020-04-14 07:24:25'),
(11, 6, '2020-04-14 02:24:30', '2020-04-14 02:42:15', 0, '2020-04-14 07:24:30', '2020-04-14 07:42:15', '2020-04-14 07:42:15'),
(12, 6, '2020-04-14 02:42:17', '2020-04-14 02:43:18', 0, '2020-04-14 07:42:17', '2020-04-14 07:43:18', '2020-04-14 07:43:18'),
(13, 6, '2020-04-14 11:47:54', '2020-06-04 19:26:04', 2, '2020-04-14 16:47:54', '2020-06-05 00:26:04', '2020-06-05 00:26:04'),
(14, 6, '2020-06-04 19:26:19', '2020-06-06 02:38:05', 0, '2020-06-05 00:26:19', '2020-06-06 07:38:05', '2020-06-06 07:38:05'),
(15, 6, '2020-07-12 00:02:18', NULL, 4, '2020-07-12 05:02:18', '2020-07-12 05:02:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transporter_vehicles`
--

CREATE TABLE `transporter_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `transporter_id` int(11) NOT NULL,
  `vehicle_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transporter_vehicles`
--

INSERT INTO `transporter_vehicles` (`id`, `transporter_id`, `vehicle_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'VVG', '2020-04-10 06:10:41', '2020-04-10 06:10:41', NULL),
(2, 2, 'FFFF', '2020-04-10 23:48:44', '2020-04-10 23:48:44', NULL),
(3, 4, 'GFF', '2020-04-11 00:42:49', '2020-04-11 00:42:49', NULL),
(4, 5, 'CCF', '2020-04-11 02:01:08', '2020-04-11 02:01:08', NULL),
(5, 5, 'EEE', '2020-04-11 02:27:17', '2020-04-11 02:27:17', NULL),
(6, 5, 'FFFF', '2020-04-11 06:07:34', '2020-04-11 06:07:34', NULL),
(7, 3, 'GAJEJEJHSK', '2020-04-15 13:59:22', '2020-04-15 13:59:22', NULL),
(8, 6, 'KBO-2222', '2020-05-10 09:03:46', '2020-05-10 09:03:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_cust_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `password`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `stripe_cust_id`, `wallet_balance`, `otp`, `braintree_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Demo User', 'demo@foodie.com-5e9a618832c06', '+915454545454-5e9a618832b8d', NULL, '$2y$10$c3jqRrdsN26Q.vmEDmq5teo/NxwfLsKAr3NVBVaL.7e1sYULhN7PW', NULL, NULL, 'ios', 'manual', '-5e9a618832c60', NULL, 0.00, '0', NULL, NULL, NULL, '2020-04-18 12:10:16', '2020-04-18 12:10:16'),
(2, 'Kinza Fahim', 'kinza.fahim1125@gmail.com-5e8f836e20b5f', '+923353513517-5e8f836e20ac9', NULL, '$2y$10$.aMaKbxsI1mGUoDv2UxsIex16L/wL1kVKX60iQDJsRk3lFXS99OgS', NULL, NULL, 'android', 'manual', '-5e8f836e20beb', NULL, 0.00, '0', NULL, NULL, '2020-04-10 01:52:52', '2020-04-10 06:19:58', '2020-04-10 06:19:58'),
(3, 'Tabish', 'Mtabishjawaid@gmail.com-5e9a616f8500b', '+923222483141-5e9a616f84f73', NULL, '$2y$10$OqVgERGNzdNrVJmapkuj0O3.fyZjvkTGLdJCySWphoPhTClEsoIwW', 'fPC2rvVcXXk:APA91bG9Pekdx4SnoHqwxFyn8cLdRCSquhts1ov4KBh9lYZucZeSbEKr1WfsJ8XgvtZIW8MrpHeFOymNrzzlaQnpI2gMT5yFUmAR6pWJIU8k9e1KqqooutBzZHzPUItYeDz8nbjtNYDe', '89ba61cc276565a9', 'android', 'manual', '-5e9a616f85088', NULL, 0.00, '0', NULL, 'pL8cEhw5BZYCr9JBc0ZavBAsSFvwWfDEiFsKs5lrkGIJeoTqbO7XamUySVYl', '2020-04-10 23:42:33', '2020-04-18 12:09:51', '2020-04-18 12:09:51'),
(4, 'zubair', 'zubairalam83@gmail.com-5e9a61725a748', '+923352150938-5e9a61725a6a6', NULL, '$2y$10$UNpnXLKJQ569iqJjxVNaK..54mRsU2y3NSeNtRnr22nHGm9K7Nq7S', NULL, NULL, 'android', 'manual', '-5e9a61725a7bc', NULL, 0.00, '0', NULL, NULL, '2020-04-11 03:23:48', '2020-04-18 12:09:54', '2020-04-18 12:09:54'),
(5, 'shoaib', 'shoaib93gujrati@gmail.com-5e9a617450250', '+923333681466-5e9a6174501c8', NULL, '$2y$10$FWQbZbPRGA5HbSsmqs5XN.ADnfz7BpPw4n7KJYYqoMohteWbeYiiW', '', '', 'android', 'manual', '-5e9a6174502dd', NULL, 0.00, '942505', NULL, NULL, '2020-04-14 05:55:13', '2020-04-18 12:09:56', '2020-04-18 12:09:56'),
(6, 'Zohaib', 'zohaibjawaid92@yahoo.com-5e9a61770b19a', '+923462818548-5e9a61770b101', NULL, '$2y$10$I0D6yHF8LZEm1/kJRTtMWexhSknCDfn11tXcsCyyfPYg0vrUsC2Te', 'fQJqjestndA:APA91bE5fmi7YQezEvjiOiZ52yfaNbI5Ts9ChNcZP9xOADKWY9MlpbpJ3u8RSDABCbLNxyUGbYcW9EXwjPVOcXlHvUhM_iyCXdznPgCgB0biCKVOolbRBNt7PQWLlbnUP7fua1Xvm7YG', 'c1126fb87cb91b56', 'android', 'manual', '-5e9a61770b238', NULL, 0.00, '0', NULL, NULL, '2020-04-14 06:16:48', '2020-04-18 12:09:59', '2020-04-18 12:09:59'),
(7, 'Great Stephcephas', 'olumidestephcephas@gmail.com-5e9a616d2f06e', '+234807211925-5e9a616d2eff5', NULL, '$2y$10$cUYnaF6FlaxrNAhMzKeDeOFktvmZ/krTaVRToWznr3J84wzuqZJqW', '', '', 'android', 'manual', '-5e9a616d2f0e3', NULL, 0.00, '0', NULL, NULL, '2020-04-14 06:25:13', '2020-04-18 12:09:49', '2020-04-18 12:09:49'),
(8, 'Licoin', 'licoinpapa@gmail.com-5e9a616b23c1a', '+234703154605-5e9a616b23b8b', NULL, '$2y$10$wJQVsOxAEjXh746Kn0tNVeq46O9IZSYZ47Phq8xwmyNdcG4UD7g2G', 'eAhdkB3Avxk:APA91bGUknq_kovqFBhwV6z-DB7yaVvejzman7dO8V5WphdSjKGhye8BGAXAo8OKeXAyqdwDSQD-5-wurjH_fnxTik8fMiHpGBfZZ7NQ7Ydzi2bp7sT5IeCs24IfNeiIzjhgJrmT2E6I', 'a2a6c76fe4599c98', 'android', 'manual', '-5e9a616b23c7d', NULL, 0.00, '0', NULL, NULL, '2020-04-14 16:39:13', '2020-04-18 12:09:47', '2020-04-18 12:09:47'),
(9, 'Rehan Ahmad', 'ahmad.rehan81@googlemail.com-5e9a6168cd958', '+923045988769-5e9a6168cd8e6', NULL, '$2y$10$3vNkLkeArEUGOB..opOIcO.7WtE5dgC.A7nvIqWGtyiU4GedVLDO6', 'f1XN0Iw8QEg:APA91bHgcJ_s3ddPdztJGDRDUjam29coP-Ujtq8UIi0HVItVuqojfRWRbbsZ87Rvpzcv7t7lUiWYotM8UUcEcAMVRAq9EVvuviAa8DaVz7VOnELGnC2TwoboZSSfl5O7c1u6TvFFYhYa', 'afe9f021ce65b126', 'android', 'manual', '-5e9a6168cd9c4', NULL, 0.00, '0', NULL, NULL, '2020-04-17 06:08:04', '2020-04-18 12:09:44', '2020-04-18 12:09:44'),
(10, 'Hassan', 'hbz.wcpk@gmail.com-5e9a61661a712', '+923235423066-5e9a61661a697', NULL, '$2y$10$IFQkL9uplpWwCuZpXXgGIe9F3sSHkxj7QRPiri4NZXz8074bWXn3m', 'f5L5El1GXwY:APA91bG_rHQBcXi_MPxG7JMbRV6rd-riIlXdgLPjuCsThl4msNn7RrcD3ER0p0Q2ZLFH9v_yn90LybovLGEGj69Dd4hFUU_ci24n9ZwfPvbUTGjRfr5Qu35hHQEOCgaQVFWNvFPDu2Pd', '29c85364ddcc2dc8', 'android', 'manual', '-5e9a61661a76f', NULL, 0.00, '0', NULL, NULL, '2020-04-17 14:54:58', '2020-04-18 12:09:42', '2020-04-18 12:09:42'),
(11, 'Great Stephcephas', 'olumidestephcephas@gmail.com', '+234810109819', NULL, '$2y$10$s9FKc4tzG/xaYYXaZYPKMOGx3w0FqAeDE4n9rHmdazYTLIsSZItE.', 'd6utCCFdHdA:APA91bGFLCmkXSgo6vvHR7jRqd-WTr4LDv9mXidKNX7VtD-57yeOMn04ELEGoOuKRkuYeZkIxzyc8oJfBfujwBTNedgQWifvhIc8FSW4KvB7cKTj_Xbi4UBJFtMD6_JmvA4drv3v30fN', '7c8f12f7ab60afe6', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-18 21:25:32', '2020-05-08 00:55:42', NULL),
(12, 'Rehan Ahmad', 'ahmad.rehan81@googlemail.com', '+923045988769', NULL, '$2y$10$Dy5FbR02DlG.G/5hvw1I6e80Qbm.m5PK3AlJhcMajZy9pFd24fCa2', 'dY7x_6VEoGM:APA91bF0xX8Pylbqmm0TSxfrOTqX44GyzRCBH-FEg6fCd1_FTQ5S27kqi185oj9bXPX9LHXq-jiZq9CdCi-S3wldhp4XiGJkMhnH8nsTBWwU1z95lXEQkNnIncA5F4UvnIw-Yyn_PkXe', 'afe9f021ce65b126', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-21 02:36:31', '2020-04-21 02:36:32', NULL),
(13, 'Muhammad Aqib', 'maqib79@gmail.com', '+923442227213', NULL, '$2y$10$/wefzAhwnMcT4rnsXGRnau2uDpC2Is7LGNqFcr5GFGoUbexOjK.t.', NULL, NULL, 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-21 07:39:09', '2020-04-21 07:39:09', NULL),
(14, 'Zaki', 'consult.zakikhan@gmail.com', '+923412777863', NULL, '$2y$10$E/5NvLtSo5pHkVc9nq0F9.K.COtFWFGYb.qd0mCW5trkRLbk1os9q', '', '', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-21 21:52:39', '2020-04-23 02:49:23', NULL),
(15, 'shoaib', 'shoaib@corevinnovations.com', '+923331279246', NULL, '$2y$10$r5M7KXfdC5VlWVmBnS4sx.gSpdvy36rM1Fq52JAPTco7CUT63ODEC', 'cr1uixHA5-s:APA91bFwvHEzWDTqA3Wmgxsqj-kaoZVnBrJCpNiXjz8qIxoEybQ7yIfk8nMMl3nvkfY8rBTY1eVZEmIowZyYdc8F-t8VctxUTvMudYlWHMZZfWSLGKbDm3o3YoaPD9q9FyFkTjbMjW-8', '89ba61cc276565a9', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-22 22:13:46', '2020-06-06 16:13:26', NULL),
(16, 'shoaib', 'greedy@gmail.com', '+923333681466', NULL, '$2y$10$DsBlWGmGyDqlMGAjbC/mxe9ZIGQ0Vj7DxWsp7p6lb1xjfkWYzmNg.', NULL, NULL, 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-04-29 07:30:20', '2020-04-29 07:30:20', NULL),
(17, 'tabish', 'mtabishjawaid@gmail.com', '+9232224831411', NULL, '$2y$10$0jezK3krQRsyTA2uHQq5P.G55D3oBoauZF0iH1jjMiTm2zbZeekYe', 'f1eqTWVLW6o:APA91bGEKazb6EUV0drh-unm6wRHIm1CRbdagoiusqrfN7TD8rfmX8BSz8-dScVgF6dT1yWeM0WAYGUFGnZ_4m-iz8ablBu_Owp7XN-_PfDDREvj2qvlsMx1z9hJ9ZOojP9X6uJe0_-s', 'd2c72f7c74573deb', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-05-07 03:28:05', '2020-06-07 03:07:59', NULL),
(18, 'Zubair Alam', 'zubairalam83@gmail.com', '+923352150638', NULL, '$2y$10$qee.f/WMoR9/nyP0NJiWxOMmUvhmnky83XeYKiExteQdngNMUuX9K', 'dtE7QeGshYY:APA91bHYfsy6kThuI70Spe3qTSUIlchWYExqnwl5Hd6DpKdm_jFB4Ti0RLEJah4-riMRYXFIwdEQL-U9AKF8DNg__1xz7AFfC4e1ySOX7xn_RXyRnj7EI6-f214w195dkR15muQ6RoIC', 'b14462b95e88f774', 'android', 'manual', '', NULL, 0.00, '0', NULL, 'utXClszxktESrtmQlIhjOp4jZdojAC96jFWcTBBlsib36m1tlfkDyajZa5y5', '2020-05-08 05:19:47', '2020-06-09 04:16:34', NULL),
(19, 'Nashaunda Evans', 'nashaunda86@gmail.com', '+18163997439', NULL, '$2y$10$Hr6l3dmxFZfDPF8TQ1jdtuJN7DuflezxK4hJPGC81BMu06uo.vQke', 'c4MfKCj_ZxY:APA91bHbUvRG08TeAujqyGzt9ih8QraF_O6mfWZtOiAGNfv66FrRBlxGf7C1Lona44zBxGKzjuWvwNnp9HK1m7XJW00kvHdi3pIXJN22098bfCqsDcMRhzM8GDjt_Z2LpMDDSVRs2dw6', '97bb5b52232b8662', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-05-25 10:37:23', '2020-05-25 10:37:23', NULL),
(20, 'acddddddddd', 'ac@ac.com', '9275050899898', NULL, '$2y$10$F7HJwibIuUxQ2MFUMePk6.cfbwacn3KADdRwXTQMgdtUm9podglvK', NULL, NULL, 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-05-27 22:41:02', '2020-05-27 22:44:51', NULL),
(21, 'dbdj', 'bdndn@fnd.com', '+9148767979745', 'https://foodapp.distance123.com/storage/user/profile/kqcqLUMdEhkDGv6OmdlGTRwcNH15u2a39sV7m07x.jpeg', '$2y$10$BOb2LM3cCnXDT.lC5ZoUH.4aLNutUVPvGohTHW5Somw5e9oRtoR2C', 'eh4MAc28iMg:APA91bFAcqadCdUq0DHqodOmZJaUMTRkE3OVWrNdv8QdJsdDQoExQmuu6dGs7xntTBUV-8ndQkMTuRIkD_aRjgaGjuXLcAKuB66goQZesZGHI9W6KQzD2i-IIpsfUb053v6DFSzpzduJ', '913620e25b0622a7', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-05-28 00:06:43', '2020-05-28 00:14:29', NULL),
(22, 'Tabish Jawaid', 'mtabishjawaid@gmail.co', '+923222100059', NULL, '$2y$10$P9pKgxPb1Z3dEpoWlIs2Oe1OgN2mnzQLu6370bEnd3vjHVQ56MC3m', 'cr1uixHA5-s:APA91bFwvHEzWDTqA3Wmgxsqj-kaoZVnBrJCpNiXjz8qIxoEybQ7yIfk8nMMl3nvkfY8rBTY1eVZEmIowZyYdc8F-t8VctxUTvMudYlWHMZZfWSLGKbDm3o3YoaPD9q9FyFkTjbMjW-8', '89ba61cc276565a9', 'android', 'manual', NULL, NULL, 0.00, '0', NULL, NULL, '2020-06-06 16:15:38', '2020-06-08 06:06:42', NULL),
(23, 'imtiaz', 'imtiaz.langahit27@gmail.com', '+923401381871', NULL, '$2y$10$TkBdtcnNQu4neTutcgiUc.eojLBrofskn8FFXpAl33RojT.18AIq6', NULL, NULL, 'android', 'manual', '', NULL, 0.00, '0', NULL, 'lsCjrrp44egpZf16Fh9UTQo9wbn0zcGwjqzmRGM9TXeJyYxqE8FhLgGBbGpw', '2020-06-07 04:16:02', '2020-06-07 04:16:02', NULL),
(24, 'soft_engr', 'soft.engr27@gmail.com', '+923113639131', NULL, '$2y$10$NFkVEGhHH9rcs3YTIXwNDODMi5ziNWx.qaDYdtBEFmK6HM5RxFany', 'ek-ecfDz6Tk:APA91bFXeGFX90AgyMJR51sC1KdFq18r0YCXagwbpDReujWradnlxafyk_UeW6vYJucZFvlqriefTNDQFSYVMc_Tqs7AvrP3QC-SPqwiLqgV7vYufDFJ_MQ2vcCL2AT5OYupNEqN7Aq9', '8b685872a58b4591', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-06-07 04:18:36', '2020-06-07 04:18:37', NULL),
(25, 'Hasan', 'zubairalam@gmail.com', '+923352150938', NULL, '$2y$10$FPeAeHPAWiK1MB8jUh5ecOO/xf2xf6DpxDQEV9qJQmahH92Gkw.wW', 'cF3of-3IMz8:APA91bFa8M3HPG2AoD9tRkiuMueuoggYIpygoRykNVSHl3PIvZtXIO18L7WPZBEprM4hHleNkn6DxcRTbC1zwECiwr5yoUokIDUtMrtuIXMWZi6wiMtKH68DU22YmTih4WABrfwjXt_T', '7aefc1ef4b7e6c6c', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-06-26 19:47:31', '2020-06-26 19:47:33', NULL),
(26, 'Adebayo joseph', 'adebayojoseph265@gmail.com', '+2348169139928', NULL, '$2y$10$BySQAznjvMSGaMhicuSjP.9nCISOoT2hD7WK65dS2tj4PZtGRoJTi', 'f-0cgt5KPL4:APA91bFZbaNLfTwoj-fWz_c3Oc6Z8KFogzrHiMD1uAD9HE4qWCJgRy5OZoSmqoLoC1VF-rXcFpJ6ezZoE30UkfrfpEQSUp3DsLHY8puqXFNGlHxmXUbaw-pyjcj8YD3gKup7Q5nnVgix', 'cfc587b878a43d1e', 'android', 'manual', '', NULL, 0.00, '0', NULL, NULL, '2020-07-07 16:40:45', '2020-07-07 16:40:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `building` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `building`, `street`, `city`, `state`, `country`, `pincode`, `landmark`, `map_address`, `latitude`, `longitude`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'asd', NULL, NULL, NULL, NULL, NULL, 'dsf', 'Triplicane, Chennai, Tamil Nadu, India', 13.05876540, 80.27562970, 'home', '2020-04-09 06:26:32', '2020-04-09 06:26:32', NULL),
(2, 1, 'jik', NULL, NULL, NULL, NULL, NULL, 'ji', 'Tamil Nadu, India', 13.05876540, 80.27562970, 'other', '2020-04-09 23:15:49', '2020-04-09 23:15:49', NULL),
(3, 1, 'S', NULL, NULL, NULL, NULL, NULL, 'ads', 'Triplicane, Chennai, Tamil Nadu, India', 13.05876540, 80.27562970, 'work', '2020-04-09 23:16:36', '2020-04-09 23:16:36', NULL),
(4, 3, '4321', NULL, NULL, NULL, NULL, NULL, '356', 'Triplicane, Chennai, Tamil Nadu, India', 13.05876540, 80.27562970, 'home', '2020-04-10 23:49:14', '2020-04-10 23:49:14', NULL),
(5, 3, '231', NULL, NULL, NULL, NULL, NULL, '21312', 'Disco Bakery, Allama Shabbir Ahmed Usmani Road, Karachi, Pakistan', 24.92917860, 67.09733070, 'work', '2020-04-11 00:44:02', '2020-04-11 00:44:02', NULL),
(6, 3, 'Hhh', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'Jj', 'A-495 Allama Shabbir Ahmed Usmani Rd, Block 7 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan', 24.92912720, 67.09870710, 'My house', '2020-04-11 06:04:32', '2020-04-11 06:04:32', NULL),
(7, 5, 'A557', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'block 5', 'A 557, Block 5 Saadi Town, Karachi, Karachi City, Sindh, Pakistan', 24.97069900, 67.17677180, 'home', '2020-04-14 05:58:28', '2020-04-14 05:58:28', NULL),
(8, 6, 'Xbxxn', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'Xjxxj', 'Plot B 16, Block 13D-2 Block 13 D 2 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan', 24.91116080, 67.07826660, 'home', '2020-04-14 07:37:05', '2020-04-14 07:37:05', NULL),
(9, 3, 't', NULL, NULL, NULL, NULL, NULL, 'sdfg', 'Block 13 D, Karachi, Pakistan', 24.91595320, 67.08890670, 'other', '2020-04-14 07:48:39', '2020-04-14 07:48:39', NULL),
(10, 8, 'CI 74 Powerline', NULL, 'Ilesa', 'Osun', 'Nigeria', NULL, 'Cocacola', 'Oloruntedo Lane, Ilesa, Nigeria', 7.64470470, 4.74777510, 'home', '2020-04-14 16:46:15', '2020-04-14 16:46:15', NULL),
(11, 13, 'asd', NULL, NULL, NULL, NULL, NULL, 'asd', 'Disco Bakery, Allama Shabbir Ahmed Usmani Road, Karachi, Pakistan', 24.92917860, 67.09733070, 'home', '2020-04-21 07:46:36', '2020-04-21 07:46:36', NULL),
(12, 15, 'dd540', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'pak', 'Block 3  Town, Karachi, Karachi City, Sindh, Pakistan', 24.97069900, 67.17677180, 'home', '2020-04-22 22:14:44', '2020-04-22 22:14:44', NULL),
(13, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '479, Pantheon Rd, Egmore, Chennai, Tamil Nadu 600008, India', 13.07560242, 80.26215612, 'home', '2020-05-27 22:49:42', '2020-05-27 22:49:42', NULL),
(14, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachala Street, Chintadripet, Chintadripet, Chintadripet, Chennai, Tamil Nadu 600002, India', 13.07488001, 80.27220726, 'work', '2020-05-27 22:50:11', '2020-05-27 22:50:11', NULL),
(15, 18, 'hgfgh', NULL, NULL, NULL, NULL, NULL, 'hv', '2, Narasingapuram St, Mount Road, Anna Salai, Chintadripet, Chennai, Tamil Nadu 600002, India', 13.06947184, 80.27153298, 'home', '2020-06-05 00:03:00', '2020-06-05 00:03:00', NULL),
(16, 18, 'df', NULL, NULL, NULL, NULL, NULL, 'fgd', 'Gulshan-e-Iqbal, Karachi, Pakistan', 24.91802710, 67.09709160, 'work', '2020-06-05 00:32:27', '2020-06-05 00:32:27', NULL),
(17, 18, 'fcg', NULL, NULL, NULL, NULL, NULL, 'dgd', '335, Triplicane High Rd, Indra Nagar, Ellis Puram, Padupakkam, Triplicane, Chennai, Tamil Nadu 600005, India', 13.06505617, 80.27375221, 'other', '2020-06-05 00:33:56', '2020-06-05 00:33:56', NULL),
(18, 18, '12fc', NULL, NULL, NULL, NULL, NULL, 'da', 'Nipa Chowrangi Bus Stop, Karachi, Pakistan', 24.91775500, 67.09717680, 'other', '2020-06-05 01:21:39', '2020-06-05 01:21:39', NULL),
(19, 18, '558', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'hhs', 'A 557, Block 5 Saadi Town, Karachi, Karachi City, Sindh, Pakistan', 24.97069900, 67.17677180, 'my home', '2020-06-06 07:51:00', '2020-06-06 07:51:00', NULL),
(20, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'disco bakery', 13.05311212, 80.27644678, 'home', '2020-06-06 21:05:22', '2020-06-06 21:05:22', NULL),
(21, 22, 'G', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'V', 'A-495 Allama Shabbir Ahmed Usmani Rd, Block 7 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan', 24.92912720, 67.09870710, 'G', '2020-06-07 01:24:08', '2020-06-07 01:24:08', NULL),
(22, 25, 'G3849', NULL, 'Karachi', 'Sindh', 'Pakistan', NULL, 'Hmoud', 'Unnamed Road, Jahangir Town Gulzar E Hijri Scheme 33, Karachi, Karachi City, Sindh, Pakistan', 24.93709310, 67.14198180, 'other', '2020-06-27 02:00:37', '2020-06-27 02:00:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_carts`
--

CREATE TABLE `user_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savedforlater` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_carts`
--

INSERT INTO `user_carts` (`id`, `user_id`, `product_id`, `promocode_id`, `order_id`, `quantity`, `note`, `savedforlater`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, 1, 1, NULL, 0, '2020-04-09 06:26:04', '2020-04-09 06:26:46', '2020-04-09 06:26:46'),
(2, 1, 2, NULL, 2, 1, NULL, 0, '2020-04-09 06:32:27', '2020-04-09 06:32:44', '2020-04-09 06:32:44'),
(3, 1, 1, NULL, 2, 1, NULL, 0, '2020-04-09 06:32:32', '2020-04-09 06:32:44', '2020-04-09 06:32:44'),
(4, 1, 2, NULL, 3, 2, NULL, 0, '2020-04-09 06:34:59', '2020-04-09 06:35:19', '2020-04-09 06:35:19'),
(5, 1, 1, NULL, 4, 3, NULL, 0, '2020-04-09 06:39:02', '2020-04-09 06:39:17', '2020-04-09 06:39:17'),
(6, 1, 3, NULL, 5, 3, NULL, 0, '2020-04-09 06:43:47', '2020-04-09 06:44:01', '2020-04-09 06:44:01'),
(7, 1, 3, NULL, 6, 5, NULL, 0, '2020-04-09 06:47:08', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(8, 1, 3, NULL, 6, 4, NULL, 0, '2020-04-09 06:47:08', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(9, 1, 3, NULL, 6, 6, NULL, 0, '2020-04-09 06:47:10', '2020-04-09 06:47:25', '2020-04-09 06:47:25'),
(10, 1, 1, NULL, 7, 3, NULL, 0, '2020-04-09 07:05:06', '2020-04-09 07:05:26', '2020-04-09 07:05:26'),
(11, 1, 1, NULL, 8, 1, NULL, 0, '2020-04-09 07:11:41', '2020-04-09 07:11:56', '2020-04-09 07:11:56'),
(12, 1, 4, NULL, NULL, 1, NULL, 0, '2020-04-09 23:15:09', '2020-04-10 01:16:36', '2020-04-10 01:16:36'),
(13, 1, 4, NULL, NULL, 1, NULL, 0, '2020-04-09 23:23:59', '2020-04-10 01:16:36', '2020-04-10 01:16:36'),
(14, 1, 1, NULL, NULL, 3, NULL, 0, '2020-04-10 01:16:40', '2020-04-10 01:16:45', NULL),
(15, 3, 1, NULL, 9, 1, NULL, 0, '2020-04-10 23:44:46', '2020-04-10 23:50:18', '2020-04-10 23:50:18'),
(16, 3, 7, NULL, 10, 3, NULL, 0, '2020-04-11 00:19:21', '2020-04-11 00:44:08', '2020-04-11 00:44:08'),
(17, 3, 7, NULL, NULL, 1, NULL, 0, '2020-04-11 00:27:26', '2020-04-11 00:27:34', '2020-04-11 00:27:34'),
(18, 3, 7, NULL, 11, 1, NULL, 0, '2020-04-11 01:18:11', '2020-04-11 01:18:34', '2020-04-11 01:18:34'),
(19, 3, 7, NULL, 12, 1, NULL, 0, '2020-04-11 01:21:42', '2020-04-11 01:22:10', '2020-04-11 01:22:10'),
(20, 3, 7, NULL, 13, 1, NULL, 0, '2020-04-11 01:23:40', '2020-04-11 01:23:50', '2020-04-11 01:23:50'),
(21, 3, 7, NULL, 14, 7, NULL, 0, '2020-04-11 01:24:38', '2020-04-11 01:25:03', '2020-04-11 01:25:03'),
(22, 3, 7, NULL, 14, 1, NULL, 0, '2020-04-11 01:24:43', '2020-04-11 01:25:03', '2020-04-11 01:25:03'),
(23, 3, 7, NULL, 15, 1, NULL, 0, '2020-04-11 02:01:21', '2020-04-11 02:01:31', '2020-04-11 02:01:31'),
(24, 3, 7, NULL, 16, 1, NULL, 0, '2020-04-11 02:08:57', '2020-04-11 02:09:08', '2020-04-11 02:09:08'),
(25, 3, 7, NULL, 17, 1, NULL, 0, '2020-04-11 02:22:40', '2020-04-11 02:23:02', '2020-04-11 02:23:02'),
(26, 3, 7, NULL, 18, 1, NULL, 0, '2020-04-11 02:28:36', '2020-04-11 02:28:43', '2020-04-11 02:28:43'),
(27, 3, 7, NULL, 19, 1, NULL, 0, '2020-04-11 02:35:23', '2020-04-11 02:35:32', '2020-04-11 02:35:32'),
(28, 4, 7, NULL, NULL, 1, NULL, 0, '2020-04-11 03:23:59', '2020-04-11 03:23:59', NULL),
(29, 3, 7, NULL, NULL, 1, NULL, 0, '2020-04-11 06:03:04', '2020-04-11 06:03:28', '2020-04-11 06:03:28'),
(30, 3, 7, NULL, 20, 1, NULL, 0, '2020-04-11 06:03:45', '2020-04-11 06:04:40', '2020-04-11 06:04:40'),
(31, 3, 7, NULL, 21, 1, NULL, 0, '2020-04-11 06:08:45', '2020-04-11 06:08:54', '2020-04-11 06:08:54'),
(32, 3, 8, NULL, NULL, 1, NULL, 0, '2020-04-11 06:44:34', '2020-04-11 06:48:08', '2020-04-11 06:48:08'),
(33, 3, 7, NULL, NULL, 1, NULL, 0, '2020-04-11 06:50:39', '2020-04-11 06:59:58', '2020-04-11 06:59:58'),
(34, 3, 7, NULL, NULL, 1, NULL, 0, '2020-04-11 07:16:32', '2020-04-11 07:18:28', '2020-04-11 07:18:28'),
(35, 3, 1, NULL, NULL, 1, NULL, 0, '2020-04-11 09:16:27', '2020-04-11 09:16:50', '2020-04-11 09:16:50'),
(36, 3, 7, NULL, 22, 1, NULL, 0, '2020-04-11 09:17:05', '2020-04-11 09:17:17', '2020-04-11 09:17:17'),
(37, 3, 7, NULL, 23, 1, NULL, 0, '2020-04-11 09:19:46', '2020-04-11 09:19:58', '2020-04-11 09:19:58'),
(38, 3, 7, NULL, 24, 1, NULL, 0, '2020-04-11 09:22:14', '2020-04-11 09:22:22', '2020-04-11 09:22:22'),
(39, 3, 7, NULL, 25, 1, NULL, 0, '2020-04-11 09:23:45', '2020-04-11 09:23:54', '2020-04-11 09:23:54'),
(40, 3, 8, NULL, 26, 1, NULL, 0, '2020-04-11 09:27:42', '2020-04-11 09:27:51', '2020-04-11 09:27:51'),
(41, 3, 7, NULL, 27, 1, NULL, 0, '2020-04-11 09:30:54', '2020-04-11 09:31:03', '2020-04-11 09:31:03'),
(42, 3, 7, NULL, 28, 1, NULL, 0, '2020-04-11 09:33:49', '2020-04-11 09:33:59', '2020-04-11 09:33:59'),
(43, 3, 7, NULL, 29, 1, NULL, 0, '2020-04-11 09:39:41', '2020-04-11 09:39:51', '2020-04-11 09:39:51'),
(44, 3, 7, NULL, 30, 1, NULL, 0, '2020-04-11 09:41:19', '2020-04-11 09:41:26', '2020-04-11 09:41:26'),
(45, 3, 7, NULL, 31, 1, NULL, 0, '2020-04-11 09:51:07', '2020-04-11 09:51:15', '2020-04-11 09:51:15'),
(46, 3, 7, NULL, 32, 1, NULL, 0, '2020-04-11 21:37:07', '2020-04-11 21:37:41', '2020-04-11 21:37:41'),
(47, 3, 8, NULL, 32, 1, NULL, 0, '2020-04-11 21:37:17', '2020-04-11 21:37:41', '2020-04-11 21:37:41'),
(48, 3, 7, NULL, 33, 1, NULL, 0, '2020-04-13 04:38:26', '2020-04-13 04:38:33', '2020-04-13 04:38:33'),
(49, 3, 7, NULL, 34, 2, NULL, 0, '2020-04-13 04:38:54', '2020-04-13 04:39:02', '2020-04-13 04:39:02'),
(50, 5, 7, NULL, NULL, 1, NULL, 0, '2020-04-14 06:00:33', '2020-04-14 06:04:32', '2020-04-14 06:04:32'),
(51, 5, 7, NULL, NULL, 1, NULL, 0, '2020-04-14 06:06:58', '2020-04-14 18:02:35', '2020-04-14 18:02:35'),
(52, 6, 7, NULL, 36, 2, NULL, 0, '2020-04-14 06:19:04', '2020-04-14 07:37:21', '2020-04-14 07:37:21'),
(53, 3, 7, NULL, 35, 1, NULL, 0, '2020-04-14 07:28:33', '2020-04-14 07:28:56', '2020-04-14 07:28:56'),
(54, 3, 8, NULL, 37, 1, NULL, 0, '2020-04-14 07:45:21', '2020-04-14 07:45:41', '2020-04-14 07:45:41'),
(55, 3, 7, NULL, 38, 1, NULL, 0, '2020-04-14 07:48:02', '2020-04-14 07:48:47', '2020-04-14 07:48:47'),
(56, 3, 7, NULL, 39, 1, NULL, 0, '2020-04-14 07:52:08', '2020-04-14 07:52:17', '2020-04-14 07:52:17'),
(57, 3, 7, NULL, 40, 1, NULL, 0, '2020-04-14 08:05:55', '2020-04-14 08:06:12', '2020-04-14 08:06:12'),
(58, 8, 8, NULL, 41, 1, NULL, 0, '2020-04-14 16:44:43', '2020-04-14 16:46:54', '2020-04-14 16:46:54'),
(59, 5, 9, NULL, NULL, 1, NULL, 0, '2020-04-15 00:37:35', '2020-04-15 00:55:40', '2020-04-15 00:55:40'),
(60, 5, 9, NULL, 42, 3, NULL, 0, '2020-04-15 01:00:16', '2020-04-15 01:01:03', '2020-04-15 01:01:03'),
(61, 3, 7, NULL, 43, 2, NULL, 0, '2020-04-15 01:03:40', '2020-04-15 03:02:33', '2020-04-15 03:02:33'),
(62, 3, 9, NULL, 43, 1, NULL, 0, '2020-04-15 03:01:14', '2020-04-15 03:02:33', '2020-04-15 03:02:33'),
(63, 3, 9, NULL, NULL, 1, NULL, 0, '2020-04-17 00:38:42', '2020-04-17 00:38:42', NULL),
(64, 10, 8, NULL, NULL, 1, NULL, 0, '2020-04-17 14:55:49', '2020-04-17 14:55:49', NULL),
(65, 13, 8, NULL, 44, 1, 'asdf', 0, '2020-04-21 07:45:11', '2020-04-21 07:46:43', '2020-04-21 07:46:43'),
(66, 13, 8, NULL, 45, 1, NULL, 0, '2020-04-21 07:48:22', '2020-04-21 07:48:30', '2020-04-21 07:48:30'),
(67, 15, 9, NULL, NULL, 1, NULL, 0, '2020-04-22 22:15:55', '2020-04-22 22:15:55', NULL),
(68, 15, 9, NULL, NULL, 1, NULL, 0, '2020-04-22 22:16:03', '2020-04-22 22:16:03', NULL),
(69, 15, 9, NULL, NULL, 1, NULL, 0, '2020-04-22 22:16:14', '2020-04-22 22:16:14', NULL),
(70, 15, 9, NULL, NULL, 1, NULL, 0, '2020-04-22 22:16:17', '2020-04-22 22:16:17', NULL),
(71, 20, 8, NULL, 46, 2, NULL, 0, '2020-05-27 22:51:56', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(72, 20, 9, NULL, 46, 1, NULL, 0, '2020-05-27 22:52:51', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(73, 20, 8, NULL, 46, 1, NULL, 0, '2020-05-27 22:53:16', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(74, 20, 9, NULL, 46, 1, NULL, 0, '2020-05-27 22:53:49', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(75, 20, 9, NULL, 46, 1, NULL, 0, '2020-05-27 22:54:28', '2020-05-27 22:57:08', '2020-05-27 22:57:08'),
(76, 20, 10, NULL, NULL, 3, NULL, 0, '2020-05-27 23:02:52', '2020-05-27 23:03:02', NULL),
(77, 21, 10, NULL, NULL, 6, NULL, 0, '2020-05-28 00:07:04', '2020-05-28 00:15:56', '2020-05-28 00:15:56'),
(78, 21, 9, NULL, NULL, 1, NULL, 0, '2020-05-28 00:15:57', '2020-05-28 00:15:57', NULL),
(79, 18, 10, NULL, 47, 1, NULL, 0, '2020-06-02 19:12:29', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(80, 18, 9, NULL, 47, 1, NULL, 0, '2020-06-02 19:12:42', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(81, 18, 9, NULL, 47, 1, NULL, 0, '2020-06-02 19:12:48', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(82, 18, 9, NULL, 47, 1, NULL, 0, '2020-06-02 19:12:51', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(83, 18, 12, NULL, 47, 1, NULL, 0, '2020-06-05 00:01:50', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(84, 18, 12, NULL, 47, 1, NULL, 0, '2020-06-05 00:02:30', '2020-06-05 00:04:21', '2020-06-05 00:04:21'),
(85, 18, 13, NULL, 48, 2, NULL, 0, '2020-06-05 00:21:00', '2020-06-05 00:21:19', '2020-06-05 00:21:19'),
(86, 18, 12, NULL, 49, 2, NULL, 0, '2020-06-05 00:31:33', '2020-06-05 00:34:16', '2020-06-05 00:34:16'),
(87, 18, 10, NULL, 50, 4, NULL, 0, '2020-06-05 01:19:55', '2020-06-05 01:21:58', '2020-06-05 01:21:58'),
(88, 18, 13, NULL, 51, 1, NULL, 0, '2020-06-05 23:44:46', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(89, 18, 10, NULL, 51, 5, NULL, 0, '2020-06-06 01:39:41', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(90, 18, 12, NULL, 51, 1, NULL, 0, '2020-06-06 07:09:14', '2020-06-06 07:18:14', '2020-06-06 07:18:14'),
(91, 18, 12, NULL, 52, 1, NULL, 0, '2020-06-06 07:26:10', '2020-06-06 07:27:38', '2020-06-06 07:27:38'),
(92, 18, 13, NULL, 53, 1, NULL, 0, '2020-06-06 07:29:59', '2020-06-06 07:30:14', '2020-06-06 07:30:14'),
(93, 18, 13, NULL, 54, 1, NULL, 0, '2020-06-06 07:36:52', '2020-06-06 07:37:02', '2020-06-06 07:37:02'),
(94, 18, 12, NULL, 55, 1, NULL, 0, '2020-06-06 07:45:46', '2020-06-06 07:46:01', '2020-06-06 07:46:01'),
(95, 18, 12, NULL, NULL, 6, NULL, 0, '2020-06-06 07:51:19', '2020-06-09 04:17:29', NULL),
(96, 18, 10, NULL, NULL, 8, NULL, 0, '2020-06-06 07:53:02', '2020-06-06 19:04:03', NULL),
(97, 18, 10, NULL, NULL, 9, NULL, 0, '2020-06-06 07:53:06', '2020-06-06 18:05:38', NULL),
(98, 22, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 16:16:05', '2020-06-06 21:04:33', '2020-06-06 21:04:33'),
(99, 22, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 16:16:12', '2020-06-06 21:04:40', '2020-06-06 21:04:40'),
(100, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 16:25:43', '2020-06-06 21:04:42', '2020-06-06 21:04:42'),
(101, 22, 13, NULL, NULL, 1, NULL, 0, '2020-06-06 17:57:01', '2020-06-06 21:04:46', '2020-06-06 21:04:46'),
(102, 18, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 18:12:19', '2020-06-08 05:59:26', '2020-06-08 05:59:26'),
(103, 18, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 18:12:43', '2020-06-08 05:58:57', '2020-06-08 05:58:57'),
(104, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 21:04:50', '2020-06-06 21:05:32', '2020-06-06 21:05:32'),
(105, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 21:05:14', '2020-06-06 21:05:37', '2020-06-06 21:05:37'),
(106, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 21:05:18', '2020-06-06 21:05:40', '2020-06-06 21:05:40'),
(107, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 21:05:20', '2020-06-06 21:05:43', '2020-06-06 21:05:43'),
(108, 22, 12, NULL, NULL, 1, NULL, 0, '2020-06-06 21:05:22', '2020-06-08 06:07:57', '2020-06-08 06:07:57'),
(109, 22, 13, NULL, NULL, 1, NULL, 0, '2020-06-06 21:07:37', '2020-06-08 06:06:50', '2020-06-08 06:06:50'),
(110, 22, 13, NULL, NULL, 1, NULL, 0, '2020-06-06 21:07:42', '2020-06-08 06:06:51', '2020-06-08 06:06:51'),
(111, 18, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 21:13:05', '2020-06-08 05:58:59', '2020-06-08 05:58:59'),
(112, 18, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 21:13:16', '2020-06-08 05:57:36', '2020-06-08 05:57:36'),
(113, 18, 10, NULL, NULL, 180, NULL, 0, '2020-06-06 21:13:22', '2020-06-08 05:59:01', NULL),
(114, 22, 13, NULL, NULL, 1, NULL, 0, '2020-06-06 21:18:15', '2020-06-08 06:07:53', '2020-06-08 06:07:53'),
(115, 22, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 21:18:34', '2020-06-08 06:07:51', '2020-06-08 06:07:51'),
(116, 22, 10, NULL, NULL, 1, NULL, 0, '2020-06-06 21:18:47', '2020-06-08 06:07:50', '2020-06-08 06:07:50'),
(117, 18, 13, NULL, NULL, 1, NULL, 0, '2020-06-06 21:21:04', '2020-06-08 05:59:33', '2020-06-08 05:59:33'),
(118, 18, 13, NULL, NULL, 1, NULL, 0, '2020-06-07 02:25:21', '2020-06-08 05:59:39', '2020-06-08 05:59:39'),
(119, 18, 13, NULL, NULL, 22, NULL, 0, '2020-06-07 02:25:43', '2020-06-07 03:31:05', NULL),
(120, 17, 10, NULL, NULL, 1, NULL, 0, '2020-06-07 03:08:16', '2020-06-07 03:08:16', NULL),
(121, 24, 10, NULL, NULL, 1, NULL, 0, '2020-06-07 04:18:46', '2020-06-07 04:18:46', NULL),
(122, 22, 13, NULL, NULL, 2, NULL, 0, '2020-06-08 06:08:06', '2020-06-08 06:08:10', NULL),
(123, 25, 10, NULL, 56, 1, NULL, 0, '2020-06-27 01:59:54', '2020-06-27 02:00:47', '2020-06-27 02:00:47'),
(124, 25, 12, NULL, 57, 1, NULL, 0, '2020-06-27 06:01:24', '2020-06-27 06:01:50', '2020-06-27 06:01:50'),
(125, 25, 12, NULL, 58, 1, NULL, 0, '2020-06-27 06:44:01', '2020-06-27 06:44:24', '2020-06-27 06:44:24'),
(126, 25, 13, NULL, 58, 1, NULL, 0, '2020-06-27 06:44:03', '2020-06-27 06:44:24', '2020-06-27 06:44:24'),
(127, 25, 13, NULL, NULL, 1, NULL, 0, '2020-07-12 05:05:06', '2020-07-12 05:05:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_passbooks`
--

CREATE TABLE `wallet_passbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('CREDITED','DEBITED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `north_east_lat` double(15,8) NOT NULL,
  `north_east_lng` double(15,8) NOT NULL,
  `south_west_lat` double(15,8) NOT NULL,
  `south_west_lng` double(15,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_products`
--
ALTER TABLE `addon_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_addons`
--
ALTER TABLE `cart_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_images`
--
ALTER TABLE `category_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisine_shop`
--
ALTER TABLE `cuisine_shop`
  ADD PRIMARY KEY (`shop_id`,`cuisine_id`),
  ADD KEY `cuisine_shop_cuisine_id_foreign` (`cuisine_id`);

--
-- Indexes for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_transporters`
--
ALTER TABLE `enquiry_transporters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_access_token_providers`
--
ALTER TABLE `oauth_access_token_providers`
  ADD PRIMARY KEY (`oauth_access_token_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_disputes`
--
ALTER TABLE `order_disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_dispute_comments`
--
ALTER TABLE `order_dispute_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_dispute_helps`
--
ALTER TABLE `order_dispute_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_invoices`
--
ALTER TABLE `order_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_ratings`
--
ALTER TABLE `order_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_timings`
--
ALTER TABLE `order_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restuarants`
--
ALTER TABLE `restuarants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restuarants_email_unique` (`email`),
  ADD UNIQUE KEY `restuarants_phone_unique` (`phone`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shops_email_unique` (`email`);

--
-- Indexes for table `shop_banners`
--
ALTER TABLE `shop_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_password_resets`
--
ALTER TABLE `shop_password_resets`
  ADD KEY `shop_password_resets_email_index` (`email`),
  ADD KEY `shop_password_resets_token_index` (`token`);

--
-- Indexes for table `shop_timings`
--
ALTER TABLE `shop_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surge_pricings`
--
ALTER TABLE `surge_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporters`
--
ALTER TABLE `transporters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transporters_email_unique` (`email`),
  ADD UNIQUE KEY `transporters_phone_unique` (`phone`);

--
-- Indexes for table `transporter_documents`
--
ALTER TABLE `transporter_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter_locations`
--
ALTER TABLE `transporter_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter_password_resets`
--
ALTER TABLE `transporter_password_resets`
  ADD KEY `transporter_password_resets_email_index` (`email`),
  ADD KEY `transporter_password_resets_token_index` (`token`);

--
-- Indexes for table `transporter_shifts`
--
ALTER TABLE `transporter_shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter_shift_timings`
--
ALTER TABLE `transporter_shift_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transporter_vehicles`
--
ALTER TABLE `transporter_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_carts`
--
ALTER TABLE `user_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addon_products`
--
ALTER TABLE `addon_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_addons`
--
ALTER TABLE `cart_addons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_images`
--
ALTER TABLE `category_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_transporters`
--
ALTER TABLE `enquiry_transporters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `order_disputes`
--
ALTER TABLE `order_disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_dispute_comments`
--
ALTER TABLE `order_dispute_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_dispute_helps`
--
ALTER TABLE `order_dispute_helps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_invoices`
--
ALTER TABLE `order_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `order_ratings`
--
ALTER TABLE `order_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_timings`
--
ALTER TABLE `order_timings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restuarants`
--
ALTER TABLE `restuarants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop_banners`
--
ALTER TABLE `shop_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shop_timings`
--
ALTER TABLE `shop_timings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `surge_pricings`
--
ALTER TABLE `surge_pricings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transporters`
--
ALTER TABLE `transporters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transporter_documents`
--
ALTER TABLE `transporter_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transporter_locations`
--
ALTER TABLE `transporter_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transporter_shifts`
--
ALTER TABLE `transporter_shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transporter_shift_timings`
--
ALTER TABLE `transporter_shift_timings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transporter_vehicles`
--
ALTER TABLE `transporter_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_carts`
--
ALTER TABLE `user_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cuisine_shop`
--
ALTER TABLE `cuisine_shop`
  ADD CONSTRAINT `cuisine_shop_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cuisine_shop_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `oauth_access_token_providers`
--
ALTER TABLE `oauth_access_token_providers`
  ADD CONSTRAINT `oauth_access_token_providers_oauth_access_token_id_foreign` FOREIGN KEY (`oauth_access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE;

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
