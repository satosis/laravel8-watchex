-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 06:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS data_website
use data_website;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watch`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Adminstrator', 'admin@gmail.com', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', '2024-01-01 23:42:53', '2024-03-17 23:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) DEFAULT NULL,
  `a_slug` varchar(191) DEFAULT NULL,
  `a_hot` int(11) NOT NULL DEFAULT 0,
  `a_active` int(11) NOT NULL DEFAULT 1,
  `a_menu_id` varchar(191) DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` text DEFAULT NULL,
  `a_avatar` text DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `_wysihtml5_mode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(7, 'jjj', 'jjj', 0, 1, 'KIẾN THỨC ĐỒNG HỒ', 0, 'Đang cậpjkdsfg nhật', NULL, '<p>Contentjjh,hjljlm,</p>', NULL, '2024-04-02 14:28:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) DEFAULT NULL,
  `c_slug` varchar(191) DEFAULT NULL,
  `c_cate` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `c_cate`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ Philippe Auguste', 'dong-ho-philippe-auguste', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(2, 'Đồng hồ Epos Swiss', 'dong-ho-epos-swiss', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(3, 'Đồng hồ Atlantic Swiss', 'dong-ho-atlantic-swiss', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(4, 'Đồng hồ Diamond D', 'dong-ho-diamond-d', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(5, 'Đồng hồ Aries Gold', 'dong-ho-aries-gold', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(6, 'Đồng hồ Jacques Lemans', 'dong-ho-jacques-lemans', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(7, 'Đồng hồ Q&Q', 'dong-ho-qq', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(8, 'Bruno Sohnle Glashutte', 'bruno-sohnle-glashutte', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(9, 'Đồng hồ Citizen', 'dong-ho-citizen', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(10, 'Stuhrling Original Swiss', 'stuhrling-original-swiss', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(11, 'Kính mát Diamond D', 'kinh-mat-diamond-d', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(12, 'Kính mát Philippe Auguste', 'kinh-mat-philippe-auguste', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(13, 'Kính mát Burberry', 'kinh-mat-burberry', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(14, 'Kính mát Ray Ban', 'kinh-mat-ray-ban', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(15, 'Kính mát Prada', 'kinh-mat-prada', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(16, 'Kính mát Coach', 'kinh-mat-coach', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(17, 'Kính mát Armani Exchange', 'kinh-mat-armani-exchange', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(18, 'Kính mát Michael Kors', 'kinh-mat-michael-kors', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(19, 'Kính mát Vogue', 'kinh-mat-vogue', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(20, 'Kính V-IDOL', 'kinh-v-idol', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(21, 'Gọng kính Diamond D', 'gong-kinh-diamond-d', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(22, 'Gọng kính Philippe Auguste', 'gong-kinh-philippe-auguste', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(23, 'Hộp đựng đồng hồ', 'hop-dung-dong-ho', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(24, 'Dây đồng hồ Diamond D', 'day-dong-ho-diamond-d', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(25, 'Dây da Đăng Quang', 'day-da-dang-quang', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(26, 'Dây da Jacques Lemans', 'day-da-jacques-lemans', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(27, 'Dây đồng hồ Atlantic', 'day-dong-ho-atlantic', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(28, 'Dây đồng hồ Bruno', 'day-dong-ho-bruno', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(29, 'Dây đồng hồ Epos', 'day-dong-ho-epos', 'accessories', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(57, 'Sản phẩm mới 1', 'san-pham-moi-1', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(58, 'Sản phẩm mới 2', 'san-pham-moi-2', 'glass', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(60, 'Sản phẩm mới 3', 'san-pham-moi-3', 'watch', '2024-03-21 01:25:40', '2024-03-23 01:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE `keyword` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) DEFAULT NULL,
  `k_slug` varchar(191) DEFAULT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` int(11) NOT NULL DEFAULT 0,
  `k_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `k_active`, `created_at`, `updated_at`) VALUES
(1, 'Hot', 'hot', 'Hàng bán chạy', 0, 0, '2020-07-21 23:24:28', NULL),
(2, 'Siêu giảm giá', 'sieu-giam-gia', 'Giảm giá lên tới 20%', 0, 0, '2020-07-21 23:24:53', NULL),
(3, 'Limited', 'limited', 'Hàng hiếm', 0, 0, '2020-09-23 19:23:37', NULL),
(4, 'Hot sale', 'hot-sale', 'Hàng bán chạy nhất', 0, 0, '2020-09-23 19:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_03_205336_create_admins_table', 1),
(2, '2021_03_03_205356_create_articles_table', 1),
(3, '2021_03_03_205807_create_category_table', 1),
(4, '2021_03_03_205921_create_keyword_table', 1),
(5, '2021_03_03_210226_create_product_table', 1),
(6, '2021_03_03_210736_create_product_images_table', 1),
(7, '2021_03_03_210838_create_product_keywords_table', 1),
(8, '2021_03_03_211338_create_users_table', 1),
(9, '2021_03_03_211515_create_user_favourite_table', 1),
(10, '2022_04_02_094736_create_transaction_table', 1),
(11, '2022_04_02_094835_create_orders_table', 1),
(12, '2022_04_02_100515_create_rating_table', 1),
(13, '2022_05_15_090805_add_users_table', 2),
(14, '2022_05_15_092042_add_user_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `od_product_id` bigint(20) UNSIGNED NOT NULL,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` int(11) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(2, 2, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(3, 3, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(4, 4, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(5, 5, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(6, 5, 15, 0, 3, 24000000, '2024-03-21 01:25:40', NULL),
(7, 6, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(8, 7, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(9, 8, 46, 0, 1, 9980000, '2024-03-21 01:25:40', NULL),
(10, 8, 10, 10, 1, 7500000, '2024-03-21 01:25:40', NULL),
(11, 9, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(12, 10, 26, 0, 1, 19900000, '2024-03-21 01:25:40', NULL),
(13, 11, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(14, 12, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(15, 12, 9, 0, 3, 50000, '2024-03-21 01:25:40', NULL),
(16, 13, 8, 0, 1, 120000000, '2024-03-21 01:25:40', NULL),
(17, 14, 8, 0, 3, 120000000, '2024-03-21 01:25:40', NULL),
(18, 14, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(19, 15, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(20, 16, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(21, 17, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(22, 18, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(23, 35, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(24, 36, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(25, 37, 75, 0, 1, 6640000, NULL, NULL),
(26, 37, 15, 0, 1, 24000000, NULL, NULL),
(27, 38, 11, 0, 1, 4500000, NULL, NULL),
(28, 40, 14, 0, 1, 11359000, NULL, NULL),
(29, 40, 26, 0, 1, 19900000, NULL, NULL),
(30, 42, 217, 0, 1, 9250000, NULL, NULL),
(31, 43, 7, 0, 1, 150000000, NULL, NULL),
(32, 43, 175, 0, 1, 3450000, NULL, NULL),
(33, 44, 279, 120000, 1, 1955000, NULL, NULL),
(34, 45, 12, 0, 1, 500000000, NULL, NULL),
(35, 45, 7, 0, 3, 150000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_amount` int(11) NOT NULL DEFAULT 100,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_slug` varchar(191) DEFAULT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_category` varchar(191) DEFAULT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_favourite` int(11) NOT NULL DEFAULT 0,
  `pro_hot` int(11) NOT NULL DEFAULT 0,
  `pro_active` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` text DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `keywordseo` varchar(191) DEFAULT NULL,
  `pro_review_star` int(11) NOT NULL DEFAULT 5,
  `_wysihtml5_mode` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(6, 'Đồng hồ Philippe Auguste PA5001A', 100, 13, 'dong-ho-philippe-auguste-pa5001a', 1500000, 0, '1', '2020-07-06__784610833-dong-ho-nhap-khau.jpg', 0, 1, 1, 1, 0, 'THÔNG SỐ KỸ THUẬT<br> Đường kính mặt:40 mm<br> Chống nước:5 ATM<br> Chất liệu mặt:Sapphire<br> Năng lượng sử dụng:Automatic <br> Size dây<br> Chất liệu dây:Dây da chính hãng<br> Chất liệu vỏ:Stainless Steel<br> Kiểu dáng:Nam<br> Xuất xứ:Áo<br> Chế độ bảo hành:Bảo hành quốc tế 02 năm<br>', '<p> </p><div>Content</div><p></p>', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(7, 'Đồng hồ Philippe Auguste PA5001B', 96, 63, 'dong-ho-philippe-auguste-pa5001b', 150000000, 0, '1', '2020-07-06__202451360-dong-ho-nhap-khau2.jpg', 1, 1, 1, 1, 18, 'Đang cập nhật', 'Content', 2, '', 11, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(8, 'Đồng hồ Philippe Auguste PA5001C', 98, 13, 'dong-ho-philippe-auguste-pa5001c', 120000000, 0, '1', '2020-07-06__1494321812-dong-ho-nhap-khau3.jpg', 0, 0, 1, 1, 2, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(9, 'Đồng hồ Philippe Auguste PA5001D', 99, 5, 'dong-ho-philippe-auguste-pa5001d', 50000, 0, '1', '2020-07-06__67724650-dong-ho-nhap-khau4.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(10, 'Đồng hồ Philippe Auguste PA5001E', 99, 43, 'dong-ho-philippe-auguste-pa5001e', 7500000, 10, '1', '2020-07-06__2132524758-dong-ho-nhap-khau5.jpg', 0, 1, 1, 1, 36, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(11, 'Đồng hồ Philippe Auguste PA5001F', 96, 114, 'dong-ho-philippe-auguste-pa5001f', 4500000, 0, '1', '2020-07-06__2078177429-dong-ho-nhap-khau6.jpg', 1, 0, 1, 1, 6, 'Đang cập nhật', 'Content', 2, '', 9, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(12, 'Đồng hồ Philippe Auguste PA5002A', 99, 8, 'dong-ho-philippe-auguste-pa5002a', 500000000, 0, '1', '2020-07-06__828322507-dong-ho-nhap-khau7.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(13, 'Đồng hồ Philippe Auguste PA5002B', 100, 9, 'dong-ho-philippe-auguste-pa5002b', 90000, 0, '1', '2020-07-06__777381163-dong-ho-nhap-khau8.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(14, 'Đồng hồ Philippe Auguste PA5002C', 96, 60, 'dong-ho-philippe-auguste-pa5002c', 11359000, 0, '1', '2020-07-06__1432153761-dong-ho-nhap-khau9.jpg', 1, 1, 1, 1, 13, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(15, 'Đồng hồ Philippe Auguste PA5002D', 97, 46, 'dong-ho-philippe-auguste-pa5002d', 24000000, 0, '1', '2020-07-06__1334477955-dong-ho-nhap-khau10.jpg', 0, 1, 1, 1, 17, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(16, 'Đồng hồ Philippe Auguste PA5002E', 100, 0, 'dong-ho-philippe-auguste-pa5002e', 3400000, 0, '1', '2020-07-06__282562145-dong-ho-nhap-khau11.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(17, 'Đồng hồ Philippe Auguste PA5002F', 100, 0, 'dong-ho-philippe-auguste-pa5002f', 9000000, 0, '1', '2020-07-06__1284625766-dong-ho-nhap-khau12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(18, 'Đồng hồ Philippe Auguste PA5003A', 100, 0, 'dong-ho-philippe-auguste-pa5003a', 11007000, 0, '1', '2020-07-06__572581815-dong-ho-nhap-khau13.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(19, 'Đồng hồ Philippe Auguste PA5003B', 100, 0, 'dong-ho-philippe-auguste-pa5003b', 11007000, 0, '1', '2020-07-06__2082318285-dong-ho-nhap-khau14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(20, 'Đồng hồ Philippe Auguste PA5003C', 100, 0, 'dong-ho-philippe-auguste-pa5003c', 11007000, 0, '1', '2020-07-06__1330665752-dong-ho-nhap-khau15.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(21, 'Đồng hồ Philippe Auguste PA5003D', 100, 0, 'dong-ho-philippe-auguste-pa5003d', 12672000, 0, '1', '2020-07-06__99499183-dong-ho-nhap-khau16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(22, 'Đồng hồ Philippe Auguste PA5003E', 100, 0, 'dong-ho-philippe-auguste-pa5003e', 12672000, 0, '1', '2020-07-06__1932436227-dong-ho-nhap-khau18.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(23, 'Đồng hồ Philippe Auguste PA5003G', 100, 15, 'dong-ho-philippe-auguste-pa5003g', 12672000, 0, '1', '2020-07-06__176722357-dong-ho-chinh-hang-19.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(24, 'Đồng hồ Philippe Auguste PA5004A', 100, 18, 'dong-ho-philippe-auguste-pa5004a', 11007000, 0, '1', '2020-07-06__305117350-dong-ho-nhap-khau20.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(25, 'Đồng hồ Epos Swiss E-7000.701.20.98.25', 100, 0, 'dong-ho-epos-swiss-e-7000701209825', 13000000, 0, '2', '2020-07-06__1367739457-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(26, 'Đồng hồ Epos Swiss E-8000.700.22.68.32', 98, 6, 'dong-ho-epos-swiss-e-8000700226832', 19900000, 0, '2', '2020-07-06__186594578-dong-ho-chinh-hang-62.jpg', 0, 0, 1, 1, 2, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(27, 'Đồng hồ Epos Swiss E-7000.701.20.95.25', 100, 2, 'dong-ho-epos-swiss-e-7000701209525', 13000000, 0, '2', '2020-07-06__1779327189-dong-ho-chinh-hang-65.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 1, '', 9, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(28, 'Đồng hồ Epos Swiss E-7000.701.22.16.26', 100, 0, 'dong-ho-epos-swiss-e-7000701221626', 14000000, 0, '2', '2020-07-06__928364280-1702384644-e-7000701221626.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(29, 'Đồng hồ Epos Swiss E-7000.701.22.15.25', 100, 0, 'dong-ho-epos-swiss-e-7000701221525', 14000000, 0, '2', '2020-07-06__460677088-e-7000701221525.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(30, 'Đồng hồ Epos Swiss E-8000.700.22.68.15', 100, 17, 'dong-ho-epos-swiss-e-8000700226815', 15100000, 0, '1', '2020-07-06__110702752-dong-ho-chinh-hang-82.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(31, 'Đồng hồ Epos Swiss E-7000.701.20.96.26', 100, 0, 'dong-ho-epos-swiss-e-7000701209626', 13000000, 0, '2', '2020-07-06__1125243076-dong-ho-chinh-hang-66.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(32, 'Đồng hồ Epos Swiss E-8000.700.22.88.32', 100, 2, 'dong-ho-epos-swiss-e-8000700228832', 22800000, 0, '2', '2020-07-06__1328554038-dong-ho-chinh-hang-67.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(33, 'Đồng hồ Epos Swiss E-3420.152.22.16.15', 100, 0, 'dong-ho-epos-swiss-e-3420152221615', 32100000, 0, '2', '2020-07-06__2144894182-e-3420152221615.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(34, 'Đồng hồ Epos Swiss E-3390.156.22.20.32', 100, 0, 'dong-ho-epos-swiss-e-3390156222032', 56400000, 0, '2', '2020-07-06__373860224-untitled-14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(35, 'Đồng hồ Epos Swiss E-8000.700.22.65.15', 100, 0, 'dong-ho-epos-swiss-e-8000700226515', 15100000, 0, '2', '2020-07-06__2015096233-dong-ho-chinh-hang-8.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(36, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 100, 0, 'dong-ho-epos-swiss-e-3387152222832', 36000000, 0, '2', '2020-07-06__364723213-untitled-56.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(37, 'Đồng hồ Epos Swiss E-3387.152.22.16.32', 100, 0, 'dong-ho-epos-swiss-e-3387152221632', 36000000, 0, '2', '2020-07-06__2065350889-untitled-33.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(38, 'Đồng hồ Epos Swiss E-3401.132.22.58.25', 100, 0, 'dong-ho-epos-swiss-e-3401132225825', 32100000, 0, '2', '2020-07-06__581788969-e-3401132225825.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(39, 'Đồng hồ Epos Swiss E-3420.152.22.16.32', 100, 0, 'dong-ho-epos-swiss-e-3420152221632', 39600000, 0, '2', '2020-07-06__416029194-e-3420152221632.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(40, 'Đồng hồ Epos Swiss E-7000.701.22.18.25', 100, 0, 'dong-ho-epos-swiss-e-7000701221825', 14000000, 0, '2', '2020-07-06__1560014040-anh-test5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(41, 'Đồng hồ Epos Swiss E-3420.152.22.18.15', 100, 0, 'dong-ho-epos-swiss-e-3420152221815', 32100000, 0, '2', '2020-07-06__1713156451-e-3420152221815.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(42, 'Đồng hồ Epos Swiss E-3420.156.22.20.15', 100, 0, 'dong-ho-epos-swiss-e-3420156222015', 54500000, 0, '2', '2020-07-06__1244120338-e-3420156222015.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(43, 'Đồng hồ Epos Swiss E-3390.152.22.10.32', 100, 0, 'dong-ho-epos-swiss-e-3390152221032', 36000000, 0, '2', '2020-07-06__1703889192-untitled-73.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(44, 'Đồng hồ Epos Swiss E-3387.152.22.28.15', 100, 0, 'dong-ho-epos-swiss-e-3387152222815', 31600000, 0, '2', '2020-07-06__677822869-untitled-57.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(45, 'Đồng hồ Atlantic Swiss AT-29037.45.21L', 100, 4, 'dong-ho-atlantic-swiss-at-290374521l', 8580000, 0, '3', '2020-07-06__1867397475-dong-ho-chinh-hang-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(46, 'Đồng Hồ Atlantic AT-61352.45.21', 99, 0, 'dong-ho-atlantic-at-613524521', 9980000, 0, '3', '2020-07-06__2007657172-dong-ho-nu-thoi-trang-3.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(47, 'Đồng hồ Atlantic Swiss AT-60347.45.21', 100, 3, 'dong-ho-atlantic-swiss-at-603474521', 9180000, 0, '3', '2020-07-06__824256149-untitled-17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(48, 'Đồng hồ Atlantic Swiss AT-29035.41.21', 100, 0, 'dong-ho-atlantic-swiss-at-290354121', 7620000, 0, '3', '2020-07-06__1900541705-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(49, 'Đồng hồ Atlantic Swiss AT-60347.43.31', 100, 3, 'dong-ho-atlantic-swiss-at-603474331', 8980000, 0, '3', '2020-07-06__2013794039-untitled-75.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(50, 'Đồng hồ Atlantic Swiss AT-62341.45.61', 100, 0, 'dong-ho-atlantic-swiss-at-623414561', 7990000, 0, '3', '2020-07-06__854920604-untitled-44.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(51, 'Đồng hồ Atlantic Swiss AT-60342.45.11', 100, 0, 'dong-ho-atlantic-swiss-at-603424511', 8390000, 0, '3', '2020-07-06__347591995-untitled-29.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(52, 'Đồng hồ Atlantic Swiss AT-62346.45.21', 100, 0, 'dong-ho-atlantic-swiss-at-623464521', 9180000, 0, '3', '2020-07-06__1705990443-dong-ho-atlantic-623464521.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(53, 'Đồng hồ Atlantic Swiss AT-62455.45.21', 100, 0, 'dong-ho-atlantic-swiss-at-624554521', 13980000, 0, '3', '2020-07-06__1583539626-untitled-22.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(54, 'Đồng hồ Atlantic Swiss AT-60342.45.31', 100, 0, 'dong-ho-atlantic-swiss-at-603424531', 8390000, 0, '3', '2020-07-06__534263268-atsua2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(55, '344942409_6305b5.jpg', 100, 2, '344942409-6305b5jpg', 3850000, 0, '4', '2020-07-06__344942409-6305b5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(56, 'Đồng hồ Diamond D DM5308B5', 100, 0, 'dong-ho-diamond-d-dm5308b5', 4545000, 0, '4', '2020-07-06__344942409-6305b5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(57, 'Đồng hồ Diamond D DM38445', 100, 0, 'dong-ho-diamond-d-dm38445', 2890000, 0, '4', '2020-07-06__2062512311-dm38445.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(58, 'Đồng hồ Diamond D DM36505IG', 100, 0, 'dong-ho-diamond-d-dm36505ig', 3575000, 0, '4', '2020-07-06__305867309-dong-ho-diamond-d-dm36505ig.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(59, 'Đồng hồ Diamond D DM5308B5IG', 100, 3, 'dong-ho-diamond-d-dm5308b5ig', 5000000, 0, '4', '2020-07-06__2127487811-dong-ho-diamond-d-dm5308b5ig.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(60, 'Đồng hồ Diamond D DM36505', 100, 5, 'dong-ho-diamond-d-dm36505', 2890000, 0, '4', '2020-07-06__2081582639-dong-ho-diamond-d-dm36505.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(61, 'Đồng hồ Diamond D DM63055', 100, 0, 'dong-ho-diamond-d-dm63055', 2890000, 0, '4', '2020-07-06__1874911582-dong-ho-diamond-d-dm63055.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(62, 'Đồng hồ Diamond D DM3645B5IG-R', 100, 0, 'dong-ho-diamond-d-dm3645b5ig-r', 4080000, 0, '4', '2020-07-06__1077384062-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(63, 'Đồng hồ Diamond D DM38445IG', 100, 0, 'dong-ho-diamond-d-dm38445ig', 3575000, 0, '4', '2020-07-06__1456012083-dong-ho-diamond-d-dm38445ig.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(64, 'Đồng hồ Diamond D DM61195IG', 100, 0, 'dong-ho-diamond-d-dm61195ig', 6000000, 0, '4', '2020-07-06__1390039292-dong-ho-diamond-d-dm61195ig.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(65, 'ĐỒNG HỒ ARIES GOLD AG-L5002 G-MOP-L', 100, 0, 'dong-ho-aries-gold-ag-l5002-g-mop-l', 4225000, 0, '5', '2020-07-06__444423868-dong-ho-nu-thoi-trang.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(66, 'Đồng hồ Aries Gold AG-G1013Z 2TG-S', 100, 0, 'dong-ho-aries-gold-ag-g1013z-2tg-s', 2975000, 0, '5', '2020-07-06__1773979405-ng-h-chnh-hng-6.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(67, 'Đồng hồ Aries Gold AG-G1013Z G-S', 100, 0, 'dong-ho-aries-gold-ag-g1013z-g-s', 2975000, 0, '5', '2020-07-06__884588771-ng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(68, 'Đồng hồ Aries Gold AG-G1001 G-BR', 100, 0, 'dong-ho-aries-gold-ag-g1001-g-br', 3700000, 0, '5', '2020-07-06__1183133090-dong-ho-chinh-hang-18.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(69, 'Đồng hồ Aries Gold AG-U7010 Z-BK', 100, 0, 'dong-ho-aries-gold-ag-u7010-z-bk', 1295000, 0, '5', '2020-07-06__119078961-ng-h-chnh-hng23.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(70, 'Đồng hồ Aries Gold AG-L5039Z 2TRG-W', 100, 0, 'dong-ho-aries-gold-ag-l5039z-2trg-w', 5225000, 0, '5', '2020-07-06__2063952782-dong-ho-chinh-hang-71.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(71, 'Đồng hồ Aries Gold AG-G9005G RG-S', 100, 0, 'dong-ho-aries-gold-ag-g9005g-rg-s', 11522500, 0, '5', '2020-07-06__1776967786-donghocochinhhang.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(72, 'Đồng hồ Aries Gold AG-G101 G-BU', 100, 0, 'dong-ho-aries-gold-ag-g101-g-bu', 5472500, 0, '5', '2020-07-06__1105091133-ng-h-chnh-hng-9-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(73, 'Đồng hồ Aries Gold AG-L9023 S-BK', 100, 0, 'dong-ho-aries-gold-ag-l9023-s-bk', 6225000, 0, '5', '2020-07-06__664894802-ag-l9023-s-bk.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(74, 'Đồng hồ Jacques Lemans JL-1-1654.2ZD', 100, 5, 'dong-ho-jacques-lemans-jl-1-16542zd', 5190000, 0, '6', '2020-07-06__1237549702-dong-ho-chinh-hang-15.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(75, 'Đồng hồ Jacques Lemans JL-1-1654.2ZH', 99, 4, 'dong-ho-jacques-lemans-jl-1-16542zh', 6640000, 0, '6', '2020-07-06__1227200434-dong-ho-chinh-hang-3.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(76, 'Đồng hồ Jacques Lemans JL-40-1D', 100, 2, 'dong-ho-jacques-lemans-jl-40-1d', 2470000, 0, '6', '2020-07-06__764709761-ng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(77, 'ĐỒNG HỒ JACQUES LEMANS JL-1-1654.2ZG', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zg', 5770000, 0, '6', '2020-07-06__1211669676-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(78, 'Đồng hồ Jacques Lemans JL-1-1654ZD', 100, 0, 'dong-ho-jacques-lemans-jl-1-1654zd', 5190000, 0, '6', '2020-07-06__1629170767-dong-ho-chinh-hang-17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(79, 'Đồng hồ Jacques Lemans JL-1-1654.2ZK', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zk', 4320000, 0, '6', '2020-07-06__303830371-dng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(80, 'Đồng hồ Jacques Lemans JL-42-6H', 100, 0, 'dong-ho-jacques-lemans-jl-42-6h', 8670000, 0, '6', '2020-07-06__628628426-dong-ho-chinh-hang-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(81, 'Đồng hồ Jacques Lemans JL-1-1654.2ZB', 100, 0, 'dong-ho-jacques-lemans-jl-1-16542zb', 4320000, 0, '6', '2020-07-06__154172738-ng-h-chnh-hng-22.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(82, 'Đồng hồ Jacques Lemans JL-42-6G', 100, 0, 'dong-ho-jacques-lemans-jl-42-6g', 7220000, 0, '6', '2020-07-06__1602688128-ng-h-chnh-hng-25.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(83, 'Đồng hồ Jacques Lemans JL-42-5F', 100, 0, 'dong-ho-jacques-lemans-jl-42-5f', 7220000, 0, '6', '2020-07-06__1708797910-ng-h-chnh-hng-24.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(84, 'Đồng hồ Q&Q QQ-S280J102Y', 100, 0, 'dong-ho-qq-qq-s280j102y', 1564000, 0, '7', '2020-07-06__938885842-qq-s280j102y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(85, 'Đồng hồ Q&Q QQ-S297J201Y', 100, 0, 'dong-ho-qq-qq-s297j201y', 1714000, 0, '7', '2020-07-06__1515923572-dong-ho-chinh-hang-40.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(86, 'Đồng hồ Q&Q QQ-S297J212Y', 100, 0, 'dong-ho-qq-qq-s297j212y', 1714000, 0, '7', '2020-07-06__1593600037-qq-s297j212y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(87, 'Đồng hồ Q&Q QQ-S278J102Y', 100, 0, 'dong-ho-qq-qq-s278j102y', 1564000, 0, '7', '2020-07-06__790154414-qq-s278j102y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(88, 'Đồng hồ Q&Q QQ-S279J102Y', 100, 0, 'dong-ho-qq-qq-s279j102y', 1564000, 0, '7', '2020-07-06__676187452-qq-s279j102y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(89, 'Đồng hồ Q&Q QQ-S278J302Y', 100, 0, 'dong-ho-qq-qq-s278j302y', 1334000, 0, '7', '2020-07-06__1758918333-qq-s278j302y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(90, 'Đồng hồ Q&Q QQ-S301J201Y', 100, 0, 'dong-ho-qq-qq-s301j201y', 1668000, 0, '7', '2020-07-06__939792346-qq-s301j201y.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(91, 'Đồng hồ Q&Q QQ-S280J302Y', 100, 0, 'dong-ho-qq-qq-s280j302y', 1334000, 0, '7', '2020-07-06__1884170303-dong-ho-chinh-hang-41.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(92, 'Đồng hồ Q&Q QQ-S281J204Y', 100, 0, 'dong-ho-qq-qq-s281j204y', 1334000, 0, '7', '2020-07-06__640634400-dong-ho-chinh-hang-44.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(93, 'Đồng hồ Q&Q QQ-S306J202Y', 100, 0, 'dong-ho-qq-qq-s306j202y', 1691000, 0, '7', '2020-07-06__1051789348-untitled-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(94, 'Đồng hồ Bruno Sohnle Glashutte BS-17-13185-950', 100, 0, 'dong-ho-bruno-sohnle-glashutte-bs-17-13185-950', 11200000, 0, '8', '2020-07-06__2112857441-untitled-29.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(95, 'Đồng hồ Bruno Sohnle BS-17-63162-244', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63162-244', 14880000, 0, '8', '2020-07-06__116553004-bs-17-63162-244.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(96, 'Đồng hồ Bruno Sohnle BS-17-63185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63185-950', 12780000, 0, '8', '2020-07-06__1983096435-bs-17-63185-950.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(97, 'Đồng hồ Bruno sohnle BS-17-33185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33185-950', 12830000, 0, '8', '2020-07-06__1824361845-dong-ho-nhap-khau2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(98, 'Đồng hồ Bruno Sohnle BS-17-23185-950', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23185-950', 12780000, 0, '8', '2020-07-06__370231196-bs-17-23185-950.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(99, 'Đồng hồ Bruno Sohnle BS-17-23189-292', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23189-292', 13130000, 30, '8', '2020-07-06__2062397430-bs-17-23189-292.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(100, 'Đồng hồ Bruno sohnle BS-17-63160-921', 100, 0, 'dong-ho-bruno-sohnle-bs-17-63160-921', 11730000, 30, '8', '2020-07-06__439273055-bs-17-63160-921.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(101, 'Đồng hồ Bruno sohnle BS-17-33189-892', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33189-892', 13830000, 0, '8', '2020-07-06__989594572-untitled-27.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(102, 'Đồng hồ Bruno Sohnle BS-17-23157-292', 100, 0, 'dong-ho-bruno-sohnle-bs-17-23157-292', 17330000, 0, '8', '2020-07-06__164754311-untitled-26.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(103, 'Đồng hồ Bruno sohnle BS-17-33192-263', 100, 0, 'dong-ho-bruno-sohnle-bs-17-33192-263', 15750000, 0, '8', '2020-07-06__1261547652-untitled-28.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(104, 'Đồng hồ Citizen CT-NH8350-08A', 100, 0, 'dong-ho-citizen-ct-nh8350-08a', 4990000, 0, '9', '2020-07-06__1278870388-dong-ho-chinh-hang-10.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(105, 'Đồng hồ Citizen CT-NH8350-08E', 100, 0, 'dong-ho-citizen-ct-nh8350-08e', 4990000, 0, '9', '2020-07-06__783274726-dong-ho-chinh-hang-9.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(106, 'Đồng hồ Citizen CT-BF2003-84P', 100, 0, 'dong-ho-citizen-ct-bf2003-84p', 4190000, 0, '9', '2020-07-06__1213115573-ng-h-ng-quang26.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(107, 'Đồng hồ Citizen CT-NH8350-08B', 100, 0, 'dong-ho-citizen-ct-nh8350-08b', 4750000, 0, '9', '2020-07-06__442407611-dng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(108, 'Đồng hồ Citizen CT-BI1050-56A', 100, 0, 'dong-ho-citizen-ct-bi1050-56a', 2990000, 0, '9', '2020-07-06__221232752-ng-h-nht4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(109, 'Đồng hồ Citizen CT-NH8350-59L', 100, 0, 'dong-ho-citizen-ct-nh8350-59l', 5240000, 0, '9', '2020-07-06__1935471340-dng-h-chnh-hng-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(110, 'Đồng hồ Citizen CT-NH8360-12H', 100, 0, 'dong-ho-citizen-ct-nh8360-12h', 4750000, 0, '9', '2020-07-06__261968561-dng-h-chnh-hng-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(111, 'Đồng hồ Citizen CT-BF2001-80E', 100, 0, 'dong-ho-citizen-ct-bf2001-80e', 3370000, 0, '9', '2020-07-06__345598352-dng-h-chnh-hng-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(112, 'Đồng hồ Citizen CT-BI5072-51E', 100, 0, 'dong-ho-citizen-ct-bi5072-51e', 3900000, 0, '9', '2020-07-06__1012898075-dng-h-chnh-hng-7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(113, 'Đồng hồ Citizen CT-BI5074-56A', 100, 0, 'dong-ho-citizen-ct-bi5074-56a', 3900000, 0, '9', '2020-07-06__2005302146-dng-h-chnh-hng-6.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(114, 'Stuhrling Original ST-207.03', 100, 0, 'stuhrling-original-st-20703', 7980000, 0, '10', '2020-07-06__36556100-ng-h-chnh-hng-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(115, 'STUHRLING ORIGINAL ST-700.03', 100, 0, 'stuhrling-original-st-70003', 11960000, 0, '10', '2020-07-06__1651380392-dong-ho-nu-thoi-trang-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(116, 'STUHRLING ORIGINAL ST-710.02', 100, 0, 'stuhrling-original-st-71002', 13480000, 0, '10', '2020-07-06__2024239784-ng-h-chnh-hng-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(117, 'STUHRLING ORIGINAL ST-716.02', 100, 0, 'stuhrling-original-st-71602', 9210000, 0, '10', '2020-07-06__1549374713-dong-ho-chinh-hang-46.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(118, 'STUHRLING ORIGINAL ST-716.03', 100, 0, 'stuhrling-original-st-71603', 9350000, 0, '10', '2020-07-06__2035845115-dong-ho-nu-thoi-trang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(119, 'Stuhrling Original ST-207.01', 100, 0, 'stuhrling-original-st-20701', 7150000, 0, '10', '2020-07-06__770678537-dong-ho-chinh-hang-47.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(120, 'STUHRLING ORIGINAL ST-733.03', 100, 0, 'stuhrling-original-st-73303', 7150000, 0, '10', '2020-07-06__1957332017-dong-ho-chinh-hang-48.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(121, 'Stuhrling Original ST-207.04', 100, 0, 'stuhrling-original-st-20704', 8110000, 0, '10', '2020-07-06__506418218-untitled-69.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(122, 'STUHRLING ORIGINAL ST-734LM.05', 100, 0, 'stuhrling-original-st-734lm05', 6810000, 0, '10', '2020-07-06__21559474-dong-ho-chinh-hang-49.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(123, 'STUHRLING ORIGINAL ST-740.03', 100, 0, 'stuhrling-original-st-74003', 19800000, 0, '10', '2020-07-06__1410657971-dong-ho-chinh-hang-50.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(124, 'TỦ PHILIPPE AUGUSTE 6 NGĂN XOAY 7 NGĂN BÀY WW6-7/C', 100, 0, 'tu-philippe-auguste-6-ngan-xoay-7-ngan-bay-ww6-7c', 6100000, 0, '23', '2020-07-06__990289388-hopdonghoco42.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(125, 'HỘP PHILIPPE AUGUSTE 4 NGĂN XOAY WW4-0/C', 100, 0, 'hop-philippe-auguste-4-ngan-xoay-ww4-0c', 3600000, 0, '23', '2020-07-06__498535141-hopdonghoco39.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(126, 'HỘP PHILIPPE AUGUSTE 2 NGĂN XOAY WW2-0/D', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0d', 2200000, 0, '23', '2020-07-06__193525268-hopdonghoco18.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(127, 'HỘP PHILIPPE AUGUSTE 1 NGĂN XOAY WW1-0/A', 100, 12, 'hop-philippe-auguste-1-ngan-xoay-ww1-0a', 1600000, 0, '23', '2020-07-06__1413898215-hopdonghoco20.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(128, 'HỘP PHILIPPE AUGUSTE 2 NGĂN XOAY WW2-0/B', 100, 2, 'hop-philippe-auguste-2-ngan-xoay-ww2-0b', 2100000, 0, '23', '2020-07-06__1143756016-hopdonghoco23.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(129, 'HỘP PHILIPPE AUGUSTE 2 NGĂN XOAY WW2-0/E', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0e', 2200000, 0, '23', '2020-07-06__417694880-hopdonghoco16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(130, 'HỘP PHILIPPE AUGUSTE 2 ngăn xoay WW2-0/F', 100, 0, 'hop-philippe-auguste-2-ngan-xoay-ww2-0f', 2100000, 0, '23', '2020-07-06__1412453866-hopdonghoco21.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(131, 'HỘP PHILIPPE AUGUSTE 2 NGĂN XOAY WW2-0/C', 100, 9, 'hop-philippe-auguste-2-ngan-xoay-ww2-0c', 2100000, 0, '23', '2020-07-06__221869409-hopdonghoco27.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(132, 'HỘP PHILIPPE AUGUSTE 2 NGĂN XOAY WW2-0/A', 100, 5, 'hop-philippe-auguste-2-ngan-xoay-ww2-0a', 2200000, 0, '23', '2020-07-06__1140257724-hopdonghoco35.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(133, 'HỘP PHILIPPE AUGUSTE 1 NGĂN XOAY WW1-0/B', 100, 2, 'hop-philippe-auguste-1-ngan-xoay-ww1-0b', 1600000, 0, '23', '2020-07-06__1644487027-hopdonghonghoco10.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(134, 'Dây da Diamond D D DM W 12', 100, 0, 'day-da-diamond-d-d-dm-w-12', 300000, 0, '24', '2020-07-06__1905887238-d-dm-w-12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(135, 'Dây D DM W 14', 100, 0, 'day-d-dm-w-14', 300000, 0, '24', '2020-07-06__205348583-1546412289-d-dm-w-14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(136, 'Dây da Diamond D D DM R 12', 100, 0, 'day-da-diamond-d-d-dm-r-12', 300000, 0, '24', '2020-07-06__1752070534-d-dm-r-12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(137, 'Dây da Diamond D D DM B 12', 100, 0, 'day-da-diamond-d-d-dm-b-12', 300000, 0, '24', '2020-07-06__1876477849-d-dm-b-12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(138, 'Dây da Diamond D D DM W 16', 100, 0, 'day-da-diamond-d-d-dm-w-16', 300000, 0, '24', '2020-07-06__816219224-d-dm-w-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(139, 'Dây da Diamond D D DM R 16', 100, 0, 'day-da-diamond-d-d-dm-r-16', 300000, 0, '24', '2020-07-06__1612172678-d-dm-r-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(140, 'Dây da Diamond D D DM B 16', 100, 0, 'day-da-diamond-d-d-dm-b-16', 300000, 0, '24', '2020-07-06__5622158-d-dm-b-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(141, 'Dây D DM W-IG14', 100, 0, 'day-d-dm-w-ig14', 300000, 0, '24', '2020-07-06__84635991-711696425-d-dm-w-ig14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(142, 'Dây da Diamond D D DM R-RG12', 100, 0, 'day-da-diamond-d-d-dm-r-rg12', 300000, 0, '24', '2020-07-06__928420528-d-dm-r-rg12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(143, 'Dây da Đăng Quang D-A-2301PKS.4P.BR-18', 100, 0, 'day-da-dang-quang-d-a-2301pks4pbr-18', 350000, 0, '25', '2020-07-06__671677166-ddweb5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(144, 'Dây da Đăng Quang D-71S-816-01/22', 100, 0, 'day-da-dang-quang-d-71s-816-0122', 350000, 0, '25', '2020-07-06__128844916-d-71s-816-0122.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(145, 'Dây da Đăng Quang D-A-6057PKS.4P-24', 100, 0, 'day-da-dang-quang-d-a-6057pks4p-24', 400000, 0, '25', '2020-07-06__1847910649-1802858111-ddweb23.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(146, 'Dây da Đăng Quang D-71C-443-04/20G', 100, 0, 'day-da-dang-quang-d-71c-443-0420g', 400000, 0, '25', '2020-07-06__2076252870-ddweb2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(147, 'Dây da Đăng Quang D-01A-443-02/24', 100, 0, 'day-da-dang-quang-d-01a-443-0224', 400000, 0, '25', '2020-07-06__141172415-1374829367-testweb.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(148, 'Dây da Đăng Quang D-A-2301PKS.4P.BR-22', 100, 0, 'day-da-dang-quang-d-a-2301pks4pbr-22', 500000, 0, '25', '2020-07-06__422147414-671677166-ddweb5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(149, 'Dây da Đăng Quang D-71C-443-46A/20G', 100, 0, 'day-da-dang-quang-d-71c-443-46a20g', 400000, 0, '25', '2020-07-06__906071792-ddweb3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(150, 'Dây da Đăng Quang D-71C-443-04/20', 100, 0, 'day-da-dang-quang-d-71c-443-0420', 350000, 0, '25', '2020-07-06__115319853-ddweb19.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(151, 'DÂY DA ĐĂNG QUANG D-71S-254-09/22', 100, 0, 'day-da-dang-quang-d-71s-254-0922', 350000, 0, '25', '2020-07-06__2075725556-550772250-d-71s-254-09-22.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(152, 'Dây da Đăng Quang D-C-260APLS.SW-22', 100, 0, 'day-da-dang-quang-d-c-260aplssw-22', 500000, 0, '25', '2020-07-06__234579733-ddweb22.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(153, 'Dây da Jacques D JL-1-1769E', 100, 0, 'day-da-jacques-d-jl-1-1769e', 650000, 0, '26', '2020-07-06__1166455242-dy-jl16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(154, '555712214_dây-jl11.jpg', 100, 0, '555712214-day-jl11jpg', 650000, 0, '26', '2020-07-06__555712214-dy-jl11.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(155, 'Dây da Jacques D JL-1-1769D', 100, 0, 'day-da-jacques-d-jl-1-1769d', 650000, 0, '25', '2020-07-06__285983391-dy-jl15.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(156, 'Dây da Jacques D JL-1-1540H', 100, 0, 'day-da-jacques-d-jl-1-1540h', 650000, 0, '26', '2020-07-06__1368824276-dy-jl14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(157, 'Dây da Jacques D JL-1-1845B', 100, 0, 'day-da-jacques-d-jl-1-1845b', 650000, 0, '26', '2020-07-06__294111226-dy-jl1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(158, 'Dây da Jacques D JL-1-1846A', 100, 0, 'day-da-jacques-d-jl-1-1846a', 650000, 0, '26', '2020-07-06__659021748-dy-jl6.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(159, 'Dây da Jacques D JL-1-1929H', 100, 0, 'day-da-jacques-d-jl-1-1929h', 650000, 0, '26', '2020-07-06__874011210-dy-jl17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(160, 'Dây da Jacques D JL-1-1654G', 100, 0, 'day-da-jacques-d-jl-1-1654g', 650000, 0, '26', '2020-07-06__1450528902-dy-jl7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(161, 'Dây da Jacques D JL-1-1929E', 100, 0, 'day-da-jacques-d-jl-1-1929e', 650000, 0, '26', '2020-07-06__2076549646-dy-jl19.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(162, 'Dây da atlantic D AT-71C-443-01/22', 100, 0, 'day-da-atlantic-d-at-71c-443-0122', 1500000, 0, '27', '2020-07-06__880038240-daydaweb.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(163, 'Dây da atlantic D AT-L418.03.12G', 100, 0, 'day-da-atlantic-d-at-l4180312g', 1500000, 0, '27', '2020-07-06__1252837020-day-da-atlantic-d-at-l4180312g.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(164, 'Dây da atlantic D AT-L168.01.22G', 100, 0, 'day-da-atlantic-d-at-l1680122g', 1500000, 0, '27', '2020-07-06__1234991810-day-da-atlantic-d-at-l1680122g.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(165, 'Dây da atlantic D AT-L397.02.24G', 100, 0, 'day-da-atlantic-d-at-l3970224g', 1500000, 0, '27', '2020-07-06__637326163-day-da-atlantic-d-at-l3970224g.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(166, 'Dây da atlantic D AT-L168.03.22G', 100, 0, 'day-da-atlantic-d-at-l1680322g', 1500000, 0, '27', '2020-07-06__960915062-day-da-atlantic-d-at-l1680322g.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(167, 'Dây da atlantic D AT-L168.03.22S', 100, 0, 'day-da-atlantic-d-at-l1680322s', 1500000, 0, '27', '2020-07-06__1306247000-day-da-atlantic-d-at-l1680322s.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(168, 'Dây da Bruno D BS-71C-443-04/20', 100, 0, 'day-da-bruno-d-bs-71c-443-0420', 2500000, 0, '28', '2020-07-06__146707285-ddweb17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(169, 'Dây da Bruno D BS D-OL20', 100, 0, 'day-da-bruno-d-bs-d-ol20', 1800000, 0, '28', '2020-07-06__822524996-dy-bru2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(170, 'Dây da Epos DD E-D 22BK', 100, 0, 'day-da-epos-dd-e-d-22bk', 3500000, 0, '29', '2020-07-06__739787493-dy-da-epos.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(171, 'Dây da Epos DD E-D 22BR', 100, 0, 'day-da-epos-dd-e-d-22br', 3500000, 0, '29', '2020-07-06__442906468-dy-da-epos2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(172, 'Dây da Epos DD E-D 20', 100, 0, 'day-da-epos-dd-e-d-20', 3500000, 0, '29', '2020-07-06__1156437885-dy-da-epos.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(173, 'Dây da Epos DD E-B16', 100, 0, 'day-da-epos-dd-e-b16', 2800000, 0, '29', '2020-07-06__1164561611-dy-da-epos3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(174, 'KÍNH MÁT DIAMOND D DM-T-29210-59/C6', 100, 0, 'kinh-mat-diamond-d-dm-t-29210-59c6', 2933000, 0, '11', '2020-07-06__dm226-img-0578.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(175, 'Kính mát Diamond D DM-29366-60/C7', 99, 3, 'kinh-mat-diamond-d-dm-29366-60c7', 3450000, 0, '11', '2020-07-06__1827657616-kinh-mat-thoi-trang-1.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(176, 'Kính mát Diamond D DM-29361-60/C7', 100, 2, 'kinh-mat-diamond-d-dm-29361-60c7', 3450000, 0, '11', '2020-07-06__668773904-kinh-mat-thoi-trang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(177, 'KÍNH MÁT DIAMOND D DM-T-29278-64/C6', 100, 2, 'kinh-mat-diamond-d-dm-t-29278-64c6', 2933000, 0, '11', '2020-07-06__dm226-img-0551.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(178, 'KÍNH MÁT DIAMOND D DM-T-29227-60/C4', 100, 0, 'kinh-mat-diamond-d-dm-t-29227-60c4', 2933000, 0, '11', '2020-07-06__dm206-img-9827.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(179, 'KÍNH MÁT DIAMOND D DM-T-29257-58/C3', 100, 0, 'kinh-mat-diamond-d-dm-t-29257-58c3', 2933000, 0, '11', '2020-07-06__dm226-img-0063.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(180, 'Kính mát Diamond D DM-29382-54/C21', 100, 0, 'kinh-mat-diamond-d-dm-29382-54c21', 3450000, 0, '11', '2020-07-06__782883074-kinh-mat-thoi-trang-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(181, 'Kính mát Diamond D DM-29330-66/C22', 100, 0, 'kinh-mat-diamond-d-dm-29330-66c22', 3450000, 0, '11', '2020-07-06__1849499674-kinh-thoi-trang-11.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(182, 'Kính mát Diamond D DM-29362-60/C5', 100, 0, 'kinh-mat-diamond-d-dm-29362-60c5', 3450000, 0, '11', '2020-07-06__684180939-kinh-mat-thoi-trang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(183, 'Kính mát Diamond D DM-29386-54/C23', 100, 0, 'kinh-mat-diamond-d-dm-29386-54c23', 3450000, 0, '11', '2020-07-06__1472272725-kinh-mat-thoi-trang-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(184, 'Kính mát PHILIPPE AUGUSTE PA-19151-60/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-19151-60c2', 3450000, 0, '12', '2020-07-06__pa1707-img-1822.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(185, 'Kính mát PHILIPPE AUGUSTE PA-19107-59/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19107-59c1', 3450000, 0, '12', '2020-07-06__332065152-kinh-thoi-trang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(186, 'KÍNH MÁT PHILIPPE AUGUSTE PA-19107-62/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-19107-62c2', 34500000, 0, '12', '2020-07-06__92130298-knh-mt-chnh-hng11.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(187, 'Kính mát PHILIPPE AUGUSTE PA-8558-52/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-8558-52c1', 3622500, 0, '12', '2020-07-06__1820287822-kinh-thoi-trang-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(188, 'PA1707-IMG-2081.jpg', 100, 16, 'pa1707-img-2081jpg', 3278000, 0, '12', '2020-07-06__pa1707-img-2081.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(189, 'Kính mát PHILIPPE AUGUSTE PA-S6001-52/C2', 100, 0, 'kinh-mat-philippe-auguste-pa-s6001-52c2', 4485000, 0, '12', '2020-07-06__710522731-kinh-thoi-trang-7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(190, 'Kính mát Philippe Auguste PA-19108-61/C3', 100, 0, 'kinh-mat-philippe-auguste-pa-19108-61c3', 3278000, 0, '12', '2020-07-06__pa1707-img-2044.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(191, 'Kính mát Philippe Auguste PA-2817-62/BK', 100, 0, 'kinh-mat-philippe-auguste-pa-2817-62bk', 3278000, 0, '12', '2020-07-06__pa1707-img-2087.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(192, 'Kính mát PHILIPPE AUGUSTE PA-10127-57/C11', 100, 0, 'kinh-mat-philippe-auguste-pa-10127-57c11', 3450000, 0, '12', '2020-07-06__2114743757-kinh-thoi-trang-4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(193, 'Kính mát PHILIPPE AUGUSTE PA-19226-60/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19226-60c1', 5175000, 0, '12', '2020-07-06__463794179-kinh-thoi-trang-9.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(194, 'Kính mát PHILIPPE AUGUSTE PA-19225-63/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-19225-63c1', 3450000, 0, '12', '2020-07-06__712559293-kinh-thoi-trang-12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(195, 'Kính mát PHILIPPE AUGUSTE PA-8906-54/C1', 100, 0, 'kinh-mat-philippe-auguste-pa-8906-54c1', 3622500, 0, '12', '2020-07-06__868668886-kinh-thoi-trang-10.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(196, 'Kính mát PHILIPPE AUGUSTE PA-3108/C3', 100, 0, 'kinh-mat-philippe-auguste-pa-3108c3', 4485000, 0, '12', '2020-07-06__1598348196-kinh-thoi-trang-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(197, 'Kính mát Burberry BUR-3092QF-1145/71', 100, 0, 'kinh-mat-burberry-bur-3092qf-11457160it', 5750000, 0, '13', '2020-07-06__1671074968-580046941-knh-b31.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(198, 'KÍNH MÁT BURBERRY BUR-3092QF-1003/87', 100, 0, 'kinh-mat-burberry-bur-3092qf-10038760it', 5750000, 0, '13', '2020-07-06__1295242677-kinh-mat5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(199, 'KÍNH BURBERRY BUR-3084-1229/87', 100, 3, 'kinh-burberry-bur-3084-12298760it', 4550000, 0, '13', '2020-07-06__416352419-kinh-mat-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(200, 'Kính mát Burberry BUR-4251Q-3002/13', 100, 0, 'kinh-mat-burberry-bur-4251q-30021353it', 5250000, 0, '13', '2020-07-06__1567180200-227245783-knh-b14.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40');
INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(201, 'Kính mát Burberry BUR-4250QF-3316/13', 100, 0, 'kinh-mat-burberry-bur-4250qf-33161354it', 4950000, 0, '13', '2020-07-06__185240634-2124339861-knh-b26.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(202, 'Kính Burberry BUR-3092QF-1243/7J', 100, 0, 'kinh-burberry-bur-3092qf-12437j60it', 5750000, 0, '13', '2020-07-06__dd126-img-7787.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(203, 'KÍNH MÁT BURBERRY BUR-4279-3767/2L', 100, 0, 'kinh-mat-burberry-bur-4279-37672l40it', 5550000, 0, '13', '2020-07-06__256057444-knh-mt-thi-trang-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(204, 'KÍNH MÁT BURBERRY BUR-4235QF-3316/13', 100, 0, 'kinh-mat-burberry-bur-4235qf-33161357it', 4950000, 0, '13', '2020-07-06__138351156-knh-mt-thi-trang-4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(205, 'KÍNH MÁT BURBERRY BUR-4250QF-3001/8G', 100, 0, 'kinh-mat-burberry-bur-4250qf-30018g54it', 4950000, 0, '13', '2020-07-06__132198978-kinh-mat6.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(206, 'Kính mát Burberry BUR-3090q-1167/73', 100, 0, 'kinh-mat-burberry-bur-3090q-11677358it', 5750000, 0, '13', '2020-07-06__113373012-1235339-knh-b10.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(207, 'Kính mát Rayban RB-3025-001/3E', 100, 0, 'kinh-mat-rayban-rb-3025-0013e58it', 5450000, 0, '14', '2020-07-06__921170800-knh-rayban169.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(208, 'Kính RAYBAN RB-8313-004/N5', 100, 0, 'kinh-rayban-rb-8313-004n561cn', 7650000, 0, '14', '2020-07-06__353429334-knh-rayban317.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(209, 'Kính mát Rayban RB-3025-001/51', 100, 0, 'kinh-mat-rayban-rb-3025-0015158it', 5250000, 0, '14', '2020-07-06__2029224098-knh-mt-ng-quang.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(210, 'Kính RAYBAN RB-4278-6282/71', 100, 0, 'kinh-rayban-rb-4278-62827151it', 5250000, 0, '14', '2020-07-06__2091709855-knh-rayban308.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(211, 'Kính mát Rayban RB-3362-001', 100, 0, 'kinh-mat-rayban-rb-3362-00159cn', 4750000, 0, '14', '2020-07-06__394971111-knh-rayban168.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(212, 'Kính Rayban RB-3025-002/4O', 100, 0, 'kinh-rayban-rb-3025-0024o58it', 5250000, 0, '14', '2020-07-06__516250429-knh-mt-ng-quang205.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(213, 'Kính RAYBAN RB-8317CH-003/5J', 100, 0, 'kinh-rayban-rb-8317ch-0035j58it', 7950000, 0, '15', '2020-07-06__1680694607-knh-rayban309.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(214, 'Kính RAYBAN RB-4195F-601/71', 100, 0, 'kinh-rayban-rb-4195f-6017152it', 7950000, 0, '15', '2020-07-06__1968672020-knh-rayban314.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(215, 'Kính RAYBAN RB-3025-003/32', 100, 0, 'kinh-rayban-rb-3025-0033258it', 5250000, 0, '14', '2020-07-06__594592928-knh-rayban320.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(216, 'Kính mát Rayban RB-3025-181', 100, 0, 'kinh-mat-rayban-rb-3025-18158it', 4950000, 0, '14', '2020-07-06__1435031173-knh-rayban170.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(217, 'Kính mát Prada PR-0PR 08USF-C7O9K1', 99, 6, 'kinh-mat-prada-pr-0pr-08usf-c7o9k154it', 9250000, 0, '15', '2020-07-06__139525441-1372902178-knh-prada33.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 1, '', 10, '1', '2024-03-21 01:25:40', '2024-03-31 08:21:19'),
(218, 'Kính mát Prada PR-0PS 54TS-5AV5Z1', 100, 0, 'kinh-mat-prada-pr-0ps-54ts-5av5z161it', 8750000, 0, '15', '2020-07-06__1407880152-knh-mt-prada-12.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(219, 'Kính mát Prada PR-0PR 07PSA-1AB0A7', 100, 0, 'kinh-mat-prada-pr-0pr-07psa-1ab0a756it', 7250000, 0, '15', '2020-07-06__782302178-kinh-thoi-trang3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(220, 'Kính mát Prada PR-0PR 04US-1AB5S0', 100, 0, 'kinh-mat-prada-pr-0pr-04us-1ab5s043it', 7250000, 0, '15', '2020-07-06__1418450781-knh-mt-prada-25.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(221, 'Kính mát Prada PR-0PR 67TS-5AV0A7', 100, 0, 'kinh-mat-prada-pr-0pr-67ts-5av0a763it', 8750000, 0, '15', '2020-07-06__44510559-knh-mt-prada-37.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(222, 'Kính mát Prada PR-0PR 68TS-ZVN117', 100, 0, 'kinh-mat-prada-pr-0pr-68ts-zvn11763it', 9250000, 0, '15', '2020-07-06__729488117-knh-mt-prada-49.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(223, 'Kính mát Prada PR-0PR 54VS-2640A7', 100, 0, 'kinh-mat-prada-pr-0pr-54vs-2640a758it', 9250000, 0, '15', '2020-07-06__549743827-knh-mt-prada-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(224, 'Kính mát Prada PR-0PR 04US-VIQ4O0', 100, 0, 'kinh-mat-prada-pr-0pr-04us-viq4o043it', 9250000, 0, '15', '2020-07-06__648951626-1360503923-knh-prada21.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(225, 'Kính mát Prada PR-0PR 54VS-400409', 100, 3, 'kinh-mat-prada-pr-0pr-54vs-40040958it', 9250000, 0, '15', '2020-07-06__1963327124-1590054689-knh-prada25.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(226, 'Kính mát COACH C-8246F-5417/13', 100, 0, 'kinh-mat-coach-c-8246f-54171355cn', 4550000, 0, '15', '2020-07-06__474569337-kinh-mat5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(227, 'Kính mát COACH C-7104-9005/13', 100, 0, 'kinh-mat-coach-c-7104-90051359cn', 3750000, 0, '16', '2020-07-06__1883974168-knh-mt-chnh-hng.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(228, 'KÍNH MÁT COACH C-8179F-5120/13', 100, 0, 'kinh-mat-coach-c-8179f-51201358cn', 4250000, 0, '16', '2020-07-06__504005051-kinh-mat1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(229, 'Kính mát C-8230F-5507/73', 100, 0, 'kinh-mat-c-8230f-55077357cn', 3950000, 0, '16', '2020-07-06__1231926600-knh-mt-chnh-hng2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(230, 'Kính mát C-8261F-5446/87', 100, 0, 'kinh-mat-c-8261f-54468757cn', 3750000, 0, '16', '2020-07-06__475836663-knh-mt-chnh-hng3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(231, 'Kính mát C-7104-9331/13', 100, 0, 'kinh-mat-c-7104-93311359cn', 3750000, 0, '16', '2020-07-06__1416639319-knh-mt-chnh-hng4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(232, 'Kính mát C-7080-9322/13', 100, 0, 'kinh-mat-c-7080-93221355cn', 3750000, 0, '16', '2020-07-06__537260810-knh-mt-chnh-hng5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(233, 'KÍNH MÁT COACH C-8266H-5120/74', 100, 0, 'kinh-mat-coach-c-8266h-51207453cn', 4250000, 0, '16', '2020-07-06__728501360-kinh-mat2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(234, 'Kính mát COACH C-8166F-5120/13', 100, 0, 'kinh-mat-coach-c-8166f-51201358cn', 3950000, 0, '16', '2020-07-06__867212566-kinh-mat3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(235, 'Kính mát COACH C-8276-5120/13', 100, 0, 'kinh-mat-coach-c-8276-51201356cn', 3950000, 0, '16', '2020-07-06__519718251-knh-mt-chnh-hng7.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(236, 'Kính mát AR-4041SF-8157/87', 100, 0, 'kinh-mat-ar-4041sf-81578758cn', 2950000, 0, '17', '2020-07-06__1201220291-knh-n16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(237, 'Kính mát AR-2023S-6000/6G', 100, 0, 'kinh-mat-ar-2023s-60006g59cn', 3750000, 0, '17', '2020-07-06__761360828-knh-mt-n18.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(238, 'Kính mát AR-4041SF-8062/5A', 100, 0, 'kinh-mat-ar-4041sf-80625a58cn', 2950000, 0, '17', '2020-07-06__196208069-kinh-thoi-trang-3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(239, 'Kính mát AR-4032F-8158/6G', 100, 0, 'kinh-mat-ar-4032f-81586g56cn', 2950000, 0, '17', '2020-07-06__414458421-knh-mt-n24.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(240, 'Kính mát AR-4081S-8029/L7', 100, 0, 'kinh-mat-ar-4081s-8029l754cn', 3750000, 0, '17', '2020-07-06__22520968-knh-mt-n-25.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(241, 'Kính mát AR-4055SF-8157/87', 100, 0, 'kinh-mat-ar-4055sf-81578758cn', 3750000, 0, '17', '2020-07-06__628629378-kinh-thoi-trang-2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(242, 'Kính mát Michael Kors MK-2045F-3177/11', 100, 0, 'kinh-mat-michael-kors-mk-2045f-31771155cn', 3250000, 0, '18', '2020-07-06__1266077480-475932211-knh-mk9.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(243, 'KÍNH MÁT MICHAEL KORS MK-1021-1116/7J', 100, 0, 'kinh-mat-michael-kors-mk-1021-11167j53cn', 42500000, 0, '18', '2020-07-06__685321096-kinh-mat-nu-thoi-trang.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(244, 'Kính mát Michael Kors MK-1029-1026/R1', 100, 0, 'kinh-mat-michael-kors-mk-1029-1026r152cn', 3750000, 0, '18', '2020-07-06__601909787-1552898204-knh-mk10.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(245, 'Kính mát Michael Kors MK-2056-3270/13', 100, 0, 'kinh-mat-michael-kors-mk-2056-32701350cn', 3750000, 0, '18', '2020-07-06__831442660-940018221-knh-mk11.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(246, 'Kính mát Michael Kors MK-2103-3781/13', 100, 0, 'kinh-mat-michael-kors-mk-2103-37811356cn', 3950000, 0, '18', '2020-07-06__929984254-276019602-knh-mk17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(247, 'KÍNH MÁT MICHAEL KORS MK-1034-3336/13', 100, 0, 'kinh-mat-michael-kors-mk-1034-33361353cn', 3750000, 0, '18', '2020-07-06__667833542-kinh-mat1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(248, 'Kính mát Michael Kors MK-2068-3354/6J', 100, 0, 'kinh-mat-michael-kors-mk-2068-33546j58cn', 3750000, 0, '18', '2020-07-06__891366303-6749772-knh-mk21.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(249, 'KÍNH MÁT MICHAEL KORS MK-2068-3352/2C', 100, 0, 'kinh-mat-michael-kors-mk-2068-33522c58cn', 3750000, 0, '18', '2020-07-06__2046519779-kinh-mat2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(250, 'Kính mát Michael Kors MK-1045-1014/11', 100, 0, 'kinh-mat-michael-kors-mk-1045-10141156cn', 3750000, 0, '18', '2020-07-06__187864407-1101457636-knh-mk22.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(251, 'KÍNH MÁT MICHAEL KORS MK-1025-1201/7J', 100, 0, 'kinh-mat-michael-kors-mk-1025-12017j52cn', 3650000, 0, '18', '2020-07-06__1255730059-kinh-mat4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(252, 'KÍNH MÁT VOGUE VO-5215S-W44/11', 100, 0, 'kinh-mat-vogue-vo-5215s-w441151cn', 2750000, 0, '19', '2020-07-06__1911372573-kinh-mat3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(253, 'KÍNH MÁT VOGUE VO-4029SD-848/6G', 100, 0, 'kinh-mat-vogue-vo-4029sd-8486g62cn', 1950000, 0, '19', '2020-07-06__1896543895-kinh-mat1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(254, 'KÍNH MÁT VOGUE VO-5271SF-W656/73', 100, 0, 'kinh-mat-vogue-vo-5271sf-w6567355cn', 2750000, 0, '19', '2020-07-06__22843679-kinh-mat2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(255, 'KÍNH MÁT VOGUE VO-5230S-W44/11', 100, 0, 'kinh-mat-vogue-vo-5230s-w441154cn', 2950000, 0, '19', '2020-07-06__2122002248-kinh-mat4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(256, 'Kính mát VOGUE VO-4080S-323/87', 100, 0, 'kinh-mat-vogue-vo-4080s-3238758cn', 2950000, 0, '19', '2020-07-06__897610600-knh-mt-chnh-hng17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(257, 'KÍNH MÁT VOGUE VO-4029SD-548/87', 100, 0, 'kinh-mat-vogue-vo-4029sd-5488762cn', 1950000, 0, '19', '2020-07-06__290489977-kinh-mat5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(258, 'Kính mát VOGUE VO-5215S-W656/13', 100, 0, 'kinh-mat-vogue-vo-5215s-w6561351cn', 2750000, 0, '19', '2020-07-06__1442249208-knh-mt-n.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(259, 'Kính mát VOGUE VO-5092BF-2478/36', 100, 0, 'kinh-mat-vogue-vo-5092bf-24783655cn', 2750000, 0, '20', '2020-07-06__1925371351-knh-mt-n2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(260, 'Kính mát VOGUE VO-4080S-848/5A', 100, 0, 'kinh-mat-vogue-vo-4080s-8485a58cn', 2950000, 0, '19', '2020-07-06__263924659-knh-mt-n4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(261, 'Kính mát VOGUE VO-4081S-323/7A', 100, 0, 'kinh-mat-vogue-vo-4081s-3237a55cn', 2950000, 0, '19', '2020-07-06__120182993-knh-mt-n5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(262, 'Gọng kính V-IDOL F-IDO V8054-SBK', 100, 0, 'gong-kinh-v-idol-f-ido-v8054-sbk', 340000, 0, '20', '2020-07-06__139260146-knh-mt-chnh-hng1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(263, 'Gọng kính V-IDOL F-IDO 8093-MBK', 100, 0, 'gong-kinh-v-idol-f-ido-8093-mbk', 340000, 0, '20', '2020-07-06__1472290258-knh-mt-chnh-hng2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(264, 'Gọng kính V-IDOL F-IDO 8093-SBK', 100, 0, 'gong-kinh-v-idol-f-ido-8093-sbk', 340000, 0, '20', '2020-07-06__534102870-knh-mt-chnh-hng3.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(265, 'Gọng kính V-IDOL F-IDO 8093-SBG', 100, 0, 'gong-kinh-v-idol-f-ido-8093-sbg', 340000, 0, '20', '2020-07-06__1728317575-knh-mt-chnh-hng4.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(266, 'Gọng kính V-IDOL F-IDO V8062-STBK', 100, 0, 'gong-kinh-v-idol-f-ido-v8062-stbk', 340000, 0, '20', '2020-07-06__1733892529-16.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(267, 'Gọng kính V-IDOL F-IDO V8062-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8062-sgr', 340000, 0, '20', '2020-07-06__127161004-17.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(268, 'Gọng kính V-IDOL F-IDO V8109-SPU', 100, 0, 'gong-kinh-v-idol-f-ido-v8109-spu', 340000, 0, '20', '2020-07-06__570770966-28.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(269, 'Gọng kính V-IDOL F-IDO V8109-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8109-sgr', 340000, 0, '20', '2020-07-06__183689257-29.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(270, 'Gọng kính V-IDOL F-IDO V8054-SGR', 100, 0, 'gong-kinh-v-idol-f-ido-v8054-sgr', 340000, 0, '20', '2020-07-06__212447963-30.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(271, 'Gọng kính Diamond D DD-XS-X8701-50/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8701-50c1', 1350000, 0, '21', '2020-07-06__dd-xs-x8701-50-c1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(272, 'Gọng kính Diamond D DD-XS-X8711-52/C5', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8711-52c5', 1350000, 0, '21', '2020-07-06__dd-xs-x8711-52-c5.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(273, 'Gọng kính Diamond D DD-XS-8603-50/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-8603-50c1', 1350000, 0, '21', '2020-07-06__dd-xs-8603-50-c1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(274, 'Gọng kính Diamond D DD-XS-X8702-52/C1', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8702-52c1', 1350000, 0, '24', '2020-07-06__dd-xs-x8702-52-c1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(276, 'Gọng kính Diamond D DD-XS-X8702-52/C2', 100, 0, 'gong-kinh-diamond-d-dd-xs-x8702-52c2', 1350000, 0, '21', '2020-07-06__dd-xs-x8702-52-c2.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(277, 'GỌNG KÍNH PHILIPPE AUGUSTE PA-8562-52/C2', 100, 0, 'gong-kinh-philippe-auguste-pa-8562-52c2', 1955000, 0, '22', '2020-07-06__1939203632-kinh-mat-thoi-trang-1.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(279, 'GỌNG KÍNH PHILIPPE AUGUSTE PA-8903-53/C1', 99, 3, 'gong-kinh-philippe-auguste-pa-8903-53c1', 1955000, 120000, '22', '2020-07-06__1891040689-gong-kinh-2.jpg', 0, 0, 1, 1, 1, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(281, 'FEAFA', 100, 0, 'feafa', 13314, 0, '19', '2020-09-24__b-sale.jpg', 0, 0, 1, 1, 0, 'Đang cập nhật', 'Content', 0, '', 5, '1', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(282, 'faefae', 100, 0, 'faefae', 25425, 3, '1', '2021-01-20__apple-watch-s3-gps-42mm-vien-nhom-day-cao-su-denct-600x600.png', 0, 0, 1, 1, 0, 'Đang cập nhật', '<p>Content</p>', 0, 'trg,srgrsg', 5, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `al_name` varchar(191) DEFAULT NULL,
  `al_slug` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `al_name`, `al_slug`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'address.png', '2020-09-24__addresspng.png', 281, '2020-09-23 19:45:49', NULL),
(2, 'AriesGold.jpg', '2020-09-24__ariesgoldjpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(3, 'b_dayda1.jpg', '2020-09-24__b-dayda1jpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(4, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 19:45:49', NULL),
(5, 'b_dayda1.jpg', '2020-09-24__b-dayda1jpg.jpg', 281, '2020-09-23 23:22:10', NULL),
(7, 'b_dhnu.jpg', '2020-09-24__b-dhnujpg.jpg', 281, '2020-09-23 23:22:10', NULL),
(8, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 23:35:56', NULL),
(9, 'b_dhnam.jpg', '2020-09-24__b-dhnamjpg.jpg', 281, '2020-09-23 23:36:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_keywords`
--

CREATE TABLE `product_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` bigint(20) UNSIGNED NOT NULL,
  `pk_keyword_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(20) UNSIGNED NOT NULL,
  `r_product_id` bigint(20) UNSIGNED NOT NULL,
  `r_number` int(11) NOT NULL DEFAULT 0,
  `r_status` int(11) NOT NULL DEFAULT 0,
  `r_content` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 13, 11, 3, 0, 'Greate', '2022-04-13 14:07:43', '2022-04-13 14:07:43'),
(2, 13, 7, 2, 0, 'Tồi tệ', '2022-04-13 23:18:35', '2022-04-13 23:18:35'),
(3, 13, 11, 3, 0, 'Nice', '2022-05-07 00:07:46', '2022-05-07 00:07:46'),
(4, 13, 11, 1, 0, 'Bad', '2022-05-07 00:08:15', '2022-05-07 00:08:15'),
(5, 13, 7, 4, 0, 'Great', '2022-05-07 02:27:03', '2022-05-07 02:27:03'),
(6, 13, 27, 4, 0, '123213', '2024-03-19 07:27:41', '2024-03-19 07:27:41'),
(7, 13, 217, 5, 0, 'dsasada', '2024-03-31 08:21:19', '2024-03-31 08:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(20) UNSIGNED NOT NULL,
  `tst_total_money` varchar(191) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` int(11) NOT NULL DEFAULT 1,
  `tst_type` int(11) NOT NULL DEFAULT 1,
  `tst_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(1, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJLV6YA90278034GB619790T', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(2, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 2, 'PAYID-MJLWNMA3JB45680AY3245345', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(3, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 2, 'PAYID-MJLWOVA78C08370XX847474A', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(4, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(5, 13, '222000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(6, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJXABDA66K50385HW291913V', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(7, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 2, 'PAYID-MJXADJA2X596868SB829021T', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(8, 13, '16730000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(9, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 2, 'PAYID-MJ23IQQ0Y154070BP3131720', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(10, 13, '19900000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(11, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(12, 13, '24150000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(13, 13, '120000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJ25VYY76R02920P1726784N', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(14, 13, '364500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(15, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 2, 'PAYID-MJ7WEGI2XS49438JY5896227', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(16, 13, '4500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 2, 'PAYID-MJ7WGZQ0PB89436864450153', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(17, 13, '4500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(18, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(19, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(20, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(21, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(22, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(23, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(24, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(25, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(26, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(27, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(28, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(29, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(30, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(31, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(32, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(33, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(34, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(35, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(36, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(37, 25, '30640000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-23 02:08:39', '2024-03-23 02:09:26'),
(38, 25, '4500000', 'tdthai', 'thai180065@huce.edu.vn', NULL, 'Hà Nội', 'Không có', 5, 2, 'PAYID-MYERN2A3SF62191XK8267102', '2024-03-31 07:55:19', '2024-03-31 07:55:19'),
(39, 25, '4500000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-31 07:55:27', '2024-03-31 07:55:27'),
(40, 13, '31259000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MYERZGQ2F065242F3451534N', '2024-03-31 08:19:37', '2024-03-31 08:19:37'),
(41, 13, '31259000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:19:44', '2024-03-31 08:20:41'),
(42, 25, '9250000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-31 08:23:43', '2024-03-31 08:23:43'),
(43, 25, '153450000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:24:50', '2024-03-31 08:25:13'),
(44, 25, '-2344045000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:27:26', '2024-03-31 08:27:42'),
(45, 13, '950000000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-04-02 14:10:43', '2024-04-02 14:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthday` varchar(191) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `provider`, `provider_id`, `email`, `phone`, `address`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `birthday`, `gender`) VALUES
(13, 'Peter', NULL, NULL, 'user@gmail.com', '0948561668', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(14, 'Nguyễn Văn A', 'google', '100195086957714365762', 'vana@gmail.com', NULL, NULL, NULL, NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(17, 'John Doe', NULL, NULL, 'johndoe@gmail.com', '0948561669', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(18, 'Peter', NULL, NULL, 'peter@gmail.com', '12345678', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(21, 'Nguyễn Văn B', NULL, NULL, 'vanb@gmail.com', '0879428091', '4', '$2y$10$hfGjgzp5vvQYBcrmgZg96.BSa46SD5aLklxuv/oqGdvWexEGSMXoW', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', '2022-06-01T02:22:00.000Z', 1),
(22, 'Khách hàng 1', NULL, NULL, 'khachhang@gmail.com', '0879428091', '1', '$2y$10$OfMxlFmdDDn1LwFEH/5pJuEzx.Pu.sHf8m.jRbZiPMsS3.y9/AX0i', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Wed May 25 2022 23:35:00 GMT+0700 (Indochina Time)', 1),
(23, 'Customer', NULL, NULL, '1@gmail.com', '0879428091', '2', '$2y$10$OxB2omT4krJ.hpAG4nXGyeioi3msquDSEIxa62CLoZMv/WeHzeKpm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Wed May 04 2022 23:37:00 GMT+0700 (Indochina Time)', 1),
(24, 'Customer1', NULL, NULL, 'customer@gmail.com', '0879428091', '2', '$2y$10$SjK75D5oO1bqKoVhmsT/DOMqGB9je.pO22fz5BmT0YjI0aD7mJ19W', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Thu May 19 2022 23:46:00 GMT+0700 (Indochina Time)', 1),
(25, 'tdthai', NULL, NULL, 'thai180065@huce.edu.vn', '0915621797', NULL, '$2y$10$IATLNrZHwtzCfCk5FDrQoeDmzgCpb/84wOaW5HTmUD2H5perdXAca', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(20) UNSIGNED NOT NULL,
  `uf_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(126, 7, 13, NULL, NULL),
(127, 14, 13, NULL, NULL),
(128, 11, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword`
--
ALTER TABLE `keyword`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_od_transaction_id_foreign` (`od_transaction_id`),
  ADD KEY `orders_od_product_id_foreign` (`od_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_keywords_pk_product_id_foreign` (`pk_product_id`),
  ADD KEY `product_keywords_pk_keyword_id_foreign` (`pk_keyword_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_r_user_id_foreign` (`r_user_id`),
  ADD KEY `ratings_r_product_id_foreign` (`r_product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_foreign` (`tst_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favourite_uf_product_id_foreign` (`uf_product_id`),
  ADD KEY `user_favourite_uf_user_id_foreign` (`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `keyword`
--
ALTER TABLE `keyword`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_keywords`
--
ALTER TABLE `product_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_od_product_id_foreign` FOREIGN KEY (`od_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_od_transaction_id_foreign` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD CONSTRAINT `product_keywords_pk_keyword_id_foreign` FOREIGN KEY (`pk_keyword_id`) REFERENCES `keyword` (`id`),
  ADD CONSTRAINT `product_keywords_pk_product_id_foreign` FOREIGN KEY (`pk_product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_r_product_id_foreign` FOREIGN KEY (`r_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `ratings_r_user_id_foreign` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tst_user_id_foreign` FOREIGN KEY (`tst_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_uf_product_id_foreign` FOREIGN KEY (`uf_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `user_favourite_uf_user_id_foreign` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
