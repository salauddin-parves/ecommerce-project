-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 01:07 PM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add products', 8, 'add_products'),
(30, 'Can change products', 8, 'change_products'),
(31, 'Can delete products', 8, 'delete_products'),
(32, 'Can view products', 8, 'view_products'),
(33, 'Can add product', 8, 'add_product'),
(34, 'Can change product', 8, 'change_product'),
(35, 'Can delete product', 8, 'delete_product'),
(36, 'Can view product', 8, 'view_product'),
(37, 'Can add cart', 9, 'add_cart'),
(38, 'Can change cart', 9, 'change_cart'),
(39, 'Can delete cart', 9, 'delete_cart'),
(40, 'Can view cart', 9, 'view_cart'),
(41, 'Can add order', 10, 'add_order'),
(42, 'Can change order', 10, 'change_order'),
(43, 'Can delete order', 10, 'delete_order'),
(44, 'Can view order', 10, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$5Bk3YJqwhFgviNFuk9pxHb$xhEENDNBYkrq1nKHL6ShV5hQC5n9xkb4xOWuGKBHTMQ=', '2024-11-26 15:57:57.438154', 1, 'parves', '', '', 'srparves95@gmail.com', 1, 1, '2024-09-06 17:38:50.477888');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-06 18:23:43.201459', '1', 'category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-09-07 12:40:39.056543', '1', 'Adidas Premium Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-09-07 13:04:19.465579', '2', 'Adidas Premium Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-09-08 13:20:38.076240', '3', 'Adidas', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-09-08 13:29:59.148878', '2', 'Adidas Premium Sneakers', 2, '[{\"changed\": {\"fields\": [\"Products image\"]}}]', 8, 1),
(6, '2024-09-08 13:30:16.091077', '1', 'Adidas Premium Sneakers', 2, '[{\"changed\": {\"fields\": [\"Products image\"]}}]', 8, 1),
(7, '2024-09-08 13:31:07.808422', '4', 'Adidas Premium Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-09-08 13:32:15.957026', '5', 'Adidas Premium Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-09-08 13:32:29.678270', '3', 'Adidas', 3, '', 8, 1),
(10, '2024-09-08 13:36:39.100282', '6', 'Adidas Premium Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-10-31 16:40:29.842714', '6', 'Adidas Premium Sneakers 1', 2, '[{\"changed\": {\"fields\": [\"Product title\"]}}]', 8, 1),
(12, '2024-10-31 16:40:35.317727', '5', 'Adidas Premium Sneakers 2', 2, '[{\"changed\": {\"fields\": [\"Product title\"]}}]', 8, 1),
(13, '2024-10-31 16:40:42.729460', '4', 'Adidas Premium Sneakers 3', 2, '[{\"changed\": {\"fields\": [\"Product title\"]}}]', 8, 1),
(14, '2024-10-31 16:40:48.474977', '2', 'Adidas Premium Sneakers 4', 2, '[{\"changed\": {\"fields\": [\"Product title\"]}}]', 8, 1),
(15, '2024-10-31 16:40:54.285692', '1', 'Adidas Premium Sneakers 5', 2, '[{\"changed\": {\"fields\": [\"Product title\"]}}]', 8, 1),
(16, '2024-11-01 06:42:38.825804', '1', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(17, '2024-11-01 06:52:43.467418', '1', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(18, '2024-11-01 06:53:24.805236', '1', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(19, '2024-11-01 07:24:04.526466', '1', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(20, '2024-11-01 07:24:23.790832', '1', 'Adidas', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(21, '2024-11-13 15:19:04.183370', '6', 'Nike Air Max 270 React', 2, '[{\"changed\": {\"fields\": [\"Product title\", \"Products image\", \"Description\"]}}]', 8, 1),
(22, '2024-11-13 15:19:33.002786', '5', 'Adidas Ultraboost 23', 2, '[{\"changed\": {\"fields\": [\"Product title\", \"Products image\", \"Description\"]}}]', 8, 1),
(23, '2024-11-13 15:19:56.577275', '4', 'Puma RS-X3 Puzzle', 2, '[{\"changed\": {\"fields\": [\"Product title\", \"Products image\", \"Description\"]}}]', 8, 1),
(24, '2024-11-13 15:20:36.094702', '2', 'New Balance 574 Core', 2, '[{\"changed\": {\"fields\": [\"Product title\", \"Products image\", \"Description\"]}}]', 8, 1),
(25, '2024-11-13 15:21:12.253685', '1', 'Converse Chuck Taylor All Star', 2, '[{\"changed\": {\"fields\": [\"Product title\", \"Products image\", \"Description\"]}}]', 8, 1),
(26, '2024-11-13 15:21:36.413080', '6', 'Nike Air Max 270 React', 2, '[{\"changed\": {\"fields\": [\"Sale price\"]}}]', 8, 1),
(27, '2024-11-13 15:21:47.701632', '5', 'Adidas Ultraboost 23', 2, '[{\"changed\": {\"fields\": [\"Sale price\"]}}]', 8, 1),
(28, '2024-11-13 15:21:58.343156', '4', 'Puma RS-X3 Puzzle', 2, '[{\"changed\": {\"fields\": [\"Sale price\"]}}]', 8, 1),
(29, '2024-11-13 15:22:11.195251', '2', 'New Balance 574 Core', 2, '[{\"changed\": {\"fields\": [\"Regular price\", \"Sale price\"]}}]', 8, 1),
(30, '2024-11-13 15:22:25.915225', '1', 'Converse Chuck Taylor All Star', 2, '[{\"changed\": {\"fields\": [\"Regular price\", \"Sale price\"]}}]', 8, 1),
(31, '2024-11-13 15:24:03.743122', '2', 'New Balance 574 Core', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(7, 'store', 'category'),
(10, 'store', 'order'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-02 04:06:21.299036'),
(2, 'auth', '0001_initial', '2024-09-02 04:06:21.720163'),
(3, 'admin', '0001_initial', '2024-09-02 04:06:21.813882'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-02 04:06:21.841327'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-02 04:06:21.859049'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-02 04:06:21.953660'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-02 04:06:22.016683'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-02 04:06:22.085343'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-02 04:06:22.105310'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-02 04:06:22.155338'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-02 04:06:22.155338'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-02 04:06:22.170958'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-02 04:06:22.215910'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-02 04:06:22.235950'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-02 04:06:22.311429'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-02 04:06:22.332398'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-02 04:06:22.363066'),
(18, 'sessions', '0001_initial', '2024-09-02 04:06:22.394308'),
(19, 'store', '0001_initial', '2024-09-06 17:35:13.410730'),
(20, 'store', '0002_rename_meta_kewords_products_product_title_and_more', '2024-09-06 18:25:22.388144'),
(21, 'store', '0003_rename_slug_category_category_name', '2024-09-06 18:26:29.665656'),
(22, 'store', '0004_rename_products_product', '2024-09-06 18:35:08.637506'),
(23, 'store', '0005_alter_product_product_title', '2024-10-31 16:45:41.209766'),
(24, 'store', '0006_cart', '2024-11-01 10:49:08.233739'),
(25, 'store', '0007_order', '2024-11-02 05:49:33.845244');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3441oimf87r5tnv3t078v4fmj860q6tz', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1smv5t:SupfuObSJEdz1cbT_Ur91ONH2dEi8BT9wSEYolZLPPo', '2024-09-21 13:03:13.832637'),
('600hays584ttnxsypnse8jmi575pcp0l', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1tBF43:8dxoi1-m5thcYTFlFDYineYeEgRRXgSsGZdm2fVNsss', '2024-11-27 15:13:51.243474'),
('6c1pi5623vz5u6pv7wsm8gxzkllu78qq', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1tBU10:3AuyaGSKdZm7NzYFWwWFYpMShyy7-m1lySjj7PrNj3c', '2024-11-28 07:11:42.696025'),
('7cijgmt8vekdkhkw5zzxqgskudgrlzrf', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1t6YDX:YRrkADmSFQE5W2bk3GbT3VPr_DeuJUj7IPEhM4Lb2E8', '2024-11-14 16:40:15.862731'),
('90ckfelkchkwckjcl3phinasyohej8g5', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1t8wHl:HhpT3ie92LAnjdCWKV9rcQJfBS5S48nG2V_oOIVHDqY', '2024-11-21 06:46:29.372065'),
('97i10nh33rkubtq4u5jqt78vcdqcgwyu', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1smdS9:kWNr_IRDLYm1kTSP7MR-W6xT80eVabYUn-oYAC5Ofvg', '2024-09-20 18:13:01.926138'),
('b15ckd6o2izat9bbaee3r1bjgzlzf407', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1sqyLM:hSkrXzkWMm7deRGcmc34eJhczw-6xwJtDUmTjWhsaks', '2024-10-02 17:19:56.192247'),
('bac09mwh6aszur5ce3ogfutjphtm2oqj', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1tFasK:ogfuLkS0HoUEtMP3dUEyinzcLjiy_Gko9ummye9bDTM', '2024-12-09 15:19:44.237048'),
('dud05rk3ix82t06c52oyxtt59j6m45da', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1smugb:tT718pGYGU5G_li3BYK_bhI0zueJg2oklp8wnV9oSkU', '2024-09-21 12:37:05.576252'),
('kx2qmo0olwtve8xe6aj3bxsufzd88u4z', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1t8vtf:9FzW8lY8JWQ1A_0AoHogj58bIuKKHcHLUocgWnxyAtY', '2024-11-21 06:21:35.906029'),
('myaaecm3cn9aswebefb0zokl9ggkvpny', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1t6lG9:r8B2V2yxcA59ecivQhSYJjBy0cWDg0PYpicDwP5tCEk', '2024-11-15 06:35:49.395515'),
('q9mu0o5saiwf0vw9aswl670ju6ak87fp', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1snHoq:GkVR6bzOlqrqC-h2B9LrvAl2FtUfbwdfVPTm9OTfehY', '2024-09-22 13:19:08.188062'),
('ryosyz9lzzbmzhgtp00igjnuoz1lukb3', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1srAQP:FjfI8RitMXjR6NhQQo19KFz2vmhWsvpRZDcMSnUPiLI', '2024-10-03 06:13:57.379087'),
('sq2qripptjz7kzx2c11o06oix5ozj3rq', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1t6knr:V69-XNQSqZ84OXHuWzW1THbnsiNzDSZHvaZrG-wOHTk', '2024-11-15 06:06:35.844945'),
('ukgbfqjbn6i5y60jt7b06pvoa37wve3c', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1smcw7:3LyTSXlipvpMp7ukP7moT0cR-HKo_R77ps0vu1Hi9TY', '2024-09-20 17:39:55.863678'),
('wg2zzhp2gux02hixkh0u0lxbni7s2ijo', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1soQ72:wBPXC3VD61bfo7Q8v5l-7oG9fmvdGzi85caAuMOTh24', '2024-09-25 16:22:36.313267'),
('ywxsuu6zlqzm2upzq1ngvgvapmwuc7h4', '.eJxVjDkOwjAURO_iGlm2HC-hpOcM1t_AAWRLcVIh7k4ipYBuNO_NvFWGdSl57TLnidVZWXX67RDoKXUH_IB6b5paXeYJ9a7og3Z9bSyvy-H-HRToZVuPkG44pAiQQkTyRLLlEKIXtIaMdZ7Z4EjBuWRSkIE5IAGDJCvI6vMFAy85Hg:1tFxwr:zfpTrGiPq3oIOGwIXSghGceT-zA-5TiPUM8g38hNlEw', '2024-12-10 15:57:57.454208');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `category_name`, `image`, `description`, `status`, `trending`, `created_at`) VALUES
(1, 'Adidas', '', '', 0, 1, '2024-09-06 18:23:43.192830');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `products_image` varchar(100) NOT NULL,
  `small_description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `regular_price` double NOT NULL,
  `sale_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `product_title` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `products_image`, `small_description`, `quantity`, `description`, `regular_price`, `sale_price`, `status`, `tag`, `product_title`, `created_at`, `category_id`) VALUES
(1, 'uploads/13/11/2024_2121126502ea35eac4cbdc199499e394609c5f.jpg_720x720q80.jpg', 'Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone\'s closet.', 1000, 'A true icon of casual footwear, the Converse Chuck Taylor All Star High Top is as timeless as it gets. Featuring a durable canvas upper and signature rubber toe cap, these sneakers provide all-day comfort and style. Perfect for pairing with anything from jeans to dresses, Chuck Taylors are always in season.', 60, 40, 1, 'shoes', 'Converse Chuck Taylor All Star', '2024-09-07 12:40:39.046545', 1),
(2, 'uploads/13/11/2024_2120361_83038a45-6828-4971-b02e-4a2630d443a7_1024x1024.webp', 'SAMBA ORIGINALS Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone\'s closet - on and', 1000, 'Classic, comfortable, and durable— the New Balance 574 Core is a must-have for sneaker enthusiasts. Featuring a premium suede and mesh upper, these sneakers are built with an ENCAP midsole for superior cushioning and support. Whether for a stroll in the park or a day out, the 574 offers timeless style and comfort.', 90, 50, 1, 'puma', 'New Balance 574 Core', '2024-09-07 13:04:19.459575', 1),
(4, 'uploads/13/11/2024_2119561.jpg', 'SAMBA ORIGINALS Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone\'s close.', 1000, 'Bold, vibrant, and ready to turn heads, the Puma RS-X3 Puzzle sneaker brings a retro-inspired look with futuristic flair. The lightweight design features a mix of suede, leather, and mesh materials for breathability and comfort, while the padded collar and cushioned midsole provide all-day wearability.', 100, 60, 1, 'adidas', 'Puma RS-X3 Puzzle', '2024-09-08 13:31:07.792052', 1),
(5, 'uploads/13/11/2024_2119324e61980bec0ea28dfddeb3034454f3af.jpg', 'SAMBA ORIGINALS Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone\'s closet', 1000, 'Step into ultimate energy return with the Adidas Ultraboost 23. Featuring the brand’s innovative Boost technology, these shoes deliver maximum cushioning with every stride. The Primeknit upper offers a snug, supportive fit while the stretchy sole ensures flexibility and comfort for all your running adventures.', 100, 90, 1, 'adidas', 'Adidas Ultraboost 23', '2024-09-08 13:32:15.957026', 1),
(6, 'uploads/13/11/2024_211904a12069c_a_107x1.webp', 'SAMBA ORIGINALS Born on the pitch, the Samba is a timeless icon of street style. This silhouette stays true to its legacy with a tasteful, low-profile, soft leather upper, suede overlays and gum sole, making it a staple in everyone\'s closet - on and', 1000, 'Experience unbeatable comfort with the Nike Air Max 270 React. Designed for active lifestyles, this sneaker features a soft, responsive foam midsole and the signature Air Max cushioning for all-day comfort. The sleek design and breathable mesh upper make it a versatile choice for both casual wear and performance.', 100, 70, 1, 'adidas', 'Nike Air Max 270 React', '2024-09-08 13:36:39.100282', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  ADD KEY `store_cart_user_id_99e99107_fk_store_category_id` (`user_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_product_product_title_8480bf5e_uniq` (`product_title`),
  ADD KEY `store_products_category_id_48867233_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_store_category_id` FOREIGN KEY (`user_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_products_category_id_48867233_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
