-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 08:39 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sumsung', 1, NULL, '2020-10-25 05:52:19', '2020-10-25 05:52:19'),
(2, 'Nokia', 1, NULL, '2020-10-25 05:52:28', '2020-10-25 05:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chair', 1, NULL, '2020-10-25 05:51:13', '2020-10-25 05:51:13'),
(2, 'phone', 1, NULL, '2020-10-25 05:51:23', '2020-10-25 05:51:23'),
(3, 'computer', 1, NULL, '2020-10-25 05:52:04', '2020-10-25 05:52:04'),
(4, 'table', 1, NULL, '2020-10-26 01:08:46', '2020-10-26 01:08:46'),
(5, 'variable', 1, NULL, '2020-10-26 01:09:05', '2020-10-26 01:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'blue', 1, NULL, '2020-10-25 05:55:57', '2020-10-25 05:55:57'),
(2, 'red', 1, NULL, '2020-10-25 05:56:04', '2020-10-25 05:56:04'),
(3, 'white', 1, NULL, '2020-10-25 05:56:14', '2020-10-25 05:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `communicates`
--

CREATE TABLE `communicates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twtter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `mobile`, `email`, `facebook`, `twtter`, `youtube`, `google_plus`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Lecture Department Of bonany Sreenagar, Munshigonj', '01722505762', 'abdulgoni.me@gmail.com', 'https://www.facebook.com/gothitechnologies/', 'https://www.twitter.com/gothitechnologies/', 'https://www.youtube.com/gothitechnologies/', 'https://www.googleplu.com/gothitechnologies/', 1, NULL, '2020-10-25 23:46:30', '2020-10-25 23:46:30');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '202010260620logo.png', 1, NULL, '2020-10-26 00:20:48', '2020-10-26 00:20:48');

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2020_05_08_010209_create_logos_table', 1),
(22, '2020_05_08_132536_create_sliders_table', 1),
(23, '2020_05_09_234509_create_contacts_table', 1),
(24, '2020_05_10_002522_create_abouts_table', 1),
(25, '2020_06_01_184857_create_communicates_table', 1),
(26, '2020_10_24_091810_create_categories_table', 1),
(27, '2020_10_24_102637_create_brands_table', 1),
(28, '2020_10_24_112912_create_colors_table', 1),
(29, '2020_10_24_115000_create_sizes_table', 1),
(30, '2020_10_24_122300_create_product_colors_table', 1),
(31, '2020_10_24_122355_create_product_sizes_table', 1),
(32, '2020_10_24_122433_create_prouduct_sub_images_table', 1),
(33, '2020_10_24_132547_create_products_table', 1),
(34, '2020_10_24_203438_create_product_sub_images_table', 1),
(35, '2020_11_02_092659_create_shippings_table', 2),
(36, '2020_11_02_092904_create_payments_table', 2),
(37, '2020_11_02_092944_create_orders_table', 2),
(38, '2020_11_02_093014_create_order_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` double NOT NULL,
  `order_no` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending and 1=approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(2, '2', '2', 'Md. Abdul Goni', NULL, 5634, 'sfgsdfgsdf', 'sfsdfgsdgsdg', '202010252048footer-logo.png', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(3, '2', '1', 'goni', NULL, 5634, 'aDASD', 'ADSAD', '202010260530gothi tech facebook profile.jpg', '2020-10-25 23:30:15', '2020-10-25 23:30:15'),
(4, '3', '2', 'phone', 'phone', 5634, 'adfaDA', 'AFASFAS', '202010260544gothi tech facebook profile 2.jpg', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(5, '2', '2', 'Md. Abdul Goni Gothi', 'md-abdul-goni-gothi', 5634, 'sfsdf', 'sfsdf', '202010260545gothi-tech-logo-symbol.png', '2020-10-25 23:45:21', '2020-10-25 23:45:21'),
(6, '1', '1', 'Sumsunges', 'sumsunges', 5634, NULL, NULL, '202010260709202006010805abdulgoni.jpg', '2020-10-26 01:09:44', '2020-10-26 01:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(4, '2', '1', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(5, '2', '2', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(6, '3', '2', '2020-10-25 23:30:17', '2020-10-25 23:30:17'),
(7, '4', '1', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(8, '4', '3', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(9, '5', '1', '2020-10-25 23:45:21', '2020-10-25 23:45:21'),
(10, '6', '2', '2020-10-26 01:09:44', '2020-10-26 01:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(4, '2', '1', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(5, '2', '2', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(6, '2', '3', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(7, '3', '2', '2020-10-25 23:30:18', '2020-10-25 23:30:18'),
(8, '4', '1', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(9, '4', '2', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(10, '5', '1', '2020-10-25 23:45:21', '2020-10-25 23:45:21'),
(11, '6', '2', '2020-10-26 01:09:44', '2020-10-26 01:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(3, '2', '202010252048gothi tech logo png.png', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(4, '2', '202010252048gothi ride share landing page background.jpg', '2020-10-25 14:48:43', '2020-10-25 14:48:43'),
(5, '3', '202010260530gothi-tech-logo-symbol.png', '2020-10-25 23:30:16', '2020-10-25 23:30:16'),
(6, '3', '202010260530gothi tech logo png.png', '2020-10-25 23:30:17', '2020-10-25 23:30:17'),
(7, '4', '202010260544gothi tech facebook profile 2.jpg', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(8, '4', '202010260544gothi tech facebook profile.jpg', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(9, '4', '202010260544vector 2 for web.jpg', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(10, '4', '202010260544gothi-softwer-tech-banner-2.png', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(11, '4', '202010260544footer-logo.png', '2020-10-25 23:44:37', '2020-10-25 23:44:37'),
(12, '5', '202010260545gothi-tech-logo-symbol.png', '2020-10-25 23:45:21', '2020-10-25 23:45:21'),
(13, '5', '202010260545gothi tech logo png.png', '2020-10-25 23:45:21', '2020-10-25 23:45:21'),
(14, '6', '202010260709202005081509abdulgoni.jpg', '2020-10-26 01:09:44', '2020-10-26 01:09:44'),
(15, '6', '202010260709202006010805abdulgoni.jpg', '2020-10-26 01:09:44', '2020-10-26 01:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `prouduct_sub_images`
--

CREATE TABLE `prouduct_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `name`, `email`, `mobile_no`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Md. Abdul Goni', 'abdulgonsdfi.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-02 04:48:53', '2020-11-02 04:48:53'),
(2, 1, 'Md. Abdul Goni', 'sdfabdulgoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-02 04:50:58', '2020-11-02 04:50:58'),
(3, 1, 'Md. Abdul Goni', 'abdulgodgfgfdgni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-02 04:55:09', '2020-11-02 04:55:09'),
(4, 3, 'Md. Abdul Goni', 'abdulsdfsgoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-02 06:08:16', '2020-11-02 06:08:16'),
(5, 3, 'Md. Abdul Goni', 'abduasdsalgoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-06 10:37:09', '2020-11-06 10:37:09'),
(6, 3, 'Md. Abdul Goni', 'abdulgokjlkjlkjlkni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-06 13:32:10', '2020-11-06 13:32:10'),
(7, 1, 'Md. Abdul Goni', 'abdulsdfsdfsfgoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-06 23:58:07', '2020-11-06 23:58:07'),
(8, 1, 'Md. Abdul Goni', 'abdulgsdfdsfsoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-06 23:58:19', '2020-11-06 23:58:19'),
(9, 3, 'Md. Abdul Goni', 'abdufassadfsdflgoni.me@gmail.com', '01722505762', 'Mazdiar Kandipara', '2020-11-06 23:59:07', '2020-11-06 23:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'big', 1, NULL, '2020-10-25 05:56:25', '2020-10-25 05:56:25'),
(2, 'small', 1, NULL, '2020-10-25 05:56:32', '2020-10-25 05:56:32'),
(3, 'mideum', 1, NULL, '2020-10-25 05:56:43', '2020-10-25 05:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `role`, `code`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'goni', 'abdulgoni.me@gmail.com', 'admin', NULL, NULL, '$2y$10$TugDREk6LfC1R1w9K14HmuqmMuoFRx1I8hp.Q5elH9.PAGqpOI6VK', NULL, NULL, NULL, '202010310808202005081509abdulgoni.jpg', 1, NULL, NULL, '2020-10-31 02:08:56'),
(2, 'customer', 'Md. Abdul Goni', 'abdulgoni.mee@gmail.com', NULL, '3172', NULL, '$2y$10$ZMRvnDsf2qfd1/IyL/NoaeH7d.oqKj936FvtsuwsX8g2kbRPBGiVi', '01722505762', NULL, NULL, NULL, 0, NULL, '2020-10-28 08:04:59', '2020-10-28 08:04:59'),
(3, 'customer', 'Md. Abdul Goni g', 'oegothi@gmail.com', NULL, '4482', NULL, '$2y$10$ZJnp9JsD.wFWGsRojgjdBOUJw15Sj9bpocs20EsFQSAPRPXqso0KO', '017225057623', NULL, NULL, '202010310902202005081509abdulgoni.jpg', 1, NULL, '2020-10-28 08:07:35', '2020-10-31 03:25:15'),
(4, 'customer', 'Md. Abdul Goni', 'hsfhs@gmail.com', NULL, '1913', NULL, '$2y$10$FosoGljuI9/KBt/TZp7fGOgYg7l5RN9vvVB2TRfPavbiseYJdo9iG', '546456546', NULL, NULL, NULL, 0, NULL, '2020-10-28 08:16:03', '2020-10-28 08:16:03'),
(5, 'customer', 'Md. Abdul Goni', 'asdsad@gmail.com', NULL, '278', NULL, '$2y$10$po1B2Uo.QM418IDXeoHL2OCMAjYDnHnfd4PSGh0x/IRVKaTaCSKgm', '5654754', NULL, NULL, NULL, 0, NULL, '2020-10-28 08:17:54', '2020-10-28 08:17:54'),
(7, 'customer', 'test', 'test@gmail.com', NULL, NULL, NULL, '$2y$10$rsprdJkHmb4k5CK4a5lC5.vNLiM.YstjO6.IKcNPtIC3MUyDOLlKa', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-30 05:31:13', '2020-10-30 05:31:13'),
(8, 'admin', 'Md. Abdul Goni', 'ripa@gmail.com', 'user', NULL, NULL, '$2y$10$0wz2li7WuPGwe2LuNKVjd.KuUR0wVfMwoivXzg11zBbwH34Ui1fMS', NULL, NULL, NULL, NULL, 1, NULL, '2020-10-30 07:00:25', '2020-10-30 07:00:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communicates`
--
ALTER TABLE `communicates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prouduct_sub_images`
--
ALTER TABLE `prouduct_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `communicates`
--
ALTER TABLE `communicates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prouduct_sub_images`
--
ALTER TABLE `prouduct_sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
