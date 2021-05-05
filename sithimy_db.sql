-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2021 at 07:00 AM
-- Server version: 5.7.34
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sithimy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'CvQt9oPObRXk3wXv1ZOnz2xqTIQC2VCH', 1, '2021-04-26 13:13:01', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(2, 2, 'YKerZIcf35GSIdxvSDPWkP3pnNkcQ5Ww', 1, '2021-04-26 21:32:39', '2021-04-26 21:32:39', '2021-04-26 21:32:39'),
(3, 3, '25mGywvkxobzgVmWOuBmB13PlPeAYZit', 1, '2021-04-26 21:34:32', '2021-04-26 21:34:32', '2021-04-26 21:34:32'),
(4, 4, 'OUDzsZ7E8jHHTZNNfYRZxzfvVqhs0a3Y', 1, '2021-04-26 21:34:59', '2021-04-26 21:34:59', '2021-04-26 21:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `is_filterable`, `created_at`, `updated_at`, `slug`) VALUES
(3, 13, 0, '2021-04-28 10:17:30', '2021-04-28 10:35:59', 'model'),
(4, 13, 0, '2021-04-28 10:19:43', '2021-04-28 13:42:00', 'ID-Number'),
(5, 13, 0, '2021-04-28 10:22:05', '2021-04-28 10:36:15', 'xuat-xu'),
(6, 13, 0, '2021-04-28 10:23:24', '2021-04-28 10:36:24', 'asin');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_categories`
--

INSERT INTO `attribute_categories` (`attribute_id`, `category_id`) VALUES
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(3, 15),
(4, 15),
(5, 15),
(6, 15),
(3, 16),
(4, 16),
(5, 16),
(6, 16),
(3, 17),
(4, 17),
(5, 17),
(6, 17),
(3, 18),
(4, 18),
(5, 18),
(6, 18),
(3, 44),
(4, 44),
(5, 44),
(6, 44),
(3, 45),
(4, 45),
(5, 45),
(6, 45),
(3, 46),
(4, 46),
(5, 46),
(6, 46);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `created_at`, `updated_at`) VALUES
(13, '2021-04-28 10:35:29', '2021-04-28 10:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set_translations`
--

INSERT INTO `attribute_set_translations` (`id`, `attribute_set_id`, `locale`, `name`) VALUES
(14, 13, 'vi', 'Thông Tin Chung'),
(46, 13, 'en', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(3, 3, 'vi', 'Model'),
(4, 4, 'vi', 'Mã Sản Phẩm'),
(5, 5, 'vi', 'Xuất Xứ'),
(6, 6, 'vi', 'ASIN'),
(27, 6, 'en', 'ASIN'),
(28, 4, 'en', 'ID Number'),
(29, 5, 'en', 'Original');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 5, 0, '2021-04-28 10:46:40', '2021-04-28 10:46:40'),
(2, 5, 1, '2021-04-28 10:46:40', '2021-04-28 10:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_value_translations`
--

INSERT INTO `attribute_value_translations` (`id`, `attribute_value_id`, `locale`, `value`) VALUES
(1, 1, 'vi', 'Nhập từ Mỹ - Gia công bên ngoài USA'),
(2, 2, 'vi', 'Nhập từ Mỹ - SX tại Mỹ'),
(11, 1, 'en', 'Nhập từ Mỹ - Gia công bên ngoài USA'),
(12, 2, 'en', 'Nhập từ Mỹ - SX tại Mỹ');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'clarks', 1, '2021-04-28 06:30:05', '2021-04-28 06:30:05'),
(2, 'bulova', 1, '2021-04-28 09:39:49', '2021-04-28 09:39:49'),
(3, 'citizen', 1, '2021-04-28 09:39:56', '2021-04-28 09:39:56'),
(4, 'skechers', 1, '2021-04-28 09:40:14', '2021-04-28 09:40:14'),
(5, 'ray-ban', 1, '2021-04-28 09:40:30', '2021-04-28 09:40:30'),
(6, 'lacoste', 1, '2021-04-28 09:40:44', '2021-04-28 09:40:44'),
(7, 'rockport', 1, '2021-04-28 09:40:52', '2021-04-28 09:40:52'),
(8, 'levis', 1, '2021-04-28 09:41:22', '2021-04-28 09:41:22'),
(9, 'ellen-tracy', 1, '2021-04-28 09:41:37', '2021-04-28 09:41:37'),
(10, 'paco-rabanne', 1, '2021-04-28 09:41:58', '2021-04-28 09:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_translations`
--

INSERT INTO `brand_translations` (`id`, `brand_id`, `locale`, `name`) VALUES
(1, 1, 'vi', 'Clarks'),
(2, 2, 'en', 'Bulova'),
(3, 3, 'en', 'Citizen'),
(4, 4, 'en', 'Skechers'),
(5, 5, 'en', 'Ray-ban'),
(6, 6, 'en', 'Lacoste'),
(7, 7, 'en', 'Rockport'),
(8, 8, 'en', 'Levi\'s'),
(9, 9, 'en', 'Ellen Tracy'),
(10, 10, 'en', 'Paco Rabanne'),
(11, 2, 'vi', 'Bulova'),
(12, 3, 'vi', 'Citizen'),
(13, 4, 'vi', 'Skechers'),
(14, 5, 'vi', 'Ray-ban'),
(15, 6, 'vi', 'Lacoste'),
(16, 7, 'vi', 'Rockport'),
(17, 8, 'vi', 'Levi\'s'),
(18, 9, 'vi', 'Ellen Tracy'),
(19, 10, 'vi', 'Paco Rabanne');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dong-ho', 117, 1, 1, '2021-04-27 10:27:24', '2021-04-28 10:24:35'),
(2, 1, 'dong-ho-nam', 118, 0, 1, '2021-04-27 10:27:53', '2021-04-28 10:24:35'),
(3, 1, 'dong-ho-nu', 122, 0, 1, '2021-04-27 10:28:17', '2021-04-28 10:24:35'),
(4, 2, 'dong-ho-kim', 119, 0, 1, '2021-04-27 10:29:01', '2021-04-28 10:24:35'),
(5, 2, 'dong-ho-so', 120, 0, 1, '2021-04-27 10:29:14', '2021-04-28 10:24:35'),
(6, 2, 'dong-ho-thong-minh', 121, 0, 1, '2021-04-27 10:29:25', '2021-04-28 10:24:35'),
(7, 3, 'dong-ho-kim-99QMoLWj', 123, 0, 1, '2021-04-27 10:29:41', '2021-04-28 10:24:35'),
(8, 3, 'dong-ho-so-URFADGNX', 124, 0, 1, '2021-04-27 10:29:51', '2021-04-28 10:24:35'),
(9, 3, 'dong-ho-thong-minh-182jyDLW', 125, 0, 1, '2021-04-27 10:30:03', '2021-04-28 10:24:35'),
(10, NULL, 'giay-dep', 36, 1, 1, '2021-04-27 10:43:11', '2021-04-28 10:24:35'),
(13, 10, 'giay-nam', 37, 0, 1, '2021-04-27 10:45:56', '2021-04-28 10:24:35'),
(14, 10, 'giay-nu', 44, 0, 1, '2021-04-27 10:46:08', '2021-04-28 10:24:35'),
(15, NULL, 'thoi-trang-nam', 52, 1, 1, '2021-04-27 10:47:40', '2021-04-28 10:24:35'),
(16, NULL, 'thoi-trang-nu', 69, 1, 1, '2021-04-27 10:48:13', '2021-04-28 10:24:35'),
(17, NULL, 'phu-kien', 88, 1, 1, '2021-04-27 10:48:30', '2021-04-28 10:24:35'),
(18, NULL, 'tui-xach', 107, 1, 1, '2021-04-27 10:48:39', '2021-04-28 10:24:35'),
(19, 46, 'nuoc-hoa', 27, 1, 1, '2021-04-27 10:48:47', '2021-04-28 10:24:35'),
(20, 19, 'women', 28, 0, 1, '2021-04-27 10:53:26', '2021-04-28 10:24:35'),
(21, 19, 'men', 29, 0, 1, '2021-04-27 10:53:35', '2021-04-28 10:24:35'),
(22, 71, 'tui-xach-tay', 110, 0, 1, '2021-04-27 10:56:36', '2021-04-28 10:24:35'),
(23, 71, 'tui-deo-vai', 109, 0, 1, '2021-04-27 10:56:47', '2021-04-28 10:24:35'),
(24, 71, 'vi-cam-tay', 111, 0, 1, '2021-04-27 10:57:21', '2021-04-28 10:24:35'),
(25, 65, 'vi-nam', 94, 0, 1, '2021-04-27 11:05:30', '2021-04-28 10:24:35'),
(26, 65, 'day-nit-that-lung', 93, 0, 1, '2021-04-27 11:05:44', '2021-04-28 10:24:35'),
(27, 17, 'hop-quet-zippo', 97, 0, 1, '2021-04-27 11:06:00', '2021-04-28 10:24:35'),
(28, 15, 'quan-nam', 53, 0, 1, '2021-04-27 11:11:02', '2021-04-28 10:24:35'),
(29, 15, 'ao-nam', 58, 0, 1, '2021-04-27 11:11:13', '2021-04-28 10:24:35'),
(30, 15, 'ao-khoac-giu-am', 61, 0, 1, '2021-04-27 11:11:28', '2021-04-28 10:24:35'),
(31, 16, 'quan-nu', 73, 0, 1, '2021-04-27 11:12:21', '2021-04-28 10:24:35'),
(32, 16, 'ao-nu', 78, 0, 1, '2021-04-27 11:12:33', '2021-04-28 10:24:35'),
(33, 16, 'ao-khoac-giu-am-HgrhWhgm', 81, 0, 1, '2021-04-27 11:12:46', '2021-04-28 10:24:35'),
(34, 16, 'vay-dam', 70, 0, 1, '2021-04-27 11:13:25', '2021-04-28 10:24:35'),
(35, 65, 'mu-non', 95, 0, 1, '2021-04-27 11:17:11', '2021-04-28 10:24:35'),
(36, 17, 'but-ky', 104, 0, 1, '2021-04-27 11:17:30', '2021-04-28 10:24:35'),
(37, 27, 'nu-trang', 98, 0, 1, '2021-04-27 11:17:41', '2021-04-28 10:24:35'),
(38, 17, 'mat-kinh', 89, 1, 1, '2021-04-27 11:18:18', '2021-04-28 10:24:35'),
(39, 38, 'nam', 90, 0, 1, '2021-04-27 11:18:52', '2021-04-28 10:24:35'),
(40, 38, 'kinh-nu', 91, 0, 1, '2021-04-27 11:19:04', '2021-04-28 10:24:35'),
(43, 46, 'cham-soc-suc-khoe', 23, 1, 1, '2021-04-27 11:28:25', '2021-04-28 10:24:35'),
(44, NULL, 'dung-cu-the-thao', 0, 1, 1, '2021-04-27 11:28:56', '2021-04-28 10:24:35'),
(45, NULL, 'dung-cu-gia-dinh', 13, 1, 1, '2021-04-27 11:29:08', '2021-04-28 10:24:35'),
(46, NULL, 'san-pham-lam-dep', 22, 1, 1, '2021-04-27 11:29:29', '2021-04-28 10:24:35'),
(47, 43, 'chong-lao-hoa', 25, 0, 1, '2021-04-27 11:30:28', '2021-04-28 10:24:35'),
(48, 43, 'thoai-hoa-khop', 26, 0, 1, '2021-04-27 11:30:55', '2021-04-28 10:24:35'),
(50, 43, 'bo-sung-dinh-duong', 24, 0, 1, '2021-04-27 11:31:22', '2021-04-28 10:24:35'),
(54, 105, 'ong-nhom', 3, 0, 1, '2021-04-27 11:32:39', '2021-04-28 10:24:35'),
(55, 105, 'leu-cam-trai', 2, 0, 1, '2021-04-27 11:32:55', '2021-04-28 10:24:35'),
(56, 45, 'bo-dao-nha-bep', 14, 0, 1, '2021-04-27 11:34:08', '2021-04-28 10:24:35'),
(57, 46, 'my-pham', 30, 0, 1, '2021-04-27 11:35:30', '2021-04-28 10:24:35'),
(58, 46, 'kem-duong', 33, 0, 1, '2021-04-27 11:36:09', '2021-04-28 10:24:35'),
(59, 57, 'danh-cho-nu', 31, 0, 1, '2021-04-27 11:36:41', '2021-04-28 10:24:35'),
(60, 57, 'danh-cho-nam', 32, 0, 1, '2021-04-27 11:37:06', '2021-04-28 10:24:35'),
(61, 56, 'bo-nho-gia-dinh', 15, 0, 1, '2021-04-27 11:38:00', '2021-04-28 10:24:35'),
(63, 58, 'danh-cho-nu-Gpq0rGGs', 34, 0, 1, '2021-04-27 11:38:41', '2021-04-28 10:24:35'),
(64, 58, 'danh-cho-nam-NgQtcyLL', 35, 0, 1, '2021-04-27 11:38:55', '2021-04-28 10:24:35'),
(65, 17, 'phu-kien-nam', 92, 0, 1, '2021-04-27 13:19:16', '2021-04-28 10:24:35'),
(66, 65, 'vi-nam-p0AjydOY', 96, 0, 1, '2021-04-27 13:20:08', '2021-04-28 10:24:35'),
(67, 27, 'day-nit-that-lung-Chj947II', 99, 0, 1, '2021-04-27 13:21:11', '2021-04-28 10:24:35'),
(68, 27, 'mu-non-lH0u6n8X', 100, 0, 1, '2021-04-27 13:21:49', '2021-04-28 10:24:35'),
(69, 17, 'mu-bao-hiem', 101, 0, 1, '2021-04-27 13:22:28', '2021-04-28 10:24:35'),
(70, 18, 'tui-xach-nam', 112, 0, 1, '2021-04-27 13:23:27', '2021-04-28 10:24:35'),
(71, 18, 'tui-xach-nu', 108, 0, 1, '2021-04-27 13:23:42', '2021-04-28 10:24:35'),
(73, 69, 'nam-3dF9vpKS', 102, 0, 1, '2021-04-27 13:25:34', '2021-04-28 10:24:35'),
(74, 69, 'nu', 103, 0, 1, '2021-04-27 13:25:48', '2021-04-28 10:24:35'),
(75, 31, 'quan-jeans', 74, 0, 1, '2021-04-27 13:26:24', '2021-04-28 10:24:35'),
(76, 31, 'quan-khaki', 75, 0, 1, '2021-04-27 13:26:39', '2021-04-28 10:24:35'),
(77, 31, 'quan-tay', 76, 0, 1, '2021-04-27 13:26:49', '2021-04-28 10:24:35'),
(78, 31, 'quan-lung', 77, 0, 1, '2021-04-27 13:27:14', '2021-04-28 10:24:35'),
(79, 32, 'ao-thun', 79, 0, 1, '2021-04-27 13:27:29', '2021-04-28 10:24:35'),
(80, 32, 'ao-so-mi', 80, 0, 1, '2021-04-27 13:27:43', '2021-04-28 10:24:35'),
(81, 33, 'ao-phao', 82, 0, 1, '2021-04-27 13:28:07', '2021-04-28 10:24:35'),
(82, 33, 'ao-khoac-gio', 83, 0, 1, '2021-04-27 13:28:23', '2021-04-28 10:24:35'),
(83, 33, 'ao-len-ni', 84, 0, 1, '2021-04-27 13:28:40', '2021-04-28 10:24:35'),
(84, 33, 'ao-khoac-jeans', 85, 0, 1, '2021-04-27 13:29:56', '2021-04-28 10:24:35'),
(85, 33, 'ao-khoac-da', 86, 0, 1, '2021-04-27 13:30:08', '2021-04-28 10:24:35'),
(86, 33, 'ao-da-mang-to', 87, 0, 1, '2021-04-27 13:30:38', '2021-04-28 10:24:35'),
(87, 36, 'but-may', 105, 0, 1, '2021-04-27 13:31:37', '2021-04-28 10:24:35'),
(88, 36, 'but-bi', 106, 0, 1, '2021-04-27 13:31:48', '2021-04-28 10:24:35'),
(89, 34, 'vay-da-tiec', 71, 0, 1, '2021-04-27 13:32:29', '2021-04-28 10:24:35'),
(90, 34, 'vay-cong-so', 72, 0, 1, '2021-04-27 13:32:43', '2021-04-28 10:24:35'),
(92, 28, 'quan-jeans-Bziv0CGX', 54, 0, 1, '2021-04-27 13:34:27', '2021-04-28 10:24:35'),
(93, 28, 'quan-khaki-JDJoG4td', 55, 0, 1, '2021-04-27 13:34:48', '2021-04-28 10:24:35'),
(94, 28, 'quan-tay-RbDlnIvJ', 56, 0, 1, '2021-04-27 13:35:03', '2021-04-28 10:24:35'),
(95, 28, 'quan-short', 57, 0, 1, '2021-04-27 13:35:18', '2021-04-28 10:24:35'),
(96, 29, 'ao-thun-CwplfURi', 59, 0, 1, '2021-04-27 13:35:43', '2021-04-28 10:24:35'),
(97, 29, 'ao-so-mi-DRbPUvzv', 60, 0, 1, '2021-04-27 13:35:53', '2021-04-28 10:24:35'),
(98, 30, 'ao-phao-ROMz4rDw', 62, 0, 1, '2021-04-27 13:36:08', '2021-04-28 10:24:35'),
(99, 30, 'ao-khoac-gio-iyfyhlQb', 63, 0, 1, '2021-04-27 13:36:24', '2021-04-28 10:24:35'),
(100, 30, 'ao-khoac-jeans-DZ2WTuzX', 64, 0, 1, '2021-04-27 13:36:39', '2021-04-28 10:24:35'),
(101, 30, 'ao-da', 65, 0, 1, '2021-04-27 13:36:50', '2021-04-28 10:24:35'),
(102, 30, 'ao-len-ni-l7BDlntz', 66, 0, 1, '2021-04-27 13:37:17', '2021-04-28 10:24:35'),
(103, 30, 'ao-khoac-da-mang-to', 67, 0, 1, '2021-04-27 13:37:47', '2021-04-28 10:24:35'),
(104, 30, 'vest-gile', 68, 0, 1, '2021-04-27 13:38:15', '2021-04-28 10:24:35'),
(105, 44, 'ngoai-troi', 1, 0, 1, '2021-04-27 13:40:37', '2021-04-28 10:24:35'),
(106, 44, 'trong-nha', 6, 0, 1, '2021-04-27 13:40:56', '2021-04-28 10:24:35'),
(107, 14, 'giay-cao-got', 45, 0, 1, '2021-04-27 13:42:13', '2021-04-28 10:24:35'),
(108, 14, 'giay-sandal', 46, 0, 1, '2021-04-27 13:42:25', '2021-04-28 10:24:35'),
(109, 14, 'giay-bup-be', 47, 0, 1, '2021-04-27 13:42:36', '2021-04-28 10:24:35'),
(110, 14, 'giay-boot-bot', 48, 0, 1, '2021-04-27 13:42:52', '2021-04-28 10:24:35'),
(111, 14, 'giay-the-thao', 49, 0, 1, '2021-04-27 13:43:09', '2021-04-28 10:24:35'),
(112, 14, 'giay-sneaker', 50, 0, 1, '2021-04-27 13:43:27', '2021-04-28 10:24:35'),
(113, 14, 'giay-cong-so', 51, 0, 1, '2021-04-27 13:44:15', '2021-04-28 10:24:35'),
(114, 13, 'giay-tay-cong-so', 38, 0, 1, '2021-04-27 13:44:44', '2021-04-28 10:24:35'),
(115, 13, 'giay-sneaker-thoi-trang', 39, 0, 1, '2021-04-27 13:45:05', '2021-04-28 10:24:35'),
(116, 13, 'giay-luoi-slip-on', 40, 0, 1, '2021-04-27 13:45:33', '2021-04-28 10:24:35'),
(117, 13, 'giay-bot-boot', 41, 0, 1, '2021-04-27 13:45:54', '2021-04-28 10:24:35'),
(118, 13, 'giay-sandal-P1hlY32T', 42, 0, 1, '2021-04-27 13:46:32', '2021-04-28 10:24:35'),
(119, 13, 'giay-the-thao-Dyt1wR4b', 43, 0, 1, '2021-04-27 13:46:55', '2021-04-28 10:24:35'),
(126, 45, 'nha-tam', 17, 0, 1, '2021-04-27 13:58:13', '2021-04-28 10:24:35'),
(127, 126, 'voi-sen', 18, 0, 1, '2021-04-27 13:58:28', '2021-04-28 10:24:35'),
(128, 56, 'voi-rua', 16, 0, 1, '2021-04-27 13:58:41', '2021-04-28 10:24:35'),
(129, 126, 'voi-xa', 19, 0, 1, '2021-04-27 13:58:56', '2021-04-28 10:24:35'),
(130, 45, 'phu-kien-nLtGtdZZ', 20, 0, 1, '2021-04-27 13:59:52', '2021-04-28 10:24:35'),
(131, 130, 'o-khoa', 21, 0, 1, '2021-04-27 14:00:12', '2021-04-28 10:24:35'),
(132, 105, 'vot-tennis', 4, 0, 1, '2021-04-27 14:01:33', '2021-04-28 10:24:35'),
(133, 105, 'giay-truot-skates', 5, 0, 1, '2021-04-27 14:09:15', '2021-04-28 10:24:35'),
(134, 106, 'cau-long', 7, 0, 1, '2021-04-27 14:09:40', '2021-04-28 10:24:35'),
(135, 106, 'bong-ban', 8, 0, 1, '2021-04-27 14:09:49', '2021-04-28 10:24:35'),
(136, 106, 'bowling', 9, 0, 1, '2021-04-27 14:10:18', '2021-04-28 10:24:35'),
(137, 44, 'do-choi-tre-em', 10, 0, 1, '2021-04-27 14:10:53', '2021-04-28 10:24:35'),
(138, 137, 'xep-hinh', 11, 0, 1, '2021-04-27 14:11:07', '2021-04-28 10:24:35'),
(139, 137, 'xe-dieu-khien', 12, 0, 1, '2021-04-27 14:12:02', '2021-04-28 10:24:35'),
(140, 70, 'tui-xach-hanh-ly', 113, 0, 1, '2021-04-27 14:15:14', '2021-04-28 10:24:35'),
(141, 70, 'cap-xach-cong-so', 114, 0, 1, '2021-04-27 14:15:33', '2021-04-28 10:24:35'),
(142, 70, 'ba-lo', 115, 0, 1, '2021-04-27 14:16:20', '2021-04-28 10:24:35'),
(143, 70, 'vali-keo', 116, 0, 1, '2021-04-27 14:16:42', '2021-04-28 10:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'vi', 'Đồng Hồ'),
(2, 2, 'vi', 'Đồng Hồ Nam'),
(3, 3, 'vi', 'Đồng Hồ Nữ'),
(4, 4, 'vi', 'Dây Da'),
(5, 5, 'vi', 'Dây Kim Loại'),
(6, 6, 'vi', 'Đồng Hồ Thông Minh'),
(7, 7, 'vi', 'Dây Da'),
(8, 8, 'vi', 'Dây Kim Loại'),
(9, 9, 'vi', 'Đồng Hồ Thông Minh'),
(10, 1, 'en', 'Watches'),
(11, 2, 'en', 'Men'),
(12, 3, 'en', 'Women'),
(13, 6, 'en', 'Smartwatches'),
(14, 9, 'en', 'Smartwatches'),
(15, 5, 'en', 'Stainless Steel'),
(16, 4, 'en', 'Leather'),
(17, 7, 'en', 'Leather'),
(18, 8, 'en', 'Stainless Steel'),
(19, 10, 'vi', 'Giày Dép'),
(21, 10, 'en', 'Shoes'),
(23, 13, 'vi', 'Giày Nam'),
(24, 14, 'vi', 'Giày Nữ'),
(25, 13, 'en', 'Men'),
(26, 14, 'en', 'Women'),
(27, 15, 'vi', 'Thời Trang Nam'),
(28, 16, 'vi', 'Thời Trang Nữ'),
(29, 17, 'vi', 'Phụ Kiện'),
(30, 18, 'vi', 'Túi Xách'),
(31, 19, 'vi', 'Nước Hoa'),
(32, 15, 'en', 'Men\'s Clothing'),
(33, 16, 'en', 'Women\'s Clothing'),
(34, 17, 'en', 'Accessories'),
(35, 18, 'en', 'Handbags & Shoulder Bags'),
(36, 19, 'en', 'Perfumes'),
(37, 20, 'en', 'Women'),
(38, 21, 'en', 'Men'),
(39, 21, 'vi', 'Nước Hoa Nam'),
(40, 20, 'vi', 'Nước Hoa Nữ'),
(41, 22, 'vi', 'Túi Xách Tay'),
(42, 23, 'vi', 'Túi Đeo Vai'),
(43, 24, 'vi', 'Ví Cầm Tay'),
(44, 24, 'en', 'Clutch Wallets'),
(45, 23, 'en', 'Shoulder Bags'),
(46, 22, 'en', 'Handbags'),
(47, 25, 'en', 'Zippo'),
(48, 26, 'en', 'Belts'),
(49, 27, 'en', 'Women'),
(50, 27, 'vi', 'Phụ Kiện Nữ'),
(51, 26, 'vi', 'Dây Nịt - Thắt Lưng'),
(52, 25, 'vi', 'Hộp Quẹt Zippo'),
(53, 28, 'vi', 'Quần Nam'),
(54, 29, 'vi', 'Áo Nam'),
(55, 30, 'vi', 'Áo Khoác - Giữ Ấm'),
(56, 31, 'vi', 'Quần Nữ'),
(57, 32, 'vi', 'Áo Nữ'),
(58, 33, 'vi', 'Áo Khoác - Giữ Ấm'),
(59, 34, 'vi', 'Váy - Đầm'),
(60, 35, 'vi', 'Mũ - Nón'),
(61, 36, 'vi', 'Bút Ký'),
(62, 37, 'vi', 'Nữ Trang'),
(63, 38, 'vi', 'Mắt Kính'),
(64, 39, 'vi', 'Kính Nam'),
(65, 40, 'vi', 'Kính Nữ'),
(68, 39, 'en', 'Men'),
(69, 40, 'en', 'Women'),
(70, 38, 'en', 'Sunglasses & Eyewear'),
(71, 35, 'en', 'Hats - Caps'),
(72, 36, 'en', 'Pens & Pen Refills'),
(73, 37, 'en', 'Jewelry'),
(74, 43, 'vi', 'Thực Phẩm Hỗ Trợ'),
(75, 44, 'vi', 'Vận Động - Thể Thao'),
(76, 45, 'vi', 'Dụng Cụ Gia Đình'),
(77, 46, 'vi', 'Sức Khỏe - Làm Đẹp'),
(78, 47, 'vi', 'Cho Trẻ Em'),
(79, 48, 'vi', 'Cho Động Vật'),
(81, 50, 'vi', 'Cho Người Lớn'),
(85, 54, 'vi', 'Ống Nhòm'),
(86, 55, 'vi', 'Lều Cắm Trại'),
(87, 56, 'vi', 'Nhà Bếp'),
(88, 57, 'vi', 'Mỹ Phẩm'),
(89, 58, 'vi', 'Kem Dưỡng'),
(90, 59, 'vi', 'Dành Cho Nữ'),
(91, 60, 'vi', 'Dành Cho Nam'),
(92, 61, 'vi', 'Bộ Dao Nhà Bếp'),
(94, 63, 'vi', 'Dành Cho Nữ'),
(95, 64, 'vi', 'Dành Cho Nam'),
(96, 65, 'vi', 'Phụ Kiện Nam'),
(97, 66, 'vi', 'Ví Nam'),
(98, 67, 'vi', 'Dây Nịt - Thắt Lưng'),
(99, 68, 'vi', 'Mũ - Nón'),
(100, 69, 'vi', 'Mũ Bảo Hiểm'),
(101, 70, 'vi', 'Túi Xách Nam'),
(102, 71, 'vi', 'Túi Xách Nữ'),
(104, 73, 'vi', 'Nam'),
(105, 74, 'vi', 'Nữ'),
(106, 75, 'vi', 'Quần Jeans'),
(107, 76, 'vi', 'Quần Khaki'),
(108, 77, 'vi', 'Quần Tây'),
(109, 78, 'vi', 'Quần Shorts'),
(110, 79, 'vi', 'Áo Thun Kiểu'),
(111, 80, 'vi', 'Áo Thun Cổ Điển'),
(112, 81, 'vi', 'Áo Phao'),
(113, 82, 'vi', 'Áo Khoác Gió'),
(114, 83, 'vi', 'Áo Len - Nỉ'),
(115, 84, 'vi', 'Áo Khoác Jeans'),
(116, 85, 'vi', 'Áo Khoác Da'),
(117, 86, 'vi', 'Áo Dạ - Măng Tô'),
(118, 87, 'vi', 'Bút Máy'),
(119, 88, 'vi', 'Bút Bi'),
(120, 89, 'vi', 'Váy Dạ Tiệc'),
(121, 90, 'vi', 'Váy Công Sở'),
(123, 92, 'vi', 'Quần Jeans'),
(124, 93, 'vi', 'Quần Khaki'),
(125, 94, 'vi', 'Quần Tây'),
(126, 95, 'vi', 'Quần Short'),
(127, 96, 'vi', 'Áo Thun'),
(128, 97, 'vi', 'Áo Sơ Mi'),
(129, 98, 'vi', 'Áo Phao'),
(130, 99, 'vi', 'Áo Khoác Gió'),
(131, 100, 'vi', 'Áo Khoác Jeans'),
(132, 101, 'vi', 'Áo Da'),
(133, 102, 'vi', 'Áo Len- Nỉ'),
(134, 103, 'vi', 'Áo Khoác Dạ - Măng Tô'),
(135, 104, 'vi', 'Vest - Gile'),
(136, 105, 'vi', 'Ngoài Trời'),
(137, 106, 'vi', 'Trong Nhà'),
(138, 107, 'vi', 'Giày Cao Gót'),
(139, 108, 'vi', 'Giày Sandal'),
(140, 109, 'vi', 'Giày Búp Bê'),
(141, 110, 'vi', 'Giày Boot - Bốt'),
(142, 111, 'vi', 'Giày Thể Thao'),
(143, 112, 'vi', 'Giày Sneaker'),
(144, 113, 'vi', 'Giày Lười - Slip on'),
(145, 114, 'vi', 'Giày Tây - Công Sở'),
(146, 115, 'vi', 'Giày Sneaker - Thời Trang'),
(147, 116, 'vi', 'Giày Lười - Slip on'),
(148, 117, 'vi', 'Giày Bốt - Boot'),
(149, 118, 'vi', 'Giày Sandal'),
(150, 119, 'vi', 'Giày Thể Thao'),
(157, 126, 'vi', 'Nhà Tắm'),
(158, 127, 'vi', 'Vòi Sen'),
(159, 128, 'vi', 'Vòi Rửa Nhà Bếp'),
(160, 129, 'vi', 'Vòi Xả Chậu Rửa'),
(161, 130, 'vi', 'Phụ Kiện'),
(162, 131, 'vi', 'Ổ Khóa'),
(163, 132, 'vi', 'Vợt Tennis'),
(164, 133, 'vi', 'Giày Trượt - Skates'),
(165, 134, 'vi', 'Cầu Lông'),
(166, 135, 'vi', 'Bóng Bàn'),
(167, 136, 'vi', 'Bowling'),
(168, 137, 'vi', 'Đồ Chơi Trẻ Em'),
(169, 138, 'vi', 'Xếp Hình'),
(170, 139, 'vi', 'Xe Điều Khiển'),
(171, 140, 'vi', 'Túi Xách Hành Lý'),
(172, 141, 'vi', 'Cặp Xách - Công Sở'),
(173, 142, 'vi', 'Ba Lô'),
(174, 143, 'vi', 'Vali Kéo'),
(179, 50, 'en', 'Adult'),
(180, 47, 'en', 'Kids'),
(181, 48, 'en', 'Pets'),
(182, 43, 'en', 'Vitamins & Supplements'),
(183, 45, 'en', 'Home & Tools'),
(184, 56, 'en', 'Kitchen'),
(185, 61, 'en', 'Knife Set'),
(186, 128, 'en', 'Sink Faucets'),
(187, 127, 'en', 'Showers'),
(188, 126, 'en', 'Bathroom'),
(189, 59, 'en', 'Women'),
(190, 63, 'en', 'Women'),
(191, 65, 'en', 'Men'),
(192, 69, 'en', 'Helmets'),
(193, 73, 'en', 'Men'),
(194, 74, 'en', 'Women'),
(195, 67, 'en', 'Belts'),
(196, 68, 'en', 'Hats - Caps'),
(197, 66, 'en', 'Wallets'),
(198, 44, 'en', 'Sports - Outdoors'),
(199, 105, 'en', 'Outdoors'),
(200, 106, 'en', 'Indoors'),
(201, 129, 'en', 'Bathroom Sink Faucets'),
(202, 130, 'en', 'Accessories'),
(203, 60, 'en', 'Men'),
(204, 64, 'en', 'Men'),
(205, 114, 'en', 'Oxfords'),
(206, 115, 'en', 'Sneakers'),
(207, 116, 'en', 'Loafers & Slip-Ons'),
(208, 117, 'en', 'Boots'),
(209, 118, 'en', 'Sandals'),
(210, 119, 'en', 'Athletic'),
(211, 113, 'en', 'Loafers & Slip-Ons'),
(212, 112, 'en', 'Sneakers'),
(213, 111, 'en', 'Athletic'),
(214, 110, 'en', 'Boots'),
(215, 109, 'en', 'Flats'),
(216, 108, 'en', 'Sandals'),
(217, 107, 'en', 'Pumps'),
(218, 71, 'en', 'Women'),
(219, 70, 'en', 'Men'),
(220, 55, 'en', 'Camping Tents'),
(221, 54, 'en', 'Binoculars'),
(222, 132, 'en', 'Tennis Rackets'),
(223, 133, 'en', 'Roller Skates'),
(224, 134, 'en', 'Badminton Rackets'),
(225, 135, 'en', 'Table Tennis Rackets'),
(226, 137, 'en', 'Toys & Games'),
(227, 138, 'en', 'Block & Building Sets'),
(228, 139, 'en', 'Ride-On Toys'),
(229, 131, 'en', 'Door Locks'),
(230, 46, 'en', 'Beauty & Personal Care'),
(231, 57, 'en', 'Makeup'),
(232, 58, 'en', 'Skin Care'),
(233, 28, 'en', 'Pants'),
(234, 29, 'en', 'T-Shirts & Tanks'),
(235, 30, 'en', 'Coats - Jackets'),
(236, 33, 'en', 'Coats - Jackets'),
(237, 31, 'en', 'Pants'),
(238, 102, 'en', 'Hoodies & Sweaters'),
(239, 94, 'en', 'Dress - Casual Pants'),
(240, 95, 'en', 'Shorts'),
(241, 92, 'en', 'Jeans'),
(242, 93, 'en', 'Khaki - Cargo Pants'),
(243, 97, 'en', 'Casual - Dress Shirts'),
(244, 96, 'en', 'Polos & T-Shirts'),
(245, 99, 'en', 'Fleece & Lightweight'),
(246, 98, 'en', 'Down & Down'),
(247, 101, 'en', 'Leather & Faux Leather'),
(248, 100, 'en', 'Jeans - Denim'),
(249, 103, 'en', 'Wool & Blends'),
(250, 104, 'en', 'Vests'),
(251, 87, 'en', 'Ink Pen Refills'),
(252, 88, 'en', 'Rollerball - Ballpoint'),
(253, 34, 'en', 'Dresses'),
(254, 89, 'en', 'Night Out - Cocktail'),
(255, 90, 'en', 'Casual - Formal'),
(256, 86, 'en', 'Wool & Pea Coats'),
(257, 85, 'en', 'Leather & Faux Leather'),
(258, 81, 'en', 'Down Jackets & Parkas'),
(259, 82, 'en', 'Lightweight & Casual Jackets'),
(260, 84, 'en', 'Jeans Denim Jackets'),
(261, 83, 'en', 'Sweater & Vest'),
(262, 75, 'en', 'Jeans'),
(263, 78, 'en', 'Shorts'),
(264, 77, 'en', 'Wear to Work'),
(265, 76, 'en', 'Casual - Khaki'),
(266, 79, 'en', 'T-Shirts & Tanks'),
(267, 80, 'en', 'Polos'),
(268, 32, 'en', 'Tanks & Tops T-Shirts'),
(269, 143, 'en', 'Suitcases'),
(270, 140, 'en', 'Travel Bags'),
(271, 142, 'en', 'Backpacks'),
(272, 141, 'en', 'Multipurpose Bags');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', 0.0426, '2021-04-26 13:13:02', '2021-04-28 06:37:27'),
(2, 'EUR', 1.0000, '2021-04-26 22:23:26', '2021-04-26 22:23:26'),
(3, 'VND', 1000.0000, '2021-04-26 22:24:36', '2021-04-28 06:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `default_addresses`
--

CREATE TABLE `default_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(9, 1, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2021-04-28 06:36:15', '2021-04-28 06:36:15'),
(10, 2, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2021-04-28 06:36:15', '2021-04-28 06:36:15'),
(11, 3, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2021-04-28 06:36:15', '2021-04-28 06:36:15'),
(12, 4, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2021-04-28 06:36:15', '2021-04-28 06:36:15'),
(13, 5, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2021-04-28 13:17:47', '2021-04-28 13:17:47'),
(14, 7, 'Modules\\Product\\Entities\\Product', 2, 'additional_images', '2021-04-28 13:17:47', '2021-04-28 13:17:47'),
(15, 6, 'Modules\\Product\\Entities\\Product', 2, 'additional_images', '2021-04-28 13:17:47', '2021-04-28 13:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, '1.jpg', 'public_storage', 'media/eubEd2A5If2ccYisJ8rjYfpS9ZzqfJQ3EIUCexau.jpg', 'jpg', 'image/jpeg', '107129', '2021-04-28 06:33:12', '2021-04-28 06:33:12'),
(2, 1, '2.jpg', 'public_storage', 'media/Hmmr4iv2lyV7fdgchE4jyQcOLoyLUVV63QqeychT.jpg', 'jpg', 'image/jpeg', '117612', '2021-04-28 06:33:22', '2021-04-28 06:33:22'),
(3, 1, '3.jpg', 'public_storage', 'media/9K1EhFUn1PH7Mtk6i9QVWwZmZYXe5KdPA7TlQHyn.jpg', 'jpg', 'image/jpeg', '89266', '2021-04-28 06:33:30', '2021-04-28 06:33:30'),
(4, 1, '4.jpg', 'public_storage', 'media/EflekjiYVki4Ep1WjIXXFvSJSg0o308Vg73Oruqe.jpg', 'jpg', 'image/jpeg', '116627', '2021-04-28 06:33:34', '2021-04-28 06:33:34'),
(5, 1, '1 (1).jpg', 'public_storage', 'media/u6o1UbUt5zAmwa09A5E2R05l0LfwkoU3Tt2j6ett.jpg', 'jpg', 'image/jpeg', '47338', '2021-04-28 13:12:36', '2021-04-28 13:12:36'),
(6, 1, '2 (1).jpg', 'public_storage', 'media/6Eq1vZ0HMexTIMANvZN41V1hYhfQV4epLDDhFWni.jpg', 'jpg', 'image/jpeg', '7083', '2021-04-28 13:12:47', '2021-04-28 13:12:47'),
(7, 1, '3 (1).jpg', 'public_storage', 'media/jgImXkbkSqxA4o2091IuwqWwBLNMDfBtO7lA0L7g.jpg', 'jpg', 'image/jpeg', '21786', '2021-04-28 13:12:53', '2021-04-28 13:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-27 19:14:08', '2021-04-27 19:14:08'),
(2, 1, '2021-04-27 19:14:53', '2021-04-27 19:14:53'),
(3, 1, '2021-04-28 04:44:24', '2021-04-28 04:44:24'),
(4, 1, '2021-04-28 04:44:44', '2021-04-28 04:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-04-27 19:14:08', '2021-04-27 19:14:08'),
(2, 2, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-04-27 19:14:53', '2021-04-27 19:14:53'),
(3, 1, 1, 1, NULL, 'url', 'https://sithimy.com/vi/categories/nuoc-hoa/products', NULL, '_blank', 2, 0, 0, 1, '2021-04-27 22:29:36', '2021-04-28 04:23:50'),
(4, 2, 2, 1, NULL, 'category', NULL, 'lar la-clock', '_self', 0, 0, 1, 1, '2021-04-27 22:31:59', '2021-04-28 06:13:48'),
(5, 2, 2, 10, NULL, 'category', NULL, 'las la-shoe-prints', '_self', 1, 0, 1, 1, '2021-04-27 22:33:24', '2021-04-28 06:14:35'),
(7, 2, 2, 15, NULL, 'category', NULL, 'las la-tshirt', '_self', 2, 0, 1, 1, '2021-04-27 22:35:06', '2021-04-28 06:12:38'),
(8, 2, 2, 16, NULL, 'category', NULL, 'las la-tshirt', '_self', 3, 0, 1, 1, '2021-04-27 22:35:25', '2021-04-28 06:12:43'),
(9, 2, 2, 17, NULL, 'category', NULL, 'las la-microchip', '_self', 4, 0, 1, 1, '2021-04-27 22:36:04', '2021-04-28 06:16:20'),
(10, 2, 2, 18, NULL, 'category', NULL, 'las la-suitcase-rolling', '_self', 5, 0, 1, 1, '2021-04-27 22:36:20', '2021-04-28 06:15:13'),
(13, 2, 2, 44, NULL, 'category', NULL, NULL, '_self', NULL, 0, 1, 1, '2021-04-27 22:37:55', '2021-04-27 22:37:55'),
(14, 2, 2, 46, NULL, 'category', NULL, NULL, '_self', NULL, 0, 1, 1, '2021-04-27 22:38:25', '2021-04-27 22:38:25'),
(15, 2, 2, 45, NULL, 'category', NULL, NULL, '_self', NULL, 0, 1, 1, '2021-04-27 22:39:00', '2021-04-27 22:39:00'),
(18, 1, 1, NULL, NULL, 'url', 'https://sieuthihangmy.com.vn/vi/mua-hang-ho.html', NULL, '_blank', 3, 0, 0, 1, '2021-04-28 04:18:51', '2021-04-28 04:26:06'),
(19, 1, 1, NULL, NULL, 'url', '/products', NULL, '_blank', 0, 0, 0, 1, '2021-04-28 04:22:40', '2021-04-28 05:13:54'),
(20, 1, 1, NULL, NULL, 'url', '/brands', NULL, '_blank', 1, 0, 0, 1, '2021-04-28 04:23:42', '2021-04-28 05:14:12'),
(21, 1, 1, NULL, NULL, 'url', 'http://andreyes.com/', NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 04:33:51', '2021-04-28 04:33:51'),
(22, 3, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-04-28 04:44:24', '2021-04-28 04:44:24'),
(23, 4, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2021-04-28 04:44:44', '2021-04-28 04:44:44'),
(24, 3, 22, NULL, 1, 'page', NULL, NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 04:47:37', '2021-04-28 04:47:37'),
(25, 4, 23, NULL, NULL, 'url', '/categories/hot-sale/products', NULL, '_self', NULL, 0, 0, 1, '2021-04-28 04:55:06', '2021-04-28 04:55:06'),
(26, 4, 23, NULL, NULL, 'url', '/brands/samsung/products', NULL, '_self', NULL, 0, 0, 1, '2021-04-28 04:55:50', '2021-04-28 04:55:50'),
(27, 4, 23, NULL, NULL, 'url', '/brands/msi/products', NULL, '_self', NULL, 0, 0, 1, '2021-04-28 04:56:17', '2021-04-28 04:56:17'),
(28, 4, 23, NULL, NULL, 'url', '/categories/backpacks/products', NULL, '_self', NULL, 0, 0, 1, '2021-04-28 04:56:37', '2021-04-28 04:56:37'),
(29, 4, 23, NULL, NULL, 'url', '/categories/mens-fashion/products', NULL, '_self', NULL, 0, 0, 1, '2021-04-28 04:57:01', '2021-04-28 04:57:01'),
(30, 3, 22, NULL, 2, 'page', NULL, NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 05:01:18', '2021-04-28 05:01:18'),
(31, 3, 22, NULL, 3, 'page', NULL, NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 05:02:47', '2021-04-28 05:02:47'),
(32, 3, 22, NULL, 4, 'page', NULL, NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 05:04:00', '2021-04-28 05:04:00'),
(33, 3, 22, NULL, 5, 'page', NULL, NULL, '_blank', NULL, 0, 0, 1, '2021-04-28 05:04:51', '2021-04-28 05:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 1, 'vi', 'root'),
(3, 2, 'en', 'root'),
(4, 2, 'vi', 'root'),
(5, 3, 'vi', 'Tra Cứu Đơn'),
(6, 4, 'vi', 'Đồng Hồ'),
(7, 5, 'vi', 'Giày Dép'),
(9, 7, 'vi', 'Thời Trang Nam'),
(10, 8, 'vi', 'Thời Trang Nữ'),
(11, 9, 'vi', 'Phụ Kiện'),
(12, 10, 'vi', 'Túi Xách'),
(15, 13, 'vi', 'Vận Động - Thể Thao'),
(16, 14, 'vi', 'Chăm Sóc - Làm Đẹp'),
(17, 15, 'vi', 'Dụng Cụ Gia Đình'),
(20, 4, 'en', 'Watches'),
(21, 5, 'en', 'Shoes'),
(22, 7, 'en', 'Men\'s Clothing'),
(23, 8, 'en', 'Women\'s Clothing'),
(24, 9, 'en', 'Accessories'),
(25, 10, 'en', 'Handbags & Shoulder Bags'),
(29, 13, 'en', 'Sports - Outdoors'),
(30, 14, 'en', 'Beauty & Personal Care'),
(31, 15, 'en', 'Home & Tools'),
(32, 18, 'vi', 'Mua Hàng Hộ'),
(33, 19, 'vi', 'Shopping'),
(34, 20, 'vi', 'Top Thương Hiệu'),
(35, 20, 'en', 'Top Brands'),
(36, 3, 'en', 'Track Order'),
(37, 21, 'vi', 'Mua Tại Mỹ'),
(38, 21, 'en', 'Shop In The USA'),
(39, 18, 'en', 'Order Services'),
(40, 22, 'en', 'root'),
(41, 22, 'vi', 'root'),
(42, 23, 'en', 'root'),
(43, 23, 'vi', 'root'),
(44, 24, 'vi', 'Về Chúng Tôi'),
(45, 24, 'en', 'About Us'),
(46, 25, 'en', 'New Arrivals'),
(47, 26, 'en', 'Specials'),
(48, 27, 'en', 'Hot Deals'),
(49, 28, 'en', 'Backpacks'),
(50, 29, 'en', 'Men\'s Fashion'),
(51, 25, 'vi', 'New Arrivals'),
(52, 26, 'vi', 'Specials'),
(53, 27, 'vi', 'Hot Deals'),
(54, 28, 'vi', 'Backpacks'),
(55, 29, 'vi', 'Men\'s Fashion'),
(56, 30, 'vi', 'Chính Sách Đổi Trả'),
(57, 30, 'en', 'Return Policy'),
(58, 31, 'vi', 'Câu Hỏi Thường Gặp'),
(59, 31, 'en', 'FAQs'),
(60, 32, 'vi', 'Bảo Mật Thông Tin'),
(61, 32, 'en', 'Privacy & Policy'),
(62, 33, 'vi', 'Điều Khoản & Chính Sách'),
(63, 33, 'en', 'Terms Of Use');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'vi', 'Menu ngang'),
(2, 2, 'vi', 'Menu Ngành Hàng'),
(3, 2, 'en', 'Primary Menu'),
(4, 3, 'vi', 'Footer Menu 1'),
(5, 4, 'vi', 'Footer Menu 2'),
(6, 4, 'en', 'Footer Menu 2');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Page\\Entities\\Page', 1, '2021-04-28 04:45:54', '2021-04-28 04:45:54'),
(2, 'Modules\\Page\\Entities\\Page', 2, '2021-04-28 04:49:31', '2021-04-28 04:49:31'),
(3, 'Modules\\Page\\Entities\\Page', 3, '2021-04-28 04:49:49', '2021-04-28 04:49:49'),
(4, 'Modules\\Page\\Entities\\Page', 4, '2021-04-28 04:49:59', '2021-04-28 04:49:59'),
(5, 'Modules\\Page\\Entities\\Page', 5, '2021-04-28 04:50:09', '2021-04-28 04:50:09'),
(6, 'Modules\\Brand\\Entities\\Brand', 1, '2021-04-28 06:30:05', '2021-04-28 06:30:05'),
(7, 'Modules\\Product\\Entities\\Product', 1, '2021-04-28 06:33:54', '2021-04-28 06:33:54'),
(8, 'Modules\\Brand\\Entities\\Brand', 2, '2021-04-28 09:39:49', '2021-04-28 09:39:49'),
(9, 'Modules\\Brand\\Entities\\Brand', 3, '2021-04-28 09:39:56', '2021-04-28 09:39:56'),
(10, 'Modules\\Brand\\Entities\\Brand', 4, '2021-04-28 09:40:14', '2021-04-28 09:40:14'),
(11, 'Modules\\Brand\\Entities\\Brand', 5, '2021-04-28 09:40:30', '2021-04-28 09:40:30'),
(12, 'Modules\\Brand\\Entities\\Brand', 6, '2021-04-28 09:40:44', '2021-04-28 09:40:44'),
(13, 'Modules\\Brand\\Entities\\Brand', 7, '2021-04-28 09:40:52', '2021-04-28 09:40:52'),
(14, 'Modules\\Brand\\Entities\\Brand', 8, '2021-04-28 09:41:22', '2021-04-28 09:41:22'),
(15, 'Modules\\Brand\\Entities\\Brand', 9, '2021-04-28 09:41:37', '2021-04-28 09:41:37'),
(16, 'Modules\\Brand\\Entities\\Brand', 10, '2021-04-28 09:41:58', '2021-04-28 09:41:58'),
(17, 'Modules\\Product\\Entities\\Product', 2, '2021-04-28 13:17:27', '2021-04-28 13:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'vi', NULL, NULL),
(2, 1, 'en', NULL, NULL),
(3, 2, 'vi', NULL, NULL),
(4, 3, 'vi', NULL, NULL),
(5, 4, 'vi', NULL, NULL),
(6, 5, 'vi', NULL, NULL),
(7, 6, 'vi', NULL, NULL),
(8, 7, 'vi', NULL, 'Giày Nam Clarks Modifiel boot'),
(9, 8, 'en', NULL, NULL),
(10, 9, 'en', NULL, NULL),
(11, 10, 'en', NULL, NULL),
(12, 11, 'en', NULL, NULL),
(13, 12, 'en', NULL, NULL),
(14, 13, 'en', NULL, NULL),
(15, 14, 'en', NULL, NULL),
(16, 15, 'en', NULL, NULL),
(17, 16, 'en', NULL, NULL),
(18, 8, 'vi', NULL, NULL),
(19, 9, 'vi', NULL, NULL),
(20, 10, 'vi', NULL, NULL),
(21, 11, 'vi', NULL, NULL),
(22, 12, 'vi', NULL, NULL),
(23, 13, 'vi', NULL, NULL),
(24, 14, 'vi', NULL, NULL),
(25, 15, 'vi', NULL, NULL),
(26, 16, 'vi', NULL, NULL),
(27, 17, 'vi', NULL, NULL);

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
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1),
(83, '2020_10_07_175000_create_addresses_table', 1),
(84, '2020_10_07_175004_create_default_addresses_table', 1),
(85, '2020_11_21_163822_add_downloads_columns_to_products_table', 1),
(86, '2021_01_08_203241_change_shipping_method_column_in_orders_table', 1),
(87, '2021_01_09_172744_add_phone_column_to_users_table', 1),
(88, '2021_01_11_170516_create_order_downloads_table', 1),
(89, '2021_02_22_201252_modify_virtual_in_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_downloads`
--

CREATE TABLE `order_downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 've-chung-toi', 1, '2021-04-28 04:45:54', '2021-04-28 04:45:54'),
(2, 'return-policy', 1, '2021-04-28 04:49:31', '2021-04-28 04:49:31'),
(3, 'faq', 1, '2021-04-28 04:49:49', '2021-04-28 04:49:49'),
(4, 'privacy-policy', 1, '2021-04-28 04:49:59', '2021-04-28 04:49:59'),
(5, 'terms-of-use', 1, '2021-04-28 04:50:09', '2021-04-28 04:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'vi', 'Về Chúng Tôi', '<p>Test</p>'),
(2, 1, 'en', 'About Us', '<p>Test</p>'),
(3, 2, 'vi', 'Return Policy', '<p><a href=\"https://fleetcart.envaysoft.com/en/return-policy\" target=\"_self\">Return Policy</a></p>'),
(4, 3, 'vi', 'FAQ', '<p><a href=\"https://fleetcart.envaysoft.com/en/faq\" target=\"_self\">FAQ</a></p>'),
(5, 4, 'vi', 'Privacy & Policy', '<p><a href=\"https://fleetcart.envaysoft.com/en/privacy-policy\" target=\"_self\">Privacy &amp; Policy</a></p>'),
(6, 5, 'vi', 'Terms Of Use', '<p><a href=\"https://fleetcart.envaysoft.com/en/terms-conditions\" target=\"_self\">Terms Of Use</a></p>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'MXmUTdKtJ4RPkRAuP4tBBQ8VKa1zkPLd', '2021-04-26 19:15:04', '2021-04-26 19:15:04'),
(2, 1, '9qlqFA3Ye5mugpwZYmvFLRTl714uJwXI', '2021-04-26 20:49:40', '2021-04-26 20:49:40'),
(3, 1, '4jSEDC4sXCrxo4hgX8HGpIylr3NjhwLe', '2021-04-27 04:10:56', '2021-04-27 04:10:56'),
(4, 2, 'VvwLxuycmuELTFQgr3bZzf3bG2nldY59', '2021-04-27 08:13:17', '2021-04-27 08:13:17'),
(11, 1, 'gX0x3nElj1d56spagSv3a1n4IV8iMxcR', '2021-04-27 16:11:09', '2021-04-27 16:11:09'),
(12, 1, 'CGgIWSzwCjpYOumNZWa9AWzIjVwDIwcB', '2021-04-27 22:25:44', '2021-04-27 22:25:44'),
(13, 1, 'S6sa9VMeIBSSMCysKafzdujHqY8yb67T', '2021-04-28 04:06:44', '2021-04-28 04:06:44'),
(14, 1, '5IHvKuJHfufYq2NJ7PjQ1wehBAiAzcbW', '2021-04-28 09:39:13', '2021-04-28 09:39:13'),
(15, 2, 'cPclPNsqZ6WcFDuSkXoqT6bXFjrnynrG', '2021-04-28 13:54:41', '2021-04-28 13:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`, `virtual`) VALUES
(1, 1, NULL, 'giay-nam-clarks-modifiel-boot', 2850.0000, 2350.0000, 'fixed', NULL, NULL, 2350.0000, NULL, 1, 1, 1, 14, 1, NULL, NULL, NULL, '2021-04-28 06:33:54', '2021-04-28 13:20:21', 0),
(2, 3, NULL, 'dong-ho-nam-citizen-eco-drive-bm7170-53l-titanium', 8500.0000, 7622.0000, 'fixed', NULL, NULL, 7622.0000, NULL, 1, 1, 1, 3, 1, NULL, NULL, NULL, '2021-04-28 13:17:27', '2021-04-28 13:24:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`) VALUES
(4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`product_attribute_id`, `attribute_value_id`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(2, 2),
(2, 5),
(1, 114);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tag_id`) VALUES
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'vi', 'Giày Nam Clarks Modifiel boot', '<p>Gi&agrave;y Nam Clarks Modifiel boot</p>', NULL),
(2, 2, 'vi', 'Đồng hồ nam Citizen Eco-Drive BM7170-53L Titanium', '<p>Đồng hồ nam Citizen BM7170-53L<br />Mới Full box - nhập khẩu từ Mỹ<br />Bảo h&agrave;nh 36 th&aacute;ng<br />Giao h&agrave;ng miễn ph&iacute; to&agrave;n quốc</p>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `product_id`, `rating`, `reviewer_name`, `comment`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 'Test review', 'Test review', 1, '2021-04-28 07:04:16', '2021-04-28 07:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.reports.index\":true,\"admin.reviews.index\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.settings.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.transactions.index\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.storefront.edit\":true}', '2021-04-26 13:13:01', '2021-04-27 09:49:00'),
(2, '{\"admin.settings.edit\":false}', '2021-04-26 13:13:01', '2021-04-27 09:43:44'),
(3, '{\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.categories.index\":false,\"admin.categories.create\":false,\"admin.categories.edit\":false,\"admin.categories.destroy\":false,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.reports.index\":true,\"admin.reviews.index\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.settings.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.transactions.index\":true,\"admin.translations.index\":false,\"admin.translations.edit\":false,\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.storefront.edit\":true}', '2021-04-26 21:33:07', '2021-04-27 16:10:30'),
(4, '{\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.categories.index\":false,\"admin.categories.create\":false,\"admin.categories.edit\":false,\"admin.categories.destroy\":false,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.importer.index\":true,\"admin.importer.create\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.reports.index\":true,\"admin.reviews.index\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.settings.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.transactions.index\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.storefront.edit\":false}', '2021-04-26 21:33:33', '2021-04-27 16:12:13'),
(5, '{\"admin.settings.edit\":false}', '2021-04-26 21:33:44', '2021-04-27 09:42:48'),
(6, '{\"admin.settings.edit\":false}', '2021-04-26 21:33:58', '2021-04-27 09:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer'),
(3, 3, 'en', 'Developer'),
(4, 4, 'en', 'Accountant'),
(5, 5, 'en', 'Customer Services'),
(6, 6, 'en', 'Content'),
(7, 6, 'vi', 'Content'),
(8, 5, 'vi', 'Customer Services'),
(9, 4, 'vi', 'Accountant'),
(10, 3, 'vi', 'Developer'),
(11, 1, 'vi', 'Admin'),
(12, 2, 'vi', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT '0',
  `plain_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(2, 'store_email', 0, 's:17:\"admin@sithimy.com\";', '2021-04-26 13:13:01', '2021-04-27 08:33:12'),
(3, 'store_phone', 0, 's:13:\"028 6681 5035\";', '2021-04-26 13:13:01', '2021-04-27 08:33:12'),
(4, 'search_engine', 0, 's:5:\"mysql\";', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(5, 'algolia_app_id', 0, 'N;', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(6, 'algolia_secret', 0, 'N;', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(7, 'active_theme', 0, 's:10:\"Storefront\";', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(8, 'supported_countries', 0, 'a:1:{i:0;s:2:\"VN\";}', '2021-04-26 13:13:01', '2021-04-27 08:36:16'),
(9, 'default_country', 0, 's:2:\"VN\";', '2021-04-26 13:13:01', '2021-04-27 08:36:16'),
(10, 'supported_locales', 0, 'a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}', '2021-04-26 13:13:01', '2021-04-27 08:32:25'),
(11, 'default_locale', 0, 's:2:\"vi\";', '2021-04-26 13:13:01', '2021-04-27 08:36:16'),
(12, 'default_timezone', 0, 's:16:\"Asia/Ho_Chi_Minh\";', '2021-04-26 13:13:01', '2021-04-27 08:36:16'),
(13, 'customer_role', 0, 's:1:\"6\";', '2021-04-26 13:13:01', '2021-04-27 09:36:41'),
(14, 'reviews_enabled', 0, 's:1:\"1\";', '2021-04-26 13:13:01', '2021-04-26 20:51:09'),
(15, 'auto_approve_reviews', 0, 's:1:\"1\";', '2021-04-26 13:13:01', '2021-04-26 20:51:09'),
(16, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2021-04-26 13:13:01', '2021-04-26 20:51:09'),
(17, 'supported_currencies', 0, 'a:2:{i:0;s:3:\"USD\";i:1;s:3:\"VND\";}', '2021-04-26 13:13:01', '2021-04-27 09:39:48'),
(18, 'default_currency', 0, 's:3:\"VND\";', '2021-04-26 13:13:01', '2021-04-27 09:38:10'),
(19, 'send_order_invoice_email', 0, 'b:0;', '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(20, 'newsletter_enabled', 0, 's:1:\"0\";', '2021-04-26 13:13:01', '2021-04-26 20:51:09'),
(21, 'local_pickup_cost', 0, 's:2:\"25\";', '2021-04-26 13:13:01', '2021-04-28 06:41:24'),
(22, 'flat_rate_cost', 0, 's:2:\"50\";', '2021-04-26 13:13:01', '2021-04-28 06:41:34'),
(23, 'free_shipping_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(24, 'local_pickup_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(25, 'flat_rate_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(26, 'paypal_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(27, 'paypal_description', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(28, 'stripe_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(29, 'stripe_description', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(30, 'paytm_label', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(31, 'paytm_description', 1, NULL, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(32, 'razorpay_label', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(33, 'razorpay_description', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(34, 'instamojo_label', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(35, 'instamojo_description', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(36, 'cod_label', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(37, 'cod_description', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(38, 'bank_transfer_label', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(39, 'bank_transfer_description', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(40, 'check_payment_label', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(41, 'check_payment_description', 1, NULL, '2021-04-26 13:13:02', '2021-04-26 13:13:02'),
(42, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2021-04-26 13:13:02', '2021-04-27 10:10:26'),
(43, 'maintenance_mode', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(44, 'store_tagline', 1, NULL, '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(45, 'bank_transfer_instructions', 1, NULL, '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(46, 'check_payment_instructions', 1, NULL, '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(47, 'store_address_1', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(48, 'store_address_2', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(49, 'store_city', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(50, 'store_country', 0, 's:2:\"VN\";', '2021-04-26 20:51:09', '2021-04-27 08:33:12'),
(51, 'store_state', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(52, 'store_zip', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(53, 'store_phone_hide', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(54, 'store_email_hide', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(55, 'currency_rate_exchange_service', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(56, 'fixer_access_key', 0, 's:12:\"e$*CH?*FT+3[\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(57, 'forge_api_key', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(58, 'currency_data_feed_api_key', 0, 's:12:\"e$*CH?*FT+3[\";', '2021-04-26 20:51:09', '2021-04-27 09:56:05'),
(59, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(60, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(61, 'sms_from', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(62, 'sms_service', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(63, 'vonage_key', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(64, 'vonage_secret', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(65, 'twilio_sid', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(66, 'twilio_token', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(67, 'welcome_sms', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(68, 'new_order_admin_sms', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(69, 'new_order_sms', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(70, 'mail_from_address', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(71, 'mail_from_name', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(72, 'mail_host', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(73, 'mail_port', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(74, 'mail_username', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(75, 'mail_password', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(76, 'mail_encryption', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(77, 'welcome_email', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(78, 'admin_order_email', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(79, 'invoice_email', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(80, 'mailchimp_api_key', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(81, 'mailchimp_list_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(82, 'custom_header_assets', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(83, 'custom_footer_assets', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(84, 'facebook_login_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(85, 'facebook_login_app_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(86, 'facebook_login_app_secret', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(87, 'google_login_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(88, 'google_login_client_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(89, 'google_login_client_secret', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(90, 'free_shipping_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 08:31:13'),
(91, 'free_shipping_min_amount', 0, 's:4:\"1000\";', '2021-04-26 20:51:09', '2021-04-28 06:40:16'),
(92, 'local_pickup_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 08:31:56'),
(93, 'flat_rate_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 08:32:15'),
(94, 'paypal_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(95, 'paypal_test_mode', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(96, 'paypal_client_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(97, 'paypal_secret', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(98, 'stripe_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 04:50:48'),
(99, 'stripe_publishable_key', 0, 's:107:\"pk_test_51IQkqzLAJPMnGpGo1JtfaJamh7nEDY6vXp94Ov4lY1CYjJ59pvRSv4qwQbrPnDFN0Xao4qyO72vHv6wsOt1hSPis00uy4y5WIv\";', '2021-04-26 20:51:09', '2021-04-27 04:50:48'),
(100, 'stripe_secret_key', 0, 's:107:\"sk_test_51IQkqzLAJPMnGpGov5bRjc9Tzh2f5YJw5FSGJaq3jhjODQYoKqnLwIUWtxNwTJ3ESlyPxgQxC43Meh5Ge5kh70rL009zwBeO41\";', '2021-04-26 20:51:09', '2021-04-27 04:50:48'),
(101, 'paytm_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(102, 'paytm_test_mode', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(103, 'paytm_merchant_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(104, 'paytm_merchant_key', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(105, 'razorpay_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(106, 'razorpay_key_id', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(107, 'razorpay_key_secret', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(108, 'instamojo_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(109, 'instamojo_test_mode', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(110, 'instamojo_api_key', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(111, 'instamojo_auth_token', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(112, 'cod_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 04:51:45'),
(113, 'bank_transfer_enabled', 0, 's:1:\"1\";', '2021-04-26 20:51:09', '2021-04-27 04:51:29'),
(114, 'check_payment_enabled', 0, 's:1:\"0\";', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(115, 'sms_order_statuses', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(116, 'email_order_statuses', 0, 'N;', '2021-04-26 20:51:09', '2021-04-26 20:51:09'),
(117, 'storefront_welcome_text', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(118, 'storefront_address', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(119, 'storefront_navbar_text', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(120, 'storefront_footer_menu_one_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(121, 'storefront_footer_menu_two_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(122, 'storefront_feature_1_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(123, 'storefront_feature_1_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(124, 'storefront_feature_2_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(125, 'storefront_feature_2_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(126, 'storefront_feature_3_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(127, 'storefront_feature_3_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(128, 'storefront_feature_4_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(129, 'storefront_feature_4_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(130, 'storefront_feature_5_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(131, 'storefront_feature_5_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(132, 'storefront_product_page_banner_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(133, 'storefront_slider_banner_1_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(134, 'storefront_slider_banner_2_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(135, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(136, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(137, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(138, 'storefront_featured_categories_section_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(139, 'storefront_featured_categories_section_subtitle', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(140, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(141, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(142, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(143, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(144, 'storefront_two_column_banners_1_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(145, 'storefront_two_column_banners_2_file_id', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(146, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2021-04-27 10:10:26', '2021-04-27 10:10:26'),
(147, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(148, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(149, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(150, 'storefront_three_column_banners_1_file_id', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(151, 'storefront_three_column_banners_2_file_id', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(152, 'storefront_three_column_banners_3_file_id', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(153, 'storefront_product_tabs_2_section_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(154, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(155, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(156, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(157, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(158, 'storefront_one_column_banner_file_id', 1, NULL, '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(159, 'storefront_theme_color', 0, 's:4:\"blue\";', '2021-04-27 10:10:27', '2021-04-27 17:16:18'),
(160, 'storefront_custom_theme_color', 0, 's:7:\"#000000\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(161, 'storefront_mail_theme_color', 0, 's:4:\"blue\";', '2021-04-27 10:10:27', '2021-04-27 17:16:18'),
(162, 'storefront_custom_mail_theme_color', 0, 's:7:\"#000000\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(163, 'storefront_slider', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(164, 'storefront_terms_page', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(165, 'storefront_privacy_page', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(166, 'storefront_primary_menu', 0, 's:1:\"1\";', '2021-04-27 10:10:27', '2021-04-28 04:08:55'),
(167, 'storefront_category_menu', 0, 's:1:\"2\";', '2021-04-27 10:10:27', '2021-04-27 22:42:08'),
(168, 'storefront_footer_menu_one', 0, 's:1:\"3\";', '2021-04-27 10:10:27', '2021-04-28 04:48:27'),
(169, 'storefront_footer_menu_two', 0, 's:1:\"4\";', '2021-04-27 10:10:27', '2021-04-28 04:48:27'),
(170, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(171, 'storefront_feature_1_icon', 0, 's:18:\"las la-credit-card\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(172, 'storefront_feature_2_icon', 0, 's:17:\"las la-shield-alt\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(173, 'storefront_feature_3_icon', 0, 's:12:\"las la-truck\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(174, 'storefront_feature_4_icon', 0, 's:21:\"las la-calendar-minus\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(175, 'storefront_feature_5_icon', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(176, 'storefront_product_page_banner_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(177, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(178, 'storefront_facebook_link', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(179, 'storefront_twitter_link', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(180, 'storefront_instagram_link', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(181, 'storefront_youtube_link', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(182, 'storefront_slider_banner_1_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(183, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(184, 'storefront_slider_banner_2_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(185, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(186, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(187, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(188, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(189, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(190, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(191, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(192, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(193, 'storefront_featured_categories_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(194, 'storefront_featured_categories_section_category_1_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(195, 'storefront_featured_categories_section_category_1_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(196, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(197, 'storefront_featured_categories_section_category_2_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(198, 'storefront_featured_categories_section_category_2_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(199, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(200, 'storefront_featured_categories_section_category_3_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(201, 'storefront_featured_categories_section_category_3_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(202, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(203, 'storefront_featured_categories_section_category_4_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(204, 'storefront_featured_categories_section_category_4_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(205, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(206, 'storefront_featured_categories_section_category_5_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(207, 'storefront_featured_categories_section_category_5_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(208, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(209, 'storefront_featured_categories_section_category_6_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(210, 'storefront_featured_categories_section_category_6_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(211, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(212, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(213, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(214, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(215, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(216, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(217, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(218, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(219, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(220, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(221, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(222, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(223, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(224, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(225, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(226, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(227, 'storefront_flash_sale_title', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(228, 'storefront_active_flash_sale_campaign', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(229, 'storefront_vertical_products_1_title', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(230, 'storefront_vertical_products_1_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(231, 'storefront_vertical_products_1_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(232, 'storefront_vertical_products_1_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(233, 'storefront_vertical_products_2_title', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(234, 'storefront_vertical_products_2_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(235, 'storefront_vertical_products_2_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(236, 'storefront_vertical_products_2_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(237, 'storefront_vertical_products_3_title', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(238, 'storefront_vertical_products_3_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(239, 'storefront_vertical_products_3_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(240, 'storefront_vertical_products_3_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(241, 'storefront_two_column_banners_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(242, 'storefront_two_column_banners_1_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(243, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(244, 'storefront_two_column_banners_2_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(245, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(246, 'storefront_product_grid_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(247, 'storefront_product_grid_section_tab_1_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(248, 'storefront_product_grid_section_tab_1_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(249, 'storefront_product_grid_section_tab_1_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(250, 'storefront_product_grid_section_tab_2_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(251, 'storefront_product_grid_section_tab_2_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(252, 'storefront_product_grid_section_tab_2_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(253, 'storefront_product_grid_section_tab_3_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(254, 'storefront_product_grid_section_tab_3_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(255, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(256, 'storefront_product_grid_section_tab_4_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(257, 'storefront_product_grid_section_tab_4_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(258, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(259, 'storefront_three_column_banners_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(260, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(261, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(262, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(263, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(264, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(265, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(266, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(267, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(268, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(269, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(270, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(271, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(272, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(273, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(274, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(275, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(276, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(277, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(278, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(279, 'storefront_one_column_banner_enabled', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(280, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(281, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(282, 'storefront_footer_tags', 0, 'a:7:{i:0;s:1:\"3\";i:1;s:1:\"7\";i:2;s:1:\"6\";i:3;s:1:\"1\";i:4;s:1:\"8\";i:5;s:1:\"5\";i:6;s:1:\"4\";}', '2021-04-27 10:10:27', '2021-04-28 09:52:21'),
(283, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(284, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(285, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(286, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(287, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(288, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(289, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(290, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(291, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(292, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(293, 'storefront_top_brands', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(294, 'storefront_vertical_products_1_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(295, 'storefront_vertical_products_2_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(296, 'storefront_vertical_products_3_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(297, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(298, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(299, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(300, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(301, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(302, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(303, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27'),
(304, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2021-04-27 10:10:27', '2021-04-27 10:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:11:\"Sithimy.com\";'),
(2, 23, 'en', 's:21:\"Ghtk.vn eligible free\";'),
(3, 24, 'en', 's:21:\"GHTK.vn only delivery\";'),
(4, 25, 'en', 's:31:\"Ghtk.vn delivery & look by look\";'),
(5, 26, 'en', 's:6:\"PayPal\";'),
(6, 27, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 28, 'en', 's:38:\"We Are Accept Credit Card & Debit Card\";'),
(8, 29, 'en', 's:26:\"Visa, Master, Amex, JCB...\";'),
(9, 30, 'en', 's:5:\"Paytm\";'),
(10, 31, 'en', 's:103:\"The best payment gateway provider in India for e-payment through credit card, debit card & net banking.\";'),
(11, 32, 'en', 's:8:\"Razorpay\";'),
(12, 33, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(13, 34, 'en', 's:9:\"Instamojo\";'),
(14, 35, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(15, 36, 'en', 's:18:\"Cash On Our Office\";'),
(16, 37, 'en', 's:18:\"Cash On Our Office\";'),
(17, 38, 'en', 's:13:\"Bank Transfer\";'),
(18, 39, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(19, 40, 'en', 's:19:\"Check / Money Order\";'),
(20, 41, 'en', 's:33:\"Please send a check to our store.\";'),
(21, 44, 'en', 'N;'),
(22, 45, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(23, 46, 'en', 'N;'),
(24, 1, 'vi', 's:11:\"Sithimy.com\";'),
(25, 44, 'vi', 'N;'),
(26, 23, 'vi', 's:33:\"Miễn phí không đồng kiểm\";'),
(27, 24, 'vi', 's:29:\"Ghtk.vn không đồng kiểm\";'),
(28, 25, 'vi', 's:26:\"Ghtk.vn có đồng kiểm\";'),
(29, 26, 'vi', 'N;'),
(30, 27, 'vi', 'N;'),
(31, 28, 'vi', 's:38:\"Chấp Nhận Credit Card & Debit Card\";'),
(32, 29, 'vi', 's:26:\"Visa, Master, Amex, JCB...\";'),
(33, 30, 'vi', 'N;'),
(34, 31, 'vi', 'N;'),
(35, 32, 'vi', 'N;'),
(36, 33, 'vi', 'N;'),
(37, 34, 'vi', 'N;'),
(38, 35, 'vi', 'N;'),
(39, 36, 'vi', 's:30:\"Tiền Mặt Tại Văn Phòng\";'),
(40, 37, 'vi', 's:30:\"Tiền Mặt Tại Văn Phòng\";'),
(41, 38, 'vi', 's:45:\"Chuyển Khoản Qua Tài Khoản Ngân Hàng\";'),
(42, 39, 'vi', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(43, 45, 'vi', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(44, 40, 'vi', 'N;'),
(45, 41, 'vi', 'N;'),
(46, 46, 'vi', 'N;'),
(47, 117, 'en', 's:41:\"Siêu Thị Mỹ - Hàng Hiệu Từ Mỹ\";'),
(48, 118, 'en', 's:40:\"Rosita Garden, Phú Hữu, Quận 9, HCM\";'),
(49, 119, 'en', 's:32:\"Free shipping over +1.000.000 đ\";'),
(50, 120, 'en', 's:12:\"Our Services\";'),
(51, 121, 'en', 's:11:\"Information\";'),
(52, 42, 'en', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(53, 122, 'en', 's:14:\"ACCEPT PAYMENT\";'),
(54, 123, 'en', 's:26:\"Visa, Master, Amex, JCB...\";'),
(55, 124, 'en', 's:15:\"SECURED PAYMENT\";'),
(56, 125, 'en', 's:12:\"100% secured\";'),
(57, 126, 'en', 's:13:\"FREE SHIPPING\";'),
(58, 127, 'en', 's:23:\"Order over 1.000.000 đ\";'),
(59, 128, 'en', 's:14:\"15 DAYS RETURN\";'),
(60, 129, 'en', 's:17:\"15 days guarantee\";'),
(61, 130, 'en', 's:19:\"BRAND NEW GUARANTEE\";'),
(62, 131, 'en', 's:17:\"Imported from USA\";'),
(63, 132, 'en', 'N;'),
(64, 133, 'en', 'N;'),
(65, 134, 'en', 'N;'),
(66, 135, 'en', 'N;'),
(67, 136, 'en', 'N;'),
(68, 137, 'en', 'N;'),
(69, 138, 'en', 'N;'),
(70, 139, 'en', 'N;'),
(71, 140, 'en', 'N;'),
(72, 141, 'en', 'N;'),
(73, 142, 'en', 'N;'),
(74, 143, 'en', 'N;'),
(75, 144, 'en', 'N;'),
(76, 145, 'en', 'N;'),
(77, 146, 'en', 'N;'),
(78, 147, 'en', 'N;'),
(79, 148, 'en', 'N;'),
(80, 149, 'en', 'N;'),
(81, 150, 'en', 'N;'),
(82, 151, 'en', 'N;'),
(83, 152, 'en', 'N;'),
(84, 153, 'en', 'N;'),
(85, 154, 'en', 'N;'),
(86, 155, 'en', 'N;'),
(87, 156, 'en', 'N;'),
(88, 157, 'en', 'N;'),
(89, 158, 'en', 'N;'),
(90, 117, 'vi', 's:41:\"Siêu Thị Mỹ - Hàng Hiệu Từ Mỹ\";'),
(91, 118, 'vi', 's:40:\"Rosita Garden, Phú Hữu, Quận 9, HCM\";'),
(92, 119, 'vi', 's:42:\"Miễn Phí Giao Hàng Với +1.000.000 đ\";'),
(93, 120, 'vi', 's:12:\"Our Services\";'),
(94, 121, 'vi', 's:11:\"Information\";'),
(95, 42, 'vi', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(96, 122, 'vi', 's:25:\"CHẤP NHẬN THANH TOÁN\";'),
(97, 123, 'vi', 's:26:\"Visa, Master, Amex, JCB...\";'),
(98, 124, 'vi', 's:20:\"THANH TOÁN AN TOÀN\";'),
(99, 125, 'vi', 's:16:\"100% Bảo mật\";'),
(100, 126, 'vi', 's:22:\"GIAO HÀNG MIỄN PHÍ\";'),
(101, 127, 'vi', 's:30:\"Đơn Hàng Trên 1.000.000 đ\";'),
(102, 128, 'vi', 's:27:\"15 NGÀY ĐỔI TRẢ HÀNG\";'),
(103, 129, 'vi', 's:32:\"Đổi trả bất chấp lý do\";'),
(104, 130, 'vi', 's:22:\"CAM KẾT CHÍNH HÃNG\";'),
(105, 131, 'vi', 's:23:\"Nhập khẩu từ Mỹ\";'),
(106, 132, 'vi', 'N;'),
(107, 133, 'vi', 'N;'),
(108, 134, 'vi', 'N;'),
(109, 135, 'vi', 'N;'),
(110, 136, 'vi', 'N;'),
(111, 137, 'vi', 'N;'),
(112, 138, 'vi', 'N;'),
(113, 139, 'vi', 'N;'),
(114, 140, 'vi', 'N;'),
(115, 141, 'vi', 'N;'),
(116, 142, 'vi', 'N;'),
(117, 143, 'vi', 'N;'),
(118, 144, 'vi', 'N;'),
(119, 145, 'vi', 'N;'),
(120, 146, 'vi', 'N;'),
(121, 147, 'vi', 'N;'),
(122, 148, 'vi', 'N;'),
(123, 149, 'vi', 'N;'),
(124, 150, 'vi', 'N;'),
(125, 151, 'vi', 'N;'),
(126, 152, 'vi', 'N;'),
(127, 153, 'vi', 'N;'),
(128, 154, 'vi', 'N;'),
(129, 155, 'vi', 'N;'),
(130, 156, 'vi', 'N;'),
(131, 157, 'vi', 'N;'),
(132, 158, 'vi', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT '0',
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'phu-kien', '2021-04-28 09:43:07', '2021-04-28 09:43:07'),
(3, 'giay-dep', '2021-04-28 09:43:25', '2021-04-28 09:43:25'),
(4, 'men', '2021-04-28 09:43:31', '2021-04-28 09:43:31'),
(5, 'women', '2021-04-28 09:43:36', '2021-04-28 09:43:36'),
(6, 'nuoc-hoa', '2021-04-28 09:43:45', '2021-04-28 09:43:45'),
(7, 'mat-kinh', '2021-04-28 09:43:52', '2021-04-28 09:43:52'),
(8, 'thuc-pham-ho-tro', '2021-04-28 09:44:05', '2021-04-28 09:44:05'),
(9, 'dong-ho', '2021-04-28 13:11:01', '2021-04-28 13:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Accessories'),
(3, 3, 'en', 'Shoes'),
(4, 4, 'en', 'Men'),
(5, 5, 'en', 'Women'),
(6, 6, 'en', 'Perfumes'),
(7, 7, 'en', 'Sunglasses & Eyewear'),
(8, 8, 'en', 'Vitamins & Supplements'),
(9, 8, 'vi', 'Thực Phẩm Hỗ Trợ'),
(10, 7, 'vi', 'Mắt Kính'),
(11, 6, 'vi', 'Nước Hoa'),
(12, 5, 'vi', 'Nữ'),
(13, 4, 'vi', 'Nam'),
(14, 3, 'vi', 'Giày Dép'),
(15, 1, 'vi', 'Phụ Kiện'),
(16, 9, 'vi', 'Đồng Hồ');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2021-04-26 20:49:35', '2021-04-26 20:49:35'),
(2, NULL, 'ip', '171.232.51.215', '2021-04-26 20:49:35', '2021-04-26 20:49:35'),
(3, NULL, 'global', NULL, '2021-04-28 13:54:31', '2021-04-28 13:54:31'),
(4, NULL, 'ip', '42.118.204.116', '2021-04-28 13:54:31', '2021-04-28 13:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'account::attributes.addresses.address_1', '2021-04-26 20:51:38', '2021-04-26 20:51:38'),
(2, 'account::attributes.addresses.city', '2021-04-26 20:51:43', '2021-04-26 20:51:43'),
(3, 'account::attributes.addresses.country', '2021-04-26 20:51:48', '2021-04-26 20:51:48'),
(4, 'account::attributes.addresses.first_name', '2021-04-26 20:51:52', '2021-04-26 20:51:52'),
(5, 'account::attributes.addresses.last_name', '2021-04-26 20:51:59', '2021-04-26 20:51:59'),
(6, 'account::attributes.addresses.state', '2021-04-26 20:52:07', '2021-04-26 20:52:07'),
(7, 'account::attributes.addresses.zip', '2021-04-26 20:52:12', '2021-04-26 20:52:12'),
(8, 'account::messages.address_deleted', '2021-04-26 20:52:19', '2021-04-26 20:52:19'),
(9, 'account::messages.address_saved', '2021-04-26 20:52:26', '2021-04-26 20:52:26'),
(10, 'account::messages.default_address_updated', '2021-04-26 20:52:36', '2021-04-26 20:52:36'),
(11, 'account::messages.profile_updated', '2021-04-26 20:52:44', '2021-04-26 20:52:44'),
(12, 'admin::admin.buttons.cancel', '2021-04-26 20:52:48', '2021-04-26 20:52:48'),
(13, 'admin::admin.buttons.delete', '2021-04-26 20:52:53', '2021-04-26 20:52:53'),
(14, 'admin::admin.buttons.save', '2021-04-26 20:52:57', '2021-04-26 20:52:57'),
(15, 'admin::admin.delete.confirmation', '2021-04-26 20:53:01', '2021-04-26 20:53:01'),
(16, 'admin::admin.delete.confirmation_message', '2021-04-26 20:53:05', '2021-04-26 20:53:05'),
(17, 'admin::admin.errors.404', '2021-04-26 20:53:10', '2021-04-26 20:53:10'),
(18, 'admin::admin.errors.404_description', '2021-04-26 20:53:14', '2021-04-26 20:53:14'),
(19, 'admin::admin.errors.404_title', '2021-04-26 20:53:19', '2021-04-26 20:53:19'),
(20, 'admin::admin.errors.500', '2021-04-26 20:53:23', '2021-04-26 20:53:23'),
(21, 'admin::admin.errors.500_description', '2021-04-26 20:53:52', '2021-04-26 20:53:52'),
(22, 'admin::admin.errors.500_title', '2021-04-26 20:53:55', '2021-04-26 20:53:55'),
(23, 'admin::admin.form.please_select', '2021-04-26 20:53:59', '2021-04-26 20:53:59'),
(24, 'admin::admin.pagination.next', '2021-04-26 20:54:03', '2021-04-26 20:54:03'),
(25, 'admin::admin.pagination.previous', '2021-04-26 20:54:08', '2021-04-26 20:54:08'),
(26, 'admin::admin.shortcuts.available_shortcuts', '2021-04-26 20:54:11', '2021-04-26 20:54:11'),
(27, 'admin::admin.shortcuts.back_to_index', '2021-04-26 20:54:15', '2021-04-26 20:54:15'),
(28, 'admin::admin.shortcuts.this_menu', '2021-04-26 20:54:18', '2021-04-26 20:54:18'),
(29, 'admin::admin.table.created', '2021-04-26 20:54:22', '2021-04-26 20:54:22'),
(30, 'admin::admin.table.date', '2021-04-26 20:54:26', '2021-04-26 20:54:26'),
(31, 'admin::admin.table.id', '2021-04-26 20:54:30', '2021-04-26 20:54:30'),
(32, 'admin::admin.table.status', '2021-04-26 20:54:34', '2021-04-26 20:54:34'),
(33, 'admin::admin.visit_store', '2021-04-26 20:54:38', '2021-04-26 20:54:38'),
(34, 'admin::dashboard.dashboard', '2021-04-26 20:54:42', '2021-04-26 20:54:42'),
(35, 'admin::dashboard.latest_orders', '2021-04-26 20:54:45', '2021-04-26 20:54:45'),
(36, 'admin::dashboard.latest_reviews', '2021-04-26 20:54:49', '2021-04-26 20:54:49'),
(37, 'admin::dashboard.latest_search_terms', '2021-04-26 20:54:52', '2021-04-26 20:54:52'),
(38, 'admin::dashboard.no_data', '2021-04-26 20:54:56', '2021-04-26 20:54:56'),
(39, 'admin::dashboard.sales_analytics.day_names.0', '2021-04-26 20:55:00', '2021-04-26 20:55:00'),
(40, 'admin::dashboard.sales_analytics.day_names.1', '2021-04-26 20:55:04', '2021-04-26 20:55:04'),
(41, 'admin::dashboard.sales_analytics.day_names.2', '2021-04-26 20:55:20', '2021-04-26 20:55:20'),
(42, 'admin::dashboard.sales_analytics.day_names.3', '2021-04-26 20:55:20', '2021-04-26 20:55:20'),
(43, 'admin::dashboard.sales_analytics.day_names.4', '2021-04-26 20:55:21', '2021-04-26 20:55:21'),
(44, 'admin::dashboard.sales_analytics.day_names.5', '2021-04-26 20:55:25', '2021-04-26 20:55:25'),
(45, 'admin::dashboard.sales_analytics.day_names.6', '2021-04-26 20:55:28', '2021-04-26 20:55:28'),
(46, 'admin::dashboard.sales_analytics.orders', '2021-04-26 20:55:31', '2021-04-26 20:55:31'),
(47, 'admin::dashboard.sales_analytics.sales', '2021-04-26 20:55:36', '2021-04-26 20:55:36'),
(48, 'admin::dashboard.sales_analytics_title', '2021-04-26 20:55:40', '2021-04-26 20:55:40'),
(49, 'admin::dashboard.table.customer', '2021-04-26 20:55:43', '2021-04-26 20:55:43'),
(50, 'admin::dashboard.table.latest_orders.order_id', '2021-04-26 20:55:46', '2021-04-26 20:55:46'),
(51, 'admin::dashboard.table.latest_orders.status', '2021-04-26 20:55:50', '2021-04-26 20:55:50'),
(52, 'admin::dashboard.table.latest_orders.total', '2021-04-26 20:55:54', '2021-04-26 20:55:54'),
(53, 'admin::dashboard.table.latest_reviews.product', '2021-04-26 20:55:58', '2021-04-26 20:55:58'),
(54, 'admin::dashboard.table.latest_reviews.rating', '2021-04-26 20:56:01', '2021-04-26 20:56:01'),
(55, 'admin::dashboard.table.latest_search_terms.hits', '2021-04-26 20:56:05', '2021-04-26 20:56:05'),
(56, 'admin::dashboard.table.latest_search_terms.keyword', '2021-04-26 20:56:09', '2021-04-26 20:56:09'),
(57, 'admin::dashboard.table.latest_search_terms.results', '2021-04-26 20:56:12', '2021-04-26 20:56:12'),
(58, 'admin::dashboard.total_customers', '2021-04-26 20:56:15', '2021-04-26 20:56:15'),
(59, 'admin::dashboard.total_orders', '2021-04-26 20:56:19', '2021-04-26 20:56:19'),
(60, 'admin::dashboard.total_products', '2021-04-26 20:56:22', '2021-04-26 20:56:22'),
(61, 'admin::dashboard.total_sales', '2021-04-26 20:56:32', '2021-04-26 20:56:32'),
(62, 'admin::messages.permission_denied', '2021-04-26 20:56:33', '2021-04-26 20:56:33'),
(63, 'admin::messages.resource_deleted', '2021-04-26 20:56:37', '2021-04-26 20:56:37'),
(64, 'admin::messages.resource_saved', '2021-04-26 20:56:40', '2021-04-26 20:56:40'),
(65, 'admin::resource.create', '2021-04-26 20:56:44', '2021-04-26 20:56:44'),
(66, 'admin::resource.delete', '2021-04-26 20:56:56', '2021-04-26 20:56:56'),
(67, 'admin::resource.edit', '2021-04-26 20:56:59', '2021-04-26 20:56:59'),
(68, 'admin::resource.show', '2021-04-26 20:57:03', '2021-04-26 20:57:03'),
(69, 'admin::sidebar.appearance', '2021-04-26 20:57:08', '2021-04-26 20:57:08'),
(70, 'admin::sidebar.content', '2021-04-26 20:57:12', '2021-04-26 20:57:12'),
(71, 'admin::sidebar.localization', '2021-04-26 20:57:17', '2021-04-26 20:57:17'),
(72, 'admin::sidebar.sales', '2021-04-26 20:57:20', '2021-04-26 20:57:20'),
(73, 'admin::sidebar.system', '2021-04-26 20:57:24', '2021-04-26 20:57:24'),
(74, 'admin::sidebar.tools', '2021-04-26 20:57:27', '2021-04-26 20:57:27'),
(75, 'attribute::admin.attribute', '2021-04-26 20:57:30', '2021-04-26 20:57:30'),
(76, 'attribute::admin.attributes', '2021-04-26 20:57:35', '2021-04-26 20:57:35'),
(77, 'attribute::admin.form.add_new_value', '2021-04-26 20:57:38', '2021-04-26 20:57:38'),
(78, 'attribute::admin.form.delete_value', '2021-04-26 20:57:41', '2021-04-26 20:57:41'),
(79, 'attribute::admin.form.product.add_new_attribute', '2021-04-26 20:57:45', '2021-04-26 20:57:45'),
(80, 'attribute::admin.form.product.attribute', '2021-04-26 20:57:49', '2021-04-26 20:57:49'),
(81, 'attribute::admin.form.product.delete_attribute', '2021-04-26 20:58:02', '2021-04-26 20:58:02'),
(82, 'attribute::admin.form.product.values', '2021-04-26 20:58:02', '2021-04-26 20:58:02'),
(83, 'attribute::admin.form.use_this_attribute_for_filtering_products', '2021-04-26 20:58:04', '2021-04-26 20:58:04'),
(84, 'attribute::admin.form.value', '2021-04-26 20:58:07', '2021-04-26 20:58:07'),
(85, 'attribute::admin.table.attribute_set', '2021-04-26 20:58:11', '2021-04-26 20:58:11'),
(86, 'attribute::admin.table.filterable', '2021-04-26 20:58:13', '2021-04-26 20:58:13'),
(87, 'attribute::admin.table.name', '2021-04-26 20:58:16', '2021-04-26 20:58:16'),
(88, 'attribute::admin.table.no', '2021-04-26 20:58:20', '2021-04-26 20:58:20'),
(89, 'attribute::admin.table.yes', '2021-04-26 20:58:23', '2021-04-26 20:58:23'),
(90, 'attribute::admin.tabs.general', '2021-04-26 20:58:26', '2021-04-26 20:58:26'),
(91, 'attribute::admin.tabs.group.attribute_information', '2021-04-26 20:58:29', '2021-04-26 20:58:29'),
(92, 'attribute::admin.tabs.product.attributes', '2021-04-26 20:58:38', '2021-04-26 20:58:38'),
(93, 'attribute::admin.tabs.values', '2021-04-26 20:58:41', '2021-04-26 20:58:41'),
(94, 'attribute::attribute_sets.attribute_set', '2021-04-26 20:58:45', '2021-04-26 20:58:45'),
(95, 'attribute::attribute_sets.attribute_sets', '2021-04-26 20:58:48', '2021-04-26 20:58:48'),
(96, 'attribute::attribute_sets.table.name', '2021-04-26 20:58:51', '2021-04-26 20:58:51'),
(97, 'attribute::attribute_sets.tabs.general', '2021-04-26 20:58:54', '2021-04-26 20:58:54'),
(98, 'attribute::attribute_sets.tabs.group.attribute_set_information', '2021-04-26 20:58:57', '2021-04-26 20:58:57'),
(99, 'attribute::attribute_values.attribute_value', '2021-04-26 20:59:01', '2021-04-26 20:59:01'),
(100, 'attribute::attribute_values.attribute_values', '2021-04-26 20:59:04', '2021-04-26 20:59:04'),
(101, 'attribute::attributes.attribute_sets.name', '2021-04-26 20:59:13', '2021-04-26 20:59:13'),
(102, 'attribute::attributes.attributes.attribute_set_id', '2021-04-26 20:59:13', '2021-04-26 20:59:13'),
(103, 'attribute::attributes.attributes.categories', '2021-04-26 20:59:16', '2021-04-26 20:59:16'),
(104, 'attribute::attributes.attributes.is_filterable', '2021-04-26 20:59:19', '2021-04-26 20:59:19'),
(105, 'attribute::attributes.attributes.name', '2021-04-26 20:59:24', '2021-04-26 20:59:24'),
(106, 'attribute::attributes.attributes.slug', '2021-04-26 20:59:27', '2021-04-26 20:59:27'),
(107, 'attribute::attributes.product_attributes.attributes.*.attribute_id', '2021-04-26 20:59:29', '2021-04-26 20:59:29'),
(108, 'attribute::attributes.product_attributes.attributes.*.values', '2021-04-26 20:59:32', '2021-04-26 20:59:32'),
(109, 'attribute::permissions.attribute_sets.create', '2021-04-26 20:59:35', '2021-04-26 20:59:35'),
(110, 'attribute::permissions.attribute_sets.destroy', '2021-04-26 20:59:39', '2021-04-26 20:59:39'),
(111, 'attribute::permissions.attribute_sets.edit', '2021-04-26 20:59:42', '2021-04-26 20:59:42'),
(112, 'attribute::permissions.attribute_sets.index', '2021-04-26 20:59:45', '2021-04-26 20:59:45'),
(113, 'attribute::permissions.attributes.create', '2021-04-26 20:59:48', '2021-04-26 20:59:48'),
(114, 'attribute::permissions.attributes.destroy', '2021-04-26 20:59:52', '2021-04-26 20:59:52'),
(115, 'attribute::permissions.attributes.edit', '2021-04-26 20:59:55', '2021-04-26 20:59:55'),
(116, 'attribute::permissions.attributes.index', '2021-04-26 20:59:58', '2021-04-26 20:59:58'),
(117, 'attribute::sidebar.attribute_sets', '2021-04-26 21:00:01', '2021-04-26 21:00:01'),
(118, 'attribute::sidebar.attributes', '2021-04-26 21:00:04', '2021-04-26 21:00:04'),
(119, 'bone::captcha.enter_code', '2021-04-26 21:00:07', '2021-04-26 21:00:07'),
(120, 'bone::captcha.incorrect_code', '2021-04-26 21:00:11', '2021-04-26 21:00:11'),
(121, 'bone::captcha.update_code', '2021-04-26 21:00:25', '2021-04-26 21:00:25'),
(122, 'brand::attributes.is_active', '2021-04-26 21:00:25', '2021-04-26 21:00:25'),
(123, 'brand::attributes.name', '2021-04-26 21:00:25', '2021-04-26 21:00:25'),
(124, 'brand::attributes.slug', '2021-04-26 21:00:27', '2021-04-26 21:00:27'),
(125, 'brand::brands.brand', '2021-04-26 21:00:30', '2021-04-26 21:00:30'),
(126, 'brand::brands.brands', '2021-04-26 21:00:32', '2021-04-26 21:00:32'),
(127, 'brand::brands.form.banner', '2021-04-26 21:00:36', '2021-04-26 21:00:36'),
(128, 'brand::brands.form.enable_the_brand', '2021-04-26 21:00:39', '2021-04-26 21:00:39'),
(129, 'brand::brands.form.logo', '2021-04-26 21:00:42', '2021-04-26 21:00:42'),
(130, 'brand::brands.table.logo', '2021-04-26 21:00:45', '2021-04-26 21:00:45'),
(131, 'brand::brands.table.name', '2021-04-26 21:00:48', '2021-04-26 21:00:48'),
(132, 'brand::brands.tabs.general', '2021-04-26 21:00:51', '2021-04-26 21:00:51'),
(133, 'brand::brands.tabs.group.brand_information', '2021-04-26 21:00:55', '2021-04-26 21:00:55'),
(134, 'brand::brands.tabs.images', '2021-04-26 21:00:58', '2021-04-26 21:00:58'),
(135, 'brand::brands.tabs.seo', '2021-04-26 21:01:01', '2021-04-26 21:01:01'),
(136, 'brand::permissions.create', '2021-04-26 21:01:04', '2021-04-26 21:01:04'),
(137, 'brand::permissions.destroy', '2021-04-26 21:01:07', '2021-04-26 21:01:07'),
(138, 'brand::permissions.edit', '2021-04-26 21:01:10', '2021-04-26 21:01:10'),
(139, 'brand::permissions.index', '2021-04-26 21:01:13', '2021-04-26 21:01:13'),
(140, 'cart::messages.not_have_enough_quantity_in_stock', '2021-04-26 21:01:17', '2021-04-26 21:01:17'),
(141, 'cart::messages.one_or_more_product_doesn\'t_have_enough_stock', '2021-04-26 21:01:33', '2021-04-26 21:01:33'),
(142, 'cart::messages.one_or_more_product_is_out_of_stock', '2021-04-26 21:01:33', '2021-04-26 21:01:33'),
(143, 'cart::messages.out_of_stock', '2021-04-26 21:01:33', '2021-04-26 21:01:33'),
(144, 'cart::validation.the_selected_option_is_invalid', '2021-04-26 21:01:40', '2021-04-26 21:01:40'),
(145, 'cart::validation.this_field_is_required', '2021-04-26 21:01:43', '2021-04-26 21:01:43'),
(146, 'category::attributes.id', '2021-04-26 21:01:46', '2021-04-26 21:01:46'),
(147, 'category::attributes.is_active', '2021-04-26 21:01:48', '2021-04-26 21:01:48'),
(148, 'category::attributes.is_searchable', '2021-04-26 21:01:51', '2021-04-26 21:01:51'),
(149, 'category::attributes.name', '2021-04-26 21:01:55', '2021-04-26 21:01:55'),
(150, 'category::attributes.slug', '2021-04-26 21:01:58', '2021-04-26 21:01:58'),
(151, 'category::categories.categories', '2021-04-26 21:02:00', '2021-04-26 21:02:00'),
(152, 'category::categories.category', '2021-04-26 21:02:03', '2021-04-26 21:02:03'),
(153, 'category::categories.form.banner', '2021-04-26 21:02:05', '2021-04-26 21:02:05'),
(154, 'category::categories.form.enable_the_category', '2021-04-26 21:03:34', '2021-04-26 21:03:34'),
(155, 'category::categories.form.logo', '2021-04-26 21:03:37', '2021-04-26 21:03:37'),
(156, 'category::categories.form.show_this_category_in_search_box', '2021-04-26 21:03:39', '2021-04-26 21:03:39'),
(157, 'category::categories.tabs.general', '2021-04-26 21:03:42', '2021-04-26 21:03:42'),
(158, 'category::categories.tabs.image', '2021-04-26 21:03:45', '2021-04-26 21:03:45'),
(159, 'category::categories.tabs.seo', '2021-04-26 21:03:47', '2021-04-26 21:03:47'),
(160, 'category::categories.tree.add_root_category', '2021-04-26 21:03:49', '2021-04-26 21:03:49'),
(161, 'category::categories.tree.add_sub_category', '2021-04-26 21:07:28', '2021-04-26 21:07:28'),
(162, 'category::categories.tree.collapse_all', '2021-04-26 21:07:31', '2021-04-26 21:07:31'),
(163, 'category::categories.tree.expand_all', '2021-04-26 21:07:34', '2021-04-26 21:07:34'),
(164, 'category::messages.category_order_saved', '2021-04-26 21:07:36', '2021-04-26 21:07:36'),
(165, 'category::permissions.create', '2021-04-26 21:07:40', '2021-04-26 21:07:40'),
(166, 'category::permissions.destroy', '2021-04-26 21:07:43', '2021-04-26 21:07:43'),
(167, 'category::permissions.edit', '2021-04-26 21:07:46', '2021-04-26 21:07:46'),
(168, 'category::permissions.index', '2021-04-26 21:07:49', '2021-04-26 21:07:49'),
(169, 'category::sidebar.categories', '2021-04-26 21:08:00', '2021-04-26 21:08:00'),
(170, 'checkout::attributes.billing.address_1', '2021-04-26 21:08:03', '2021-04-26 21:08:03'),
(171, 'checkout::attributes.billing.address_2', '2021-04-26 21:08:05', '2021-04-26 21:08:05'),
(172, 'checkout::attributes.billing.city', '2021-04-26 21:08:07', '2021-04-26 21:08:07'),
(173, 'checkout::attributes.billing.country', '2021-04-26 21:08:10', '2021-04-26 21:08:10'),
(174, 'checkout::attributes.billing.first_name', '2021-04-26 21:08:13', '2021-04-26 21:08:13'),
(175, 'checkout::attributes.billing.last_name', '2021-04-26 21:08:16', '2021-04-26 21:08:16'),
(176, 'checkout::attributes.billing.state', '2021-04-26 21:08:18', '2021-04-26 21:08:18'),
(177, 'checkout::attributes.billing.zip', '2021-04-26 21:08:21', '2021-04-26 21:08:21'),
(178, 'checkout::attributes.create_an_account', '2021-04-26 21:08:23', '2021-04-26 21:08:23'),
(179, 'checkout::attributes.customer_email', '2021-04-26 21:08:25', '2021-04-26 21:08:25'),
(180, 'checkout::attributes.customer_phone', '2021-04-26 21:08:28', '2021-04-26 21:08:28'),
(181, 'checkout::attributes.order_note', '2021-04-26 21:08:42', '2021-04-26 21:08:42'),
(182, 'checkout::attributes.ship_to_a_different_address', '2021-04-26 21:08:42', '2021-04-26 21:08:42'),
(183, 'checkout::attributes.password', '2021-04-26 21:08:42', '2021-04-26 21:08:42'),
(184, 'checkout::attributes.shipping.address_1', '2021-04-26 21:08:43', '2021-04-26 21:08:43'),
(185, 'checkout::attributes.shipping.address_2', '2021-04-26 21:08:46', '2021-04-26 21:08:46'),
(186, 'checkout::attributes.shipping.city', '2021-04-26 21:08:50', '2021-04-26 21:08:50'),
(187, 'checkout::attributes.shipping.country', '2021-04-26 21:08:53', '2021-04-26 21:08:53'),
(188, 'checkout::attributes.shipping.first_name', '2021-04-26 21:08:55', '2021-04-26 21:08:55'),
(189, 'checkout::attributes.shipping.last_name', '2021-04-26 21:08:58', '2021-04-26 21:08:58'),
(190, 'checkout::attributes.shipping.state', '2021-04-26 21:09:01', '2021-04-26 21:09:01'),
(191, 'checkout::attributes.shipping.zip', '2021-04-26 21:09:04', '2021-04-26 21:09:04'),
(192, 'checkout::attributes.street_address', '2021-04-26 21:09:07', '2021-04-26 21:09:07'),
(193, 'checkout::mail.if_you\\’re_having_trouble', '2021-04-26 21:09:10', '2021-04-26 21:09:10'),
(194, 'checkout::mail.new_order_subject', '2021-04-26 21:09:13', '2021-04-26 21:09:13'),
(195, 'checkout::mail.new_order_text', '2021-04-26 21:09:16', '2021-04-26 21:09:16'),
(196, 'checkout::mail.view_order', '2021-04-26 21:09:22', '2021-04-26 21:09:22'),
(197, 'contact::attributes.captcha', '2021-04-26 21:09:27', '2021-04-26 21:09:27'),
(198, 'contact::attributes.email', '2021-04-26 21:09:31', '2021-04-26 21:09:31'),
(199, 'contact::attributes.message', '2021-04-26 21:09:35', '2021-04-26 21:09:35'),
(200, 'contact::attributes.subject', '2021-04-26 21:09:38', '2021-04-26 21:09:38'),
(201, 'contact::messages.your_message_has_been_sent', '2021-04-26 21:09:56', '2021-04-26 21:09:56'),
(202, 'core::messages.the_given_data_was_invalid', '2021-04-26 21:09:56', '2021-04-26 21:09:56'),
(203, 'core::messages.mail_is_not_configured', '2021-04-26 21:09:56', '2021-04-26 21:09:56'),
(204, 'core::validation.accepted', '2021-04-26 21:09:57', '2021-04-26 21:09:57'),
(205, 'core::validation.active_url', '2021-04-26 21:10:00', '2021-04-26 21:10:00'),
(206, 'core::validation.after', '2021-04-26 21:10:03', '2021-04-26 21:10:03'),
(207, 'core::validation.after_or_equal', '2021-04-26 21:10:06', '2021-04-26 21:10:06'),
(208, 'core::validation.alpha', '2021-04-26 21:10:08', '2021-04-26 21:10:08'),
(209, 'core::validation.alpha_dash', '2021-04-26 21:10:11', '2021-04-26 21:10:11'),
(210, 'core::validation.alpha_num', '2021-04-26 21:10:16', '2021-04-26 21:10:16'),
(211, 'core::validation.array', '2021-04-26 21:10:18', '2021-04-26 21:10:18'),
(212, 'core::validation.before', '2021-04-26 21:10:21', '2021-04-26 21:10:21'),
(213, 'core::validation.before_or_equal', '2021-04-26 21:10:24', '2021-04-26 21:10:24'),
(214, 'core::validation.between.array', '2021-04-26 21:10:26', '2021-04-26 21:10:26'),
(215, 'core::validation.between.file', '2021-04-26 21:10:30', '2021-04-26 21:10:30'),
(216, 'core::validation.between.numeric', '2021-04-26 21:10:32', '2021-04-26 21:10:32'),
(217, 'core::validation.between.string', '2021-04-26 21:10:35', '2021-04-26 21:10:35'),
(218, 'core::validation.boolean', '2021-04-26 21:10:38', '2021-04-26 21:10:38'),
(219, 'core::validation.captcha', '2021-04-26 21:10:42', '2021-04-26 21:10:42'),
(220, 'core::validation.confirmed', '2021-04-26 21:10:45', '2021-04-26 21:10:45'),
(221, 'core::validation.date', '2021-04-26 21:21:14', '2021-04-26 21:21:14'),
(222, 'core::validation.date_format', '2021-04-26 21:21:14', '2021-04-26 21:21:14'),
(223, 'core::validation.different', '2021-04-26 21:21:17', '2021-04-26 21:21:17'),
(224, 'core::validation.digits', '2021-04-26 21:21:20', '2021-04-26 21:21:20'),
(225, 'core::validation.digits_between', '2021-04-26 21:21:23', '2021-04-26 21:21:23'),
(226, 'core::validation.dimensions', '2021-04-26 21:21:26', '2021-04-26 21:21:26'),
(227, 'core::validation.distinct', '2021-04-26 21:21:29', '2021-04-26 21:21:29'),
(228, 'core::validation.email', '2021-04-26 21:21:32', '2021-04-26 21:21:32'),
(229, 'core::validation.exists', '2021-04-26 21:21:34', '2021-04-26 21:21:34'),
(230, 'core::validation.file', '2021-04-26 21:21:37', '2021-04-26 21:21:37'),
(231, 'core::validation.filled', '2021-04-26 21:21:40', '2021-04-26 21:21:40'),
(232, 'core::validation.image', '2021-04-26 21:21:43', '2021-04-26 21:21:43'),
(233, 'core::validation.in', '2021-04-26 21:21:46', '2021-04-26 21:21:46'),
(234, 'core::validation.in_array', '2021-04-26 21:21:48', '2021-04-26 21:21:48'),
(235, 'core::validation.integer', '2021-04-26 21:21:51', '2021-04-26 21:21:51'),
(236, 'core::validation.ip', '2021-04-26 21:21:54', '2021-04-26 21:21:54'),
(237, 'core::validation.ipv4', '2021-04-26 21:21:57', '2021-04-26 21:21:57'),
(238, 'core::validation.ipv6', '2021-04-26 21:22:01', '2021-04-26 21:22:01'),
(239, 'core::validation.json', '2021-04-26 21:22:04', '2021-04-26 21:22:04'),
(240, 'core::validation.max.array', '2021-04-26 21:22:07', '2021-04-26 21:22:07'),
(241, 'core::validation.max.file', '2021-04-26 21:22:14', '2021-04-26 21:22:14'),
(242, 'core::validation.max.numeric', '2021-04-26 21:22:17', '2021-04-26 21:22:17'),
(243, 'core::validation.max.string', '2021-04-26 21:22:20', '2021-04-26 21:22:20'),
(244, 'core::validation.mimes', '2021-04-26 21:22:23', '2021-04-26 21:22:23'),
(245, 'core::validation.mimetypes', '2021-04-26 21:22:27', '2021-04-26 21:22:27'),
(246, 'core::validation.min.array', '2021-04-26 21:22:29', '2021-04-26 21:22:29'),
(247, 'core::validation.min.file', '2021-04-26 21:22:33', '2021-04-26 21:22:33'),
(248, 'core::validation.min.numeric', '2021-04-26 21:22:36', '2021-04-26 21:22:36'),
(249, 'core::validation.min.string', '2021-04-26 21:22:38', '2021-04-26 21:22:38'),
(250, 'core::validation.not_in', '2021-04-26 21:22:41', '2021-04-26 21:22:41'),
(251, 'core::validation.numeric', '2021-04-26 21:22:44', '2021-04-26 21:22:44'),
(252, 'core::validation.present', '2021-04-26 21:22:47', '2021-04-26 21:22:47'),
(253, 'core::validation.redis', '2021-04-26 21:22:50', '2021-04-26 21:22:50'),
(254, 'core::validation.regex', '2021-04-26 21:22:52', '2021-04-26 21:22:52'),
(255, 'core::validation.required', '2021-04-26 21:22:55', '2021-04-26 21:22:55'),
(256, 'core::validation.required_if', '2021-04-26 21:22:57', '2021-04-26 21:22:57'),
(257, 'core::validation.required_unless', '2021-04-26 21:23:00', '2021-04-26 21:23:00'),
(258, 'core::validation.required_with', '2021-04-26 21:23:04', '2021-04-26 21:23:04'),
(259, 'core::validation.required_with_all', '2021-04-26 21:23:07', '2021-04-26 21:23:07'),
(260, 'core::validation.required_without', '2021-04-26 21:23:10', '2021-04-26 21:23:10'),
(261, 'core::validation.same', '2021-04-26 21:23:24', '2021-04-26 21:23:24'),
(262, 'core::validation.required_without_all', '2021-04-26 21:23:24', '2021-04-26 21:23:24'),
(263, 'core::validation.size.array', '2021-04-26 21:23:24', '2021-04-26 21:23:24'),
(264, 'core::validation.size.file', '2021-04-26 21:23:24', '2021-04-26 21:23:24'),
(265, 'core::validation.size.numeric', '2021-04-26 21:23:27', '2021-04-26 21:23:27'),
(266, 'core::validation.size.string', '2021-04-26 21:23:33', '2021-04-26 21:23:33'),
(267, 'core::validation.string', '2021-04-26 21:23:35', '2021-04-26 21:23:35'),
(268, 'core::validation.timezone', '2021-04-26 21:23:37', '2021-04-26 21:23:37'),
(269, 'core::validation.unique', '2021-04-26 21:23:40', '2021-04-26 21:23:40'),
(270, 'core::validation.uploaded', '2021-04-26 21:23:42', '2021-04-26 21:23:42'),
(271, 'core::validation.url', '2021-04-26 21:23:45', '2021-04-26 21:23:45'),
(272, 'coupon::attributes.categories', '2021-04-26 21:23:48', '2021-04-26 21:23:48'),
(273, 'coupon::attributes.code', '2021-04-26 21:23:51', '2021-04-26 21:23:51'),
(274, 'coupon::attributes.end_date', '2021-04-26 21:23:53', '2021-04-26 21:23:53'),
(275, 'coupon::attributes.exclude_categories', '2021-04-26 21:23:55', '2021-04-26 21:23:55'),
(276, 'coupon::attributes.exclude_products', '2021-04-26 21:23:57', '2021-04-26 21:23:57'),
(277, 'coupon::attributes.free_shipping', '2021-04-26 21:24:01', '2021-04-26 21:24:01'),
(278, 'coupon::attributes.is_active', '2021-04-26 21:24:04', '2021-04-26 21:24:04'),
(279, 'coupon::attributes.is_percent', '2021-04-26 21:24:06', '2021-04-26 21:24:06'),
(280, 'coupon::attributes.maximum_spend', '2021-04-26 21:24:10', '2021-04-26 21:24:10'),
(281, 'coupon::attributes.minimum_spend', '2021-04-26 21:24:18', '2021-04-26 21:24:18'),
(282, 'coupon::attributes.name', '2021-04-26 21:24:20', '2021-04-26 21:24:20'),
(283, 'coupon::attributes.products', '2021-04-26 21:24:22', '2021-04-26 21:24:22'),
(284, 'coupon::attributes.start_date', '2021-04-26 21:24:25', '2021-04-26 21:24:25'),
(285, 'coupon::attributes.usage_limit_per_coupon', '2021-04-26 21:24:27', '2021-04-26 21:24:27'),
(286, 'coupon::attributes.usage_limit_per_customer', '2021-04-26 21:24:29', '2021-04-26 21:24:29'),
(287, 'coupon::attributes.value', '2021-04-26 21:24:33', '2021-04-26 21:24:33'),
(288, 'coupon::coupons.coupon', '2021-04-26 21:24:36', '2021-04-26 21:24:36'),
(289, 'coupon::coupons.coupons', '2021-04-26 21:24:39', '2021-04-26 21:24:39'),
(290, 'coupon::coupons.form.allow_free_shipping', '2021-04-26 21:24:41', '2021-04-26 21:24:41'),
(291, 'coupon::coupons.form.enable_the_coupon', '2021-04-26 21:24:43', '2021-04-26 21:24:43'),
(292, 'coupon::coupons.form.price_types.0', '2021-04-26 21:24:46', '2021-04-26 21:24:46'),
(293, 'coupon::coupons.form.price_types.1', '2021-04-26 21:24:48', '2021-04-26 21:24:48'),
(294, 'coupon::coupons.table.code', '2021-04-26 21:24:51', '2021-04-26 21:24:51'),
(295, 'coupon::coupons.table.discount', '2021-04-26 21:24:53', '2021-04-26 21:24:53'),
(296, 'coupon::coupons.table.name', '2021-04-26 21:24:56', '2021-04-26 21:24:56'),
(297, 'coupon::coupons.tabs.general', '2021-04-26 21:24:59', '2021-04-26 21:24:59'),
(298, 'coupon::coupons.tabs.group.coupon_information', '2021-04-26 21:25:01', '2021-04-26 21:25:01'),
(299, 'coupon::coupons.tabs.usage_limits', '2021-04-26 21:25:03', '2021-04-26 21:25:03'),
(300, 'coupon::coupons.tabs.usage_restrictions', '2021-04-26 21:25:06', '2021-04-26 21:25:06'),
(301, 'coupon::messages.already_applied', '2021-04-26 21:25:18', '2021-04-26 21:25:18'),
(302, 'coupon::messages.inapplicable', '2021-04-26 21:25:18', '2021-04-26 21:25:18'),
(303, 'coupon::messages.invalid_coupon', '2021-04-26 21:25:19', '2021-04-26 21:25:19'),
(304, 'coupon::messages.maximum_spend', '2021-04-26 21:25:21', '2021-04-26 21:25:21'),
(305, 'coupon::messages.minimum_spend', '2021-04-26 21:25:24', '2021-04-26 21:25:24'),
(306, 'coupon::messages.not_exists', '2021-04-26 21:25:26', '2021-04-26 21:25:26'),
(307, 'coupon::messages.usage_limit_reached', '2021-04-26 21:25:30', '2021-04-26 21:25:30'),
(308, 'coupon::permissions.create', '2021-04-26 21:25:33', '2021-04-26 21:25:33'),
(309, 'coupon::permissions.destroy', '2021-04-26 21:25:35', '2021-04-26 21:25:35'),
(310, 'coupon::permissions.edit', '2021-04-26 21:25:38', '2021-04-26 21:25:38'),
(311, 'coupon::permissions.index', '2021-04-26 21:25:41', '2021-04-26 21:25:41'),
(312, 'currency::attributes.rate', '2021-04-26 21:25:44', '2021-04-26 21:25:44'),
(313, 'currency::currency_rates.currency_rate', '2021-04-26 21:25:47', '2021-04-26 21:25:47'),
(314, 'currency::currency_rates.currency_rates', '2021-04-26 21:25:49', '2021-04-26 21:25:49'),
(315, 'currency::currency_rates.refresh_currency_rates_from', '2021-04-26 21:25:52', '2021-04-26 21:25:52'),
(316, 'currency::currency_rates.refresh_rates', '2021-04-26 21:25:55', '2021-04-26 21:25:55'),
(317, 'currency::currency_rates.table.code', '2021-04-26 21:25:58', '2021-04-26 21:25:58'),
(318, 'currency::currency_rates.table.currency', '2021-04-26 21:26:00', '2021-04-26 21:26:00'),
(319, 'currency::currency_rates.table.last_updated', '2021-04-26 21:26:03', '2021-04-26 21:26:03'),
(320, 'currency::currency_rates.table.rate', '2021-04-26 21:26:07', '2021-04-26 21:26:07'),
(321, 'currency::currency_rates.tabs.general', '2021-04-26 21:26:14', '2021-04-26 21:26:14'),
(322, 'currency::currency_rates.tabs.group.currency_rate_information', '2021-04-26 21:26:17', '2021-04-26 21:26:17'),
(323, 'currency::messages.exchange_service_is_not_configured', '2021-04-26 21:26:19', '2021-04-26 21:26:19'),
(324, 'currency::permissions.edit', '2021-04-26 21:26:21', '2021-04-26 21:26:21'),
(325, 'currency::permissions.index', '2021-04-26 21:26:23', '2021-04-26 21:26:23'),
(326, 'currency::services.currency_data_feed', '2021-04-26 21:26:27', '2021-04-26 21:26:27'),
(327, 'currency::services.fixer', '2021-04-26 21:26:29', '2021-04-26 21:26:29'),
(328, 'currency::services.forge', '2021-04-26 21:26:31', '2021-04-26 21:26:31'),
(329, 'flashsale::attributes.campaign_name', '2021-04-26 21:26:34', '2021-04-26 21:26:34'),
(330, 'flashsale::attributes.end_date', '2021-04-26 21:26:37', '2021-04-26 21:26:37'),
(331, 'flashsale::attributes.price', '2021-04-26 21:26:39', '2021-04-26 21:26:39'),
(332, 'flashsale::attributes.product', '2021-04-26 21:26:42', '2021-04-26 21:26:42'),
(333, 'flashsale::attributes.products.*.end_date', '2021-04-26 21:26:44', '2021-04-26 21:26:44'),
(334, 'flashsale::attributes.products.*.price', '2021-04-26 21:26:47', '2021-04-26 21:26:47'),
(335, 'flashsale::attributes.products.*.product_id', '2021-04-26 21:26:50', '2021-04-26 21:26:50'),
(336, 'flashsale::attributes.products.*.qty', '2021-04-26 21:26:52', '2021-04-26 21:26:52'),
(337, 'flashsale::attributes.quantity', '2021-04-26 21:26:54', '2021-04-26 21:26:54'),
(338, 'flashsale::flash_sales.flash_sale', '2021-04-26 21:26:59', '2021-04-26 21:26:59'),
(339, 'flashsale::flash_sales.flash_sales', '2021-04-26 21:27:01', '2021-04-26 21:27:01'),
(340, 'flashsale::flash_sales.form.add_product', '2021-04-26 21:27:04', '2021-04-26 21:27:04'),
(341, 'flashsale::flash_sales.form.flash_sale_product', '2021-04-26 21:27:15', '2021-04-26 21:27:15'),
(342, 'flashsale::flash_sales.table.campaign_name', '2021-04-26 21:27:15', '2021-04-26 21:27:15'),
(343, 'flashsale::flash_sales.tabs.group.flash_sale_information', '2021-04-26 21:27:15', '2021-04-26 21:27:15'),
(344, 'flashsale::flash_sales.tabs.products', '2021-04-26 21:27:17', '2021-04-26 21:27:17'),
(345, 'flashsale::flash_sales.tabs.settings', '2021-04-26 21:27:20', '2021-04-26 21:27:20'),
(346, 'flashsale::permissions.create', '2021-04-26 21:27:22', '2021-04-26 21:27:22'),
(347, 'flashsale::permissions.destroy', '2021-04-26 21:27:24', '2021-04-26 21:27:24'),
(348, 'flashsale::permissions.edit', '2021-04-26 21:27:27', '2021-04-26 21:27:27'),
(349, 'flashsale::permissions.index', '2021-04-26 21:27:30', '2021-04-26 21:27:30'),
(350, 'import::attributes.csv_file', '2021-04-26 21:27:32', '2021-04-26 21:27:32'),
(351, 'import::attributes.import_type', '2021-04-26 21:27:35', '2021-04-26 21:27:35'),
(352, 'import::importer.download_csv', '2021-04-26 21:27:39', '2021-04-26 21:27:39'),
(353, 'import::importer.import', '2021-04-26 21:27:41', '2021-04-26 21:27:41'),
(354, 'import::importer.import_types.product', '2021-04-26 21:27:44', '2021-04-26 21:27:44'),
(355, 'import::importer.importer', '2021-04-26 21:27:47', '2021-04-26 21:27:47'),
(356, 'import::importer.run', '2021-04-26 21:27:50', '2021-04-26 21:27:50'),
(357, 'import::messages.the_importer_has_been_run_successfully', '2021-04-26 21:27:52', '2021-04-26 21:27:52'),
(358, 'import::messages.there_was_an_error_on_rows', '2021-04-26 21:27:54', '2021-04-26 21:27:54'),
(359, 'import::permissions.create', '2021-04-26 21:27:57', '2021-04-26 21:27:57'),
(360, 'import::permissions.index', '2021-04-26 21:28:00', '2021-04-26 21:28:00'),
(361, 'import::sidebar.import', '2021-04-26 21:28:09', '2021-04-26 21:28:09'),
(362, 'media::media.browse', '2021-04-26 21:28:11', '2021-04-26 21:28:11'),
(363, 'media::media.drop_files_here', '2021-04-26 21:28:14', '2021-04-26 21:28:14'),
(364, 'media::media.file_manager.select_this_file', '2021-04-26 21:28:16', '2021-04-26 21:28:16'),
(365, 'media::media.file_manager.title', '2021-04-26 21:28:19', '2021-04-26 21:28:19'),
(366, 'media::media.media', '2021-04-26 21:28:21', '2021-04-26 21:28:21'),
(367, 'media::media.table.filename', '2021-04-26 21:28:23', '2021-04-26 21:28:23'),
(368, 'media::media.table.height', '2021-04-26 21:28:26', '2021-04-26 21:28:26'),
(369, 'media::media.table.thumbnail', '2021-04-26 21:28:29', '2021-04-26 21:28:29'),
(370, 'media::media.table.width', '2021-04-26 21:28:31', '2021-04-26 21:28:31'),
(371, 'media::media.thumbnails', '2021-04-26 21:28:33', '2021-04-26 21:28:33'),
(372, 'media::media.upload_new_file', '2021-04-26 21:28:36', '2021-04-26 21:28:36'),
(373, 'media::messages.image_has_been_added', '2021-04-26 21:28:38', '2021-04-26 21:28:38'),
(374, 'media::permissions.create', '2021-04-26 21:28:40', '2021-04-26 21:28:40'),
(375, 'media::permissions.destroy', '2021-04-26 21:28:43', '2021-04-26 21:28:43'),
(376, 'media::permissions.index', '2021-04-26 21:28:46', '2021-04-26 21:28:46'),
(377, 'menu::attributes.category_id', '2021-04-26 21:28:48', '2021-04-26 21:28:48'),
(378, 'menu::attributes.icon', '2021-04-26 21:28:52', '2021-04-26 21:28:52'),
(379, 'menu::attributes.is_active', '2021-04-26 21:28:55', '2021-04-26 21:28:55'),
(380, 'menu::attributes.is_fluid', '2021-04-26 21:28:57', '2021-04-26 21:28:57'),
(381, 'menu::attributes.page_id', '2021-04-26 21:29:09', '2021-04-26 21:29:09'),
(382, 'menu::attributes.name', '2021-04-26 21:29:09', '2021-04-26 21:29:09'),
(383, 'menu::attributes.parent_id', '2021-04-26 21:29:09', '2021-04-26 21:29:09'),
(384, 'menu::attributes.target', '2021-04-26 21:29:10', '2021-04-26 21:29:10'),
(385, 'menu::attributes.type', '2021-04-26 21:29:13', '2021-04-26 21:29:13'),
(386, 'menu::attributes.url', '2021-04-26 21:29:16', '2021-04-26 21:29:16'),
(387, 'menu::menu_items.back_to_menu_edit_page', '2021-04-26 21:29:18', '2021-04-26 21:29:18'),
(388, 'menu::menu_items.form.background_image', '2021-04-26 21:29:20', '2021-04-26 21:29:20'),
(389, 'menu::menu_items.form.enable_the_menu_item', '2021-04-26 21:29:24', '2021-04-26 21:29:24'),
(390, 'menu::menu_items.form.full_width_menu', '2021-04-26 21:29:27', '2021-04-26 21:29:27'),
(391, 'menu::menu_items.form.select_category', '2021-04-26 21:29:29', '2021-04-26 21:29:29'),
(392, 'menu::menu_items.form.select_page', '2021-04-26 21:29:33', '2021-04-26 21:29:33'),
(393, 'menu::menu_items.form.select_parent', '2021-04-26 21:29:35', '2021-04-26 21:29:35'),
(394, 'menu::menu_items.form.targets._blank', '2021-04-26 21:29:38', '2021-04-26 21:29:38'),
(395, 'menu::menu_items.form.targets._self', '2021-04-26 21:29:42', '2021-04-26 21:29:42'),
(396, 'menu::menu_items.form.types.category', '2021-04-26 21:29:44', '2021-04-26 21:29:44'),
(397, 'menu::menu_items.form.types.page', '2021-04-26 21:29:47', '2021-04-26 21:29:47'),
(398, 'menu::menu_items.form.types.url', '2021-04-26 21:29:50', '2021-04-26 21:29:50'),
(399, 'menu::menu_items.menu_item', '2021-04-26 21:29:52', '2021-04-26 21:29:52'),
(400, 'menu::menu_items.tabs.general', '2021-04-26 21:29:56', '2021-04-26 21:29:56'),
(401, 'menu::menu_items.tabs.group.menu_item_information', '2021-04-26 21:30:04', '2021-04-26 21:30:04'),
(402, 'menu::menu_items.tabs.image', '2021-04-26 21:30:06', '2021-04-26 21:30:06'),
(403, 'menu::menus.form.enable_the_menu', '2021-04-26 21:30:08', '2021-04-26 21:30:08'),
(404, 'menu::menus.form.please_save_the_menu_first', '2021-04-26 21:30:10', '2021-04-26 21:30:10'),
(405, 'menu::menus.menu', '2021-04-26 21:30:14', '2021-04-26 21:30:14'),
(406, 'menu::menus.menus', '2021-04-26 21:30:16', '2021-04-26 21:30:16'),
(407, 'menu::menus.table.name', '2021-04-26 21:30:18', '2021-04-26 21:30:18'),
(408, 'menu::messages.menu_item_deleted', '2021-04-26 21:30:21', '2021-04-26 21:30:21'),
(409, 'menu::messages.menu_items_order_updated', '2021-04-26 21:30:23', '2021-04-26 21:30:23'),
(410, 'menu::permissions.menu_items.create', '2021-04-26 21:30:27', '2021-04-26 21:30:27'),
(411, 'menu::permissions.menu_items.destroy', '2021-04-26 21:30:29', '2021-04-26 21:30:29'),
(412, 'menu::permissions.menu_items.edit', '2021-04-26 21:30:31', '2021-04-26 21:30:31'),
(413, 'menu::permissions.menu_items.index', '2021-04-26 21:30:33', '2021-04-26 21:30:33'),
(414, 'menu::permissions.menus.create', '2021-04-26 21:30:36', '2021-04-26 21:30:36'),
(415, 'menu::permissions.menus.destroy', '2021-04-26 21:30:39', '2021-04-26 21:30:39'),
(416, 'menu::permissions.menus.edit', '2021-04-26 21:30:41', '2021-04-26 21:30:41'),
(417, 'menu::permissions.menus.index', '2021-04-26 21:30:43', '2021-04-26 21:30:43'),
(418, 'menu::sidebar.menus', '2021-04-26 21:30:46', '2021-04-26 21:30:46'),
(419, 'meta::attributes.meta_description', '2021-04-26 21:30:48', '2021-04-26 21:30:48'),
(420, 'meta::attributes.meta_title', '2021-04-26 21:30:51', '2021-04-26 21:30:51'),
(421, 'newsletter::attributes.email', '2021-04-26 21:35:28', '2021-04-26 21:35:28'),
(422, 'option::attributes.is_required', '2021-04-26 21:35:30', '2021-04-26 21:35:30'),
(423, 'option::attributes.label', '2021-04-26 21:35:33', '2021-04-26 21:35:33'),
(424, 'option::attributes.name', '2021-04-26 21:35:37', '2021-04-26 21:35:37'),
(425, 'option::attributes.options.*.name', '2021-04-26 21:35:40', '2021-04-26 21:35:40'),
(426, 'option::attributes.options.*.type', '2021-04-26 21:35:42', '2021-04-26 21:35:42'),
(427, 'option::attributes.options.*.values.*.label', '2021-04-26 21:35:45', '2021-04-26 21:35:45'),
(428, 'option::attributes.options.*.values.*.price', '2021-04-26 21:35:47', '2021-04-26 21:35:47'),
(429, 'option::attributes.options.*.values.*.price_type', '2021-04-26 21:35:50', '2021-04-26 21:35:50'),
(430, 'option::attributes.price', '2021-04-26 21:35:52', '2021-04-26 21:35:52'),
(431, 'option::attributes.price_type', '2021-04-26 21:35:57', '2021-04-26 21:35:57'),
(432, 'option::attributes.type', '2021-04-26 21:35:59', '2021-04-26 21:35:59'),
(433, 'option::attributes.values.*.label', '2021-04-26 21:36:03', '2021-04-26 21:36:03'),
(434, 'option::attributes.values.*.price', '2021-04-26 21:36:06', '2021-04-26 21:36:06'),
(435, 'option::attributes.values.*.price_type', '2021-04-26 21:36:08', '2021-04-26 21:36:08'),
(436, 'option::options.form.add_global_option', '2021-04-26 21:36:10', '2021-04-26 21:36:10'),
(437, 'option::options.form.add_new_option', '2021-04-26 21:36:13', '2021-04-26 21:36:13'),
(438, 'option::options.form.add_new_row', '2021-04-26 21:36:15', '2021-04-26 21:36:15'),
(439, 'option::options.form.delete_option', '2021-04-26 21:36:18', '2021-04-26 21:36:18'),
(440, 'option::options.form.delete_row', '2021-04-26 21:36:20', '2021-04-26 21:36:20'),
(441, 'option::options.form.new_option', '2021-04-26 21:36:30', '2021-04-26 21:36:30'),
(442, 'option::options.form.option_types.checkbox', '2021-04-26 21:36:32', '2021-04-26 21:36:32'),
(443, 'option::options.form.option_types.checkbox_custom', '2021-04-26 21:36:34', '2021-04-26 21:36:34'),
(444, 'option::options.form.option_types.date', '2021-04-26 21:36:36', '2021-04-26 21:36:36'),
(445, 'option::options.form.option_types.date_time', '2021-04-26 21:36:39', '2021-04-26 21:36:39'),
(446, 'option::options.form.option_types.dropdown', '2021-04-26 21:36:42', '2021-04-26 21:36:42'),
(447, 'option::options.form.option_types.field', '2021-04-26 21:36:44', '2021-04-26 21:36:44'),
(448, 'option::options.form.option_types.multiple_select', '2021-04-26 21:36:46', '2021-04-26 21:36:46'),
(449, 'option::options.form.option_types.please_select', '2021-04-26 21:36:50', '2021-04-26 21:36:50'),
(450, 'option::options.form.option_types.radio', '2021-04-26 21:36:52', '2021-04-26 21:36:52'),
(451, 'option::options.form.option_types.radio_custom', '2021-04-26 21:36:54', '2021-04-26 21:36:54'),
(452, 'option::options.form.option_types.select', '2021-04-26 21:36:57', '2021-04-26 21:36:57'),
(453, 'option::options.form.option_types.text', '2021-04-26 21:36:59', '2021-04-26 21:36:59'),
(454, 'option::options.form.option_types.textarea', '2021-04-26 21:37:01', '2021-04-26 21:37:01'),
(455, 'option::options.form.option_types.time', '2021-04-26 21:37:03', '2021-04-26 21:37:03'),
(456, 'option::options.form.price', '2021-04-26 21:37:06', '2021-04-26 21:37:06'),
(457, 'option::options.form.price_types.fixed', '2021-04-26 21:37:08', '2021-04-26 21:37:08'),
(458, 'option::options.form.price_types.percent', '2021-04-26 21:37:11', '2021-04-26 21:37:11'),
(459, 'option::options.form.this_option_is_required', '2021-04-26 21:37:13', '2021-04-26 21:37:13'),
(460, 'option::options.option', '2021-04-26 21:37:15', '2021-04-26 21:37:15'),
(461, 'option::options.options', '2021-04-26 21:37:21', '2021-04-26 21:37:21'),
(462, 'option::options.please_select_a_option_type', '2021-04-26 21:37:23', '2021-04-26 21:37:23'),
(463, 'option::options.select_global_option', '2021-04-26 21:37:25', '2021-04-26 21:37:25'),
(464, 'option::options.table.name', '2021-04-26 21:37:27', '2021-04-26 21:37:27'),
(465, 'option::options.table.type', '2021-04-26 21:37:30', '2021-04-26 21:37:30'),
(466, 'option::options.tabs.general', '2021-04-26 21:37:33', '2021-04-26 21:37:33'),
(467, 'option::options.tabs.group.option_information', '2021-04-26 21:37:36', '2021-04-26 21:37:36'),
(468, 'option::options.tabs.product.options', '2021-04-26 21:37:38', '2021-04-26 21:37:38'),
(469, 'option::options.tabs.values', '2021-04-26 21:37:42', '2021-04-26 21:37:42'),
(470, 'option::permissions.options.create', '2021-04-26 21:37:45', '2021-04-26 21:37:45'),
(471, 'option::permissions.options.destroy', '2021-04-26 21:37:47', '2021-04-26 21:37:47'),
(472, 'option::permissions.options.edit', '2021-04-26 21:37:49', '2021-04-26 21:37:49'),
(473, 'option::permissions.options.index', '2021-04-26 21:37:51', '2021-04-26 21:37:51'),
(474, 'order::mail.your_order_status_changed_subject', '2021-04-26 21:37:55', '2021-04-26 21:37:55'),
(475, 'option::sidebar.options', '2021-04-26 21:37:57', '2021-04-26 21:37:57'),
(476, 'order::mail.your_order_status_changed_text', '2021-04-26 21:38:00', '2021-04-26 21:38:00'),
(477, 'order::messages.invoice_sent', '2021-04-26 21:38:03', '2021-04-26 21:38:03'),
(478, 'order::messages.status_updated', '2021-04-26 21:38:06', '2021-04-26 21:38:06'),
(479, 'order::orders.account_information', '2021-04-26 21:38:08', '2021-04-26 21:38:08'),
(480, 'order::orders.address_information', '2021-04-26 21:38:12', '2021-04-26 21:38:12'),
(481, 'order::orders.billing_address', '2021-04-26 21:38:18', '2021-04-26 21:38:18'),
(482, 'order::orders.coupon', '2021-04-26 21:38:20', '2021-04-26 21:38:20'),
(483, 'order::orders.currency', '2021-04-26 21:38:22', '2021-04-26 21:38:22'),
(484, 'order::orders.currency_rate', '2021-04-26 21:38:25', '2021-04-26 21:38:25'),
(485, 'order::orders.customer_email', '2021-04-26 21:38:27', '2021-04-26 21:38:27'),
(486, 'order::orders.customer_group', '2021-04-26 21:38:29', '2021-04-26 21:38:29'),
(487, 'order::orders.customer_name', '2021-04-26 21:38:36', '2021-04-26 21:38:36'),
(488, 'order::orders.customer_phone', '2021-04-26 21:38:39', '2021-04-26 21:38:39'),
(489, 'order::orders.guest', '2021-04-26 21:38:40', '2021-04-26 21:38:40'),
(490, 'order::orders.items_ordered', '2021-04-26 21:38:49', '2021-04-26 21:38:49'),
(491, 'order::orders.line_total', '2021-04-26 21:39:01', '2021-04-26 21:39:01'),
(492, 'order::orders.order', '2021-04-26 21:39:05', '2021-04-26 21:39:05'),
(493, 'order::orders.order_and_account_information', '2021-04-26 21:39:07', '2021-04-26 21:39:07'),
(494, 'order::orders.order_date', '2021-04-26 21:39:09', '2021-04-26 21:39:09'),
(495, 'order::orders.order_information', '2021-04-26 21:39:11', '2021-04-26 21:39:11'),
(496, 'order::orders.order_note', '2021-04-26 21:39:13', '2021-04-26 21:39:13'),
(497, 'order::orders.order_status', '2021-04-26 21:39:16', '2021-04-26 21:39:16'),
(498, 'order::orders.orders', '2021-04-26 21:39:18', '2021-04-26 21:39:18'),
(499, 'order::orders.payment_method', '2021-04-26 21:39:20', '2021-04-26 21:39:20'),
(500, 'order::orders.print', '2021-04-26 21:39:23', '2021-04-26 21:39:23'),
(501, 'order::orders.product', '2021-04-26 21:39:30', '2021-04-26 21:39:30'),
(502, 'order::orders.quantity', '2021-04-26 21:39:32', '2021-04-26 21:39:32'),
(503, 'order::orders.registered', '2021-04-26 21:39:34', '2021-04-26 21:39:34'),
(504, 'order::orders.send_email', '2021-04-26 21:39:36', '2021-04-26 21:39:36'),
(505, 'order::orders.shipping_address', '2021-04-26 21:39:38', '2021-04-26 21:39:38'),
(506, 'order::orders.shipping_method', '2021-04-26 21:39:41', '2021-04-26 21:39:41'),
(507, 'order::orders.subtotal', '2021-04-26 21:39:43', '2021-04-26 21:39:43'),
(508, 'order::orders.table.customer_email', '2021-04-26 21:39:45', '2021-04-26 21:39:45'),
(509, 'order::orders.table.customer_name', '2021-04-26 21:39:47', '2021-04-26 21:39:47'),
(510, 'order::orders.table.total', '2021-04-26 21:39:50', '2021-04-26 21:39:50'),
(511, 'order::orders.tax', '2021-04-26 21:39:52', '2021-04-26 21:39:52'),
(512, 'order::orders.total', '2021-04-26 21:39:54', '2021-04-26 21:39:54'),
(513, 'order::orders.unit_price', '2021-04-26 21:39:57', '2021-04-26 21:39:57'),
(514, 'order::permissions.edit', '2021-04-26 21:39:59', '2021-04-26 21:39:59'),
(515, 'order::permissions.index', '2021-04-26 21:40:02', '2021-04-26 21:40:02'),
(516, 'order::permissions.show', '2021-04-26 21:40:07', '2021-04-26 21:40:07'),
(517, 'order::print.billing_address', '2021-04-26 21:40:09', '2021-04-26 21:40:09'),
(518, 'order::print.date', '2021-04-26 21:40:11', '2021-04-26 21:40:11'),
(519, 'order::print.email', '2021-04-26 21:40:14', '2021-04-26 21:40:14'),
(520, 'order::print.invoice', '2021-04-26 21:40:16', '2021-04-26 21:40:16'),
(521, 'order::print.invoice_id', '2021-04-26 21:40:25', '2021-04-26 21:40:25'),
(522, 'order::print.line_total', '2021-04-26 21:40:25', '2021-04-26 21:40:25'),
(523, 'order::print.order_details', '2021-04-26 21:40:26', '2021-04-26 21:40:26'),
(524, 'order::print.payment_method', '2021-04-26 21:40:28', '2021-04-26 21:40:28'),
(525, 'order::print.phone', '2021-04-26 21:40:31', '2021-04-26 21:40:31'),
(526, 'order::print.product', '2021-04-26 21:40:34', '2021-04-26 21:40:34'),
(527, 'order::print.quantity', '2021-04-26 21:40:37', '2021-04-26 21:40:37'),
(528, 'order::print.shipping_address', '2021-04-26 21:40:39', '2021-04-26 21:40:39'),
(529, 'order::print.shipping_method', '2021-04-26 21:40:43', '2021-04-26 21:40:43'),
(530, 'order::print.subtotal', '2021-04-26 21:40:45', '2021-04-26 21:40:45'),
(531, 'order::print.total', '2021-04-26 21:40:48', '2021-04-26 21:40:48'),
(532, 'order::print.unit_price', '2021-04-26 21:40:50', '2021-04-26 21:40:50'),
(533, 'order::statuses.canceled', '2021-04-26 21:40:54', '2021-04-26 21:40:54'),
(534, 'order::statuses.completed', '2021-04-26 21:40:57', '2021-04-26 21:40:57'),
(535, 'order::statuses.on_hold', '2021-04-26 21:41:00', '2021-04-26 21:41:00'),
(536, 'order::statuses.pending', '2021-04-26 21:41:03', '2021-04-26 21:41:03'),
(537, 'order::statuses.pending_payment', '2021-04-26 21:41:09', '2021-04-26 21:41:09'),
(538, 'order::statuses.processing', '2021-04-26 21:41:11', '2021-04-26 21:41:11'),
(539, 'order::statuses.refunded', '2021-04-26 21:41:14', '2021-04-26 21:41:14'),
(540, 'page::attributes.body', '2021-04-26 21:41:17', '2021-04-26 21:41:17'),
(541, 'page::attributes.is_active', '2021-04-26 21:41:23', '2021-04-26 21:41:23'),
(542, 'page::attributes.name', '2021-04-26 21:41:25', '2021-04-26 21:41:25'),
(543, 'page::attributes.slug', '2021-04-26 21:41:27', '2021-04-26 21:41:27'),
(544, 'page::pages.form.enable_the_page', '2021-04-26 21:41:30', '2021-04-26 21:41:30'),
(545, 'page::pages.page', '2021-04-26 21:41:33', '2021-04-26 21:41:33'),
(546, 'page::pages.pages', '2021-04-26 21:41:35', '2021-04-26 21:41:35'),
(547, 'page::pages.table.name', '2021-04-26 21:41:37', '2021-04-26 21:41:37'),
(548, 'page::pages.tabs.general', '2021-04-26 21:41:39', '2021-04-26 21:41:39'),
(549, 'page::pages.tabs.group.page_information', '2021-04-26 21:41:43', '2021-04-26 21:41:43'),
(550, 'page::pages.tabs.seo', '2021-04-26 21:41:45', '2021-04-26 21:41:45'),
(551, 'page::permissions.create', '2021-04-26 21:41:47', '2021-04-26 21:41:47'),
(552, 'page::permissions.destroy', '2021-04-26 21:41:49', '2021-04-26 21:41:49'),
(553, 'page::permissions.edit', '2021-04-26 21:41:52', '2021-04-26 21:41:52'),
(554, 'page::permissions.index', '2021-04-26 21:41:57', '2021-04-26 21:41:57'),
(555, 'page::sidebar.pages', '2021-04-26 21:41:59', '2021-04-26 21:41:59'),
(556, 'payment::messages.only_supports_inr', '2021-04-26 21:42:01', '2021-04-26 21:42:01'),
(557, 'product::attributes.brand_id', '2021-04-26 21:42:04', '2021-04-26 21:42:04'),
(558, 'product::attributes.categories', '2021-04-26 21:42:06', '2021-04-26 21:42:06'),
(559, 'product::attributes.description', '2021-04-26 21:42:08', '2021-04-26 21:42:08'),
(560, 'product::attributes.in_stock', '2021-04-26 21:42:10', '2021-04-26 21:42:10'),
(561, 'product::attributes.is_active', '2021-04-26 21:42:27', '2021-04-26 21:42:27'),
(562, 'product::attributes.manage_stock', '2021-04-26 21:42:27', '2021-04-26 21:42:27'),
(563, 'product::attributes.name', '2021-04-26 21:42:27', '2021-04-26 21:42:27'),
(564, 'product::attributes.new_from', '2021-04-26 21:42:30', '2021-04-26 21:42:30'),
(565, 'product::attributes.new_to', '2021-04-26 21:42:32', '2021-04-26 21:42:32'),
(566, 'product::attributes.price', '2021-04-26 21:42:34', '2021-04-26 21:42:34'),
(567, 'product::attributes.qty', '2021-04-26 21:42:37', '2021-04-26 21:42:37'),
(568, 'product::attributes.short_description', '2021-04-26 21:42:39', '2021-04-26 21:42:39'),
(569, 'product::attributes.sku', '2021-04-26 21:42:42', '2021-04-26 21:42:42'),
(570, 'product::attributes.slug', '2021-04-26 21:42:44', '2021-04-26 21:42:44'),
(571, 'product::attributes.special_price', '2021-04-26 21:42:47', '2021-04-26 21:42:47'),
(572, 'product::attributes.special_price_end', '2021-04-26 21:42:49', '2021-04-26 21:42:49'),
(573, 'product::attributes.special_price_start', '2021-04-26 21:42:52', '2021-04-26 21:42:52'),
(574, 'product::attributes.special_price_type', '2021-04-26 21:42:54', '2021-04-26 21:42:54'),
(575, 'product::attributes.tags', '2021-04-26 21:42:56', '2021-04-26 21:42:56'),
(576, 'product::attributes.tax_class_id', '2021-04-26 21:42:59', '2021-04-26 21:42:59'),
(577, 'product::attributes.virtual', '2021-04-26 21:43:02', '2021-04-26 21:43:02'),
(578, 'product::permissions.create', '2021-04-26 21:43:04', '2021-04-26 21:43:04'),
(579, 'product::permissions.destroy', '2021-04-26 21:43:07', '2021-04-26 21:43:07'),
(580, 'product::permissions.edit', '2021-04-26 21:43:09', '2021-04-26 21:43:09');
INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(581, 'product::permissions.index', '2021-04-26 21:43:14', '2021-04-26 21:43:14'),
(582, 'product::products.form.add_new_file', '2021-04-26 21:43:16', '2021-04-26 21:43:16'),
(583, 'product::products.form.additional_images', '2021-04-26 21:43:18', '2021-04-26 21:43:18'),
(584, 'product::products.form.base_image', '2021-04-26 21:43:20', '2021-04-26 21:43:20'),
(585, 'product::products.form.choose', '2021-04-26 21:43:22', '2021-04-26 21:43:22'),
(586, 'product::products.form.delete_file', '2021-04-26 21:43:24', '2021-04-26 21:43:24'),
(587, 'product::products.form.downloadable_files', '2021-04-26 21:43:27', '2021-04-26 21:43:27'),
(588, 'product::products.form.enable_the_product', '2021-04-26 21:43:29', '2021-04-26 21:43:29'),
(589, 'product::products.form.file', '2021-04-26 21:43:32', '2021-04-26 21:43:32'),
(590, 'product::products.form.manage_stock_states.0', '2021-04-26 21:43:34', '2021-04-26 21:43:34'),
(591, 'product::products.form.manage_stock_states.1', '2021-04-26 21:43:37', '2021-04-26 21:43:37'),
(592, 'product::products.form.price_types.fixed', '2021-04-26 21:43:39', '2021-04-26 21:43:39'),
(593, 'product::products.form.price_types.percent', '2021-04-26 21:43:42', '2021-04-26 21:43:42'),
(594, 'product::products.form.stock_availability_states.0', '2021-04-26 21:43:44', '2021-04-26 21:43:44'),
(595, 'product::products.form.stock_availability_states.1', '2021-04-26 21:43:46', '2021-04-26 21:43:46'),
(596, 'product::products.form.the_product_won\'t_be_shipped', '2021-04-26 21:43:49', '2021-04-26 21:43:49'),
(597, 'product::products.product', '2021-04-26 21:43:51', '2021-04-26 21:43:51'),
(598, 'product::products.products', '2021-04-26 21:43:53', '2021-04-26 21:43:53'),
(599, 'product::products.table.name', '2021-04-26 21:43:55', '2021-04-26 21:43:55'),
(600, 'product::products.table.price', '2021-04-26 21:43:57', '2021-04-26 21:43:57'),
(601, 'product::products.table.thumbnail', '2021-04-26 21:44:04', '2021-04-26 21:44:04'),
(602, 'product::products.tabs.additional', '2021-04-26 21:44:06', '2021-04-26 21:44:06'),
(603, 'product::products.tabs.cross_sells', '2021-04-26 21:44:08', '2021-04-26 21:44:08'),
(604, 'product::products.tabs.downloads', '2021-04-26 21:44:10', '2021-04-26 21:44:10'),
(605, 'product::products.tabs.general', '2021-04-26 21:44:13', '2021-04-26 21:44:13'),
(606, 'product::products.tabs.group.advanced_information', '2021-04-26 21:44:15', '2021-04-26 21:44:15'),
(607, 'product::products.tabs.group.basic_information', '2021-04-26 21:44:18', '2021-04-26 21:44:18'),
(608, 'product::products.tabs.images', '2021-04-26 21:44:21', '2021-04-26 21:44:21'),
(609, 'product::products.tabs.inventory', '2021-04-26 21:44:23', '2021-04-26 21:44:23'),
(610, 'product::products.tabs.price', '2021-04-26 21:44:25', '2021-04-26 21:44:25'),
(611, 'product::products.tabs.related_products', '2021-04-26 21:44:28', '2021-04-26 21:44:28'),
(612, 'product::products.tabs.seo', '2021-04-26 21:44:30', '2021-04-26 21:44:30'),
(613, 'product::products.tabs.up_sells', '2021-04-26 21:44:33', '2021-04-26 21:44:33'),
(614, 'product::sidebar.catalog', '2021-04-26 21:44:36', '2021-04-26 21:44:36'),
(615, 'product::sidebar.products', '2021-04-26 21:44:38', '2021-04-26 21:44:38'),
(616, 'report::admin.filter', '2021-04-26 21:44:40', '2021-04-26 21:44:40'),
(617, 'report::admin.filters.brand', '2021-04-26 21:44:42', '2021-04-26 21:44:42'),
(618, 'report::admin.filters.category', '2021-04-26 21:44:44', '2021-04-26 21:44:44'),
(619, 'report::admin.filters.coupon_code', '2021-04-26 21:44:47', '2021-04-26 21:44:47'),
(620, 'report::admin.filters.customer_email', '2021-04-26 21:44:49', '2021-04-26 21:44:49'),
(621, 'report::admin.filters.customer_name', '2021-04-26 21:44:56', '2021-04-26 21:44:56'),
(622, 'report::admin.filters.date_end', '2021-04-26 21:44:58', '2021-04-26 21:44:58'),
(623, 'report::admin.filters.date_start', '2021-04-26 21:45:01', '2021-04-26 21:45:01'),
(624, 'report::admin.filters.group_by', '2021-04-26 21:45:03', '2021-04-26 21:45:03'),
(625, 'report::admin.filters.groups.days', '2021-04-26 21:45:05', '2021-04-26 21:45:05'),
(626, 'report::admin.filters.groups.months', '2021-04-26 21:45:08', '2021-04-26 21:45:08'),
(627, 'report::admin.filters.groups.weeks', '2021-04-26 21:45:10', '2021-04-26 21:45:10'),
(628, 'report::admin.filters.groups.years', '2021-04-26 21:45:12', '2021-04-26 21:45:12'),
(629, 'report::admin.filters.keyword', '2021-04-26 21:45:14', '2021-04-26 21:45:14'),
(630, 'report::admin.filters.please_select', '2021-04-26 21:45:17', '2021-04-26 21:45:17'),
(631, 'report::admin.filters.product', '2021-04-26 21:45:19', '2021-04-26 21:45:19'),
(632, 'report::admin.filters.quantity_above', '2021-04-26 21:45:21', '2021-04-26 21:45:21'),
(633, 'report::admin.filters.quantity_below', '2021-04-26 21:45:23', '2021-04-26 21:45:23'),
(634, 'report::admin.filters.report_type', '2021-04-26 21:45:26', '2021-04-26 21:45:26'),
(635, 'report::admin.filters.report_types.branded_products_report', '2021-04-26 21:45:29', '2021-04-26 21:45:29'),
(636, 'report::admin.filters.report_types.categorized_products_report', '2021-04-26 21:45:35', '2021-04-26 21:45:35'),
(637, 'report::admin.filters.report_types.coupons_report', '2021-04-26 21:45:42', '2021-04-26 21:45:42'),
(638, 'report::admin.filters.report_types.customers_order_report', '2021-04-26 21:45:58', '2021-04-26 21:45:58'),
(639, 'report::admin.filters.report_types.products_purchase_report', '2021-04-26 21:46:00', '2021-04-26 21:46:00'),
(640, 'report::admin.filters.report_types.products_stock_report', '2021-04-26 21:46:03', '2021-04-26 21:46:03'),
(641, 'report::admin.filters.report_types.products_view_report', '2021-04-26 21:46:08', '2021-04-26 21:46:08'),
(642, 'report::admin.filters.report_types.sales_report', '2021-04-26 21:46:11', '2021-04-26 21:46:11'),
(643, 'report::admin.filters.report_types.search_report', '2021-04-26 21:46:12', '2021-04-26 21:46:12'),
(644, 'report::admin.filters.report_types.shipping_report', '2021-04-26 21:46:15', '2021-04-26 21:46:15'),
(645, 'report::admin.filters.report_types.tagged_products_report', '2021-04-26 21:46:17', '2021-04-26 21:46:17'),
(646, 'report::admin.filters.report_types.tax_report', '2021-04-26 21:46:19', '2021-04-26 21:46:19'),
(647, 'report::admin.filters.report_types.taxed_products_report', '2021-04-26 21:46:21', '2021-04-26 21:46:21'),
(648, 'report::admin.filters.shipping_method', '2021-04-26 21:46:29', '2021-04-26 21:46:29'),
(649, 'report::admin.filters.sku', '2021-04-26 21:46:31', '2021-04-26 21:46:31'),
(650, 'report::admin.filters.status', '2021-04-26 21:46:34', '2021-04-26 21:46:34'),
(651, 'report::admin.filters.stock_availability', '2021-04-26 21:46:36', '2021-04-26 21:46:36'),
(652, 'report::admin.filters.stock_availability_states.in_stock', '2021-04-26 21:46:39', '2021-04-26 21:46:39'),
(653, 'report::admin.filters.stock_availability_states.out_of_stock', '2021-04-26 21:46:42', '2021-04-26 21:46:42'),
(654, 'report::admin.filters.tag', '2021-04-26 21:46:44', '2021-04-26 21:46:44'),
(655, 'report::admin.filters.tax_class', '2021-04-26 21:46:46', '2021-04-26 21:46:46'),
(656, 'report::admin.filters.tax_name', '2021-04-26 21:46:49', '2021-04-26 21:46:49'),
(657, 'report::admin.no_data', '2021-04-26 21:46:51', '2021-04-26 21:46:51'),
(658, 'report::admin.reports', '2021-04-26 21:46:53', '2021-04-26 21:46:53'),
(659, 'report::admin.table.brand', '2021-04-26 21:46:56', '2021-04-26 21:46:56'),
(660, 'report::admin.table.category', '2021-04-26 21:46:59', '2021-04-26 21:46:59'),
(661, 'report::admin.table.coupon_code', '2021-04-26 21:47:07', '2021-04-26 21:47:07'),
(662, 'report::admin.table.coupon_name', '2021-04-26 21:47:08', '2021-04-26 21:47:08'),
(663, 'report::admin.table.customer_email', '2021-04-26 21:47:11', '2021-04-26 21:47:11'),
(664, 'report::admin.table.customer_group', '2021-04-26 21:47:13', '2021-04-26 21:47:13'),
(665, 'report::admin.table.customer_name', '2021-04-26 21:47:15', '2021-04-26 21:47:15'),
(666, 'report::admin.table.date', '2021-04-26 21:47:17', '2021-04-26 21:47:17'),
(667, 'report::admin.table.discount', '2021-04-26 21:47:20', '2021-04-26 21:47:20'),
(668, 'report::admin.table.guest', '2021-04-26 21:47:23', '2021-04-26 21:47:23'),
(669, 'report::admin.table.hits', '2021-04-26 21:47:26', '2021-04-26 21:47:26'),
(670, 'report::admin.table.keyword', '2021-04-26 21:47:29', '2021-04-26 21:47:29'),
(671, 'report::admin.table.orders', '2021-04-26 21:47:32', '2021-04-26 21:47:32'),
(672, 'report::admin.table.product', '2021-04-26 21:47:34', '2021-04-26 21:47:34'),
(673, 'report::admin.table.products', '2021-04-26 21:47:36', '2021-04-26 21:47:36'),
(674, 'report::admin.table.products_count', '2021-04-26 21:47:40', '2021-04-26 21:47:40'),
(675, 'report::admin.table.qty', '2021-04-26 21:47:42', '2021-04-26 21:47:42'),
(676, 'report::admin.table.registered', '2021-04-26 21:47:44', '2021-04-26 21:47:44'),
(677, 'report::admin.table.results', '2021-04-26 21:47:46', '2021-04-26 21:47:46'),
(678, 'report::admin.table.shipping', '2021-04-26 21:47:48', '2021-04-26 21:47:48'),
(679, 'report::admin.table.shipping_method', '2021-04-26 21:47:50', '2021-04-26 21:47:50'),
(680, 'report::admin.table.stock_availability', '2021-04-26 21:47:53', '2021-04-26 21:47:53'),
(681, 'report::admin.table.subtotal', '2021-04-26 21:47:59', '2021-04-26 21:47:59'),
(682, 'report::admin.table.tag', '2021-04-26 21:48:01', '2021-04-26 21:48:01'),
(683, 'report::admin.table.tax', '2021-04-26 21:48:03', '2021-04-26 21:48:03'),
(684, 'report::admin.table.tax_class', '2021-04-26 21:48:06', '2021-04-26 21:48:06'),
(685, 'report::admin.table.tax_name', '2021-04-26 21:48:08', '2021-04-26 21:48:08'),
(686, 'report::admin.table.total', '2021-04-26 21:48:11', '2021-04-26 21:48:11'),
(687, 'report::admin.table.views', '2021-04-26 21:48:13', '2021-04-26 21:48:13'),
(688, 'report::permissions.index', '2021-04-26 21:48:16', '2021-04-26 21:48:16'),
(689, 'report::sidebar.reports', '2021-04-26 21:48:22', '2021-04-26 21:48:22'),
(690, 'review::attributes.captcha', '2021-04-26 21:48:24', '2021-04-26 21:48:24'),
(691, 'review::attributes.comment', '2021-04-26 21:48:26', '2021-04-26 21:48:26'),
(692, 'review::attributes.is_approved', '2021-04-26 21:48:29', '2021-04-26 21:48:29'),
(693, 'review::attributes.rating', '2021-04-26 21:48:31', '2021-04-26 21:48:31'),
(694, 'review::attributes.reviewer_name', '2021-04-26 21:48:34', '2021-04-26 21:48:34'),
(695, 'review::messages.submitted_for_approval', '2021-04-26 21:48:36', '2021-04-26 21:48:36'),
(696, 'review::permissions.destroy', '2021-04-26 21:48:38', '2021-04-26 21:48:38'),
(697, 'review::permissions.edit', '2021-04-26 21:48:41', '2021-04-26 21:48:41'),
(698, 'review::permissions.index', '2021-04-26 21:48:43', '2021-04-26 21:48:43'),
(699, 'review::reviews.form.approve_this_review', '2021-04-26 21:48:46', '2021-04-26 21:48:46'),
(700, 'review::reviews.review', '2021-04-26 21:48:48', '2021-04-26 21:48:48'),
(701, 'review::reviews.table.product', '2021-04-26 22:05:45', '2021-04-26 22:05:45'),
(702, 'review::reviews.shortcuts.back_to_product_edit_page', '2021-04-26 22:05:45', '2021-04-26 22:05:45'),
(703, 'review::reviews.reviews', '2021-04-26 22:05:45', '2021-04-26 22:05:45'),
(704, 'review::reviews.table.approved', '2021-04-26 22:05:45', '2021-04-26 22:05:45'),
(705, 'review::reviews.table.rating', '2021-04-26 22:05:48', '2021-04-26 22:05:48'),
(706, 'review::reviews.table.reviewer_name', '2021-04-26 22:05:53', '2021-04-26 22:05:53'),
(707, 'review::reviews.tabs.general', '2021-04-26 22:05:56', '2021-04-26 22:05:56'),
(708, 'review::reviews.tabs.group.review_information', '2021-04-26 22:05:58', '2021-04-26 22:05:58'),
(709, 'review::reviews.tabs.products.reviews', '2021-04-26 22:06:00', '2021-04-26 22:06:00'),
(710, 'review::sidebar.reviews', '2021-04-26 22:06:03', '2021-04-26 22:06:03'),
(711, 'review::statuses.approved', '2021-04-26 22:06:05', '2021-04-26 22:06:05'),
(712, 'review::statuses.unapproved', '2021-04-26 22:06:09', '2021-04-26 22:06:09'),
(713, 'setting::attributes.admin_order_email', '2021-04-26 22:06:11', '2021-04-26 22:06:11'),
(714, 'setting::attributes.auto_approve_reviews', '2021-04-26 22:06:13', '2021-04-26 22:06:13'),
(715, 'setting::attributes.auto_refresh_currency_rate_frequency', '2021-04-26 22:06:16', '2021-04-26 22:06:16'),
(716, 'setting::attributes.auto_refresh_currency_rates', '2021-04-26 22:06:18', '2021-04-26 22:06:18'),
(717, 'setting::attributes.bank_transfer_enabled', '2021-04-26 22:06:20', '2021-04-26 22:06:20'),
(718, 'setting::attributes.check_payment_enabled', '2021-04-26 22:06:23', '2021-04-26 22:06:23'),
(719, 'setting::attributes.cod_enabled', '2021-04-26 22:06:26', '2021-04-26 22:06:26'),
(720, 'setting::attributes.cookie_bar_enabled', '2021-04-26 22:06:29', '2021-04-26 22:06:29'),
(721, 'setting::attributes.currency_data_feed_api_key', '2021-04-26 22:06:40', '2021-04-26 22:06:40'),
(722, 'setting::attributes.currency_rate_exchange_service', '2021-04-26 22:06:52', '2021-04-26 22:06:52'),
(723, 'setting::attributes.custom_footer_assets', '2021-04-26 22:06:54', '2021-04-26 22:06:54'),
(724, 'setting::attributes.custom_header_assets', '2021-04-26 22:06:58', '2021-04-26 22:06:58'),
(725, 'setting::attributes.customer_role', '2021-04-26 22:07:01', '2021-04-26 22:07:01'),
(726, 'setting::attributes.default_country', '2021-04-26 22:07:04', '2021-04-26 22:07:04'),
(727, 'setting::attributes.default_currency', '2021-04-26 22:07:06', '2021-04-26 22:07:06'),
(728, 'setting::attributes.default_locale', '2021-04-26 22:07:09', '2021-04-26 22:07:09'),
(729, 'setting::attributes.default_timezone', '2021-04-26 22:07:11', '2021-04-26 22:07:11'),
(730, 'setting::attributes.email_order_statuses', '2021-04-26 22:07:14', '2021-04-26 22:07:14'),
(731, 'setting::attributes.facebook_login_app_id', '2021-04-26 22:07:16', '2021-04-26 22:07:16'),
(732, 'setting::attributes.facebook_login_app_secret', '2021-04-26 22:07:19', '2021-04-26 22:07:19'),
(733, 'setting::attributes.facebook_login_enabled', '2021-04-26 22:07:21', '2021-04-26 22:07:21'),
(734, 'setting::attributes.fixer_access_key', '2021-04-26 22:07:23', '2021-04-26 22:07:23'),
(735, 'setting::attributes.flat_rate_cost', '2021-04-26 22:07:25', '2021-04-26 22:07:25'),
(736, 'setting::attributes.flat_rate_enabled', '2021-04-26 22:07:29', '2021-04-26 22:07:29'),
(737, 'setting::attributes.forge_api_key', '2021-04-26 22:07:32', '2021-04-26 22:07:32'),
(738, 'setting::attributes.free_shipping_enabled', '2021-04-26 22:07:35', '2021-04-26 22:07:35'),
(739, 'setting::attributes.free_shipping_min_amount', '2021-04-26 22:07:37', '2021-04-26 22:07:37'),
(740, 'setting::attributes.google_login_client_id', '2021-04-26 22:07:40', '2021-04-26 22:07:40'),
(741, 'setting::attributes.google_login_client_secret', '2021-04-26 22:07:46', '2021-04-26 22:07:46'),
(742, 'setting::attributes.google_login_enabled', '2021-04-26 22:07:49', '2021-04-26 22:07:49'),
(743, 'setting::attributes.instamojo_api_key', '2021-04-26 22:07:51', '2021-04-26 22:07:51'),
(744, 'setting::attributes.instamojo_auth_token', '2021-04-26 22:07:54', '2021-04-26 22:07:54'),
(745, 'setting::attributes.instamojo_description', '2021-04-26 22:07:57', '2021-04-26 22:07:57'),
(746, 'setting::attributes.instamojo_enabled', '2021-04-26 22:07:59', '2021-04-26 22:07:59'),
(747, 'setting::attributes.instamojo_label', '2021-04-26 22:08:02', '2021-04-26 22:08:02'),
(748, 'setting::attributes.instamojo_test_mode', '2021-04-26 22:08:04', '2021-04-26 22:08:04'),
(749, 'setting::attributes.invoice_email', '2021-04-26 22:08:08', '2021-04-26 22:08:08'),
(750, 'setting::attributes.local_pickup_cost', '2021-04-26 22:08:10', '2021-04-26 22:08:10'),
(751, 'setting::attributes.local_pickup_enabled', '2021-04-26 22:08:12', '2021-04-26 22:08:12'),
(752, 'setting::attributes.mail_encryption', '2021-04-26 22:08:14', '2021-04-26 22:08:14'),
(753, 'setting::attributes.mail_from_address', '2021-04-26 22:08:17', '2021-04-26 22:08:17'),
(754, 'setting::attributes.mail_from_name', '2021-04-26 22:08:19', '2021-04-26 22:08:19'),
(755, 'setting::attributes.mail_host', '2021-04-26 22:08:21', '2021-04-26 22:08:21'),
(756, 'setting::attributes.mail_password', '2021-04-26 22:08:24', '2021-04-26 22:08:24'),
(757, 'setting::attributes.mail_port', '2021-04-26 22:08:27', '2021-04-26 22:08:27'),
(758, 'setting::attributes.mail_username', '2021-04-26 22:08:29', '2021-04-26 22:08:29'),
(759, 'setting::attributes.mailchimp_api_key', '2021-04-26 22:08:31', '2021-04-26 22:08:31'),
(760, 'setting::attributes.mailchimp_list_id', '2021-04-26 22:08:34', '2021-04-26 22:08:34'),
(761, 'setting::attributes.maintenance_mode', '2021-04-26 22:08:49', '2021-04-26 22:08:49'),
(762, 'setting::attributes.new_order_admin_sms', '2021-04-26 22:08:49', '2021-04-26 22:08:49'),
(763, 'setting::attributes.newsletter_enabled', '2021-04-26 22:08:49', '2021-04-26 22:08:49'),
(764, 'setting::attributes.new_order_sms', '2021-04-26 22:08:49', '2021-04-26 22:08:49'),
(765, 'setting::attributes.paypal_client_id', '2021-04-26 22:08:51', '2021-04-26 22:08:51'),
(766, 'setting::attributes.paypal_enabled', '2021-04-26 22:08:56', '2021-04-26 22:08:56'),
(767, 'setting::attributes.paypal_secret', '2021-04-26 22:08:58', '2021-04-26 22:08:58'),
(768, 'setting::attributes.paypal_test_mode', '2021-04-26 22:09:00', '2021-04-26 22:09:00'),
(769, 'setting::attributes.paytm_enabled', '2021-04-26 22:09:03', '2021-04-26 22:09:03'),
(770, 'setting::attributes.paytm_merchant_id', '2021-04-26 22:09:05', '2021-04-26 22:09:05'),
(771, 'setting::attributes.paytm_merchant_key', '2021-04-26 22:09:08', '2021-04-26 22:09:08'),
(772, 'setting::attributes.paytm_test_mode', '2021-04-26 22:09:10', '2021-04-26 22:09:10'),
(773, 'setting::attributes.razorpay_description', '2021-04-26 22:09:12', '2021-04-26 22:09:12'),
(774, 'setting::attributes.razorpay_enabled', '2021-04-26 22:09:14', '2021-04-26 22:09:14'),
(775, 'setting::attributes.razorpay_key_id', '2021-04-26 22:09:17', '2021-04-26 22:09:17'),
(776, 'setting::attributes.razorpay_key_secret', '2021-04-26 22:09:19', '2021-04-26 22:09:19'),
(777, 'setting::attributes.razorpay_label', '2021-04-26 22:09:21', '2021-04-26 22:09:21'),
(778, 'setting::attributes.reviews_enabled', '2021-04-26 22:09:23', '2021-04-26 22:09:23'),
(779, 'setting::attributes.sms_from', '2021-04-26 22:09:26', '2021-04-26 22:09:26'),
(780, 'setting::attributes.sms_order_statuses', '2021-04-26 22:09:28', '2021-04-26 22:09:28'),
(781, 'setting::attributes.sms_service', '2021-04-26 22:09:37', '2021-04-26 22:09:37'),
(782, 'setting::attributes.store_address_1', '2021-04-26 22:09:39', '2021-04-26 22:09:39'),
(783, 'setting::attributes.store_address_2', '2021-04-26 22:09:41', '2021-04-26 22:09:41'),
(784, 'setting::attributes.store_city', '2021-04-26 22:09:43', '2021-04-26 22:09:43'),
(785, 'setting::attributes.store_country', '2021-04-26 22:09:46', '2021-04-26 22:09:46'),
(786, 'setting::attributes.store_email', '2021-04-26 22:09:49', '2021-04-26 22:09:49'),
(787, 'setting::attributes.store_email_hide', '2021-04-26 22:09:51', '2021-04-26 22:09:51'),
(788, 'setting::attributes.store_phone', '2021-04-26 22:09:53', '2021-04-26 22:09:53'),
(789, 'setting::attributes.store_phone_hide', '2021-04-26 22:09:55', '2021-04-26 22:09:55'),
(790, 'setting::attributes.store_state', '2021-04-26 22:09:58', '2021-04-26 22:09:58'),
(791, 'setting::attributes.store_zip', '2021-04-26 22:10:01', '2021-04-26 22:10:01'),
(792, 'setting::attributes.stripe_enabled', '2021-04-26 22:10:03', '2021-04-26 22:10:03'),
(793, 'setting::attributes.stripe_publishable_key', '2021-04-26 22:10:06', '2021-04-26 22:10:06'),
(794, 'setting::attributes.stripe_secret_key', '2021-04-26 22:10:09', '2021-04-26 22:10:09'),
(795, 'setting::attributes.supported_countries', '2021-04-26 22:10:12', '2021-04-26 22:10:12'),
(796, 'setting::attributes.supported_countries.*', '2021-04-26 22:10:23', '2021-04-26 22:10:23'),
(797, 'setting::attributes.supported_currencies', '2021-04-26 22:10:28', '2021-04-26 22:10:28'),
(798, 'setting::attributes.supported_currencies.*', '2021-04-26 22:10:37', '2021-04-26 22:10:37'),
(799, 'setting::attributes.supported_locales', '2021-04-26 22:10:39', '2021-04-26 22:10:39'),
(800, 'setting::attributes.supported_locales.*', '2021-04-26 22:10:42', '2021-04-26 22:10:42'),
(801, 'setting::attributes.translatable.bank_transfer_description', '2021-04-26 22:10:51', '2021-04-26 22:10:51'),
(802, 'setting::attributes.translatable.bank_transfer_instructions', '2021-04-26 22:10:53', '2021-04-26 22:10:53'),
(803, 'setting::attributes.translatable.bank_transfer_label', '2021-04-26 22:10:55', '2021-04-26 22:10:55'),
(804, 'setting::attributes.translatable.check_payment_description', '2021-04-26 22:10:57', '2021-04-26 22:10:57'),
(805, 'setting::attributes.translatable.check_payment_instructions', '2021-04-26 22:10:59', '2021-04-26 22:10:59'),
(806, 'setting::attributes.translatable.check_payment_label', '2021-04-26 22:11:02', '2021-04-26 22:11:02'),
(807, 'setting::attributes.translatable.cod_description', '2021-04-26 22:11:05', '2021-04-26 22:11:05'),
(808, 'setting::attributes.translatable.cod_label', '2021-04-26 22:11:08', '2021-04-26 22:11:08'),
(809, 'setting::attributes.translatable.flat_rate_label', '2021-04-26 22:11:09', '2021-04-26 22:11:09'),
(810, 'setting::attributes.translatable.free_shipping_label', '2021-04-26 22:11:11', '2021-04-26 22:11:11'),
(811, 'setting::attributes.translatable.local_pickup_label', '2021-04-26 22:11:14', '2021-04-26 22:11:14'),
(812, 'setting::attributes.translatable.paypal_description', '2021-04-26 22:11:17', '2021-04-26 22:11:17'),
(813, 'setting::attributes.translatable.paypal_label', '2021-04-26 22:11:20', '2021-04-26 22:11:20'),
(814, 'setting::attributes.translatable.paytm_description', '2021-04-26 22:11:23', '2021-04-26 22:11:23'),
(815, 'setting::attributes.translatable.paytm_label', '2021-04-26 22:11:27', '2021-04-26 22:11:27'),
(816, 'setting::attributes.translatable.store_name', '2021-04-26 22:11:29', '2021-04-26 22:11:29'),
(817, 'setting::attributes.translatable.store_tagline', '2021-04-26 22:11:31', '2021-04-26 22:11:31'),
(818, 'setting::attributes.translatable.stripe_description', '2021-04-26 22:11:34', '2021-04-26 22:11:34'),
(819, 'setting::attributes.translatable.stripe_label', '2021-04-26 22:11:36', '2021-04-26 22:11:36'),
(820, 'setting::attributes.twilio_sid', '2021-04-26 22:11:39', '2021-04-26 22:11:39'),
(821, 'setting::attributes.twilio_token', '2021-04-26 22:11:52', '2021-04-26 22:11:52'),
(822, 'setting::attributes.vonage_key', '2021-04-26 22:11:54', '2021-04-26 22:11:54'),
(823, 'setting::attributes.vonage_secret', '2021-04-26 22:11:57', '2021-04-26 22:11:57'),
(824, 'setting::attributes.welcome_email', '2021-04-26 22:11:59', '2021-04-26 22:11:59'),
(825, 'setting::attributes.welcome_sms', '2021-04-26 22:12:02', '2021-04-26 22:12:02'),
(826, 'setting::messages.settings_have_been_saved', '2021-04-26 22:12:04', '2021-04-26 22:12:04'),
(827, 'setting::permissions.edit', '2021-04-26 22:12:07', '2021-04-26 22:12:07'),
(828, 'setting::settings.form.allow_customers_to_subscribe', '2021-04-26 22:12:09', '2021-04-26 22:12:09'),
(829, 'setting::settings.form.allow_reviews', '2021-04-26 22:12:12', '2021-04-26 22:12:12'),
(830, 'setting::settings.form.approve_reviews_automatically', '2021-04-26 22:12:14', '2021-04-26 22:12:14'),
(831, 'setting::settings.form.auto_refresh_currency_rate_frequencies.daily', '2021-04-26 22:12:17', '2021-04-26 22:12:17'),
(832, 'setting::settings.form.auto_refresh_currency_rate_frequencies.monthly', '2021-04-26 22:12:19', '2021-04-26 22:12:19'),
(833, 'setting::settings.form.auto_refresh_currency_rate_frequencies.weekly', '2021-04-26 22:12:22', '2021-04-26 22:12:22'),
(834, 'setting::settings.form.customer_notification_settings', '2021-04-26 22:12:25', '2021-04-26 22:12:25'),
(835, 'setting::settings.form.enable_auto_refreshing_currency_rates', '2021-04-26 22:12:27', '2021-04-26 22:12:27'),
(836, 'setting::settings.form.enable_bank_transfer', '2021-04-26 22:12:29', '2021-04-26 22:12:29'),
(837, 'setting::settings.form.enable_check_payment', '2021-04-26 22:12:32', '2021-04-26 22:12:32'),
(838, 'setting::settings.form.enable_cod', '2021-04-26 22:12:34', '2021-04-26 22:12:34'),
(839, 'setting::settings.form.enable_facebook_login', '2021-04-26 22:12:36', '2021-04-26 22:12:36'),
(840, 'setting::settings.form.enable_flat_rate', '2021-04-26 22:12:39', '2021-04-26 22:12:39'),
(841, 'setting::settings.form.enable_free_shipping', '2021-04-26 22:13:16', '2021-04-26 22:13:16'),
(842, 'setting::settings.form.enable_google_login', '2021-04-26 22:13:19', '2021-04-26 22:13:19'),
(843, 'setting::settings.form.enable_instamojo', '2021-04-26 22:13:21', '2021-04-26 22:13:21'),
(844, 'setting::settings.form.enable_local_pickup', '2021-04-26 22:13:23', '2021-04-26 22:13:23'),
(845, 'setting::settings.form.enable_paypal', '2021-04-26 22:13:27', '2021-04-26 22:13:27'),
(846, 'setting::settings.form.enable_paytm', '2021-04-26 22:13:29', '2021-04-26 22:13:29'),
(847, 'setting::settings.form.enable_razorpay', '2021-04-26 22:13:31', '2021-04-26 22:13:31'),
(848, 'setting::settings.form.enable_stripe', '2021-04-26 22:13:34', '2021-04-26 22:13:34'),
(849, 'setting::settings.form.hide_store_email', '2021-04-26 22:13:36', '2021-04-26 22:13:36'),
(850, 'setting::settings.form.hide_store_phone', '2021-04-26 22:13:39', '2021-04-26 22:13:39'),
(851, 'setting::settings.form.ip_addreses_seperated_in_new_line', '2021-04-26 22:13:41', '2021-04-26 22:13:41'),
(852, 'setting::settings.form.mail_encryption_protocols.ssl', '2021-04-26 22:13:43', '2021-04-26 22:13:43'),
(853, 'setting::settings.form.mail_encryption_protocols.tls', '2021-04-26 22:13:46', '2021-04-26 22:13:46'),
(854, 'setting::settings.form.order_notification_settings', '2021-04-26 22:13:49', '2021-04-26 22:13:49'),
(855, 'setting::settings.form.privacy_settings', '2021-04-26 22:13:51', '2021-04-26 22:13:51'),
(856, 'setting::settings.form.put_the_application_into_maintenance_mode', '2021-04-26 22:13:54', '2021-04-26 22:13:54'),
(857, 'setting::settings.form.select_service', '2021-04-26 22:13:56', '2021-04-26 22:13:56'),
(858, 'setting::settings.form.send_invoice_email', '2021-04-26 22:13:59', '2021-04-26 22:13:59'),
(859, 'setting::settings.form.send_new_order_notification_to_admin', '2021-04-26 22:14:01', '2021-04-26 22:14:01'),
(860, 'setting::settings.form.send_new_order_notification_to_customer', '2021-04-26 22:14:04', '2021-04-26 22:14:04'),
(861, 'setting::settings.form.send_welcome_email_after_registration', '2021-04-26 22:14:10', '2021-04-26 22:14:10'),
(862, 'setting::settings.form.send_welcome_sms_after_registration', '2021-04-26 22:14:12', '2021-04-26 22:14:12'),
(863, 'setting::settings.form.show_cookie_bar', '2021-04-26 22:14:14', '2021-04-26 22:14:14'),
(864, 'setting::settings.form.use_sandbox_for_test_payments', '2021-04-26 22:14:16', '2021-04-26 22:14:16'),
(865, 'setting::settings.settings', '2021-04-26 22:14:18', '2021-04-26 22:14:18'),
(866, 'setting::settings.tabs.bank_transfer', '2021-04-26 22:14:21', '2021-04-26 22:14:21'),
(867, 'setting::settings.tabs.check_payment', '2021-04-26 22:14:23', '2021-04-26 22:14:23'),
(868, 'setting::settings.tabs.cod', '2021-04-26 22:14:26', '2021-04-26 22:14:26'),
(869, 'setting::settings.tabs.currency', '2021-04-26 22:14:29', '2021-04-26 22:14:29'),
(870, 'setting::settings.tabs.flat_rate', '2021-04-26 22:14:41', '2021-04-26 22:14:41'),
(871, 'setting::settings.tabs.facebook', '2021-04-26 22:14:41', '2021-04-26 22:14:41'),
(872, 'setting::settings.tabs.custom_css_js', '2021-04-26 22:14:41', '2021-04-26 22:14:41'),
(873, 'setting::settings.tabs.free_shipping', '2021-04-26 22:14:41', '2021-04-26 22:14:41'),
(874, 'setting::settings.tabs.general', '2021-04-26 22:14:48', '2021-04-26 22:14:48'),
(875, 'setting::settings.tabs.google', '2021-04-26 22:14:50', '2021-04-26 22:14:50'),
(876, 'setting::settings.tabs.group.general_settings', '2021-04-26 22:14:52', '2021-04-26 22:14:52'),
(877, 'setting::settings.tabs.group.payment_methods', '2021-04-26 22:14:54', '2021-04-26 22:14:54'),
(878, 'setting::settings.tabs.group.shipping_methods', '2021-04-26 22:14:56', '2021-04-26 22:14:56'),
(879, 'setting::settings.tabs.group.social_logins', '2021-04-26 22:14:59', '2021-04-26 22:14:59'),
(880, 'setting::settings.tabs.instamojo', '2021-04-26 22:15:02', '2021-04-26 22:15:02'),
(881, 'setting::settings.tabs.local_pickup', '2021-04-26 22:15:10', '2021-04-26 22:15:10'),
(882, 'setting::settings.tabs.mail', '2021-04-26 22:15:12', '2021-04-26 22:15:12'),
(883, 'setting::settings.tabs.maintenance', '2021-04-26 22:15:14', '2021-04-26 22:15:14'),
(884, 'setting::settings.tabs.newsletter', '2021-04-26 22:15:16', '2021-04-26 22:15:16'),
(885, 'setting::settings.tabs.paypal', '2021-04-26 22:15:20', '2021-04-26 22:15:20'),
(886, 'setting::settings.tabs.paytm', '2021-04-26 22:15:23', '2021-04-26 22:15:23'),
(887, 'setting::settings.tabs.razorpay', '2021-04-26 22:15:25', '2021-04-26 22:15:25'),
(888, 'setting::settings.tabs.sms', '2021-04-26 22:15:28', '2021-04-26 22:15:28'),
(889, 'setting::settings.tabs.store', '2021-04-26 22:15:31', '2021-04-26 22:15:31'),
(890, 'setting::settings.tabs.stripe', '2021-04-26 22:15:33', '2021-04-26 22:15:33'),
(891, 'setting::settings.validation.sqlite_is_not_installed', '2021-04-26 22:15:36', '2021-04-26 22:15:36'),
(892, 'setting::sidebar.general', '2021-04-26 22:15:38', '2021-04-26 22:15:38'),
(893, 'setting::sidebar.settings', '2021-04-26 22:15:40', '2021-04-26 22:15:40'),
(894, 'slider::attributes.arrows', '2021-04-26 22:15:45', '2021-04-26 22:15:45'),
(895, 'slider::attributes.autoplay', '2021-04-26 22:15:47', '2021-04-26 22:15:47'),
(896, 'slider::attributes.autoplay_speed', '2021-04-26 22:15:49', '2021-04-26 22:15:49'),
(897, 'slider::attributes.call_to_action_delay', '2021-04-26 22:15:52', '2021-04-26 22:15:52'),
(898, 'slider::attributes.call_to_action_effect', '2021-04-26 22:15:55', '2021-04-26 22:15:55'),
(899, 'slider::attributes.call_to_action_text', '2021-04-26 22:15:58', '2021-04-26 22:15:58'),
(900, 'slider::attributes.call_to_action_url', '2021-04-26 22:16:01', '2021-04-26 22:16:01'),
(901, 'slider::attributes.caption_1', '2021-04-26 22:16:10', '2021-04-26 22:16:10'),
(902, 'slider::attributes.caption_1_delay', '2021-04-26 22:16:10', '2021-04-26 22:16:10'),
(903, 'slider::attributes.caption_1_effect', '2021-04-26 22:16:12', '2021-04-26 22:16:12'),
(904, 'slider::attributes.caption_2', '2021-04-26 22:16:15', '2021-04-26 22:16:15'),
(905, 'slider::attributes.caption_2_delay', '2021-04-26 22:16:17', '2021-04-26 22:16:17'),
(906, 'slider::attributes.caption_2_effect', '2021-04-26 22:16:20', '2021-04-26 22:16:20'),
(907, 'slider::attributes.direction', '2021-04-26 22:16:23', '2021-04-26 22:16:23'),
(908, 'slider::attributes.dots', '2021-04-26 22:16:25', '2021-04-26 22:16:25'),
(909, 'slider::attributes.fade', '2021-04-26 22:16:32', '2021-04-26 22:16:32'),
(910, 'slider::attributes.name', '2021-04-26 22:16:34', '2021-04-26 22:16:34'),
(911, 'slider::attributes.open_in_new_window', '2021-04-26 22:16:37', '2021-04-26 22:16:37'),
(912, 'slider::attributes.speed', '2021-04-26 22:16:39', '2021-04-26 22:16:39'),
(913, 'slider::permissions.create', '2021-04-26 22:16:41', '2021-04-26 22:16:41'),
(914, 'slider::permissions.destroy', '2021-04-26 22:16:44', '2021-04-26 22:16:44'),
(915, 'slider::permissions.edit', '2021-04-26 22:16:46', '2021-04-26 22:16:46'),
(916, 'slider::permissions.index', '2021-04-26 22:16:49', '2021-04-26 22:16:49'),
(917, 'slider::sliders.effects.fadeInDown', '2021-04-26 22:16:51', '2021-04-26 22:16:51'),
(918, 'slider::sliders.effects.fadeInLeft', '2021-04-26 22:16:54', '2021-04-26 22:16:54'),
(919, 'slider::sliders.effects.fadeInRight', '2021-04-26 22:16:56', '2021-04-26 22:16:56'),
(920, 'slider::sliders.effects.fadeInUp', '2021-04-26 22:17:00', '2021-04-26 22:17:00'),
(921, 'slider::sliders.effects.slideInDown', '2021-04-26 22:17:20', '2021-04-26 22:17:20'),
(922, 'slider::sliders.effects.lightSpeedIn', '2021-04-26 22:17:20', '2021-04-26 22:17:20'),
(923, 'slider::sliders.effects.slideInLeft', '2021-04-26 22:17:20', '2021-04-26 22:17:20'),
(924, 'slider::sliders.effects.slideInRight', '2021-04-26 22:17:21', '2021-04-26 22:17:21'),
(925, 'slider::sliders.effects.slideInUp', '2021-04-26 22:17:23', '2021-04-26 22:17:23'),
(926, 'slider::sliders.effects.zoomIn', '2021-04-26 22:17:26', '2021-04-26 22:17:26'),
(927, 'slider::sliders.form.3000ms', '2021-04-26 22:17:28', '2021-04-26 22:17:28'),
(928, 'slider::sliders.form.300ms', '2021-04-26 22:17:30', '2021-04-26 22:17:30'),
(929, 'slider::sliders.form.enable_autoplay', '2021-04-26 22:17:34', '2021-04-26 22:17:34'),
(930, 'slider::sliders.form.show_arrows', '2021-04-26 22:17:37', '2021-04-26 22:17:37'),
(931, 'slider::sliders.form.show_dots', '2021-04-26 22:17:39', '2021-04-26 22:17:39'),
(932, 'slider::sliders.form.use_fade_instead_of_slide', '2021-04-26 22:17:41', '2021-04-26 22:17:41'),
(933, 'slider::sliders.slide.add_slide', '2021-04-26 22:17:45', '2021-04-26 22:17:45'),
(934, 'slider::sliders.slide.form.0_3s', '2021-04-26 22:17:49', '2021-04-26 22:17:49'),
(935, 'slider::sliders.slide.form.0_7s', '2021-04-26 22:17:51', '2021-04-26 22:17:51'),
(936, 'slider::sliders.slide.form.0s', '2021-04-26 22:17:54', '2021-04-26 22:17:54'),
(937, 'slider::sliders.slide.form.call_to_action', '2021-04-26 22:17:57', '2021-04-26 22:17:57'),
(938, 'slider::sliders.slide.form.call_to_action_url', '2021-04-26 22:17:59', '2021-04-26 22:17:59'),
(939, 'slider::sliders.slide.form.caption_1', '2021-04-26 22:18:01', '2021-04-26 22:18:01'),
(940, 'slider::sliders.slide.form.caption_2', '2021-04-26 22:18:04', '2021-04-26 22:18:04'),
(941, 'slider::sliders.slide.form.directions.left', '2021-04-26 22:18:12', '2021-04-26 22:18:12'),
(942, 'slider::sliders.slide.form.directions.right', '2021-04-26 22:18:14', '2021-04-26 22:18:14'),
(943, 'slider::sliders.slide.form.open_in_new_window', '2021-04-26 22:18:16', '2021-04-26 22:18:16'),
(944, 'slider::sliders.slide.form.tabs.general', '2021-04-26 22:18:18', '2021-04-26 22:18:18'),
(945, 'slider::sliders.slide.form.tabs.options', '2021-04-26 22:18:21', '2021-04-26 22:18:21'),
(946, 'slider::sliders.slide.image_slide', '2021-04-26 22:18:23', '2021-04-26 22:18:23'),
(947, 'slider::sliders.slider', '2021-04-26 22:18:25', '2021-04-26 22:18:25'),
(948, 'slider::sliders.sliders', '2021-04-26 22:18:26', '2021-04-26 22:18:26'),
(949, 'slider::sliders.table.name', '2021-04-26 22:18:29', '2021-04-26 22:18:29'),
(950, 'slider::sliders.tabs.group.slider_information', '2021-04-26 22:18:31', '2021-04-26 22:18:31'),
(951, 'slider::sliders.tabs.settings', '2021-04-26 22:18:34', '2021-04-26 22:18:34'),
(952, 'slider::sliders.tabs.slides', '2021-04-26 22:18:36', '2021-04-26 22:18:36'),
(953, 'sms::messages.new_order', '2021-04-26 22:18:38', '2021-04-26 22:18:38'),
(954, 'sms::messages.order_has_been_placed', '2021-04-26 22:18:41', '2021-04-26 22:18:41'),
(955, 'sms::messages.order_status_changed', '2021-04-26 22:18:43', '2021-04-26 22:18:43'),
(956, 'sms::messages.welcome', '2021-04-26 22:18:45', '2021-04-26 22:18:45'),
(957, 'sms::services.twilio', '2021-04-26 22:18:49', '2021-04-26 22:18:49'),
(958, 'sms::services.vonage', '2021-04-26 22:18:52', '2021-04-26 22:18:52'),
(959, 'storefront::404.404', '2021-04-26 22:18:56', '2021-04-26 22:18:56'),
(960, 'storefront::404.back_to_home', '2021-04-26 22:18:58', '2021-04-26 22:18:58'),
(961, 'storefront::404.page_not_found', '2021-04-26 22:19:04', '2021-04-26 22:19:04'),
(962, 'storefront::404.unable_to_find_the_page', '2021-04-26 22:19:06', '2021-04-26 22:19:06'),
(963, 'storefront::account.action', '2021-04-26 22:19:09', '2021-04-26 22:19:09'),
(964, 'storefront::account.addresses.add_new_address', '2021-04-26 22:19:11', '2021-04-26 22:19:11'),
(965, 'storefront::account.addresses.address_line_1', '2021-04-26 22:19:13', '2021-04-26 22:19:13'),
(966, 'storefront::account.addresses.address_line_2', '2021-04-26 22:19:16', '2021-04-26 22:19:16'),
(967, 'storefront::account.addresses.cancel', '2021-04-26 22:19:18', '2021-04-26 22:19:18'),
(968, 'storefront::account.addresses.city', '2021-04-26 22:19:20', '2021-04-26 22:19:20'),
(969, 'storefront::account.addresses.confirm', '2021-04-26 22:19:22', '2021-04-26 22:19:22'),
(970, 'storefront::account.addresses.country', '2021-04-26 22:19:25', '2021-04-26 22:19:25'),
(971, 'storefront::account.addresses.delete', '2021-04-26 22:19:27', '2021-04-26 22:19:27'),
(972, 'storefront::account.addresses.edit', '2021-04-26 22:19:32', '2021-04-26 22:19:32'),
(973, 'storefront::account.addresses.first_name', '2021-04-26 22:19:34', '2021-04-26 22:19:34'),
(974, 'storefront::account.addresses.last_name', '2021-04-26 22:19:36', '2021-04-26 22:19:36'),
(975, 'storefront::account.addresses.new_address', '2021-04-26 22:19:39', '2021-04-26 22:19:39'),
(976, 'storefront::account.addresses.please_select', '2021-04-26 22:19:42', '2021-04-26 22:19:42'),
(977, 'storefront::account.addresses.save_address', '2021-04-26 22:19:45', '2021-04-26 22:19:45'),
(978, 'storefront::account.addresses.state', '2021-04-26 22:19:47', '2021-04-26 22:19:47'),
(979, 'storefront::account.addresses.street_address', '2021-04-26 22:19:50', '2021-04-26 22:19:50'),
(980, 'storefront::account.addresses.zip', '2021-04-26 22:19:52', '2021-04-26 22:19:52'),
(981, 'storefront::account.dashboard.account_information', '2021-04-26 22:20:00', '2021-04-26 22:20:00'),
(982, 'storefront::account.dashboard.edit', '2021-04-26 22:20:02', '2021-04-26 22:20:02'),
(983, 'storefront::account.dashboard.recent_orders', '2021-04-26 22:20:04', '2021-04-26 22:20:04'),
(984, 'storefront::account.dashboard.view_all', '2021-04-26 22:20:06', '2021-04-26 22:20:06'),
(985, 'storefront::account.date', '2021-04-26 22:20:08', '2021-04-26 22:20:08'),
(986, 'storefront::account.downloads.download', '2021-04-26 22:20:11', '2021-04-26 22:20:11'),
(987, 'storefront::account.downloads.filename', '2021-04-26 22:20:13', '2021-04-26 22:20:13'),
(988, 'storefront::account.downloads.no_downloadable_files', '2021-04-26 22:20:15', '2021-04-26 22:20:15'),
(989, 'storefront::account.downloads.no_file_found', '2021-04-26 22:20:17', '2021-04-26 22:20:17'),
(990, 'storefront::account.image', '2021-04-26 22:20:20', '2021-04-26 22:20:20'),
(991, 'storefront::account.orders.no_orders', '2021-04-26 22:20:25', '2021-04-26 22:20:25'),
(992, 'storefront::account.orders.order_id', '2021-04-26 22:20:27', '2021-04-26 22:20:27'),
(993, 'storefront::account.orders.total', '2021-04-26 22:20:29', '2021-04-26 22:20:29'),
(994, 'storefront::account.orders.view', '2021-04-26 22:20:31', '2021-04-26 22:20:31'),
(995, 'storefront::account.orders.view_order', '2021-04-26 22:20:34', '2021-04-26 22:20:34'),
(996, 'storefront::account.pages.dashboard', '2021-04-26 22:20:36', '2021-04-26 22:20:36'),
(997, 'storefront::account.pages.logout', '2021-04-26 22:20:38', '2021-04-26 22:20:38'),
(998, 'storefront::account.pages.my_account', '2021-04-26 22:20:40', '2021-04-26 22:20:40'),
(999, 'storefront::account.pages.my_addresses', '2021-04-26 22:20:42', '2021-04-26 22:20:42'),
(1000, 'storefront::account.pages.my_downloads', '2021-04-26 22:20:45', '2021-04-26 22:20:45'),
(1001, 'storefront::account.pages.my_orders', '2021-04-26 22:20:51', '2021-04-26 22:20:51'),
(1002, 'storefront::account.pages.my_profile', '2021-04-26 22:20:53', '2021-04-26 22:20:53'),
(1003, 'storefront::account.pages.my_reviews', '2021-04-26 22:20:55', '2021-04-26 22:20:55'),
(1004, 'storefront::account.pages.my_wishlist', '2021-04-26 22:20:57', '2021-04-26 22:20:57'),
(1005, 'storefront::account.product_name', '2021-04-26 22:20:58', '2021-04-26 22:20:58'),
(1006, 'storefront::account.profile.account', '2021-04-26 22:21:00', '2021-04-26 22:21:00'),
(1007, 'storefront::account.profile.confirm_password', '2021-04-26 22:21:02', '2021-04-26 22:21:02'),
(1008, 'storefront::account.profile.email', '2021-04-26 22:21:05', '2021-04-26 22:21:05'),
(1009, 'storefront::account.profile.first_name', '2021-04-26 22:21:07', '2021-04-26 22:21:07'),
(1010, 'storefront::account.profile.last_name', '2021-04-26 22:21:11', '2021-04-26 22:21:11'),
(1011, 'storefront::account.profile.new_password', '2021-04-26 22:21:13', '2021-04-26 22:21:13'),
(1012, 'storefront::account.profile.password', '2021-04-26 22:21:15', '2021-04-26 22:21:15'),
(1013, 'storefront::account.profile.phone', '2021-04-26 22:21:17', '2021-04-26 22:21:17'),
(1014, 'storefront::account.profile.save_changes', '2021-04-26 22:21:19', '2021-04-26 22:21:19'),
(1015, 'storefront::account.reviews.no_reviews', '2021-04-26 22:21:22', '2021-04-26 22:21:22'),
(1016, 'storefront::account.reviews.rating', '2021-04-26 22:21:24', '2021-04-26 22:21:24'),
(1017, 'storefront::account.status', '2021-04-26 22:21:27', '2021-04-26 22:21:27'),
(1018, 'storefront::account.view_order.billing_address', '2021-04-26 22:21:29', '2021-04-26 22:21:29'),
(1019, 'storefront::account.view_order.coupon', '2021-04-26 22:21:31', '2021-04-26 22:21:31'),
(1020, 'storefront::account.view_order.date', '2021-04-26 22:21:34', '2021-04-26 22:21:34'),
(1021, 'storefront::account.view_order.email', '2021-04-26 22:21:48', '2021-04-26 22:21:48'),
(1022, 'storefront::account.view_order.line_total', '2021-04-26 22:21:50', '2021-04-26 22:21:50'),
(1023, 'storefront::account.view_order.order_information', '2021-04-26 22:21:52', '2021-04-26 22:21:52'),
(1024, 'storefront::account.view_order.order_note', '2021-04-26 22:21:54', '2021-04-26 22:21:54'),
(1025, 'storefront::account.view_order.payment_method', '2021-04-26 22:21:56', '2021-04-26 22:21:56'),
(1026, 'storefront::account.view_order.phone', '2021-04-26 22:21:58', '2021-04-26 22:21:58'),
(1027, 'storefront::account.view_order.quantity', '2021-04-26 22:22:01', '2021-04-26 22:22:01'),
(1028, 'storefront::account.view_order.shipping_address', '2021-04-26 22:22:03', '2021-04-26 22:22:03'),
(1029, 'storefront::account.view_order.shipping_method', '2021-04-26 22:22:05', '2021-04-26 22:22:05'),
(1030, 'storefront::account.view_order.subtotal', '2021-04-26 22:22:07', '2021-04-26 22:22:07'),
(1031, 'storefront::account.view_order.total', '2021-04-26 22:22:09', '2021-04-26 22:22:09'),
(1032, 'storefront::account.view_order.unit_price', '2021-04-26 22:22:11', '2021-04-26 22:22:11'),
(1033, 'storefront::account.view_order.view_order', '2021-04-26 22:22:14', '2021-04-26 22:22:14'),
(1034, 'storefront::account.wishlist.availability', '2021-04-26 22:22:17', '2021-04-26 22:22:17'),
(1035, 'storefront::account.wishlist.delete', '2021-04-26 22:22:20', '2021-04-26 22:22:20'),
(1036, 'storefront::account.wishlist.empty_wishlist', '2021-04-26 22:22:22', '2021-04-26 22:22:22'),
(1037, 'storefront::account.wishlist.in_stock', '2021-04-26 22:22:24', '2021-04-26 22:22:24'),
(1038, 'storefront::account.wishlist.out_of_stock', '2021-04-26 22:22:27', '2021-04-26 22:22:27'),
(1039, 'storefront::account.wishlist.price', '2021-04-26 22:22:29', '2021-04-26 22:22:29'),
(1040, 'storefront::attributes.call_to_action_text', '2021-04-26 22:22:33', '2021-04-26 22:22:33'),
(1041, 'storefront::attributes.call_to_action_url', '2021-04-27 04:12:05', '2021-04-27 04:12:05'),
(1042, 'storefront::attributes.caption_1', '2021-04-27 04:12:08', '2021-04-27 04:12:08'),
(1043, 'storefront::attributes.caption_2', '2021-04-27 04:12:11', '2021-04-27 04:12:11'),
(1044, 'storefront::attributes.category', '2021-04-27 04:12:13', '2021-04-27 04:12:13'),
(1045, 'storefront::attributes.enabled', '2021-04-27 04:12:16', '2021-04-27 04:12:16'),
(1046, 'storefront::attributes.icon', '2021-04-27 04:12:19', '2021-04-27 04:12:19'),
(1047, 'storefront::attributes.open_in_new_window', '2021-04-27 04:12:22', '2021-04-27 04:12:22'),
(1048, 'storefront::attributes.products', '2021-04-27 04:12:25', '2021-04-27 04:12:25'),
(1049, 'storefront::attributes.products_limit', '2021-04-27 04:12:27', '2021-04-27 04:12:27'),
(1050, 'storefront::attributes.section_status', '2021-04-27 04:12:30', '2021-04-27 04:12:30'),
(1051, 'storefront::attributes.section_subtitle', '2021-04-27 04:12:33', '2021-04-27 04:12:33'),
(1052, 'storefront::attributes.section_title', '2021-04-27 04:12:35', '2021-04-27 04:12:35'),
(1053, 'storefront::attributes.storefront_active_flash_sale_campaign', '2021-04-27 04:12:38', '2021-04-27 04:12:38'),
(1054, 'storefront::attributes.storefront_address', '2021-04-27 04:12:40', '2021-04-27 04:12:40'),
(1055, 'storefront::attributes.storefront_category_menu', '2021-04-27 04:12:44', '2021-04-27 04:12:44'),
(1056, 'storefront::attributes.storefront_copyright_text', '2021-04-27 04:12:48', '2021-04-27 04:12:48'),
(1057, 'storefront::attributes.storefront_custom_mail_theme_color', '2021-04-27 04:12:51', '2021-04-27 04:12:51'),
(1058, 'storefront::attributes.storefront_custom_theme_color', '2021-04-27 04:12:54', '2021-04-27 04:12:54'),
(1059, 'storefront::attributes.storefront_facebook_link', '2021-04-27 04:12:57', '2021-04-27 04:12:57'),
(1060, 'storefront::attributes.storefront_footer_menu_one', '2021-04-27 04:13:00', '2021-04-27 04:13:00'),
(1061, 'storefront::attributes.storefront_footer_menu_one_title', '2021-04-27 04:13:06', '2021-04-27 04:13:06'),
(1062, 'storefront::attributes.storefront_footer_menu_two', '2021-04-27 04:13:08', '2021-04-27 04:13:08'),
(1063, 'storefront::attributes.storefront_footer_menu_two_title', '2021-04-27 04:13:10', '2021-04-27 04:13:10'),
(1064, 'storefront::attributes.storefront_footer_tags', '2021-04-27 04:13:13', '2021-04-27 04:13:13'),
(1065, 'storefront::attributes.storefront_instagram_link', '2021-04-27 04:13:16', '2021-04-27 04:13:16'),
(1066, 'storefront::attributes.storefront_mail_theme_color', '2021-04-27 04:13:18', '2021-04-27 04:13:18'),
(1067, 'storefront::attributes.storefront_navbar_text', '2021-04-27 04:13:21', '2021-04-27 04:13:21'),
(1068, 'storefront::attributes.storefront_primary_menu', '2021-04-27 04:13:24', '2021-04-27 04:13:24'),
(1069, 'storefront::attributes.storefront_privacy_page', '2021-04-27 04:13:28', '2021-04-27 04:13:28'),
(1070, 'storefront::attributes.storefront_slider', '2021-04-27 04:13:31', '2021-04-27 04:13:31'),
(1071, 'storefront::attributes.storefront_terms_page', '2021-04-27 04:13:34', '2021-04-27 04:13:34'),
(1072, 'storefront::attributes.storefront_theme_color', '2021-04-27 04:13:37', '2021-04-27 04:13:37'),
(1073, 'storefront::attributes.storefront_top_brands', '2021-04-27 04:13:40', '2021-04-27 04:13:40'),
(1074, 'storefront::attributes.storefront_twitter_link', '2021-04-27 04:13:43', '2021-04-27 04:13:43'),
(1075, 'storefront::attributes.storefront_welcome_text', '2021-04-27 04:13:46', '2021-04-27 04:13:46'),
(1076, 'storefront::attributes.storefront_youtube_link', '2021-04-27 04:13:49', '2021-04-27 04:13:49'),
(1077, 'storefront::attributes.subtitle', '2021-04-27 04:13:52', '2021-04-27 04:13:52'),
(1078, 'storefront::attributes.title', '2021-04-27 04:13:55', '2021-04-27 04:13:55'),
(1079, 'storefront::attributes.total_products', '2021-04-27 04:13:58', '2021-04-27 04:13:58'),
(1080, 'storefront::attributes.type', '2021-04-27 04:14:01', '2021-04-27 04:14:01'),
(1081, 'storefront::attributes.url', '2021-04-27 04:14:09', '2021-04-27 04:14:09'),
(1082, 'storefront::brands.brands', '2021-04-27 04:14:11', '2021-04-27 04:14:11'),
(1083, 'storefront::brands.no_brand_found', '2021-04-27 04:14:14', '2021-04-27 04:14:14'),
(1084, 'storefront::cart.apply_coupon', '2021-04-27 04:14:16', '2021-04-27 04:14:16'),
(1085, 'storefront::cart.cart', '2021-04-27 04:14:19', '2021-04-27 04:14:19'),
(1086, 'storefront::cart.checkout', '2021-04-27 04:14:22', '2021-04-27 04:14:22'),
(1087, 'storefront::cart.coupon', '2021-04-27 04:14:25', '2021-04-27 04:14:25'),
(1088, 'storefront::cart.enter_coupon_code', '2021-04-27 04:14:29', '2021-04-27 04:14:29'),
(1089, 'storefront::cart.looks_like_you_haven\'t_made_any_choice_yet', '2021-04-27 04:14:32', '2021-04-27 04:14:32'),
(1090, 'storefront::cart.order_complete', '2021-04-27 04:14:34', '2021-04-27 04:14:34'),
(1091, 'storefront::cart.order_summary', '2021-04-27 04:14:37', '2021-04-27 04:14:37'),
(1092, 'storefront::cart.proceed_to_checkout', '2021-04-27 04:14:40', '2021-04-27 04:14:40'),
(1093, 'storefront::cart.shipping_method', '2021-04-27 04:14:43', '2021-04-27 04:14:43'),
(1094, 'storefront::cart.shopping_cart', '2021-04-27 04:14:46', '2021-04-27 04:14:46'),
(1095, 'storefront::cart.subtotal', '2021-04-27 04:14:49', '2021-04-27 04:14:49'),
(1096, 'storefront::cart.table.image', '2021-04-27 04:14:52', '2021-04-27 04:14:52'),
(1097, 'storefront::cart.table.line_total', '2021-04-27 04:14:54', '2021-04-27 04:14:54'),
(1098, 'storefront::cart.table.line_total:', '2021-04-27 04:14:57', '2021-04-27 04:14:57'),
(1099, 'storefront::cart.table.product_name', '2021-04-27 04:15:00', '2021-04-27 04:15:00'),
(1100, 'storefront::cart.table.quantity', '2021-04-27 04:15:03', '2021-04-27 04:15:03'),
(1101, 'storefront::cart.table.quantity:', '2021-04-27 04:15:21', '2021-04-27 04:15:21'),
(1102, 'storefront::cart.table.unit_price', '2021-04-27 04:15:24', '2021-04-27 04:15:24'),
(1103, 'storefront::cart.table.unit_price:', '2021-04-27 04:15:26', '2021-04-27 04:15:26'),
(1104, 'storefront::cart.total', '2021-04-27 04:15:29', '2021-04-27 04:15:29'),
(1105, 'storefront::cart.your_cart_is_empty', '2021-04-27 04:15:31', '2021-04-27 04:15:31'),
(1106, 'storefront::categories.all_categories', '2021-04-27 04:15:34', '2021-04-27 04:15:34'),
(1107, 'storefront::categories.no_category_found', '2021-04-27 04:15:37', '2021-04-27 04:15:37'),
(1108, 'storefront::checkout.account_details', '2021-04-27 04:15:39', '2021-04-27 04:15:39'),
(1109, 'storefront::checkout.add_new_address', '2021-04-27 04:15:44', '2021-04-27 04:15:44'),
(1110, 'storefront::checkout.billing_details', '2021-04-27 04:15:47', '2021-04-27 04:15:47'),
(1111, 'storefront::checkout.checkout', '2021-04-27 04:15:50', '2021-04-27 04:15:50'),
(1112, 'storefront::checkout.create_an_account_by_entering_the_information_below', '2021-04-27 04:15:54', '2021-04-27 04:15:54'),
(1113, 'storefront::checkout.i_agree_to_the', '2021-04-27 04:15:56', '2021-04-27 04:15:56'),
(1114, 'storefront::checkout.no_payment_method', '2021-04-27 04:15:59', '2021-04-27 04:15:59'),
(1115, 'storefront::checkout.payment_instructions', '2021-04-27 04:16:02', '2021-04-27 04:16:02'),
(1116, 'storefront::checkout.payment_method', '2021-04-27 04:16:05', '2021-04-27 04:16:05'),
(1117, 'storefront::checkout.place_order', '2021-04-27 04:16:07', '2021-04-27 04:16:07'),
(1118, 'storefront::checkout.please_select', '2021-04-27 04:16:11', '2021-04-27 04:16:11'),
(1119, 'storefront::checkout.shipping_details', '2021-04-27 04:16:13', '2021-04-27 04:16:13'),
(1120, 'storefront::checkout.special_note_for_delivery', '2021-04-27 04:16:17', '2021-04-27 04:16:17'),
(1121, 'storefront::checkout.terms_&_conditions', '2021-04-27 04:16:24', '2021-04-27 04:16:24'),
(1122, 'storefront::checkout.you_must_select_an_address', '2021-04-27 04:16:26', '2021-04-27 04:16:26');
INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(1123, 'storefront::compare.actions', '2021-04-27 04:16:28', '2021-04-27 04:16:28'),
(1124, 'storefront::compare.add_to_cart', '2021-04-27 04:16:31', '2021-04-27 04:16:31'),
(1125, 'storefront::compare.availability', '2021-04-27 04:16:33', '2021-04-27 04:16:33'),
(1126, 'storefront::compare.compare', '2021-04-27 04:16:35', '2021-04-27 04:16:35'),
(1127, 'storefront::compare.description', '2021-04-27 04:16:38', '2021-04-27 04:16:38'),
(1128, 'storefront::compare.in_stock', '2021-04-27 04:16:41', '2021-04-27 04:16:41'),
(1129, 'storefront::compare.no_product', '2021-04-27 04:16:43', '2021-04-27 04:16:43'),
(1130, 'storefront::compare.out_of_stock', '2021-04-27 04:16:46', '2021-04-27 04:16:46'),
(1131, 'storefront::compare.price', '2021-04-27 04:16:49', '2021-04-27 04:16:49'),
(1132, 'storefront::compare.product_overview', '2021-04-27 04:16:52', '2021-04-27 04:16:52'),
(1133, 'storefront::compare.rating', '2021-04-27 04:16:55', '2021-04-27 04:16:55'),
(1134, 'storefront::contact.contact', '2021-04-27 04:16:57', '2021-04-27 04:16:57'),
(1135, 'storefront::contact.leave_a_message', '2021-04-27 04:17:00', '2021-04-27 04:17:00'),
(1136, 'storefront::contact.send_message', '2021-04-27 04:17:03', '2021-04-27 04:17:03'),
(1137, 'storefront::invoice.billing_address', '2021-04-27 04:17:05', '2021-04-27 04:17:05'),
(1138, 'storefront::invoice.coupon', '2021-04-27 04:17:07', '2021-04-27 04:17:07'),
(1139, 'storefront::invoice.date', '2021-04-27 04:17:11', '2021-04-27 04:17:11'),
(1140, 'storefront::invoice.email', '2021-04-27 04:17:13', '2021-04-27 04:17:13'),
(1141, 'storefront::invoice.invoice', '2021-04-27 04:17:21', '2021-04-27 04:17:21'),
(1142, 'storefront::invoice.line_total', '2021-04-27 04:17:24', '2021-04-27 04:17:24'),
(1143, 'storefront::invoice.order_details', '2021-04-27 04:17:27', '2021-04-27 04:17:27'),
(1144, 'storefront::invoice.order_id', '2021-04-27 04:17:31', '2021-04-27 04:17:31'),
(1145, 'storefront::invoice.payment_method', '2021-04-27 04:17:33', '2021-04-27 04:17:33'),
(1146, 'storefront::invoice.phone', '2021-04-27 04:17:36', '2021-04-27 04:17:36'),
(1147, 'storefront::invoice.product', '2021-04-27 04:17:38', '2021-04-27 04:17:38'),
(1148, 'storefront::invoice.quantity', '2021-04-27 04:17:41', '2021-04-27 04:17:41'),
(1149, 'storefront::invoice.shipping_address', '2021-04-27 04:17:44', '2021-04-27 04:17:44'),
(1150, 'storefront::invoice.subject', '2021-04-27 04:17:46', '2021-04-27 04:17:46'),
(1151, 'storefront::invoice.subtotal', '2021-04-27 04:17:48', '2021-04-27 04:17:48'),
(1152, 'storefront::invoice.total', '2021-04-27 04:17:51', '2021-04-27 04:17:51'),
(1153, 'storefront::invoice.unit_price', '2021-04-27 04:17:54', '2021-04-27 04:17:54'),
(1154, 'storefront::layout.account', '2021-04-27 04:17:57', '2021-04-27 04:17:57'),
(1155, 'storefront::layout.all_categories', '2021-04-27 04:17:59', '2021-04-27 04:17:59'),
(1156, 'storefront::layout.all_categories_header', '2021-04-27 04:18:02', '2021-04-27 04:18:02'),
(1157, 'storefront::layout.by_subscribing', '2021-04-27 04:18:04', '2021-04-27 04:18:04'),
(1158, 'storefront::layout.categories', '2021-04-27 04:18:07', '2021-04-27 04:18:07'),
(1159, 'storefront::layout.category_suggestions', '2021-04-27 04:18:10', '2021-04-27 04:18:10'),
(1160, 'storefront::layout.checkout', '2021-04-27 04:18:12', '2021-04-27 04:18:12'),
(1161, 'storefront::layout.compare', '2021-04-27 04:18:23', '2021-04-27 04:18:23'),
(1162, 'storefront::layout.contact', '2021-04-27 04:18:25', '2021-04-27 04:18:25'),
(1163, 'storefront::layout.contact_us', '2021-04-27 04:18:28', '2021-04-27 04:18:28'),
(1164, 'storefront::layout.don\'t_show_this_popup_again', '2021-04-27 04:18:30', '2021-04-27 04:18:30'),
(1165, 'storefront::layout.enter_captcha_code', '2021-04-27 04:18:32', '2021-04-27 04:18:32'),
(1166, 'storefront::layout.enter_your_email_address', '2021-04-27 04:18:35', '2021-04-27 04:18:35'),
(1167, 'storefront::layout.favorites', '2021-04-27 04:18:37', '2021-04-27 04:18:37'),
(1168, 'storefront::layout.got_it', '2021-04-27 04:18:40', '2021-04-27 04:18:40'),
(1169, 'storefront::layout.home', '2021-04-27 04:18:43', '2021-04-27 04:18:43'),
(1170, 'storefront::layout.login', '2021-04-27 04:18:46', '2021-04-27 04:18:46'),
(1171, 'storefront::layout.menu', '2021-04-27 04:18:49', '2021-04-27 04:18:49'),
(1172, 'storefront::layout.more_results', '2021-04-27 04:18:51', '2021-04-27 04:18:51'),
(1173, 'storefront::layout.most_searched', '2021-04-27 04:18:54', '2021-04-27 04:18:54'),
(1174, 'storefront::layout.my_account', '2021-04-27 04:18:56', '2021-04-27 04:18:56'),
(1175, 'storefront::layout.navigation', '2021-04-27 04:18:58', '2021-04-27 04:18:58'),
(1176, 'storefront::layout.next', '2021-04-27 04:19:01', '2021-04-27 04:19:01'),
(1177, 'storefront::layout.prev', '2021-04-27 04:19:04', '2021-04-27 04:19:04'),
(1178, 'storefront::layout.privacy_policy', '2021-04-27 04:19:06', '2021-04-27 04:19:06'),
(1179, 'storefront::layout.product_suggestions', '2021-04-27 04:19:09', '2021-04-27 04:19:09'),
(1180, 'storefront::layout.search_for_products', '2021-04-27 04:19:11', '2021-04-27 04:19:11'),
(1181, 'storefront::layout.shopping_cart', '2021-04-27 04:19:22', '2021-04-27 04:19:22'),
(1182, 'storefront::layout.subscribe', '2021-04-27 04:19:24', '2021-04-27 04:19:24'),
(1183, 'storefront::layout.subscribe_to_our_newsletter', '2021-04-27 04:19:26', '2021-04-27 04:19:26'),
(1184, 'storefront::layout.subscribe_to_our_newsletter_subtitle', '2021-04-27 04:19:29', '2021-04-27 04:19:29'),
(1185, 'storefront::layout.subscribed', '2021-04-27 04:19:31', '2021-04-27 04:19:31'),
(1186, 'storefront::layout.subtotal', '2021-04-27 04:19:34', '2021-04-27 04:19:34'),
(1187, 'storefront::layout.tags', '2021-04-27 04:19:36', '2021-04-27 04:19:36'),
(1188, 'storefront::layout.the_website_uses_cookies', '2021-04-27 04:19:39', '2021-04-27 04:19:39'),
(1189, 'storefront::layout.view_cart', '2021-04-27 04:19:42', '2021-04-27 04:19:42'),
(1190, 'storefront::layouts.default', '2021-04-27 04:19:45', '2021-04-27 04:19:45'),
(1191, 'storefront::layouts.slider_with_banners', '2021-04-27 04:19:48', '2021-04-27 04:19:48'),
(1192, 'storefront::mail.all_rights_reserved', '2021-04-27 04:19:50', '2021-04-27 04:19:50'),
(1193, 'storefront::mail.hello', '2021-04-27 04:19:52', '2021-04-27 04:19:52'),
(1194, 'storefront::order_complete.order_placed', '2021-04-27 04:19:55', '2021-04-27 04:19:55'),
(1195, 'storefront::order_complete.your_order_has_been_placed', '2021-04-27 04:19:58', '2021-04-27 04:19:58'),
(1196, 'storefront::permissions.storefront.edit', '2021-04-27 04:20:01', '2021-04-27 04:20:01'),
(1197, 'storefront::product.add_a_review', '2021-04-27 04:20:03', '2021-04-27 04:20:03'),
(1198, 'storefront::product.add_to_cart', '2021-04-27 04:20:05', '2021-04-27 04:20:05'),
(1199, 'storefront::product.be_the_first_one_to_review_this_product', '2021-04-27 04:20:09', '2021-04-27 04:20:09'),
(1200, 'storefront::product.categories', '2021-04-27 04:20:11', '2021-04-27 04:20:11'),
(1201, 'storefront::product.compare', '2021-04-27 04:20:20', '2021-04-27 04:20:20'),
(1202, 'storefront::product.description', '2021-04-27 04:20:22', '2021-04-27 04:20:22'),
(1203, 'storefront::product.facebook', '2021-04-27 04:20:24', '2021-04-27 04:20:24'),
(1204, 'storefront::product.in_stock', '2021-04-27 04:20:27', '2021-04-27 04:20:27'),
(1205, 'storefront::product.left_in_stock', '2021-04-27 04:20:29', '2021-04-27 04:20:29'),
(1206, 'storefront::product.linkedin', '2021-04-27 04:20:32', '2021-04-27 04:20:32'),
(1207, 'storefront::product.options.choose_an_option', '2021-04-27 04:20:35', '2021-04-27 04:20:35'),
(1208, 'storefront::product.out_of_stock', '2021-04-27 04:20:37', '2021-04-27 04:20:37'),
(1209, 'storefront::product.quantity', '2021-04-27 04:20:40', '2021-04-27 04:20:40'),
(1210, 'storefront::product.related_products', '2021-04-27 04:20:43', '2021-04-27 04:20:43'),
(1211, 'storefront::product.review_form.comment', '2021-04-27 04:20:45', '2021-04-27 04:20:45'),
(1212, 'storefront::product.review_form.name', '2021-04-27 04:20:47', '2021-04-27 04:20:47'),
(1213, 'storefront::product.review_form.submit', '2021-04-27 04:20:50', '2021-04-27 04:20:50'),
(1214, 'storefront::product.review_form.your_rating', '2021-04-27 04:20:53', '2021-04-27 04:20:53'),
(1215, 'storefront::product.reviews', '2021-04-27 04:20:55', '2021-04-27 04:20:55'),
(1216, 'storefront::product.share', '2021-04-27 04:20:58', '2021-04-27 04:20:58'),
(1217, 'storefront::product.sku', '2021-04-27 04:21:00', '2021-04-27 04:21:00'),
(1218, 'storefront::product.specification', '2021-04-27 04:21:02', '2021-04-27 04:21:02'),
(1219, 'storefront::product.tags', '2021-04-27 04:21:06', '2021-04-27 04:21:06'),
(1220, 'storefront::product.tumblr', '2021-04-27 04:21:09', '2021-04-27 04:21:09'),
(1221, 'storefront::product.twitter', '2021-04-27 04:21:15', '2021-04-27 04:21:15'),
(1222, 'storefront::product.wishlist', '2021-04-27 04:21:18', '2021-04-27 04:21:18'),
(1223, 'storefront::product.you_might_also_like', '2021-04-27 04:21:20', '2021-04-27 04:21:20'),
(1224, 'storefront::product_card.add_to_cart', '2021-04-27 04:21:22', '2021-04-27 04:21:22'),
(1225, 'storefront::product_card.available', '2021-04-27 04:21:24', '2021-04-27 04:21:24'),
(1226, 'storefront::product_card.compare', '2021-04-27 04:21:27', '2021-04-27 04:21:27'),
(1227, 'storefront::product_card.days', '2021-04-27 04:21:29', '2021-04-27 04:21:29'),
(1228, 'storefront::product_card.hours', '2021-04-27 04:21:31', '2021-04-27 04:21:31'),
(1229, 'storefront::product_card.minutes', '2021-04-27 04:21:33', '2021-04-27 04:21:33'),
(1230, 'storefront::product_card.months', '2021-04-27 04:21:38', '2021-04-27 04:21:38'),
(1231, 'storefront::product_card.new', '2021-04-27 04:21:40', '2021-04-27 04:21:40'),
(1232, 'storefront::product_card.out_of_stock', '2021-04-27 04:21:44', '2021-04-27 04:21:44'),
(1233, 'storefront::product_card.seconds', '2021-04-27 04:21:47', '2021-04-27 04:21:47'),
(1234, 'storefront::product_card.sold', '2021-04-27 04:21:49', '2021-04-27 04:21:49'),
(1235, 'storefront::product_card.view_options', '2021-04-27 04:21:51', '2021-04-27 04:21:51'),
(1236, 'storefront::product_card.weeks', '2021-04-27 04:21:54', '2021-04-27 04:21:54'),
(1237, 'storefront::product_card.wishlist', '2021-04-27 04:21:56', '2021-04-27 04:21:56'),
(1238, 'storefront::product_card.years', '2021-04-27 04:21:58', '2021-04-27 04:21:58'),
(1239, 'storefront::products.browse_categories', '2021-04-27 04:22:00', '2021-04-27 04:22:00'),
(1240, 'storefront::products.filters', '2021-04-27 04:22:03', '2021-04-27 04:22:03'),
(1241, 'storefront::products.grid_view', '2021-04-27 04:22:20', '2021-04-27 04:22:20'),
(1242, 'storefront::products.latest_products', '2021-04-27 04:22:22', '2021-04-27 04:22:22'),
(1243, 'storefront::products.list_view', '2021-04-27 04:22:24', '2021-04-27 04:22:24'),
(1244, 'storefront::products.no_product_found', '2021-04-27 04:22:26', '2021-04-27 04:22:26'),
(1245, 'storefront::products.per_page_options.10', '2021-04-27 04:22:28', '2021-04-27 04:22:28'),
(1246, 'storefront::products.per_page_options.20', '2021-04-27 04:22:31', '2021-04-27 04:22:31'),
(1247, 'storefront::products.per_page_options.30', '2021-04-27 04:22:33', '2021-04-27 04:22:33'),
(1248, 'storefront::products.per_page_options.40', '2021-04-27 04:22:37', '2021-04-27 04:22:37'),
(1249, 'storefront::products.per_page_options.50', '2021-04-27 04:22:40', '2021-04-27 04:22:40'),
(1250, 'storefront::products.price', '2021-04-27 04:22:43', '2021-04-27 04:22:43'),
(1251, 'storefront::products.search_results_for', '2021-04-27 04:22:46', '2021-04-27 04:22:46'),
(1252, 'storefront::products.shop', '2021-04-27 04:22:48', '2021-04-27 04:22:48'),
(1253, 'storefront::products.show_less', '2021-04-27 04:22:51', '2021-04-27 04:22:51'),
(1254, 'storefront::products.show_more', '2021-04-27 04:22:53', '2021-04-27 04:22:53'),
(1255, 'storefront::products.showing_results', '2021-04-27 04:22:56', '2021-04-27 04:22:56'),
(1256, 'storefront::products.sort_options.alphabetic', '2021-04-27 04:22:58', '2021-04-27 04:22:58'),
(1257, 'storefront::products.sort_options.latest', '2021-04-27 04:23:00', '2021-04-27 04:23:00'),
(1258, 'storefront::products.sort_options.priceHighToLow', '2021-04-27 04:23:03', '2021-04-27 04:23:03'),
(1259, 'storefront::products.sort_options.priceLowToHigh', '2021-04-27 04:23:05', '2021-04-27 04:23:05'),
(1260, 'storefront::products.sort_options.relevance', '2021-04-27 04:23:08', '2021-04-27 04:23:08'),
(1261, 'storefront::products.sort_options.topRated', '2021-04-27 04:23:14', '2021-04-27 04:23:14'),
(1262, 'storefront::sidebar.storefront', '2021-04-27 04:23:16', '2021-04-27 04:23:16'),
(1263, 'storefront::storefront.form.accepted_payment_methods_image', '2021-04-27 04:23:18', '2021-04-27 04:23:18'),
(1264, 'storefront::storefront.form.background', '2021-04-27 04:23:21', '2021-04-27 04:23:21'),
(1265, 'storefront::storefront.form.banner', '2021-04-27 04:23:23', '2021-04-27 04:23:23'),
(1266, 'storefront::storefront.form.banner_1', '2021-04-27 04:23:27', '2021-04-27 04:23:27'),
(1267, 'storefront::storefront.form.banner_2', '2021-04-27 04:23:30', '2021-04-27 04:23:30'),
(1268, 'storefront::storefront.form.banner_3', '2021-04-27 04:23:32', '2021-04-27 04:23:32'),
(1269, 'storefront::storefront.form.category_1', '2021-04-27 04:23:35', '2021-04-27 04:23:35'),
(1270, 'storefront::storefront.form.category_2', '2021-04-27 04:23:38', '2021-04-27 04:23:38'),
(1271, 'storefront::storefront.form.category_3', '2021-04-27 04:23:41', '2021-04-27 04:23:41'),
(1272, 'storefront::storefront.form.category_4', '2021-04-27 04:23:46', '2021-04-27 04:23:46'),
(1273, 'storefront::storefront.form.category_5', '2021-04-27 04:23:49', '2021-04-27 04:23:49'),
(1274, 'storefront::storefront.form.category_6', '2021-04-27 04:23:52', '2021-04-27 04:23:52'),
(1275, 'storefront::storefront.form.enable_brands_section', '2021-04-27 04:23:56', '2021-04-27 04:23:56'),
(1276, 'storefront::storefront.form.enable_featured_categories_section', '2021-04-27 04:23:59', '2021-04-27 04:23:59'),
(1277, 'storefront::storefront.form.enable_features_section', '2021-04-27 04:24:01', '2021-04-27 04:24:01'),
(1278, 'storefront::storefront.form.enable_flash_sale_and_vertical_products_section', '2021-04-27 04:24:04', '2021-04-27 04:24:04'),
(1279, 'storefront::storefront.form.enable_one_column_banner_section', '2021-04-27 04:24:08', '2021-04-27 04:24:08'),
(1280, 'storefront::storefront.form.enable_product_grid_section', '2021-04-27 04:24:12', '2021-04-27 04:24:12'),
(1281, 'storefront::storefront.form.enable_product_tabs_one_section', '2021-04-27 04:24:23', '2021-04-27 04:24:23'),
(1282, 'storefront::storefront.form.enable_product_tabs_two_section', '2021-04-27 04:24:25', '2021-04-27 04:24:25'),
(1283, 'storefront::storefront.form.enable_three_column_banners_section', '2021-04-27 04:24:28', '2021-04-27 04:24:28'),
(1284, 'storefront::storefront.form.enable_three_column_full_width_banners_section', '2021-04-27 04:24:30', '2021-04-27 04:24:30'),
(1285, 'storefront::storefront.form.enable_two_column_banners_section', '2021-04-27 04:24:33', '2021-04-27 04:24:33'),
(1286, 'storefront::storefront.form.favicon', '2021-04-27 04:24:36', '2021-04-27 04:24:36'),
(1287, 'storefront::storefront.form.feature_1', '2021-04-27 04:24:39', '2021-04-27 04:24:39'),
(1288, 'storefront::storefront.form.feature_2', '2021-04-27 04:24:42', '2021-04-27 04:24:42'),
(1289, 'storefront::storefront.form.feature_3', '2021-04-27 04:24:44', '2021-04-27 04:24:44'),
(1290, 'storefront::storefront.form.feature_4', '2021-04-27 04:24:48', '2021-04-27 04:24:48'),
(1291, 'storefront::storefront.form.feature_5', '2021-04-27 04:24:50', '2021-04-27 04:24:50'),
(1292, 'storefront::storefront.form.flash_sale', '2021-04-27 04:24:53', '2021-04-27 04:24:53'),
(1293, 'storefront::storefront.form.header_logo', '2021-04-27 04:24:56', '2021-04-27 04:24:56'),
(1294, 'storefront::storefront.form.mail_logo', '2021-04-27 04:24:59', '2021-04-27 04:24:59'),
(1295, 'storefront::storefront.form.newsletter_bg_image', '2021-04-27 04:25:02', '2021-04-27 04:25:02'),
(1296, 'storefront::storefront.form.please_select', '2021-04-27 04:25:05', '2021-04-27 04:25:05'),
(1297, 'storefront::storefront.form.product_page_banner', '2021-04-27 04:25:07', '2021-04-27 04:25:07'),
(1298, 'storefront::storefront.form.product_types.category_products', '2021-04-27 04:25:10', '2021-04-27 04:25:10'),
(1299, 'storefront::storefront.form.product_types.custom_products', '2021-04-27 04:25:12', '2021-04-27 04:25:12'),
(1300, 'storefront::storefront.form.product_types.latest_products', '2021-04-27 04:25:15', '2021-04-27 04:25:15'),
(1301, 'storefront::storefront.form.product_types.recently_viewed_products', '2021-04-27 04:25:22', '2021-04-27 04:25:22'),
(1302, 'storefront::storefront.form.storefront_top_brands', '2021-04-27 04:25:24', '2021-04-27 04:25:24'),
(1303, 'storefront::storefront.form.tab_1', '2021-04-27 04:25:26', '2021-04-27 04:25:26'),
(1304, 'storefront::storefront.form.tab_2', '2021-04-27 04:25:29', '2021-04-27 04:25:29'),
(1305, 'storefront::storefront.form.tab_3', '2021-04-27 04:25:32', '2021-04-27 04:25:32'),
(1306, 'storefront::storefront.form.tab_4', '2021-04-27 04:25:34', '2021-04-27 04:25:34'),
(1307, 'storefront::storefront.form.vertical_products_1', '2021-04-27 04:25:36', '2021-04-27 04:25:36'),
(1308, 'storefront::storefront.form.vertical_products_2', '2021-04-27 04:25:38', '2021-04-27 04:25:38'),
(1309, 'storefront::storefront.form.vertical_products_3', '2021-04-27 04:25:42', '2021-04-27 04:25:42'),
(1310, 'storefront::storefront.storefront', '2021-04-27 04:25:44', '2021-04-27 04:25:44'),
(1311, 'storefront::storefront.tabs.featured_categories', '2021-04-27 04:25:47', '2021-04-27 04:25:47'),
(1312, 'storefront::storefront.tabs.features', '2021-04-27 04:25:50', '2021-04-27 04:25:50'),
(1313, 'storefront::storefront.tabs.flash_sale_and_vertical_products', '2021-04-27 04:25:53', '2021-04-27 04:25:53'),
(1314, 'storefront::storefront.tabs.footer', '2021-04-27 04:25:56', '2021-04-27 04:25:56'),
(1315, 'storefront::storefront.tabs.general', '2021-04-27 04:25:59', '2021-04-27 04:25:59'),
(1316, 'storefront::storefront.tabs.group.general_settings', '2021-04-27 04:26:02', '2021-04-27 04:26:02'),
(1317, 'storefront::storefront.tabs.group.home_page_sections', '2021-04-27 04:26:04', '2021-04-27 04:26:04'),
(1318, 'storefront::storefront.tabs.logo', '2021-04-27 04:26:07', '2021-04-27 04:26:07'),
(1319, 'storefront::storefront.tabs.menus', '2021-04-27 04:26:09', '2021-04-27 04:26:09'),
(1320, 'storefront::storefront.tabs.newsletter', '2021-04-27 04:26:12', '2021-04-27 04:26:12'),
(1321, 'storefront::storefront.tabs.one_column_banner', '2021-04-27 04:26:26', '2021-04-27 04:26:26'),
(1322, 'storefront::storefront.tabs.product_grid', '2021-04-27 04:26:28', '2021-04-27 04:26:28'),
(1323, 'storefront::storefront.tabs.product_page', '2021-04-27 04:26:30', '2021-04-27 04:26:30'),
(1324, 'storefront::storefront.tabs.product_tabs_one', '2021-04-27 04:26:32', '2021-04-27 04:26:32'),
(1325, 'storefront::storefront.tabs.product_tabs_two', '2021-04-27 04:26:34', '2021-04-27 04:26:34'),
(1326, 'storefront::storefront.tabs.slider_banners', '2021-04-27 04:26:37', '2021-04-27 04:26:37'),
(1327, 'storefront::storefront.tabs.social_links', '2021-04-27 04:26:39', '2021-04-27 04:26:39'),
(1328, 'storefront::storefront.tabs.three_column_banners', '2021-04-27 04:26:42', '2021-04-27 04:26:42'),
(1329, 'storefront::storefront.tabs.three_column_full_width_banners', '2021-04-27 04:26:48', '2021-04-27 04:26:48'),
(1330, 'storefront::storefront.tabs.top_brands', '2021-04-27 04:26:50', '2021-04-27 04:26:50'),
(1331, 'storefront::storefront.tabs.two_column_banners', '2021-04-27 04:26:52', '2021-04-27 04:26:52'),
(1332, 'storefront::themes.black', '2021-04-27 04:26:54', '2021-04-27 04:26:54'),
(1333, 'storefront::themes.blue', '2021-04-27 04:26:58', '2021-04-27 04:26:58'),
(1334, 'storefront::themes.bondi-blue', '2021-04-27 04:27:00', '2021-04-27 04:27:00'),
(1335, 'storefront::themes.cornflower', '2021-04-27 04:27:03', '2021-04-27 04:27:03'),
(1336, 'storefront::themes.custom_color', '2021-04-27 04:27:05', '2021-04-27 04:27:05'),
(1337, 'storefront::themes.green', '2021-04-27 04:27:08', '2021-04-27 04:27:08'),
(1338, 'storefront::themes.indigo', '2021-04-27 04:27:11', '2021-04-27 04:27:11'),
(1339, 'storefront::themes.magenta', '2021-04-27 04:27:14', '2021-04-27 04:27:14'),
(1340, 'storefront::themes.orange', '2021-04-27 04:27:16', '2021-04-27 04:27:16'),
(1341, 'storefront::themes.pink', '2021-04-27 04:27:24', '2021-04-27 04:27:24'),
(1342, 'storefront::themes.red', '2021-04-27 04:27:27', '2021-04-27 04:27:27'),
(1343, 'storefront::themes.violet', '2021-04-27 04:27:30', '2021-04-27 04:27:30'),
(1344, 'storefront::themes.yellow', '2021-04-27 04:27:33', '2021-04-27 04:27:33'),
(1345, 'support::captcha.update_code', '2021-04-27 04:27:35', '2021-04-27 04:27:35'),
(1346, 'tag::attributes.name', '2021-04-27 04:27:38', '2021-04-27 04:27:38'),
(1347, 'tag::attributes.slug', '2021-04-27 04:27:40', '2021-04-27 04:27:40'),
(1348, 'tag::permissions.create', '2021-04-27 04:27:44', '2021-04-27 04:27:44'),
(1349, 'tag::permissions.destroy', '2021-04-27 04:27:47', '2021-04-27 04:27:47'),
(1350, 'tag::permissions.edit', '2021-04-27 04:27:49', '2021-04-27 04:27:49'),
(1351, 'tag::permissions.index', '2021-04-27 04:27:53', '2021-04-27 04:27:53'),
(1352, 'tag::tags.table.name', '2021-04-27 04:27:55', '2021-04-27 04:27:55'),
(1353, 'tag::tags.tabs.general', '2021-04-27 04:27:58', '2021-04-27 04:27:58'),
(1354, 'tag::tags.tabs.group.tag_information', '2021-04-27 04:28:00', '2021-04-27 04:28:00'),
(1355, 'tag::tags.tag', '2021-04-27 04:28:02', '2021-04-27 04:28:02'),
(1356, 'tag::tags.tags', '2021-04-27 04:28:04', '2021-04-27 04:28:04'),
(1357, 'tax::attributes.based_on', '2021-04-27 04:28:07', '2021-04-27 04:28:07'),
(1358, 'tax::attributes.city', '2021-04-27 04:28:09', '2021-04-27 04:28:09'),
(1359, 'tax::attributes.country', '2021-04-27 04:28:12', '2021-04-27 04:28:12'),
(1360, 'tax::attributes.label', '2021-04-27 04:28:14', '2021-04-27 04:28:14'),
(1361, 'tax::attributes.name', '2021-04-27 04:28:28', '2021-04-27 04:28:28'),
(1362, 'tax::attributes.rate', '2021-04-27 04:28:30', '2021-04-27 04:28:30'),
(1363, 'tax::attributes.rates.*.name', '2021-04-27 04:28:32', '2021-04-27 04:28:32'),
(1364, 'tax::attributes.rates.*.rate', '2021-04-27 04:28:34', '2021-04-27 04:28:34'),
(1365, 'tax::attributes.state', '2021-04-27 04:28:37', '2021-04-27 04:28:37'),
(1366, 'tax::attributes.zip', '2021-04-27 04:28:39', '2021-04-27 04:28:39'),
(1367, 'tax::permissions.taxes.create', '2021-04-27 04:28:41', '2021-04-27 04:28:41'),
(1368, 'tax::permissions.taxes.destroy', '2021-04-27 04:28:44', '2021-04-27 04:28:44'),
(1369, 'tax::permissions.taxes.edit', '2021-04-27 04:28:48', '2021-04-27 04:28:48'),
(1370, 'tax::permissions.taxes.index', '2021-04-27 04:28:50', '2021-04-27 04:28:50'),
(1371, 'tax::sidebar.taxes', '2021-04-27 04:28:52', '2021-04-27 04:28:52'),
(1372, 'tax::taxes.form.add_new_rate', '2021-04-27 04:28:54', '2021-04-27 04:28:54'),
(1373, 'tax::taxes.form.based_on.billing_address', '2021-04-27 04:28:57', '2021-04-27 04:28:57'),
(1374, 'tax::taxes.form.based_on.shipping_address', '2021-04-27 04:28:59', '2021-04-27 04:28:59'),
(1375, 'tax::taxes.form.based_on.store_address', '2021-04-27 04:29:02', '2021-04-27 04:29:02'),
(1376, 'tax::taxes.form.delete_rate', '2021-04-27 04:29:04', '2021-04-27 04:29:04'),
(1377, 'tax::taxes.table.tax_class', '2021-04-27 04:29:06', '2021-04-27 04:29:06'),
(1378, 'tax::taxes.tabs.general', '2021-04-27 04:29:09', '2021-04-27 04:29:09'),
(1379, 'tax::taxes.tabs.group.tax_information', '2021-04-27 04:29:11', '2021-04-27 04:29:11'),
(1380, 'tax::taxes.tabs.rates', '2021-04-27 04:29:13', '2021-04-27 04:29:13'),
(1381, 'tax::taxes.tax', '2021-04-27 04:29:19', '2021-04-27 04:29:19'),
(1382, 'tax::taxes.taxes', '2021-04-27 04:29:21', '2021-04-27 04:29:21'),
(1383, 'transaction::permissions.index', '2021-04-27 04:29:23', '2021-04-27 04:29:23'),
(1384, 'transaction::transactions.table.order_id', '2021-04-27 04:29:26', '2021-04-27 04:29:26'),
(1385, 'transaction::transactions.table.payment_method', '2021-04-27 04:29:28', '2021-04-27 04:29:28'),
(1386, 'transaction::transactions.table.transaction_id', '2021-04-27 04:29:30', '2021-04-27 04:29:30'),
(1387, 'transaction::transactions.transactions', '2021-04-27 04:29:34', '2021-04-27 04:29:34'),
(1388, 'translation::permissions.edit', '2021-04-27 04:29:37', '2021-04-27 04:29:37'),
(1389, 'translation::permissions.index', '2021-04-27 04:29:39', '2021-04-27 04:29:39'),
(1390, 'translation::sidebar.translations', '2021-04-27 04:29:41', '2021-04-27 04:29:41'),
(1391, 'translation::translations.table.key', '2021-04-27 04:29:44', '2021-04-27 04:29:44'),
(1392, 'translation::translations.translation', '2021-04-27 04:29:46', '2021-04-27 04:29:46'),
(1393, 'translation::translations.translations', '2021-04-27 04:29:48', '2021-04-27 04:29:48'),
(1394, 'user::attributes.auth.remember_me', '2021-04-27 04:29:50', '2021-04-27 04:29:50'),
(1395, 'user::attributes.roles.name', '2021-04-27 04:29:53', '2021-04-27 04:29:53'),
(1396, 'user::attributes.users.activated', '2021-04-27 04:29:56', '2021-04-27 04:29:56'),
(1397, 'user::attributes.users.captcha', '2021-04-27 04:29:58', '2021-04-27 04:29:58'),
(1398, 'user::attributes.users.confirm_new_password', '2021-04-27 04:30:00', '2021-04-27 04:30:00'),
(1399, 'user::attributes.users.email', '2021-04-27 04:30:04', '2021-04-27 04:30:04'),
(1400, 'user::attributes.users.first_name', '2021-04-27 04:30:07', '2021-04-27 04:30:07'),
(1401, 'user::attributes.users.last_name', '2021-04-27 04:30:13', '2021-04-27 04:30:13'),
(1402, 'user::attributes.users.new_password', '2021-04-27 04:30:15', '2021-04-27 04:30:15'),
(1403, 'user::attributes.users.password', '2021-04-27 04:30:17', '2021-04-27 04:30:17'),
(1404, 'user::attributes.users.password_confirmation', '2021-04-27 04:30:19', '2021-04-27 04:30:19'),
(1405, 'user::attributes.users.phone', '2021-04-27 04:30:21', '2021-04-27 04:30:21'),
(1406, 'user::attributes.users.roles', '2021-04-27 04:30:23', '2021-04-27 04:30:23'),
(1407, 'user::auth.already_have_an_account', '2021-04-27 04:30:27', '2021-04-27 04:30:27'),
(1408, 'user::auth.confirm_password', '2021-04-27 04:30:29', '2021-04-27 04:30:29'),
(1409, 'user::auth.create_account', '2021-04-27 04:30:31', '2021-04-27 04:30:31'),
(1410, 'user::auth.dont_have_an_account', '2021-04-27 04:30:33', '2021-04-27 04:30:33'),
(1411, 'user::auth.email', '2021-04-27 04:30:36', '2021-04-27 04:30:36'),
(1412, 'user::auth.enter_email', '2021-04-27 04:30:40', '2021-04-27 04:30:40'),
(1413, 'user::auth.facebook', '2021-04-27 04:30:43', '2021-04-27 04:30:43'),
(1414, 'user::auth.first_name', '2021-04-27 04:30:55', '2021-04-27 04:30:55'),
(1415, 'user::auth.forgot_password', '2021-04-27 04:30:58', '2021-04-27 04:30:58'),
(1416, 'user::auth.google', '2021-04-27 04:31:01', '2021-04-27 04:31:01'),
(1417, 'user::auth.i_agree_to_the', '2021-04-27 04:31:03', '2021-04-27 04:31:03'),
(1418, 'user::auth.i_remembered_my_password', '2021-04-27 04:31:06', '2021-04-27 04:31:06'),
(1419, 'user::auth.last_name', '2021-04-27 04:31:09', '2021-04-27 04:31:09'),
(1420, 'user::auth.login', '2021-04-27 04:31:12', '2021-04-27 04:31:12'),
(1421, 'user::auth.logout', '2021-04-27 04:31:18', '2021-04-27 04:31:18'),
(1422, 'user::auth.or_continue_with', '2021-04-27 04:31:21', '2021-04-27 04:31:21'),
(1423, 'user::auth.or_sign_up_with', '2021-04-27 04:31:23', '2021-04-27 04:31:23'),
(1424, 'user::auth.password', '2021-04-27 04:31:25', '2021-04-27 04:31:25'),
(1425, 'user::auth.phone', '2021-04-27 04:31:28', '2021-04-27 04:31:28'),
(1426, 'user::auth.privacy_policy', '2021-04-27 04:31:30', '2021-04-27 04:31:30'),
(1427, 'user::auth.register', '2021-04-27 04:31:32', '2021-04-27 04:31:32'),
(1428, 'user::auth.remember_me', '2021-04-27 04:31:35', '2021-04-27 04:31:35'),
(1429, 'user::auth.reset_password', '2021-04-27 04:31:38', '2021-04-27 04:31:38'),
(1430, 'user::auth.sign_in', '2021-04-27 04:31:41', '2021-04-27 04:31:41'),
(1431, 'user::auth.submit', '2021-04-27 04:31:43', '2021-04-27 04:31:43'),
(1432, 'user::mail.account_created', '2021-04-27 04:31:45', '2021-04-27 04:31:45'),
(1433, 'user::mail.if_you\\’re_having_trouble', '2021-04-27 04:31:48', '2021-04-27 04:31:48'),
(1434, 'user::mail.no_further_action_is_required', '2021-04-27 04:31:51', '2021-04-27 04:31:51'),
(1435, 'user::mail.received_a_password_reset_request', '2021-04-27 04:31:53', '2021-04-27 04:31:53'),
(1436, 'user::mail.reset_password', '2021-04-27 04:31:56', '2021-04-27 04:31:56'),
(1437, 'user::mail.reset_your_account_password', '2021-04-27 04:31:59', '2021-04-27 04:31:59'),
(1438, 'user::mail.welcome', '2021-04-27 04:32:01', '2021-04-27 04:32:01'),
(1439, 'user::messages.email.reset_password', '2021-04-27 04:32:04', '2021-04-27 04:32:04'),
(1440, 'user::messages.users.account_created', '2021-04-27 04:32:06', '2021-04-27 04:32:06'),
(1441, 'user::messages.users.account_is_blocked', '2021-04-27 04:32:17', '2021-04-27 04:32:17'),
(1442, 'user::messages.users.account_not_activated', '2021-04-27 04:32:19', '2021-04-27 04:32:19'),
(1443, 'user::messages.users.check_email_to_reset_password', '2021-04-27 04:32:21', '2021-04-27 04:32:21'),
(1444, 'user::messages.users.invalid_credentials', '2021-04-27 04:32:24', '2021-04-27 04:32:24'),
(1445, 'user::messages.users.invalid_reset_code', '2021-04-27 04:32:26', '2021-04-27 04:32:26'),
(1446, 'user::messages.users.no_user_found', '2021-04-27 04:32:31', '2021-04-27 04:32:31'),
(1447, 'user::messages.users.password_has_been_reset', '2021-04-27 04:32:33', '2021-04-27 04:32:33'),
(1448, 'user::messages.users.reset_password_email_sent', '2021-04-27 04:32:36', '2021-04-27 04:32:36'),
(1449, 'user::permissions.roles.create', '2021-04-27 04:32:39', '2021-04-27 04:32:39'),
(1450, 'user::permissions.roles.destroy', '2021-04-27 04:32:41', '2021-04-27 04:32:41'),
(1451, 'user::permissions.roles.edit', '2021-04-27 04:32:44', '2021-04-27 04:32:44'),
(1452, 'user::permissions.roles.index', '2021-04-27 04:32:46', '2021-04-27 04:32:46'),
(1453, 'user::permissions.users.create', '2021-04-27 04:32:48', '2021-04-27 04:32:48'),
(1454, 'user::permissions.users.edit', '2021-04-27 04:32:52', '2021-04-27 04:32:52'),
(1455, 'user::permissions.users.destroy', '2021-04-27 04:32:55', '2021-04-27 04:32:55'),
(1456, 'user::permissions.users.index', '2021-04-27 04:32:57', '2021-04-27 04:32:57'),
(1457, 'user::roles.permissions.allow', '2021-04-27 04:33:00', '2021-04-27 04:33:00'),
(1458, 'user::roles.permissions.allow_all', '2021-04-27 04:33:02', '2021-04-27 04:33:02'),
(1459, 'user::roles.permissions.deny', '2021-04-27 04:33:05', '2021-04-27 04:33:05'),
(1460, 'user::roles.permissions.deny_all', '2021-04-27 04:33:08', '2021-04-27 04:33:08'),
(1461, 'user::roles.permissions.inherit', '2021-04-27 04:33:13', '2021-04-27 04:33:13'),
(1462, 'user::roles.permissions.inherit_all', '2021-04-27 04:33:16', '2021-04-27 04:33:16'),
(1463, 'user::roles.role', '2021-04-27 04:33:18', '2021-04-27 04:33:18'),
(1464, 'user::roles.roles', '2021-04-27 04:33:21', '2021-04-27 04:33:21'),
(1465, 'user::roles.table.name', '2021-04-27 04:33:23', '2021-04-27 04:33:23'),
(1466, 'user::roles.tabs.general', '2021-04-27 04:33:26', '2021-04-27 04:33:26'),
(1467, 'user::roles.tabs.permissions', '2021-04-27 04:33:30', '2021-04-27 04:33:30'),
(1468, 'user::roles.tabs.role_information', '2021-04-27 04:33:32', '2021-04-27 04:33:32'),
(1469, 'user::sidebar.roles', '2021-04-27 04:33:34', '2021-04-27 04:33:34'),
(1470, 'user::sidebar.users', '2021-04-27 04:33:37', '2021-04-27 04:33:37'),
(1471, 'user::users.form.activated', '2021-04-27 04:33:40', '2021-04-27 04:33:40'),
(1472, 'user::users.or_reset_password', '2021-04-27 04:33:43', '2021-04-27 04:33:43'),
(1473, 'user::users.profile', '2021-04-27 04:33:46', '2021-04-27 04:33:46'),
(1474, 'user::users.send_reset_password_email', '2021-04-27 04:33:50', '2021-04-27 04:33:50'),
(1475, 'user::users.table.email', '2021-04-27 04:33:53', '2021-04-27 04:33:53'),
(1476, 'user::users.table.first_name', '2021-04-27 04:33:55', '2021-04-27 04:33:55'),
(1477, 'user::users.table.last_login', '2021-04-27 04:33:57', '2021-04-27 04:33:57'),
(1478, 'user::users.table.last_name', '2021-04-27 04:34:00', '2021-04-27 04:34:00'),
(1479, 'user::users.tabs.account', '2021-04-27 04:34:02', '2021-04-27 04:34:02'),
(1480, 'user::users.tabs.group.profile_information', '2021-04-27 04:34:05', '2021-04-27 04:34:05'),
(1481, 'user::users.tabs.group.user_information', '2021-04-27 04:34:13', '2021-04-27 04:34:13'),
(1482, 'user::users.tabs.new_password', '2021-04-27 04:34:16', '2021-04-27 04:34:16'),
(1483, 'user::users.tabs.permissions', '2021-04-27 04:34:19', '2021-04-27 04:34:19'),
(1484, 'user::users.user', '2021-04-27 04:34:21', '2021-04-27 04:34:21'),
(1485, 'user::users.users', '2021-04-27 04:34:23', '2021-04-27 04:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_translations`
--

INSERT INTO `translation_translations` (`id`, `translation_id`, `locale`, `value`) VALUES
(1, 1, 'en_US', 'Address Line 1'),
(2, 2, 'en_US', 'City'),
(3, 3, 'en_US', 'Country'),
(4, 4, 'en_US', 'First Name'),
(5, 5, 'en_US', 'Last Name'),
(6, 6, 'en_US', 'State / Province'),
(7, 7, 'en_US', 'Postcode / ZIP'),
(8, 8, 'en_US', 'The address has been deleted.'),
(9, 9, 'en_US', 'The address has been saved.'),
(10, 10, 'en_US', 'The default address has been updated.'),
(11, 11, 'en_US', 'Your profile has been updated.'),
(12, 12, 'en_US', 'Cancel'),
(13, 13, 'en_US', 'Delete'),
(14, 14, 'en_US', 'Save'),
(15, 15, 'en_US', 'Confirmation'),
(16, 16, 'en_US', 'Are you sure you want to delete?'),
(17, 17, 'en_US', '404'),
(18, 18, 'en_US', 'The page you are looking for was not found.'),
(19, 19, 'en_US', 'Oops! This page was not found'),
(20, 20, 'en_US', '500'),
(21, 21, 'en_US', 'An administrator was notified.'),
(22, 22, 'en_US', 'Oops! Something went wrong'),
(23, 23, 'en_US', 'Please Select'),
(24, 24, 'en_US', 'Next'),
(25, 25, 'en_US', 'Previous'),
(26, 26, 'en_US', 'Available keyboard shortcuts on this page'),
(27, 27, 'en_US', 'Back to :name Index'),
(28, 28, 'en_US', 'This Menu'),
(29, 29, 'en_US', 'Created'),
(30, 30, 'en_US', 'Date'),
(31, 31, 'en_US', 'ID'),
(32, 32, 'en_US', 'Status'),
(33, 33, 'en_US', 'Visit Store'),
(34, 34, 'en_US', 'Dashboard'),
(35, 35, 'en_US', 'Latest Orders'),
(36, 36, 'en_US', 'Latest Reviews'),
(37, 37, 'en_US', 'Latest Search Terms'),
(38, 38, 'en_US', 'No data available!'),
(39, 39, 'en_US', 'Monday'),
(40, 40, 'en_US', 'Tuesday'),
(41, 41, 'en_US', 'Wednesday'),
(42, 42, 'en_US', 'Thursday'),
(43, 43, 'en_US', 'Friday'),
(44, 44, 'en_US', 'Saturday'),
(45, 45, 'en_US', 'Sunday'),
(46, 46, 'en_US', 'Orders'),
(47, 47, 'en_US', 'Sales'),
(48, 48, 'en_US', 'Sales Analystics'),
(49, 49, 'en_US', 'Customer'),
(50, 50, 'en_US', 'Order ID'),
(51, 51, 'en_US', 'Status'),
(52, 52, 'en_US', 'Total'),
(53, 53, 'en_US', 'Product'),
(54, 54, 'en_US', 'Rating'),
(55, 55, 'en_US', 'Hits'),
(56, 56, 'en_US', 'Keyword'),
(57, 57, 'en_US', 'Results'),
(58, 58, 'en_US', 'Total Customers'),
(59, 59, 'en_US', 'Total Orders'),
(60, 60, 'en_US', 'Total Products'),
(61, 61, 'en_US', 'Total Sales'),
(62, 62, 'en_US', 'Permission Denied (required permission: \":permission\").'),
(63, 63, 'en_US', ':resource has been deleted.'),
(64, 64, 'en_US', ':resource has been saved.'),
(65, 65, 'en_US', 'Create :resource'),
(66, 66, 'en_US', 'Delete :resource'),
(67, 67, 'en_US', 'Edit :resource'),
(68, 68, 'en_US', 'Show :resource'),
(69, 69, 'en_US', 'Appearance'),
(70, 70, 'en_US', 'Content'),
(71, 71, 'en_US', 'Localization'),
(72, 72, 'en_US', 'Sales'),
(73, 73, 'en_US', 'System'),
(74, 74, 'en_US', 'Tools'),
(75, 75, 'en_US', 'Attribute'),
(76, 76, 'en_US', 'Attributes'),
(77, 77, 'en_US', 'Add New Value'),
(78, 78, 'en_US', 'Delete Value'),
(79, 79, 'en_US', 'Add New Attribute'),
(80, 80, 'en_US', 'Attribute'),
(81, 81, 'en_US', 'Delete Attribute'),
(82, 82, 'en_US', 'Values'),
(83, 83, 'en_US', 'Use this attribute for filtering products'),
(84, 84, 'en_US', 'Value'),
(85, 85, 'en_US', 'Attribute Set'),
(86, 86, 'en_US', 'Filterable'),
(87, 87, 'en_US', 'Name'),
(88, 88, 'en_US', 'No'),
(89, 89, 'en_US', 'Yes'),
(90, 90, 'en_US', 'General'),
(91, 91, 'en_US', 'Attribute Information'),
(92, 92, 'en_US', 'Attributes'),
(93, 93, 'en_US', 'Values'),
(94, 94, 'en_US', 'Attribute Set'),
(95, 95, 'en_US', 'Attribute Sets'),
(96, 96, 'en_US', 'Name'),
(97, 97, 'en_US', 'General'),
(98, 98, 'en_US', 'Attribute Set Information'),
(99, 99, 'en_US', 'Attribute Value'),
(100, 100, 'en_US', 'Attribute Values'),
(101, 101, 'en_US', 'Name'),
(102, 102, 'en_US', 'Attribute Set'),
(103, 103, 'en_US', 'Categories'),
(104, 104, 'en_US', 'Filterable'),
(105, 105, 'en_US', 'Name'),
(106, 106, 'en_US', 'URL'),
(107, 107, 'en_US', 'Attribute'),
(108, 108, 'en_US', 'Values'),
(109, 109, 'en_US', 'Create Attribute Set'),
(110, 110, 'en_US', 'Delete Attribute Set'),
(111, 111, 'en_US', 'Edit Attribute Set'),
(112, 112, 'en_US', 'Index Attribute Set'),
(113, 113, 'en_US', 'Create Attribute'),
(114, 114, 'en_US', 'Delete Attribute'),
(115, 115, 'en_US', 'Edit Attribute'),
(116, 116, 'en_US', 'Index Attribute'),
(117, 117, 'en_US', 'Attribute Sets'),
(118, 118, 'en_US', 'Attributes'),
(119, 119, 'en_US', 'Enter the code from the image'),
(120, 120, 'en_US', 'Invalid code from the image.'),
(121, 121, 'en_US', 'Update'),
(122, 122, 'en_US', 'Status'),
(123, 123, 'en_US', 'Name'),
(124, 124, 'en_US', 'URL'),
(125, 125, 'en_US', 'Brand'),
(126, 126, 'en_US', 'Brands'),
(127, 127, 'en_US', 'Banner'),
(128, 128, 'en_US', 'Enable the brand'),
(129, 129, 'en_US', 'Logo'),
(130, 130, 'en_US', 'Logo'),
(131, 131, 'en_US', 'Name'),
(132, 132, 'en_US', 'General'),
(133, 133, 'en_US', 'Brand Information'),
(134, 134, 'en_US', 'Images'),
(135, 135, 'en_US', 'SEO'),
(136, 136, 'en_US', 'Create Brand'),
(137, 137, 'en_US', 'Delete Brand'),
(138, 138, 'en_US', 'Edit Brand'),
(139, 139, 'en_US', 'Index Brand'),
(140, 140, 'en_US', 'Sorry, we only have :stock in stock.'),
(141, 141, 'en_US', 'Sorry, one or more product doesn\'t have enough stock.'),
(142, 142, 'en_US', 'Sorry, one or more product is out of stock.'),
(143, 143, 'en_US', 'Sorry, the product is out of stock.'),
(144, 144, 'en_US', 'The selected option is invalid.'),
(145, 145, 'en_US', 'This field is required.'),
(146, 146, 'en_US', 'ID'),
(147, 147, 'en_US', 'Status'),
(148, 148, 'en_US', 'Searchable'),
(149, 149, 'en_US', 'Name'),
(150, 150, 'en_US', 'URL'),
(151, 151, 'en_US', 'Categories'),
(152, 152, 'en_US', 'Category'),
(153, 153, 'en_US', 'Banner'),
(154, 154, 'en_US', 'Enable the category'),
(155, 155, 'en_US', 'Logo'),
(156, 156, 'en_US', 'Show this category in search box category list'),
(157, 157, 'en_US', 'General'),
(158, 158, 'en_US', 'Image'),
(159, 159, 'en_US', 'SEO'),
(160, 160, 'en_US', 'Add Root Category'),
(161, 161, 'en_US', 'Add Subcategory'),
(162, 162, 'en_US', 'Collapse All'),
(163, 163, 'en_US', 'Expand All'),
(164, 164, 'en_US', 'Category order has been saved.'),
(165, 165, 'en_US', 'Create Categories'),
(166, 166, 'en_US', 'Delete Categories'),
(167, 167, 'en_US', 'Edit Categories'),
(168, 168, 'en_US', 'Index Categories'),
(169, 169, 'en_US', 'Categories'),
(170, 170, 'en_US', 'Address Line 1'),
(171, 171, 'en_US', 'Address Line 2 (optional)'),
(172, 172, 'en_US', 'City'),
(173, 173, 'en_US', 'Country'),
(174, 174, 'en_US', 'First Name'),
(175, 175, 'en_US', 'Last Name'),
(176, 176, 'en_US', 'State / Province'),
(177, 177, 'en_US', 'Postcode / ZIP'),
(178, 178, 'en_US', 'Create an account?'),
(179, 179, 'en_US', 'Email'),
(180, 180, 'en_US', 'Phone'),
(181, 181, 'en_US', 'Order Note'),
(182, 182, 'en_US', 'Ship to a different address'),
(183, 183, 'en_US', 'Password'),
(184, 184, 'en_US', 'Address Line 1'),
(185, 185, 'en_US', 'Address Line 2 (optional)'),
(186, 186, 'en_US', 'City'),
(187, 187, 'en_US', 'Country'),
(188, 188, 'en_US', 'First Name'),
(189, 189, 'en_US', 'Last Name'),
(190, 190, 'en_US', 'State / Province'),
(191, 191, 'en_US', 'Postcode / ZIP'),
(192, 192, 'en_US', 'Street Address'),
(193, 193, 'en_US', 'If you’re having trouble clicking the \"View Order\" button, copy and paste the URL below into your web browser:'),
(194, 194, 'en_US', 'A new order has been placed'),
(195, 195, 'en_US', 'A new order has been placed. The order id is #:order_id.'),
(196, 196, 'en_US', 'View Order'),
(197, 197, 'en_US', 'Captcha'),
(198, 198, 'en_US', 'Email'),
(199, 199, 'en_US', 'Message'),
(200, 200, 'en_US', 'Subject'),
(201, 201, 'en_US', 'Your message has been sent.'),
(202, 202, 'en_US', 'The given data was invalid.'),
(203, 203, 'en_US', 'Mail is not configured properly.'),
(204, 204, 'en_US', 'The :attribute must be accepted.'),
(205, 205, 'en_US', 'The :attribute is not a valid URL.'),
(206, 206, 'en_US', 'The :attribute must be a date after :date.'),
(207, 207, 'en_US', 'The :attribute must be a date after or equal to :date.'),
(208, 208, 'en_US', 'The :attribute may only contain letters.'),
(209, 209, 'en_US', 'The :attribute may only contain letters, numbers, and dashes.'),
(210, 210, 'en_US', 'The :attribute may only contain letters and numbers.'),
(211, 211, 'en_US', 'The :attribute must be an array.'),
(212, 212, 'en_US', 'The :attribute must be a date before :date.'),
(213, 213, 'en_US', 'The :attribute must be a date before or equal to :date.'),
(214, 214, 'en_US', 'The :attribute must have between :min and :max items.'),
(215, 215, 'en_US', 'The :attribute must be between :min and :max kilobytes.'),
(216, 216, 'en_US', 'The :attribute must be between :min and :max.'),
(217, 217, 'en_US', 'The :attribute must be between :min and :max characters.'),
(218, 218, 'en_US', 'The :attribute field must be true or false.'),
(219, 219, 'en_US', 'The captcha code is incorrect.'),
(220, 220, 'en_US', 'The :attribute confirmation does not match.'),
(221, 221, 'en_US', 'The :attribute is not a valid date.'),
(222, 222, 'en_US', 'The :attribute does not match the format :format.'),
(223, 223, 'en_US', 'The :attribute and :other must be different.'),
(224, 224, 'en_US', 'The :attribute must be :digits digits.'),
(225, 225, 'en_US', 'The :attribute must be between :min and :max digits.'),
(226, 226, 'en_US', 'The :attribute has invalid image dimensions.'),
(227, 227, 'en_US', 'The :attribute field has a duplicate value.'),
(228, 228, 'en_US', 'The :attribute must be a valid email address.'),
(229, 229, 'en_US', 'The selected :attribute is invalid.'),
(230, 230, 'en_US', 'The :attribute must be a file.'),
(231, 231, 'en_US', 'The :attribute field must have a value.'),
(232, 232, 'en_US', 'The :attribute must be an image.'),
(233, 233, 'en_US', 'The selected :attribute is invalid.'),
(234, 234, 'en_US', 'The :attribute field does not exist in :other.'),
(235, 235, 'en_US', 'The :attribute must be an integer.'),
(236, 236, 'en_US', 'The :attribute must be a valid IP address.'),
(237, 237, 'en_US', 'The :attribute must be a valid IPv4 address.'),
(238, 238, 'en_US', 'The :attribute must be a valid IPv6 address.'),
(239, 239, 'en_US', 'The :attribute must be a valid JSON string.'),
(240, 240, 'en_US', 'The :attribute may not have more than :max items.'),
(241, 241, 'en_US', 'The :attribute may not be greater than :max kilobytes.'),
(242, 242, 'en_US', 'The :attribute may not be greater than :max.'),
(243, 243, 'en_US', 'The :attribute may not be greater than :max characters.'),
(244, 244, 'en_US', 'The :attribute must be a file of type: :values.'),
(245, 245, 'en_US', 'The :attribute must be a file of type: :values.'),
(246, 246, 'en_US', 'The :attribute must have at least :min items.'),
(247, 247, 'en_US', 'The :attribute must be at least :min kilobytes.'),
(248, 248, 'en_US', 'The :attribute must be at least :min.'),
(249, 249, 'en_US', 'The :attribute must be at least :min characters.'),
(250, 250, 'en_US', 'The selected :attribute is invalid.'),
(251, 251, 'en_US', 'The :attribute must be a number.'),
(252, 252, 'en_US', 'The :attribute field must be present.'),
(253, 253, 'en_US', 'Could not connect to the redis server.'),
(254, 254, 'en_US', 'The :attribute format is invalid.'),
(255, 255, 'en_US', 'The :attribute field is required.'),
(256, 256, 'en_US', 'The :attribute field is required when :other is :value.'),
(257, 257, 'en_US', 'The :attribute field is required unless :other is in :values.'),
(258, 258, 'en_US', 'The :attribute field is required when :values is present.'),
(259, 259, 'en_US', 'The :attribute field is required when :values is present.'),
(260, 260, 'en_US', 'The :attribute field is required when :values is not present.'),
(261, 261, 'en_US', 'The :attribute and :other must match.'),
(262, 262, 'en_US', 'The :attribute field is required when none of :values are present.'),
(263, 263, 'en_US', 'The :attribute must contain :size items.'),
(264, 264, 'en_US', 'The :attribute must be :size kilobytes.'),
(265, 265, 'en_US', 'The :attribute must be :size.'),
(266, 266, 'en_US', 'The :attribute must be :size characters.'),
(267, 267, 'en_US', 'The :attribute must be a string.'),
(268, 268, 'en_US', 'The :attribute must be a valid zone.'),
(269, 269, 'en_US', 'The :attribute has already been taken.'),
(270, 270, 'en_US', 'The :attribute failed to upload.'),
(271, 271, 'en_US', 'The :attribute format is invalid.'),
(272, 272, 'en_US', 'Categories'),
(273, 273, 'en_US', 'Code'),
(274, 274, 'en_US', 'End date'),
(275, 275, 'en_US', 'Exclude Categories'),
(276, 276, 'en_US', 'Exclude Products'),
(277, 277, 'en_US', 'Free Shipping'),
(278, 278, 'en_US', 'Status'),
(279, 279, 'en_US', 'Discount Type'),
(280, 280, 'en_US', 'Maximum Spend'),
(281, 281, 'en_US', 'Minimum Spend'),
(282, 282, 'en_US', 'Name'),
(283, 283, 'en_US', 'Products'),
(284, 284, 'en_US', 'Start date'),
(285, 285, 'en_US', 'Usage Limit Per Coupon'),
(286, 286, 'en_US', 'Usage Limit Per Customer'),
(287, 287, 'en_US', 'Value'),
(288, 288, 'en_US', 'Coupon'),
(289, 289, 'en_US', 'Coupons'),
(290, 290, 'en_US', 'Allow free shipping'),
(291, 291, 'en_US', 'Enable the coupon'),
(292, 292, 'en_US', 'Fixed'),
(293, 293, 'en_US', 'Percent'),
(294, 294, 'en_US', 'Code'),
(295, 295, 'en_US', 'Discount'),
(296, 296, 'en_US', 'Name'),
(297, 297, 'en_US', 'General'),
(298, 298, 'en_US', 'Coupon Information'),
(299, 299, 'en_US', 'Usage Limits'),
(300, 300, 'en_US', 'Usage Restrictions'),
(301, 301, 'en_US', 'The coupon has been already applied.'),
(302, 302, 'en_US', 'This coupon is not applicable to your cart.'),
(303, 303, 'en_US', 'The coupon is not valid.'),
(304, 304, 'en_US', 'You need to spend less than :amount to apply this coupon.'),
(305, 305, 'en_US', 'You need to spend at least :amount to apply this coupon.'),
(306, 306, 'en_US', 'The coupon does not exist.'),
(307, 307, 'en_US', 'The coupon usage limit has been reached.'),
(308, 308, 'en_US', 'Create Coupons'),
(309, 309, 'en_US', 'Delete Coupons'),
(310, 310, 'en_US', 'Edit Coupons'),
(311, 311, 'en_US', 'Index Coupons'),
(312, 312, 'en_US', 'Rate'),
(313, 313, 'en_US', 'Currency Rate'),
(314, 314, 'en_US', 'Currency Rates'),
(315, 315, 'en_US', 'Refresh currency rates from :service'),
(316, 316, 'en_US', 'Refresh Rates'),
(317, 317, 'en_US', 'Code'),
(318, 318, 'en_US', 'Currency'),
(319, 319, 'en_US', 'Last Updated'),
(320, 320, 'en_US', 'Rate'),
(321, 321, 'en_US', 'General'),
(322, 322, 'en_US', 'Currency Rate Information'),
(323, 323, 'en_US', 'Currency rate exchange service is not configured.'),
(324, 324, 'en_US', 'Edit Currency Rates'),
(325, 325, 'en_US', 'Index Currency Rates'),
(326, 326, 'en_US', 'Currency Data Feed'),
(327, 327, 'en_US', 'Fixer'),
(328, 328, 'en_US', 'Forge'),
(329, 329, 'en_US', 'Campaign Name'),
(330, 330, 'en_US', 'End Date'),
(331, 331, 'en_US', 'Price'),
(332, 332, 'en_US', 'Product'),
(333, 333, 'en_US', 'End Date'),
(334, 334, 'en_US', 'Price'),
(335, 335, 'en_US', 'Product'),
(336, 336, 'en_US', 'Quantity'),
(337, 337, 'en_US', 'Quantity'),
(338, 338, 'en_US', 'Flash Sale'),
(339, 339, 'en_US', 'Flash Sales'),
(340, 340, 'en_US', 'Add Product'),
(341, 341, 'en_US', 'Flash Sale Product'),
(342, 342, 'en_US', 'Campaign Name'),
(343, 343, 'en_US', 'Flash Sale Information'),
(344, 344, 'en_US', 'Products'),
(345, 345, 'en_US', 'Settings'),
(346, 346, 'en_US', 'Create Flash Sale'),
(347, 347, 'en_US', 'Delete Flash Sale'),
(348, 348, 'en_US', 'Edit Flash Sale'),
(349, 349, 'en_US', 'Index Flash Sale'),
(350, 350, 'en_US', 'CSV File'),
(351, 351, 'en_US', 'Import Type'),
(352, 352, 'en_US', 'Download CSV'),
(353, 353, 'en_US', 'Import'),
(354, 354, 'en_US', 'Product'),
(355, 355, 'en_US', 'Importer'),
(356, 356, 'en_US', 'Run'),
(357, 357, 'en_US', 'The importer has been run successfully.'),
(358, 358, 'en_US', 'There was an error on rows (:rows).'),
(359, 359, 'en_US', 'Create Import'),
(360, 360, 'en_US', 'Index Import'),
(361, 361, 'en_US', 'Importer'),
(362, 362, 'en_US', 'Browse'),
(363, 363, 'en_US', 'Drop files here or click to upload'),
(364, 364, 'en_US', 'Select this file'),
(365, 365, 'en_US', 'File Manager'),
(366, 366, 'en_US', 'Media'),
(367, 367, 'en_US', 'Filename'),
(368, 368, 'en_US', 'Height'),
(369, 369, 'en_US', 'Thumbnail'),
(370, 370, 'en_US', 'Width'),
(371, 371, 'en_US', 'Thumbnails'),
(372, 372, 'en_US', 'Upload New File'),
(373, 373, 'en_US', 'Image has been added.'),
(374, 374, 'en_US', 'Create Media'),
(375, 375, 'en_US', 'Delete Media'),
(376, 376, 'en_US', 'Index Media'),
(377, 377, 'en_US', 'Category'),
(378, 378, 'en_US', 'Icon'),
(379, 379, 'en_US', 'Status'),
(380, 380, 'en_US', 'Fluid Menu'),
(381, 381, 'en_US', 'Page'),
(382, 382, 'en_US', 'Name'),
(383, 383, 'en_US', 'Parent Menu Item'),
(384, 384, 'en_US', 'Target'),
(385, 385, 'en_US', 'Type'),
(386, 386, 'en_US', 'URL'),
(387, 387, 'en_US', 'Back to Menu Edit Page'),
(388, 388, 'en_US', 'Background Image'),
(389, 389, 'en_US', 'Enable the menu item'),
(390, 390, 'en_US', 'This is a full width menu'),
(391, 391, 'en_US', 'Select Category'),
(392, 392, 'en_US', 'Select Page'),
(393, 393, 'en_US', 'Select Parent'),
(394, 394, 'en_US', 'New Tab'),
(395, 395, 'en_US', 'Same Tab'),
(396, 396, 'en_US', 'Category'),
(397, 397, 'en_US', 'Page'),
(398, 398, 'en_US', 'URL'),
(399, 399, 'en_US', 'Menu Item'),
(400, 400, 'en_US', 'General'),
(401, 401, 'en_US', 'Menu Item Information'),
(402, 402, 'en_US', 'Image'),
(403, 403, 'en_US', 'Enable the menu'),
(404, 404, 'en_US', 'Please save the menu first to add menu items.'),
(405, 405, 'en_US', 'Menu'),
(406, 406, 'en_US', 'Menus'),
(407, 407, 'en_US', 'Name'),
(408, 408, 'en_US', 'Menu item has been deleted.'),
(409, 409, 'en_US', 'Menu items order has been updated.'),
(410, 410, 'en_US', 'Create Menu Items'),
(411, 411, 'en_US', 'Delete Menu Items'),
(412, 412, 'en_US', 'Edit Menu Items'),
(413, 413, 'en_US', 'Index Menu Items'),
(414, 414, 'en_US', 'Create Menus'),
(415, 415, 'en_US', 'Delete Menus'),
(416, 416, 'en_US', 'Edit Menus'),
(417, 417, 'en_US', 'Index Menus'),
(418, 418, 'en_US', 'Menus'),
(419, 419, 'en_US', 'Meta Description'),
(420, 420, 'en_US', 'Meta Title'),
(421, 421, 'en_US', 'Email'),
(422, 422, 'en_US', 'Required'),
(423, 423, 'en_US', 'Label'),
(424, 424, 'en_US', 'Name'),
(425, 425, 'en_US', 'Name'),
(426, 426, 'en_US', 'Type'),
(427, 427, 'en_US', 'Label'),
(428, 428, 'en_US', 'Price'),
(429, 429, 'en_US', 'Price Type'),
(430, 430, 'en_US', 'Price'),
(431, 431, 'en_US', 'Price Type'),
(432, 432, 'en_US', 'Type'),
(433, 433, 'en_US', 'Label'),
(434, 434, 'en_US', 'Price'),
(435, 435, 'en_US', 'Price Type'),
(436, 436, 'en_US', 'Add Global Option'),
(437, 437, 'en_US', 'Add New Option'),
(438, 438, 'en_US', 'Add New Row'),
(439, 439, 'en_US', 'Delete Option'),
(440, 440, 'en_US', 'Delete Row'),
(441, 441, 'en_US', 'New Option'),
(442, 442, 'en_US', 'Checkbox'),
(443, 443, 'en_US', 'Custom Checkbox'),
(444, 444, 'en_US', 'Date'),
(445, 445, 'en_US', 'Date & Time'),
(446, 446, 'en_US', 'Dropdown'),
(447, 447, 'en_US', 'Field'),
(448, 448, 'en_US', 'Multiple Select'),
(449, 449, 'en_US', 'Please Select'),
(450, 450, 'en_US', 'Radio Button'),
(451, 451, 'en_US', 'Custom Radio Button'),
(452, 452, 'en_US', 'Select'),
(453, 453, 'en_US', 'Text'),
(454, 454, 'en_US', 'Textarea'),
(455, 455, 'en_US', 'Time'),
(456, 456, 'en_US', 'Price'),
(457, 457, 'en_US', 'Fixed'),
(458, 458, 'en_US', 'Percent'),
(459, 459, 'en_US', 'This option is required'),
(460, 460, 'en_US', 'Option'),
(461, 461, 'en_US', 'Options'),
(462, 462, 'en_US', 'Please select a option type.'),
(463, 463, 'en_US', 'Select Global Option'),
(464, 464, 'en_US', 'Name'),
(465, 465, 'en_US', 'Type'),
(466, 466, 'en_US', 'General'),
(467, 467, 'en_US', 'Option Information'),
(468, 468, 'en_US', 'Options'),
(469, 469, 'en_US', 'Values'),
(470, 470, 'en_US', 'Create Options'),
(471, 471, 'en_US', 'Delete Options'),
(472, 472, 'en_US', 'Edit Options'),
(473, 473, 'en_US', 'Index Options'),
(474, 474, 'en_US', 'Your order status is changed'),
(475, 475, 'en_US', 'Options'),
(476, 476, 'en_US', 'Your order #:order_id status is changed to :status.'),
(477, 477, 'en_US', 'Invoice has been sent to the customer.'),
(478, 478, 'en_US', 'Order status has been updated.'),
(479, 479, 'en_US', 'Account Information'),
(480, 480, 'en_US', 'Address Information'),
(481, 481, 'en_US', 'Billing Address'),
(482, 482, 'en_US', 'Coupon'),
(483, 483, 'en_US', 'Currency'),
(484, 484, 'en_US', 'Currency Rate'),
(485, 485, 'en_US', 'Customer Email'),
(486, 486, 'en_US', 'Customer Group'),
(487, 487, 'en_US', 'Customer Name'),
(488, 488, 'en_US', 'Customer Phone'),
(489, 489, 'en_US', 'Guest'),
(490, 490, 'en_US', 'Items Ordered'),
(491, 491, 'en_US', 'Line Total'),
(492, 492, 'en_US', 'Order'),
(493, 493, 'en_US', 'Order & Account Information'),
(494, 494, 'en_US', 'Order Date'),
(495, 495, 'en_US', 'Order Information'),
(496, 496, 'en_US', 'Order Note'),
(497, 497, 'en_US', 'Order Status'),
(498, 498, 'en_US', 'Orders'),
(499, 499, 'en_US', 'Payment Method'),
(500, 500, 'en_US', 'Print'),
(501, 501, 'en_US', 'Product'),
(502, 502, 'en_US', 'Quantity'),
(503, 503, 'en_US', 'Registered'),
(504, 504, 'en_US', 'Send Email'),
(505, 505, 'en_US', 'Shipping Address'),
(506, 506, 'en_US', 'Shipping Method'),
(507, 507, 'en_US', 'Subtotal'),
(508, 508, 'en_US', 'Customer Email'),
(509, 509, 'en_US', 'Customer Name'),
(510, 510, 'en_US', 'Total'),
(511, 511, 'en_US', 'Tax'),
(512, 512, 'en_US', 'Total'),
(513, 513, 'en_US', 'Unit Price'),
(514, 514, 'en_US', 'Edit Order'),
(515, 515, 'en_US', 'Index Order'),
(516, 516, 'en_US', 'Show Order'),
(517, 517, 'en_US', 'Billing Address'),
(518, 518, 'en_US', 'Date'),
(519, 519, 'en_US', 'Email'),
(520, 520, 'en_US', 'INVOICE'),
(521, 521, 'en_US', 'Invoice ID'),
(522, 522, 'en_US', 'Line Total'),
(523, 523, 'en_US', 'Order Details'),
(524, 524, 'en_US', 'Payment Method'),
(525, 525, 'en_US', 'Phone'),
(526, 526, 'en_US', 'Product'),
(527, 527, 'en_US', 'Quantity'),
(528, 528, 'en_US', 'Shipping Address'),
(529, 529, 'en_US', 'Shipping Method'),
(530, 530, 'en_US', 'Subtotal'),
(531, 531, 'en_US', 'Total'),
(532, 532, 'en_US', 'Unit Price'),
(533, 533, 'en_US', 'Canceled'),
(534, 534, 'en_US', 'Completed'),
(535, 535, 'en_US', 'On Hold'),
(536, 536, 'en_US', 'Pending'),
(537, 537, 'en_US', 'Pending Payment'),
(538, 538, 'en_US', 'Processing'),
(539, 539, 'en_US', 'Refunded'),
(540, 540, 'en_US', 'Body'),
(541, 541, 'en_US', 'Status'),
(542, 542, 'en_US', 'Name'),
(543, 543, 'en_US', 'URL'),
(544, 544, 'en_US', 'Enable the page'),
(545, 545, 'en_US', 'Page'),
(546, 546, 'en_US', 'Pages'),
(547, 547, 'en_US', 'Name'),
(548, 548, 'en_US', 'General'),
(549, 549, 'en_US', 'Page Information'),
(550, 550, 'en_US', 'SEO'),
(551, 551, 'en_US', 'Create Pages'),
(552, 552, 'en_US', 'Delete Pages'),
(553, 553, 'en_US', 'Edit Pages'),
(554, 554, 'en_US', 'Index Pages'),
(555, 555, 'en_US', 'Pages'),
(556, 556, 'en_US', 'Only INR currency is supported.'),
(557, 557, 'en_US', 'Brand'),
(558, 558, 'en_US', 'Categories'),
(559, 559, 'en_US', 'Description'),
(560, 560, 'en_US', 'Stock Availability'),
(561, 561, 'en_US', 'Status'),
(562, 562, 'en_US', 'Inventory Management'),
(563, 563, 'en_US', 'Name'),
(564, 564, 'en_US', 'Product New From'),
(565, 565, 'en_US', 'Product New To'),
(566, 566, 'en_US', 'Price'),
(567, 567, 'en_US', 'Qty'),
(568, 568, 'en_US', 'Short Description'),
(569, 569, 'en_US', 'SKU'),
(570, 570, 'en_US', 'URL'),
(571, 571, 'en_US', 'Special Price'),
(572, 572, 'en_US', 'Special Price End'),
(573, 573, 'en_US', 'Special Price Start'),
(574, 574, 'en_US', 'Special Price Type'),
(575, 575, 'en_US', 'Tags'),
(576, 576, 'en_US', 'Tax Class'),
(577, 577, 'en_US', 'Virtual'),
(578, 578, 'en_US', 'Create Products'),
(579, 579, 'en_US', 'Delete Products'),
(580, 580, 'en_US', 'Edit Products'),
(581, 581, 'en_US', 'Index Products'),
(582, 582, 'en_US', 'Add New File'),
(583, 583, 'en_US', 'Additional Images'),
(584, 584, 'en_US', 'Base Image'),
(585, 585, 'en_US', 'Choose'),
(586, 586, 'en_US', 'Delete File'),
(587, 587, 'en_US', 'Downloadable Files'),
(588, 588, 'en_US', 'Enable the product'),
(589, 589, 'en_US', 'File'),
(590, 590, 'en_US', 'Don\'t Track Inventory'),
(591, 591, 'en_US', 'Track Inventory'),
(592, 592, 'en_US', 'Fixed'),
(593, 593, 'en_US', 'Percent'),
(594, 594, 'en_US', 'Out of Stock'),
(595, 595, 'en_US', 'In Stock'),
(596, 596, 'en_US', 'The product won\'t be shipped'),
(597, 597, 'en_US', 'Product'),
(598, 598, 'en_US', 'Products'),
(599, 599, 'en_US', 'Name'),
(600, 600, 'en_US', 'Price'),
(601, 601, 'en_US', 'Thumbnail'),
(602, 602, 'en_US', 'Additional'),
(603, 603, 'en_US', 'Cross-Sells'),
(604, 604, 'en_US', 'Downloads'),
(605, 605, 'en_US', 'General'),
(606, 606, 'en_US', 'Advanced Information'),
(607, 607, 'en_US', 'Basic Information'),
(608, 608, 'en_US', 'Images'),
(609, 609, 'en_US', 'Inventory'),
(610, 610, 'en_US', 'Price'),
(611, 611, 'en_US', 'Related Products'),
(612, 612, 'en_US', 'SEO'),
(613, 613, 'en_US', 'Up-Sells'),
(614, 614, 'en_US', 'Catalog'),
(615, 615, 'en_US', 'Products'),
(616, 616, 'en_US', 'Filter'),
(617, 617, 'en_US', 'Brand'),
(618, 618, 'en_US', 'Category'),
(619, 619, 'en_US', 'Coupon Code'),
(620, 620, 'en_US', 'Customer Email'),
(621, 621, 'en_US', 'Customer Name'),
(622, 622, 'en_US', 'Date End'),
(623, 623, 'en_US', 'Date Start'),
(624, 624, 'en_US', 'Group By'),
(625, 625, 'en_US', 'Days'),
(626, 626, 'en_US', 'Months'),
(627, 627, 'en_US', 'Weeks'),
(628, 628, 'en_US', 'Years'),
(629, 629, 'en_US', 'Keyword'),
(630, 630, 'en_US', 'Please Select'),
(631, 631, 'en_US', 'Product'),
(632, 632, 'en_US', 'Quantity Above'),
(633, 633, 'en_US', 'Quantity Below'),
(634, 634, 'en_US', 'Report Type'),
(635, 635, 'en_US', 'Branded Products Report'),
(636, 636, 'en_US', 'Categorized Products Report'),
(637, 637, 'en_US', 'Coupons Report'),
(638, 638, 'en_US', 'Customers Order Report'),
(639, 639, 'en_US', 'Products Purchase Report'),
(640, 640, 'en_US', 'Products Stock Report'),
(641, 641, 'en_US', 'Products View Report'),
(642, 642, 'en_US', 'Sales Report'),
(643, 643, 'en_US', 'Search Report'),
(644, 644, 'en_US', 'Shipping Report'),
(645, 645, 'en_US', 'Tagged Products Report'),
(646, 646, 'en_US', 'Tax Report'),
(647, 647, 'en_US', 'Taxed Products Report'),
(648, 648, 'en_US', 'Shipping Method'),
(649, 649, 'en_US', 'SKU'),
(650, 650, 'en_US', 'Order Status'),
(651, 651, 'en_US', 'Stock Availability'),
(652, 652, 'en_US', 'In Stock'),
(653, 653, 'en_US', 'Out of Stock'),
(654, 654, 'en_US', 'Tag'),
(655, 655, 'en_US', 'Tax Class'),
(656, 656, 'en_US', 'Tax Name'),
(657, 657, 'en_US', 'No data available!'),
(658, 658, 'en_US', 'Reports'),
(659, 659, 'en_US', 'Brand'),
(660, 660, 'en_US', 'Category'),
(661, 661, 'en_US', 'Coupon Code'),
(662, 662, 'en_US', 'Coupon Name'),
(663, 663, 'en_US', 'Customer Email'),
(664, 664, 'en_US', 'Customer Group'),
(665, 665, 'en_US', 'Customer Email'),
(666, 666, 'en_US', 'Date'),
(667, 667, 'en_US', 'Discount'),
(668, 668, 'en_US', 'Guest'),
(669, 669, 'en_US', 'Hits'),
(670, 670, 'en_US', 'Keyword'),
(671, 671, 'en_US', 'Orders'),
(672, 672, 'en_US', 'Product'),
(673, 673, 'en_US', 'Products'),
(674, 674, 'en_US', 'Products Count'),
(675, 675, 'en_US', 'Qty'),
(676, 676, 'en_US', 'Registered'),
(677, 677, 'en_US', 'Results'),
(678, 678, 'en_US', 'Shipping'),
(679, 679, 'en_US', 'Shipping Method'),
(680, 680, 'en_US', 'Stock Availability'),
(681, 681, 'en_US', 'Subtotal'),
(682, 682, 'en_US', 'Tag'),
(683, 683, 'en_US', 'Tax'),
(684, 684, 'en_US', 'Tax Class'),
(685, 685, 'en_US', 'Tax Name'),
(686, 686, 'en_US', 'Total'),
(687, 687, 'en_US', 'Views'),
(688, 688, 'en_US', 'ViewsIndex Reports'),
(689, 689, 'en_US', 'Reports'),
(690, 690, 'en_US', 'Captcha'),
(691, 691, 'en_US', 'Comment'),
(692, 692, 'en_US', 'Status'),
(693, 693, 'en_US', 'Rating'),
(694, 694, 'en_US', 'Reviewer Name'),
(695, 695, 'en_US', 'Your review is submitted for approval.'),
(696, 696, 'en_US', 'Delete Reviews'),
(697, 697, 'en_US', 'Edit Reviews'),
(698, 698, 'en_US', 'Index Reviews'),
(699, 699, 'en_US', 'Approve this review'),
(700, 700, 'en_US', 'Review'),
(701, 701, 'en_US', 'Product'),
(702, 702, 'en_US', 'Back to product edit page'),
(703, 703, 'en_US', 'Reviews'),
(704, 704, 'en_US', 'Approved'),
(705, 705, 'en_US', 'Rating'),
(706, 706, 'en_US', 'Reviewer Name'),
(707, 707, 'en_US', 'general'),
(708, 708, 'en_US', 'Review Information'),
(709, 709, 'en_US', 'Reviews'),
(710, 710, 'en_US', 'Reviews'),
(711, 711, 'en_US', 'Approved'),
(712, 712, 'en_US', 'Unapproved'),
(713, 713, 'en_US', 'New Order Admin Email'),
(714, 714, 'en_US', 'Auto Approve Reviews'),
(715, 715, 'en_US', 'Frequency'),
(716, 716, 'en_US', 'Auto Refresh'),
(717, 717, 'en_US', 'Status'),
(718, 718, 'en_US', 'Status'),
(719, 719, 'en_US', 'Status'),
(720, 720, 'en_US', 'Cookie Bar'),
(721, 721, 'en_US', 'Currency Data Feed API Key'),
(722, 722, 'en_US', 'Exchange Rate Service'),
(723, 723, 'en_US', 'Footer'),
(724, 724, 'en_US', 'Header'),
(725, 725, 'en_US', 'Customer Role'),
(726, 726, 'en_US', 'Default Country'),
(727, 727, 'en_US', 'Default Currency'),
(728, 728, 'en_US', 'Default Locale'),
(729, 729, 'en_US', 'Default Timezone'),
(730, 730, 'en_US', 'Email Order Statuses'),
(731, 731, 'en_US', 'App ID'),
(732, 732, 'en_US', 'App Secret'),
(733, 733, 'en_US', 'Status'),
(734, 734, 'en_US', 'Fixer Access key'),
(735, 735, 'en_US', 'Cost'),
(736, 736, 'en_US', 'Status'),
(737, 737, 'en_US', 'Forge API key'),
(738, 738, 'en_US', 'Status'),
(739, 739, 'en_US', 'Minimum Amount'),
(740, 740, 'en_US', 'Client ID'),
(741, 741, 'en_US', 'Client Secret'),
(742, 742, 'en_US', 'Status'),
(743, 743, 'en_US', 'API Key'),
(744, 744, 'en_US', 'Auth Token'),
(745, 745, 'en_US', 'Description'),
(746, 746, 'en_US', 'Status'),
(747, 747, 'en_US', 'Label'),
(748, 748, 'en_US', 'Sandbox'),
(749, 749, 'en_US', 'Invoice Email'),
(750, 750, 'en_US', 'Cost'),
(751, 751, 'en_US', 'Status'),
(752, 752, 'en_US', 'Mail Encryption'),
(753, 753, 'en_US', 'Mail From Address'),
(754, 754, 'en_US', 'Mail From Name'),
(755, 755, 'en_US', 'Mail Host'),
(756, 756, 'en_US', 'Mail Password'),
(757, 757, 'en_US', 'Mail Port'),
(758, 758, 'en_US', 'Mail Username'),
(759, 759, 'en_US', 'Mailchimp API Key'),
(760, 760, 'en_US', 'Mailchimp List ID'),
(761, 761, 'en_US', 'Maintenance Mode'),
(762, 762, 'en_US', 'New Order Admin SMS'),
(763, 763, 'en_US', 'Newsletter'),
(764, 764, 'en_US', 'New Order SMS'),
(765, 765, 'en_US', 'Client ID'),
(766, 766, 'en_US', 'Status'),
(767, 767, 'en_US', 'Secret'),
(768, 768, 'en_US', 'Sandbox'),
(769, 769, 'en_US', 'Status'),
(770, 770, 'en_US', 'Merchant ID'),
(771, 771, 'en_US', 'Merchant Key'),
(772, 772, 'en_US', 'Sandbox'),
(773, 773, 'en_US', 'Description'),
(774, 774, 'en_US', 'Status'),
(775, 775, 'en_US', 'Key Id'),
(776, 776, 'en_US', 'Key Secret'),
(777, 777, 'en_US', 'Label'),
(778, 778, 'en_US', 'Reviews & Ratings'),
(779, 779, 'en_US', 'SMS From'),
(780, 780, 'en_US', 'SMS Order Statuses'),
(781, 781, 'en_US', 'SMS Service'),
(782, 782, 'en_US', 'Store Address 1'),
(783, 783, 'en_US', 'Store Address 2'),
(784, 784, 'en_US', 'Store City'),
(785, 785, 'en_US', 'Store Country'),
(786, 786, 'en_US', 'Store Email'),
(787, 787, 'en_US', 'Hide Store Email'),
(788, 788, 'en_US', 'Store Phone'),
(789, 789, 'en_US', 'Hide Store Phone'),
(790, 790, 'en_US', 'Store State'),
(791, 791, 'en_US', 'Store Zip'),
(792, 792, 'en_US', 'Status'),
(793, 793, 'en_US', 'Publishable Key'),
(794, 794, 'en_US', 'Secret Key'),
(795, 795, 'en_US', 'Supported Countries'),
(796, 796, 'en_US', 'Supported Countries'),
(797, 797, 'en_US', 'Supported Currencies'),
(798, 798, 'en_US', 'Supported Currencies'),
(799, 799, 'en_US', 'Supported Locales'),
(800, 800, 'en_US', 'Supported Locales'),
(801, 801, 'en_US', 'Description'),
(802, 802, 'en_US', 'Instructions'),
(803, 803, 'en_US', 'Label'),
(804, 804, 'en_US', 'Description'),
(805, 805, 'en_US', 'Instructions'),
(806, 806, 'en_US', 'Label'),
(807, 807, 'en_US', 'Description'),
(808, 808, 'en_US', 'Label'),
(809, 809, 'en_US', 'Label'),
(810, 810, 'en_US', 'Label'),
(811, 811, 'en_US', 'Label'),
(812, 812, 'en_US', 'Description'),
(813, 813, 'en_US', 'Label'),
(814, 814, 'en_US', 'Description'),
(815, 815, 'en_US', 'Label'),
(816, 816, 'en_US', 'Store Name'),
(817, 817, 'en_US', 'Store Tagline'),
(818, 818, 'en_US', 'Description'),
(819, 819, 'en_US', 'Label'),
(820, 820, 'en_US', 'Account SID'),
(821, 821, 'en_US', 'Auth Token'),
(822, 822, 'en_US', 'API Key'),
(823, 823, 'en_US', 'API Secret'),
(824, 824, 'en_US', 'Welcome Email'),
(825, 825, 'en_US', 'Welcome SMS'),
(826, 826, 'en_US', 'Settings have been saved.'),
(827, 827, 'en_US', 'Edit Settings'),
(828, 828, 'en_US', 'Allow customers to subscribe to your newsletter'),
(829, 829, 'en_US', 'Allow customers to give reviews & ratings'),
(830, 830, 'en_US', 'Customer reviews will be approved automatically'),
(831, 831, 'en_US', 'Daily'),
(832, 832, 'en_US', 'Monthly'),
(833, 833, 'en_US', 'Weekly'),
(834, 834, 'en_US', 'Customer Notification Settings'),
(835, 835, 'en_US', 'Enable auto-refreshing currency rates'),
(836, 836, 'en_US', 'Enable Bank Transfer'),
(837, 837, 'en_US', 'Enable Check / Money Order'),
(838, 838, 'en_US', 'Enable Cash On Delivery'),
(839, 839, 'en_US', 'Enable Facebook Login'),
(840, 840, 'en_US', 'Enable Flat Rate'),
(841, 841, 'en_US', 'Enable Free Shipping'),
(842, 842, 'en_US', 'Enable Google Login'),
(843, 843, 'en_US', 'Enable Instamojo'),
(844, 844, 'en_US', 'Enable Local Pickup'),
(845, 845, 'en_US', 'Enable PayPal'),
(846, 846, 'en_US', 'Enable Paytm'),
(847, 847, 'en_US', 'Enable Razorpay'),
(848, 848, 'en_US', 'Enable Stripe'),
(849, 849, 'en_US', 'Hide store email from the storefront'),
(850, 850, 'en_US', 'Hide store phone from the storefront'),
(851, 851, 'en_US', 'IP addreses seperated in new line'),
(852, 852, 'en_US', 'SSL'),
(853, 853, 'en_US', 'Tls'),
(854, 854, 'en_US', 'Order Notification Settings'),
(855, 855, 'en_US', 'Privacy Settings'),
(856, 856, 'en_US', 'Put the application into maintenance mode'),
(857, 857, 'en_US', 'Select Service'),
(858, 858, 'en_US', 'Send invoice email to the customer after checkout'),
(859, 859, 'en_US', 'Send new order notification to the admin'),
(860, 860, 'en_US', 'Send new order notification to the customer'),
(861, 861, 'en_US', 'Send welcome email after registration'),
(862, 862, 'en_US', 'Send welcome SMS after registration'),
(863, 863, 'en_US', 'Show cookie bar in your website'),
(864, 864, 'en_US', 'Use sandbox for test payments'),
(865, 865, 'en_US', 'Settings'),
(866, 866, 'en_US', 'Bank Transfer'),
(867, 867, 'en_US', 'Check / Money Order'),
(868, 868, 'en_US', 'Cash On Delivery'),
(869, 869, 'en_US', 'Currency'),
(870, 870, 'en_US', 'Flat Rate'),
(871, 871, 'en_US', 'Facebook'),
(872, 872, 'en_US', 'Custom CSS/JS'),
(873, 873, 'en_US', 'Free Shipping'),
(874, 874, 'en_US', 'General'),
(875, 875, 'en_US', 'Google'),
(876, 876, 'en_US', 'General Settings'),
(877, 877, 'en_US', 'Payment Methods'),
(878, 878, 'en_US', 'Shipping Methods'),
(879, 879, 'en_US', 'Social Logins'),
(880, 880, 'en_US', 'Instamojo'),
(881, 881, 'en_US', 'Local Pickup'),
(882, 882, 'en_US', 'Mail'),
(883, 883, 'en_US', 'Maintenance'),
(884, 884, 'en_US', 'Newsletter'),
(885, 885, 'en_US', 'PayPal'),
(886, 886, 'en_US', 'Paytm'),
(887, 887, 'en_US', 'Razorpay'),
(888, 888, 'en_US', 'SMS'),
(889, 889, 'en_US', 'Store'),
(890, 890, 'en_US', 'Stripe'),
(891, 891, 'en_US', 'SQLite is not installed.'),
(892, 892, 'en_US', 'General'),
(893, 893, 'en_US', 'Settings'),
(894, 894, 'en_US', 'Arrows'),
(895, 895, 'en_US', 'Autoplay'),
(896, 896, 'en_US', 'Autoplay Speed'),
(897, 897, 'en_US', 'Delay'),
(898, 898, 'en_US', 'Effect'),
(899, 899, 'en_US', 'Call to Action Text'),
(900, 900, 'en_US', 'Call to Action URL'),
(901, 901, 'en_US', 'Caption 1'),
(902, 902, 'en_US', 'Delay'),
(903, 903, 'en_US', 'Effect'),
(904, 904, 'en_US', 'Caption 2'),
(905, 905, 'en_US', 'Delay'),
(906, 906, 'en_US', 'Delay'),
(907, 907, 'en_US', 'Direction'),
(908, 908, 'en_US', 'Dots'),
(909, 909, 'en_US', 'Fade'),
(910, 910, 'en_US', 'Name'),
(911, 911, 'en_US', 'Open in new window'),
(912, 912, 'en_US', 'Speed'),
(913, 913, 'en_US', 'Create Slider'),
(914, 914, 'en_US', 'Delete Slider'),
(915, 915, 'en_US', 'Edit Slider'),
(916, 916, 'en_US', 'Index Slider'),
(917, 917, 'en_US', 'fadeInDown'),
(918, 918, 'en_US', 'fadeInLeft'),
(919, 919, 'en_US', 'fadeInRight'),
(920, 920, 'en_US', 'fadeInUp'),
(921, 921, 'en_US', 'slideInDown'),
(922, 922, 'en_US', 'lightSpeedIn'),
(923, 923, 'en_US', 'slideInLeft'),
(924, 924, 'en_US', 'slideInRight'),
(925, 925, 'en_US', 'slideInUp'),
(926, 926, 'en_US', 'zoomIn'),
(927, 927, 'en_US', '3000ms'),
(928, 928, 'en_US', '300ms'),
(929, 929, 'en_US', 'Enable autoplay'),
(930, 930, 'en_US', 'Show Prev/Next arrows'),
(931, 931, 'en_US', 'Show slider dots'),
(932, 932, 'en_US', 'Fade slides instead of sliding'),
(933, 933, 'en_US', 'Add Slide'),
(934, 934, 'en_US', '0.3s'),
(935, 935, 'en_US', '0.7s'),
(936, 936, 'en_US', '0s'),
(937, 937, 'en_US', 'Call to Action'),
(938, 938, 'en_US', 'Call to Action URL'),
(939, 939, 'en_US', 'Caption 1'),
(940, 940, 'en_US', 'Caption 2'),
(941, 941, 'en_US', 'Left'),
(942, 942, 'en_US', 'Right'),
(943, 943, 'en_US', 'Open in new window'),
(944, 944, 'en_US', 'General'),
(945, 945, 'en_US', 'Options'),
(946, 946, 'en_US', 'Image Slide'),
(947, 947, 'en_US', 'Slider'),
(948, 948, 'en_US', 'Sliders'),
(949, 949, 'en_US', 'Name'),
(950, 950, 'en_US', 'Slider Information'),
(951, 951, 'en_US', 'Settings'),
(952, 952, 'en_US', 'Slides'),
(953, 953, 'en_US', 'A new order has been placed. The order id is #:order_id.'),
(954, 954, 'en_US', 'Hi :first_name,Your order #:order_id has been placed. Thanks for shopping with us.'),
(955, 955, 'en_US', 'Hi :first_name,Your order #:order_id status is changed to :status.'),
(956, 956, 'en_US', 'Welcome :first_name,Your account has been created successfully.'),
(957, 957, 'en_US', 'Twilio'),
(958, 958, 'en_US', 'Vonage'),
(959, 959, 'en_US', '404'),
(960, 960, 'en_US', 'BACK TO HOME'),
(961, 961, 'en_US', 'Oops! Page Not Found.'),
(962, 962, 'en_US', 'Sorry but we are unable to find the page that you are looking for.'),
(963, 963, 'en_US', 'ACTION'),
(964, 964, 'en_US', 'ADD NEW ADDRESS'),
(965, 965, 'en_US', 'Address Line 1'),
(966, 966, 'en_US', 'Address Line 2 (optional)'),
(967, 967, 'en_US', 'CANCEL'),
(968, 968, 'en_US', 'City'),
(969, 969, 'en_US', 'Are you sure want to delete this address?'),
(970, 970, 'en_US', 'Country'),
(971, 971, 'en_US', 'Delete'),
(972, 972, 'en_US', 'Edit'),
(973, 973, 'en_US', 'First Name'),
(974, 974, 'en_US', 'Last Name'),
(975, 975, 'en_US', 'New Address'),
(976, 976, 'en_US', 'Please Select'),
(977, 977, 'en_US', 'SAVE ADDRESS'),
(978, 978, 'en_US', 'State / Province'),
(979, 979, 'en_US', 'Street Address'),
(980, 980, 'en_US', 'Postcode / ZIP'),
(981, 981, 'en_US', 'Account Information'),
(982, 982, 'en_US', 'Edit'),
(983, 983, 'en_US', 'Recent Orders'),
(984, 984, 'en_US', 'View All'),
(985, 985, 'en_US', 'DATE'),
(986, 986, 'en_US', 'Download'),
(987, 987, 'en_US', 'FILENAME'),
(988, 988, 'en_US', 'You don\'t have any downloadable files.'),
(989, 989, 'en_US', 'No file found.'),
(990, 990, 'en_US', 'IMAGE'),
(991, 991, 'en_US', 'You haven\'t placed any order yet.'),
(992, 992, 'en_US', 'ORDER ID'),
(993, 993, 'en_US', 'TOTAL'),
(994, 994, 'en_US', 'View'),
(995, 995, 'en_US', 'View Order'),
(996, 996, 'en_US', 'Dashboard'),
(997, 997, 'en_US', 'Logout'),
(998, 998, 'en_US', 'My Account'),
(999, 999, 'en_US', 'My Addresses'),
(1000, 1000, 'en_US', 'My Downloads'),
(1001, 1001, 'en_US', 'My Orders'),
(1002, 1002, 'en_US', 'My Profile'),
(1003, 1003, 'en_US', 'My Reviews'),
(1004, 1004, 'en_US', 'My Wishlist'),
(1005, 1005, 'en_US', 'PRODUCT NAME'),
(1006, 1006, 'en_US', 'Account'),
(1007, 1007, 'en_US', 'Confirm Password'),
(1008, 1008, 'en_US', 'Email'),
(1009, 1009, 'en_US', 'First Name'),
(1010, 1010, 'en_US', 'Last Name'),
(1011, 1011, 'en_US', 'New Password'),
(1012, 1012, 'en_US', 'Password'),
(1013, 1013, 'en_US', 'Phone'),
(1014, 1014, 'en_US', 'SAVE CHANGES'),
(1015, 1015, 'en_US', 'You haven\'t reviewed any product yet.'),
(1016, 1016, 'en_US', 'RATING'),
(1017, 1017, 'en_US', 'STATUS'),
(1018, 1018, 'en_US', 'Billing Address'),
(1019, 1019, 'en_US', 'Coupon'),
(1020, 1020, 'en_US', 'Date:'),
(1021, 1021, 'en_US', 'Email:'),
(1022, 1022, 'en_US', 'LINE TOTAL'),
(1023, 1023, 'en_US', 'Order Information'),
(1024, 1024, 'en_US', 'Order Note:'),
(1025, 1025, 'en_US', 'Payment Method:'),
(1026, 1026, 'en_US', 'Phone:'),
(1027, 1027, 'en_US', 'QUANTITY'),
(1028, 1028, 'en_US', 'Shipping Address'),
(1029, 1029, 'en_US', 'Shipping Method:'),
(1030, 1030, 'en_US', 'Subtotal'),
(1031, 1031, 'en_US', 'Total'),
(1032, 1032, 'en_US', 'UNIT PRICE'),
(1033, 1033, 'en_US', 'View Order'),
(1034, 1034, 'en_US', 'AVAILABILITY'),
(1035, 1035, 'en_US', 'Delete'),
(1036, 1036, 'en_US', 'Your wishlist is empty.'),
(1037, 1037, 'en_US', 'In Stock'),
(1038, 1038, 'en_US', 'Out of Stock'),
(1039, 1039, 'en_US', 'PRICE'),
(1040, 1040, 'en_US', 'Call to Action Text'),
(1041, 1041, 'en_US', 'Call to Action URL'),
(1042, 1042, 'en_US', 'Caption 1'),
(1043, 1043, 'en_US', 'Caption 2'),
(1044, 1044, 'en_US', 'Category'),
(1045, 1045, 'en_US', 'Enabled'),
(1046, 1046, 'en_US', 'Icon'),
(1047, 1047, 'en_US', 'Open in new window'),
(1048, 1048, 'en_US', 'Products'),
(1049, 1049, 'en_US', 'Products Limit'),
(1050, 1050, 'en_US', 'Section Status'),
(1051, 1051, 'en_US', 'Section Subtitle'),
(1052, 1052, 'en_US', 'Section Title'),
(1053, 1053, 'en_US', 'Active Campaign'),
(1054, 1054, 'en_US', 'Address'),
(1055, 1055, 'en_US', 'Category Menu'),
(1056, 1056, 'en_US', 'Footer Copyright Text'),
(1057, 1057, 'en_US', 'Custom Mail Theme Color'),
(1058, 1058, 'en_US', 'Custom Theme Color'),
(1059, 1059, 'en_US', 'Facebook'),
(1060, 1060, 'en_US', 'Footer Menu One'),
(1061, 1061, 'en_US', 'Footer Menu One Title'),
(1062, 1062, 'en_US', 'Footer Menu Two'),
(1063, 1063, 'en_US', 'Footer Menu Two Title'),
(1064, 1064, 'en_US', 'Footer Tags'),
(1065, 1065, 'en_US', 'Instagram'),
(1066, 1066, 'en_US', 'Mail Theme Color'),
(1067, 1067, 'en_US', 'Navbar Text'),
(1068, 1068, 'en_US', 'Primary Menu'),
(1069, 1069, 'en_US', 'Privacy Policy Page'),
(1070, 1070, 'en_US', 'Slider'),
(1071, 1071, 'en_US', 'Terms & Conditions Page'),
(1072, 1072, 'en_US', 'Theme Color'),
(1073, 1073, 'en_US', 'Top Brands'),
(1074, 1074, 'en_US', 'Twitter'),
(1075, 1075, 'en_US', 'Welcome Text'),
(1076, 1076, 'en_US', 'Youtube'),
(1077, 1077, 'en_US', 'Subtitle'),
(1078, 1078, 'en_US', 'Title'),
(1079, 1079, 'en_US', 'Total Products'),
(1080, 1080, 'en_US', 'Type'),
(1081, 1081, 'en_US', 'URL'),
(1082, 1082, 'en_US', 'Brands'),
(1083, 1083, 'en_US', 'Oops! No brand found.'),
(1084, 1084, 'en_US', 'APPLY COUPON'),
(1085, 1085, 'en_US', 'Cart'),
(1086, 1086, 'en_US', 'CHECKOUT'),
(1087, 1087, 'en_US', 'Coupon'),
(1088, 1088, 'en_US', 'Enter coupon code'),
(1089, 1089, 'en_US', 'Looks like you haven\'t made any choice yet.'),
(1090, 1090, 'en_US', 'ORDER COMPLETE'),
(1091, 1091, 'en_US', 'Order Summary'),
(1092, 1092, 'en_US', 'PROCEED TO CHECKOUT'),
(1093, 1093, 'en_US', 'Shipping Method'),
(1094, 1094, 'en_US', 'SHOPPING CART'),
(1095, 1095, 'en_US', 'Subtotal'),
(1096, 1096, 'en_US', 'IMAGE'),
(1097, 1097, 'en_US', 'LINE TOTAL'),
(1098, 1098, 'en_US', 'Line Total:'),
(1099, 1099, 'en_US', 'PRODUCT NAME'),
(1100, 1100, 'en_US', 'QUANTITY'),
(1101, 1101, 'en_US', 'Quantity:'),
(1102, 1102, 'en_US', 'UNIT PRICE'),
(1103, 1103, 'en_US', 'Unit Price:'),
(1104, 1104, 'en_US', 'Total'),
(1105, 1105, 'en_US', 'Your cart is empty'),
(1106, 1106, 'en_US', 'All Categories'),
(1107, 1107, 'en_US', 'Opps! No category found.'),
(1108, 1108, 'en_US', 'Account Details'),
(1109, 1109, 'en_US', '+ ADD NEW ADDRESS'),
(1110, 1110, 'en_US', 'Billing Details'),
(1111, 1111, 'en_US', 'Checkout'),
(1112, 1112, 'en_US', 'Create an account by entering the information below. If you are a returning customer please login from the top of the page.'),
(1113, 1113, 'en_US', 'I agree to the'),
(1114, 1114, 'en_US', 'No payment method is found.'),
(1115, 1115, 'en_US', 'Payment Instructions'),
(1116, 1116, 'en_US', 'Payment Method'),
(1117, 1117, 'en_US', 'PLACE ORDER'),
(1118, 1118, 'en_US', 'Please Select'),
(1119, 1119, 'en_US', 'Shipping Details'),
(1120, 1120, 'en_US', 'Special note for delivery'),
(1121, 1121, 'en_US', 'Terms & Conditions'),
(1122, 1122, 'en_US', 'You must select an address.'),
(1123, 1123, 'en_US', 'Actions'),
(1124, 1124, 'en_US', 'Add to cart'),
(1125, 1125, 'en_US', 'Availability'),
(1126, 1126, 'en_US', 'Compare'),
(1127, 1127, 'en_US', 'Description'),
(1128, 1128, 'en_US', 'In Stock'),
(1129, 1129, 'en_US', 'No product in the compare list.'),
(1130, 1130, 'en_US', 'Out of Stock'),
(1131, 1131, 'en_US', 'Price'),
(1132, 1132, 'en_US', 'Product Overview'),
(1133, 1133, 'en_US', 'Rating'),
(1134, 1134, 'en_US', 'Contact'),
(1135, 1135, 'en_US', 'Leave a Message'),
(1136, 1136, 'en_US', 'SEND MESSAGE'),
(1137, 1137, 'en_US', 'Billing Address'),
(1138, 1138, 'en_US', 'Coupon'),
(1139, 1139, 'en_US', 'Date'),
(1140, 1140, 'en_US', 'Email'),
(1141, 1141, 'en_US', 'INVOICE'),
(1142, 1142, 'en_US', 'Line Total'),
(1143, 1143, 'en_US', 'Order Details'),
(1144, 1144, 'en_US', 'Order ID'),
(1145, 1145, 'en_US', 'Payment Method'),
(1146, 1146, 'en_US', 'Phone'),
(1147, 1147, 'en_US', 'Product'),
(1148, 1148, 'en_US', 'Quantity'),
(1149, 1149, 'en_US', 'Shipping Address'),
(1150, 1150, 'en_US', 'Invoice for order #:id'),
(1151, 1151, 'en_US', 'Subtotal'),
(1152, 1152, 'en_US', 'Total'),
(1153, 1153, 'en_US', 'Unit Price'),
(1154, 1154, 'en_US', 'Account'),
(1155, 1155, 'en_US', 'All Categories'),
(1156, 1156, 'en_US', 'ALL CATEGORIES'),
(1157, 1157, 'en_US', 'By subscribing to our newsletter you agree to our'),
(1158, 1158, 'en_US', 'Categories'),
(1159, 1159, 'en_US', 'Category Suggestions'),
(1160, 1160, 'en_US', 'CHECKOUT'),
(1161, 1161, 'en_US', 'Compare'),
(1162, 1162, 'en_US', 'Contact'),
(1163, 1163, 'en_US', 'Contact Us'),
(1164, 1164, 'en_US', 'Don\'t show this popup again'),
(1165, 1165, 'en_US', 'Enter captcha code'),
(1166, 1166, 'en_US', 'Enter your email address'),
(1167, 1167, 'en_US', 'Favorites'),
(1168, 1168, 'en_US', 'GOT IT!'),
(1169, 1169, 'en_US', 'Home'),
(1170, 1170, 'en_US', 'Login'),
(1171, 1171, 'en_US', 'Menu'),
(1172, 1172, 'en_US', ':count more results'),
(1173, 1173, 'en_US', 'Most searched:'),
(1174, 1174, 'en_US', 'My Account'),
(1175, 1175, 'en_US', 'Navigation'),
(1176, 1176, 'en_US', 'NEXT'),
(1177, 1177, 'en_US', 'PREV'),
(1178, 1178, 'en_US', 'Privacy Policy.'),
(1179, 1179, 'en_US', 'Product Suggestions'),
(1180, 1180, 'en_US', 'Search for products'),
(1181, 1181, 'en_US', 'Shopping Cart'),
(1182, 1182, 'en_US', 'SUBSCRIBE'),
(1183, 1183, 'en_US', 'Subscribe to Our Newsletter'),
(1184, 1184, 'en_US', 'Subscribe to our newsletter & get notification about discounts.'),
(1185, 1185, 'en_US', 'SUBSCRIBED'),
(1186, 1186, 'en_US', 'Subtotal'),
(1187, 1187, 'en_US', 'Tags'),
(1188, 1188, 'en_US', 'The website uses cookies to ensure you get the best experience on our website.'),
(1189, 1189, 'en_US', 'VIEW CART'),
(1190, 1190, 'en_US', 'Default'),
(1191, 1191, 'en_US', 'Slider With Banners'),
(1192, 1192, 'en_US', 'All rights reserved.'),
(1193, 1193, 'en_US', 'Hello :name!'),
(1194, 1194, 'en_US', 'Order Placed!'),
(1195, 1195, 'en_US', 'Your order has been placed. Your order ID is: <b>:id</b>'),
(1196, 1196, 'en_US', 'Edit Storefront Settings'),
(1197, 1197, 'en_US', 'Add a review'),
(1198, 1198, 'en_US', 'ADD TO CART'),
(1199, 1199, 'en_US', 'Be the first one to review this product.'),
(1200, 1200, 'en_US', 'Categories:'),
(1201, 1201, 'en_US', 'Compare'),
(1202, 1202, 'en_US', 'Description'),
(1203, 1203, 'en_US', 'Facebook'),
(1204, 1204, 'en_US', 'In stock'),
(1205, 1205, 'en_US', ':count left in stock'),
(1206, 1206, 'en_US', 'Linkedin'),
(1207, 1207, 'en_US', 'Choose an option'),
(1208, 1208, 'en_US', 'Out of stock'),
(1209, 1209, 'en_US', 'Quantity'),
(1210, 1210, 'en_US', 'Related Products'),
(1211, 1211, 'en_US', 'Comment'),
(1212, 1212, 'en_US', 'Name'),
(1213, 1213, 'en_US', 'SUBMIT'),
(1214, 1214, 'en_US', 'Your Rating'),
(1215, 1215, 'en_US', 'Reviews (:count)'),
(1216, 1216, 'en_US', 'Share:'),
(1217, 1217, 'en_US', 'SKU:'),
(1218, 1218, 'en_US', 'Specification'),
(1219, 1219, 'en_US', 'Tags:'),
(1220, 1220, 'en_US', 'Tumblr'),
(1221, 1221, 'en_US', 'Twitter'),
(1222, 1222, 'en_US', 'Wishlist'),
(1223, 1223, 'en_US', 'You might also like'),
(1224, 1224, 'en_US', 'ADD TO CART'),
(1225, 1225, 'en_US', 'Available:'),
(1226, 1226, 'en_US', 'Compare'),
(1227, 1227, 'en_US', 'Days'),
(1228, 1228, 'en_US', 'Hours'),
(1229, 1229, 'en_US', 'Minutes'),
(1230, 1230, 'en_US', 'Months'),
(1231, 1231, 'en_US', 'New'),
(1232, 1232, 'en_US', 'Out of Stock'),
(1233, 1233, 'en_US', 'Seconds'),
(1234, 1234, 'en_US', 'Sold:'),
(1235, 1235, 'en_US', 'VIEW OPTIONS'),
(1236, 1236, 'en_US', 'Weeks'),
(1237, 1237, 'en_US', 'Wishlist'),
(1238, 1238, 'en_US', 'Years'),
(1239, 1239, 'en_US', 'Browse Categories'),
(1240, 1240, 'en_US', 'Filters'),
(1241, 1241, 'en_US', 'Grid View'),
(1242, 1242, 'en_US', 'Latest Products'),
(1243, 1243, 'en_US', 'List View'),
(1244, 1244, 'en_US', 'Oops! No product found.'),
(1245, 1245, 'en_US', '10'),
(1246, 1246, 'en_US', '20'),
(1247, 1247, 'en_US', '30'),
(1248, 1248, 'en_US', '40'),
(1249, 1249, 'en_US', '50'),
(1250, 1250, 'en_US', 'Price'),
(1251, 1251, 'en_US', 'Search results for:'),
(1252, 1252, 'en_US', 'Shop'),
(1253, 1253, 'en_US', '- show less'),
(1254, 1254, 'en_US', '+ show more'),
(1255, 1255, 'en_US', 'Showing :from-:to of :total results'),
(1256, 1256, 'en_US', 'Alphabetic'),
(1257, 1257, 'en_US', 'Latest'),
(1258, 1258, 'en_US', 'Price: High to Low'),
(1259, 1259, 'en_US', 'Price: Low to High'),
(1260, 1260, 'en_US', 'Relevance'),
(1261, 1261, 'en_US', 'Top Rated'),
(1262, 1262, 'en_US', 'Storefront'),
(1263, 1263, 'en_US', 'Accepted Payment Methods Image'),
(1264, 1264, 'en_US', 'Background'),
(1265, 1265, 'en_US', 'Banner'),
(1266, 1266, 'en_US', 'Banner 1'),
(1267, 1267, 'en_US', 'Banner 2'),
(1268, 1268, 'en_US', 'Banner 3'),
(1269, 1269, 'en_US', 'Category 1'),
(1270, 1270, 'en_US', 'Category 2'),
(1271, 1271, 'en_US', 'Category 3'),
(1272, 1272, 'en_US', 'Category 4'),
(1273, 1273, 'en_US', 'Category 5'),
(1274, 1274, 'en_US', 'Category 6'),
(1275, 1275, 'en_US', 'Enable brands section'),
(1276, 1276, 'en_US', 'Enable featured categories section'),
(1277, 1277, 'en_US', 'Enable features section'),
(1278, 1278, 'en_US', 'Enable flash sale & vertical products section'),
(1279, 1279, 'en_US', 'Enable One column banner section'),
(1280, 1280, 'en_US', 'Enable product grid section'),
(1281, 1281, 'en_US', 'Enable product tabs one section'),
(1282, 1282, 'en_US', 'Enable product tabs two section'),
(1283, 1283, 'en_US', 'Enable three column banners section'),
(1284, 1284, 'en_US', 'Enable three column full width banners section'),
(1285, 1285, 'en_US', 'Enable two column banners section'),
(1286, 1286, 'en_US', 'Favicon'),
(1287, 1287, 'en_US', 'Feature 1'),
(1288, 1288, 'en_US', 'Feature 2'),
(1289, 1289, 'en_US', 'Feature 3'),
(1290, 1290, 'en_US', 'Feature 4'),
(1291, 1291, 'en_US', 'Feature 5'),
(1292, 1292, 'en_US', 'Flash Sale'),
(1293, 1293, 'en_US', 'Header Logo'),
(1294, 1294, 'en_US', 'Mail Logo'),
(1295, 1295, 'en_US', 'Background Image'),
(1296, 1296, 'en_US', 'Please Select'),
(1297, 1297, 'en_US', 'Product Page Banner'),
(1298, 1298, 'en_US', 'Category Products'),
(1299, 1299, 'en_US', 'Custom Products'),
(1300, 1300, 'en_US', 'Latest Products'),
(1301, 1301, 'en_US', 'Recently Viewed Products'),
(1302, 1302, 'en_US', 'Top Brands'),
(1303, 1303, 'en_US', 'Tab 1'),
(1304, 1304, 'en_US', 'Tab 2'),
(1305, 1305, 'en_US', 'Tab 3'),
(1306, 1306, 'en_US', 'Tab 4'),
(1307, 1307, 'en_US', 'Vertical Products 1'),
(1308, 1308, 'en_US', 'Vertical Products 2'),
(1309, 1309, 'en_US', 'Vertical Products 3'),
(1310, 1310, 'en_US', 'Storefront'),
(1311, 1311, 'en_US', 'Featured Categories'),
(1312, 1312, 'en_US', 'Features'),
(1313, 1313, 'en_US', 'Flash Sale & Vertical Products'),
(1314, 1314, 'en_US', 'Footer'),
(1315, 1315, 'en_US', 'General'),
(1316, 1316, 'en_US', 'General Settings'),
(1317, 1317, 'en_US', 'Home Page Sections'),
(1318, 1318, 'en_US', 'Logo'),
(1319, 1319, 'en_US', 'Menus'),
(1320, 1320, 'en_US', 'Newsletter');
INSERT INTO `translation_translations` (`id`, `translation_id`, `locale`, `value`) VALUES
(1321, 1321, 'en_US', 'One Column Banner'),
(1322, 1322, 'en_US', 'Product Grid'),
(1323, 1323, 'en_US', 'Product Page'),
(1324, 1324, 'en_US', 'Product Tabs One'),
(1325, 1325, 'en_US', 'Product Tabs Two'),
(1326, 1326, 'en_US', 'Slider Banners'),
(1327, 1327, 'en_US', 'Social Links'),
(1328, 1328, 'en_US', 'Three Column Banners'),
(1329, 1329, 'en_US', 'Three Column Full Width Banners'),
(1330, 1330, 'en_US', 'Top Brands'),
(1331, 1331, 'en_US', 'Two column banners'),
(1332, 1332, 'en_US', 'Black'),
(1333, 1333, 'en_US', 'Blue'),
(1334, 1334, 'en_US', 'Bondi Blue'),
(1335, 1335, 'en_US', 'Cornflower'),
(1336, 1336, 'en_US', 'Custom Color'),
(1337, 1337, 'en_US', 'Green'),
(1338, 1338, 'en_US', 'Indigo'),
(1339, 1339, 'en_US', 'Magenta'),
(1340, 1340, 'en_US', 'Orange'),
(1341, 1341, 'en_US', 'Pink'),
(1342, 1342, 'en_US', 'Red'),
(1343, 1343, 'en_US', 'Violet'),
(1344, 1344, 'en_US', 'Yellow'),
(1345, 1345, 'en_US', 'Update Code'),
(1346, 1346, 'en_US', 'Name'),
(1347, 1347, 'en_US', 'URL'),
(1348, 1348, 'en_US', 'Create Tag'),
(1349, 1349, 'en_US', 'Delete Tag'),
(1350, 1350, 'en_US', 'Edit Tag'),
(1351, 1351, 'en_US', 'Index Tag'),
(1352, 1352, 'en_US', 'Name'),
(1353, 1353, 'en_US', 'General'),
(1354, 1354, 'en_US', 'Tag Information'),
(1355, 1355, 'en_US', 'Tag'),
(1356, 1356, 'en_US', 'Tags'),
(1357, 1357, 'en_US', 'Based On'),
(1358, 1358, 'en_US', 'City'),
(1359, 1359, 'en_US', 'Country'),
(1360, 1360, 'en_US', 'Tax Class'),
(1361, 1361, 'en_US', 'Tax Name'),
(1362, 1362, 'en_US', 'Rate %'),
(1363, 1363, 'en_US', 'Tax Name'),
(1364, 1364, 'en_US', 'Rate'),
(1365, 1365, 'en_US', 'State'),
(1366, 1366, 'en_US', 'Zip'),
(1367, 1367, 'en_US', 'Create Tax'),
(1368, 1368, 'en_US', 'Delete Tax'),
(1369, 1369, 'en_US', 'Edit Tax'),
(1370, 1370, 'en_US', 'Index Tax'),
(1371, 1371, 'en_US', 'Taxes'),
(1372, 1372, 'en_US', 'Add New Rate'),
(1373, 1373, 'en_US', 'Billing Address'),
(1374, 1374, 'en_US', 'Shipping Address'),
(1375, 1375, 'en_US', 'Store Address'),
(1376, 1376, 'en_US', 'Delete Rate'),
(1377, 1377, 'en_US', 'Tax Class'),
(1378, 1378, 'en_US', 'General'),
(1379, 1379, 'en_US', 'Tax Information'),
(1380, 1380, 'en_US', 'Rates'),
(1381, 1381, 'en_US', 'Tax'),
(1382, 1382, 'en_US', 'Taxes'),
(1383, 1383, 'en_US', 'Index Transaction'),
(1384, 1384, 'en_US', 'Order ID'),
(1385, 1385, 'en_US', 'Payment Method'),
(1386, 1386, 'en_US', 'Transaction ID'),
(1387, 1387, 'en_US', 'Transactions'),
(1388, 1388, 'en_US', 'Edit Translations'),
(1389, 1389, 'en_US', 'Index Translations'),
(1390, 1390, 'en_US', 'Translations'),
(1391, 1391, 'en_US', 'Translations'),
(1392, 1392, 'en_US', 'Translation'),
(1393, 1393, 'en_US', 'Translations'),
(1394, 1394, 'en_US', 'Remember me'),
(1395, 1395, 'en_US', 'Name'),
(1396, 1396, 'en_US', 'Status'),
(1397, 1397, 'en_US', 'Captcha'),
(1398, 1398, 'en_US', 'Confirm New Password'),
(1399, 1399, 'en_US', 'Email'),
(1400, 1400, 'en_US', 'First Name'),
(1401, 1401, 'en_US', 'Last Name'),
(1402, 1402, 'en_US', 'New Password'),
(1403, 1403, 'en_US', 'Password'),
(1404, 1404, 'en_US', 'Confirm Password'),
(1405, 1405, 'en_US', 'Confirm Password'),
(1406, 1406, 'en_US', 'Roles'),
(1407, 1407, 'en_US', 'Already Have an Account?'),
(1408, 1408, 'en_US', 'Confirm Password'),
(1409, 1409, 'en_US', 'CREATE ACCOUNT'),
(1410, 1410, 'en_US', 'Don\'t Have an Account?'),
(1411, 1411, 'en_US', 'Email'),
(1412, 1412, 'en_US', 'Enter your account email to receive a link allowing you to reset your password.'),
(1413, 1413, 'en_US', 'Facebook'),
(1414, 1414, 'en_US', 'First Name'),
(1415, 1415, 'en_US', 'forgot password?'),
(1416, 1416, 'en_US', 'Google'),
(1417, 1417, 'en_US', 'I agree to the'),
(1418, 1418, 'en_US', 'I remembered my password'),
(1419, 1419, 'en_US', 'Last Name'),
(1420, 1420, 'en_US', 'Login'),
(1421, 1421, 'en_US', 'Logout'),
(1422, 1422, 'en_US', 'Or, Continue With'),
(1423, 1423, 'en_US', 'Or, Sign Up With'),
(1424, 1424, 'en_US', 'Password'),
(1425, 1425, 'en_US', 'Phone'),
(1426, 1426, 'en_US', 'Privacy Policy'),
(1427, 1427, 'en_US', 'Register'),
(1428, 1428, 'en_US', 'Remember me'),
(1429, 1429, 'en_US', 'Reset Password'),
(1430, 1430, 'en_US', 'SIGN IN'),
(1431, 1431, 'en_US', 'SUBMIT'),
(1432, 1432, 'en_US', 'Your account has been created successfully.'),
(1433, 1433, 'en_US', 'If you’re having trouble clicking the \"Reset Password\" button, copy and paste the URL below into your web browser:'),
(1434, 1434, 'en_US', 'If you did not request a password reset, no further action is required.'),
(1435, 1435, 'en_US', 'You are receiving this email because we received a password reset request for your account.'),
(1436, 1436, 'en_US', 'Reset Password'),
(1437, 1437, 'en_US', 'Reset your account password'),
(1438, 1438, 'en_US', 'Welcome :name!'),
(1439, 1439, 'en_US', 'Reset your account password.'),
(1440, 1440, 'en_US', 'Your account has been created.'),
(1441, 1441, 'en_US', 'Your account is blocked for :delay seconds.'),
(1442, 1442, 'en_US', 'Your account is not activated. Please check your email.'),
(1443, 1443, 'en_US', 'Check your email address to reset password.'),
(1444, 1444, 'en_US', 'Invalid email address or password.'),
(1445, 1445, 'en_US', 'Invalid or expired reset code.'),
(1446, 1446, 'en_US', 'No user with that email address belongs to our system.'),
(1447, 1447, 'en_US', 'Your password has been reset.'),
(1448, 1448, 'en_US', 'Reset password email sent.'),
(1449, 1449, 'en_US', 'Create Roles'),
(1450, 1450, 'en_US', 'Delete Roles'),
(1451, 1451, 'en_US', 'Edit Roles'),
(1452, 1452, 'en_US', 'Index Roles'),
(1453, 1453, 'en_US', 'Create Users'),
(1454, 1454, 'en_US', 'Edit Users'),
(1455, 1455, 'en_US', 'Delete Users'),
(1456, 1456, 'en_US', 'Index Users'),
(1457, 1457, 'en_US', 'Allow'),
(1458, 1458, 'en_US', 'Allow all'),
(1459, 1459, 'en_US', 'Deny'),
(1460, 1460, 'en_US', 'Deny all'),
(1461, 1461, 'en_US', 'Inherit'),
(1462, 1462, 'en_US', 'Inherit all'),
(1463, 1463, 'en_US', 'Role'),
(1464, 1464, 'en_US', 'Roles'),
(1465, 1465, 'en_US', 'Name'),
(1466, 1466, 'en_US', 'General'),
(1467, 1467, 'en_US', 'Permissions'),
(1468, 1468, 'en_US', 'Role Information'),
(1469, 1469, 'en_US', 'Roles'),
(1470, 1470, 'en_US', 'Users'),
(1471, 1471, 'en_US', 'Activated'),
(1472, 1472, 'en_US', 'or, Reset Password'),
(1473, 1473, 'en_US', 'Profile'),
(1474, 1474, 'en_US', 'Send Reset Password Email'),
(1475, 1475, 'en_US', 'Email'),
(1476, 1476, 'en_US', 'First Name'),
(1477, 1477, 'en_US', 'Last Login'),
(1478, 1478, 'en_US', 'Last Name'),
(1479, 1479, 'en_US', 'Account'),
(1480, 1480, 'en_US', 'Profile Information'),
(1481, 1481, 'en_US', 'User Information'),
(1482, 1482, 'en_US', 'New Password'),
(1483, 1483, 'en_US', 'Permissions'),
(1484, 1484, 'en_US', 'User'),
(1485, 1485, 'en_US', 'Users'),
(1486, 1, 'vi', 'Address Line 1'),
(1487, 2, 'vi', 'City'),
(1488, 3, 'vi', 'Country'),
(1489, 4, 'vi', 'First Name'),
(1490, 5, 'vi', 'Last Name'),
(1491, 6, 'vi', 'State / Province'),
(1492, 7, 'vi', 'Postcode / ZIP'),
(1493, 8, 'vi', 'The address has been deleted.'),
(1494, 9, 'vi', 'The address has been saved.'),
(1495, 10, 'vi', 'The default address has been updated.'),
(1496, 11, 'vi', 'Your profile has been updated.'),
(1497, 12, 'vi', 'Cancel'),
(1498, 13, 'vi', 'Delete'),
(1499, 14, 'vi', 'Save'),
(1500, 15, 'vi', 'Confirmation'),
(1501, 16, 'vi', 'Are you sure you want to delete?'),
(1502, 17, 'vi', '404'),
(1503, 18, 'vi', 'The page you are looking for was not found.'),
(1504, 19, 'vi', 'Oops! This page was not found'),
(1505, 20, 'vi', '500'),
(1506, 21, 'vi', 'An administrator was notified.'),
(1507, 22, 'vi', 'Oops! Something went wrong'),
(1508, 23, 'vi', 'Please Select'),
(1509, 24, 'vi', 'Next'),
(1510, 25, 'vi', 'Previous'),
(1511, 26, 'vi', 'Available keyboard shortcuts on this page'),
(1512, 27, 'vi', 'Back to :name Index'),
(1513, 28, 'vi', 'This Menu'),
(1514, 29, 'vi', 'Created'),
(1515, 30, 'vi', 'Date'),
(1516, 31, 'vi', 'ID'),
(1517, 32, 'vi', 'Status'),
(1518, 33, 'vi', 'Visit Store'),
(1519, 34, 'vi', 'Dashboard'),
(1520, 35, 'vi', 'Latest Orders'),
(1521, 36, 'vi', 'Latest Reviews'),
(1522, 37, 'vi', 'Latest Search Terms'),
(1523, 38, 'vi', 'No data available!'),
(1524, 39, 'vi', 'Monday'),
(1525, 40, 'vi', 'Tuesday'),
(1526, 41, 'vi', 'Wednesday'),
(1527, 42, 'vi', 'Thursday'),
(1528, 43, 'vi', 'Friday'),
(1529, 44, 'vi', 'Saturday'),
(1530, 45, 'vi', 'Sunday'),
(1531, 46, 'vi', 'Orders'),
(1532, 47, 'vi', 'Sales'),
(1533, 48, 'vi', 'Sales Analystics'),
(1534, 49, 'vi', 'Customer'),
(1535, 50, 'vi', 'Order ID'),
(1536, 51, 'vi', 'Status'),
(1537, 52, 'vi', 'Total'),
(1538, 53, 'vi', 'Product'),
(1539, 54, 'vi', 'Rating'),
(1540, 55, 'vi', 'Hits'),
(1541, 56, 'vi', 'Keyword'),
(1542, 57, 'vi', 'Results'),
(1543, 58, 'vi', 'Total Customers'),
(1544, 59, 'vi', 'Total Orders'),
(1545, 60, 'vi', 'Total Products'),
(1546, 61, 'vi', 'Total Sales'),
(1547, 62, 'vi', 'Permission Denied (required permission: \":permission\").'),
(1548, 63, 'vi', ':resource has been deleted.'),
(1549, 64, 'vi', ':resource has been saved.'),
(1550, 65, 'vi', 'Create :resource'),
(1551, 66, 'vi', 'Delete :resource'),
(1552, 67, 'vi', 'Edit :resource'),
(1553, 68, 'vi', 'Show :resource'),
(1554, 69, 'vi', 'Appearance'),
(1555, 70, 'vi', 'Content'),
(1556, 71, 'vi', 'Localization'),
(1557, 72, 'vi', 'Sales'),
(1558, 73, 'vi', 'System'),
(1559, 74, 'vi', 'Tools'),
(1560, 75, 'vi', 'Thuộc Tính'),
(1561, 76, 'vi', 'Thuộc Tính'),
(1562, 77, 'vi', 'Add New Value'),
(1563, 78, 'vi', 'Delete Value'),
(1564, 79, 'vi', 'Add New Attribute'),
(1565, 80, 'vi', 'Attribute'),
(1566, 81, 'vi', 'Delete Attribute'),
(1567, 82, 'vi', 'Values'),
(1568, 83, 'vi', 'Use this attribute for filtering products'),
(1569, 84, 'vi', 'Value'),
(1570, 85, 'vi', 'Attribute Set'),
(1571, 86, 'vi', 'Filterable'),
(1572, 87, 'vi', 'Name'),
(1573, 88, 'vi', 'No'),
(1574, 89, 'vi', 'Yes'),
(1575, 90, 'vi', 'General'),
(1576, 91, 'vi', 'Attribute Information'),
(1577, 92, 'vi', 'Thuộc Tính'),
(1578, 93, 'vi', 'Values'),
(1579, 94, 'vi', 'Attribute Set'),
(1580, 95, 'vi', 'Tiêu Đề Thuộc Tính'),
(1581, 96, 'vi', 'Name'),
(1582, 97, 'vi', 'General'),
(1583, 98, 'vi', 'Attribute Set Information'),
(1584, 99, 'vi', 'Attribute Value'),
(1585, 100, 'vi', 'Attribute Values'),
(1586, 101, 'vi', 'Name'),
(1587, 102, 'vi', 'Tiêu Đề Thuộc Tính'),
(1588, 103, 'vi', 'Categories'),
(1589, 104, 'vi', 'Filterable'),
(1590, 105, 'vi', 'Name'),
(1591, 106, 'vi', 'URL'),
(1592, 107, 'vi', 'Thuộc Tính'),
(1593, 108, 'vi', 'Values'),
(1594, 109, 'vi', 'Create Attribute Set'),
(1595, 110, 'vi', 'Delete Attribute Set'),
(1596, 111, 'vi', 'Edit Attribute Set'),
(1597, 112, 'vi', 'Index Attribute Set'),
(1598, 113, 'vi', 'Create Attribute'),
(1599, 114, 'vi', 'Delete Attribute'),
(1600, 115, 'vi', 'Edit Attribute'),
(1601, 116, 'vi', 'Index Attribute'),
(1602, 117, 'vi', 'Tiêu Đề Thuộc Tính'),
(1603, 118, 'vi', 'Thuộc Tính'),
(1604, 119, 'vi', 'Enter the code from the image'),
(1605, 120, 'vi', 'Invalid code from the image.'),
(1606, 121, 'vi', 'Update'),
(1607, 122, 'vi', 'Status'),
(1608, 123, 'vi', 'Name'),
(1609, 124, 'vi', 'URL'),
(1610, 125, 'vi', 'Brand'),
(1611, 126, 'vi', 'Brands'),
(1612, 127, 'vi', 'Banner'),
(1613, 128, 'vi', 'Enable the brand'),
(1614, 129, 'vi', 'Logo'),
(1615, 130, 'vi', 'Logo'),
(1616, 131, 'vi', 'Name'),
(1617, 132, 'vi', 'General'),
(1618, 133, 'vi', 'Brand Information'),
(1619, 134, 'vi', 'Images'),
(1620, 135, 'vi', 'SEO'),
(1621, 136, 'vi', 'Create Brand'),
(1622, 137, 'vi', 'Delete Brand'),
(1623, 138, 'vi', 'Edit Brand'),
(1624, 139, 'vi', 'Index Brand'),
(1625, 140, 'vi', 'Sorry, we only have :stock in stock.'),
(1626, 141, 'vi', 'Sorry, one or more product doesn\'t have enough stock.'),
(1627, 142, 'vi', 'Sorry, one or more product is out of stock.'),
(1628, 143, 'vi', 'Sorry, the product is out of stock.'),
(1629, 144, 'vi', 'The selected option is invalid.'),
(1630, 145, 'vi', 'This field is required.'),
(1631, 146, 'vi', 'ID'),
(1632, 147, 'vi', 'Status'),
(1633, 148, 'vi', 'Searchable'),
(1634, 149, 'vi', 'Name'),
(1635, 150, 'vi', 'URL'),
(1636, 151, 'vi', 'Categories'),
(1637, 152, 'vi', 'Category'),
(1638, 153, 'vi', 'Banner'),
(1639, 154, 'vi', 'Enable the category'),
(1640, 155, 'vi', 'Logo'),
(1641, 156, 'vi', 'Show this category in search box category list'),
(1642, 157, 'vi', 'General'),
(1643, 158, 'vi', 'Image'),
(1644, 159, 'vi', 'SEO'),
(1645, 160, 'vi', 'Add Root Category'),
(1646, 161, 'vi', 'Add Subcategory'),
(1647, 162, 'vi', 'Collapse All'),
(1648, 163, 'vi', 'Expand All'),
(1649, 164, 'vi', 'Category order has been saved.'),
(1650, 165, 'vi', 'Create Categories'),
(1651, 166, 'vi', 'Delete Categories'),
(1652, 167, 'vi', 'Edit Categories'),
(1653, 168, 'vi', 'Index Categories'),
(1654, 169, 'vi', 'Categories'),
(1655, 170, 'vi', 'Address Line 1'),
(1656, 171, 'vi', 'Address Line 2 (optional)'),
(1657, 172, 'vi', 'City'),
(1658, 173, 'vi', 'Country'),
(1659, 174, 'vi', 'First Name'),
(1660, 175, 'vi', 'Last Name'),
(1661, 176, 'vi', 'State / Province'),
(1662, 177, 'vi', 'Postcode / ZIP'),
(1663, 178, 'vi', 'Create an account?'),
(1664, 179, 'vi', 'Email'),
(1665, 180, 'vi', 'Phone'),
(1666, 181, 'vi', 'Order Note'),
(1667, 183, 'vi', 'Password'),
(1668, 182, 'vi', 'Ship to a different address'),
(1669, 184, 'vi', 'Address Line 1'),
(1670, 185, 'vi', 'Address Line 2 (optional)'),
(1671, 186, 'vi', 'City'),
(1672, 187, 'vi', 'Country'),
(1673, 188, 'vi', 'First Name'),
(1674, 189, 'vi', 'Last Name'),
(1675, 190, 'vi', 'State / Province'),
(1676, 191, 'vi', 'Postcode / ZIP'),
(1677, 192, 'vi', 'Street Address'),
(1678, 193, 'vi', 'If you’re having trouble clicking the \"View Order\" button, copy and paste the URL below into your web browser:'),
(1679, 194, 'vi', 'A new order has been placed'),
(1680, 195, 'vi', 'A new order has been placed. The order id is #:order_id.'),
(1681, 196, 'vi', 'View Order'),
(1682, 197, 'vi', 'Captcha'),
(1683, 198, 'vi', 'Email'),
(1684, 199, 'vi', 'Message'),
(1685, 200, 'vi', 'Subject'),
(1686, 201, 'vi', 'Your message has been sent.'),
(1687, 203, 'vi', 'Mail is not configured properly.'),
(1688, 202, 'vi', 'The given data was invalid.'),
(1689, 204, 'vi', 'The :attribute must be accepted.'),
(1690, 205, 'vi', 'The :attribute is not a valid URL.'),
(1691, 206, 'vi', 'The :attribute must be a date after :date.'),
(1692, 207, 'vi', 'The :attribute must be a date after or equal to :date.'),
(1693, 208, 'vi', 'The :attribute may only contain letters.'),
(1694, 209, 'vi', 'The :attribute may only contain letters, numbers, and dashes.'),
(1695, 210, 'vi', 'The :attribute may only contain letters and numbers.'),
(1696, 211, 'vi', 'The :attribute must be an array.'),
(1697, 212, 'vi', 'The :attribute must be a date before :date.'),
(1698, 213, 'vi', 'The :attribute must be a date before or equal to :date.'),
(1699, 214, 'vi', 'The :attribute must have between :min and :max items.'),
(1700, 215, 'vi', 'The :attribute must have between :min and :max items.'),
(1701, 216, 'vi', 'The :attribute must be between :min and :max.'),
(1702, 217, 'vi', 'The :attribute must be between :min and :max characters.'),
(1703, 218, 'vi', 'The :attribute field must be true or false.'),
(1704, 219, 'vi', 'The captcha code is incorrect.'),
(1705, 220, 'vi', 'The :attribute confirmation does not match.'),
(1706, 221, 'vi', 'The :attribute is not a valid date.'),
(1707, 222, 'vi', 'The :attribute does not match the format :format.'),
(1708, 223, 'vi', 'The :attribute and :other must be different.'),
(1709, 224, 'vi', 'The :attribute must be :digits digits.'),
(1710, 225, 'vi', 'The :attribute must be between :min and :max digits.'),
(1711, 226, 'vi', 'The :attribute has invalid image dimensions.'),
(1712, 227, 'vi', 'The :attribute field has a duplicate value.'),
(1713, 228, 'vi', 'The :attribute must be a valid email address.'),
(1714, 229, 'vi', 'The selected :attribute is invalid.'),
(1715, 230, 'vi', 'The :attribute must be a file.'),
(1716, 231, 'vi', 'The :attribute field must have a value.'),
(1717, 232, 'vi', 'The :attribute must be an image.'),
(1718, 233, 'vi', 'The selected :attribute is invalid.'),
(1719, 234, 'vi', 'The :attribute field does not exist in :other.'),
(1720, 235, 'vi', 'The :attribute must be an integer.'),
(1721, 236, 'vi', 'The :attribute must be a valid IP address.'),
(1722, 237, 'vi', 'The :attribute must be a valid IPv4 address.'),
(1723, 238, 'vi', 'The :attribute must be a valid IPv6 address.'),
(1724, 239, 'vi', 'The :attribute must be a valid JSON string.'),
(1725, 240, 'vi', 'The :attribute may not have more than :max items.'),
(1726, 241, 'vi', 'The :attribute may not be greater than :max kilobytes.'),
(1727, 242, 'vi', 'The :attribute may not be greater than :max.'),
(1728, 243, 'vi', 'The :attribute may not be greater than :max characters.'),
(1729, 244, 'vi', 'The :attribute must be a file of type: :values.'),
(1730, 245, 'vi', 'The :attribute must be a file of type: :values.'),
(1731, 246, 'vi', 'The :attribute must have at least :min items.'),
(1732, 247, 'vi', 'The :attribute must be at least :min kilobytes.'),
(1733, 248, 'vi', 'The :attribute must be at least :min.'),
(1734, 249, 'vi', 'The :attribute must be at least :min characters.'),
(1735, 250, 'vi', 'The selected :attribute is invalid.'),
(1736, 251, 'vi', 'The :attribute must be a number.'),
(1737, 252, 'vi', 'The :attribute field must be present.'),
(1738, 253, 'vi', 'Could not connect to the redis server.'),
(1739, 254, 'vi', 'The :attribute format is invalid.'),
(1740, 255, 'vi', 'The :attribute field is required.'),
(1741, 256, 'vi', 'The :attribute field is required when :other is :value.'),
(1742, 257, 'vi', 'The :attribute field is required unless :other is in :values.'),
(1743, 258, 'vi', 'The :attribute field is required when :values is present.'),
(1744, 259, 'vi', 'The :attribute field is required when :values is present.'),
(1745, 260, 'vi', 'The :attribute field is required when :values is not present.'),
(1746, 262, 'vi', 'The :attribute field is required when none of :values are present.'),
(1747, 261, 'vi', 'The :attribute and :other must match.'),
(1748, 263, 'vi', 'The :attribute must contain :size items.'),
(1749, 264, 'vi', 'The :attribute must be :size kilobytes.'),
(1750, 265, 'vi', 'The :attribute must be :size.'),
(1751, 266, 'vi', 'The :attribute must be :size characters.'),
(1752, 267, 'vi', 'The :attribute must be a string.'),
(1753, 268, 'vi', 'The :attribute must be a valid zone.'),
(1754, 269, 'vi', 'The :attribute has already been taken.'),
(1755, 270, 'vi', 'The :attribute failed to upload.'),
(1756, 271, 'vi', 'The :attribute format is invalid.'),
(1757, 272, 'vi', 'Categories'),
(1758, 273, 'vi', 'Code'),
(1759, 274, 'vi', 'End date'),
(1760, 275, 'vi', 'Exclude Categories'),
(1761, 276, 'vi', 'Exclude Products'),
(1762, 277, 'vi', 'Free Shipping'),
(1763, 278, 'vi', 'Status'),
(1764, 279, 'vi', 'Discount Type'),
(1765, 280, 'vi', 'Maximum Spend'),
(1766, 281, 'vi', 'Minimum Spend'),
(1767, 282, 'vi', 'Name'),
(1768, 283, 'vi', 'Products'),
(1769, 284, 'vi', 'Start date'),
(1770, 285, 'vi', 'Usage Limit Per Coupon'),
(1771, 286, 'vi', 'Usage Limit Per Customer'),
(1772, 287, 'vi', 'Value'),
(1773, 288, 'vi', 'Coupon'),
(1774, 289, 'vi', 'Coupons'),
(1775, 290, 'vi', 'Allow free shipping'),
(1776, 291, 'vi', 'Enable the coupon'),
(1777, 292, 'vi', 'Fixed'),
(1778, 293, 'vi', 'Percent'),
(1779, 294, 'vi', 'Code'),
(1780, 295, 'vi', 'Discount'),
(1781, 296, 'vi', 'Name'),
(1782, 297, 'vi', 'General'),
(1783, 298, 'vi', 'Coupon Information'),
(1784, 299, 'vi', 'Usage Limits'),
(1785, 300, 'vi', 'Usage Restrictions'),
(1786, 301, 'vi', 'The coupon has been already applied.'),
(1787, 302, 'vi', 'This coupon is not applicable to your cart.'),
(1788, 303, 'vi', 'The coupon is not valid.'),
(1789, 304, 'vi', 'You need to spend less than :amount to apply this coupon.'),
(1790, 305, 'vi', 'You need to spend at least :amount to apply this coupon.'),
(1791, 306, 'vi', 'The coupon does not exist.'),
(1792, 307, 'vi', 'The coupon usage limit has been reached.'),
(1793, 308, 'vi', 'Create Coupons'),
(1794, 309, 'vi', 'Delete Coupons'),
(1795, 310, 'vi', 'Edit Coupons'),
(1796, 311, 'vi', 'Index Coupons'),
(1797, 312, 'vi', 'Rate'),
(1798, 313, 'vi', 'Currency Rate'),
(1799, 314, 'vi', 'Currency Rates'),
(1800, 315, 'vi', 'Refresh currency rates from :service'),
(1801, 316, 'vi', 'Refresh Rates'),
(1802, 317, 'vi', 'Code'),
(1803, 318, 'vi', 'Currency'),
(1804, 319, 'vi', 'Last Updated'),
(1805, 320, 'vi', 'Rate'),
(1806, 321, 'vi', 'General'),
(1807, 322, 'vi', 'Currency Rate Information'),
(1808, 323, 'vi', 'Currency rate exchange service is not configured.'),
(1809, 324, 'vi', 'Edit Currency Rates'),
(1810, 325, 'vi', 'Index Currency Rates'),
(1811, 326, 'vi', 'Currency Data Feed'),
(1812, 327, 'vi', 'Fixer'),
(1813, 328, 'vi', 'Forge'),
(1814, 329, 'vi', 'Campaign Name'),
(1815, 330, 'vi', 'End Date'),
(1816, 331, 'vi', 'Price'),
(1817, 332, 'vi', 'Product'),
(1818, 333, 'vi', 'End Date'),
(1819, 334, 'vi', 'Price'),
(1820, 335, 'vi', 'Product'),
(1821, 336, 'vi', 'Quantity'),
(1822, 337, 'vi', 'Quantity'),
(1823, 338, 'vi', 'Flash Sale'),
(1824, 339, 'vi', 'Flash Sales'),
(1825, 340, 'vi', 'Add Product'),
(1826, 341, 'vi', 'Flash Sale Product'),
(1827, 342, 'vi', 'Campaign Name'),
(1828, 343, 'vi', 'Flash Sale Information'),
(1829, 344, 'vi', 'Products'),
(1830, 345, 'vi', 'Settings'),
(1831, 346, 'vi', 'Create Flash Sale'),
(1832, 347, 'vi', 'Delete Flash Sale'),
(1833, 348, 'vi', 'Edit Flash Sale'),
(1834, 349, 'vi', 'Index Flash Sale'),
(1835, 350, 'vi', 'CSV File'),
(1836, 351, 'vi', 'Import Type'),
(1837, 352, 'vi', 'Download CSV'),
(1838, 353, 'vi', 'Import'),
(1839, 354, 'vi', 'Product'),
(1840, 355, 'vi', 'Importer'),
(1841, 356, 'vi', 'Run'),
(1842, 357, 'vi', 'The importer has been run successfully.'),
(1843, 358, 'vi', 'There was an error on rows (:rows).'),
(1844, 359, 'vi', 'Create Import'),
(1845, 360, 'vi', 'Index Import'),
(1846, 361, 'vi', 'Importer'),
(1847, 362, 'vi', 'Browse'),
(1848, 363, 'vi', 'Drop files here or click to upload'),
(1849, 364, 'vi', 'Select this file'),
(1850, 365, 'vi', 'File Manager'),
(1851, 366, 'vi', 'Media'),
(1852, 367, 'vi', 'Filename'),
(1853, 368, 'vi', 'Height'),
(1854, 369, 'vi', 'Thumbnail'),
(1855, 370, 'vi', 'Width'),
(1856, 371, 'vi', 'Thumbnails'),
(1857, 372, 'vi', 'Upload New File'),
(1858, 373, 'vi', 'Image has been added.'),
(1859, 374, 'vi', 'Create Media'),
(1860, 375, 'vi', 'Delete Media'),
(1861, 376, 'vi', 'Index Media'),
(1862, 377, 'vi', 'Category'),
(1863, 378, 'vi', 'Icon'),
(1864, 379, 'vi', 'Status'),
(1865, 380, 'vi', 'Fluid Menu'),
(1866, 382, 'vi', 'Name'),
(1867, 381, 'vi', 'Page'),
(1868, 383, 'vi', 'Parent Menu Item'),
(1869, 384, 'vi', 'Target'),
(1870, 385, 'vi', 'Type'),
(1871, 386, 'vi', 'URL'),
(1872, 387, 'vi', 'Back to Menu Edit Page'),
(1873, 388, 'vi', 'Background Image'),
(1874, 389, 'vi', 'Enable the menu item'),
(1875, 390, 'vi', 'This is a full width menu'),
(1876, 391, 'vi', 'Select Category'),
(1877, 392, 'vi', 'Select Page'),
(1878, 393, 'vi', 'Select Parent'),
(1879, 394, 'vi', 'New Tab'),
(1880, 395, 'vi', 'Same Tab'),
(1881, 396, 'vi', 'Category'),
(1882, 397, 'vi', 'Page'),
(1883, 398, 'vi', 'URL'),
(1884, 399, 'vi', 'Menu Item'),
(1885, 400, 'vi', 'General'),
(1886, 401, 'vi', 'Menu Item Information'),
(1887, 402, 'vi', 'Image'),
(1888, 403, 'vi', 'Enable the menu'),
(1889, 404, 'vi', 'Please save the menu first to add menu items.'),
(1890, 405, 'vi', 'Menu'),
(1891, 406, 'vi', 'Menus'),
(1892, 407, 'vi', 'Name'),
(1893, 408, 'vi', 'Menu item has been deleted.'),
(1894, 409, 'vi', 'Menu items order has been updated.'),
(1895, 410, 'vi', 'Create Menu Items'),
(1896, 411, 'vi', 'Delete Menu Items'),
(1897, 412, 'vi', 'Edit Menu Items'),
(1898, 413, 'vi', 'Index Menu Items'),
(1899, 414, 'vi', 'Create Menus'),
(1900, 415, 'vi', 'Delete Menus'),
(1901, 416, 'vi', 'Edit Menus'),
(1902, 417, 'vi', 'Index Menus'),
(1903, 418, 'vi', 'Menus'),
(1904, 419, 'vi', 'Meta Description'),
(1905, 420, 'vi', 'Meta Title'),
(1906, 421, 'vi', 'Email'),
(1907, 422, 'vi', 'Required'),
(1908, 423, 'vi', 'Label'),
(1909, 424, 'vi', 'Name'),
(1910, 425, 'vi', 'Name'),
(1911, 426, 'vi', 'Type'),
(1912, 427, 'vi', 'Label'),
(1913, 428, 'vi', 'Price'),
(1914, 429, 'vi', 'Price Type'),
(1915, 430, 'vi', 'Price'),
(1916, 431, 'vi', 'Price Type'),
(1917, 432, 'vi', 'Type'),
(1918, 433, 'vi', 'Label'),
(1919, 434, 'vi', 'Price'),
(1920, 435, 'vi', 'Price Type'),
(1921, 436, 'vi', 'Add Global Option'),
(1922, 437, 'vi', 'Add New Option'),
(1923, 438, 'vi', 'Add New Row'),
(1924, 439, 'vi', 'Delete Option'),
(1925, 440, 'vi', 'Delete Row'),
(1926, 441, 'vi', 'New Option'),
(1927, 442, 'vi', 'Checkbox'),
(1928, 443, 'vi', 'Custom Checkbox'),
(1929, 444, 'vi', 'Date'),
(1930, 445, 'vi', 'Date & Time'),
(1931, 446, 'vi', 'Dropdown'),
(1932, 447, 'vi', 'Field'),
(1933, 448, 'vi', 'Multiple Select'),
(1934, 449, 'vi', 'Please Select'),
(1935, 450, 'vi', 'Radio Button'),
(1936, 451, 'vi', 'Custom Radio Button'),
(1937, 452, 'vi', 'Select'),
(1938, 453, 'vi', 'Text'),
(1939, 454, 'vi', 'Textarea'),
(1940, 455, 'vi', 'Time'),
(1941, 456, 'vi', 'Price'),
(1942, 457, 'vi', 'Fixed'),
(1943, 458, 'vi', 'Percent'),
(1944, 459, 'vi', 'This option is required'),
(1945, 460, 'vi', 'Option'),
(1946, 461, 'vi', 'Options'),
(1947, 462, 'vi', 'Please select a option type.'),
(1948, 463, 'vi', 'Select Global Option'),
(1949, 464, 'vi', 'Name'),
(1950, 465, 'vi', 'Type'),
(1951, 466, 'vi', 'General'),
(1952, 467, 'vi', 'Option Information'),
(1953, 468, 'vi', 'Options'),
(1954, 469, 'vi', 'Values'),
(1955, 470, 'vi', 'Create Options'),
(1956, 471, 'vi', 'Delete Options'),
(1957, 472, 'vi', 'Edit Options'),
(1958, 473, 'vi', 'Index Options'),
(1959, 475, 'vi', 'Options'),
(1960, 474, 'vi', 'Your order status is changed'),
(1961, 476, 'vi', 'Your order #:order_id status is changed to :status.'),
(1962, 477, 'vi', 'Invoice has been sent to the customer.'),
(1963, 478, 'vi', 'Order status has been updated.'),
(1964, 479, 'vi', 'Account Information'),
(1965, 480, 'vi', 'Address Information'),
(1966, 481, 'vi', 'Billing Address'),
(1967, 482, 'vi', 'Coupon'),
(1968, 483, 'vi', 'Currency'),
(1969, 484, 'vi', 'Currency Rate'),
(1970, 485, 'vi', 'Customer Email'),
(1971, 486, 'vi', 'Customer Group'),
(1972, 487, 'vi', 'Customer Name'),
(1973, 488, 'vi', 'Customer Phone'),
(1974, 489, 'vi', 'Guest'),
(1975, 490, 'vi', 'Items Ordered'),
(1976, 491, 'vi', 'Line Total'),
(1977, 492, 'vi', 'Order'),
(1978, 493, 'vi', 'Order & Account Information'),
(1979, 494, 'vi', 'Order Date'),
(1980, 495, 'vi', 'Order Information'),
(1981, 496, 'vi', 'Order Note'),
(1982, 497, 'vi', 'Order Status'),
(1983, 498, 'vi', 'Orders'),
(1984, 499, 'vi', 'Payment Method'),
(1985, 500, 'vi', 'Print'),
(1986, 501, 'vi', 'Product'),
(1987, 502, 'vi', 'Quantity'),
(1988, 503, 'vi', 'Registered'),
(1989, 504, 'vi', 'Send Email'),
(1990, 505, 'vi', 'Shipping Address'),
(1991, 506, 'vi', 'Shipping Method'),
(1992, 507, 'vi', 'Subtotal'),
(1993, 508, 'vi', 'Customer Email'),
(1994, 509, 'vi', 'Customer Name'),
(1995, 510, 'vi', 'Total'),
(1996, 511, 'vi', 'Tax'),
(1997, 512, 'vi', 'Total'),
(1998, 513, 'vi', 'Unit Price'),
(1999, 514, 'vi', 'Edit Order'),
(2000, 515, 'vi', 'Index Order'),
(2001, 516, 'vi', 'Show Order'),
(2002, 517, 'vi', 'Billing Address'),
(2003, 518, 'vi', 'Date'),
(2004, 519, 'vi', 'Email'),
(2005, 520, 'vi', 'INVOICE'),
(2006, 521, 'vi', 'Invoice ID'),
(2007, 522, 'vi', 'Line Total'),
(2008, 523, 'vi', 'Order Details'),
(2009, 524, 'vi', 'Payment Method'),
(2010, 525, 'vi', 'Phone'),
(2011, 526, 'vi', 'Product'),
(2012, 527, 'vi', 'Quantity'),
(2013, 528, 'vi', 'Shipping Address'),
(2014, 529, 'vi', 'Shipping Method'),
(2015, 530, 'vi', 'Subtotal'),
(2016, 531, 'vi', 'Total'),
(2017, 532, 'vi', 'Unit Price'),
(2018, 533, 'vi', 'Canceled'),
(2019, 534, 'vi', 'Completed'),
(2020, 535, 'vi', 'On Hold'),
(2021, 536, 'vi', 'Pending'),
(2022, 537, 'vi', 'Pending Payment'),
(2023, 538, 'vi', 'Processing'),
(2024, 539, 'vi', 'Refunded'),
(2025, 540, 'vi', 'Body'),
(2026, 541, 'vi', 'Status'),
(2027, 542, 'vi', 'Name'),
(2028, 543, 'vi', 'URL'),
(2029, 544, 'vi', 'Enable the page'),
(2030, 545, 'vi', 'Page'),
(2031, 546, 'vi', 'Pages'),
(2032, 547, 'vi', 'Name'),
(2033, 548, 'vi', 'General'),
(2034, 549, 'vi', 'Page Information'),
(2035, 550, 'vi', 'SEO'),
(2036, 551, 'vi', 'Create Pages'),
(2037, 552, 'vi', 'Delete Pages'),
(2038, 553, 'vi', 'Edit Pages'),
(2039, 554, 'vi', 'Index Pages'),
(2040, 555, 'vi', 'Pages'),
(2041, 556, 'vi', 'Only INR currency is supported.'),
(2042, 557, 'vi', 'Brand'),
(2043, 558, 'vi', 'Categories'),
(2044, 559, 'vi', 'Mô tả'),
(2045, 560, 'vi', 'Stock Availability'),
(2046, 561, 'vi', 'Status'),
(2047, 562, 'vi', 'Inventory Management'),
(2048, 563, 'vi', 'Name'),
(2049, 564, 'vi', 'Product New From'),
(2050, 565, 'vi', 'Product New To'),
(2051, 566, 'vi', 'Price'),
(2052, 567, 'vi', 'Qty'),
(2053, 568, 'vi', 'Short Description'),
(2054, 569, 'vi', 'SKU'),
(2055, 570, 'vi', 'URL'),
(2056, 571, 'vi', 'Special Price'),
(2057, 572, 'vi', 'Special Price End'),
(2058, 573, 'vi', 'Special Price Start'),
(2059, 574, 'vi', 'Special Price Type'),
(2060, 575, 'vi', 'Tags'),
(2061, 576, 'vi', 'Tax Class'),
(2062, 577, 'vi', 'Virtual'),
(2063, 578, 'vi', 'Create Products'),
(2064, 579, 'vi', 'Delete Products'),
(2065, 580, 'vi', 'Edit Products'),
(2066, 581, 'vi', 'Index Products'),
(2067, 582, 'vi', 'Add New File'),
(2068, 583, 'vi', 'Additional Images'),
(2069, 584, 'vi', 'Base Image'),
(2070, 585, 'vi', 'Choose'),
(2071, 586, 'vi', 'Delete File'),
(2072, 587, 'vi', 'Downloadable Files'),
(2073, 588, 'vi', 'Enable the product'),
(2074, 589, 'vi', 'File'),
(2075, 590, 'vi', 'Don\'t Track Inventory'),
(2076, 591, 'vi', 'Track Inventory'),
(2077, 592, 'vi', 'Fixed'),
(2078, 593, 'vi', 'Percent'),
(2079, 594, 'vi', 'Out of Stock'),
(2080, 595, 'vi', 'In Stock'),
(2081, 596, 'vi', 'The product won\'t be shipped'),
(2082, 597, 'vi', 'Product'),
(2083, 598, 'vi', 'Products'),
(2084, 599, 'vi', 'Name'),
(2085, 600, 'vi', 'Price'),
(2086, 601, 'vi', 'Thumbnail'),
(2087, 602, 'vi', 'Additional'),
(2088, 603, 'vi', 'Cross-Sells'),
(2089, 604, 'vi', 'Downloads'),
(2090, 605, 'vi', 'General'),
(2091, 606, 'vi', 'Advanced Information'),
(2092, 607, 'vi', 'Basic Information'),
(2093, 608, 'vi', 'Images'),
(2094, 609, 'vi', 'Inventory'),
(2095, 610, 'vi', 'Price'),
(2096, 611, 'vi', 'Related Products'),
(2097, 612, 'vi', 'SEO'),
(2098, 613, 'vi', 'Up-Sells'),
(2099, 614, 'vi', 'Catalog'),
(2100, 615, 'vi', 'Products'),
(2101, 616, 'vi', 'Filter'),
(2102, 617, 'vi', 'Brand'),
(2103, 618, 'vi', 'Category'),
(2104, 619, 'vi', 'Coupon Code'),
(2105, 620, 'vi', 'Customer Email'),
(2106, 621, 'vi', 'Customer Name'),
(2107, 622, 'vi', 'Date End'),
(2108, 623, 'vi', 'Date Start'),
(2109, 624, 'vi', 'Group By'),
(2110, 625, 'vi', 'Days'),
(2111, 626, 'vi', 'Months'),
(2112, 627, 'vi', 'Weeks'),
(2113, 628, 'vi', 'Years'),
(2114, 629, 'vi', 'Keyword'),
(2115, 630, 'vi', 'Please Select'),
(2116, 631, 'vi', 'Product'),
(2117, 632, 'vi', 'Quantity Above'),
(2118, 633, 'vi', 'Quantity Below'),
(2119, 634, 'vi', 'Report Type'),
(2120, 635, 'vi', 'Branded Products Report'),
(2121, 636, 'vi', 'Categorized Products Report'),
(2122, 637, 'vi', 'Coupons Report'),
(2123, 638, 'vi', 'Customers Order Report'),
(2124, 639, 'vi', 'Products Purchase Report'),
(2125, 640, 'vi', 'Products Stock Report'),
(2126, 641, 'vi', 'Products View Report'),
(2127, 642, 'vi', 'Sales Report'),
(2128, 643, 'vi', 'Search Report'),
(2129, 644, 'vi', 'Shipping Report'),
(2130, 645, 'vi', 'Tagged Products Report'),
(2131, 646, 'vi', 'Tax Report'),
(2132, 647, 'vi', 'Taxed Products Report'),
(2133, 648, 'vi', 'Shipping Method'),
(2134, 649, 'vi', 'SKU'),
(2135, 650, 'vi', 'Order Status'),
(2136, 651, 'vi', 'Stock Availability'),
(2137, 652, 'vi', 'In Stock'),
(2138, 653, 'vi', 'Out of Stock'),
(2139, 654, 'vi', 'Tag'),
(2140, 655, 'vi', 'Tax Class'),
(2141, 656, 'vi', 'Tax Name'),
(2142, 657, 'vi', 'No data available!'),
(2143, 658, 'vi', 'Reports'),
(2144, 659, 'vi', 'Brand'),
(2145, 660, 'vi', 'Category'),
(2146, 661, 'vi', 'Coupon Code'),
(2147, 662, 'vi', 'Coupon Name'),
(2148, 663, 'vi', 'Customer Email'),
(2149, 664, 'vi', 'Customer Group'),
(2150, 665, 'vi', 'Customer Email'),
(2151, 666, 'vi', 'Date'),
(2152, 667, 'vi', 'Discount'),
(2153, 668, 'vi', 'Guest'),
(2154, 669, 'vi', 'Hits'),
(2155, 670, 'vi', 'Keyword'),
(2156, 671, 'vi', 'Orders'),
(2157, 672, 'vi', 'Product'),
(2158, 673, 'vi', 'Products'),
(2159, 674, 'vi', 'Products Count'),
(2160, 675, 'vi', 'Qty'),
(2161, 676, 'vi', 'Registered'),
(2162, 677, 'vi', 'Results'),
(2163, 678, 'vi', 'Shipping'),
(2164, 679, 'vi', 'Shipping Method'),
(2165, 680, 'vi', 'Stock Availability'),
(2166, 681, 'vi', 'Subtotal'),
(2167, 682, 'vi', 'Tag'),
(2168, 683, 'vi', 'Tax'),
(2169, 684, 'vi', 'Tax Class'),
(2170, 685, 'vi', 'Tax Name'),
(2171, 686, 'vi', 'Total'),
(2172, 687, 'vi', 'Views'),
(2173, 688, 'vi', 'ViewsIndex Reports'),
(2174, 689, 'vi', 'Reports'),
(2175, 690, 'vi', 'Captcha'),
(2176, 691, 'vi', 'Comment'),
(2177, 692, 'vi', 'Status'),
(2178, 693, 'vi', 'Rating'),
(2179, 694, 'vi', 'Reviewer Name'),
(2180, 695, 'vi', 'Your review is submitted for approval.'),
(2181, 696, 'vi', 'Delete Reviews'),
(2182, 697, 'vi', 'Edit Reviews'),
(2183, 698, 'vi', 'Index Reviews'),
(2184, 699, 'vi', 'Approve this review'),
(2185, 700, 'vi', 'Review'),
(2186, 703, 'vi', 'Reviews'),
(2187, 702, 'vi', 'Back to product edit page'),
(2188, 704, 'vi', 'Approved'),
(2189, 701, 'vi', 'Product'),
(2190, 705, 'vi', 'Rating'),
(2191, 706, 'vi', 'Reviewer Name'),
(2192, 707, 'vi', 'general'),
(2193, 708, 'vi', 'Review Information'),
(2194, 709, 'vi', 'Reviews'),
(2195, 710, 'vi', 'Reviews'),
(2196, 711, 'vi', 'Approved'),
(2197, 712, 'vi', 'Unapproved'),
(2198, 713, 'vi', 'New Order Admin Email'),
(2199, 714, 'vi', 'Auto Approve Reviews'),
(2200, 715, 'vi', 'Frequency'),
(2201, 716, 'vi', 'Auto Refresh'),
(2202, 717, 'vi', 'Status'),
(2203, 718, 'vi', 'Status'),
(2204, 719, 'vi', 'Status'),
(2205, 720, 'vi', 'Cookie Bar'),
(2206, 721, 'vi', 'Currency Data Feed API Key'),
(2207, 722, 'vi', 'Exchange Rate Service'),
(2208, 723, 'vi', 'Footer'),
(2209, 724, 'vi', 'Header'),
(2210, 725, 'vi', 'Customer Role'),
(2211, 726, 'vi', 'Default Country'),
(2212, 727, 'vi', 'Default Currency'),
(2213, 728, 'vi', 'Default Locale'),
(2214, 729, 'vi', 'Default Timezone'),
(2215, 730, 'vi', 'Email Order Statuses'),
(2216, 731, 'vi', 'App ID'),
(2217, 732, 'vi', 'App Secret'),
(2218, 733, 'vi', 'Status'),
(2219, 734, 'vi', 'Fixer Access key'),
(2220, 735, 'vi', 'Cost'),
(2221, 736, 'vi', 'Status'),
(2222, 737, 'vi', 'Forge API key'),
(2223, 738, 'vi', 'Status'),
(2224, 739, 'vi', 'Minimum Amount'),
(2225, 740, 'vi', 'Client ID'),
(2226, 741, 'vi', 'Client Secret'),
(2227, 742, 'vi', 'Status'),
(2228, 743, 'vi', 'API Key'),
(2229, 744, 'vi', 'Auth Token'),
(2230, 745, 'vi', 'Description'),
(2231, 746, 'vi', 'Status'),
(2232, 747, 'vi', 'Label'),
(2233, 748, 'vi', 'Sandbox'),
(2234, 749, 'vi', 'Invoice Email'),
(2235, 750, 'vi', 'Cost'),
(2236, 751, 'vi', 'Status'),
(2237, 752, 'vi', 'Mail Encryption'),
(2238, 753, 'vi', 'Mail From Address'),
(2239, 754, 'vi', 'Mail From Name'),
(2240, 755, 'vi', 'Mail Host'),
(2241, 756, 'vi', 'Mail Password'),
(2242, 757, 'vi', 'Mail Port'),
(2243, 758, 'vi', 'Mail Username'),
(2244, 759, 'vi', 'Mailchimp API Key'),
(2245, 760, 'vi', 'Mailchimp List ID'),
(2246, 761, 'vi', 'Maintenance Mode'),
(2247, 762, 'vi', 'New Order Admin SMS'),
(2248, 764, 'vi', 'New Order SMS'),
(2249, 763, 'vi', 'Newsletter'),
(2250, 765, 'vi', 'Client ID'),
(2251, 766, 'vi', 'Status'),
(2252, 767, 'vi', 'Secret'),
(2253, 768, 'vi', 'Sandbox'),
(2254, 770, 'vi', 'Merchant ID'),
(2255, 769, 'vi', 'Status'),
(2256, 771, 'vi', 'Merchant Key'),
(2257, 772, 'vi', 'Sandbox'),
(2258, 773, 'vi', 'Description'),
(2259, 774, 'vi', 'Status'),
(2260, 775, 'vi', 'Key Id'),
(2261, 776, 'vi', 'Key Secret'),
(2262, 777, 'vi', 'Label'),
(2263, 778, 'vi', 'Reviews & Ratings'),
(2264, 779, 'vi', 'SMS From'),
(2265, 780, 'vi', 'SMS Order Statuses'),
(2266, 781, 'vi', 'SMS Service'),
(2267, 782, 'vi', 'Store Address 1'),
(2268, 783, 'vi', 'Store Address 2'),
(2269, 784, 'vi', 'Store City'),
(2270, 785, 'vi', 'Store Country'),
(2271, 786, 'vi', 'Store Email'),
(2272, 787, 'vi', 'Hide Store Email'),
(2273, 788, 'vi', 'Store Phone'),
(2274, 789, 'vi', 'Hide Store Phone'),
(2275, 790, 'vi', 'Store State'),
(2276, 791, 'vi', 'Store Zip'),
(2277, 792, 'vi', 'Status'),
(2278, 793, 'vi', 'Publishable Key'),
(2279, 794, 'vi', 'Secret Key'),
(2280, 795, 'vi', 'Supported Countries'),
(2281, 796, 'vi', 'Supported Countries'),
(2282, 797, 'vi', 'Supported Currencies'),
(2283, 798, 'vi', 'Supported Currencies'),
(2284, 799, 'vi', 'Supported Locales'),
(2285, 800, 'vi', 'Supported Locales'),
(2286, 801, 'vi', 'Description'),
(2287, 802, 'vi', 'Instructions'),
(2288, 803, 'vi', 'Label'),
(2289, 804, 'vi', 'Description'),
(2290, 805, 'vi', 'Instructions'),
(2291, 806, 'vi', 'Label'),
(2292, 807, 'vi', 'Description'),
(2293, 808, 'vi', 'Label'),
(2294, 809, 'vi', 'Label'),
(2295, 810, 'vi', 'Label'),
(2296, 811, 'vi', 'Label'),
(2297, 812, 'vi', 'Description'),
(2298, 813, 'vi', 'Label'),
(2299, 814, 'vi', 'Description'),
(2300, 815, 'vi', 'Label'),
(2301, 816, 'vi', 'Store Name'),
(2302, 817, 'vi', 'Store Tagline'),
(2303, 818, 'vi', 'Description'),
(2304, 819, 'vi', 'Label'),
(2305, 820, 'vi', 'Account SID'),
(2306, 821, 'vi', 'Auth Token'),
(2307, 822, 'vi', 'API Key'),
(2308, 823, 'vi', 'API Secret'),
(2309, 824, 'vi', 'Welcome Email'),
(2310, 825, 'vi', 'Welcome SMS'),
(2311, 826, 'vi', 'Settings have been saved.'),
(2312, 827, 'vi', 'Edit Settings'),
(2313, 828, 'vi', 'Allow customers to subscribe to your newsletter'),
(2314, 829, 'vi', 'Allow customers to give reviews & ratings'),
(2315, 830, 'vi', 'Customer reviews will be approved automatically'),
(2316, 831, 'vi', 'Daily'),
(2317, 832, 'vi', 'Monthly'),
(2318, 833, 'vi', 'Weekly'),
(2319, 834, 'vi', 'Customer Notification Settings'),
(2320, 835, 'vi', 'Enable auto-refreshing currency rates'),
(2321, 836, 'vi', 'Enable Bank Transfer'),
(2322, 837, 'vi', 'Enable Check / Money Order'),
(2323, 838, 'vi', 'Enable Cash On Delivery'),
(2324, 839, 'vi', 'Enable Facebook Login'),
(2325, 840, 'vi', 'Enable Flat Rate'),
(2326, 841, 'vi', 'Enable Free Shipping'),
(2327, 842, 'vi', 'Enable Google Login'),
(2328, 843, 'vi', 'Enable Instamojo'),
(2329, 844, 'vi', 'Enable Local Pickup'),
(2330, 845, 'vi', 'Enable PayPal'),
(2331, 846, 'vi', 'Enable Paytm'),
(2332, 847, 'vi', 'Enable Razorpay'),
(2333, 848, 'vi', 'Enable Stripe'),
(2334, 849, 'vi', 'Hide store email from the storefront'),
(2335, 850, 'vi', 'Hide store phone from the storefront'),
(2336, 851, 'vi', 'IP addreses seperated in new line'),
(2337, 852, 'vi', 'SSL'),
(2338, 853, 'vi', 'Tls'),
(2339, 854, 'vi', 'Order Notification Settings'),
(2340, 855, 'vi', 'Privacy Settings'),
(2341, 856, 'vi', 'Put the application into maintenance mode'),
(2342, 857, 'vi', 'Select Service'),
(2343, 858, 'vi', 'Send invoice email to the customer after checkout'),
(2344, 859, 'vi', 'Send new order notification to the admin'),
(2345, 860, 'vi', 'Send new order notification to the customer'),
(2346, 861, 'vi', 'Send welcome email after registration'),
(2347, 862, 'vi', 'Send welcome SMS after registration'),
(2348, 863, 'vi', 'Show cookie bar in your website'),
(2349, 864, 'vi', 'Use sandbox for test payments'),
(2350, 865, 'vi', 'Settings'),
(2351, 866, 'vi', 'Bank Transfer'),
(2352, 867, 'vi', 'Check / Money Order'),
(2353, 868, 'vi', 'Cash On Delivery'),
(2354, 869, 'vi', 'Currency'),
(2355, 872, 'vi', 'Custom CSS/JS'),
(2356, 871, 'vi', 'Facebook'),
(2357, 870, 'vi', 'Flat Rate'),
(2358, 873, 'vi', 'Free Shipping'),
(2359, 874, 'vi', 'General'),
(2360, 875, 'vi', 'Google'),
(2361, 876, 'vi', 'General Settings'),
(2362, 877, 'vi', 'Payment Methods'),
(2363, 878, 'vi', 'Shipping Methods'),
(2364, 879, 'vi', 'Social Logins'),
(2365, 880, 'vi', 'Instamojo'),
(2366, 881, 'vi', 'Local Pickup'),
(2367, 882, 'vi', 'Mail'),
(2368, 883, 'vi', 'Maintenance'),
(2369, 884, 'vi', 'Newsletter'),
(2370, 885, 'vi', 'PayPal'),
(2371, 886, 'vi', 'Paytm'),
(2372, 887, 'vi', 'Razorpay'),
(2373, 888, 'vi', 'SMS'),
(2374, 889, 'vi', 'Store'),
(2375, 890, 'vi', 'Stripe'),
(2376, 891, 'vi', 'SQLite is not installed.'),
(2377, 892, 'vi', 'General'),
(2378, 893, 'vi', 'Settings'),
(2379, 894, 'vi', 'Arrows'),
(2380, 895, 'vi', 'Autoplay'),
(2381, 896, 'vi', 'Autoplay Speed'),
(2382, 897, 'vi', 'Delay'),
(2383, 898, 'vi', 'Effect'),
(2384, 899, 'vi', 'Call to Action Text'),
(2385, 900, 'vi', 'Call to Action URL'),
(2386, 901, 'vi', 'Caption 1'),
(2387, 902, 'vi', 'Delay'),
(2388, 903, 'vi', 'Effect'),
(2389, 904, 'vi', 'Caption 2'),
(2390, 905, 'vi', 'Delay'),
(2391, 906, 'vi', 'Delay'),
(2392, 907, 'vi', 'Direction'),
(2393, 908, 'vi', 'Dots'),
(2394, 909, 'vi', 'Fade'),
(2395, 910, 'vi', 'Name'),
(2396, 911, 'vi', 'Open in new window'),
(2397, 912, 'vi', 'Speed'),
(2398, 913, 'vi', 'Create Slider'),
(2399, 914, 'vi', 'Delete Slider'),
(2400, 915, 'vi', 'Edit Slider'),
(2401, 916, 'vi', 'Index Slider'),
(2402, 917, 'vi', 'fadeInDown'),
(2403, 918, 'vi', 'fadeInLeft'),
(2404, 919, 'vi', 'fadeInRight'),
(2405, 920, 'vi', 'fadeInUp'),
(2406, 922, 'vi', 'lightSpeedIn'),
(2407, 921, 'vi', 'slideInDown'),
(2408, 923, 'vi', 'slideInLeft'),
(2409, 924, 'vi', 'slideInRight'),
(2410, 925, 'vi', 'slideInUp'),
(2411, 926, 'vi', 'zoomIn'),
(2412, 927, 'vi', '3000ms'),
(2413, 928, 'vi', '300ms'),
(2414, 929, 'vi', 'Enable autoplay'),
(2415, 930, 'vi', 'Show Prev/Next arrows'),
(2416, 931, 'vi', 'Show slider dots'),
(2417, 932, 'vi', 'Fade slides instead of sliding'),
(2418, 933, 'vi', 'Add Slide'),
(2419, 934, 'vi', '0.3s'),
(2420, 935, 'vi', '0.7s'),
(2421, 936, 'vi', '0s'),
(2422, 937, 'vi', 'Call to Action'),
(2423, 938, 'vi', 'Call to Action URL'),
(2424, 939, 'vi', 'Caption 1'),
(2425, 940, 'vi', 'Caption 2'),
(2426, 941, 'vi', 'Left'),
(2427, 942, 'vi', 'Right'),
(2428, 943, 'vi', 'Open in new window'),
(2429, 944, 'vi', 'General'),
(2430, 945, 'vi', 'Options'),
(2431, 946, 'vi', 'Image Slide'),
(2432, 947, 'vi', 'Slider'),
(2433, 948, 'vi', 'Sliders'),
(2434, 949, 'vi', 'Name'),
(2435, 950, 'vi', 'Slider Information'),
(2436, 951, 'vi', 'Settings'),
(2437, 952, 'vi', 'Slides'),
(2438, 953, 'vi', 'A new order has been placed. The order id is #:order_id.'),
(2439, 954, 'vi', 'Hi :first_name,Your order #:order_id has been placed. Thanks for shopping with us.'),
(2440, 955, 'vi', 'Hi :first_name,Your order #:order_id status is changed to :status.'),
(2441, 956, 'vi', 'Welcome :first_name,Your account has been created successfully.'),
(2442, 957, 'vi', 'Twilio'),
(2443, 958, 'vi', 'Vonage'),
(2444, 959, 'vi', '404'),
(2445, 960, 'vi', 'BACK TO HOME'),
(2446, 961, 'vi', 'Oops! Page Not Found.'),
(2447, 962, 'vi', 'Sorry but we are unable to find the page that you are looking for.'),
(2448, 963, 'vi', 'ACTION'),
(2449, 964, 'vi', 'ADD NEW ADDRESS'),
(2450, 965, 'vi', 'Address Line 1'),
(2451, 966, 'vi', 'Address Line 2 (optional)'),
(2452, 967, 'vi', 'CANCEL'),
(2453, 968, 'vi', 'City'),
(2454, 969, 'vi', 'Are you sure want to delete this address?'),
(2455, 970, 'vi', 'Country'),
(2456, 971, 'vi', 'Delete'),
(2457, 972, 'vi', 'Edit'),
(2458, 973, 'vi', 'First Name'),
(2459, 974, 'vi', 'Last Name'),
(2460, 975, 'vi', 'New Address'),
(2461, 976, 'vi', 'Please Select'),
(2462, 977, 'vi', 'SAVE ADDRESS'),
(2463, 978, 'vi', 'State / Province'),
(2464, 979, 'vi', 'Street Address'),
(2465, 980, 'vi', 'Postcode / ZIP'),
(2466, 981, 'vi', 'Account Information'),
(2467, 982, 'vi', 'Edit'),
(2468, 983, 'vi', 'Recent Orders'),
(2469, 984, 'vi', 'View All'),
(2470, 985, 'vi', 'DATE'),
(2471, 986, 'vi', 'Download'),
(2472, 987, 'vi', 'FILENAME'),
(2473, 988, 'vi', 'You don\'t have any downloadable files.'),
(2474, 989, 'vi', 'No file found.'),
(2475, 990, 'vi', 'IMAGE'),
(2476, 991, 'vi', 'You haven\'t placed any order yet.'),
(2477, 992, 'vi', 'ORDER ID'),
(2478, 994, 'vi', 'View'),
(2479, 993, 'vi', 'TOTAL'),
(2480, 995, 'vi', 'View Order'),
(2481, 996, 'vi', 'Dashboard'),
(2482, 997, 'vi', 'Logout'),
(2483, 998, 'vi', 'My Account'),
(2484, 999, 'vi', 'My Addresses'),
(2485, 1000, 'vi', 'My Downloads'),
(2486, 1001, 'vi', 'My Orders'),
(2487, 1002, 'vi', 'My Profile'),
(2488, 1003, 'vi', 'My Reviews'),
(2489, 1004, 'vi', 'My Wishlist'),
(2490, 1005, 'vi', 'PRODUCT NAME'),
(2491, 1006, 'vi', 'Account'),
(2492, 1007, 'vi', 'Confirm Password'),
(2493, 1008, 'vi', 'Email'),
(2494, 1009, 'vi', 'First Name'),
(2495, 1010, 'vi', 'Last Name'),
(2496, 1011, 'vi', 'New Password'),
(2497, 1012, 'vi', 'Password'),
(2498, 1013, 'vi', 'Phone'),
(2499, 1014, 'vi', 'SAVE CHANGES'),
(2500, 1015, 'vi', 'You haven\'t reviewed any product yet.'),
(2501, 1016, 'vi', 'RATING'),
(2502, 1017, 'vi', 'STATUS'),
(2503, 1018, 'vi', 'Billing Address'),
(2504, 1019, 'vi', 'Coupon'),
(2505, 1020, 'vi', 'Date:'),
(2506, 1021, 'vi', 'Email:'),
(2507, 1022, 'vi', 'LINE TOTAL'),
(2508, 1023, 'vi', 'Order Information'),
(2509, 1024, 'vi', 'Order Note:'),
(2510, 1025, 'vi', 'Payment Method:'),
(2511, 1026, 'vi', 'Phone:'),
(2512, 1027, 'vi', 'QUANTITY'),
(2513, 1028, 'vi', 'Shipping Address'),
(2514, 1029, 'vi', 'Shipping Method:'),
(2515, 1030, 'vi', 'Subtotal'),
(2516, 1031, 'vi', 'Total'),
(2517, 1032, 'vi', 'UNIT PRICE'),
(2518, 1033, 'vi', 'View Order'),
(2519, 1034, 'vi', 'AVAILABILITY'),
(2520, 1035, 'vi', 'Delete'),
(2521, 1036, 'vi', 'Your wishlist is empty.'),
(2522, 1037, 'vi', 'In Stock'),
(2523, 1038, 'vi', 'Out of Stock'),
(2524, 1039, 'vi', 'PRICE'),
(2525, 1040, 'vi', 'Call to Action Text'),
(2526, 1041, 'vi', 'Call to Action URL'),
(2527, 1042, 'vi', 'Caption 1'),
(2528, 1043, 'vi', 'Caption 2'),
(2529, 1044, 'vi', 'Category'),
(2530, 1045, 'vi', 'Enabled'),
(2531, 1046, 'vi', 'Icon'),
(2532, 1047, 'vi', 'Open in new window'),
(2533, 1048, 'vi', 'Products'),
(2534, 1049, 'vi', 'Products Limit'),
(2535, 1050, 'vi', 'Section Status'),
(2536, 1051, 'vi', 'Section Subtitle'),
(2537, 1052, 'vi', 'Section Title'),
(2538, 1053, 'vi', 'Active Campaign'),
(2539, 1054, 'vi', 'Address'),
(2540, 1055, 'vi', 'Category Menu'),
(2541, 1056, 'vi', 'Footer Copyright Text'),
(2542, 1057, 'vi', 'Custom Mail Theme Color'),
(2543, 1058, 'vi', 'Custom Theme Color'),
(2544, 1059, 'vi', 'Facebook'),
(2545, 1060, 'vi', 'Footer Menu One'),
(2546, 1061, 'vi', 'Footer Menu One Title'),
(2547, 1062, 'vi', 'Footer Menu Two'),
(2548, 1063, 'vi', 'Footer Menu Two Title'),
(2549, 1064, 'vi', 'Footer Tags'),
(2550, 1065, 'vi', 'Instagram'),
(2551, 1066, 'vi', 'Mail Theme Color'),
(2552, 1067, 'vi', 'Navbar Text'),
(2553, 1068, 'vi', 'Primary Menu'),
(2554, 1069, 'vi', 'Privacy Policy Page'),
(2555, 1070, 'vi', 'Slider'),
(2556, 1071, 'vi', 'Terms & Conditions Page'),
(2557, 1072, 'vi', 'Theme Color'),
(2558, 1073, 'vi', 'Top Brands'),
(2559, 1074, 'vi', 'Twitter'),
(2560, 1075, 'vi', 'Welcome Text'),
(2561, 1076, 'vi', 'Youtube'),
(2562, 1077, 'vi', 'Subtitle'),
(2563, 1078, 'vi', 'Title'),
(2564, 1079, 'vi', 'Total Products'),
(2565, 1080, 'vi', 'Type'),
(2566, 1081, 'vi', 'URL'),
(2567, 1082, 'vi', 'Brands'),
(2568, 1083, 'vi', 'Oops! No brand found.'),
(2569, 1084, 'vi', 'APPLY COUPON'),
(2570, 1085, 'vi', 'Cart'),
(2571, 1086, 'vi', 'CHECKOUT'),
(2572, 1087, 'vi', 'Coupon'),
(2573, 1088, 'vi', 'Enter coupon code'),
(2574, 1089, 'vi', 'Looks like you haven\'t made any choice yet.'),
(2575, 1090, 'vi', 'ORDER COMPLETE'),
(2576, 1091, 'vi', 'Order Summary'),
(2577, 1092, 'vi', 'PROCEED TO CHECKOUT'),
(2578, 1093, 'vi', 'Shipping Method'),
(2579, 1094, 'vi', 'SHOPPING CART'),
(2580, 1095, 'vi', 'Subtotal'),
(2581, 1096, 'vi', 'IMAGE'),
(2582, 1097, 'vi', 'LINE TOTAL'),
(2583, 1098, 'vi', 'Line Total:'),
(2584, 1099, 'vi', 'PRODUCT NAME'),
(2585, 1100, 'vi', 'QUANTITY'),
(2586, 1101, 'vi', 'Quantity:'),
(2587, 1102, 'vi', 'UNIT PRICE'),
(2588, 1103, 'vi', 'Unit Price:'),
(2589, 1104, 'vi', 'Total'),
(2590, 1105, 'vi', 'Your cart is empty'),
(2591, 1106, 'vi', 'All Categories'),
(2592, 1107, 'vi', 'Opps! No category found.'),
(2593, 1108, 'vi', 'Account Details'),
(2594, 1109, 'vi', '+ ADD NEW ADDRESS'),
(2595, 1110, 'vi', 'Billing Details'),
(2596, 1111, 'vi', 'Checkout'),
(2597, 1112, 'vi', 'Create an account by entering the information below. If you are a returning customer please login from the top of the page.'),
(2598, 1113, 'vi', 'I agree to the'),
(2599, 1114, 'vi', 'No payment method is found.'),
(2600, 1115, 'vi', 'Payment Instructions'),
(2601, 1116, 'vi', 'Payment Method'),
(2602, 1117, 'vi', 'PLACE ORDER'),
(2603, 1118, 'vi', 'Please Select'),
(2604, 1119, 'vi', 'Shipping Details'),
(2605, 1120, 'vi', 'Special note for delivery'),
(2606, 1121, 'vi', 'Terms & Conditions'),
(2607, 1122, 'vi', 'You must select an address.'),
(2608, 1123, 'vi', 'Actions'),
(2609, 1124, 'vi', 'Add to cart'),
(2610, 1125, 'vi', 'Availability'),
(2611, 1126, 'vi', 'Compare'),
(2612, 1127, 'vi', 'Description'),
(2613, 1128, 'vi', 'In Stock'),
(2614, 1129, 'vi', 'No product in the compare list.'),
(2615, 1130, 'vi', 'Out of Stock'),
(2616, 1131, 'vi', 'Price'),
(2617, 1132, 'vi', 'Product Overview'),
(2618, 1133, 'vi', 'Rating'),
(2619, 1134, 'vi', 'Contact'),
(2620, 1135, 'vi', 'Leave a Message'),
(2621, 1136, 'vi', 'SEND MESSAGE'),
(2622, 1137, 'vi', 'Billing Address'),
(2623, 1138, 'vi', 'Coupon'),
(2624, 1139, 'vi', 'Date'),
(2625, 1140, 'vi', 'Email'),
(2626, 1141, 'vi', 'INVOICE'),
(2627, 1142, 'vi', 'Line Total'),
(2628, 1143, 'vi', 'Order Details'),
(2629, 1144, 'vi', 'Order ID'),
(2630, 1145, 'vi', 'Payment Method'),
(2631, 1146, 'vi', 'Phone'),
(2632, 1147, 'vi', 'Product'),
(2633, 1148, 'vi', 'Quantity'),
(2634, 1149, 'vi', 'Shipping Address'),
(2635, 1150, 'vi', 'Invoice for order #:id'),
(2636, 1151, 'vi', 'Subtotal'),
(2637, 1152, 'vi', 'Total'),
(2638, 1153, 'vi', 'Unit Price'),
(2639, 1154, 'vi', 'Account'),
(2640, 1155, 'vi', 'All Categories'),
(2641, 1156, 'vi', 'ALL CATEGORIES'),
(2642, 1157, 'vi', 'By subscribing to our newsletter you agree to our'),
(2643, 1158, 'vi', 'Categories'),
(2644, 1159, 'vi', 'Category Suggestions'),
(2645, 1160, 'vi', 'CHECKOUT'),
(2646, 1161, 'vi', 'Compare'),
(2647, 1162, 'vi', 'Contact'),
(2648, 1163, 'vi', 'Contact Us'),
(2649, 1164, 'vi', 'Don\'t show this popup again'),
(2650, 1165, 'vi', 'Enter captcha code'),
(2651, 1166, 'vi', 'Enter your email address'),
(2652, 1167, 'vi', 'Favorites'),
(2653, 1168, 'vi', 'GOT IT!'),
(2654, 1169, 'vi', 'Home'),
(2655, 1170, 'vi', 'Login'),
(2656, 1171, 'vi', 'Menu'),
(2657, 1172, 'vi', ':count more results'),
(2658, 1173, 'vi', 'Most searched:'),
(2659, 1174, 'vi', 'My Account'),
(2660, 1175, 'vi', 'Navigation'),
(2661, 1176, 'vi', 'NEXT'),
(2662, 1177, 'vi', 'PREV'),
(2663, 1178, 'vi', 'Privacy Policy.'),
(2664, 1179, 'vi', 'Product Suggestions'),
(2665, 1180, 'vi', 'Search for products'),
(2666, 1181, 'vi', 'Shopping Cart'),
(2667, 1182, 'vi', 'SUBSCRIBE'),
(2668, 1183, 'vi', 'Subscribe to Our Newsletter'),
(2669, 1184, 'vi', 'Subscribe to our newsletter & get notification about discounts.'),
(2670, 1185, 'vi', 'SUBSCRIBED'),
(2671, 1186, 'vi', 'Subtotal'),
(2672, 1187, 'vi', 'Tags'),
(2673, 1188, 'vi', 'The website uses cookies to ensure you get the best experience on our website.'),
(2674, 1189, 'vi', 'VIEW CART'),
(2675, 1190, 'vi', 'Default'),
(2676, 1191, 'vi', 'Slider With Banners'),
(2677, 1192, 'vi', 'All rights reserved.'),
(2678, 1193, 'vi', 'Hello :name!'),
(2679, 1194, 'vi', 'Order Placed!'),
(2680, 1195, 'vi', 'Your order has been placed. Your order ID is: <b>:id</b>'),
(2681, 1196, 'vi', 'Edit Storefront Settings'),
(2682, 1197, 'vi', 'Add a review'),
(2683, 1198, 'vi', 'ADD TO CART'),
(2684, 1199, 'vi', 'Be the first one to review this product.'),
(2685, 1200, 'vi', 'Categories:'),
(2686, 1201, 'vi', 'Compare'),
(2687, 1202, 'vi', 'Description'),
(2688, 1203, 'vi', 'Facebook'),
(2689, 1204, 'vi', 'In stock'),
(2690, 1205, 'vi', ':count left in stock'),
(2691, 1206, 'vi', 'Linkedin'),
(2692, 1207, 'vi', 'Choose an option'),
(2693, 1208, 'vi', 'Out of stock'),
(2694, 1209, 'vi', 'Quantity'),
(2695, 1210, 'vi', 'Related Products'),
(2696, 1211, 'vi', 'Comment'),
(2697, 1212, 'vi', 'Name'),
(2698, 1213, 'vi', 'SUBMIT'),
(2699, 1214, 'vi', 'Your Rating'),
(2700, 1215, 'vi', 'Reviews (:count)'),
(2701, 1216, 'vi', 'Share:'),
(2702, 1217, 'vi', 'SKU:');
INSERT INTO `translation_translations` (`id`, `translation_id`, `locale`, `value`) VALUES
(2703, 1218, 'vi', 'Specification'),
(2704, 1219, 'vi', 'Tags:'),
(2705, 1220, 'vi', 'Tumblr'),
(2706, 1221, 'vi', 'Twitter'),
(2707, 1222, 'vi', 'Wishlist'),
(2708, 1223, 'vi', 'You might also like'),
(2709, 1224, 'vi', 'ADD TO CART'),
(2710, 1225, 'vi', 'Available:'),
(2711, 1226, 'vi', 'Compare'),
(2712, 1227, 'vi', 'Days'),
(2713, 1228, 'vi', 'Hours'),
(2714, 1229, 'vi', 'Minutes'),
(2715, 1230, 'vi', 'Months'),
(2716, 1231, 'vi', 'New'),
(2717, 1232, 'vi', 'Out of Stock'),
(2718, 1233, 'vi', 'Seconds'),
(2719, 1234, 'vi', 'Sold:'),
(2720, 1235, 'vi', 'VIEW OPTIONS'),
(2721, 1236, 'vi', 'Weeks'),
(2722, 1237, 'vi', 'Wishlist'),
(2723, 1238, 'vi', 'Years'),
(2724, 1239, 'vi', 'Browse Categories'),
(2725, 1240, 'vi', 'Filters'),
(2726, 1241, 'vi', 'Grid View'),
(2727, 1242, 'vi', 'Latest Products'),
(2728, 1243, 'vi', 'List View'),
(2729, 1244, 'vi', 'Oops! No product found.'),
(2730, 1245, 'vi', '10'),
(2731, 1246, 'vi', '20'),
(2732, 1247, 'vi', '30'),
(2733, 1248, 'vi', '40'),
(2734, 1249, 'vi', '50'),
(2735, 1250, 'vi', 'Price'),
(2736, 1251, 'vi', 'Search results for:'),
(2737, 1252, 'vi', 'Shop'),
(2738, 1253, 'vi', '- show less'),
(2739, 1254, 'vi', '+ show more'),
(2740, 1255, 'vi', 'Showing :from-:to of :total results'),
(2741, 1256, 'vi', 'Alphabetic'),
(2742, 1257, 'vi', 'Latest'),
(2743, 1258, 'vi', 'Price: High to Low'),
(2744, 1259, 'vi', 'Price: Low to High'),
(2745, 1260, 'vi', 'Relevance'),
(2746, 1261, 'vi', 'Top Rated'),
(2747, 1262, 'vi', 'Storefront'),
(2748, 1263, 'vi', 'Accepted Payment Methods Image'),
(2749, 1264, 'vi', 'Background'),
(2750, 1265, 'vi', 'Banner'),
(2751, 1266, 'vi', 'Banner 1'),
(2752, 1267, 'vi', 'Banner 2'),
(2753, 1268, 'vi', 'Banner 3'),
(2754, 1272, 'vi', 'Category 4'),
(2755, 1271, 'vi', 'Category 3'),
(2756, 1270, 'vi', 'Category 2'),
(2757, 1269, 'vi', 'Category 1'),
(2758, 1273, 'vi', 'Category 5'),
(2759, 1274, 'vi', 'Category 6'),
(2760, 1275, 'vi', 'Enable brands section'),
(2761, 1276, 'vi', 'Enable featured categories section'),
(2762, 1277, 'vi', 'Enable features section'),
(2763, 1278, 'vi', 'Enable flash sale & vertical products section'),
(2764, 1279, 'vi', 'Enable One column banner section'),
(2765, 1280, 'vi', 'Enable product grid section'),
(2766, 1281, 'vi', 'Enable product tabs one section'),
(2767, 1282, 'vi', 'Enable product tabs two section'),
(2768, 1283, 'vi', 'Enable three column banners section'),
(2769, 1284, 'vi', 'Enable three column full width banners section'),
(2770, 1285, 'vi', 'Enable two column banners section'),
(2771, 1286, 'vi', 'Favicon'),
(2772, 1287, 'vi', 'Feature 1'),
(2773, 1288, 'vi', 'Feature 2'),
(2774, 1289, 'vi', 'Feature 3'),
(2775, 1290, 'vi', 'Feature 4'),
(2776, 1291, 'vi', 'Feature 5'),
(2777, 1292, 'vi', 'Flash Sale'),
(2778, 1293, 'vi', 'Header Logo'),
(2779, 1294, 'vi', 'Mail Logo'),
(2780, 1295, 'vi', 'Background Image'),
(2781, 1296, 'vi', 'Please Select'),
(2782, 1297, 'vi', 'Product Page Banner'),
(2783, 1298, 'vi', 'Category Products'),
(2784, 1299, 'vi', 'Custom Products'),
(2785, 1300, 'vi', 'Latest Products'),
(2786, 1301, 'vi', 'Recently Viewed Products'),
(2787, 1302, 'vi', 'Top Brands'),
(2788, 1303, 'vi', 'Tab 1'),
(2789, 1304, 'vi', 'Tab 2'),
(2790, 1305, 'vi', 'Tab 3'),
(2791, 1306, 'vi', 'Tab 4'),
(2792, 1307, 'vi', 'Vertical Products 1'),
(2793, 1308, 'vi', 'Vertical Products 2'),
(2794, 1309, 'vi', 'Vertical Products 3'),
(2795, 1310, 'vi', 'Storefront'),
(2796, 1311, 'vi', 'Featured Categories'),
(2797, 1312, 'vi', 'Features'),
(2798, 1313, 'vi', 'Flash Sale & Vertical Products'),
(2799, 1314, 'vi', 'Footer'),
(2800, 1315, 'vi', 'General'),
(2801, 1316, 'vi', 'General Settings'),
(2802, 1317, 'vi', 'Home Page Sections'),
(2803, 1318, 'vi', 'Logo'),
(2804, 1319, 'vi', 'Menus'),
(2805, 1320, 'vi', 'Newsletter'),
(2806, 1321, 'vi', 'One Column Banner'),
(2807, 1322, 'vi', 'Product Grid'),
(2808, 1323, 'vi', 'Product Page'),
(2809, 1324, 'vi', 'Product Tabs One'),
(2810, 1325, 'vi', 'Product Tabs Two'),
(2811, 1326, 'vi', 'Slider Banners'),
(2812, 1327, 'vi', 'Social Links'),
(2813, 1328, 'vi', 'Three Column Banners'),
(2814, 1329, 'vi', 'Three Column Full Width Banners'),
(2815, 1330, 'vi', 'Top Brands'),
(2816, 1331, 'vi', 'Two column banners'),
(2817, 1332, 'vi', 'Black'),
(2818, 1333, 'vi', 'Blue'),
(2819, 1334, 'vi', 'Bondi Blue'),
(2820, 1335, 'vi', 'Cornflower'),
(2821, 1336, 'vi', 'Custom Color'),
(2822, 1337, 'vi', 'Green'),
(2823, 1338, 'vi', 'Indigo'),
(2824, 1339, 'vi', 'Magenta'),
(2825, 1340, 'vi', 'Orange'),
(2826, 1481, 'vi', 'User Information'),
(2827, 1482, 'vi', 'New Password'),
(2828, 1483, 'vi', 'Permissions'),
(2829, 1484, 'vi', 'User'),
(2830, 1485, 'vi', 'Users'),
(2831, 1461, 'vi', 'Inherit'),
(2832, 1462, 'vi', 'Inherit all'),
(2833, 1463, 'vi', 'Role'),
(2834, 1464, 'vi', 'Roles'),
(2835, 1465, 'vi', 'Name'),
(2836, 1466, 'vi', 'General'),
(2837, 1467, 'vi', 'Permissions'),
(2838, 1468, 'vi', 'Role Information'),
(2839, 1469, 'vi', 'Roles'),
(2840, 1470, 'vi', 'Users'),
(2841, 1471, 'vi', 'Activated'),
(2842, 1472, 'vi', 'or, Reset Password'),
(2843, 1473, 'vi', 'Profile'),
(2844, 1474, 'vi', 'Send Reset Password Email'),
(2845, 1475, 'vi', 'Email'),
(2846, 1476, 'vi', 'First Name'),
(2847, 1477, 'vi', 'Last Login'),
(2848, 1478, 'vi', 'Last Name'),
(2849, 1479, 'vi', 'Account'),
(2850, 1480, 'vi', 'Profile Information'),
(2851, 1441, 'vi', 'Your account is blocked for :delay seconds.'),
(2852, 1442, 'vi', 'Your account is not activated. Please check your email.'),
(2853, 1443, 'vi', 'Check your email address to reset password.'),
(2854, 1444, 'vi', 'Invalid email address or password.'),
(2855, 1445, 'vi', 'Invalid or expired reset code.'),
(2856, 1446, 'vi', 'No user with that email address belongs to our system.'),
(2857, 1447, 'vi', 'Your password has been reset.'),
(2858, 1448, 'vi', 'Reset password email sent.'),
(2859, 1449, 'vi', 'Create Roles'),
(2860, 1450, 'vi', 'Delete Roles'),
(2861, 1451, 'vi', 'Edit Roles'),
(2862, 1452, 'vi', 'Index Roles'),
(2863, 1453, 'vi', 'Create Users'),
(2864, 1455, 'vi', 'Delete Users'),
(2865, 1454, 'vi', 'Edit Users'),
(2866, 1456, 'vi', 'Index Users'),
(2867, 1457, 'vi', 'Allow'),
(2868, 1458, 'vi', 'Allow all'),
(2869, 1459, 'vi', 'Deny'),
(2870, 1460, 'vi', 'Deny all'),
(2871, 1421, 'vi', 'Logout'),
(2872, 1422, 'vi', 'Or, Continue With'),
(2873, 1423, 'vi', 'Or, Sign Up With'),
(2874, 1424, 'vi', 'Password'),
(2875, 1425, 'vi', 'Phone'),
(2876, 1426, 'vi', 'Privacy Policy'),
(2877, 1427, 'vi', 'Register'),
(2878, 1428, 'vi', 'Remember me'),
(2879, 1429, 'vi', 'Reset Password'),
(2880, 1430, 'vi', 'SIGN IN'),
(2881, 1431, 'vi', 'SUBMIT'),
(2882, 1432, 'vi', 'Your account has been created successfully.'),
(2883, 1433, 'vi', 'If you’re having trouble clicking the \"Reset Password\" button, copy and paste the URL below into your web browser:'),
(2884, 1434, 'vi', 'If you did not request a password reset, no further action is required.'),
(2885, 1435, 'vi', 'You are receiving this email because we received a password reset request for your account.'),
(2886, 1436, 'vi', 'Reset Password'),
(2887, 1437, 'vi', 'Reset your account password'),
(2888, 1439, 'vi', 'Reset your account password.'),
(2889, 1438, 'vi', 'Welcome :name!'),
(2890, 1440, 'vi', 'Your account has been created.'),
(2891, 1401, 'vi', 'Last Name'),
(2892, 1402, 'vi', 'New Password'),
(2893, 1403, 'vi', 'Password'),
(2894, 1404, 'vi', 'Confirm Password'),
(2895, 1405, 'vi', 'Confirm Password'),
(2896, 1406, 'vi', 'Roles'),
(2897, 1407, 'vi', 'Already Have an Account?'),
(2898, 1408, 'vi', 'Confirm Password'),
(2899, 1409, 'vi', 'CREATE ACCOUNT'),
(2900, 1410, 'vi', 'Don\'t Have an Account?'),
(2901, 1411, 'vi', 'Email'),
(2902, 1412, 'vi', 'Enter your account email to receive a link allowing you to reset your password.'),
(2903, 1413, 'vi', 'Facebook'),
(2904, 1414, 'vi', 'First Name'),
(2905, 1415, 'vi', 'forgot password?'),
(2906, 1416, 'vi', 'Google'),
(2907, 1417, 'vi', 'I agree to the'),
(2908, 1418, 'vi', 'I remembered my password'),
(2909, 1419, 'vi', 'Last Name'),
(2910, 1420, 'vi', 'Login'),
(2911, 1381, 'vi', 'Tax'),
(2912, 1382, 'vi', 'Taxes'),
(2913, 1383, 'vi', 'Index Transaction'),
(2914, 1384, 'vi', 'Order ID'),
(2915, 1385, 'vi', 'Payment Method'),
(2916, 1386, 'vi', 'Transaction ID'),
(2917, 1387, 'vi', 'Transactions'),
(2918, 1388, 'vi', 'Edit Translations'),
(2919, 1389, 'vi', 'Index Translations'),
(2920, 1390, 'vi', 'Translations'),
(2921, 1391, 'vi', 'Translations'),
(2922, 1392, 'vi', 'Translation'),
(2923, 1393, 'vi', 'Translations'),
(2924, 1394, 'vi', 'Remember me'),
(2925, 1395, 'vi', 'Name'),
(2926, 1396, 'vi', 'Status'),
(2927, 1397, 'vi', 'Captcha'),
(2928, 1398, 'vi', 'Confirm New Password'),
(2929, 1399, 'vi', 'Email'),
(2930, 1400, 'vi', 'First Name'),
(2931, 1361, 'vi', 'Tax Name'),
(2932, 1362, 'vi', 'Rate %'),
(2933, 1363, 'vi', 'Tax Name'),
(2934, 1364, 'vi', 'Rate'),
(2935, 1365, 'vi', 'State'),
(2936, 1366, 'vi', 'Zip'),
(2937, 1367, 'vi', 'Create Tax'),
(2938, 1368, 'vi', 'Delete Tax'),
(2939, 1369, 'vi', 'Edit Tax'),
(2940, 1370, 'vi', 'Index Tax'),
(2941, 1371, 'vi', 'Taxes'),
(2942, 1372, 'vi', 'Add New Rate'),
(2943, 1373, 'vi', 'Billing Address'),
(2944, 1374, 'vi', 'Shipping Address'),
(2945, 1375, 'vi', 'Store Address'),
(2946, 1376, 'vi', 'Delete Rate'),
(2947, 1377, 'vi', 'Tax Class'),
(2948, 1378, 'vi', 'General'),
(2949, 1379, 'vi', 'Tax Information'),
(2950, 1380, 'vi', 'Rates'),
(2951, 1341, 'vi', 'Pink'),
(2952, 1342, 'vi', 'Red'),
(2953, 1343, 'vi', 'Violet'),
(2954, 1344, 'vi', 'Yellow'),
(2955, 1345, 'vi', 'Update Code'),
(2956, 1346, 'vi', 'Name'),
(2957, 1347, 'vi', 'URL'),
(2958, 1348, 'vi', 'Create Tag'),
(2959, 1349, 'vi', 'Delete Tag'),
(2960, 1350, 'vi', 'Edit Tag'),
(2961, 1351, 'vi', 'Index Tag'),
(2962, 1352, 'vi', 'Name'),
(2963, 1353, 'vi', 'General'),
(2964, 1354, 'vi', 'Tag Information'),
(2965, 1355, 'vi', 'Tag'),
(2966, 1356, 'vi', 'Tags'),
(2967, 1357, 'vi', 'Based On'),
(2968, 1358, 'vi', 'City'),
(2969, 1359, 'vi', 'Country'),
(2970, 1360, 'vi', 'Tax Class');

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'lyquocvietxd@gmail.com', '88888888888', '$2y$10$nMoJr65aGfP76fa.K50kZOyQ4VgHSBDN500PDO3mJcP.bzBzhtJdi', NULL, '2021-04-28 09:39:13', '2021-04-26 13:13:01', '2021-04-28 09:39:13'),
(2, 'Hảo', 'Nguyễn', 'Nnhshu97@gmail.com', '0975356819', '$2y$10$FiGragI5d6EuCj/JUQlj7./uM1rOsih7Ep/hTN66AG8eZdYDorxmm', '[]', '2021-04-28 13:54:41', '2021-04-26 21:32:39', '2021-04-28 13:54:41'),
(3, 'Trinh', 'Pham', 'thuytrinh@sieuthihangmy.com.vn', '0908097673', '$2y$10$Uk5oAjolF.cTv6NN/8lWLuZro1RCS/ETpsdg64r/7qm/W8ryqyn16', '[]', NULL, '2021-04-26 21:34:32', '2021-04-26 21:34:32'),
(4, 'Ly', 'Viet', 'quocviet@sieuthihangmy.com.vn', '0945934646', '$2y$10$GeWpwiarDEvBg0OxL3XjLuQTsD4ddV61dUDStIlgxigB2Ty/e5QCC', '[]', NULL, '2021-04-26 21:34:59', '2021-04-26 21:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-26 13:13:01', '2021-04-26 13:13:01'),
(2, 3, '2021-04-27 16:05:22', '2021-04-27 16:05:22'),
(3, 4, '2021-04-26 21:34:32', '2021-04-26 21:34:32'),
(4, 6, '2021-04-26 21:35:14', '2021-04-26 21:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `default_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_downloads_order_id_foreign` (`order_id`),
  ADD KEY `order_downloads_file_id_foreign` (`file_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `default_addresses`
--
ALTER TABLE `default_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_downloads`
--
ALTER TABLE `order_downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1486;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2971;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `default_addresses`
--
ALTER TABLE `default_addresses`
  ADD CONSTRAINT `default_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `default_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_downloads`
--
ALTER TABLE `order_downloads`
  ADD CONSTRAINT `order_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_downloads_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
