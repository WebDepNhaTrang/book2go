-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 23, 2018 lúc 01:27 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_book2go`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ZLKcLRxzQH9E8XMMWd6NITIH1J8Qdljb', 1, '2017-11-15 06:57:09', '2017-11-15 06:57:09', '2017-11-15 06:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `audit_history`
--

CREATE TABLE `audit_history` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `audit_history`
--

INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'info', '2018-04-12 09:02:00', '2018-04-12 09:02:00'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-12 09:02:18', '2018-04-12 09:02:18'),
(1, 'gallery', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Banner Homepage\",\"description\":\"Banner Homepage\",\"order\":\"0\",\"gallery\":null,\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/slide1.png\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Banner Homepage', 'info', '2018-04-12 09:49:47', '2018-04-12 09:49:47'),
(1, 'page', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>About Page<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'info', '2018-04-12 10:09:00', '2018-04-12 10:09:00'),
(1, 'menu', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"main-menu\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'main-menu', 'info', '2018-04-12 10:28:55', '2018-04-12 10:28:55'),
(1, 'menu', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[]\",\"target\":\"_self\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 10:29:13', '2018-04-12 10:29:13'),
(1, 'menu', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Gi\\u1edbi Thi\\u1ec7u\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 10:29:24', '2018-04-12 10:29:24'),
(1, 'menu', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Gi\\u1edbi Thi\\u1ec7u\",\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 10:29:36', '2018-04-12 10:29:36'),
(1, 'menu', '{\"_token\":\"OhFkGFEcnWzhdfpwh0kkaSQTnxsDrHB3yiJG23ZN\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"2\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Gi\\u1edbi Thi\\u1ec7u\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 10:34:56', '2018-04-12 10:34:56'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-12 16:20:45', '2018-04-12 16:20:45'),
(1, 'user', '{\"_token\":\"CMHnSbf0ybVb9qTTGeKDmDvdvoamoJZJCtUpZkHX\",\"password\":\"book2@go\",\"password_confirmation\":\"book2@go\",\"submit\":\"submit\"}', 'changed password', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'danger', '2018-04-12 16:21:06', '2018-04-12 16:21:06'),
(1, 'user', '{\"_token\":\"CMHnSbf0ybVb9qTTGeKDmDvdvoamoJZJCtUpZkHX\",\"password\":\"book2@go\",\"password_confirmation\":\"book2@go\",\"submit\":\"submit\"}', 'updated profile', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'info', '2018-04-12 16:21:06', '2018-04-12 16:21:06'),
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'info', '2018-04-12 16:21:10', '2018-04-12 16:21:10'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-12 16:21:19', '2018-04-12 16:21:19'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Kh\\u00e1ch S\\u1ea1n\",\"slug\":\"khach-san\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>Kh\\u00e1ch S\\u1ea1n<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"hotel-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khách Sạn', 'info', '2018-04-12 16:22:16', '2018-04-12 16:22:16'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m\",\"slug\":\"khach-san\",\"slug_id\":\"2\",\"description\":null,\"content\":\"<p>\\u0110\\u1ecba \\u0110i\\u1ec3m<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"hotel-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Địa Điểm', 'primary', '2018-04-12 16:22:55', '2018-04-12 16:22:55'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m\",\"slug\":\"khach-san\",\"slug_id\":\"2\",\"description\":null,\"content\":\"<p>\\u0110\\u1ecba \\u0110i\\u1ec3m<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"hotel-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Địa Điểm', 'primary', '2018-04-12 16:23:06', '2018-04-12 16:23:06'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m\",\"slug\":\"dia-diem\",\"slug_id\":\"2\",\"description\":null,\"content\":\"<p>\\u0110\\u1ecba \\u0110i\\u1ec3m<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"hotel-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Địa Điểm', 'primary', '2018-04-12 16:23:17', '2018-04-12 16:23:17'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":\"2\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:23:33', '2018-04-12 16:23:33'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Tour\",\"slug\":\"tour\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>Tour<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"tour-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tour', 'info', '2018-04-12 16:29:23', '2018-04-12 16:29:23'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Tour\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:29:58', '2018-04-12 16:29:58'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"FAQ\",\"slug\":\"faq\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>FAQ<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"faq-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'FAQ', 'info', '2018-04-12 16:34:10', '2018-04-12 16:34:10'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"FAQ\\\",\\\"relatedId\\\":\\\"4\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"FAQ\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:34:24', '2018-04-12 16:34:24'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Li\\u00ean H\\u1ec7\",\"slug\":\"lien-he\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>Li\\u00ean H\\u1ec7<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"contact-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Liên Hệ', 'info', '2018-04-12 16:39:10', '2018-04-12 16:39:10'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"FAQ\\\",\\\"relatedId\\\":\\\"4\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Li\\u00ean H\\u1ec7\\\",\\\"relatedId\\\":\\\"5\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Li\\u00ean H\\u1ec7\",\"custom-url\":null,\"icon-font\":null,\"class\":null,\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:39:23', '2018-04-12 16:39:23'),
(1, 'page', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Khuy\\u1ebfn M\\u00e3i\",\"slug\":\"khuyen-mai\",\"slug_id\":\"0\",\"description\":null,\"content\":\"<p>Khuy\\u1ebfn M\\u00e3i<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"getit-template\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'Khuyến Mãi', 'info', '2018-04-12 16:43:33', '2018-04-12 16:43:33'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"FAQ\\\",\\\"relatedId\\\":\\\"4\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"Li\\u00ean H\\u1ec7\\\",\\\"relatedId\\\":\\\"5\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Khuy\\u1ebfn M\\u00e3i\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Khuy\\u1ebfn M\\u00e3i\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"page\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"class\\\":\\\"khuyen-mai\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Khuy\\u1ebfn M\\u00e3i\",\"custom-url\":null,\"icon-font\":null,\"class\":\"khuyen-mai\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:44:30', '2018-04-12 16:44:30'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"FAQ\\\",\\\"relatedId\\\":\\\"4\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"Li\\u00ean H\\u1ec7\\\",\\\"relatedId\\\":\\\"5\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"8\\\",\\\"title\\\":\\\"Khuy\\u1ebfn M\\u00e3i\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"iconFont\\\":\\\"fab fa-hotjar\\\",\\\"id\\\":\\\"9\\\",\\\"title\\\":\\\"Khuy\\u1ebfn M\\u00e3i\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"khuyen-mai\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Khuy\\u1ebfn M\\u00e3i\",\"custom-url\":null,\"icon-font\":\"fab fa-hotjar\",\"class\":\"khuyen-mai\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:44:50', '2018-04-12 16:44:50'),
(1, 'menu', '{\"_token\":\"Iakj5UNdJXI1GaeQZ05NZAXuxB7l8G73YEqiAAa2\",\"name\":\"Menu Ch\\u00ednh\",\"deleted_nodes\":\"9\",\"menu_nodes\":\"[{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"Trang Ch\\u1ee7\\\",\\\"relatedId\\\":\\\"0\\\",\\\"type\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Gi\\u1edbi Thi\\u1ec7u\\\",\\\"relatedId\\\":\\\"1\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"4\\\",\\\"title\\\":\\\"\\u0110\\u1ecba \\u0110i\\u1ec3m\\\",\\\"relatedId\\\":\\\"2\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Tour\\\",\\\"relatedId\\\":\\\"3\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"6\\\",\\\"title\\\":\\\"FAQ\\\",\\\"relatedId\\\":\\\"4\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"7\\\",\\\"title\\\":\\\"Li\\u00ean H\\u1ec7\\\",\\\"relatedId\\\":\\\"5\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"iconFont\\\":\\\"fab fa-hotjar\\\",\\\"id\\\":\\\"8\\\",\\\"title\\\":\\\"Khuy\\u1ebfn M\\u00e3i\\\",\\\"relatedId\\\":\\\"6\\\",\\\"type\\\":\\\"page\\\",\\\"customUrl\\\":\\\"\\\",\\\"class\\\":\\\"khuyen-mai\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":6,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Khuy\\u1ebfn M\\u00e3i\",\"custom-url\":null,\"icon-font\":\"fab fa-hotjar\",\"class\":\"khuyen-mai\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Menu Chính', 'primary', '2018-04-12 16:52:00', '2018-04-12 16:52:00'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-14 05:28:15', '2018-04-14 05:28:15'),
(1, 'hotel', '{\"_token\":\"1acZWosaPfJSt0E89MQxYAho5ugHZjPK5uohlGHI\",\"name\":\"Starcity Nha Trang Hotel\",\"slug\":\"starcity-nha-trang-hotel\",\"slug_id\":\"0\",\"description\":\"Starcity Nha Trang Hotel\",\"content\":\"<p>Starcity Nha Trang Hotel agoda<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Starcity Nha Trang Hotel', 'info', '2018-04-14 07:32:23', '2018-04-14 07:32:23'),
(1, 'hotel', '{\"_token\":\"1acZWosaPfJSt0E89MQxYAho5ugHZjPK5uohlGHI\",\"name\":\"Starcity Nha Trang Hotel\",\"slug\":\"starcity-nha-trang-hotel\",\"slug_id\":\"7\",\"description\":\"Starcity Nha Trang Hotel\",\"content\":\"<p>Starcity Nha Trang Hotel<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Starcity Nha Trang Hotel', 'primary', '2018-04-14 07:32:33', '2018-04-14 07:32:33'),
(1, 'page', '{\"_token\":\"1acZWosaPfJSt0E89MQxYAho5ugHZjPK5uohlGHI\",\"name\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m\",\"slug\":\"dia-diem\",\"slug_id\":\"2\",\"description\":null,\"content\":\"<p>\\u0110\\u1ecba \\u0110i\\u1ec3m<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"hotel-list-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Địa Điểm', 'primary', '2018-04-14 07:37:52', '2018-04-14 07:37:52'),
(1, 'hotel', '{\"_token\":\"1acZWosaPfJSt0E89MQxYAho5ugHZjPK5uohlGHI\",\"name\":\"Starcity Nha Trang Hotel\",\"slug\":\"starcity-nha-trang-hotel\",\"slug_id\":\"7\",\"description\":\"Starcity Nha Trang Hotel\",\"content\":\"<p>Starcity Nha Trang Hotel<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Starcity Nha Trang Hotel', 'primary', '2018-04-14 08:12:53', '2018-04-14 08:12:53'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-15 15:17:22', '2018-04-15 15:17:22'),
(1, 'page', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour\",\"slug\":\"tour\",\"slug_id\":\"3\",\"description\":null,\"content\":\"<p>Tour<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"tour-list-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tour', 'primary', '2018-04-15 15:18:35', '2018-04-15 15:18:35'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":\"tour-binh-ba\",\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'info', '2018-04-15 15:22:13', '2018-04-15 15:22:13'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":null,\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:23:40', '2018-04-15 15:23:40'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":null,\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:24:07', '2018-04-15 15:24:07'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":null,\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:24:31', '2018-04-15 15:24:31'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba A\",\"slug\":null,\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba A', 'primary', '2018-04-15 15:24:37', '2018-04-15 15:24:37'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":null,\"slug_id\":\"0\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:24:49', '2018-04-15 15:24:49'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"dfgdfgdfg\",\"slug\":null,\"slug_id\":\"0\",\"description\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":null,\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'dfgdfgdfg', 'info', '2018-04-15 15:33:54', '2018-04-15 15:33:54'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":\"tour-binh-ba\",\"slug_id\":\"8\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:43:18', '2018-04-15 15:43:18'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":\"tour-binh-ba\",\"slug_id\":\"8\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-15 15:52:05', '2018-04-15 15:52:05'),
(1, 'tour', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'dfgdfgdfg', 'danger', '2018-04-15 15:54:36', '2018-04-15 15:54:36'),
(1, 'tour', '{\"_token\":\"mMcw52t68FS3wVz6LddlWsjnJEyYBSoszCBG0w14\",\"name\":\"drgdgdfgdfg\",\"slug\":null,\"slug_id\":\"0\",\"description\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":null,\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'drgdgdfgdfg', 'info', '2018-04-15 15:54:42', '2018-04-15 15:54:42'),
(1, 'tour', '{\"ids\":[\"3\"]}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'drgdgdfgdfg', 'danger', '2018-04-15 16:02:38', '2018-04-15 16:02:38'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-16 04:23:14', '2018-04-16 04:23:14'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 1\",\"alias\":\"guarantee-block-1\",\"description\":\"FLIGHT GUARANTEE\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.<\\/span><\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'GUARANTEE BLOCK 1', 'info', '2018-04-16 05:15:46', '2018-04-16 05:15:46'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 2\",\"alias\":\"guarantee-block-2\",\"description\":\"GUARANTEE BLOCK 2\",\"content\":\"<p>fadfsdf<\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'GUARANTEE BLOCK 2', 'info', '2018-04-16 07:10:13', '2018-04-16 07:10:13'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 2\",\"alias\":\"guarantee-block-2\",\"description\":\"GUARANTEE BLOCK 2\",\"content\":\"<p>fadfsdf<\\/p>\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'GUARANTEE BLOCK 2', 'primary', '2018-04-16 07:10:17', '2018-04-16 07:10:17'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 3\",\"alias\":\"guarantee-block-3\",\"description\":\"GUARANTEE BLOCK 1\",\"content\":\"<p><a class=\\\"text-left\\\" style=\\\"box-sizing: border-box; background-color: #f9f9f9; color: #337ab7; text-decoration-line: none; cursor: pointer; transition: all 0.15s ease-in-out; display: block; font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif; border-radius: 0px !important;\\\" title=\\\"GUARANTEE BLOCK 1\\\" href=\\\"http:\\/\\/localhost:8000\\/admin\\/block\\/edit\\/1\\\">GUARANTEE BLOCK 1<\\/a><\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'GUARANTEE BLOCK 3', 'info', '2018-04-16 07:10:29', '2018-04-16 07:10:29'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 3\",\"alias\":\"guarantee-block-3\",\"description\":\"GUARANTEE BLOCK 3\",\"content\":\"<p><a class=\\\"text-left\\\" style=\\\"box-sizing: border-box; background-color: #f9f9f9; color: #337ab7; text-decoration-line: none; cursor: pointer; transition: all 0.15s ease-in-out; display: block; font-family: Roboto, \'Helvetica Neue\', Helvetica, Arial, sans-serif; border-radius: 0px !important;\\\" title=\\\"GUARANTEE BLOCK 1\\\" href=\\\"http:\\/\\/localhost:8000\\/admin\\/block\\/edit\\/1\\\"><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center; background-color: #ffffff;\\\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.<\\/span><br \\/><\\/a><\\/p>\",\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'GUARANTEE BLOCK 3', 'primary', '2018-04-16 07:10:51', '2018-04-16 07:10:51'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 2\",\"alias\":\"guarantee-block-2\",\"description\":\"GUARANTEE BLOCK 2\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.<\\/span><\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'GUARANTEE BLOCK 2', 'primary', '2018-04-16 07:11:10', '2018-04-16 07:11:10'),
(1, 'block', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"GUARANTEE BLOCK 3\",\"alias\":\"guarantee-block-3\",\"description\":\"GUARANTEE BLOCK 3\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.<\\/span><\\/p>\",\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'GUARANTEE BLOCK 3', 'primary', '2018-04-16 07:11:46', '2018-04-16 07:11:46'),
(1, 'hotel', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"Hotel demo 1\",\"slug\":\"hotel-demo-1\",\"slug_id\":\"0\",\"description\":\"Hotel demo 1\",\"content\":\"<p>Hotel demo 1<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"5\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Hotel demo 1', 'info', '2018-04-16 08:49:49', '2018-04-16 08:49:49'),
(1, 'hotel', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"Hotel demo 2\",\"slug\":\"hotel-demo-2\",\"slug_id\":\"0\",\"description\":\"Hotel demo 2\",\"content\":\"<p>Hotel demo 2<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":null,\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Hotel demo 2', 'info', '2018-04-16 08:54:53', '2018-04-16 08:54:53'),
(1, 'hotel', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"Hotel demo 2\",\"slug\":\"hotel-demo-2\",\"slug_id\":\"12\",\"description\":\"Hotel demo 2\",\"content\":\"<p>Hotel demo 2<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":null,\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Hotel demo 2', 'primary', '2018-04-16 08:54:59', '2018-04-16 08:54:59');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'hotel', '{\"_token\":\"uNZFICBOvQM7HCzLAN93bU1DQh3CIRNgiTrJ5cdR\",\"name\":\"Hotel demo 3\",\"slug\":\"hotel-demo-3\",\"slug_id\":\"0\",\"description\":\"Hotel demo 3\",\"content\":\"<p>Hotel demo 3<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":null,\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Hotel demo 3', 'info', '2018-04-16 08:55:26', '2018-04-16 08:55:26'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-16 11:05:24', '2018-04-16 11:05:24'),
(1, 'hotel', '{\"_token\":\"xwzDNsCc3SEOHxzHuoCkiQlCqGAXoU1RsundVp5h\",\"name\":\"Hotel demo 1\",\"slug\":\"hotel-demo-1\",\"slug_id\":\"11\",\"description\":\"Hotel demo 1\",\"content\":\"<p>Hotel demo 1<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"5\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Hotel demo 1', 'primary', '2018-04-16 13:55:27', '2018-04-16 13:55:27'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-17 02:07:51', '2018-04-17 02:07:51'),
(1, 'page', '{\"_token\":\"dfDAEabipYw3LtQHPurOGKNwdx3zX8yydqyg1y0n\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":\"About description\",\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 02:33:24', '2018-04-17 02:33:24'),
(1, 'category', '{\"_token\":\"dfDAEabipYw3LtQHPurOGKNwdx3zX8yydqyg1y0n\",\"name\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"slug\":\"cau-hoi-cong-ty\",\"slug_id\":\"0\",\"parent_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"other_content\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Câu hỏi công ty', 'info', '2018-04-17 02:35:57', '2018-04-17 02:35:57'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-17 07:51:13', '2018-04-17 07:51:13'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":\"Ch\\u00fang t\\u00f4i l\\u00e0 ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h\\u00e0nh, l\\u00e0 tr\\u1ee3 l\\u00fd \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c\\u00e1c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h\\u00e0nh tr\\u00ecnh tham quan du l\\u1ecbch.\\r\\nCh\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho c\\u00e1c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr\\u00fa v\\u00e0 tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h\\u00e0i l\\u00f2ng cao v\\u00e0 th\\u01b0 gi\\u1ea3n nh\\u1ea5t.\\r\\nCh\\u00fang t\\u00f4i l\\u00e0 nh\\u1eefng th\\u00e0nh vi\\u00ean k\\u1ef3 c\\u1ef1u l\\u00e0m vi\\u1ec7c trong ng\\u00e0nh du l\\u1ecbch trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m. \\r\\n-\\tL\\u00ea Phi Long\\r\\n-\\tNguy\\u1ec5n Th\\u1ecb B\\u00edch Khu\\u00ea\",\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 07:54:19', '2018-04-17 07:54:19'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"Add fields to about template\",\"rules\":\"[]\",\"group_items\":\"[{\\\"id\\\":0,\\\"title\\\":\\\"About Block\\\",\\\"slug\\\":\\\"about_block\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Add fields to about template', 'info', '2018-04-17 08:17:37', '2018-04-17 08:17:37'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"Add fields to about template\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"About Block\\\",\\\"slug\\\":\\\"about_block\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Add fields to about template', 'primary', '2018-04-17 08:17:48', '2018-04-17 08:17:48'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"Add fields to about template\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\b\\\",\\\"slug\\\":\\\"about_block\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"2\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Add fields to about template', 'primary', '2018-04-17 08:19:01', '2018-04-17 08:19:01'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"Add fields to about template\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\b\\\",\\\"slug\\\":\\\"about_block\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"4\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Add fields to about template', 'primary', '2018-04-17 08:19:20', '2018-04-17 08:19:20'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Add fields to about template\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\b\\\",\\\"slug\\\":\\\"about_block\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:19:59', '2018-04-17 08:19:59'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"How We Are Block \\u001c\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"4\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'How We Are Block ', 'primary', '2018-04-17 08:22:10', '2018-04-17 08:22:10'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:22:22', '2018-04-17 08:22:22'),
(1, 'custom-field', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"title\":\"How We Are Block \\u001c\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"4\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'How We Are Block ', 'primary', '2018-04-17 08:25:56', '2018-04-17 08:25:56'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:25:59', '2018-04-17 08:25:59'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>About content<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:26:05', '2018-04-17 08:26:05'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p><\\/p>\\r\\n<p>2.\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:33:45', '2018-04-17 08:33:45'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>2.\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:33:53', '2018-04-17 08:33:53');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->\\u00a0Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p><!-- [if gte mso 9]><xml>\\r\\n <o:OfficeDocumentSettings>\\r\\n  <o:AllowPNG\\/>\\r\\n <\\/o:OfficeDocumentSettings>\\r\\n<\\/xml><![endif]--> <!-- [if gte mso 9]><xml>\\r\\n <w:WordDocument>\\r\\n  <w:View>Normal<\\/w:View>\\r\\n  <w:Zoom>0<\\/w:Zoom>\\r\\n  <w:TrackMoves\\/>\\r\\n  <w:TrackFormatting\\/>\\r\\n  <w:PunctuationKerning\\/>\\r\\n  <w:ValidateAgainstSchemas\\/>\\r\\n  <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid>\\r\\n  <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent>\\r\\n  <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText>\\r\\n  <w:DoNotPromoteQF\\/>\\r\\n  <w:LidThemeOther>EN-US<\\/w:LidThemeOther>\\r\\n  <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian>\\r\\n  <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript>\\r\\n  <w:Compatibility>\\r\\n   <w:BreakWrappedTables\\/>\\r\\n   <w:SnapToGridInCell\\/>\\r\\n   <w:WrapTextWithPunct\\/>\\r\\n   <w:UseAsianBreakRules\\/>\\r\\n   <w:DontGrowAutofit\\/>\\r\\n   <w:SplitPgBreakAndParaMark\\/>\\r\\n   <w:EnableOpenTypeKerning\\/>\\r\\n   <w:DontFlipMirrorIndents\\/>\\r\\n   <w:OverrideTableStyleHps\\/>\\r\\n  <\\/w:Compatibility>\\r\\n  <m:mathPr>\\r\\n   <m:mathFont m:val=\\\"Cambria Math\\\"\\/>\\r\\n   <m:brkBin m:val=\\\"before\\\"\\/>\\r\\n   <m:brkBinSub m:val=\\\"&#45;-\\\"\\/>\\r\\n   <m:smallFrac m:val=\\\"off\\\"\\/>\\r\\n   <m:dispDef\\/>\\r\\n   <m:lMargin m:val=\\\"0\\\"\\/>\\r\\n   <m:rMargin m:val=\\\"0\\\"\\/>\\r\\n   <m:defJc m:val=\\\"centerGroup\\\"\\/>\\r\\n   <m:wrapIndent m:val=\\\"1440\\\"\\/>\\r\\n   <m:intLim m:val=\\\"subSup\\\"\\/>\\r\\n   <m:naryLim m:val=\\\"undOvr\\\"\\/>\\r\\n  <\\/m:mathPr><\\/w:WordDocument>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 9]><xml>\\r\\n <w:LatentStyles DefLockedState=\\\"false\\\" DefUnhideWhenUsed=\\\"false\\\"\\r\\n  DefSemiHidden=\\\"false\\\" DefQFormat=\\\"false\\\" DefPriority=\\\"99\\\"\\r\\n  LatentStyleCount=\\\"382\\\">\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"0\\\" QFormat=\\\"true\\\" Name=\\\"Normal\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" QFormat=\\\"true\\\" Name=\\\"heading 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"9\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"heading 9\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index 9\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"toc 9\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Normal Indent\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"footnote text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"annotation text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"header\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"footer\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"index heading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"35\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"caption\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"table of figures\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"envelope address\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"envelope return\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"footnote reference\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"annotation reference\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"line number\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"page number\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"endnote reference\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"endnote text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"table of authorities\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"macro\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"toa heading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Bullet\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Number\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Bullet 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Bullet 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Bullet 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Bullet 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Number 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Number 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Number 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Number 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"10\\\" QFormat=\\\"true\\\" Name=\\\"Title\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Closing\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Signature\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"1\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"Default Paragraph Font\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text Indent\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Continue\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Continue 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Continue 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Continue 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"List Continue 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Message Header\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"11\\\" QFormat=\\\"true\\\" Name=\\\"Subtitle\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Salutation\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Date\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text First Indent\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text First Indent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Heading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text Indent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Body Text Indent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Block Text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Hyperlink\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"FollowedHyperlink\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"22\\\" QFormat=\\\"true\\\" Name=\\\"Strong\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"20\\\" QFormat=\\\"true\\\" Name=\\\"Emphasis\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Document Map\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Plain Text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"E-mail Signature\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Top of Form\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Bottom of Form\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Normal (Web)\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Acronym\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Address\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Cite\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Code\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Definition\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Keyboard\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Preformatted\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Sample\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Typewriter\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"HTML Variable\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Normal Table\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"annotation subject\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"No List\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Outline List 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Outline List 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Outline List 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Simple 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Simple 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Simple 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Classic 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Classic 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Classic 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Classic 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Colorful 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Colorful 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Colorful 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Columns 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Columns 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Columns 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Columns 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Columns 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Grid 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table List 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table 3D effects 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table 3D effects 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table 3D effects 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Contemporary\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Elegant\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Professional\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Subtle 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Subtle 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Web 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Web 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Web 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Balloon Text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" Name=\\\"Table Grid\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Table Theme\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 7\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 8\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Note Level 9\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" Name=\\\"Placeholder Text\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"1\\\" QFormat=\\\"true\\\" Name=\\\"No Spacing\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" Name=\\\"Revision\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"34\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"List Paragraph\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"29\\\" QFormat=\\\"true\\\" Name=\\\"Quote\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"30\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"Intense Quote\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"60\\\" Name=\\\"Light Shading Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"61\\\" Name=\\\"Light List Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"62\\\" Name=\\\"Light Grid Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"63\\\" Name=\\\"Medium Shading 1 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"64\\\" Name=\\\"Medium Shading 2 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"65\\\" Name=\\\"Medium List 1 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"66\\\" Name=\\\"Medium List 2 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"67\\\" Name=\\\"Medium Grid 1 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"68\\\" Name=\\\"Medium Grid 2 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"69\\\" Name=\\\"Medium Grid 3 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"70\\\" Name=\\\"Dark List Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"71\\\" Name=\\\"Colorful Shading Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"72\\\" Name=\\\"Colorful List Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"73\\\" Name=\\\"Colorful Grid Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"19\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"Subtle Emphasis\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"21\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"Intense Emphasis\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"31\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"Subtle Reference\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"32\\\" QFormat=\\\"true\\\"\\r\\n   Name=\\\"Intense Reference\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"33\\\" QFormat=\\\"true\\\" Name=\\\"Book Title\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"37\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" Name=\\\"Bibliography\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"39\\\" SemiHidden=\\\"true\\\"\\r\\n   UnhideWhenUsed=\\\"true\\\" QFormat=\\\"true\\\" Name=\\\"TOC Heading\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"41\\\" Name=\\\"Plain Table 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"42\\\" Name=\\\"Plain Table 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"43\\\" Name=\\\"Plain Table 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"44\\\" Name=\\\"Plain Table 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"45\\\" Name=\\\"Plain Table 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"40\\\" Name=\\\"Grid Table Light\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\" Name=\\\"Grid Table 1 Light\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\" Name=\\\"Grid Table 6 Colorful\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\" Name=\\\"Grid Table 7 Colorful\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"Grid Table 1 Light Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"Grid Table 2 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"Grid Table 3 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"Grid Table 4 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"Grid Table 5 Dark Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"Grid Table 6 Colorful Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"Grid Table 7 Colorful Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\" Name=\\\"List Table 1 Light\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\" Name=\\\"List Table 6 Colorful\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\" Name=\\\"List Table 7 Colorful\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 1\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 2\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 3\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 4\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 5\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"46\\\"\\r\\n   Name=\\\"List Table 1 Light Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"47\\\" Name=\\\"List Table 2 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"48\\\" Name=\\\"List Table 3 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"49\\\" Name=\\\"List Table 4 Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"50\\\" Name=\\\"List Table 5 Dark Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"51\\\"\\r\\n   Name=\\\"List Table 6 Colorful Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" Priority=\\\"52\\\"\\r\\n   Name=\\\"List Table 7 Colorful Accent 6\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Mention\\\"\\/>\\r\\n  <w:LsdException Locked=\\\"false\\\" SemiHidden=\\\"true\\\" UnhideWhenUsed=\\\"true\\\"\\r\\n   Name=\\\"Smart Hyperlink\\\"\\/>\\r\\n <\\/w:LatentStyles>\\r\\n<\\/xml><![endif]--><!-- [if gte mso 10]>\\r\\n<style>\\r\\n \\/* Style Definitions *\\/\\r\\ntable.MsoNormalTable\\r\\n\\t{mso-style-name:\\\"Table Normal\\\";\\r\\n\\tmso-tstyle-rowband-size:0;\\r\\n\\tmso-tstyle-colband-size:0;\\r\\n\\tmso-style-noshow:yes;\\r\\n\\tmso-style-priority:99;\\r\\n\\tmso-style-parent:\\\"\\\";\\r\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\r\\n\\tmso-para-margin-top:0cm;\\r\\n\\tmso-para-margin-right:0cm;\\r\\n\\tmso-para-margin-bottom:10.0pt;\\r\\n\\tmso-para-margin-left:0cm;\\r\\n\\tline-height:115%;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:11.0pt;\\r\\n\\tfont-family:Calibri;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;}\\r\\n<\\/style>\\r\\n<![endif]--> <!--StartFragment--> <!--EndFragment--><\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<!--StartFragment-->\\r\\n<h4><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/h4>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a><\\/p>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/p>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<p><!-- [if !supportLists]-->-\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0\\u00a0 <!--[endif]-->B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:38:14', '2018-04-17 08:38:14');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<!--StartFragment-->\\r\\n<h4><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/h4>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:40:42', '2018-04-17 08:40:42'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<h3><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/h3>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:41:22', '2018-04-17 08:41:22'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<h3>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/h3>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:42:09', '2018-04-17 08:42:09'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<h4>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/h4>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:42:33', '2018-04-17 08:42:33'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<h4>\\u00a0<\\/h4>\\r\\n<h4>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/h4>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:42:54', '2018-04-17 08:42:54');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<h4><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/h4>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:43:53', '2018-04-17 08:43:53'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/li>\\r\\n<li>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/li>\\r\\n<li>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/li>\\r\\n<li><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/li>\\r\\n<\\/ul>\\r\\n<h4><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/h4>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/li>\\r\\n<li>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:44:28', '2018-04-17 08:44:28'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<p><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/p>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p><!--[endif]-->Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>\\u00a0<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9,<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p>Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:45:21', '2018-04-17 08:45:21'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<p><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/p>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<p><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>. Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9. Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:46:25', '2018-04-17 08:46:25'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p><strong>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/strong><\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<p><strong>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/strong><\\/p>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p><!--[endif]-->Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<p><strong>Kh\\u00e1ch h\\u00e0ng k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i nh\\u01b0 th\\u1ebf n\\u00e0o?<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 1: M\\u1edf tr\\u00ecnh duy\\u1ec7t web<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 2: T\\u00ecm \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 website: <a href=\\\"http:\\/\\/www.book2govn.com\\\">www.book2govn.com<\\/a> ho\\u1eb7c <a href=\\\"http:\\/\\/www.book2go.vn\\\">www.book2go.vn<\\/a>. Ho\\u1eb7c \\u1edf tr\\u00ecnh duy\\u1ec7t google search, h\\u00e3y search t\\u00ean ch\\u00fang t\\u00f4i: book2go ho\\u1eb7c book2govn<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 3: Khoan h\\u00e3y t\\u00ecm ki\\u1ebfm kh\\u00e1ch s\\u1ea1n, h\\u00e3y ch\\u00fa \\u00fd, ch\\u00fang t\\u00f4i lu\\u00f4n c\\u00f3 nh\\u01b0ng ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i \\u1edf tab menu \\u201ckhuy\\u1ebfn m\\u00e3i\\u201d. H\\u00e3y \\u201cclick\\u201d v\\u00e0o th\\u1eed c\\u00e1c b\\u1ea1n nh\\u00e9. Ho\\u1eb7c n\\u1ebfu c\\u00e1c b\\u1ea1n l\\u01b0\\u1eddi bi\\u1ebfng, \\u0111\\u1eebng lo\\u2026., kh\\u00f4ng c\\u1ea7n chuy\\u1ec3n k\\u00eanh \\u0111i \\u0111\\u00e2u c\\u1ea3, m\\u00e0n h\\u00ecnh di \\u0111\\u1ed9ng c\\u1ee7a ch\\u00fang t\\u00f4i lu\\u00f4n hi\\u1ec3n th\\u1ecb v\\u00e0 ch\\u1ea1y c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i, ch\\u1edd xem m\\u00ecnh c\\u00f3 t\\u00ecm \\u0111\\u01b0\\u1ee3c g\\u00f3i khuy\\u1ebfn m\\u00e3i n\\u00e0o kh\\u00f4ng nh\\u00e9\\u2026 Ch\\u1eafc ch\\u1eafn r\\u1ea5t th\\u00fa v\\u1ecb \\u0111\\u1ea5y<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p>B\\u01b0\\u1edbc 4: h\\u00e3y \\u0111\\u1ee7ng \\u0111\\u1ec9nh l\\u1ef1a ch\\u1ecdn v\\u00e0 nh\\u1eadp v\\u00e0o khung \\u201ct\\u00ecm ki\\u1ebfm\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ec3 thi\\u1ebft l\\u1eadp \\u0111i\\u1ec3m \\u0111\\u1ebfn \\u0111\\u00e3 chu\\u1ea9n b\\u1ecb cho k\\u1ef3 ngh\\u1ec9 c\\u1ee7a m\\u00ecnh c\\u00e1c b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<\\/li>\\r\\n<li>Nh\\u1eafc nh\\u1ecf:\\u00a0 n\\u1ebfu b\\u1ea1n \\u201c\\u0111\\u0103ng k\\u00fd\\u201d v\\u00e0 tr\\u1edf th\\u00e0nh th\\u00e0nh vi\\u00ean c\\u1ee7a ch\\u00fang t\\u00f4i, c\\u00e1c b\\u1ea1n s\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u1eadn \\u0111\\u01b0\\u1ee3c v\\u00e0 th\\u00f4ng tin khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean t\\u1eeb \\u0111\\u1ed9i ng\\u0169 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i. Trong tr\\u01b0\\u1eddng h\\u1ee3p, k\\u1ef3 ngh\\u1ec9 c\\u1ee7a c\\u00e1c b\\u1ea1n kh\\u00f4ng b\\u1eaft g\\u1eb7p \\u0111\\u01b0\\u1ee3c b\\u1ea5t c\\u1ee9 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i n\\u00e0o th\\u00ec \\u0111\\u1eebng lo nh\\u00e9, \\u201cth\\u00e0nh vi\\u00ean\\u201d c\\u1ee7a ch\\u00fang t\\u00f4i s\\u1ebd \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% tr\\u00ean t\\u1ea5t c\\u1ea3 c\\u00e1c d\\u1ecbch v\\u1ee5 \\u0111\\u1eb7t qua website c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/li>\\r\\n<\\/ul>\\r\\n<p style=\\\"text-align: center;\\\"><strong>Ch\\u00fac c\\u00e1c b\\u1ea1n th\\u00e0nh c\\u00f4ng v\\u00e0 c\\u00f2n ch\\u1edd g\\u00ec n\\u1eefa, h\\u00e3y k\\u1ebft n\\u1ed1i v\\u1edbi ch\\u00fang t\\u00f4i ngay nh\\u00e9.<\\/strong><\\/p>\\r\\n<!--EndFragment-->\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:48:20', '2018-04-17 08:48:20');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<p>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/p>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:50:28', '2018-04-17 08:50:28'),
(1, 'page', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-17 08:50:46', '2018-04-17 08:50:46'),
(1, 'category', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng \\u0110\\u00e1nh Gi\\u00e1\",\"slug\":\"khach-hang-danh-gia\",\"slug_id\":\"0\",\"parent_id\":\"0\",\"description\":\"Kh\\u00e1ch H\\u00e0ng N\\u00f3i V\\u1ec1 Ch\\u00fang T\\u00f4i\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khách Hàng Đánh Giá', 'info', '2018-04-17 10:38:07', '2018-04-17 10:38:07'),
(1, 'post', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 1\",\"slug\":\"khach-hang-1\",\"slug_id\":\"0\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"2\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khách Hàng 1', 'info', '2018-04-17 11:02:45', '2018-04-17 11:02:45'),
(1, 'post', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 2\",\"slug\":\"khach-hang-2\",\"slug_id\":\"0\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khách Hàng 2', 'info', '2018-04-17 11:03:18', '2018-04-17 11:03:18'),
(1, 'post', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 1\",\"slug\":\"khach-hang-1\",\"slug_id\":\"16\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khách Hàng 1', 'primary', '2018-04-17 11:03:32', '2018-04-17 11:03:32'),
(1, 'post', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 3\",\"slug\":\"khach-hang-3\",\"slug_id\":\"0\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Khách Hàng 3', 'info', '2018-04-17 11:10:34', '2018-04-17 11:10:34'),
(1, 'post', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 4\",\"slug\":\"khach-hang-4\",\"slug_id\":\"0\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Khách Hàng 4', 'info', '2018-04-17 11:10:53', '2018-04-17 11:10:53'),
(1, 'hotel', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Starcity Nha Trang Hotel\",\"slug\":\"starcity-nha-trang-hotel\",\"slug_id\":\"7\",\"description\":\"Starcity Nha Trang Hotel\",\"content\":\"<p>Starcity Nha Trang Hotel<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"4\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Starcity Nha Trang Hotel', 'primary', '2018-04-17 11:27:11', '2018-04-17 11:27:11'),
(1, 'hotel', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Hotel demo 2\",\"slug\":\"hotel-demo-2\",\"slug_id\":\"12\",\"description\":\"Hotel demo 2\",\"content\":\"<p>Hotel demo 2<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"3\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Hotel demo 2', 'primary', '2018-04-17 11:27:27', '2018-04-17 11:27:27'),
(1, 'hotel', '{\"_token\":\"vOrthptC3uaf362I9T8KCbxd0YF1Vax7ier3m76c\",\"name\":\"Hotel demo 3\",\"slug\":\"hotel-demo-3\",\"slug_id\":\"13\",\"description\":\"Hotel demo 3\",\"content\":\"<p>Hotel demo 3<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"4\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Hotel demo 3', 'primary', '2018-04-17 11:27:33', '2018-04-17 11:27:33'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-18 03:23:55', '2018-04-18 03:23:55'),
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'info', '2018-04-18 03:24:21', '2018-04-18 03:24:21'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-18 03:28:04', '2018-04-18 03:28:04'),
(1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Dev Team', 'info', '2018-04-18 03:28:51', '2018-04-18 03:28:51'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-18 03:29:22', '2018-04-18 03:29:22'),
(1, 'category', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"Tin T\\u1ee9c Du L\\u1ecbch\",\"slug\":\"tin-tuc-du-lich\",\"slug_id\":\"0\",\"parent_id\":\"0\",\"description\":\"Latest news and tips for the best travel destinations, hotels and restaurants. \\r\\nDiscover exciting world events, luxury travel deals, safety tips and more\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tin Tức Du Lịch', 'info', '2018-04-18 03:30:14', '2018-04-18 03:30:14'),
(1, 'post', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"News Demo 1\",\"slug\":\"news-demo-1\",\"slug_id\":\"0\",\"description\":\"News Demo 1\",\"content\":\"<p>News Demo 1<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"news-detail-template\",\"categories\":[\"3\"],\"image\":\"\\/uploads\\/1\\/tin-tuc-du-lich\\/new1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'News Demo 1', 'info', '2018-04-18 03:40:43', '2018-04-18 03:40:43'),
(1, 'post', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"News Demo 2\",\"slug\":\"news-demo-2\",\"slug_id\":\"0\",\"description\":\"News Demo 2\",\"content\":\"<p>News Demo 2<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"news-detail-template\",\"categories\":[\"3\"],\"image\":\"\\/uploads\\/1\\/tin-tuc-du-lich\\/new1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'News Demo 2', 'info', '2018-04-18 03:41:33', '2018-04-18 03:41:33'),
(1, 'category', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"Tin T\\u1ee9c Du L\\u1ecbch\",\"slug\":\"tin-tuc-du-lich\",\"slug_id\":\"20\",\"parent_id\":\"0\",\"description\":\"Latest news and tips for the best travel destinations, hotels and restaurants.\\r\\n<br>Discover exciting world events, luxury travel deals, safety tips and more\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tin Tức Du Lịch', 'primary', '2018-04-18 03:45:11', '2018-04-18 03:45:11'),
(1, 'post', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"News Demo 1\",\"slug\":\"news-demo-1\",\"slug_id\":\"21\",\"description\":\"News Demo 1\",\"content\":\"<div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>\\u00a0<\\/div>\\r\\n<\\/div>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"news-detail-template\",\"categories\":[\"3\"],\"image\":\"\\/uploads\\/1\\/tin-tuc-du-lich\\/new1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'News Demo 1', 'primary', '2018-04-18 04:02:53', '2018-04-18 04:02:53'),
(1, 'post', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"News Demo 2\",\"slug\":\"news-demo-2\",\"slug_id\":\"22\",\"description\":\"News Demo 2\",\"content\":\"<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>\\u00a0<\\/div>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"news-detail-template\",\"categories\":[\"3\"],\"image\":\"\\/uploads\\/1\\/tin-tuc-du-lich\\/new1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'News Demo 2', 'primary', '2018-04-18 04:03:20', '2018-04-18 04:03:20'),
(1, 'post', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"News Demo 1\",\"slug\":\"news-demo-1\",\"slug_id\":\"21\",\"description\":\"News Demo 1\",\"content\":\"<div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.<\\/div>\\r\\n<div>\\u00a0<\\/div>\\r\\n<\\/div>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"news-detail-template\",\"categories\":[\"3\"],\"image\":\"\\/uploads\\/1\\/tin-tuc-du-lich\\/new1.jpg\",\"other_image\":\"\\/uploads\\/1\\/contact-us.jpg\",\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'News Demo 1', 'primary', '2018-04-18 04:09:55', '2018-04-18 04:09:55'),
(1, 'category', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"Tin T\\u1ee9c Du L\\u1ecbch\",\"slug\":\"tin-tuc-du-lich\",\"slug_id\":\"20\",\"parent_id\":\"0\",\"description\":\"Latest news and tips for the best travel destinations, hotels and restaurants.\\r\\n<br>Discover exciting world events, luxury travel deals, safety tips and more\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"news-list-template\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tin Tức Du Lịch', 'primary', '2018-04-18 04:16:45', '2018-04-18 04:16:45'),
(1, 'category', '{\"_token\":\"PT4Mcbm2LmzbtotmlsChEYLWt2imdiT40g7AhlA2\",\"name\":\"Tin T\\u1ee9c Du L\\u1ecbch\",\"slug\":\"tin-tuc-du-lich\",\"slug_id\":\"20\",\"parent_id\":\"0\",\"description\":\"Latest news and tips for the best travel destinations, hotels and restaurants.\\r\\n<br>Discover exciting world events, luxury travel deals, safety tips and more\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"news-list-template\",\"order\":\"0\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\",\"other_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Tin Tức Du Lịch', 'primary', '2018-04-18 04:17:48', '2018-04-18 04:17:48'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-18 15:24:34', '2018-04-18 15:24:34'),
(1, 'hotel', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Hotel demo 3\",\"slug\":\"hotel-demo-3\",\"slug_id\":\"13\",\"description\":\"Hotel demo 3\",\"content\":\"<p>Hotel demo 3<\\/p>\",\"address\":null,\"phone\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"4\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Hotel demo 3', 'primary', '2018-04-18 15:24:49', '2018-04-18 15:24:49'),
(1, 'category', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c Li\\u00ean K\\u1ebft\",\"slug\":\"doi-tac-lien-ket\",\"slug_id\":\"0\",\"parent_id\":\"0\",\"description\":\"\\u0110\\u1ed1i T\\u00e1c Li\\u00ean K\\u1ebft\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default-category-template\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Đối Tác Liên Kết', 'info', '2018-04-18 15:31:15', '2018-04-18 15:31:15'),
(1, 'category', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Kh\\u00e1ch H\\u00e0ng \\u0110\\u00e1nh Gi\\u00e1\",\"slug\":\"khach-hang-danh-gia\",\"slug_id\":\"15\",\"parent_id\":\"0\",\"description\":\"Kh\\u00e1ch H\\u00e0ng N\\u00f3i V\\u1ec1 Ch\\u00fang T\\u00f4i\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default-category-template\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khách Hàng Đánh Giá', 'primary', '2018-04-18 15:37:16', '2018-04-18 15:37:16'),
(1, 'category', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"slug\":\"cau-hoi-cong-ty\",\"slug_id\":\"14\",\"parent_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"other_content\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty\",\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default-category-template\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Câu hỏi công ty', 'primary', '2018-04-18 15:37:18', '2018-04-18 15:37:18'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 1\",\"slug\":\"doi-tac-1\",\"slug_id\":\"0\",\"description\":\"https:\\/\\/www.google.com.vn\\/\",\"content\":\"<p>https:\\/\\/www.google.com.vn\\/<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 7, 'Đối Tác 1', 'info', '2018-04-18 15:39:48', '2018-04-18 15:39:48'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 1\",\"slug\":\"doi-tac-1\",\"slug_id\":\"24\",\"description\":\"https:\\/\\/www.google.com.vn\\/\",\"content\":\"<p>https:\\/\\/www.google.com.vn\\/<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":\"\\/uploads\\/1\\/doi-tac-lien-ket\\/brand1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 7, 'Đối Tác 1', 'primary', '2018-04-18 15:39:59', '2018-04-18 15:39:59'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 2\",\"slug\":\"doi-tac-2\",\"slug_id\":\"0\",\"description\":\"https:\\/\\/www.google.com.vn\\/\",\"content\":\"<p>https:\\/\\/www.google.com.vn\\/<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":\"\\/uploads\\/1\\/doi-tac-lien-ket\\/brand2.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 8, 'Đối Tác 2', 'info', '2018-04-18 15:40:44', '2018-04-18 15:40:44'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 3\",\"slug\":\"doi-tac-lien-ket-1\",\"slug_id\":\"0\",\"description\":\"https:\\/\\/www.google.com.vn\\/\",\"content\":\"<p>https:\\/\\/www.google.com.vn\\/<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":\"\\/uploads\\/1\\/doi-tac-lien-ket\\/brand3.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 9, 'Đối Tác 3', 'info', '2018-04-18 15:41:11', '2018-04-18 15:41:11'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 4\",\"slug\":\"doi-tac-4\",\"slug_id\":\"0\",\"description\":\"https:\\/\\/www.google.com.vn\\/\",\"content\":\"<p>https:\\/\\/www.google.com.vn\\/<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":\"\\/uploads\\/1\\/doi-tac-lien-ket\\/brand4.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 10, 'Đối Tác 4', 'info', '2018-04-18 15:41:36', '2018-04-18 15:41:36'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 1\",\"slug\":\"khach-hang-1\",\"slug_id\":\"16\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khách Hàng 1', 'primary', '2018-04-18 15:41:59', '2018-04-18 15:41:59'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 2\",\"slug\":\"khach-hang-2\",\"slug_id\":\"17\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khách Hàng 2', 'primary', '2018-04-18 15:42:01', '2018-04-18 15:42:01'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 3\",\"slug\":\"khach-hang-3\",\"slug_id\":\"18\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Khách Hàng 3', 'primary', '2018-04-18 15:42:03', '2018-04-18 15:42:03'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"Kh\\u00e1ch H\\u00e0ng 4\",\"slug\":\"khach-hang-4\",\"slug_id\":\"19\",\"description\":\"On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\\\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"2\"],\"image\":\"\\/uploads\\/1\\/khach-hang-danh-gia\\/avatar3.png\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Khách Hàng 4', 'primary', '2018-04-18 15:42:05', '2018-04-18 15:42:05'),
(1, 'post', '{\"_token\":\"cryf3o5p186E49Ut1BtysE0uFW4Zat7apU9iYUGu\",\"name\":\"\\u0110\\u1ed1i T\\u00e1c 5\",\"slug\":\"doi-tac-5\",\"slug_id\":\"0\",\"description\":\"https:\\/\\/google.com.vn\",\"content\":\"<p>https:\\/\\/google.com.vn<\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"4\"],\"image\":\"\\/uploads\\/1\\/doi-tac-lien-ket\\/brand1.jpg\",\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 11, 'Đối Tác 5', 'info', '2018-04-18 15:45:02', '2018-04-18 15:45:02'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-19 08:13:32', '2018-04-19 08:13:32'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty 1\",\"slug\":\"cau-hoi-cong-ty-1\",\"slug_id\":\"0\",\"description\":\"How it works?\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"1\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 12, 'Câu hỏi công ty 1', 'info', '2018-04-19 08:14:38', '2018-04-19 08:14:38'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi c\\u00f4ng ty 2\",\"slug\":\"cau-hoi-cong-ty-2\",\"slug_id\":\"0\",\"description\":\"How it work?\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"1\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 13, 'Câu hỏi công ty 2', 'info', '2018-04-19 08:15:11', '2018-04-19 08:15:11');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'category', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi FAQs\",\"slug\":\"cau-hoi-faqs\",\"slug_id\":\"0\",\"parent_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi FAQs\",\"other_content\":null,\"content\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"default-category-template\",\"order\":\"0\",\"image\":null,\"other_image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Câu hỏi FAQs', 'info', '2018-04-19 08:38:01', '2018-04-19 08:38:01'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi FAQs 1\",\"slug\":\"cau-hoi-faqs-1\",\"slug_id\":\"0\",\"description\":\"How it works?\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"5\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 14, 'Câu hỏi FAQs 1', 'info', '2018-04-19 08:39:34', '2018-04-19 08:39:34'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi FAQs 2\",\"slug\":\"cau-hoi-faqs-2\",\"slug_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi FAQs 2\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"5\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 15, 'Câu hỏi FAQs 2', 'info', '2018-04-19 08:40:13', '2018-04-19 08:40:13'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi FAQs 3\",\"slug\":\"cau-hoi-faqs-3\",\"slug_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi FAQs 3\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"5\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 16, 'Câu hỏi FAQs 3', 'info', '2018-04-19 08:40:29', '2018-04-19 08:40:29'),
(1, 'post', '{\"_token\":\"lmCXxcrXvYy8csC7faesyZz2CjYNbckFe5XHSwdj\",\"name\":\"C\\u00e2u h\\u1ecfi FAQs 4\",\"slug\":\"cau-hoi-faqs-4\",\"slug_id\":\"0\",\"description\":\"C\\u00e2u h\\u1ecfi FAQs 4\",\"content\":\"<p><span style=\\\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\\\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.<\\/span><\\/p>\",\"other_content\":null,\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"format_type\":null,\"template\":\"default-post-template\",\"categories\":[\"5\"],\"image\":null,\"other_image\":null,\"order\":\"0\",\"tag\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 17, 'Câu hỏi FAQs 4', 'info', '2018-04-19 08:40:59', '2018-04-19 08:40:59'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-19 14:20:26', '2018-04-19 14:20:26'),
(1, 'custom-field', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"title\":\"How We Are Block \\u001c\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":0,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"4\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'How We Are Block ', 'primary', '2018-04-19 14:53:52', '2018-04-19 14:53:52'),
(1, 'custom-field', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"title\":\"How We Are Block \\u001c\",\"rules\":\"[[{\\\"name\\\":\\\"page_template\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"about-template\\\"}]]\",\"group_items\":\"[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"apply\",\"status\":\"1\",\"order\":\"4\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'How We Are Block ', 'primary', '2018-04-19 14:54:18', '2018-04-19 14:54:18'),
(1, 'page', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-19 14:56:53', '2018-04-19 14:56:53'),
(1, 'page', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"C\\u00e2u H\\u1ecfi Th\\u01b0\\u1eddng G\\u1eb7p\",\"slug\":\"faq\",\"slug_id\":\"4\",\"description\":null,\"content\":\"<p>FAQ<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"faq-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Câu Hỏi Thường Gặp', 'primary', '2018-04-19 15:10:25', '2018-04-19 15:10:25'),
(1, 'page', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"FAQs\",\"slug\":\"faq\",\"slug_id\":\"4\",\"description\":null,\"content\":\"<p>FAQ<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"faq-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'FAQs', 'primary', '2018-04-19 15:11:10', '2018-04-19 15:11:10'),
(1, 'page', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"Li\\u00ean H\\u1ec7\",\"slug\":\"lien-he\",\"slug_id\":\"5\",\"description\":null,\"content\":\"<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate odit minima aut, tempore id laudantium consectetur delectus aspernatur quas obcaecati harum aliquam voluptatem, labore molestiae asperiores, non explicabo quia sunt!<\\/div>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"contact-template\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Liên Hệ', 'primary', '2018-04-19 15:13:41', '2018-04-19 15:13:41'),
(1, 'page', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"Li\\u00ean H\\u1ec7\",\"slug\":\"lien-he\",\"slug_id\":\"5\",\"description\":null,\"content\":\"<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate odit minima aut, tempore id laudantium consectetur delectus aspernatur quas obcaecati harum aliquam voluptatem, labore molestiae asperiores, non explicabo quia sunt!<\\/div>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"contact-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Liên Hệ', 'primary', '2018-04-19 15:14:38', '2018-04-19 15:14:38'),
(1, 'room_type', '{\"_token\":\"VgmoUiFoqlr39O1P450BQopTdUUzxAFYXBFsnkvn\",\"name\":\"Room Test 1\",\"slug\":\"room-test-1\",\"slug_id\":\"0\",\"service_type_id\":\"2\",\"description\":\"Room Test 1\",\"content\":\"<p>Room Test 1<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000\",\"number_of_servicer\":\"10\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Room Test 1', 'info', '2018-04-19 15:47:22', '2018-04-19 15:47:22'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-20 03:21:33', '2018-04-20 03:21:33'),
(1, 'contact', '{\"ids\":[\"1\",\"2\"]}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Thiện', 'danger', '2018-04-20 04:01:13', '2018-04-20 04:01:13'),
(1, 'contact', '{\"ids\":[\"1\",\"2\"]}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Thiện', 'danger', '2018-04-20 04:01:13', '2018-04-20 04:01:13'),
(1, 'apartment', '{\"_token\":\"8Lg8CeGPVKxNAXPA4NTAVNbhArNjEyDjfqhSKu72\",\"name\":\"C\\u0103n h\\u1ed9 demo 1\",\"slug\":\"can-ho-demo-1\",\"slug_id\":\"0\",\"description\":\"C\\u0103n h\\u1ed9 demo 1\",\"content\":\"<p>C\\u0103n h\\u1ed9 demo 1<\\/p>\",\"address\":null,\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"900000\",\"number_of_servicer\":\"1\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Căn hộ demo 1', 'info', '2018-04-20 04:01:56', '2018-04-20 04:01:56'),
(1, 'user', '{\"_token\":\"8Lg8CeGPVKxNAXPA4NTAVNbhArNjEyDjfqhSKu72\",\"first_name\":\"Test\",\"last_name\":\"User\",\"username\":\"testuser\",\"email\":\"test@gmail.com\",\"password\":\"123123\",\"password_confirmation\":\"123123\",\"role_id\":\"2\",\"submit\":\"apply\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Test User', 'info', '2018-04-20 08:59:50', '2018-04-20 08:59:50'),
(1, 'user', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Test User', 'danger', '2018-04-20 09:03:19', '2018-04-20 09:03:19'),
(1, 'member', '{\"_token\":\"8Lg8CeGPVKxNAXPA4NTAVNbhArNjEyDjfqhSKu72\",\"name\":\"Test User\",\"email\":\"test@gmail.com\",\"password\":\"123123\",\"password_confirmation\":\"123123\",\"submit\":\"apply\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Test User', 'info', '2018-04-20 09:06:22', '2018-04-20 09:06:22'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Test User', 'info', '2018-04-20 09:15:23', '2018-04-20 09:15:23'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Test User', 'info', '2018-04-20 09:40:46', '2018-04-20 09:40:46'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Test User', 'info', '2018-04-20 15:25:48', '2018-04-20 15:25:48'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Test User', 'info', '2018-04-20 15:26:57', '2018-04-20 15:26:57'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-20 16:48:20', '2018-04-20 16:48:20'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-21 03:48:58', '2018-04-21 03:48:58'),
(4, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 4, 'Thien Pham', 'info', '2018-04-21 05:13:58', '2018-04-21 05:13:58'),
(5, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 5, 'Thien Pham', 'info', '2018-04-21 05:16:38', '2018-04-21 05:16:38'),
(1, 'hotel', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Starcity Nha Trang Hotel', 'danger', '2018-04-21 05:18:05', '2018-04-21 05:18:05'),
(1, 'hotel', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Hotel demo 4\",\"slug\":\"hotel-demo-4\",\"slug_id\":\"0\",\"description\":\"Hotel demo 4\",\"content\":\"<p>Hotel demo 4<\\/p>\",\"address\":\"Cam Ranh, Khanh Hoa\",\"phone\":\"090909090\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"5\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Hotel demo 4', 'info', '2018-04-21 05:19:15', '2018-04-21 05:19:15'),
(1, 'hotel', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Hotel demo 2\",\"slug\":\"hotel-demo-2\",\"slug_id\":\"12\",\"description\":\"Hotel demo 2\",\"content\":\"<p>Hotel demo 2<\\/p>\",\"address\":\"Ninh Hoa, Khanh Hoa\",\"phone\":\"0905160320\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"3\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Hotel demo 2', 'primary', '2018-04-21 05:20:29', '2018-04-21 05:20:29'),
(1, 'hotel', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Hotel demo 3\",\"slug\":\"hotel-demo-3\",\"slug_id\":\"13\",\"description\":\"Hotel demo 3\",\"content\":\"<p>Hotel demo 3<\\/p>\",\"address\":\"Cam Lam, Khanh Hoa\",\"phone\":\"0905160320\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"4\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Hotel demo 3', 'primary', '2018-04-21 05:20:54', '2018-04-21 05:20:54'),
(1, 'hotel', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Hotel demo 5\",\"slug\":\"hotel-demo-5\",\"slug_id\":\"0\",\"description\":\"Hotel demo 5\",\"content\":\"<p>Hotel demo 5<\\/p>\",\"address\":\"Tran Phu, Nha Trang\",\"phone\":\"0905160320\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"5\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'Hotel demo 5', 'info', '2018-04-21 05:21:37', '2018-04-21 05:21:37'),
(1, 'hotel', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Hotel demo 6\",\"slug\":\"hotel-demo-6\",\"slug_id\":\"0\",\"description\":\"Hotel demo 6\",\"content\":\"<p>Hotel demo 6<\\/p>\",\"address\":\"Loc Tho, Nha Trang\",\"phone\":\"0905160320\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"4\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 7, 'Hotel demo 6', 'info', '2018-04-21 05:22:17', '2018-04-21 05:22:17'),
(1, 'apartment', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"C\\u0103n H\\u1ed9 Demo 2\",\"slug\":\"can-ho-demo-2\",\"slug_id\":\"0\",\"description\":\"C\\u0103n H\\u1ed9 Demo 2\",\"content\":\"<p>C\\u0103n H\\u1ed9 Demo 2<\\/p>\",\"address\":null,\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000\",\"number_of_servicer\":\"3\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'Căn Hộ Demo 2', 'info', '2018-04-21 05:24:10', '2018-04-21 05:24:10'),
(1, 'tour', '{\"_token\":\"nTsFwtbQWoxXWP1OOECIR4x2BRMEG0J0DRkTZxhX\",\"name\":\"Tour \\u0110i\\u1ec7p S\\u01a1n\",\"slug\":\"tour-diep-son\",\"slug_id\":\"0\",\"description\":\"Tour \\u0110i\\u1ec7p S\\u01a1n\",\"content\":\"<p>Tour \\u0110i\\u1ec7p S\\u01a1n<\\/p>\",\"address\":\"Ninh Hoa, Khanh Hoa\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"600000\",\"price_children\":\"300000\",\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 7, 'Tour Điệp Sơn', 'info', '2018-04-21 05:25:41', '2018-04-21 05:25:41'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-22 03:35:08', '2018-04-22 03:35:08'),
(1, 'promotion', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":null,\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":null,\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'info', '2018-04-22 03:59:33', '2018-04-22 03:59:33'),
(1, 'promotion', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":null,\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"1\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":null,\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'primary', '2018-04-22 03:59:40', '2018-04-22 03:59:40'),
(1, 'promotion', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":\"10\",\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"0\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":null,\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'primary', '2018-04-22 03:59:56', '2018-04-22 03:59:56'),
(1, 'promotion', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 2 (Hotel Demo 2 gi\\u1ea3m 5%)\",\"cost\":\"5\",\"start_date\":\"2018\\/04\\/22 11:00:14\",\"end_date\":\"2018\\/04\\/30 11:00:48\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"apply\",\"status\":\"1\",\"description\":null,\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khuyến Mãi 2 (Hotel Demo 2 giảm 5%)', 'info', '2018-04-22 04:00:54', '2018-04-22 04:00:54'),
(1, 'room_type', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Room Test 1\",\"service_type_id\":\"2\",\"description\":\"Room Test 1\",\"content\":\"<p>Room Test 1<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000\",\"number_of_servicer\":\"10\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Room Test 1', 'primary', '2018-04-22 04:15:01', '2018-04-22 04:15:01'),
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<h4>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/h4>\\r\\n<h4>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/h4>\\r\\n<h4>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/h4>\\r\\n<h4>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/h4>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<h4>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/h4>\\r\\n<h4>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/h4>\\r\\n<h4>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:\\u00a0<\\/h4>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:20:18', '2018-04-22 04:20:18');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:\\u00a0<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:20:56', '2018-04-22 04:20:56'),
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>- Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p>- Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p>- Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p>- Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<h4>\\u0110\\u1ecbnh h\\u01b0\\u1edbng ph\\u00e1t tri\\u1ec3n<\\/h4>\\r\\n<p>LK - Book2go<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 l\\u01b0u tr\\u00fa<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 tour gh\\u00e9p<\\/p>\\r\\n<p>LK - Hospitality<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n Aries<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n<\\/p>\\r\\n<p>LK - Invest<\\/p>\\r\\n<p>- LK Homstay<\\/p>\\r\\n<p>- Kh\\u00e1ch s\\u1ea1n Amour<\\/p>\\r\\n<p>LK - Land<\\/p>\\r\\n<p>- Nh\\u00e0 ph\\u1ed1<\\/p>\\r\\n<p>- \\u0110\\u1ea5t n\\u1ec1n<\\/p>\\r\\n<p>LK - Transportation<\\/p>\\r\\n<p>- Xe \\u0111\\u00f3n ti\\u1ec5n s\\u00e2n bay<\\/p>\\r\\n<p>- Thu\\u00ea d\\u00f2ng xe cao c\\u1ea5p<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:29:26', '2018-04-22 04:29:26'),
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean<\\/p>\\r\\n<p>Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<h4>\\u0110\\u1ecbnh h\\u01b0\\u1edbng ph\\u00e1t tri\\u1ec3n<\\/h4>\\r\\n<p>LK - Book2go<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 l\\u01b0u tr\\u00fa<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 tour gh\\u00e9p<\\/p>\\r\\n<p>LK - Hospitality<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n Aries<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n<\\/p>\\r\\n<p>LK - Invest<\\/p>\\r\\n<p>- LK Homstay<\\/p>\\r\\n<p>- Kh\\u00e1ch s\\u1ea1n Amour<\\/p>\\r\\n<p>LK - Land<\\/p>\\r\\n<p>- Nh\\u00e0 ph\\u1ed1<\\/p>\\r\\n<p>- \\u0110\\u1ea5t n\\u1ec1n<\\/p>\\r\\n<p>LK - Transportation<\\/p>\\r\\n<p>- Xe \\u0111\\u00f3n ti\\u1ec5n s\\u00e2n bay<\\/p>\\r\\n<p>- Thu\\u00ea d\\u00f2ng xe cao c\\u1ea5p<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:30:15', '2018-04-22 04:30:15'),
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m.<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t.<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean.<\\/p>\\r\\n<p>Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<h4>\\u0110\\u1ecbnh h\\u01b0\\u1edbng ph\\u00e1t tri\\u1ec3n<\\/h4>\\r\\n<p>LK - Book2go<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 l\\u01b0u tr\\u00fa<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 tour gh\\u00e9p<\\/p>\\r\\n<p>LK - Hospitality<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n Aries<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n<\\/p>\\r\\n<p>LK - Invest<\\/p>\\r\\n<p>- LK Homstay<\\/p>\\r\\n<p>- Kh\\u00e1ch s\\u1ea1n Amour<\\/p>\\r\\n<p>LK - Land<\\/p>\\r\\n<p>- Nh\\u00e0 ph\\u1ed1<\\/p>\\r\\n<p>- \\u0110\\u1ea5t n\\u1ec1n<\\/p>\\r\\n<p>LK - Transportation<\\/p>\\r\\n<p>- Xe \\u0111\\u00f3n ti\\u1ec5n s\\u00e2n bay<\\/p>\\r\\n<p>- Thu\\u00ea d\\u00f2ng xe cao c\\u1ea5p<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:30:37', '2018-04-22 04:30:37'),
(1, 'page', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Gi\\u1edbi Thi\\u1ec7u\",\"slug\":\"gioi-thieu\",\"slug_id\":\"1\",\"description\":null,\"content\":\"<h4>Suy ngh\\u0129 c\\u1ee7a ch\\u00fang t\\u00f4i<\\/h4>\\r\\n<p>Cha m\\u1eb9 v\\u1ea5t c\\u1ea3 c\\u1ea3 \\u0111\\u1eddi, \\u0111\\u1ebfn tu\\u1ed5i v\\u1ec1 chi\\u1ec1u mu\\u1ed1n \\u0111\\u01b0\\u1ee3c d\\u00e0nh kho\\u1ea3n th\\u1eddi gian c\\u00f2n l\\u1ea1i \\u0111\\u1ec3 th\\u01b0 gi\\u1ea3n v\\u00e0 mu\\u1ed1n \\u0111\\u01b0\\u1ee3c v\\u00e2y qu\\u1ea7n b\\u00ean con c\\u00e1i v\\u00e0 ch\\u00e1u ch\\u1eaft\\u2026<\\/p>\\r\\n<p>M\\u1ed9t gia \\u0111\\u00ecnh \\u1edf \\u0111\\u00f3 cha b\\u1eadn r\\u1ed9n v\\u1edbi c\\u00f4ng vi\\u1ec7c x\\u00e3 h\\u1ed9i, m\\u1eb9 \\u0111\\u1ea7u t\\u1eaft m\\u1eb7t t\\u1ed1i v\\u1edbi c\\u00f4ng vi\\u1ec7c n\\u1ed9i tr\\u1ee3, nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb \\u0111i h\\u1ecdc t\\u1eeb s\\u00e1ng \\u0111\\u1ebfn t\\u1ed1i mu\\u1ed9n, \\u2026 h\\u1ecd c\\u1ea7n c\\u00f3 kho\\u1ea3n kh\\u00f4ng gian v\\u00e0 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c nh\\u00ecn l\\u1ea1i nhau, h\\u00e2m n\\u00f3ng v\\u00e0 y\\u00eau th\\u01b0\\u01a1ng nhau.<\\/p>\\r\\n<p>Nh\\u1eefng b\\u1ea1n tr\\u1ebb lu\\u00f4n mu\\u1ed1n kh\\u1eb3ng \\u0111\\u1ecbnh m\\u00ecnh v\\u1edbi c\\u00f4ng ty v\\u00e0 x\\u00e3 h\\u1ed9i, h\\u1ecd lao v\\u00e0o c\\u00f4ng vi\\u1ec7c m\\u00e0 qu\\u00ean r\\u1eb1ng cu\\u1ed9c s\\u1ed1ng kh\\u00f4ng ch\\u1ec9 c\\u00f3 c\\u00f4ng vi\\u1ec7c v\\u00e0 khi gi\\u1eadt m\\u00ecnh nh\\u1eadn ra, h\\u1ecd \\u0111ang thi\\u1ebfu nh\\u1eefng gi\\u00e2y ph\\u00fat t\\u1eadn h\\u01b0\\u1edfng cu\\u1ed9c s\\u1ed1ng c\\u00f9ng b\\u1ea1n b\\u00e8 v\\u00e0 ng\\u01b0\\u1eddi th\\u00e2n\\u2026<\\/p>\\r\\n<p>V\\u00e0 c\\u00f2n nhi\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi kh\\u00e1c\\u2026. H\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng \\u0111\\u1ecba \\u0111i\\u1ec3m, h\\u1ecd c\\u1ea7n c\\u00f3 nh\\u1eefng k\\u1ef3 ngh\\u1ec9 \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c b\\u00ean nhau v\\u00e0 th\\u01b0 gi\\u1ea3n t\\u00e1i t\\u1ea1o n\\u0103ng l\\u01b0\\u1ee3ng\\u2026<\\/p>\\r\\n<h4>T\\u1ea1i sao b\\u1ea1n ch\\u1ecdn ch\\u00fang t\\u00f4i?<\\/h4>\\r\\n<p>S\\u1ef1 l\\u00ean ng\\u00f4i c\\u1ee7a th\\u1eddi \\u0111\\u1ea1i c\\u00f4ng ngh\\u1ec7 khi\\u1ebfn cho m\\u1ecdi th\\u1ee9 tr\\u1edf n\\u00ean nh\\u1ecf b\\u00e9 h\\u01a1n, th\\u1ebf gi\\u1edbi tr\\u1edf n\\u00ean g\\u1ea7n v\\u1edbi ch\\u00fang ta h\\u01a1n. Ch\\u1ec9 v\\u1edbi m\\u1ed9t \\u201cclick\\u201d chu\\u1ed9t, b\\u1ea1n c\\u00f3 th\\u1ec3 mua b\\u1ea5t c\\u1ee9 th\\u1ee9 g\\u00ec m\\u00ecnh mu\\u1ed1n, d\\u0129 nhi\\u00ean l\\u00e0 ph\\u1ea3i tr\\u1ea3 ti\\u1ebfn b\\u1ea1n nh\\u00e9.<\\/p>\\r\\n<p>Tuy nhi\\u00ean, s\\u1ef1 b\\u1ec1 b\\u1ed9n trong c\\u00f4ng vi\\u1ec7c, nh\\u1eefng nguy\\u00ean t\\u1eafc gi\\u1edd gi\\u1ea5c trong c\\u00f4ng s\\u1edf, khi\\u1ebfn b\\u1ea1n kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp c\\u00f4ng ty du l\\u1ecbch \\u0111\\u1ec3 \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5, c\\u00e1c b\\u1ea1n c\\u0169ng kh\\u00f4ng c\\u00f3 \\u0111\\u1ee7 th\\u1eddi gian \\u0111\\u1ec3 l\\u1ee5c t\\u00ecm nhi\\u1ec1u th\\u00f4ng tin tr\\u00ean nhi\\u1ec1u trang website kh\\u00e1c nhau, v\\u00e0 c\\u00e0ng kh\\u00f4ng bi\\u1ebft \\u0111\\u1ed9 tin c\\u1eady c\\u1ee7a nh\\u1eefng website n\\u00e0y.<\\/p>\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111i\\u1ec1u \\u0111\\u00f3, c\\u00f4ng ty LK \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng 01 website \\u0111\\u1eb7t ph\\u00f2ng v\\u00e0 tour du l\\u1ecbch \\u0111\\u1ecba ph\\u01b0\\u01a1ng uy t\\u00edn, \\u0111\\u1ea3m b\\u1ea3o:<\\/p>\\r\\n<p>Lu\\u00f4n lu\\u00f4n c\\u00f3 ph\\u00f2ng d\\u00f9 ng\\u00e0y cao \\u0111i\\u1ec3m hay th\\u00e1ng th\\u1ea5p \\u0111i\\u1ec3m.<\\/p>\\r\\n<p>Thao t\\u00e1c \\u0111\\u1eb7t d\\u1ecbch v\\u1ee5 \\u0111\\u01a1n gi\\u1ea3n nh\\u1ea5t, nhanh ch\\u00f3ng nh\\u1ea5t.<\\/p>\\r\\n<p>Nh\\u1eadn \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 khuy\\u1ebfn m\\u00e3i th\\u01b0\\u1eddng xuy\\u00ean.<\\/p>\\r\\n<p>Thanh to\\u00e1n nhanh ch\\u00f3ng v\\u00e0 ph\\u00f9 h\\u1ee3p nh\\u1ea5t.<\\/p>\\r\\n<h4>\\u0110\\u1ecbnh h\\u01b0\\u1edbng ph\\u00e1t tri\\u1ec3n<\\/h4>\\r\\n<p>LK - Book2go<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 l\\u01b0u tr\\u00fa<\\/p>\\r\\n<p>- D\\u1ecbch v\\u1ee5 tour gh\\u00e9p<\\/p>\\r\\n<p>LK - Hospitality<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n Aries<\\/p>\\r\\n<p>- D\\u1ef1 \\u00e1n kh\\u00e1ch s\\u1ea1n<\\/p>\\r\\n<p>LK - Invest<\\/p>\\r\\n<p>- LK Homstay<\\/p>\\r\\n<p>- Kh\\u00e1ch s\\u1ea1n Amour<\\/p>\\r\\n<p>LK - Land<\\/p>\\r\\n<p>- Nh\\u00e0 ph\\u1ed1<\\/p>\\r\\n<p>- \\u0110\\u1ea5t n\\u1ec1n<\\/p>\\r\\n<p>LK - Transportation<\\/p>\\r\\n<p>- Xe \\u0111\\u00f3n ti\\u1ec5n s\\u00e2n bay<\\/p>\\r\\n<p>- Thu\\u00ea d\\u00f2ng xe cao c\\u1ea5p<\\/p>\",\"icon\":null,\"order\":\"0\",\"note\":null,\"custom_fields\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"How We Are Block \\\\u001c\\\",\\\"items\\\":[{\\\"id\\\":2,\\\"title\\\":\\\"Image Left\\\",\\\"slug\\\":\\\"how_we_are_image_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"\\/uploads\\/1\\/page-about-us.jpg\\\",\\\"thumb\\\":\\\"\\/uploads\\/1\\/page-about-us-150x150.jpg\\\"},{\\\"id\\\":1,\\\"title\\\":\\\"\\\\bWho we are content\\\",\\\"slug\\\":\\\"how_we_are_content_about_template\\\",\\\"instructions\\\":null,\\\"type\\\":\\\"wysiwyg\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"wysiwygToolbar\\\":\\\"basic\\\",\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[],\\\"value\\\":\\\"<p>Ch&uacute;ng t&ocirc;i l&agrave; ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh, l&agrave; tr\\u1ee3 l&yacute; \\u0111\\u1eaft l\\u1ef1c c\\u1ee7a c&aacute;c b\\u1ea1n cho nh\\u1eefng k\\u1ef3 ngh\\u1ec9 d\\u01b0\\u1ee1ng, h&agrave;nh tr&igrave;nh tham quan du l\\u1ecbch.<br \\/>\\\\nCh&uacute;ng t&ocirc;i mang \\u0111\\u1ebfn cho c&aacute;c b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 l\\u01b0u tr&uacute; v&agrave; tour du l\\u1ecbch t\\u1ea1i \\u0111\\u1ecba ph\\u01b0\\u01a1ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, h&agrave;i l&ograve;ng cao v&agrave; th\\u01b0 gi\\u1ea3n nh\\u1ea5t.<br \\/>\\\\nCh&uacute;ng t&ocirc;i l&agrave; nh\\u1eefng th&agrave;nh vi&ecirc;n k\\u1ef3 c\\u1ef1u l&agrave;m vi\\u1ec7c trong ng&agrave;nh du l\\u1ecbch trong v&agrave; ngo&agrave;i n\\u01b0\\u1edbc v\\u1edbi nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.&nbsp;<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br \\/>\\\\n-&nbsp;&nbsp; &nbsp;Nguy\\u1ec5n Th\\u1ecb B&iacute;ch Khu&ecirc;<\\/p>\\\\n\\\"}]}]\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"template\":\"about-template\",\"image\":\"\\/uploads\\/1\\/contact-us.jpg\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Giới Thiệu', 'primary', '2018-04-22 04:31:22', '2018-04-22 04:31:22'),
(1, 'room_type', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Room Type A (Hotel 1)\",\"service_type_id\":\"2\",\"description\":\"Room Test 1\",\"content\":\"<p>Room Test 1<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000.00\",\"number_of_servicer\":\"10\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Room Type A (Hotel 1)', 'primary', '2018-04-22 05:06:02', '2018-04-22 05:06:02'),
(1, 'room_type', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Room Type A (Hotel 1)\",\"service_type_id\":\"2\",\"description\":\"Room Test 1\",\"content\":\"<p>Room Test 1<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000.00\",\"number_of_servicer\":\"10\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Room Type A (Hotel 1)', 'primary', '2018-04-22 05:06:04', '2018-04-22 05:06:04'),
(1, 'room_type', '{\"_token\":\"MTegAk0Ks7odsWQ1wAZj218oXiTqa9OooBTbpxxv\",\"name\":\"Room Type B (Hotel 1)\",\"service_type_id\":\"2\",\"description\":\"Room Type B (Hotel 1)\",\"content\":\"<p>Room Type B (Hotel 1)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"600000\",\"number_of_servicer\":\"4\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 8, 'Room Type B (Hotel 1)', 'info', '2018-04-22 05:37:31', '2018-04-22 05:37:31'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-22 15:27:38', '2018-04-22 15:27:38'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-23 05:04:21', '2018-04-23 05:04:21'),
(1, 'promotion', '{\"_token\":\"MW1zVFE6oijZpFo0fZKImum8bY3qG4HsHTNb9ErU\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":\"10.00\",\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"0\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"apply\",\"status\":\"1\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'primary', '2018-04-23 05:05:02', '2018-04-23 05:05:02'),
(1, 'promotion', '{\"_token\":\"MW1zVFE6oijZpFo0fZKImum8bY3qG4HsHTNb9ErU\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 2 (Hotel Demo 2 gi\\u1ea3m 5%)\",\"cost\":\"5.00\",\"start_date\":\"2018\\/04\\/22 11:00:14\",\"end_date\":\"2018\\/04\\/30 11:00:48\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"apply\",\"status\":\"1\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khuyến Mãi 2 (Hotel Demo 2 giảm 5%)', 'primary', '2018-04-23 05:05:05', '2018-04-23 05:05:05'),
(1, 'promotion', '{\"_token\":\"MW1zVFE6oijZpFo0fZKImum8bY3qG4HsHTNb9ErU\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":\"10.00\",\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"apply\",\"status\":\"1\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'primary', '2018-04-23 05:05:24', '2018-04-23 05:05:24'),
(1, 'promotion', '{\"_token\":\"MW1zVFE6oijZpFo0fZKImum8bY3qG4HsHTNb9ErU\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 2 (Hotel Demo 2 gi\\u1ea3m 5%)\",\"cost\":\"5.00\",\"start_date\":\"2018\\/04\\/22 11:00:14\",\"end_date\":\"2018\\/04\\/30 11:00:48\",\"hotels\":[\"3\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"apply\",\"status\":\"1\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Khuyến Mãi 2 (Hotel Demo 2 giảm 5%)', 'primary', '2018-04-23 05:05:39', '2018-04-23 05:05:39'),
(6, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 6, 'fsfsdfsf', 'info', '2018-04-23 05:18:57', '2018-04-23 05:18:57'),
(1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 0, 1, 'Dev Team', 'info', '2018-04-23 10:40:27', '2018-04-23 10:40:27'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type A (Hotel 2)\",\"service_type_id\":\"3\",\"description\":\"Room Type A (Hotel 2)\\r\\nRoom Type A (Hotel 2)\\r\\nRoom Type A (Hotel 2)\\r\\nRoom Type A (Hotel 2)\",\"content\":\"<p>Room Type A (Hotel 2)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"2000000\",\"number_of_servicer\":\"3\",\"adults\":\"4\",\"children\":\"4\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 9, 'Room Type A (Hotel 2)', 'info', '2018-04-23 10:42:27', '2018-04-23 10:42:27'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type B (Hotel 2)\",\"service_type_id\":\"3\",\"description\":\"Room Type B (Hotel 2)\\r\\nRoom Type B (Hotel 2)\\r\\nRoom Type B (Hotel 2)\\r\\nRoom Type B (Hotel 2)\",\"content\":\"<p>Room Type B (Hotel 2)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"3000000\",\"number_of_servicer\":\"6\",\"adults\":\"4\",\"children\":\"3\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 10, 'Room Type B (Hotel 2)', 'info', '2018-04-23 10:43:37', '2018-04-23 10:43:37');
INSERT INTO `audit_history` (`user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type A (Hotel 3)\",\"service_type_id\":\"4\",\"description\":\"Room Type A (Hotel 3)\\r\\nRoom Type A (Hotel 3)\\r\\nRoom Type A (Hotel 3)\\r\\nRoom Type A (Hotel 3)\",\"content\":\"<p>Room Type A (Hotel 3)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1500000\",\"number_of_servicer\":\"5\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 11, 'Room Type A (Hotel 3)', 'info', '2018-04-23 10:48:27', '2018-04-23 10:48:27'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type B (Hotel 3)\\b\",\"service_type_id\":\"4\",\"description\":\"Room Type B (Hotel 3)\\b\\r\\nRoom Type B (Hotel 3)\\b\\r\\nRoom Type B (Hotel 3)\\b\\r\\nRoom Type B (Hotel 3)\\b\",\"content\":\"<p>Room Type B (Hotel 3)\\b<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1700000\",\"number_of_servicer\":\"3\",\"adults\":\"3\",\"children\":\"3\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 12, 'Room Type B (Hotel 3)', 'info', '2018-04-23 10:49:24', '2018-04-23 10:49:24'),
(1, 'hotel', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Hotel demo 1\",\"slug\":\"hotel-demo-1\",\"slug_id\":\"11\",\"description\":\"Hotel demo 1\",\"content\":\"<p>Hotel demo 1<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"phone\":\"0905160320\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"star\":\"5\",\"lat_long\":null,\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 2, 'Hotel demo 1', 'primary', '2018-04-23 10:49:49', '2018-04-23 10:49:49'),
(1, 'apartment', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"C\\u0103n h\\u1ed9 demo 1\",\"slug\":\"can-ho-demo-1\",\"slug_id\":\"37\",\"description\":\"C\\u0103n h\\u1ed9 demo 1\",\"content\":\"<p>C\\u0103n h\\u1ed9 demo 1<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"900000.00\",\"number_of_servicer\":\"1\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 5, 'Căn hộ demo 1', 'primary', '2018-04-23 10:50:03', '2018-04-23 10:50:03'),
(1, 'apartment', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"C\\u0103n H\\u1ed9 Demo 2\",\"slug\":\"can-ho-demo-2\",\"slug_id\":\"41\",\"description\":\"C\\u0103n H\\u1ed9 Demo 2\",\"content\":\"<p>C\\u0103n H\\u1ed9 Demo 2<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1000000.00\",\"number_of_servicer\":\"3\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 6, 'Căn Hộ Demo 2', 'primary', '2018-04-23 10:50:13', '2018-04-23 10:50:13'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type A (Hotel 4)\",\"service_type_id\":\"5\",\"description\":\"Room Type A (Hotel 4)\\r\\nRoom Type A (Hotel 4)\\r\\nRoom Type A (Hotel 4)\\r\\nRoom Type A (Hotel 4)\",\"content\":\"<p>Room Type A (Hotel 4)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"3200000\",\"number_of_servicer\":\"4\",\"adults\":\"4\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 13, 'Room Type A (Hotel 4)', 'info', '2018-04-23 10:54:04', '2018-04-23 10:54:04'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type B (Hotel 4)\",\"service_type_id\":\"5\",\"description\":\"Room Type B (Hotel 4)\\r\\nRoom Type B (Hotel 4)\\r\\nRoom Type B (Hotel 4)\\r\\nRoom Type B (Hotel 4)\",\"content\":\"<p>Room Type B (Hotel 4)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"4000002\",\"number_of_servicer\":\"5\",\"adults\":\"5\",\"children\":\"5\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 14, 'Room Type B (Hotel 4)', 'info', '2018-04-23 10:54:52', '2018-04-23 10:54:52'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type A (Hotel 5)\",\"service_type_id\":\"6\",\"description\":\"Room Type A (Hotel 5)\\r\\nRoom Type A (Hotel 5)\\r\\nRoom Type A (Hotel 5)\\r\\nRoom Type A (Hotel 5)\",\"content\":\"<p>Room Type A (Hotel 5)<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"990000\",\"number_of_servicer\":\"2\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 15, 'Room Type A (Hotel 5)', 'info', '2018-04-23 10:55:50', '2018-04-23 10:55:50'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type B (Hotel 5)\\b\",\"service_type_id\":\"6\",\"description\":\"Room Type B (Hotel 5)\\b\\r\\nRoom Type B (Hotel 5)\\b\\r\\nRoom Type B (Hotel 5)\\b\\r\\nRoom Type B (Hotel 5)\\b\",\"content\":\"<p>Room Type B (Hotel 5)\\b<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"3200000\",\"number_of_servicer\":\"4\",\"adults\":\"2\",\"children\":\"3\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 16, 'Room Type B (Hotel 5)', 'info', '2018-04-23 10:56:45', '2018-04-23 10:56:45'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type A (Hotel 6)\\b\",\"service_type_id\":\"7\",\"description\":\"Room Type A (Hotel 6)\\b\\r\\nRoom Type A (Hotel 6)\\b\\r\\nRoom Type A (Hotel 6)\\b\\r\\nRoom Type A (Hotel 6)\\b\",\"content\":\"<p>Room Type A (Hotel 6)\\b<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"2500000\",\"number_of_servicer\":\"4\",\"adults\":\"2\",\"children\":\"2\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 17, 'Room Type A (Hotel 6)', 'info', '2018-04-23 10:57:29', '2018-04-23 10:57:29'),
(1, 'room_type', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Room Type B (Hotel 6)\\b\",\"service_type_id\":\"7\",\"description\":\"Room Type B (Hotel 6)\\b\\r\\nRoom Type B (Hotel 6)\\b\\r\\nRoom Type B (Hotel 6)\\b\\r\\nRoom Type B (Hotel 6)\\b\",\"content\":\"<p>Room Type B (Hotel 6)\\b<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"1700000\",\"number_of_servicer\":\"6\",\"adults\":\"4\",\"children\":\"4\",\"image\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 18, 'Room Type B (Hotel 6)', 'info', '2018-04-23 10:58:17', '2018-04-23 10:58:17'),
(1, 'promotion', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Khuy\\u1ebfn M\\u00e3i 1 (Hotel demo 1)\",\"cost\":\"10.00\",\"start_date\":\"2018\\/04\\/25 10:59:08\",\"end_date\":\"2018\\/04\\/30 10:59:16\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'primary', '2018-04-23 10:58:44', '2018-04-23 10:58:44'),
(1, 'promotion', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Khuy\\u1ebfn m\\u00e3i hotel 3\",\"cost\":\"4\",\"start_date\":\"2018\\/04\\/23 18:00:23\",\"end_date\":\"2018\\/04\\/30 18:00:27\",\"hotels\":[\"4\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":\"Test km hotel 3\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 3, 'Khuyến mãi hotel 3', 'info', '2018-04-23 11:00:42', '2018-04-23 11:00:42'),
(1, 'promotion', '[]', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Khuyến Mãi 1 (Hotel demo 1)', 'danger', '2018-04-23 11:01:22', '2018-04-23 11:01:22'),
(1, 'promotion', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Demo Khuy\\u1ebfn m\\u00e3i hotel 1\",\"cost\":\"6\",\"start_date\":\"2018\\/04\\/23 18:01:35\",\"end_date\":\"2018\\/04\\/30 18:01:38\",\"hotels\":[\"2\"],\"tours\":[\"0\"],\"apartments\":[\"0\"],\"submit\":\"save\",\"status\":\"1\",\"description\":\"Test km hotel 1 - 6%\",\"image\":null}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 4, 'Demo Khuyến mãi hotel 1', 'info', '2018-04-23 11:01:54', '2018-04-23 11:01:54'),
(1, 'tour', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Tour B\\u00ecnh Ba\",\"slug\":\"tour-binh-ba\",\"slug_id\":\"8\",\"description\":\"Tour B\\u00ecnh Ba\",\"content\":\"<p>Tour B\\u00ecnh Ba<\\/p>\",\"address\":\"Cam Ranh, Khanh Hoa\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 1, 'Tour Bình Ba', 'primary', '2018-04-23 11:02:38', '2018-04-23 11:02:38'),
(1, 'tour', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Tour 4 \\u0110\\u1ea3o\",\"slug\":\"tour-4-dao\",\"slug_id\":\"0\",\"description\":\"Tour 4 \\u0110\\u1ea3o\",\"content\":\"<p>Tour 4 \\u0110\\u1ea3o<\\/p>\",\"address\":null,\"gallery\":\"[{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":null,\"price_children\":null,\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 19, 'Tour 4 Đảo', 'info', '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(1, 'tour', '{\"_token\":\"xOpLbjb6iI8FiXBj0zZudoK1L1Omg0kNLnq6eQCL\",\"name\":\"Tour 4 \\u0110\\u1ea3o\",\"slug\":\"tour-4-dao\",\"slug_id\":\"43\",\"description\":\"Tour 4 \\u0110\\u1ea3o\",\"content\":\"<p>Tour 4 \\u0110\\u1ea3o<\\/p>\",\"address\":\"Nha Trang, Khanh Hoa\",\"gallery\":\"[{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603736.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315140039604211.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020218440039576985.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020315020039603730.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020217110039573814.jpg\\\",\\\"description\\\":null},{\\\"img\\\":\\\"\\\\\\/uploads\\\\\\/1\\\\\\/khach-san\\\\\\/starcity\\\\\\/1158838-16020215590039570222-1.jpg\\\",\\\"description\\\":null}]\",\"seo_meta\":{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"1\",\"price\":\"150000\",\"price_children\":\"75000\",\"image\":\"\\/uploads\\/1\\/tour\\/dao-binh-ba\\/tour-dao-binh-ba.jpg\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', 1, 19, 'Tour 4 Đảo', 'primary', '2018-04-23 11:04:21', '2018-04-23 11:04:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'GUARANTEE BLOCK 1', 'guarantee-block-1', 'FLIGHT GUARANTEE', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.</span></p>', 1, 1, '2018-04-16 05:15:46', '2018-04-16 05:15:46'),
(2, 'GUARANTEE BLOCK 2', 'guarantee-block-2', 'GUARANTEE BLOCK 2', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.</span></p>', 1, 1, '2018-04-16 07:10:13', '2018-04-16 07:11:10'),
(3, 'GUARANTEE BLOCK 3', 'guarantee-block-3', 'GUARANTEE BLOCK 3', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">Satisfaction guaranteed trip plan with Flexible travel date and the Most comfortable routine.</span></p>', 1, 1, '2018-04-16 07:10:29', '2018-04-16 07:11:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT '1',
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `payment` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(20,2) DEFAULT NULL,
  `discount` decimal(20,2) DEFAULT NULL,
  `tax` decimal(20,2) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `servicer_id` int(10) UNSIGNED NOT NULL,
  `servicer_name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_adults` int(11) DEFAULT NULL,
  `amount_children` int(11) DEFAULT NULL,
  `total_of_servicer` int(11) DEFAULT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `user_id`, `icon`, `featured`, `order`, `is_default`, `deleted_at`, `created_at`, `updated_at`, `category_type`, `template`, `content`, `image`, `other_image`, `other_content`) VALUES
(1, 'Câu hỏi công ty', 0, 'Câu hỏi công ty', 1, 1, NULL, 0, 0, 0, NULL, '2018-04-17 02:35:57', '2018-04-18 15:37:18', NULL, 'default-category-template', NULL, NULL, NULL, 'Câu hỏi công ty'),
(2, 'Khách Hàng Đánh Giá', 0, 'Khách Hàng Nói Về Chúng Tôi', 1, 1, NULL, 0, 0, 0, NULL, '2018-04-17 10:38:07', '2018-04-18 15:37:16', NULL, 'default-category-template', NULL, NULL, NULL, NULL),
(3, 'Tin Tức Du Lịch', 0, 'Latest news and tips for the best travel destinations, hotels and restaurants.\r\n<br>Discover exciting world events, luxury travel deals, safety tips and more', 1, 1, NULL, 0, 0, 0, NULL, '2018-04-18 03:30:14', '2018-04-18 04:17:48', NULL, 'news-list-template', NULL, '/uploads/1/contact-us.jpg', NULL, NULL),
(4, 'Đối Tác Liên Kết', 0, 'Đối Tác Liên Kết', 1, 1, NULL, 0, 0, 0, NULL, '2018-04-18 15:31:15', '2018-04-18 15:31:15', NULL, 'default-category-template', NULL, NULL, NULL, NULL),
(5, 'Câu hỏi FAQs', 0, 'Câu hỏi FAQs', 1, 1, NULL, 0, 0, 0, NULL, '2018-04-19 08:38:01', '2018-04-19 08:38:01', NULL, 'default-category-template', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `is_read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Thiện', 'chithien175@gmail.com', '0905160320', NULL, 'Test contact', 0, '2018-04-20 04:01:13', '2018-04-19 16:10:15', '2018-04-20 04:01:13'),
(2, 'Thiện', 'chithien175@gmail.com', '0905160320', NULL, 'fsdfsdfsdfsdf', 0, '2018-04-20 04:01:13', '2018-04-19 16:15:14', '2018-04-20 04:01:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `use_for`, `use_for_id`, `field_item_id`, `type`, `slug`, `value`) VALUES
(1, 'page', 1, 1, 'wysiwyg', 'about_block', '<p>Ch&uacute;ng t&ocirc;i l&agrave; người đồng h&agrave;nh, l&agrave; trợ l&yacute; đắt lực của c&aacute;c bạn cho những kỳ nghỉ dưỡng, h&agrave;nh tr&igrave;nh tham quan du lịch.<br />\nCh&uacute;ng t&ocirc;i mang đến cho c&aacute;c bạn những dịch vụ lưu tr&uacute; v&agrave; tour du lịch tại địa phương chất lượng tốt, h&agrave;i l&ograve;ng cao v&agrave; thư giản nhất.<br />\nCh&uacute;ng t&ocirc;i l&agrave; những th&agrave;nh vi&ecirc;n kỳ cựu l&agrave;m việc trong ng&agrave;nh du lịch trong v&agrave; ngo&agrave;i nước với nhiều năm kinh nghiệm.&nbsp;<br />\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br />\n-&nbsp;&nbsp; &nbsp;Nguyễn Thị B&iacute;ch Khu&ecirc;</p>\n'),
(2, 'page', 1, 1, 'wysiwyg', 'how_we_are_about_template', '<p>Ch&uacute;ng t&ocirc;i l&agrave; người đồng h&agrave;nh, l&agrave; trợ l&yacute; đắt lực của c&aacute;c bạn cho những kỳ nghỉ dưỡng, h&agrave;nh tr&igrave;nh tham quan du lịch.<br />\nCh&uacute;ng t&ocirc;i mang đến cho c&aacute;c bạn những dịch vụ lưu tr&uacute; v&agrave; tour du lịch tại địa phương chất lượng tốt, h&agrave;i l&ograve;ng cao v&agrave; thư giản nhất.<br />\nCh&uacute;ng t&ocirc;i l&agrave; những th&agrave;nh vi&ecirc;n kỳ cựu l&agrave;m việc trong ng&agrave;nh du lịch trong v&agrave; ngo&agrave;i nước với nhiều năm kinh nghiệm.&nbsp;<br />\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br />\n-&nbsp;&nbsp; &nbsp;Nguyễn Thị B&iacute;ch Khu&ecirc;</p>\n'),
(3, 'page', 1, 1, 'wysiwyg', 'how_we_are_content_about_template', '<p>Ch&uacute;ng t&ocirc;i l&agrave; người đồng h&agrave;nh, l&agrave; trợ l&yacute; đắt lực của c&aacute;c bạn cho những kỳ nghỉ dưỡng, h&agrave;nh tr&igrave;nh tham quan du lịch.<br />\nCh&uacute;ng t&ocirc;i mang đến cho c&aacute;c bạn những dịch vụ lưu tr&uacute; v&agrave; tour du lịch tại địa phương chất lượng tốt, h&agrave;i l&ograve;ng cao v&agrave; thư giản nhất.<br />\nCh&uacute;ng t&ocirc;i l&agrave; những th&agrave;nh vi&ecirc;n kỳ cựu l&agrave;m việc trong ng&agrave;nh du lịch trong v&agrave; ngo&agrave;i nước với nhiều năm kinh nghiệm.&nbsp;<br />\n-&nbsp;&nbsp; &nbsp;L&ecirc; Phi Long<br />\n-&nbsp;&nbsp; &nbsp;Nguyễn Thị B&iacute;ch Khu&ecirc;</p>\n'),
(4, 'page', 1, 2, 'image', 'how_we_are_image_about_template', '/uploads/1/page-about-us.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_posts_recent', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(2, 'widget_analytics_general', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(3, 'widget_analytics_page', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(4, 'widget_analytics_browser', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(5, 'widget_analytics_referrer', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(6, 'widget_audit_logs', '2017-11-30 18:26:50', '2017-11-30 18:26:50'),
(7, 'widget_request_errors', '2017-11-30 18:26:50', '2017-11-30 18:26:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 1, 0, '2017-11-30 18:27:00', '2018-03-28 03:18:54'),
(2, NULL, 1, 3, 2, 0, '2017-11-30 18:27:00', '2018-03-28 03:19:01'),
(3, NULL, 1, 4, 3, 0, '2017-11-30 18:27:00', '2018-03-28 03:18:52'),
(4, NULL, 1, 5, 4, 0, '2017-11-30 18:27:00', '2018-03-28 03:18:59'),
(5, NULL, 1, 6, 5, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(6, NULL, 1, 7, 6, 1, '2017-11-30 18:27:00', '2017-11-30 18:27:10'),
(7, NULL, 1, 2, 0, 0, '2017-11-30 18:27:00', '2018-03-28 03:19:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `content` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field_groups`
--

CREATE TABLE `field_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `field_groups`
--

INSERT INTO `field_groups` (`id`, `title`, `rules`, `order`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How We Are Block ', '[[{\"name\":\"page_template\",\"type\":\"==\",\"value\":\"about-template\"}]]', 4, 1, 1, 1, '2018-04-17 08:17:37', '2018-04-17 08:22:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `field_items`
--

CREATE TABLE `field_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `field_items`
--

INSERT INTO `field_items` (`id`, `field_group_id`, `parent_id`, `order`, `title`, `slug`, `type`, `instructions`, `options`) VALUES
(1, 1, NULL, 2, 'Who we are content', 'how_we_are_content_about_template', 'wysiwyg', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":\"basic\",\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}'),
(2, 1, NULL, 1, 'Image Left', 'how_we_are_image_about_template', 'image', NULL, '{\"defaultValue\":null,\"defaultValueTextarea\":null,\"placeholderText\":null,\"wysiwygToolbar\":null,\"selectChoices\":null,\"buttonLabel\":null,\"rows\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `status`, `featured`, `order`, `image`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Banner Homepage', 'Banner Homepage', 1, 0, 0, '/uploads/1/slide1.png', 1, NULL, '2018-04-12 09:49:47', '2018-04-12 09:49:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `content_id`, `images`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'gallery', '2018-04-12 09:49:47', '2018-04-12 09:49:47'),
(10, 6, NULL, 'page', '2018-04-12 16:43:33', '2018-04-12 16:43:33'),
(12, 2, NULL, 'page', '2018-04-14 07:37:52', '2018-04-14 07:37:52'),
(13, 3, NULL, 'page', '2018-04-15 15:18:35', '2018-04-15 15:18:35'),
(56, 3, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'hotel', '2018-04-17 11:27:27', '2018-04-21 05:20:29'),
(63, 6, NULL, 'post', '2018-04-18 04:03:20', '2018-04-18 04:03:20'),
(64, 5, NULL, 'post', '2018-04-18 04:09:55', '2018-04-18 04:09:55'),
(66, 3, NULL, 'category', '2018-04-18 04:17:48', '2018-04-18 04:17:48'),
(67, 4, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'hotel', '2018-04-18 15:24:49', '2018-04-21 05:20:54'),
(68, 4, NULL, 'category', '2018-04-18 15:31:15', '2018-04-18 15:31:15'),
(69, 2, NULL, 'category', '2018-04-18 15:37:16', '2018-04-18 15:37:16'),
(70, 1, NULL, 'category', '2018-04-18 15:37:18', '2018-04-18 15:37:18'),
(72, 7, NULL, 'post', '2018-04-18 15:39:59', '2018-04-18 15:39:59'),
(73, 8, NULL, 'post', '2018-04-18 15:40:44', '2018-04-18 15:40:44'),
(74, 9, NULL, 'post', '2018-04-18 15:41:11', '2018-04-18 15:41:11'),
(75, 10, NULL, 'post', '2018-04-18 15:41:36', '2018-04-18 15:41:36'),
(76, 1, NULL, 'post', '2018-04-18 15:41:59', '2018-04-18 15:41:59'),
(77, 2, NULL, 'post', '2018-04-18 15:42:01', '2018-04-18 15:42:01'),
(78, 3, NULL, 'post', '2018-04-18 15:42:03', '2018-04-18 15:42:03'),
(79, 4, NULL, 'post', '2018-04-18 15:42:05', '2018-04-18 15:42:05'),
(80, 11, NULL, 'post', '2018-04-18 15:45:02', '2018-04-18 15:45:02'),
(81, 12, NULL, 'post', '2018-04-19 08:14:38', '2018-04-19 08:14:38'),
(82, 13, NULL, 'post', '2018-04-19 08:15:11', '2018-04-19 08:15:11'),
(83, 5, NULL, 'category', '2018-04-19 08:38:01', '2018-04-19 08:38:01'),
(84, 14, NULL, 'post', '2018-04-19 08:39:34', '2018-04-19 08:39:34'),
(85, 15, NULL, 'post', '2018-04-19 08:40:13', '2018-04-19 08:40:13'),
(86, 16, NULL, 'post', '2018-04-19 08:40:29', '2018-04-19 08:40:29'),
(87, 17, NULL, 'post', '2018-04-19 08:40:59', '2018-04-19 08:40:59'),
(90, 4, NULL, 'page', '2018-04-19 15:11:10', '2018-04-19 15:11:10'),
(92, 5, NULL, 'page', '2018-04-19 15:14:38', '2018-04-19 15:14:38'),
(93, 4, '[{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-19 15:47:22', '2018-04-22 04:15:01'),
(95, 5, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'hotel', '2018-04-21 05:19:15', '2018-04-21 05:19:15'),
(96, 6, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'hotel', '2018-04-21 05:21:37', '2018-04-21 05:21:37'),
(97, 7, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'hotel', '2018-04-21 05:22:17', '2018-04-21 05:22:17'),
(98, 6, '[{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'apartment', '2018-04-21 05:24:10', '2018-04-23 10:50:13'),
(99, 7, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'tour', '2018-04-21 05:25:41', '2018-04-21 05:25:41'),
(105, 1, NULL, 'page', '2018-04-22 04:31:22', '2018-04-22 04:31:22'),
(106, 8, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-22 05:37:31', '2018-04-22 05:37:31'),
(107, 9, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:42:27', '2018-04-23 10:42:27'),
(108, 10, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:43:37', '2018-04-23 10:43:37'),
(109, 11, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:48:27', '2018-04-23 10:48:27'),
(110, 12, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:49:24', '2018-04-23 10:49:24'),
(111, 2, NULL, 'hotel', '2018-04-23 10:49:49', '2018-04-23 10:49:49'),
(112, 5, NULL, 'apartment', '2018-04-23 10:50:03', '2018-04-23 10:50:03'),
(113, 13, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:54:04', '2018-04-23 10:54:04'),
(114, 14, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:54:52', '2018-04-23 10:54:52'),
(115, 15, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:55:50', '2018-04-23 10:55:50'),
(116, 16, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:56:45', '2018-04-23 10:56:45'),
(117, 17, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:57:29', '2018-04-23 10:57:29'),
(118, 18, '[{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"/uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'room_type', '2018-04-23 10:58:17', '2018-04-23 10:58:17'),
(119, 1, NULL, 'tour', '2018-04-23 11:02:38', '2018-04-23 11:02:38'),
(120, 19, '[{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603736.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315140039604211.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020218440039576985.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020315020039603730.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020217110039573814.jpg\",\"description\":null},{\"img\":\"\\/uploads\\/1\\/khach-san\\/starcity\\/1158838-16020215590039570222-1.jpg\",\"description\":null}]', 'tour', '2018-04-23 11:03:50', '2018-04-23 11:04:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(45, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_content_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_content_id`, `lang_meta_code`, `lang_meta_reference`, `lang_meta_origin`) VALUES
(2, 2, 'vi', 'category', 'f91edf0e9887e35c28d2678742f4aa71'),
(9, 3, 'vi', 'post', '4286fb8a6b7cf79647aeee6cde81a492'),
(11, 5, 'vi', 'category', 'ce382b54133b402b2502aec643996f3a'),
(14, 8, 'vi', 'category', '7e5cb1b87c911bd2680479f5d87e025f'),
(17, 11, 'vi', 'category', '7e034ef3bd0b08622e6a5c837397af7b'),
(20, 14, 'vi', 'category', '2fd6f6641245eab7e85a0f2c28b77792'),
(23, 17, 'vi', 'category', '94dad0425195a4e205acc071c7faf8f1'),
(26, 20, 'vi', 'category', '471da936bf712ca9c02566901e72c30b'),
(34, 7, 'vi', 'post', '39e5cfc3ca6150907e8c00d67897984c'),
(37, 10, 'vi', 'post', 'ece3545c232f44945df1fa0ed04ada5c'),
(40, 13, 'vi', 'post', '25e98c163514c39efcd6e5f5057bf83d'),
(43, 16, 'vi', 'post', '1494e9e2e99434cfb3cbab7f62131ae1'),
(46, 19, 'vi', 'post', '1f8ad65bb8e98e6fee4caa01341e254b'),
(49, 22, 'vi', 'post', 'ff1bb9571ecb665776b6347e089e4002'),
(52, 25, 'vi', 'post', '176aff45d6f5b6c2f7915660076b1a1a'),
(55, 28, 'vi', 'post', 'd9cca2ed0bd8535753a700a926957850'),
(58, 31, 'vi', 'post', '2aa5cc03c5664c2a0d4421f7b876d1dc'),
(61, 34, 'vi', 'post', '43bedb19513d69823dc3f6c9c7ff9ec7'),
(65, 38, 'vi', 'post', '11f1103989369c3f68f4fd2f83cb1d11'),
(67, 40, 'vi', 'post', '4cdf7738aca3d7988a06e07190da2807'),
(70, 43, 'vi', 'post', '043ce335840389648edc119de6ac04c5'),
(73, 46, 'vi', 'post', '692173849c8f4f07c283c9ce8dd70692'),
(76, 49, 'vi', 'post', '6e2438eb6083960725eb40cfc35844d8'),
(79, 52, 'vi', 'post', 'c5c55ae162fd4c7d1eefad22743362c2'),
(85, 58, 'vi', 'post', 'a6bc5717a0f3752aff1bf9cbba6580bd'),
(88, 61, 'vi', 'post', 'db2fedaa5f2c04a27f97ddaf39084276'),
(91, 2, 'vi', 'page', '65404fd9c64016774aafabc588184059'),
(94, 5, 'vi', 'page', '29a8235a6c4a53e9d468381e2e29d2a9'),
(97, 8, 'vi', 'page', '8def3a8724cf80911c5d4f3eb4b34bc0'),
(100, 2, 'vi', 'menu', '9a06925ba8ec692f1ba557c9e991591e'),
(101, 63, 'vi', 'post', '68ec7bd3d10045f4f8042b33139368df'),
(103, 65, 'vi', 'post', '477e45a8a47e6fae5d4bbd6dc4b37a2b'),
(108, 69, 'vi', 'post', '6b6b950c5fc7cd457f5e77c1c46324a9'),
(110, 2, 'vi', 'gallery', '14a390e5f9a24f74805d56da244a88f0'),
(113, 5, 'vi', 'gallery', '71434fee49a70aff50d1d3b6e16bb4f6'),
(116, 8, 'vi', 'gallery', '0b23398d4133783a04486a06df6862b0'),
(119, 11, 'vi', 'gallery', '6dac5b1e145721e4f258db0b15aec1ef'),
(122, 14, 'vi', 'gallery', '589c13dd815bd5a2bfdb33c8f639aaf0'),
(124, 16, 'vi', 'gallery', 'a0a4ee8598b5c741afc09ece9530fbe3'),
(126, 18, 'vi', 'gallery', '43cac79e86a890e0fd610e669858f519'),
(131, 3, 'vi', 'block', '651a422979ec0798259cff2b015bb937'),
(133, 2, 'vi', 'events', 'b9572b93ffd8fc3d94bfc2d42401a286'),
(135, 1, 'vi', 'gallery', 'f679b44c055d43094be7f0121028b415'),
(136, 1, 'vi', 'page', '2d4ffd8df2583dcfd4c23c5cfa1a4706'),
(137, 1, 'vi', 'menu', '377e89f80bed4e102cf80a1294e2e24f'),
(138, 3, 'vi', 'page', '7c5bae42d165267160637af7534b58a4'),
(139, 4, 'vi', 'page', '55676cfd20e14638f5d5c2211e7a8067'),
(140, 6, 'vi', 'page', 'bf2ffc3e31704ed2e4307e73061ecb30'),
(142, 1, 'vi', 'tour', 'f8183edcca5de54c89662ad1195f6977'),
(143, 1, 'vi', 'block', 'a06d169434bbde1cb85d3e6321cfb416'),
(144, 2, 'vi', 'block', '989b3da41cef6d773d81695bd824ed04'),
(145, 2, 'vi', 'hotel', 'cf13aa38e830fa51e32cfdc7880de6f8'),
(146, 3, 'vi', 'hotel', 'd5d65434c8d33c53ec6e9be54d96a2ce'),
(147, 4, 'vi', 'hotel', '8cbd6147c02ac18af21f85c1eb33fb0c'),
(148, 1, 'vi', 'category', '609c41136b848227bf430e02413f0514'),
(149, 1, 'vi', 'post', '6f3b3f7b858e37ffebf99899e9d09256'),
(150, 2, 'vi', 'post', '3ac8ad3b981f63f16aa47f4fe0f70812'),
(151, 4, 'vi', 'post', '5ecd254ca37126ae7b200ecef59fa947'),
(152, 3, 'vi', 'category', 'c7e1cab5be10112d966c6dcbb8eb5352'),
(153, 5, 'vi', 'post', '70d18e551c07f62834d402006f17beb0'),
(154, 6, 'vi', 'post', '7fdc40682b74e63e7aff945560c27166'),
(155, 4, 'vi', 'category', 'bcaecb682c85d7918fb947ac0b5c999e'),
(156, 8, 'vi', 'post', '5a8a5281000d580c0503360497e23c6e'),
(157, 9, 'vi', 'post', 'b0d3b6d22cbdcf7105e9034645289133'),
(158, 11, 'vi', 'post', 'c8e536e951acb49da53b8728e81ab73c'),
(159, 12, 'vi', 'post', 'fa9afcf2782cfb784f705d2867906091'),
(160, 14, 'vi', 'post', '57f0a84248753c4d11bba02d7b09f418'),
(161, 15, 'vi', 'post', '219d9a3965e749aeab75613e4215a7dd'),
(162, 17, 'vi', 'post', '123a1285f5218eabb82f320e33e0eab7'),
(163, 4, 'vi', 'room_type', '9d186f8590771ccfcacd7b2ae007d6a1'),
(164, 5, 'vi', 'apartment', '324c9e1e92d95e31fee4d2edd741c367'),
(165, 5, 'vi', 'hotel', '9d7aef1e9d9369d3aa1b40947c453312'),
(166, 6, 'vi', 'hotel', 'dc6163417d4a054665dd9fa2dbe9c0b2'),
(167, 7, 'vi', 'hotel', '32a5e045a3f55d11102fea451fbcf6a9'),
(168, 6, 'vi', 'apartment', '3fd35de99a02c4d8faa1ccf9a4ff29e2'),
(169, 7, 'vi', 'tour', '65ee540b5f09efc85f42e5cd298b9698'),
(170, 8, 'vi', 'room_type', '743509ed8d6b33136205efa097e28c61'),
(171, 9, 'vi', 'room_type', '66ef2b898e26b9fe5585582f3d951d2c'),
(172, 10, 'vi', 'room_type', '298135986bea322f8bbcdeeffe07683a'),
(173, 11, 'vi', 'room_type', 'c31fd6670c7059aa9e01c350f9d535dc'),
(174, 12, 'vi', 'room_type', 'f0dfad3ace5cbe78face7fb06053e912'),
(175, 13, 'vi', 'room_type', '6950ad8df0b3c0c3b4f8125b1ff84d7d'),
(176, 14, 'vi', 'room_type', '8fdbb2ff84c17aaee6f7cade5fd92c25'),
(177, 15, 'vi', 'room_type', 'e47397497dae78e4bc5062665bbc48d9'),
(178, 16, 'vi', 'room_type', '00a0bcbb48d6d5666320a7662d2c0c15'),
(179, 17, 'vi', 'room_type', '3d67f48e87b19549379bc280702e1fb3'),
(180, 18, 'vi', 'room_type', '56a2605c7aba7f5cabafd12386cfa68b'),
(181, 19, 'vi', 'tour', 'bbb4fe263b7b5a362141875eb8459891');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'logo', 0, 'image/png', 20865, 'uploads/1/logo.png', '[]', '2018-04-12 09:03:55', '2018-04-12 09:03:55', NULL),
(2, 1, 'slide1', 0, 'image/png', 466058, 'uploads/1/slide1.png', '[]', '2018-04-12 09:49:23', '2018-04-12 09:49:23', NULL),
(3, 1, '1158838_16020215590039570222 (1)', 2, 'image/jpeg', 1691, 'uploads/1/khach-san/starcity/1158838-16020215590039570222-1.jpg', '[]', '2018-04-14 07:31:55', '2018-04-14 07:31:55', NULL),
(4, 1, '1158838_16020215590039570222', 2, 'image/jpeg', 53314, 'uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '[]', '2018-04-14 07:31:56', '2018-04-14 07:31:56', NULL),
(5, 1, '1158838_16020217110039573814', 2, 'image/jpeg', 86940, 'uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg', '[]', '2018-04-14 07:31:56', '2018-04-14 07:31:56', NULL),
(6, 1, '1158838_16020218440039576985', 2, 'image/jpeg', 147242, 'uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg', '[]', '2018-04-14 07:31:57', '2018-04-14 07:31:57', NULL),
(7, 1, '1158838_16020315020039603730', 2, 'image/jpeg', 109952, 'uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', '[]', '2018-04-14 07:31:57', '2018-04-14 07:31:57', NULL),
(8, 1, '1158838_16020315020039603736', 2, 'image/jpeg', 131053, 'uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '[]', '2018-04-14 07:31:58', '2018-04-14 07:31:58', NULL),
(9, 1, '1158838_16020315140039604211', 2, 'image/jpeg', 1835, 'uploads/1/khach-san/starcity/1158838-16020315140039604211.jpg', '[]', '2018-04-14 07:31:58', '2018-04-14 07:31:58', NULL),
(10, 1, 'Tour-Đảo-Bình-Ba', 4, 'image/jpeg', 78653, 'uploads/1/tour/dao-binh-ba/tour-dao-binh-ba.jpg', '[]', '2018-04-15 15:21:34', '2018-04-15 15:21:34', NULL),
(11, 1, 'avatar3', 5, 'image/png', 28975, 'uploads/1/khach-hang-danh-gia/avatar3.png', '[]', '2018-04-17 11:00:42', '2018-04-17 11:00:42', NULL),
(12, 1, 'new1', 6, 'image/jpeg', 33755, 'uploads/1/tin-tuc-du-lich/new1.jpg', '[]', '2018-04-18 03:40:17', '2018-04-18 03:40:17', NULL),
(13, 1, 'pr', 0, 'image/png', 385430, 'uploads/1/pr.png', '[]', '2018-04-18 03:57:06', '2018-04-18 03:57:06', NULL),
(14, 1, 'contact-us', 0, 'image/jpeg', 222228, 'uploads/1/contact-us.jpg', '[]', '2018-04-18 04:09:41', '2018-04-18 04:09:41', NULL),
(15, 1, 'brand1', 7, 'image/jpeg', 6604, 'uploads/1/doi-tac-lien-ket/brand1.jpg', '[]', '2018-04-18 15:39:29', '2018-04-18 15:39:29', NULL),
(16, 1, 'brand2', 7, 'image/jpeg', 8036, 'uploads/1/doi-tac-lien-ket/brand2.jpg', '[]', '2018-04-18 15:39:30', '2018-04-18 15:39:30', NULL),
(17, 1, 'brand3', 7, 'image/jpeg', 7498, 'uploads/1/doi-tac-lien-ket/brand3.jpg', '[]', '2018-04-18 15:39:30', '2018-04-18 15:39:30', NULL),
(18, 1, 'brand4', 7, 'image/jpeg', 8493, 'uploads/1/doi-tac-lien-ket/brand4.jpg', '[]', '2018-04-18 15:39:31', '2018-04-18 15:39:31', NULL),
(19, 1, 'page-about-us', 0, 'image/jpeg', 84224, 'uploads/1/page-about-us.jpg', '[]', '2018-04-19 14:56:40', '2018-04-19 14:56:40', NULL),
(20, 1, 'icon1', 0, 'image/png', 2669, 'uploads/1/icon1.png', '[]', '2018-04-22 04:39:44', '2018-04-22 04:39:44', NULL),
(21, 1, 'icon2', 0, 'image/png', 2511, 'uploads/1/icon2.png', '[]', '2018-04-22 04:39:45', '2018-04-22 04:39:45', NULL),
(22, 1, 'icon3', 0, 'image/png', 1419, 'uploads/1/icon3.png', '[]', '2018-04-22 04:39:45', '2018-04-22 04:39:45', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Khách Sạn', 'khach-san', 0, '2018-04-14 07:31:27', '2018-04-14 07:31:27', NULL),
(2, 1, 'StarCity', 'starcity', 1, '2018-04-14 07:31:38', '2018-04-14 07:31:38', NULL),
(3, 1, 'Tour', 'tour', 0, '2018-04-15 15:21:07', '2018-04-15 15:21:07', NULL),
(4, 1, 'Đảo Bình Ba', 'dao-binh-ba', 3, '2018-04-15 15:21:20', '2018-04-15 15:21:20', NULL),
(5, 1, 'Khách Hàng Đánh Giá', 'khach-hang-danh-gia', 0, '2018-04-17 11:00:35', '2018-04-17 11:00:35', NULL),
(6, 1, 'Tin Tức Du Lịch', 'tin-tuc-du-lich', 0, '2018-04-18 03:39:47', '2018-04-18 03:39:47', NULL),
(7, 1, 'Đối Tác Liên Kết', 'doi-tac-lien-ket', 0, '2018-04-18 15:39:15', '2018-04-18 15:39:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `dob`, `phone`, `address`, `company`) VALUES
(1, 'Test User', 'test@gmail.com', '$2y$10$3znVuIKTgwbtyndCpWVxkO13gzmCK38sgpPh35H2toMh15./Kqgm.', NULL, 'WfjlWWsojYZv9jBjJrdmDzTK3f65UU092d1lFfX9ewVfgpOLSFxoIZsvzEkW', '2018-04-20 09:06:22', '2018-04-20 09:06:22', NULL, NULL, NULL, NULL),
(5, 'Thien Pham', 'chithien175@gmail.com', '$2y$10$R95CSA8mgDPbxft1Mzwn4eUTQdOlqXKc.j.y1PtFGEnOiLpBcJQka', NULL, NULL, '2018-04-21 05:16:38', '2018-04-21 05:16:38', NULL, '123123123', 'sfsdfsdfs', 'dfsdfsdf'),
(6, 'fsfsdfsf', 'sdfsdf@gmail.com', '$2y$10$ekmx72Sv.yGXsII.bG0Hi.TOPqxGoSEHQ6qJJKf8onxtZEKGJX9Ny', NULL, 'u4JR3RurmLJp96o0Dqz6qiuu8eUjis9uVeiAAJc5lPv7nv2cS1nk8eMyKBMY', '2018-04-23 05:18:57', '2018-04-23 05:18:57', NULL, '23423423', 'ưefwe', 'sfsdfsdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Menu Chính', 'main-menu', 1, NULL, '2018-04-12 10:28:55', '2018-04-12 10:29:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `related_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `related_id`, `type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, 1, 'page', '', '', 1, 'Giới Thiệu', '', '_self', 0, '2018-04-12 10:29:24', '2018-04-12 10:34:56', NULL),
(3, 1, 0, 0, 'custom-link', '', '', 0, 'Trang Chủ', '', '_self', 0, '2018-04-12 10:34:56', '2018-04-12 10:34:56', NULL),
(4, 1, 0, 2, 'page', '', '', 2, 'Địa Điểm', '', '_self', 0, '2018-04-12 16:23:33', '2018-04-12 16:29:58', NULL),
(5, 1, 0, 3, 'page', '', '', 3, 'Tour', '', '_self', 0, '2018-04-12 16:29:58', '2018-04-12 16:34:24', NULL),
(6, 1, 0, 4, 'page', '', '', 4, 'FAQ', '', '_self', 0, '2018-04-12 16:34:24', '2018-04-12 16:39:23', NULL),
(7, 1, 0, 5, 'page', '', '', 5, 'Liên Hệ', '', '_self', 0, '2018-04-12 16:39:23', '2018-04-12 16:44:30', NULL),
(8, 1, 0, 6, 'page', '', 'fab fa-hotjar', 6, 'Khuyến Mãi', 'khuyen-mai', '_self', 0, '2018-04-12 16:44:30', '2018-04-12 16:52:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `content_id`, `meta_key`, `meta_value`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 10:09:00', '2018-04-12 10:09:00'),
(2, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 16:22:16', '2018-04-12 16:22:16'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 16:29:23', '2018-04-12 16:29:23'),
(4, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 16:34:10', '2018-04-12 16:34:10'),
(5, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 16:39:10', '2018-04-12 16:39:10'),
(6, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'page', '2018-04-12 16:43:33', '2018-04-12 16:43:33'),
(8, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tour', '2018-04-15 15:22:13', '2018-04-15 15:22:13'),
(9, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-16 08:49:49', '2018-04-16 08:49:49'),
(10, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-16 08:54:53', '2018-04-16 08:54:53'),
(11, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-16 08:55:26', '2018-04-16 08:55:26'),
(12, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-17 02:35:57', '2018-04-17 02:35:57'),
(13, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-17 10:38:07', '2018-04-17 10:38:07'),
(14, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-17 11:02:45', '2018-04-17 11:02:45'),
(15, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-17 11:03:18', '2018-04-17 11:03:18'),
(16, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-17 11:10:34', '2018-04-17 11:10:34'),
(17, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-17 11:10:53', '2018-04-17 11:10:53'),
(18, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-18 03:30:14', '2018-04-18 03:30:14'),
(19, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 03:40:43', '2018-04-18 03:40:43'),
(20, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 03:41:33', '2018-04-18 03:41:33'),
(21, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-18 15:31:15', '2018-04-18 15:31:15'),
(22, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 15:39:48', '2018-04-18 15:39:48'),
(23, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 15:40:44', '2018-04-18 15:40:44'),
(24, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 15:41:11', '2018-04-18 15:41:11'),
(25, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 15:41:36', '2018-04-18 15:41:36'),
(26, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-18 15:45:02', '2018-04-18 15:45:02'),
(27, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:14:38', '2018-04-19 08:14:38'),
(28, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:15:11', '2018-04-19 08:15:11'),
(29, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'category', '2018-04-19 08:38:01', '2018-04-19 08:38:01'),
(30, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:39:34', '2018-04-19 08:39:34'),
(31, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:40:13', '2018-04-19 08:40:13'),
(32, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:40:29', '2018-04-19 08:40:29'),
(33, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'post', '2018-04-19 08:40:59', '2018-04-19 08:40:59'),
(34, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-19 15:47:22', '2018-04-19 15:47:22'),
(35, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'apartment', '2018-04-20 04:01:56', '2018-04-20 04:01:56'),
(36, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-21 05:19:15', '2018-04-21 05:19:15'),
(37, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-21 05:21:37', '2018-04-21 05:21:37'),
(38, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'hotel', '2018-04-21 05:22:17', '2018-04-21 05:22:17'),
(39, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'apartment', '2018-04-21 05:24:10', '2018-04-21 05:24:10'),
(40, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tour', '2018-04-21 05:25:41', '2018-04-21 05:25:41'),
(41, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-22 05:37:31', '2018-04-22 05:37:31'),
(42, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:42:27', '2018-04-23 10:42:27'),
(43, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:43:37', '2018-04-23 10:43:37'),
(44, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:48:27', '2018-04-23 10:48:27'),
(45, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:49:24', '2018-04-23 10:49:24'),
(46, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:54:04', '2018-04-23 10:54:04'),
(47, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:54:52', '2018-04-23 10:54:52'),
(48, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:55:50', '2018-04-23 10:55:50'),
(49, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:56:45', '2018-04-23 10:56:45'),
(50, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:57:29', '2018-04-23 10:57:29'),
(51, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'room_type', '2018-04-23 10:58:17', '2018-04-23 10:58:17'),
(52, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}]', 'tour', '2018-04-23 11:03:50', '2018-04-23 11:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_10_230148_create_acl_tables', 1),
(5, '2016_06_14_230857_create_menus_table', 1),
(6, '2016_06_28_221418_create_pages_table', 1),
(7, '2016_10_05_074239_create_setting_table', 1),
(8, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(9, '2016_12_16_084601_create_widgets_table', 1),
(10, '2017_05_09_070343_create_media_tables', 1),
(11, '2017_10_04_140938_create_member_table', 1),
(12, '2015_06_18_033822_create_blog_table', 2),
(13, '2016_06_17_091537_create_contacts_table', 3),
(14, '2016_10_13_150201_create_galleries_table', 4),
(15, '2017_02_13_034601_create_blocks_table', 5),
(16, '2016_10_03_032336_create_languages_table', 6),
(17, '2015_06_29_025744_create_audit_history', 7),
(18, '2017_03_27_150646_re_create_custom_field_tables', 8),
(19, '2015_08_15_122343_create_notes_table', 9),
(20, '2016_05_28_112028_create_system_request_logs_table', 10),
(21, '2016_10_07_193005_create_translations_table', 11),
(22, '2017_10_22_010000_add_some_member_columns', 12),
(23, '2017_11_03_070450_create_slug_table', 12),
(24, '2017_11_16_160440_remove_slug_fields', 12),
(25, '2017_11_17_011800_remove_slug_column_table_page', 12),
(26, '2017_11_20_010816_remove_column_slug_in_galleries_table', 12),
(27, '2017_12_21_041602_update_menu_nodes_type', 13),
(28, '2017_12_21_041904_update_menu_nodes_type_for_blog', 13),
(29, '2018_01_24_002113_allow_column_password_null', 14),
(30, '2018_03_01_003229_remove_features_data', 15),
(31, '2018_03_01_004130_remove_invites_table', 15),
(32, '2018_03_14_081936_remove_table_plugins', 15),
(33, '2018_03_14_095112_remove_permissions_tables', 15),
(34, '2016_06_01_000001_create_oauth_auth_codes_table', 16),
(35, '2016_06_01_000002_create_oauth_access_tokens_table', 16),
(36, '2016_06_01_000003_create_oauth_refresh_tokens_table', 16),
(37, '2016_06_01_000004_create_oauth_clients_table', 16),
(38, '2016_06_01_000005_create_oauth_personal_access_clients_table', 16),
(41, '2018_04_04_140950_create_botonAddon_table', 17),
(43, '2018_04_05_153938_create_events_table', 18),
(44, '2018_04_09_100307_add_other_content_to_category_table', 19),
(45, '2018_04_13_190612_create_servicer_table', 20),
(46, '2018_04_15_225006_add_column_servicer_and_create_promotion_table', 21),
(47, '2018_04_17_095212_create_booking_table', 22),
(48, '2018_04_21_112142_add_address_company_columns', 23),
(49, '2018_04_23_130727_add_column_ip_for_booking_table', 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
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
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nPvD6nCdZ4u5VDofwCaCrg9DTBpkMOJopp2JjdjR', 'http://localhost', 1, 0, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20'),
(2, NULL, 'Laravel Password Grant Client', 'yoMn1m1jBDOZAAfwX7qOagkGrAoazmzujgLAfpyI', 'http://localhost', 0, 1, 0, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-20 21:07:20', '2018-03-20 21:07:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('09a880ccdf4f35761565b221378b611954a090fd48a2a710b1531feccced42a104d7208d38508258', '6ec25d436833eb08e9c574e208ce65ee59561517d49f0ac952d292eb80d976bfb11805a6e28f94dc', 0, '2018-04-20 04:08:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `status`, `user_id`, `image`, `template`, `parent_id`, `icon`, `featured`, `order`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', '<h4>Suy nghĩ của chúng tôi</h4>\r\n<p>Cha mẹ vất cả cả đời, đến tuổi về chiều muốn được dành khoản thời gian còn lại để thư giản và muốn được vây quần bên con cái và cháu chắt…</p>\r\n<p>Một gia đình ở đó cha bận rộn với công việc xã hội, mẹ đầu tắt mặt tối với công việc nội trợ, những đứa trẻ đi học từ sáng đến tối muộn, … họ cần có khoản không gian và thời gian để được nhìn lại nhau, hâm nóng và yêu thương nhau.</p>\r\n<p>Những bạn trẻ luôn muốn khẳng định mình với công ty và xã hội, họ lao vào công việc mà quên rằng cuộc sống không chỉ có công việc và khi giật mình nhận ra, họ đang thiếu những giây phút tận hưởng cuộc sống cùng bạn bè và người thân…</p>\r\n<p>Và còn nhiều nhiều người khác…. Họ cần có những địa điểm, họ cần có những kỳ nghỉ để được bên nhau và thư giản tái tạo năng lượng…</p>\r\n<h4>Tại sao bạn chọn chúng tôi?</h4>\r\n<p>Sự lên ngôi của thời đại công nghệ khiến cho mọi thứ trở nên nhỏ bé hơn, thế giới trở nên gần với chúng ta hơn. Chỉ với một “click” chuột, bạn có thể mua bất cứ thứ gì mình muốn, dĩ nhiên là phải trả tiến bạn nhé.</p>\r\n<p>Tuy nhiên, sự bề bộn trong công việc, những nguyên tắc giờ giấc trong công sở, khiến bạn không có đủ thời gian để đến trực tiếp công ty du lịch để đặt dịch vụ, các bạn cũng không có đủ thời gian để lục tìm nhiều thông tin trên nhiều trang website khác nhau, và càng không biết độ tin cậy của những website này.</p>\r\n<p>Hiểu được những điều đó, công ty LK đã xây dựng 01 website đặt phòng và tour du lịch địa phương uy tín, đảm bảo:</p>\r\n<p>Luôn luôn có phòng dù ngày cao điểm hay tháng thấp điểm.</p>\r\n<p>Thao tác đặt dịch vụ đơn giản nhất, nhanh chóng nhất.</p>\r\n<p>Nhận được nhiều ưu đãi và khuyến mãi thường xuyên.</p>\r\n<p>Thanh toán nhanh chóng và phù hợp nhất.</p>\r\n<h4>Định hướng phát triển</h4>\r\n<p>LK - Book2go</p>\r\n<p>- Dịch vụ lưu trú</p>\r\n<p>- Dịch vụ tour ghép</p>\r\n<p>LK - Hospitality</p>\r\n<p>- Dự án khách sạn Aries</p>\r\n<p>- Dự án khách sạn</p>\r\n<p>LK - Invest</p>\r\n<p>- LK Homstay</p>\r\n<p>- Khách sạn Amour</p>\r\n<p>LK - Land</p>\r\n<p>- Nhà phố</p>\r\n<p>- Đất nền</p>\r\n<p>LK - Transportation</p>\r\n<p>- Xe đón tiễn sân bay</p>\r\n<p>- Thuê dòng xe cao cấp</p>', 1, 1, '/uploads/1/contact-us.jpg', 'about-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 10:09:00', '2018-04-22 04:31:22'),
(2, 'Địa Điểm', '<p>Địa Điểm</p>', 1, 1, NULL, 'hotel-list-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 16:22:16', '2018-04-14 07:37:52'),
(3, 'Tour', '<p>Tour</p>', 1, 1, NULL, 'tour-list-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 16:29:23', '2018-04-15 15:18:35'),
(4, 'FAQs', '<p>FAQ</p>', 1, 1, '/uploads/1/contact-us.jpg', 'faq-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 16:34:10', '2018-04-19 15:11:10'),
(5, 'Liên Hệ', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate odit minima aut, tempore id laudantium consectetur delectus aspernatur quas obcaecati harum aliquam voluptatem, labore molestiae asperiores, non explicabo quia sunt!</div>', 1, 1, '/uploads/1/contact-us.jpg', 'contact-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 16:39:10', '2018-04-19 15:14:38'),
(6, 'Khuyến Mãi', '<p>Khuyến Mãi</p>', 1, 1, NULL, 'getit-template', 0, NULL, 0, 0, NULL, NULL, '2018-04-12 16:43:33', '2018-04-12 16:43:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('minhsang2603@gmail.com', '$2y$10$kWX7Vm.TR02TvQ426QLR2uzK6/JjiYIwE.ruTXH6eBQdS8mV5aL0a', '2018-01-24 03:40:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `other_content` text COLLATE utf8mb4_unicode_ci,
  `book_now` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `image`, `views`, `format_type`, `deleted_at`, `created_at`, `updated_at`, `post_type`, `template`, `other_image`, `order`, `other_content`, `book_now`) VALUES
(1, 'Khách Hàng 1', 'On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.</span></p>', 1, 1, 0, '/uploads/1/khach-hang-danh-gia/avatar3.png', 0, NULL, NULL, '2018-04-17 11:02:45', '2018-04-18 15:41:59', NULL, 'default-post-template', NULL, 0, NULL, 0),
(2, 'Khách Hàng 2', 'On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.</span></p>', 1, 1, 0, '/uploads/1/khach-hang-danh-gia/avatar3.png', 0, NULL, NULL, '2018-04-17 11:03:18', '2018-04-18 15:42:01', NULL, 'default-post-template', NULL, 0, NULL, 0),
(3, 'Khách Hàng 3', 'On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.</span></p>', 1, 1, 0, '/uploads/1/khach-hang-danh-gia/avatar3.png', 0, NULL, NULL, '2018-04-17 11:10:34', '2018-04-18 15:42:03', NULL, 'default-post-template', NULL, 0, NULL, 0),
(4, 'Khách Hàng 4', 'On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: center;\">On behalf of a group of four Czechs, I would like to thank you very much for very well organized journey to both parts of Vietnam. Wishing you personally and your company in general every success.</span></p>', 1, 1, 0, '/uploads/1/khach-hang-danh-gia/avatar3.png', 0, NULL, NULL, '2018-04-17 11:10:53', '2018-04-18 15:42:05', NULL, 'default-post-template', NULL, 0, NULL, 0),
(5, 'News Demo 1', 'News Demo 1', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div> </div>\r\n</div>', 1, 1, 0, '/uploads/1/tin-tuc-du-lich/new1.jpg', 1, NULL, NULL, '2018-04-18 03:40:43', '2018-04-18 04:09:55', NULL, 'news-detail-template', '/uploads/1/contact-us.jpg', 0, NULL, 0),
(6, 'News Demo 2', 'News Demo 2', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium quo in eos libero error excepturi magni officiis esse dolores sunt ex itaque veniam quod nisi perferendis numquam, nulla, expedita beatae.</div>\r\n<div> </div>', 1, 1, 0, '/uploads/1/tin-tuc-du-lich/new1.jpg', 1, NULL, NULL, '2018-04-18 03:41:33', '2018-04-22 04:41:51', NULL, 'news-detail-template', NULL, 0, NULL, 0),
(7, 'Đối Tác 1', 'https://www.google.com.vn/', '<p>https://www.google.com.vn/</p>', 1, 1, 0, '/uploads/1/doi-tac-lien-ket/brand1.jpg', 0, NULL, NULL, '2018-04-18 15:39:48', '2018-04-18 15:39:59', NULL, 'default-post-template', NULL, 0, NULL, 0),
(8, 'Đối Tác 2', 'https://www.google.com.vn/', '<p>https://www.google.com.vn/</p>', 1, 1, 0, '/uploads/1/doi-tac-lien-ket/brand2.jpg', 0, NULL, NULL, '2018-04-18 15:40:44', '2018-04-18 15:40:44', NULL, 'default-post-template', NULL, 0, NULL, 0),
(9, 'Đối Tác 3', 'https://www.google.com.vn/', '<p>https://www.google.com.vn/</p>', 1, 1, 0, '/uploads/1/doi-tac-lien-ket/brand3.jpg', 0, NULL, NULL, '2018-04-18 15:41:11', '2018-04-18 15:41:11', NULL, 'default-post-template', NULL, 0, NULL, 0),
(10, 'Đối Tác 4', 'https://www.google.com.vn/', '<p>https://www.google.com.vn/</p>', 1, 1, 0, '/uploads/1/doi-tac-lien-ket/brand4.jpg', 0, NULL, NULL, '2018-04-18 15:41:36', '2018-04-18 15:41:36', NULL, 'default-post-template', NULL, 0, NULL, 0),
(11, 'Đối Tác 5', 'https://google.com.vn', '<p>https://google.com.vn</p>', 1, 1, 0, '/uploads/1/doi-tac-lien-ket/brand1.jpg', 0, NULL, NULL, '2018-04-18 15:45:01', '2018-04-18 15:45:01', NULL, 'default-post-template', NULL, 0, NULL, 0),
(12, 'Câu hỏi công ty 1', 'How it works?', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:14:38', '2018-04-19 08:14:38', NULL, 'default-post-template', NULL, 0, NULL, 0),
(13, 'Câu hỏi công ty 2', 'How it work?', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:15:11', '2018-04-19 08:15:11', NULL, 'default-post-template', NULL, 0, NULL, 0),
(14, 'Câu hỏi FAQs 1', 'How it works?', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:39:34', '2018-04-19 08:39:34', NULL, 'default-post-template', NULL, 0, NULL, 0),
(15, 'Câu hỏi FAQs 2', 'Câu hỏi FAQs 2', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:40:13', '2018-04-19 08:40:13', NULL, 'default-post-template', NULL, 0, NULL, 0),
(16, 'Câu hỏi FAQs 3', 'Câu hỏi FAQs 3', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:40:29', '2018-04-19 08:40:29', NULL, 'default-post-template', NULL, 0, NULL, 0),
(17, 'Câu hỏi FAQs 4', 'Câu hỏi FAQs 4', '<p><span style=\"color: #465a66; font-family: mallory, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, aliquam netus amet, tempor sit, mauris nam lorem. Non sodales venenatis, laoreet amet. Nullam eu, non enim, auctor euismod. Arcu sed justo, consequat sem, vel habitant. Felis vestibulum, vehicula condimentum. Nunc eget a.</span></p>', 1, 1, 0, NULL, 0, NULL, NULL, '2018-04-19 08:40:59', '2018-04-19 08:40:59', NULL, 'default-post-template', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `category_id`, `post_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 3, 6, NULL, '2018-04-18 04:03:20', '2018-04-18 04:03:20'),
(10, 3, 5, NULL, '2018-04-18 04:09:55', '2018-04-18 04:09:55'),
(12, 4, 7, NULL, '2018-04-18 15:39:59', '2018-04-18 15:39:59'),
(13, 4, 8, NULL, '2018-04-18 15:40:44', '2018-04-18 15:40:44'),
(14, 4, 9, NULL, '2018-04-18 15:41:11', '2018-04-18 15:41:11'),
(15, 4, 10, NULL, '2018-04-18 15:41:36', '2018-04-18 15:41:36'),
(16, 2, 1, NULL, '2018-04-18 15:41:59', '2018-04-18 15:41:59'),
(17, 2, 2, NULL, '2018-04-18 15:42:01', '2018-04-18 15:42:01'),
(18, 2, 3, NULL, '2018-04-18 15:42:03', '2018-04-18 15:42:03'),
(19, 2, 4, NULL, '2018-04-18 15:42:05', '2018-04-18 15:42:05'),
(20, 4, 11, NULL, '2018-04-18 15:45:02', '2018-04-18 15:45:02'),
(21, 1, 12, NULL, '2018-04-19 08:14:38', '2018-04-19 08:14:38'),
(22, 1, 13, NULL, '2018-04-19 08:15:11', '2018-04-19 08:15:11'),
(23, 5, 14, NULL, '2018-04-19 08:39:34', '2018-04-19 08:39:34'),
(24, 5, 15, NULL, '2018-04-19 08:40:13', '2018-04-19 08:40:13'),
(25, 5, 16, NULL, '2018-04-19 08:40:29', '2018-04-19 08:40:29'),
(26, 5, 17, NULL, '2018-04-19 08:40:59', '2018-04-19 08:40:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_used` int(11) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `description`, `content`, `code`, `start_date`, `end_date`, `cost`, `quantity`, `quantity_used`, `status`, `user_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến Mãi 1 (Hotel demo 1)', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.', NULL, NULL, '2018-04-25 10:59:08', '2018-04-30 10:59:16', '10.00', NULL, NULL, 1, 1, NULL, '2018-04-23 11:01:22', '2018-04-22 03:59:33', '2018-04-23 11:01:22'),
(2, 'Khuyến Mãi 2 (Hotel Demo 2 giảm 5%)', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.', NULL, NULL, '2018-04-22 11:00:14', '2018-04-30 11:00:48', '5.00', NULL, NULL, 1, 1, NULL, NULL, '2018-04-22 04:00:54', '2018-04-23 05:05:39'),
(3, 'Khuyến mãi hotel 3', 'Test km hotel 3', NULL, NULL, '2018-04-23 18:00:23', '2018-04-30 18:00:27', '4.00', NULL, NULL, 1, 1, NULL, NULL, '2018-04-23 11:00:42', '2018-04-23 11:00:42'),
(4, 'Demo Khuyến mãi hotel 1', 'Test km hotel 1 - 6%', NULL, NULL, '2018-04-23 18:01:35', '2018-04-30 18:01:38', '6.00', NULL, NULL, 1, 1, NULL, NULL, '2018-04-23 11:01:54', '2018-04-23 11:01:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_servicer`
--

CREATE TABLE `promotion_servicer` (
  `id` int(10) UNSIGNED NOT NULL,
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotion_servicer`
--

INSERT INTO `promotion_servicer` (`id`, `promotion_id`, `reference_id`, `reference`, `deleted_at`, `created_at`, `updated_at`) VALUES
(28, 2, 3, 'hotel', NULL, NULL, NULL),
(29, 2, 0, 'tour', NULL, NULL, NULL),
(30, 2, 0, 'apartment', NULL, NULL, NULL),
(31, 1, 2, 'hotel', NULL, NULL, NULL),
(32, 1, 4, 'room_type', NULL, NULL, NULL),
(33, 1, 8, 'room_type', NULL, NULL, NULL),
(34, 1, 0, 'tour', NULL, NULL, NULL),
(35, 1, 0, 'apartment', NULL, NULL, NULL),
(36, 3, 4, 'hotel', NULL, NULL, NULL),
(37, 3, 11, 'room_type', NULL, NULL, NULL),
(38, 3, 12, 'room_type', NULL, NULL, NULL),
(39, 3, 0, 'tour', NULL, NULL, NULL),
(40, 3, 0, 'apartment', NULL, NULL, NULL),
(41, 4, 2, 'hotel', NULL, NULL, NULL),
(42, 4, 4, 'room_type', NULL, NULL, NULL),
(43, 4, 8, 'room_type', NULL, NULL, NULL),
(44, 4, 0, 'tour', NULL, NULL, NULL),
(45, 4, 0, 'apartment', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `request_logs`
--

CREATE TABLE `request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://localhost:8000/assets/main-project/img/brand1.jpg', 12, NULL, NULL, '2018-04-12 09:01:43', '2018-04-12 09:33:08'),
(2, 404, 'http://localhost:8000/assets/main-project/img/brand2.jpg', 12, NULL, NULL, '2018-04-12 09:01:43', '2018-04-12 09:33:08'),
(3, 404, 'http://localhost:8000/assets/main-project/img/brand3.jpg', 12, NULL, NULL, '2018-04-12 09:01:44', '2018-04-12 09:33:08'),
(4, 404, 'http://localhost:8000/assets/main-project/img/brand4.jpg', 13, NULL, NULL, '2018-04-12 09:01:44', '2018-04-12 09:33:09'),
(5, 404, 'http://localhost:8000/images/favicon.png', 190, NULL, NULL, '2018-04-12 09:01:54', '2018-04-15 16:17:44'),
(6, 404, 'http://localhost:8000/vendor/core/images/ui/nav_arrow_right.pn', 577, NULL, NULL, '2018-04-12 09:02:31', '2018-04-23 11:24:48'),
(7, 404, 'http://localhost:8000/uploads/1/banner/boton-vertical-logo2.png', 1, NULL, NULL, '2018-04-12 09:05:41', '2018-04-12 09:05:41'),
(8, 404, 'http://localhost:8000/assets/main-project/img/slide1.png', 3, NULL, NULL, '2018-04-12 09:15:16', '2018-04-12 09:18:39'),
(9, 404, 'http://localhost:8000/assets/main-project/img/icon3.png', 6, NULL, NULL, '2018-04-12 09:15:16', '2018-04-12 09:30:11'),
(10, 404, 'http://localhost:8000/assets/main-project/img/icon2.png', 5, NULL, NULL, '2018-04-12 09:15:17', '2018-04-12 09:28:57'),
(11, 404, 'http://localhost:8000/assets/main-project/img/icon1.png', 5, NULL, NULL, '2018-04-12 09:15:17', '2018-04-12 09:28:57'),
(12, 404, 'http://localhost:8000/assets/main-project/img/pr.png', 6, NULL, NULL, '2018-04-12 09:15:17', '2018-04-12 09:30:11'),
(13, 404, 'http://localhost:8000/assets/main-project/img/3.jpg', 9, NULL, NULL, '2018-04-12 09:15:17', '2018-04-12 16:30:05'),
(14, 404, 'http://localhost:8000/assets/main-project/img/avatar3.png', 6, NULL, NULL, '2018-04-12 09:15:18', '2018-04-12 09:30:12'),
(15, 404, 'http://localhost:8000/assets/main-project/img/new1.jpg', 7, NULL, NULL, '2018-04-12 09:15:18', '2018-04-12 16:58:42'),
(16, 404, 'http://localhost:8000/themes/book2go/assets/popper/js/popper.min.js.map', 537, NULL, NULL, '2018-04-12 09:15:35', '2018-04-23 11:19:04'),
(17, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/js/bootstrap.min.js.map', 536, NULL, NULL, '2018-04-12 09:15:35', '2018-04-23 11:19:05'),
(18, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/css/bootstrap.min.css.map', 563, NULL, NULL, '2018-04-12 09:15:36', '2018-04-23 11:19:04'),
(19, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/css/assets/main-project/img/brand1.jpg', 2, NULL, NULL, '2018-04-12 09:17:56', '2018-04-12 09:17:57'),
(20, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/css/assets/main-project/img/brand2.jpg', 1, NULL, NULL, '2018-04-12 09:17:56', '2018-04-12 09:17:56'),
(21, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/css/assets/main-project/img/brand3.jpg', 1, NULL, NULL, '2018-04-12 09:17:57', '2018-04-12 09:17:57'),
(22, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap/css/assets/main-project/img/brand4.jpg', 1, NULL, NULL, '2018-04-12 09:17:57', '2018-04-12 09:17:57'),
(23, 404, 'http://localhost:8000/assets/main-project/img/assets/main-project/img/brand1.jpg', 2, NULL, NULL, '2018-04-12 09:18:40', '2018-04-12 09:18:41'),
(24, 404, 'http://localhost:8000/assets/main-project/img/assets/main-project/img/brand2.jpg', 1, NULL, NULL, '2018-04-12 09:18:40', '2018-04-12 09:18:40'),
(25, 404, 'http://localhost:8000/assets/main-project/img/assets/main-project/img/brand3.jpg', 1, NULL, NULL, '2018-04-12 09:18:41', '2018-04-12 09:18:41'),
(26, 404, 'http://localhost:8000/assets/main-project/img/assets/main-project/img/brand4.jpg', 1, NULL, NULL, '2018-04-12 09:18:41', '2018-04-12 09:18:41'),
(27, 404, 'http://localhost:8000/themes/book2go/assets/popper/js/assets/main-project/img/brand1.jpg', 1, NULL, NULL, '2018-04-12 09:24:55', '2018-04-12 09:24:55'),
(28, 404, 'http://localhost:8000/themes/book2go/assets/popper/js/assets/main-project/img/brand2.jpg', 1, NULL, NULL, '2018-04-12 09:24:55', '2018-04-12 09:24:55'),
(29, 404, 'http://localhost:8000/themes/book2go/assets/popper/js/assets/main-project/img/brand3.jpg', 1, NULL, NULL, '2018-04-12 09:24:55', '2018-04-12 09:24:55'),
(30, 404, 'http://localhost:8000/themes/book2go/assets/popper/js/assets/main-project/img/brand4.jpg', 1, NULL, NULL, '2018-04-12 09:24:55', '2018-04-12 09:24:55'),
(31, 404, 'http://localhost:8000/about.html', 3, '[1]', NULL, '2018-04-12 10:06:02', '2018-04-12 10:20:10'),
(32, 404, 'http://localhost:8000/gioi-thieu.html', 1, '[1]', NULL, '2018-04-12 10:08:46', '2018-04-12 10:08:46'),
(33, 404, 'http://localhost:8000/assets/main-project/img/page-about-us.jpg', 6, NULL, NULL, '2018-04-12 10:20:17', '2018-04-12 17:01:17'),
(34, 404, 'http://localhost:8000/search-result.html', 1, NULL, NULL, '2018-04-13 08:43:32', '2018-04-13 08:43:32'),
(35, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap-daterangepicker/bootstrap-daterangepicker.css', 1, NULL, NULL, '2018-04-14 04:13:48', '2018-04-14 04:13:48'),
(36, 404, 'http://localhost:8000/themes/book2go/assets/bootstrap-daterangepicker/bootstrap-daterangepicker.js', 1, NULL, NULL, '2018-04-14 04:13:48', '2018-04-14 04:13:48'),
(37, 404, 'http://localhost:8000/ks-detail.html', 2, '[1]', NULL, '2018-04-14 05:56:07', '2018-04-16 14:01:51'),
(38, 404, 'http://localhost:8000/starcity-nha-trang-hotel.html', 9, '[1]', NULL, '2018-04-14 07:32:38', '2018-04-14 08:17:54'),
(39, 404, 'http://localhost:8000/assets/main-project/img/ks-detail1.jpg', 1, NULL, NULL, '2018-04-14 08:28:39', '2018-04-14 08:28:39'),
(40, 404, 'http://localhost:8000/assets/main-project/img/ks-detail4.jpg', 1, NULL, NULL, '2018-04-14 08:28:39', '2018-04-14 08:28:39'),
(41, 404, 'http://localhost:8000/assets/main-project/img/ks-detail2.jpg', 1, NULL, NULL, '2018-04-14 08:28:39', '2018-04-14 08:28:39'),
(42, 404, 'http://localhost:8000/assets/main-project/img/ks-detail3.jpg', 1, NULL, NULL, '2018-04-14 08:28:40', '2018-04-14 08:28:40'),
(43, 404, 'http://localhost:8000/assets/main-project/img/ks-detail5.jpg', 1, NULL, NULL, '2018-04-14 08:28:40', '2018-04-14 08:28:40'),
(44, 404, 'http://localhost:8000/assets/main-project/img/img-map.png', 1, NULL, NULL, '2018-04-14 08:28:40', '2018-04-14 08:28:40'),
(45, 404, 'http://localhost:8000/assets/main-project/img/star.png', 3, NULL, NULL, '2018-04-14 08:28:40', '2018-04-14 08:31:38'),
(46, 404, 'http://localhost:8000/assets/main-project/img/ks-info.jpg', 3, NULL, NULL, '2018-04-14 08:28:41', '2018-04-14 08:31:38'),
(47, 404, 'http://localhost:8000/assets/main-project/img/ks-loaiphong1.jpg', 11, NULL, NULL, '2018-04-14 08:28:41', '2018-04-23 04:43:08'),
(48, 404, 'http://localhost:8000/assets/main-project/img/ks-loaiphong2.jpg', 11, NULL, NULL, '2018-04-14 08:28:41', '2018-04-23 04:43:08'),
(49, 404, 'http://localhost:8000/themes/book2go/assets/main-project/img/img-map.png%22%20alt=', 1, NULL, NULL, '2018-04-14 08:29:39', '2018-04-14 08:29:39'),
(50, 404, 'http://localhost:8000/admin/tour/jquery.contextMenu.min.js.map', 1, NULL, NULL, '2018-04-15 15:21:56', '2018-04-15 15:21:56'),
(51, 404, 'http://localhost:8000/vendor/core/media/packages/jquery-context-menu/jquery.contextMenu.min.css.map', 3, NULL, NULL, '2018-04-15 15:21:56', '2018-04-19 14:55:07'),
(52, 404, 'http://localhost:8000/%7B%7B%20Theme::asset()-%3Eurl(\'main-project/img/star.png\')', 2, NULL, NULL, '2018-04-15 16:02:21', '2018-04-15 16:02:44'),
(53, 404, 'http://localhost:8000/admin/jquery.contextMenu.min.js.map', 1, NULL, NULL, '2018-04-15 16:33:23', '2018-04-15 16:33:23'),
(54, 404, 'http://localhost:8000/admin/plugin', 1, NULL, NULL, '2018-04-15 16:42:46', '2018-04-15 16:42:46'),
(55, 404, 'http://localhost:8000/admin/custom-field', 1, NULL, NULL, '2018-04-15 16:43:25', '2018-04-15 16:43:25'),
(56, 404, 'http://localhost:8000/img/contact-us.jpg', 2, NULL, NULL, '2018-04-18 04:06:44', '2018-04-18 04:06:48'),
(57, 404, 'http://localhost:8000/vendor/core/images/default-image.png', 6, NULL, NULL, '2018-04-18 04:10:09', '2018-04-22 04:41:51'),
(58, 404, 'http://localhost:8000/vendor/core/packages/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css.map', 9, NULL, NULL, '2018-04-18 16:39:14', '2018-04-18 16:47:56'),
(59, 404, 'http://localhost:8000/admin/pages/edit/__image__', 2, '[1]', NULL, '2018-04-19 14:53:56', '2018-04-19 14:54:26'),
(60, 404, 'http://localhost:8000/admin/pages/edit/jquery.contextMenu.min.js.map', 2, '[1]', NULL, '2018-04-19 14:55:06', '2018-04-19 14:55:07'),
(61, 404, 'http://localhost:8000/tour-detail.html', 1, '[1]', NULL, '2018-04-19 17:41:58', '2018-04-19 17:41:58'),
(62, 404, 'http://localhost:8000/member/login', 5, NULL, NULL, '2018-04-20 05:38:44', '2018-04-20 08:36:09'),
(63, 404, 'http://localhost:8000/member/login/ajax', 4, NULL, NULL, '2018-04-20 08:34:34', '2018-04-20 08:35:38'),
(64, 404, 'http://localhost:8000/admin/member', 1, NULL, NULL, '2018-04-20 09:05:22', '2018-04-20 09:05:22'),
(65, 404, 'http://localhost:8000/logout', 2, NULL, NULL, '2018-04-20 09:25:14', '2018-04-20 09:26:08'),
(66, 404, 'http://localhost:8000/tour-booking.html?checkin=2018-04-21&checkout=2018-04-22', 1, '[1]', NULL, '2018-04-21 06:55:34', '2018-04-21 06:55:34'),
(67, 404, 'http://localhost:8000/01', 1, NULL, NULL, '2018-04-22 04:40:41', '2018-04-22 04:40:41'),
(68, 405, 'http://localhost:8000/khuyen-mai.html', 1, NULL, NULL, '2018-04-23 05:08:25', '2018-04-23 05:08:25'),
(69, 404, 'http://localhost:8000/available/assets/main-project/img/brand1.jpg', 6, NULL, NULL, '2018-04-23 11:05:14', '2018-04-23 11:17:10'),
(70, 404, 'http://localhost:8000/available/assets/main-project/img/brand2.jpg', 4, NULL, NULL, '2018-04-23 11:05:14', '2018-04-23 11:17:10'),
(71, 404, 'http://localhost:8000/available/assets/main-project/img/brand3.jpg', 4, NULL, NULL, '2018-04-23 11:05:14', '2018-04-23 11:17:10'),
(72, 404, 'http://localhost:8000/available/assets/main-project/img/brand4.jpg', 4, NULL, NULL, '2018-04-23 11:05:14', '2018-04-23 11:17:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 2, 1, 'name', 'Khách Sạn', 'Địa Điểm', '2018-04-12 16:22:55', '2018-04-12 16:22:55'),
(2, 'Botble\\Page\\Models\\Page', 2, 1, 'template', 'hotel-template', 'hotel-list-template', '2018-04-14 07:37:52', '2018-04-14 07:37:52'),
(3, 'Botble\\Page\\Models\\Page', 3, 1, 'template', 'tour-template', 'tour-list-template', '2018-04-15 15:18:35', '2018-04-15 15:18:35'),
(4, 'Botble\\Servicer\\Models\\Apartment', 1, 1, 'name', 'Tour Bình Ba', 'Tour Bình Ba A', '2018-04-15 15:24:36', '2018-04-15 15:24:36'),
(5, 'Botble\\Servicer\\Models\\Apartment', 1, 1, 'name', 'Tour Bình Ba A', 'Tour Bình Ba', '2018-04-15 15:24:49', '2018-04-15 15:24:49'),
(6, 'Botble\\Servicer\\Models\\Tour', 2, 1, 'deleted_at', NULL, '2018-04-15 22:54:36', '2018-04-15 15:54:36', '2018-04-15 15:54:36'),
(7, 'Botble\\Servicer\\Models\\Tour', 3, 1, 'deleted_at', NULL, '2018-04-15 23:02:38', '2018-04-15 16:02:38', '2018-04-15 16:02:38'),
(8, 'Botble\\Servicer\\Models\\ServiceType', 2, 1, 'image', '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', '2018-04-16 13:55:27', '2018-04-16 13:55:27'),
(9, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, 'About description', '2018-04-17 02:33:24', '2018-04-17 02:33:24'),
(10, 'Botble\\Page\\Models\\Page', 1, 1, 'description', 'About description', 'Chúng tôi là người đồng hành, là trợ lý đắt lực của các bạn cho những kỳ nghỉ dưỡng, hành trình tham quan du lịch.\r\nChúng tôi mang đến cho các bạn những dịch vụ lưu trú và tour du lịch tại địa phương chất lượng tốt, hài lòng cao và thư giản nhất.\r\nChúng tôi là những thành viên kỳ cựu làm việc trong ngành du lịch trong và ngoài nước với nhiều năm kinh nghiệm. \r\n-	Lê Phi Long\r\n-	Nguyễn Thị Bích Khuê', '2018-04-17 07:54:19', '2018-04-17 07:54:19'),
(11, 'Botble\\Page\\Models\\Page', 1, 1, 'description', 'Chúng tôi là người đồng hành, là trợ lý đắt lực của các bạn cho những kỳ nghỉ dưỡng, hành trình tham quan du lịch.\r\nChúng tôi mang đến cho các bạn những dịch vụ lưu trú và tour du lịch tại địa phương chất lượng tốt, hài lòng cao và thư giản nhất.\r\nChúng tôi là những thành viên kỳ cựu làm việc trong ngành du lịch trong và ngoài nước với nhiều năm kinh nghiệm. \r\n-	Lê Phi Long\r\n-	Nguyễn Thị Bích Khuê', NULL, '2018-04-17 08:19:59', '2018-04-17 08:19:59'),
(12, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', NULL, '/uploads/1/khach-hang-danh-gia/avatar3.png', '2018-04-17 11:03:32', '2018-04-17 11:03:32'),
(13, 'Botble\\Servicer\\Models\\ServiceType', 1, 1, 'star', NULL, '4', '2018-04-17 11:27:11', '2018-04-17 11:27:11'),
(14, 'Botble\\Servicer\\Models\\ServiceType', 3, 1, 'star', NULL, '3', '2018-04-17 11:27:27', '2018-04-17 11:27:27'),
(15, 'Botble\\Servicer\\Models\\ServiceType', 4, 1, 'star', NULL, '4', '2018-04-17 11:27:33', '2018-04-17 11:27:33'),
(16, 'Botble\\Blog\\Models\\Post', 5, 1, 'other_image', NULL, '/uploads/1/contact-us.jpg', '2018-04-18 04:09:55', '2018-04-18 04:09:55'),
(17, 'Botble\\Blog\\Models\\Post', 7, 1, 'image', NULL, '/uploads/1/doi-tac-lien-ket/brand1.jpg', '2018-04-18 15:39:59', '2018-04-18 15:39:59'),
(18, 'Botble\\Blog\\Models\\Post', 1, 1, 'template', NULL, 'default-post-template', '2018-04-18 15:41:59', '2018-04-18 15:41:59'),
(19, 'Botble\\Blog\\Models\\Post', 2, 1, 'template', NULL, 'default-post-template', '2018-04-18 15:42:01', '2018-04-18 15:42:01'),
(20, 'Botble\\Blog\\Models\\Post', 3, 1, 'template', NULL, 'default-post-template', '2018-04-18 15:42:03', '2018-04-18 15:42:03'),
(21, 'Botble\\Blog\\Models\\Post', 4, 1, 'template', NULL, 'default-post-template', '2018-04-18 15:42:05', '2018-04-18 15:42:05'),
(22, 'Botble\\Page\\Models\\Page', 1, 1, 'image', NULL, '/uploads/1/contact-us.jpg', '2018-04-19 14:56:53', '2018-04-19 14:56:53'),
(23, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'FAQ', 'Câu Hỏi Thường Gặp', '2018-04-19 15:10:25', '2018-04-19 15:10:25'),
(24, 'Botble\\Page\\Models\\Page', 4, 1, 'image', NULL, '/uploads/1/contact-us.jpg', '2018-04-19 15:10:25', '2018-04-19 15:10:25'),
(25, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Câu Hỏi Thường Gặp', 'FAQs', '2018-04-19 15:11:10', '2018-04-19 15:11:10'),
(26, 'Botble\\Page\\Models\\Page', 5, 1, 'image', NULL, '/uploads/1/contact-us.jpg', '2018-04-19 15:14:38', '2018-04-19 15:14:38'),
(27, 'Botble\\Servicer\\Models\\ServiceType', 1, 1, 'deleted_at', NULL, '2018-04-21 12:18:05', '2018-04-21 05:18:05', '2018-04-21 05:18:05'),
(28, 'Botble\\Servicer\\Models\\ServiceType', 3, 1, 'address', NULL, 'Ninh Hoa, Khanh Hoa', '2018-04-21 05:20:29', '2018-04-21 05:20:29'),
(29, 'Botble\\Servicer\\Models\\ServiceType', 3, 1, 'phone', NULL, '0905160320', '2018-04-21 05:20:29', '2018-04-21 05:20:29'),
(30, 'Botble\\Servicer\\Models\\ServiceType', 4, 1, 'address', NULL, 'Cam Lam, Khanh Hoa', '2018-04-21 05:20:54', '2018-04-21 05:20:54'),
(31, 'Botble\\Servicer\\Models\\ServiceType', 4, 1, 'phone', NULL, '0905160320', '2018-04-21 05:20:54', '2018-04-21 05:20:54'),
(32, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'start_date', '2018-04-25 10:59:08', '2018/04/25 10:59:08', '2018-04-22 03:59:40', '2018-04-22 03:59:40'),
(33, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'end_date', '2018-04-30 10:59:16', '2018/04/30 10:59:16', '2018-04-22 03:59:40', '2018-04-22 03:59:40'),
(34, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'start_date', '2018-04-25 10:59:08', '2018/04/25 10:59:08', '2018-04-22 03:59:56', '2018-04-22 03:59:56'),
(35, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'end_date', '2018-04-30 10:59:16', '2018/04/30 10:59:16', '2018-04-22 03:59:56', '2018-04-22 03:59:56'),
(36, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'cost', NULL, '10', '2018-04-22 03:59:56', '2018-04-22 03:59:56'),
(37, 'Botble\\Servicer\\Models\\RoomType', 4, 1, 'name', 'Room Test 1', 'Room Type A (Hotel 1)', '2018-04-22 05:06:02', '2018-04-22 05:06:02'),
(38, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'description', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.', '2018-04-23 05:05:02', '2018-04-23 05:05:02'),
(39, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'start_date', '2018-04-25 10:59:08', '2018/04/25 10:59:08', '2018-04-23 05:05:02', '2018-04-23 05:05:02'),
(40, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'end_date', '2018-04-30 10:59:16', '2018/04/30 10:59:16', '2018-04-23 05:05:02', '2018-04-23 05:05:02'),
(41, 'Botble\\Servicer\\Models\\Promotion', 2, 1, 'description', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam dolores fugiat expedita porro earum doloribus facere, cumque modi autem quisquam sequi tempora quibusdam minima fuga id deserunt exercitationem accusantium maxime.', '2018-04-23 05:05:05', '2018-04-23 05:05:05'),
(42, 'Botble\\Servicer\\Models\\Promotion', 2, 1, 'start_date', '2018-04-22 11:00:14', '2018/04/22 11:00:14', '2018-04-23 05:05:05', '2018-04-23 05:05:05'),
(43, 'Botble\\Servicer\\Models\\Promotion', 2, 1, 'end_date', '2018-04-30 11:00:48', '2018/04/30 11:00:48', '2018-04-23 05:05:05', '2018-04-23 05:05:05'),
(44, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'start_date', '2018-04-25 10:59:08', '2018/04/25 10:59:08', '2018-04-23 05:05:24', '2018-04-23 05:05:24'),
(45, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'end_date', '2018-04-30 10:59:16', '2018/04/30 10:59:16', '2018-04-23 05:05:24', '2018-04-23 05:05:24'),
(46, 'Botble\\Servicer\\Models\\Promotion', 2, 1, 'start_date', '2018-04-22 11:00:14', '2018/04/22 11:00:14', '2018-04-23 05:05:39', '2018-04-23 05:05:39'),
(47, 'Botble\\Servicer\\Models\\Promotion', 2, 1, 'end_date', '2018-04-30 11:00:48', '2018/04/30 11:00:48', '2018-04-23 05:05:39', '2018-04-23 05:05:39'),
(48, 'Botble\\Servicer\\Models\\ServiceType', 2, 1, 'phone', NULL, '0905160320', '2018-04-23 10:49:49', '2018-04-23 10:49:49'),
(49, 'Botble\\Servicer\\Models\\Apartment', 5, 1, 'address', NULL, 'Nha Trang, Khanh Hoa', '2018-04-23 10:50:03', '2018-04-23 10:50:03'),
(50, 'Botble\\Servicer\\Models\\Apartment', 6, 1, 'address', NULL, 'Nha Trang, Khanh Hoa', '2018-04-23 10:50:13', '2018-04-23 10:50:13'),
(51, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'start_date', '2018-04-25 10:59:08', '2018/04/25 10:59:08', '2018-04-23 10:58:44', '2018-04-23 10:58:44'),
(52, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'end_date', '2018-04-30 10:59:16', '2018/04/30 10:59:16', '2018-04-23 10:58:44', '2018-04-23 10:58:44'),
(53, 'Botble\\Servicer\\Models\\Promotion', 1, 1, 'deleted_at', NULL, '2018-04-23 18:01:22', '2018-04-23 11:01:22', '2018-04-23 11:01:22'),
(54, 'Botble\\Servicer\\Models\\Tour', 1, 1, 'address', NULL, 'Cam Ranh, Khanh Hoa', '2018-04-23 11:02:38', '2018-04-23 11:02:38'),
(55, 'Botble\\Servicer\\Models\\Tour', 19, 1, 'price', NULL, '150000', '2018-04-23 11:04:21', '2018-04-23 11:04:21'),
(56, 'Botble\\Servicer\\Models\\Tour', 19, 1, 'price_children', NULL, '75000', '2018-04-23 11:04:21', '2018-04-23 11:04:21'),
(57, 'Botble\\Servicer\\Models\\Tour', 19, 1, 'address', NULL, 'Nha Trang, Khanh Hoa', '2018-04-23 11:04:21', '2018-04-23 11:04:21'),
(58, 'Botble\\Servicer\\Models\\Booking', 5, 1, 'status', '0', '1', '2018-04-23 11:19:13', '2018-04-23 11:19:13'),
(59, 'Botble\\Servicer\\Models\\Booking', 5, 1, 'fullname', NULL, 'Thien Pham', '2018-04-23 11:19:13', '2018-04-23 11:19:13'),
(60, 'Botble\\Servicer\\Models\\Booking', 5, 1, 'email', NULL, 'chithien175@gmail.com', '2018-04-23 11:19:13', '2018-04-23 11:19:13'),
(61, 'Botble\\Servicer\\Models\\Booking', 5, 1, 'phone', NULL, '0905160320', '2018-04-23 11:19:13', '2018-04-23 11:19:13'),
(62, 'Botble\\Servicer\\Models\\Booking', 5, 1, 'address', NULL, 'Nha Trang, Khanh Hoa Province, Vietnam', '2018-04-23 11:19:13', '2018-04-23 11:19:13'),
(63, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'discount', '0', '60000', '2018-04-23 11:25:00', '2018-04-23 11:25:00'),
(64, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'total', '1000000', '940000', '2018-04-23 11:25:00', '2018-04-23 11:25:00'),
(65, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'notes', NULL, '[{\"promotion_id\":4,\"promotion_name\":\"Demo Khuy\\u1ebfn m\\u00e3i hotel 1\",\"promotion_type\":\"promotion\",\"promotion_cost\":\"6.00\",\"promotion_discount\":60000,\"promotion_extension\":{\"promotion_start_date\":\"2018-04-23\",\"promotion_end_date\":\"2018-04-24\"}}]', '2018-04-23 11:25:00', '2018-04-23 11:25:00'),
(66, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'status', '0', '1', '2018-04-23 11:25:20', '2018-04-23 11:25:20'),
(67, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'fullname', NULL, 'Thien Pham', '2018-04-23 11:25:20', '2018-04-23 11:25:20'),
(68, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'email', NULL, 'chithien175@gmail.com', '2018-04-23 11:25:20', '2018-04-23 11:25:20'),
(69, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'phone', NULL, '0905160320', '2018-04-23 11:25:20', '2018-04-23 11:25:20'),
(70, 'Botble\\Servicer\\Models\\Booking', 6, 1, 'address', NULL, 'Nha Trang, Khanh Hoa Province, Vietnam', '2018-04-23 11:25:20', '2018-04-23 11:25:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'administrators', 'Administrators', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true}', 'Highest role in system', 0, 1, 1, NULL, '2018-01-17 18:00:45', '2018-03-14 21:49:45'),
(2, 'members', 'Members', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true}', 'Member role', 1, 1, 1, NULL, '2018-01-17 18:01:32', '2018-03-14 21:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2018-01-18 08:11:34', '2018-01-18 08:11:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicers`
--

CREATE TABLE `servicers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `price_children` decimal(20,2) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type_id` int(11) DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `number_of_servicer` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicers`
--

INSERT INTO `servicers` (`id`, `name`, `status`, `description`, `content`, `user_id`, `image`, `price`, `price_children`, `adults`, `children`, `format_type`, `service_type_id`, `order`, `number_of_servicer`, `deleted_at`, `created_at`, `updated_at`, `address`) VALUES
(1, 'Tour Bình Ba', 1, 'Tour Bình Ba', '<p>Tour Bình Ba</p>', 1, '/uploads/1/tour/dao-binh-ba/tour-dao-binh-ba.jpg', NULL, NULL, NULL, NULL, 'tour', 0, 0, NULL, NULL, '2018-04-15 15:22:13', '2018-04-23 11:02:38', 'Cam Ranh, Khanh Hoa'),
(2, 'dfgdfgdfg', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tour', 0, 0, NULL, '2018-04-15 15:54:36', '2018-04-15 15:33:54', '2018-04-15 15:54:36', NULL),
(3, 'drgdgdfgdfg', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tour', 0, 0, NULL, '2018-04-15 16:02:38', '2018-04-15 15:54:42', '2018-04-15 16:02:38', NULL),
(4, 'Room Type A (Hotel 1)', 1, 'Room Test 1', '<p>Room Test 1</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '1000000.00', NULL, 2, 2, 'room_type', 2, 0, 10, NULL, '2018-04-19 15:47:22', '2018-04-22 05:06:02', NULL),
(5, 'Căn hộ demo 1', 1, 'Căn hộ demo 1', '<p>Căn hộ demo 1</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '900000.00', NULL, NULL, NULL, 'apartment', 0, 0, 1, NULL, '2018-04-20 04:01:56', '2018-04-23 10:50:03', 'Nha Trang, Khanh Hoa'),
(6, 'Căn Hộ Demo 2', 1, 'Căn Hộ Demo 2', '<p>Căn Hộ Demo 2</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg', '1000000.00', NULL, NULL, NULL, 'apartment', 0, 0, 3, NULL, '2018-04-21 05:24:10', '2018-04-23 10:50:13', 'Nha Trang, Khanh Hoa'),
(7, 'Tour Điệp Sơn', 1, 'Tour Điệp Sơn', '<p>Tour Điệp Sơn</p>', 1, '/uploads/1/tour/dao-binh-ba/tour-dao-binh-ba.jpg', '600000.00', '300000.00', NULL, NULL, 'tour', 0, 0, NULL, NULL, '2018-04-21 05:25:41', '2018-04-21 05:25:41', 'Ninh Hoa, Khanh Hoa'),
(8, 'Room Type B (Hotel 1)', 1, 'Room Type B (Hotel 1)', '<p>Room Type B (Hotel 1)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '600000.00', NULL, 2, 2, 'room_type', 2, 0, 4, NULL, '2018-04-22 05:37:31', '2018-04-22 05:37:31', NULL),
(9, 'Room Type A (Hotel 2)', 1, 'Room Type A (Hotel 2)\r\nRoom Type A (Hotel 2)\r\nRoom Type A (Hotel 2)\r\nRoom Type A (Hotel 2)', '<p>Room Type A (Hotel 2)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg', '2000000.00', NULL, 4, 4, 'room_type', 3, 0, 3, NULL, '2018-04-23 10:42:27', '2018-04-23 10:42:27', NULL),
(10, 'Room Type B (Hotel 2)', 1, 'Room Type B (Hotel 2)\r\nRoom Type B (Hotel 2)\r\nRoom Type B (Hotel 2)\r\nRoom Type B (Hotel 2)', '<p>Room Type B (Hotel 2)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '3000000.00', NULL, 4, 3, 'room_type', 3, 0, 6, NULL, '2018-04-23 10:43:37', '2018-04-23 10:43:37', NULL),
(11, 'Room Type A (Hotel 3)', 1, 'Room Type A (Hotel 3)\r\nRoom Type A (Hotel 3)\r\nRoom Type A (Hotel 3)\r\nRoom Type A (Hotel 3)', '<p>Room Type A (Hotel 3)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '1500000.00', NULL, 2, 2, 'room_type', 4, 0, 5, NULL, '2018-04-23 10:48:27', '2018-04-23 10:48:27', NULL),
(12, 'Room Type B (Hotel 3)', 1, 'Room Type B (Hotel 3)\r\nRoom Type B (Hotel 3)\r\nRoom Type B (Hotel 3)\r\nRoom Type B (Hotel 3)', '<p>Room Type B (Hotel 3)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', '1700000.00', NULL, 3, 3, 'room_type', 4, 0, 3, NULL, '2018-04-23 10:49:24', '2018-04-23 10:49:24', NULL),
(13, 'Room Type A (Hotel 4)', 1, 'Room Type A (Hotel 4)\r\nRoom Type A (Hotel 4)\r\nRoom Type A (Hotel 4)\r\nRoom Type A (Hotel 4)', '<p>Room Type A (Hotel 4)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', '3200000.00', NULL, 4, 2, 'room_type', 5, 0, 4, NULL, '2018-04-23 10:54:04', '2018-04-23 10:54:04', NULL),
(14, 'Room Type B (Hotel 4)', 1, 'Room Type B (Hotel 4)\r\nRoom Type B (Hotel 4)\r\nRoom Type B (Hotel 4)\r\nRoom Type B (Hotel 4)', '<p>Room Type B (Hotel 4)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '4000002.00', NULL, 5, 5, 'room_type', 5, 0, 5, NULL, '2018-04-23 10:54:52', '2018-04-23 10:54:52', NULL),
(15, 'Room Type A (Hotel 5)', 1, 'Room Type A (Hotel 5)\r\nRoom Type A (Hotel 5)\r\nRoom Type A (Hotel 5)\r\nRoom Type A (Hotel 5)', '<p>Room Type A (Hotel 5)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '990000.00', NULL, 2, 2, 'room_type', 6, 0, 2, NULL, '2018-04-23 10:55:50', '2018-04-23 10:55:50', NULL),
(16, 'Room Type B (Hotel 5)', 1, 'Room Type B (Hotel 5)\r\nRoom Type B (Hotel 5)\r\nRoom Type B (Hotel 5)\r\nRoom Type B (Hotel 5)', '<p>Room Type B (Hotel 5)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', '3200000.00', NULL, 2, 3, 'room_type', 6, 0, 4, NULL, '2018-04-23 10:56:45', '2018-04-23 10:56:45', NULL),
(17, 'Room Type A (Hotel 6)', 1, 'Room Type A (Hotel 6)\r\nRoom Type A (Hotel 6)\r\nRoom Type A (Hotel 6)\r\nRoom Type A (Hotel 6)', '<p>Room Type A (Hotel 6)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', '2500000.00', NULL, 2, 2, 'room_type', 7, 0, 4, NULL, '2018-04-23 10:57:29', '2018-04-23 10:57:29', NULL),
(18, 'Room Type B (Hotel 6)', 1, 'Room Type B (Hotel 6)\r\nRoom Type B (Hotel 6)\r\nRoom Type B (Hotel 6)\r\nRoom Type B (Hotel 6)', '<p>Room Type B (Hotel 6)</p>', 1, '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', '1700000.00', NULL, 4, 4, 'room_type', 7, 0, 6, NULL, '2018-04-23 10:58:17', '2018-04-23 10:58:17', NULL),
(19, 'Tour 4 Đảo', 1, 'Tour 4 Đảo', '<p>Tour 4 Đảo</p>', 1, '/uploads/1/tour/dao-binh-ba/tour-dao-binh-ba.jpg', '150000.00', '75000.00', NULL, NULL, 'tour', 0, 0, NULL, NULL, '2018-04-23 11:03:50', '2018-04-23 11:04:21', 'Nha Trang, Khanh Hoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `lat_long` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `description`, `content`, `status`, `user_id`, `featured`, `order`, `image`, `deleted_at`, `created_at`, `updated_at`, `star`, `lat_long`, `address`, `phone`) VALUES
(1, 'Starcity Nha Trang Hotel', 'Starcity Nha Trang Hotel', '<p>Starcity Nha Trang Hotel</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020218440039576985.jpg', '2018-04-21 05:18:05', '2018-04-14 07:32:23', '2018-04-21 05:18:05', 4, NULL, NULL, NULL),
(2, 'Hotel demo 1', 'Hotel demo 1', '<p>Hotel demo 1</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', NULL, '2018-04-16 08:49:48', '2018-04-23 10:49:49', 5, NULL, 'Nha Trang, Khanh Hoa', '0905160320'),
(3, 'Hotel demo 2', 'Hotel demo 2', '<p>Hotel demo 2</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', NULL, '2018-04-16 08:54:53', '2018-04-21 05:20:29', 3, NULL, 'Ninh Hoa, Khanh Hoa', '0905160320'),
(4, 'Hotel demo 3', 'Hotel demo 3', '<p>Hotel demo 3</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020217110039573814.jpg', NULL, '2018-04-16 08:55:26', '2018-04-21 05:20:54', 4, NULL, 'Cam Lam, Khanh Hoa', '0905160320'),
(5, 'Hotel demo 4', 'Hotel demo 4', '<p>Hotel demo 4</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020215590039570222.jpg', NULL, '2018-04-21 05:19:15', '2018-04-21 05:19:15', 5, NULL, 'Cam Ranh, Khanh Hoa', '090909090'),
(6, 'Hotel demo 5', 'Hotel demo 5', '<p>Hotel demo 5</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020315020039603730.jpg', NULL, '2018-04-21 05:21:37', '2018-04-21 05:21:37', 5, NULL, 'Tran Phu, Nha Trang', '0905160320'),
(7, 'Hotel demo 6', 'Hotel demo 6', '<p>Hotel demo 6</p>', 1, 1, 0, 0, '/uploads/1/khach-san/starcity/1158838-16020315020039603736.jpg', NULL, '2018-04-21 05:22:17', '2018-04-21 05:22:17', 4, NULL, 'Loc Tho, Nha Trang', '0905160320');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Book2go', NULL, NULL),
(2, 'copyright', '© 2016 Botble Technologies. All right reserved. Designed by <a href=\"http://nghiadev.com\" target=\"_blank\">Nghia Minh</a>', NULL, NULL),
(3, 'admin_email', 'chithien175@gmail.com', NULL, NULL),
(10, 'contact_email', 'chithien175@gmail.com', NULL, NULL),
(11, 'email_support', 'info@book2govn.com', NULL, NULL),
(14, 'enable_captcha', '0', NULL, NULL),
(15, 'about', '<p>Content here</p>\r\n', NULL, NULL),
(16, 'show_admin_bar', '0', NULL, NULL),
(17, 'theme', 'book2go', NULL, NULL),
(18, 'enable_change_admin_theme', '0', NULL, NULL),
(19, 'enable_multi_language_in_admin', '0', NULL, NULL),
(20, 'enable_https', '0', NULL, NULL),
(21, 'google_plus', 'https://plus.google.com', NULL, NULL),
(24, 'enable_cache', '0', NULL, NULL),
(25, 'cache_time', '10', NULL, NULL),
(26, 'cache_time_site_map', '3600', NULL, NULL),
(27, 'language_hide_default', '1', NULL, NULL),
(28, 'language_switcher_display', 'list', NULL, NULL),
(29, 'language_display', 'name', NULL, NULL),
(30, 'language_hide_languages', '[]', NULL, NULL),
(39, 'rich_editor', 'tinymce', NULL, NULL),
(41, 'admin_title', 'Book2go CMS', NULL, NULL),
(44, 'activated_plugins', '[\"translation\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"gallery\",\"log-viewer\",\"language\",\"note\",\"request-log\",\"boton-addon\",\"events\",\"servicer\",\"custom-field\",\"member\"]', NULL, NULL),
(48, 'admin_logo', '/uploads/1/logo.png', NULL, NULL),
(54, 'seo_title', 'Book2go', NULL, NULL),
(55, 'seo_description', 'Book2go', NULL, NULL),
(56, 'seo_keywords', 'book2go, book 2 go', NULL, NULL),
(57, 'theme-botonblue-copyright', 'Copyright © 2018 Boton Blue Hotel & Spa.', NULL, NULL),
(58, 'theme-botonblue-logo', '/uploads/1/banner/boton-vertical-logo2.png', NULL, NULL),
(59, 'contact_address', 'Nha Trang City, Khanh Hoa Province, Vietnam', NULL, NULL),
(60, 'contact_phone', '0909 090 909', NULL, NULL),
(69, 'theme-botonblue-social-twitter', 'http://twitter.com', NULL, NULL),
(70, 'theme-botonblue-social-tripadvisor', 'http://tripadvisor.com', NULL, NULL),
(71, 'theme-botonblue-social-vk', 'http://vk.com', NULL, NULL),
(72, 'theme-botonblue-social-instagram', 'http://instagram.com', NULL, NULL),
(74, 'theme-botonblue-social-facebook', 'https://www.facebook.com/', NULL, NULL),
(75, 'theme-book2go-copyright', '© 2018 Book2go. All right reserved.', NULL, NULL),
(76, 'theme-book2go-logo', '/uploads/1/logo.png', NULL, NULL),
(98, 'contact_hotline', '(+84) 974 974 567', NULL, NULL),
(99, 'theme-book2go-footer_block1', '<h6 class=\"text-uppercase mb-4 font-weight-bold\">Book2govn</h6>\r\n<p>Here you can use rows and columns here to organize your footer content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', NULL, NULL),
(100, 'theme-book2go-footer_block2', '<h6 class=\"text-uppercase mb-4 font-weight-bold\">Sản Phẩm</h6>\r\n<p><a href=\"#!\">MDBootstrap</a></p>\r\n<p><a href=\"#!\">MDWordPress</a></p>\r\n<p><a href=\"#!\">BrandFlow</a></p>\r\n<p><a href=\"#!\">Bootstrap Angular</a></p>', NULL, NULL),
(101, 'theme-book2go-footer_block3', '<h6 class=\"text-uppercase mb-4 font-weight-bold\">Liên Kết</h6>\r\n<p><a href=\"#!\">Your Account</a></p>\r\n<p><a href=\"#!\">Become an Affiliate</a></p>\r\n<p><a href=\"#!\">Shipping Rates</a></p>\r\n<p><a href=\"#!\">Help</a></p>', NULL, NULL),
(102, 'theme-book2go-footer_block4', '<h6 class=\"text-uppercase mb-4 font-weight-bold\">Liên Hệ</h6>\r\n<p><i class=\"fa fa-home mr-3\"></i> Nha Trang City, Khanh Hoa Province, Vietnam</p>\r\n<p><i class=\"fa fa-envelope mr-3\"></i> info@book2govn.com</p>\r\n<p><i class=\"fa fa-phone mr-3\"></i> (+84) 974 974 567</p>', NULL, NULL),
(103, 'theme-book2go-social_facebook', '#', NULL, NULL),
(104, 'theme-book2go-social_twitter', '#', NULL, NULL),
(105, 'theme-book2go-social_google', '#', NULL, NULL),
(106, 'theme-book2go-social_linkedin', '#', NULL, NULL),
(107, 'email_driver', 'smtp', NULL, NULL),
(108, 'email_port', '587', NULL, NULL),
(109, 'email_host', 'smtp.gmail.com', NULL, NULL),
(110, 'email_username', 'webdepnhatrang@gmail.com', NULL, NULL),
(111, 'email_password', 'mahbzdrgstiynyth', NULL, NULL),
(112, 'email_encryption', 'TLS', NULL, NULL),
(113, 'email_from_address', 'webdepnhatrang@gmail.com', NULL, NULL),
(115, 'email_from_name', 'Book2govn', NULL, NULL),
(116, 'contact_email_subject', 'Book2govn', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(11) NOT NULL,
  `reference` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'gioi-thieu', 1, 'page', NULL, '2018-04-12 10:09:00', '2018-04-12 10:09:00'),
(2, 'dia-diem', 2, 'page', NULL, '2018-04-12 16:22:16', '2018-04-12 16:23:17'),
(3, 'tour', 3, 'page', NULL, '2018-04-12 16:29:23', '2018-04-12 16:29:23'),
(4, 'faq', 4, 'page', NULL, '2018-04-12 16:34:10', '2018-04-12 16:34:10'),
(5, 'lien-he', 5, 'page', NULL, '2018-04-12 16:39:10', '2018-04-12 16:39:10'),
(6, 'khuyen-mai', 6, 'page', NULL, '2018-04-12 16:43:33', '2018-04-12 16:43:33'),
(7, 'starcity-nha-trang-hotel', 1, 'hotel', '2018-04-21 05:18:05', '2018-04-14 07:32:23', '2018-04-21 05:18:05'),
(8, 'tour-binh-ba', 1, 'tour', NULL, '2018-04-15 15:22:13', '2018-04-15 15:43:18'),
(9, '1523806434', 2, 'tour', '2018-04-15 15:54:36', '2018-04-15 15:33:54', '2018-04-15 15:54:36'),
(10, '1523807682', 3, 'tour', '2018-04-15 16:02:38', '2018-04-15 15:54:42', '2018-04-15 16:02:38'),
(11, 'hotel-demo-1', 2, 'hotel', NULL, '2018-04-16 08:49:49', '2018-04-16 08:49:49'),
(12, 'hotel-demo-2', 3, 'hotel', NULL, '2018-04-16 08:54:53', '2018-04-16 08:54:53'),
(13, 'hotel-demo-3', 4, 'hotel', NULL, '2018-04-16 08:55:26', '2018-04-16 08:55:26'),
(14, 'cau-hoi-cong-ty', 1, 'category', NULL, '2018-04-17 02:35:57', '2018-04-17 02:35:57'),
(15, 'khach-hang-danh-gia', 2, 'category', NULL, '2018-04-17 10:38:07', '2018-04-17 10:38:07'),
(16, 'khach-hang-1', 1, 'post', NULL, '2018-04-17 11:02:45', '2018-04-17 11:02:45'),
(17, 'khach-hang-2', 2, 'post', NULL, '2018-04-17 11:03:18', '2018-04-17 11:03:18'),
(18, 'khach-hang-3', 3, 'post', NULL, '2018-04-17 11:10:34', '2018-04-17 11:10:34'),
(19, 'khach-hang-4', 4, 'post', NULL, '2018-04-17 11:10:53', '2018-04-17 11:10:53'),
(20, 'tin-tuc-du-lich', 3, 'category', NULL, '2018-04-18 03:30:14', '2018-04-18 03:30:14'),
(21, 'news-demo-1', 5, 'post', NULL, '2018-04-18 03:40:43', '2018-04-18 03:40:43'),
(22, 'news-demo-2', 6, 'post', NULL, '2018-04-18 03:41:33', '2018-04-18 03:41:33'),
(23, 'doi-tac-lien-ket', 4, 'category', NULL, '2018-04-18 15:31:15', '2018-04-18 15:31:15'),
(24, 'doi-tac-1', 7, 'post', NULL, '2018-04-18 15:39:48', '2018-04-18 15:39:48'),
(25, 'doi-tac-2', 8, 'post', NULL, '2018-04-18 15:40:44', '2018-04-18 15:40:44'),
(26, 'doi-tac-lien-ket-1', 9, 'post', NULL, '2018-04-18 15:41:11', '2018-04-18 15:41:11'),
(27, 'doi-tac-4', 10, 'post', NULL, '2018-04-18 15:41:36', '2018-04-18 15:41:36'),
(28, 'doi-tac-5', 11, 'post', NULL, '2018-04-18 15:45:02', '2018-04-18 15:45:02'),
(29, 'cau-hoi-cong-ty-1', 12, 'post', NULL, '2018-04-19 08:14:38', '2018-04-19 08:14:38'),
(30, 'cau-hoi-cong-ty-2', 13, 'post', NULL, '2018-04-19 08:15:11', '2018-04-19 08:15:11'),
(31, 'cau-hoi-faqs', 5, 'category', NULL, '2018-04-19 08:38:01', '2018-04-19 08:38:01'),
(32, 'cau-hoi-faqs-1', 14, 'post', NULL, '2018-04-19 08:39:34', '2018-04-19 08:39:34'),
(33, 'cau-hoi-faqs-2', 15, 'post', NULL, '2018-04-19 08:40:13', '2018-04-19 08:40:13'),
(34, 'cau-hoi-faqs-3', 16, 'post', NULL, '2018-04-19 08:40:29', '2018-04-19 08:40:29'),
(35, 'cau-hoi-faqs-4', 17, 'post', NULL, '2018-04-19 08:40:59', '2018-04-19 08:40:59'),
(36, 'room-test-1', 4, 'room_type', NULL, '2018-04-19 15:47:22', '2018-04-19 15:47:22'),
(37, 'can-ho-demo-1', 5, 'apartment', NULL, '2018-04-20 04:01:56', '2018-04-20 04:01:56'),
(38, 'hotel-demo-4', 5, 'hotel', NULL, '2018-04-21 05:19:15', '2018-04-21 05:19:15'),
(39, 'hotel-demo-5', 6, 'hotel', NULL, '2018-04-21 05:21:37', '2018-04-21 05:21:37'),
(40, 'hotel-demo-6', 7, 'hotel', NULL, '2018-04-21 05:22:17', '2018-04-21 05:22:17'),
(41, 'can-ho-demo-2', 6, 'apartment', NULL, '2018-04-21 05:24:10', '2018-04-21 05:24:10'),
(42, 'tour-diep-son', 7, 'tour', NULL, '2018-04-21 05:25:41', '2018-04-21 05:25:41'),
(43, 'tour-4-dao', 19, 'tour', NULL, '2018-04-23 11:03:50', '2018-04-23 11:03:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(3, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(4, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(5, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(7, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(8, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(9, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(10, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(11, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(12, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(13, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(14, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(15, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(16, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(17, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(18, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(19, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(20, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(21, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(22, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(24, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(25, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(26, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(27, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(28, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(29, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(30, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(31, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(32, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(33, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(34, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(35, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(36, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(37, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(38, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(39, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(40, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(41, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(42, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(43, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(44, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(45, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(46, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(47, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(48, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(49, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(50, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(51, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(52, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(53, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(54, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(55, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(56, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(57, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(58, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(59, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(60, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(61, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(62, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(63, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(64, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(65, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(66, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(67, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(68, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(69, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(70, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(71, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(72, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(73, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(74, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(75, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(76, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(77, 0, 'en', 'core.acl/auth', 'login.username', 'Username', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(78, 0, 'en', 'core.acl/auth', 'login.email', 'Email', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(79, 0, 'en', 'core.acl/auth', 'login.password', 'Password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(80, 0, 'en', 'core.acl/auth', 'login.title', 'User Login', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(81, 0, 'en', 'core.acl/auth', 'login.remember', 'Remember me?', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(82, 0, 'en', 'core.acl/auth', 'login.login', 'Sign in', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(83, 0, 'en', 'core.acl/auth', 'login.placeholder.username', 'Please enter your username', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(84, 0, 'en', 'core.acl/auth', 'login.placeholder.email', 'Please enter your email', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(85, 0, 'en', 'core.acl/auth', 'login.success', 'Login successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(86, 0, 'en', 'core.acl/auth', 'login.fail', 'Wrong username or password.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(87, 0, 'en', 'core.acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(88, 0, 'en', 'core.acl/auth', 'login.banned', 'This account is banned.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(89, 0, 'en', 'core.acl/auth', 'login.logout_success', 'Logout successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(90, 0, 'en', 'core.acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(91, 0, 'en', 'core.acl/auth', 'forgot_password.title', 'Lost password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(92, 0, 'en', 'core.acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your username account. System will send a email with active link to reset your password.</p>', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(93, 0, 'en', 'core.acl/auth', 'forgot_password.submit', 'Submit', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(94, 0, 'en', 'core.acl/auth', 'reset.new_password', 'New password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(95, 0, 'en', 'core.acl/auth', 'reset.repassword', 'Confirm new password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(96, 0, 'en', 'core.acl/auth', 'reset.email', 'Email', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(97, 0, 'en', 'core.acl/auth', 'reset.title', 'Reset your password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(98, 0, 'en', 'core.acl/auth', 'reset.update', 'Update', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(99, 0, 'en', 'core.acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(100, 0, 'en', 'core.acl/auth', 'reset.user_not_found', 'This username is not exist.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(101, 0, 'en', 'core.acl/auth', 'reset.success', 'Reset password successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(102, 0, 'en', 'core.acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(103, 0, 'en', 'core.acl/auth', 'reset.reset.title', 'Email reset password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(104, 0, 'en', 'core.acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(105, 0, 'en', 'core.acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(106, 0, 'en', 'core.acl/auth', 'reset.new-password', 'New password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(107, 0, 'en', 'core.acl/auth', 'email.reminder.title', 'Email reset password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(108, 1, 'en', 'core.acl/auth', 'email.invite.title', 'Invite to join ', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(109, 0, 'en', 'core.acl/auth', 'repassword', 'Password confirm', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(110, 0, 'en', 'core.acl/auth', 'failed', 'Failed', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(111, 0, 'en', 'core.acl/auth', 'throttle', 'Throttle', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(112, 0, 'en', 'core.acl/auth', 'not_member', 'Not a member yet?', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(113, 0, 'en', 'core.acl/auth', 'register_now', 'Register now', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(114, 0, 'en', 'core.acl/auth', 'lost_your_password', 'Lost your password?', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(115, 0, 'en', 'core.acl/auth', 'login_title', 'Login to system', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(116, 0, 'en', 'core.acl/auth', 'login_via_social', 'Login with social networks', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(117, 0, 'en', 'core.acl/auth', 'back_to_login', 'Back to login page', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(118, 1, 'en', 'core.acl/auth', 'accept_invite', 'Accept invite', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(119, 0, 'en', 'core.acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(120, 0, 'en', 'core.acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(121, 0, 'en', 'core.acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(122, 0, 'en', 'core.acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(123, 0, 'en', 'core.acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(124, 0, 'en', 'core.acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(125, 0, 'en', 'core.acl/permissions', 'notices.create_success', 'The new role was successfully created', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(126, 0, 'en', 'core.acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(127, 0, 'en', 'core.acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(128, 0, 'en', 'core.acl/permissions', 'notices.not_found', 'Role not found', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(129, 0, 'en', 'core.acl/permissions', 'list', 'List Permissions', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(130, 0, 'en', 'core.acl/permissions', 'name', 'Name', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(131, 0, 'en', 'core.acl/permissions', 'current_role', 'Current Role', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(132, 0, 'en', 'core.acl/permissions', 'no_role_assigned', 'No role assigned', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(133, 0, 'en', 'core.acl/permissions', 'role_assigned', 'Assigned Role', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(134, 0, 'en', 'core.acl/permissions', 'create_role', 'Create New Role', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(135, 0, 'en', 'core.acl/permissions', 'role_name', 'Name', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(136, 0, 'en', 'core.acl/permissions', 'role_description', 'Description', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(137, 0, 'en', 'core.acl/permissions', 'permission_flags', 'Permission Flags', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(138, 0, 'en', 'core.acl/permissions', 'cancel', 'Cancel', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(139, 0, 'en', 'core.acl/permissions', 'reset', 'Reset', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(140, 0, 'en', 'core.acl/permissions', 'save', 'Save', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(141, 0, 'en', 'core.acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(142, 0, 'en', 'core.acl/permissions', 'details', 'Details', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(143, 0, 'en', 'core.acl/permissions', 'duplicate', 'Duplicate', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(144, 0, 'en', 'core.acl/permissions', 'all', 'All Permissions', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(145, 0, 'en', 'core.acl/permissions', 'list_role', 'List Roles', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(146, 0, 'en', 'core.acl/permissions', 'created_on', 'Created On', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(147, 0, 'en', 'core.acl/permissions', 'created_by', 'Created By', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(148, 0, 'en', 'core.acl/permissions', 'actions', 'Actions', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(149, 0, 'en', 'core.acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(150, 0, 'en', 'core.acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(151, 0, 'en', 'core.acl/permissions', 'delete_global_role', 'Can not delete global role', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(152, 0, 'en', 'core.acl/permissions', 'delete_success', 'Delete role successfully', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(153, 0, 'en', 'core.acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(154, 0, 'en', 'core.acl/permissions', 'not_found', 'No role found!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(155, 0, 'en', 'core.acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(156, 0, 'en', 'core.acl/permissions', 'modified_success', 'Modified successfully', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(157, 0, 'en', 'core.acl/permissions', 'create_success', 'Create successfully', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(158, 0, 'en', 'core.acl/permissions', 'duplicated_success', 'Duplicated successfully', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(159, 0, 'en', 'core.acl/permissions', 'options', 'Options', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(160, 0, 'en', 'core.acl/permissions', 'access_denied_message', 'You are not allowed to use this module', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(161, 0, 'en', 'core.acl/permissions', 'roles', 'Roles', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(162, 0, 'en', 'core.acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(163, 0, 'en', 'core.acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(164, 0, 'en', 'core.acl/reminders', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(165, 0, 'en', 'core.acl/reminders', 'sent', 'Password reminder sent!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(166, 0, 'en', 'core.acl/reminders', 'reset', 'Password has been reset!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(167, 0, 'en', 'core.acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(168, 0, 'en', 'core.acl/users', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(169, 0, 'en', 'core.acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(170, 0, 'en', 'core.acl/users', 'update_success', 'Update status successfully!', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(171, 0, 'en', 'core.acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(172, 0, 'en', 'core.acl/users', 'not_found', 'User not found', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(173, 0, 'en', 'core.acl/users', 'email_exist', 'That email address already belongs to an existing account', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(174, 0, 'en', 'core.acl/users', 'username_exist', 'That username address already belongs to an existing account', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(175, 0, 'en', 'core.acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(176, 0, 'en', 'core.acl/users', 'password_update_success', 'Password successfully changed', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(177, 0, 'en', 'core.acl/users', 'current_password_not_valid', 'Current password is not valid', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(178, 1, 'en', 'core.acl/users', 'invite_success', 'A new user account has been created for this person and an email sent to the address to complete the process.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(179, 1, 'en', 'core.acl/users', 'invite_exist', 'User has already been invited.  A reminder notice has been sent.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(180, 1, 'en', 'core.acl/users', 'invite_not_exist', 'Invite does not exist.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(181, 1, 'en', 'core.acl/users', 'accept_invite_success', 'Welcome new member!', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(182, 0, 'en', 'core.acl/users', 'user_exist_in', 'User is already a member', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(183, 0, 'en', 'core.acl/users', 'email', 'Email', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(184, 0, 'en', 'core.acl/users', 'role', 'Role', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(185, 0, 'en', 'core.acl/users', 'username', 'Username', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(186, 1, 'en', 'core.acl/users', 'invite_user', 'Invite User', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(187, 1, 'en', 'core.acl/users', 'invite_new_member', 'Invite new member?', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(188, 1, 'en', 'core.acl/users', 'invite_description', 'Invite a new member to join this system.', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(189, 0, 'en', 'core.acl/users', 'last_name', 'Last Name', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(190, 0, 'en', 'core.acl/users', 'first_name', 'First Name', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(191, 0, 'en', 'core.acl/users', 'message', 'Message', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(192, 0, 'en', 'core.acl/users', 'cancel_btn', 'Cancel', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(193, 1, 'en', 'core.acl/users', 'invite_btn', 'Invite', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(194, 0, 'en', 'core.acl/users', 'change_password', 'Change password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(195, 0, 'en', 'core.acl/users', 'new_password', 'New Password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(196, 0, 'en', 'core.acl/users', 'confirm_new_password', 'Confirm New Password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(197, 0, 'en', 'core.acl/users', 'password', 'Password', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(198, 0, 'en', 'core.acl/users', 'save', 'Save', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(199, 0, 'en', 'core.acl/users', 'cannot_delete', 'User could not be deleted', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(200, 0, 'en', 'core.acl/users', 'deleted', 'User deleted', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(201, 0, 'en', 'core.acl/users', 'list', 'List Users', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(202, 0, 'en', 'core.acl/users', 'last_login', 'Last Login', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(203, 0, 'en', 'core.acl/users', 'error_update_profile_image', 'Error when update profile image', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(204, 1, 'en', 'core.acl/users', 'email_invite_template', '<h3>Hello :name</h3><p>You are invited to be a user in :site_title.</p><p>The sender included the following message with this invitation:</p><p>\":content\"</p><p>Please click this link to accept invite and join with us: <a href=\":link\">Join now</a></p>', '2018-03-18 09:04:18', '2018-03-18 09:04:18'),
(205, 0, 'en', 'core.acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(206, 0, 'en', 'core.acl/users', 'change_profile_image', 'Change Profile Image', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(207, 0, 'en', 'core.acl/users', 'new_image', 'New Image', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(208, 0, 'en', 'core.acl/users', 'loading', 'Loading', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(209, 0, 'en', 'core.acl/users', 'close', 'Close', '2018-03-18 09:04:18', '2018-03-28 03:22:32'),
(210, 0, 'en', 'core.acl/users', 'update', 'Update', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(211, 0, 'en', 'core.acl/users', 'read_image_failed', 'Failed to read the image file', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(212, 0, 'en', 'core.acl/users', 'users', 'Users', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(213, 0, 'en', 'core.acl/users', 'update_avatar_success', 'Update profile image successfully!', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(214, 0, 'en', 'core.acl/users', 'info.title', 'User profile', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(215, 0, 'en', 'core.acl/users', 'info.first_name', 'First Name', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(216, 0, 'en', 'core.acl/users', 'info.last_name', 'Last Name', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(217, 0, 'en', 'core.acl/users', 'info.email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(218, 0, 'en', 'core.acl/users', 'info.second_email', 'Secondary Email', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(219, 0, 'en', 'core.acl/users', 'info.address', 'Address', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(220, 0, 'en', 'core.acl/users', 'info.second_address', 'Secondary Address', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(221, 0, 'en', 'core.acl/users', 'info.birth_day', 'Date of birth', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(222, 0, 'en', 'core.acl/users', 'info.job', 'Job Position', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(223, 0, 'en', 'core.acl/users', 'info.mobile_number', 'Mobile Number', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(224, 0, 'en', 'core.acl/users', 'info.second_mobile_number', 'Secondary Phone', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(225, 0, 'en', 'core.acl/users', 'info.interes', 'Interests', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(226, 0, 'en', 'core.acl/users', 'info.about', 'About', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(227, 0, 'en', 'core.acl/users', 'gender.title', 'Gender', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(228, 0, 'en', 'core.acl/users', 'gender.male', 'Male', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(229, 0, 'en', 'core.acl/users', 'gender.female', 'Female', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(230, 0, 'vi', 'core.acl/auth', 'login.username', 'Tên truy cập', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(231, 0, 'vi', 'core.acl/auth', 'login.password', 'Mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(232, 0, 'vi', 'core.acl/auth', 'login.title', 'Đăng nhập hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(233, 0, 'vi', 'core.acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(234, 0, 'vi', 'core.acl/auth', 'login.login', 'Đăng nhập', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(235, 0, 'vi', 'core.acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(236, 0, 'vi', 'core.acl/auth', 'login.success', 'Đăng nhập thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(237, 0, 'vi', 'core.acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(238, 0, 'vi', 'core.acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(239, 0, 'vi', 'core.acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(240, 0, 'vi', 'core.acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(241, 0, 'vi', 'core.acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(242, 0, 'vi', 'core.acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(243, 0, 'vi', 'core.acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập tên đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(244, 0, 'vi', 'core.acl/auth', 'forgot_password.submit', 'Hoàn tất', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(245, 0, 'vi', 'core.acl/auth', 'reset.new_password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(246, 0, 'vi', 'core.acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(247, 0, 'vi', 'core.acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:32'),
(248, 0, 'vi', 'core.acl/auth', 'reset.update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(249, 0, 'vi', 'core.acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(250, 0, 'vi', 'core.acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(251, 0, 'vi', 'core.acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(252, 0, 'vi', 'core.acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(253, 0, 'vi', 'core.acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(254, 0, 'vi', 'core.acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(255, 0, 'vi', 'core.acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(256, 0, 'vi', 'core.acl/auth', 'reset.new-password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(257, 0, 'vi', 'core.acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(258, 0, 'vi', 'core.acl/auth', 'email.invite.title', 'Mời tham gia hệ thống ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(259, 0, 'vi', 'core.acl/auth', 'failed', 'Không thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(260, 0, 'vi', 'core.acl/auth', 'repassword', 'Xác nhận mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(261, 0, 'vi', 'core.acl/auth', 'throttle', 'Throttle', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(262, 0, 'vi', 'core.acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(263, 0, 'vi', 'core.acl/auth', 'login_title', 'Đăng nhập với tài khoản hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(264, 0, 'vi', 'core.acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(265, 0, 'vi', 'core.acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(266, 0, 'vi', 'core.acl/auth', 'not_member', 'Chưa là thành viên?', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(267, 0, 'vi', 'core.acl/auth', 'register_now', 'Đăng ký ngay', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(268, 0, 'vi', 'core.acl/auth', 'accept_invite', 'Xác nhận lời mời', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(269, 0, 'vi', 'core.acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(270, 0, 'vi', 'core.acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(271, 0, 'vi', 'core.acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(272, 0, 'vi', 'core.acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(273, 0, 'vi', 'core.acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(274, 0, 'vi', 'core.acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(275, 0, 'vi', 'core.acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(276, 0, 'vi', 'core.acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(277, 0, 'vi', 'core.acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(278, 0, 'vi', 'core.acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(279, 0, 'vi', 'core.acl/permissions', 'list', 'Danh sách phân quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(280, 0, 'vi', 'core.acl/permissions', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(281, 0, 'vi', 'core.acl/permissions', 'current_role', 'Quyền hiện tại', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(282, 0, 'vi', 'core.acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(283, 0, 'vi', 'core.acl/permissions', 'role_assigned', 'Quyền đã được gán', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(284, 0, 'vi', 'core.acl/permissions', 'create_role', 'Tạo quyền mới', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(285, 0, 'vi', 'core.acl/permissions', 'role_name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(286, 0, 'vi', 'core.acl/permissions', 'role_description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(287, 0, 'vi', 'core.acl/permissions', 'is_staff', 'Là người quản lý?', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(288, 0, 'vi', 'core.acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(289, 0, 'vi', 'core.acl/permissions', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(290, 0, 'vi', 'core.acl/permissions', 'reset', 'Làm lại', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(291, 0, 'vi', 'core.acl/permissions', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(292, 0, 'vi', 'core.acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(293, 0, 'vi', 'core.acl/permissions', 'details', 'Chi tiết', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(294, 0, 'vi', 'core.acl/permissions', 'duplicate', 'Nhân bản', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(295, 0, 'vi', 'core.acl/permissions', 'all', 'Tất cả phân quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(296, 0, 'vi', 'core.acl/permissions', 'list_role', 'Danh sách quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(297, 0, 'vi', 'core.acl/permissions', 'created_on', 'Ngày tạo', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(298, 0, 'vi', 'core.acl/permissions', 'created_by', 'Được tạo bởi', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(299, 0, 'vi', 'core.acl/permissions', 'actions', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(300, 0, 'vi', 'core.acl/permissions', 'create_success', 'Tạo thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(301, 0, 'vi', 'core.acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(302, 0, 'vi', 'core.acl/permissions', 'delete_success', 'Xóa quyền thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(303, 0, 'vi', 'core.acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(304, 0, 'vi', 'core.acl/permissions', 'modified_success', 'Sửa thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(305, 0, 'vi', 'core.acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(306, 0, 'vi', 'core.acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(307, 0, 'vi', 'core.acl/permissions', 'options', 'Tùy chọn', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(308, 0, 'vi', 'core.acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(309, 0, 'vi', 'core.acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(310, 0, 'vi', 'core.acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(311, 0, 'vi', 'core.acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(312, 0, 'vi', 'core.acl/permissions', 'roles', 'Quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(313, 0, 'vi', 'core.acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(314, 0, 'vi', 'core.acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(315, 0, 'vi', 'core.acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(316, 0, 'vi', 'core.acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(317, 0, 'vi', 'core.acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(318, 0, 'vi', 'core.acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(319, 0, 'vi', 'core.acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(320, 0, 'vi', 'core.acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(321, 0, 'vi', 'core.acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(322, 0, 'vi', 'core.acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(323, 0, 'vi', 'core.acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(324, 0, 'vi', 'core.acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(325, 0, 'vi', 'core.acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(326, 0, 'vi', 'core.acl/users', 'not_found', 'Không tìm thấy người dùng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(327, 0, 'vi', 'core.acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(328, 0, 'vi', 'core.acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(329, 0, 'vi', 'core.acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(330, 0, 'vi', 'core.acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(331, 0, 'vi', 'core.acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(332, 0, 'vi', 'core.acl/users', 'invite_success', 'Một tài khoản đã được tạo cho người này, email xác nhận đã được gửi để hoàn thành thao tác mời tham gia hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(333, 0, 'vi', 'core.acl/users', 'invite_exist', 'Người dùng này đã được mời.  Một thông báo nhắc nhở đã được gửi.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(334, 0, 'vi', 'core.acl/users', 'invite_not_exist', 'Mã mời không tồn tại.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(335, 0, 'vi', 'core.acl/users', 'accept_invite_success', 'Chào mừng thành viên mới!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(336, 0, 'vi', 'core.acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(337, 0, 'vi', 'core.acl/users', 'email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(338, 0, 'vi', 'core.acl/users', 'username', 'Tên đăng nhập', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(339, 0, 'vi', 'core.acl/users', 'role', 'Phân quyền', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(340, 0, 'vi', 'core.acl/users', 'invite_user', 'Mời tham gia hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(341, 0, 'vi', 'core.acl/users', 'invite_new_member', 'Mời thành viên mới?', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(342, 0, 'vi', 'core.acl/users', 'invite_description', 'Mời người dùng mới tham gia nhóm này.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(343, 0, 'vi', 'core.acl/users', 'first_name', 'Họ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(344, 0, 'vi', 'core.acl/users', 'last_name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(345, 0, 'vi', 'core.acl/users', 'message', 'Thông điệp', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(346, 0, 'vi', 'core.acl/users', 'invite_btn', 'Mời', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(347, 0, 'vi', 'core.acl/users', 'cancel_btn', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(348, 0, 'vi', 'core.acl/users', 'password', 'Mật khẩu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(349, 0, 'vi', 'core.acl/users', 'new_password', 'Mật khẩu mới', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(350, 0, 'vi', 'core.acl/users', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(351, 0, 'vi', 'core.acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(352, 0, 'vi', 'core.acl/users', 'deleted', 'Xóa thành viên thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(353, 0, 'vi', 'core.acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(354, 0, 'vi', 'core.acl/users', 'can_not_get_list_roles', 'Không thể lấy danh sách phân quyền trong nhóm này.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(355, 0, 'vi', 'core.acl/users', 'list', 'Danh sách thành viên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(356, 0, 'vi', 'core.acl/users', 'last_login', 'Lần cuối đăng nhập', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(357, 0, 'vi', 'core.acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(358, 0, 'vi', 'core.acl/users', 'email_invite_template', '<h3>Xin chào :name</h3><p>Bạn được mời tham gia vào hệ thống :site_title, người gửi đã kèm theo nội dung sau:</p><p>Người mời bạn tham gia đã gửi kèm thông điệp bên dưới:</p><p>\":content\"</p><p>Hãy nhấn vào liên kết bên dưới để xác nhận tham gia vào hệ thống: <a href=\":link\">Tham gia ngay</a></p>', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(359, 0, 'vi', 'core.acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(360, 0, 'vi', 'core.acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(361, 0, 'vi', 'core.acl/users', 'new_image', 'Ảnh mới', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(362, 0, 'vi', 'core.acl/users', 'loading', 'Đang tải', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(363, 0, 'vi', 'core.acl/users', 'close', 'Đóng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(364, 0, 'vi', 'core.acl/users', 'update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(365, 0, 'vi', 'core.acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(366, 0, 'vi', 'core.acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(367, 0, 'vi', 'core.acl/users', 'users', 'Thành viên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(368, 0, 'vi', 'core.acl/users', 'info.title', 'Thông tin người dùng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(369, 0, 'vi', 'core.acl/users', 'info.first_name', 'Họ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(370, 0, 'vi', 'core.acl/users', 'info.last_name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(371, 0, 'vi', 'core.acl/users', 'info.email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(372, 0, 'vi', 'core.acl/users', 'info.second_email', 'Email dự phòng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(373, 0, 'vi', 'core.acl/users', 'info.address', 'Địa chỉ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(374, 0, 'vi', 'core.acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(375, 0, 'vi', 'core.acl/users', 'info.birth_day', 'Ngày sinh', '2018-03-18 09:04:19', '2018-03-28 03:22:33');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(376, 0, 'vi', 'core.acl/users', 'info.job', 'Nghề nghiệp', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(377, 0, 'vi', 'core.acl/users', 'info.mobile_number', 'Số điện thoại di động', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(378, 0, 'vi', 'core.acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(379, 0, 'vi', 'core.acl/users', 'info.interes', 'Sở thích', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(380, 0, 'vi', 'core.acl/users', 'info.about', 'Giới thiệu', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(381, 0, 'vi', 'core.acl/users', 'gender.title', 'Giới tính', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(382, 0, 'vi', 'core.acl/users', 'gender.male', 'nam', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(383, 0, 'vi', 'core.acl/users', 'gender.female', 'nữ', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(384, 0, 'en', 'core.base/cache', 'cache_management', 'Cache management', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(385, 0, 'en', 'core.base/cache', 'cache_commands', 'Clear cache commands', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(386, 0, 'en', 'core.base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(387, 0, 'en', 'core.base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(388, 0, 'en', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(389, 0, 'en', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(390, 0, 'en', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(391, 0, 'en', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(392, 0, 'en', 'core.base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(393, 0, 'en', 'core.base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(394, 0, 'en', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(395, 0, 'en', 'core.base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(396, 0, 'en', 'core.base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(397, 0, 'en', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(398, 0, 'en', 'core.base/errors', '401_title', 'Permission Denied', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(399, 0, 'en', 'core.base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(400, 0, 'en', 'core.base/errors', '404_title', 'Page could not be found', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(401, 0, 'en', 'core.base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(402, 0, 'en', 'core.base/errors', '500_title', 'Page could not be loaded', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(403, 0, 'en', 'core.base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(404, 0, 'en', 'core.base/errors', 'reasons', 'This may have occurred because of several reasons', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(405, 1, 'en', 'core.base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the dashboard by <a href=\"http://botble.local/admin\">clicking here</a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(406, 0, 'en', 'core.base/forms', 'choose_image', 'Choose image', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(407, 0, 'en', 'core.base/forms', 'actions', 'Actions', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(408, 0, 'en', 'core.base/forms', 'save', 'Save', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(409, 0, 'en', 'core.base/forms', 'save_and_continue', 'Save & Edit', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(410, 0, 'en', 'core.base/forms', 'image', 'Image', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(411, 0, 'en', 'core.base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(412, 0, 'en', 'core.base/forms', 'create', 'Create', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(413, 0, 'en', 'core.base/forms', 'edit', 'Edit', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(414, 0, 'en', 'core.base/forms', 'permalink', 'Permalink', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(415, 0, 'en', 'core.base/forms', 'ok', 'OK', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(416, 0, 'en', 'core.base/forms', 'cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(417, 0, 'en', 'core.base/forms', 'character_remain', 'character(s) remain', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(418, 0, 'en', 'core.base/forms', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(419, 0, 'en', 'core.base/forms', 'choose_file', 'Choose file', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(420, 0, 'en', 'core.base/forms', 'file', 'File', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(421, 0, 'en', 'core.base/forms', 'content', 'Content', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(422, 0, 'en', 'core.base/forms', 'description', 'Description', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(423, 0, 'en', 'core.base/forms', 'name', 'Name', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(424, 0, 'en', 'core.base/forms', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(425, 0, 'en', 'core.base/forms', 'title', 'Title', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(426, 0, 'en', 'core.base/forms', 'value', 'Value', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(427, 0, 'en', 'core.base/forms', 'name_placeholder', 'Name', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(428, 0, 'en', 'core.base/forms', 'alias_placeholder', 'Alias', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(429, 0, 'en', 'core.base/forms', 'description_placeholder', 'Short description', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(430, 0, 'en', 'core.base/forms', 'parent', 'Parent', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(431, 0, 'en', 'core.base/forms', 'icon', 'Icon', '2018-03-18 09:04:19', '2018-03-28 03:22:33'),
(432, 0, 'en', 'core.base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(433, 0, 'en', 'core.base/forms', 'order_by', 'Order by', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(434, 0, 'en', 'core.base/forms', 'order_by_placeholder', 'Order by', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(435, 0, 'en', 'core.base/forms', 'featured', 'Is featured?', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(436, 0, 'en', 'core.base/forms', 'is_default', 'Is default?', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(437, 0, 'en', 'core.base/forms', 'update', 'Update', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(438, 0, 'en', 'core.base/forms', 'publish', 'Publish', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(439, 0, 'en', 'core.base/forms', 'remove_image', 'Remove image', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(440, 0, 'en', 'core.base/forms', 'order', 'Order', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(441, 0, 'en', 'core.base/forms', 'alias', 'Alias', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(442, 0, 'en', 'core.base/forms', 'basic_information', 'Basic information', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(443, 0, 'en', 'core.base/forms', 'short_code', 'Shortcode', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(444, 0, 'en', 'core.base/forms', 'add_short_code', 'Add a shortcode', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(445, 0, 'en', 'core.base/forms', 'add', 'Add', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(446, 0, 'en', 'core.base/forms', 'link', 'Link', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(447, 0, 'en', 'core.base/layouts', 'platform_admin', 'Platform Administration', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(448, 0, 'en', 'core.base/layouts', 'dashboard', 'Dashboard', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(449, 0, 'en', 'core.base/layouts', 'appearance', 'Appearance', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(450, 0, 'en', 'core.base/layouts', 'menu', 'Menu', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(451, 0, 'en', 'core.base/layouts', 'widgets', 'Widgets', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(452, 0, 'en', 'core.base/layouts', 'theme_options', 'Theme options', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(453, 0, 'en', 'core.base/layouts', 'plugins', 'Plugins', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(454, 0, 'en', 'core.base/layouts', 'settings', 'Settings', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(455, 0, 'en', 'core.base/layouts', 'setting_general', 'General', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(456, 1, 'en', 'core.base/layouts', 'feature_access_control', 'Feature Access Control', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(457, 1, 'en', 'core.base/layouts', 'role_permission', 'Roles and Permissions', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(458, 1, 'en', 'core.base/layouts', 'user_management', 'User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(459, 1, 'en', 'core.base/layouts', 'super_user_management', 'Super User Management', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(460, 0, 'en', 'core.base/layouts', 'system_information', 'System information', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(461, 0, 'en', 'core.base/layouts', 'theme', 'Theme', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(462, 0, 'en', 'core.base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(463, 0, 'en', 'core.base/layouts', 'profile', 'Profile', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(464, 0, 'en', 'core.base/layouts', 'logout', 'Logout', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(465, 0, 'en', 'core.base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(466, 0, 'en', 'core.base/layouts', 'home', 'Home', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(467, 0, 'en', 'core.base/layouts', 'search', 'Search', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(468, 0, 'en', 'core.base/layouts', 'add_new', 'Add new', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(469, 0, 'en', 'core.base/layouts', 'n_a', 'N/A', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(470, 0, 'en', 'core.base/layouts', 'page_loaded_time', 'Page loaded in', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(471, 0, 'en', 'core.base/layouts', 'view_website', 'View website', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(472, 0, 'en', 'core.base/mail', 'send-fail', 'Send email failed', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(473, 0, 'en', 'core.base/mail', 'happy_birthday', 'Happy birthday!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(474, 0, 'en', 'core.base/notices', 'create_success_message', 'Created successfully', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(475, 0, 'en', 'core.base/notices', 'update_success_message', 'Updated successfully', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(476, 0, 'en', 'core.base/notices', 'delete_success_message', 'Deleted successfully', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(477, 0, 'en', 'core.base/notices', 'success_header', 'Success!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(478, 0, 'en', 'core.base/notices', 'error_header', 'Error!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(479, 0, 'en', 'core.base/notices', 'cannot_delete', 'Can not delete this record!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(480, 0, 'en', 'core.base/notices', 'no_select', 'Please select at least one record to perform this action!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(481, 0, 'en', 'core.base/notices', 'processing_request', 'We are processing your request.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(482, 0, 'en', 'core.base/notices', 'error', 'Error', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(483, 0, 'en', 'core.base/notices', 'success', 'Success', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(484, 0, 'en', 'core.base/system', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(485, 0, 'en', 'core.base/system', 'cannot_find_user', 'Unable to find specified user', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(486, 0, 'en', 'core.base/system', 'supper_revoked', 'Super user access revoked', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(487, 0, 'en', 'core.base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(488, 0, 'en', 'core.base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(489, 0, 'en', 'core.base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(490, 0, 'en', 'core.base/system', 'supper_granted', 'Super user access granted', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(491, 0, 'en', 'core.base/system', 'delete_log_success', 'Delete log file successfully!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(492, 0, 'en', 'core.base/system', 'get_member_success', 'Member list retrieved successfully', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(493, 0, 'en', 'core.base/system', 'error_occur', 'The following errors occurred', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(494, 0, 'en', 'core.base/system', 'user_management', 'User Management', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(495, 0, 'en', 'core.base/system', 'user_management_description', 'Manage users.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(496, 0, 'en', 'core.base/system', 'role_and_permission', 'Roles and Permissions', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(497, 0, 'en', 'core.base/system', 'role_and_permission_description', 'Manage the available roles.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(498, 0, 'en', 'core.base/system', 'user.list_super', 'List Super Users', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(499, 0, 'en', 'core.base/system', 'user.email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(500, 0, 'en', 'core.base/system', 'user.last_login', 'Last Login', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(501, 0, 'en', 'core.base/system', 'user.username', 'Username', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(502, 0, 'en', 'core.base/system', 'user.add_user', 'Add Super User', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(503, 0, 'en', 'core.base/system', 'user.cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(504, 0, 'en', 'core.base/system', 'user.create', 'Create', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(505, 0, 'en', 'core.base/system', 'options.features', 'Feature Access Control', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(506, 0, 'en', 'core.base/system', 'options.feature_description', 'Manage the available.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(507, 0, 'en', 'core.base/system', 'options.manage_super', 'Super User Management', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(508, 0, 'en', 'core.base/system', 'options.manage_super_description', 'Add/remove super users.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(509, 0, 'en', 'core.base/system', 'options.info', 'System information', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(510, 0, 'en', 'core.base/system', 'options.info_description', 'All information about current system configuration.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(511, 0, 'en', 'core.base/system', 'info.title', 'System information', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(512, 0, 'en', 'core.base/system', 'info.cache', 'Cache', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(513, 0, 'en', 'core.base/system', 'info.locale', 'Active locale', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(514, 0, 'en', 'core.base/system', 'info.environment', 'Environment', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(515, 0, 'en', 'core.base/system', 'enabled', 'Enabled', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(516, 0, 'en', 'core.base/system', 'disabled', 'Disabled', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(517, 0, 'en', 'core.base/system', 'activated', 'Activated', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(518, 0, 'en', 'core.base/system', 'activate', 'Activate', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(519, 0, 'en', 'core.base/system', 'deactivate', 'Deactivate', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(520, 0, 'en', 'core.base/system', 'author', 'By', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(521, 0, 'en', 'core.base/system', 'update_plugin_status_success', 'Update plugin successfully', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(522, 0, 'en', 'core.base/system', 'disabled_in_demo_mode', 'You can not do it in demo mode!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(523, 0, 'en', 'core.base/system', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(524, 0, 'en', 'core.base/system', 'version', 'Version', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(525, 0, 'en', 'core.base/system', 'report_description', 'Please share this information for troubleshooting', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(526, 0, 'en', 'core.base/system', 'get_system_report', 'Get System Report', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(527, 0, 'en', 'core.base/system', 'system_environment', 'System Environment', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(528, 0, 'en', 'core.base/system', 'framework_version', 'Framework Version', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(529, 0, 'en', 'core.base/system', 'timezone', 'Timezone', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(530, 0, 'en', 'core.base/system', 'debug_mode', 'Debug Mode', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(531, 0, 'en', 'core.base/system', 'storage_dir_writable', 'Storage Dir Writable', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(532, 0, 'en', 'core.base/system', 'cache_dir_writable', 'Cache Dir Writable', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(533, 0, 'en', 'core.base/system', 'app_size', 'App Size', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(534, 0, 'en', 'core.base/system', 'server_environment', 'Server Environment', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(535, 0, 'en', 'core.base/system', 'php_version', 'PHP Version', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(536, 0, 'en', 'core.base/system', 'server_software', 'Server Software', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(537, 0, 'en', 'core.base/system', 'server_os', 'Server OS', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(538, 0, 'en', 'core.base/system', 'database', 'Database', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(539, 0, 'en', 'core.base/system', 'ssl_installed', 'SSL Installed', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(540, 0, 'en', 'core.base/system', 'cache_driver', 'Cache Driver', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(541, 0, 'en', 'core.base/system', 'session_driver', 'Session Driver', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(542, 0, 'en', 'core.base/system', 'mbstring_ext', 'Mbstring Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(543, 0, 'en', 'core.base/system', 'openssl_ext', 'OpenSSL Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(544, 0, 'en', 'core.base/system', 'pdo_ext', 'PDO Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(545, 0, 'en', 'core.base/system', 'curl_ext', 'CURL Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(546, 0, 'en', 'core.base/system', 'exif_ext', 'Exif Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(547, 0, 'en', 'core.base/system', 'file_info_ext', 'File info Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(548, 0, 'en', 'core.base/system', 'tokenizer_ext', 'Tokenizer Ext', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(549, 0, 'en', 'core.base/system', 'extra_stats', 'Extra Stats', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(550, 0, 'en', 'core.base/system', 'installed_packages', 'Installed Packages and their version numbers', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(551, 0, 'en', 'core.base/system', 'extra_information', 'Extra Information', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(552, 0, 'en', 'core.base/system', 'copy_report', 'Copy Report', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(553, 0, 'en', 'core.base/system', 'package_name', 'Package Name', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(554, 0, 'en', 'core.base/system', 'dependency_name', 'Dependency Name', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(555, 0, 'en', 'core.base/system', 'plugins', 'Plugins', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(556, 0, 'en', 'core.base/tables', 'filter_enabled', 'Advanced search filters enabled.', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(557, 0, 'en', 'core.base/tables', 'id', 'ID', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(558, 0, 'en', 'core.base/tables', 'name', 'Name', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(559, 0, 'en', 'core.base/tables', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(560, 0, 'en', 'core.base/tables', 'title', 'Title', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(561, 0, 'en', 'core.base/tables', 'order_by', 'Order By', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(562, 0, 'en', 'core.base/tables', 'order', 'Order', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(563, 0, 'en', 'core.base/tables', 'status', 'Status', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(564, 0, 'en', 'core.base/tables', 'created_at', 'Created At', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(565, 0, 'en', 'core.base/tables', 'updated_at', 'Updated At', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(566, 0, 'en', 'core.base/tables', 'description', 'Description', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(567, 0, 'en', 'core.base/tables', 'operations', 'Operations', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(568, 0, 'en', 'core.base/tables', 'loading_data', 'Loading data from server', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(569, 0, 'en', 'core.base/tables', 'url', 'URL', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(570, 0, 'en', 'core.base/tables', 'author', 'Author', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(571, 0, 'en', 'core.base/tables', 'notes', 'Notes', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(572, 0, 'en', 'core.base/tables', 'column', 'Column', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(573, 0, 'en', 'core.base/tables', 'origin', 'Origin', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(574, 0, 'en', 'core.base/tables', 'after_change', 'After changes', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(575, 0, 'en', 'core.base/tables', 'views', 'Views', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(576, 0, 'en', 'core.base/tables', 'browser', 'Browser', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(577, 0, 'en', 'core.base/tables', 'session', 'Session', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(578, 0, 'en', 'core.base/tables', 'activated', 'activated', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(579, 0, 'en', 'core.base/tables', 'deactivated', 'deactivated', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(580, 0, 'en', 'core.base/tables', 'is_featured', 'Is featured', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(581, 0, 'en', 'core.base/tables', 'edit', 'Edit', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(582, 0, 'en', 'core.base/tables', 'delete', 'Delete', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(583, 0, 'en', 'core.base/tables', 'restore', 'Restore', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(584, 0, 'en', 'core.base/tables', 'activate', 'Activate', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(585, 0, 'en', 'core.base/tables', 'deactivate', 'Deactivate', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(586, 0, 'en', 'core.base/tables', 'filter', 'Type to filter...', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(587, 0, 'en', 'core.base/tables', 'excel', 'Excel', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(588, 0, 'en', 'core.base/tables', 'export', 'Export', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(589, 0, 'en', 'core.base/tables', 'csv', 'CSV', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(590, 0, 'en', 'core.base/tables', 'pdf', 'PDF', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(591, 0, 'en', 'core.base/tables', 'print', 'Print', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(592, 0, 'en', 'core.base/tables', 'reset', 'Reset', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(593, 0, 'en', 'core.base/tables', 'reload', 'Reload', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(594, 0, 'en', 'core.base/tables', 'display', 'Display', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(595, 0, 'en', 'core.base/tables', 'all', 'All', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(596, 0, 'en', 'core.base/tables', 'add_new', 'Add New', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(597, 0, 'en', 'core.base/tables', 'action', 'Actions', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(598, 0, 'en', 'core.base/tables', 'delete_entry', 'Delete Entry', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(599, 0, 'en', 'core.base/tables', 'view', 'View Detail', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(600, 0, 'en', 'core.base/tables', 'save', 'Save', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(601, 0, 'en', 'core.base/tables', 'show_from', 'Show from', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(602, 0, 'en', 'core.base/tables', 'to', 'to', '2018-03-18 09:04:19', '2018-03-28 03:22:34'),
(603, 0, 'en', 'core.base/tables', 'in', 'in', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(604, 0, 'en', 'core.base/tables', 'records', 'records', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(605, 0, 'en', 'core.base/tables', 'no_data', 'No data to display', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(606, 0, 'en', 'core.base/tables', 'no_record', 'No record', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(607, 0, 'en', 'core.base/tables', 'filtered_from', 'filtered from', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(608, 0, 'en', 'core.base/tables', 'loading', 'Loading data from server', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(609, 0, 'en', 'core.base/tables', 'confirm_delete', 'Confirm delete', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(610, 0, 'en', 'core.base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(611, 0, 'en', 'core.base/tables', 'cancel', 'Cancel', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(612, 0, 'en', 'core.base/tables', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(613, 0, 'en', 'core.base/tables', 'email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(614, 0, 'en', 'core.base/tables', 'last_login', 'Last login', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(615, 0, 'en', 'core.base/tables', 'shortcode', 'Shortcode', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(616, 0, 'en', 'core.base/tables', 'image', 'Image', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(617, 0, 'en', 'core.base/tabs', 'detail', 'Detail', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(618, 0, 'en', 'core.base/tabs', 'file', 'Files', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(619, 0, 'en', 'core.base/tabs', 'record_note', 'Record Note', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(620, 0, 'en', 'core.base/tabs', 'revision', 'Revision History', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(621, 0, 'vi', 'core.base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(622, 0, 'vi', 'core.base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(623, 0, 'vi', 'core.base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(624, 0, 'vi', 'core.base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(625, 0, 'vi', 'core.base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(626, 0, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(627, 0, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(628, 0, 'vi', 'core.base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(629, 0, 'vi', 'core.base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(630, 0, 'vi', 'core.base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(631, 0, 'vi', 'core.base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(632, 0, 'vi', 'core.base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(633, 0, 'vi', 'core.base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(634, 0, 'vi', 'core.base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(635, 0, 'vi', 'core.base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(636, 0, 'vi', 'core.base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(637, 0, 'vi', 'core.base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(638, 0, 'vi', 'core.base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(639, 0, 'vi', 'core.base/errors', '500_title', 'Không thể tải trang', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(640, 0, 'vi', 'core.base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(641, 0, 'vi', 'core.base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(642, 1, 'vi', 'core.base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://botble.local/admin\"> nhấn vào đây </a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(643, 1, 'vi', 'core.base/errors', 'home_try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://botble.local\"> nhấn vào đây </a>.', '2018-03-18 09:04:19', '2018-03-18 09:04:19'),
(644, 0, 'vi', 'core.base/forms', 'choose_image', 'Chọn ảnh', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(645, 0, 'vi', 'core.base/forms', 'actions', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(646, 0, 'vi', 'core.base/forms', 'save', 'Lưu', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(647, 0, 'vi', 'core.base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(648, 0, 'vi', 'core.base/forms', 'image', 'Hình ảnh', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(649, 0, 'vi', 'core.base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(650, 0, 'vi', 'core.base/forms', 'create', 'Tạo mới', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(651, 0, 'vi', 'core.base/forms', 'edit', 'Sửa', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(652, 0, 'vi', 'core.base/forms', 'permalink', 'Đường dẫn', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(653, 0, 'vi', 'core.base/forms', 'ok', 'OK', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(654, 0, 'vi', 'core.base/forms', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(655, 0, 'vi', 'core.base/forms', 'character_remain', 'kí tự còn lại', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(656, 0, 'vi', 'core.base/forms', 'template', 'Template', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(657, 0, 'vi', 'core.base/forms', 'choose_file', 'Chọn tập tin', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(658, 0, 'vi', 'core.base/forms', 'file', 'Tập tin', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(659, 0, 'vi', 'core.base/forms', 'content', 'Nội dung', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(660, 0, 'vi', 'core.base/forms', 'description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(661, 0, 'vi', 'core.base/forms', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(662, 0, 'vi', 'core.base/forms', 'name_placeholder', 'Nhập tên', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(663, 0, 'vi', 'core.base/forms', 'description_placeholder', 'Mô tả ngắn', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(664, 0, 'vi', 'core.base/forms', 'parent', 'Cha', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(665, 0, 'vi', 'core.base/forms', 'icon', 'Biểu tượng', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(666, 0, 'vi', 'core.base/forms', 'order_by', 'Sắp xếp', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(667, 0, 'vi', 'core.base/forms', 'order_by_placeholder', 'Sắp xếp', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(668, 0, 'vi', 'core.base/forms', 'slug', 'Slug', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(669, 0, 'vi', 'core.base/forms', 'featured', 'Nổi bật?', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(670, 0, 'vi', 'core.base/forms', 'is_default', 'Mặc định?', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(671, 0, 'vi', 'core.base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(672, 0, 'vi', 'core.base/forms', 'update', 'Cập nhật', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(673, 0, 'vi', 'core.base/forms', 'publish', 'Xuất bản', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(674, 0, 'vi', 'core.base/forms', 'remove_image', 'Xoá ảnh', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(675, 0, 'vi', 'core.base/layouts', 'platform_admin', 'Quản trị hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(676, 0, 'vi', 'core.base/layouts', 'dashboard', 'Bảng điều khiển', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(677, 0, 'vi', 'core.base/layouts', 'appearance', 'Hiển thị', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(678, 0, 'vi', 'core.base/layouts', 'menu', 'Trình đơn', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(679, 0, 'vi', 'core.base/layouts', 'widgets', 'Tiện ích', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(680, 0, 'vi', 'core.base/layouts', 'theme_options', 'Tuỳ chọn giao diện', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(681, 0, 'vi', 'core.base/layouts', 'plugins', 'Tiện ích mở rộng', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(682, 0, 'vi', 'core.base/layouts', 'settings', 'Cài đặt', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(683, 0, 'vi', 'core.base/layouts', 'setting_general', 'Cơ bản', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(684, 0, 'vi', 'core.base/layouts', 'system_information', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(685, 0, 'vi', 'core.base/layouts', 'theme', 'Giao diện', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(686, 0, 'vi', 'core.base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(687, 0, 'vi', 'core.base/layouts', 'profile', 'Thông tin cá nhân', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(688, 0, 'vi', 'core.base/layouts', 'logout', 'Đăng xuất', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(689, 0, 'vi', 'core.base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(690, 0, 'vi', 'core.base/layouts', 'home', 'Trang chủ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(691, 0, 'vi', 'core.base/layouts', 'search', 'Tìm kiếm', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(692, 0, 'vi', 'core.base/layouts', 'add_new', 'Thêm mới', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(693, 0, 'vi', 'core.base/layouts', 'n_a', 'N/A', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(694, 0, 'vi', 'core.base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(695, 0, 'vi', 'core.base/layouts', 'view_website', 'Xem trang ngoài', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(696, 0, 'vi', 'core.base/mail', 'send-fail', 'Gửi email không thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(697, 0, 'vi', 'core.base/notices', 'create_success_message', 'Tạo thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(698, 0, 'vi', 'core.base/notices', 'update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(699, 0, 'vi', 'core.base/notices', 'delete_success_message', 'Xóa thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(700, 0, 'vi', 'core.base/notices', 'success_header', 'Thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(701, 0, 'vi', 'core.base/notices', 'error_header', 'Lỗi!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(702, 0, 'vi', 'core.base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(703, 0, 'vi', 'core.base/notices', 'cannot_delete', 'Không thể xóa bản ghi này', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(704, 0, 'vi', 'core.base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(705, 0, 'vi', 'core.base/notices', 'error', 'Lỗi', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(706, 0, 'vi', 'core.base/notices', 'success', 'Thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(707, 0, 'vi', 'core.base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(708, 0, 'vi', 'core.base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(709, 0, 'vi', 'core.base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(710, 0, 'vi', 'core.base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(711, 0, 'vi', 'core.base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(712, 0, 'vi', 'core.base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(713, 0, 'vi', 'core.base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(714, 0, 'vi', 'core.base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(715, 0, 'vi', 'core.base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(716, 0, 'vi', 'core.base/system', 'error_occur', 'Có lỗi dưới đây', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(717, 0, 'vi', 'core.base/system', 'role_and_permission', 'Phân quyền hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(718, 0, 'vi', 'core.base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(719, 0, 'vi', 'core.base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(720, 0, 'vi', 'core.base/system', 'user.username', 'Tên đăng nhập', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(721, 0, 'vi', 'core.base/system', 'user.email', 'Email', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(722, 0, 'vi', 'core.base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(723, 0, 'vi', 'core.base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(724, 0, 'vi', 'core.base/system', 'user.cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(725, 0, 'vi', 'core.base/system', 'user.create', 'Thêm', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(726, 0, 'vi', 'core.base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(727, 0, 'vi', 'core.base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(728, 0, 'vi', 'core.base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(729, 0, 'vi', 'core.base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(730, 0, 'vi', 'core.base/system', 'options.info', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(731, 0, 'vi', 'core.base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(732, 0, 'vi', 'core.base/system', 'info.title', 'Thông tin hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(733, 0, 'vi', 'core.base/system', 'info.cache', 'Bộ nhớ đệm', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(734, 0, 'vi', 'core.base/system', 'info.environment', 'Môi trường', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(735, 0, 'vi', 'core.base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(736, 0, 'vi', 'core.base/system', 'activate', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(737, 0, 'vi', 'core.base/system', 'author', 'Tác giả', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(738, 0, 'vi', 'core.base/system', 'deactivate', 'Hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(739, 0, 'vi', 'core.base/system', 'disabled', 'Đã vô hiệu', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(740, 0, 'vi', 'core.base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(741, 0, 'vi', 'core.base/system', 'enabled', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(742, 0, 'vi', 'core.base/system', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(743, 0, 'vi', 'core.base/system', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(744, 0, 'vi', 'core.base/system', 'user_management', 'Quản lý thành viên', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(745, 0, 'vi', 'core.base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(746, 0, 'vi', 'core.base/system', 'version', 'Phiên bản', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(747, 0, 'vi', 'core.base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(748, 0, 'vi', 'core.base/tables', 'id', 'ID', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(749, 0, 'vi', 'core.base/tables', 'name', 'Tên', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(750, 0, 'vi', 'core.base/tables', 'order_by', 'Thứ tự', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(751, 0, 'vi', 'core.base/tables', 'status', 'Trạng thái', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(752, 0, 'vi', 'core.base/tables', 'created_at', 'Ngày tạo', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(753, 0, 'vi', 'core.base/tables', 'updated_at', 'Ngày cập nhật', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(754, 0, 'vi', 'core.base/tables', 'operations', 'Tác vụ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(755, 0, 'vi', 'core.base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(756, 0, 'vi', 'core.base/tables', 'url', 'URL', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(757, 0, 'vi', 'core.base/tables', 'author', 'Người tạo', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(758, 0, 'vi', 'core.base/tables', 'column', 'Cột', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(759, 0, 'vi', 'core.base/tables', 'origin', 'Bản cũ', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(760, 0, 'vi', 'core.base/tables', 'after_change', 'Sau khi thay đổi', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(761, 0, 'vi', 'core.base/tables', 'notes', 'Ghi chú', '2018-03-18 09:04:19', '2018-03-28 03:22:35'),
(762, 0, 'vi', 'core.base/tables', 'activated', 'kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(763, 0, 'vi', 'core.base/tables', 'browser', 'Trình duyệt', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(764, 0, 'vi', 'core.base/tables', 'deactivated', 'hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(765, 0, 'vi', 'core.base/tables', 'description', 'Mô tả', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(766, 0, 'vi', 'core.base/tables', 'session', 'Phiên', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(767, 0, 'vi', 'core.base/tables', 'views', 'Lượt xem', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(768, 0, 'vi', 'core.base/tables', 'restore', 'Khôi phục', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(769, 0, 'vi', 'core.base/tables', 'edit', 'Sửa', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(770, 0, 'vi', 'core.base/tables', 'delete', 'Xóa', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(771, 0, 'vi', 'core.base/tables', 'action', 'Hành động', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(772, 0, 'vi', 'core.base/tables', 'activate', 'Kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(773, 0, 'vi', 'core.base/tables', 'add_new', 'Thêm mới', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(774, 0, 'vi', 'core.base/tables', 'all', 'Tất cả', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(775, 0, 'vi', 'core.base/tables', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(776, 0, 'vi', 'core.base/tables', 'confirm_delete', 'Xác nhận xóa', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(777, 0, 'vi', 'core.base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(778, 0, 'vi', 'core.base/tables', 'csv', 'CSV', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(779, 0, 'vi', 'core.base/tables', 'deactivate', 'Hủy kích hoạt', '2018-03-18 09:04:19', '2018-03-28 03:22:36'),
(780, 0, 'vi', 'core.base/tables', 'delete_entry', 'Xóa bản ghi', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(781, 0, 'vi', 'core.base/tables', 'display', 'Hiển thị', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(782, 0, 'vi', 'core.base/tables', 'excel', 'Excel', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(783, 0, 'vi', 'core.base/tables', 'export', 'Xuất bản', '2018-03-18 09:04:20', '2018-03-28 03:22:36');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(784, 0, 'vi', 'core.base/tables', 'filter', 'Nhập từ khóa...', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(785, 0, 'vi', 'core.base/tables', 'filtered_from', 'được lọc từ', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(786, 0, 'vi', 'core.base/tables', 'in', 'trong tổng số', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(787, 0, 'vi', 'core.base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(788, 0, 'vi', 'core.base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(789, 0, 'vi', 'core.base/tables', 'no_record', 'Không có dữ liệu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(790, 0, 'vi', 'core.base/tables', 'pdf', 'PDF', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(791, 0, 'vi', 'core.base/tables', 'print', 'In', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(792, 0, 'vi', 'core.base/tables', 'records', 'bản ghi', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(793, 0, 'vi', 'core.base/tables', 'reload', 'Tải lại', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(794, 0, 'vi', 'core.base/tables', 'reset', 'Làm mới', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(795, 0, 'vi', 'core.base/tables', 'save', 'Lưu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(796, 0, 'vi', 'core.base/tables', 'show_from', 'Hiển thị từ', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(797, 0, 'vi', 'core.base/tables', 'template', 'Giao diện', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(798, 0, 'vi', 'core.base/tables', 'to', 'đến', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(799, 0, 'vi', 'core.base/tables', 'view', 'Xem chi tiết', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(800, 0, 'vi', 'core.base/tabs', 'detail', 'Chi tiết', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(801, 0, 'vi', 'core.base/tabs', 'file', 'Tập tin', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(802, 0, 'vi', 'core.base/tabs', 'record_note', 'Ghi chú', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(803, 0, 'vi', 'core.base/tabs', 'revision', 'Lịch sử thay đổi', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(804, 0, 'en', 'core.dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(805, 0, 'en', 'core.dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(806, 0, 'en', 'core.dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(807, 0, 'en', 'core.dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(808, 0, 'en', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(809, 0, 'en', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(810, 0, 'en', 'core.dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(811, 0, 'en', 'core.dashboard/dashboard', 'hide', 'Hide', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(812, 0, 'en', 'core.dashboard/dashboard', 'reload', 'Reload', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(813, 0, 'en', 'core.dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(814, 0, 'en', 'core.dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(815, 0, 'en', 'core.dashboard/dashboard', 'widget_posts_recent', 'Recent Posts', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(816, 0, 'en', 'core.dashboard/dashboard', 'widget_analytics_page', 'Top Most Visit Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(817, 0, 'en', 'core.dashboard/dashboard', 'widget_analytics_browser', 'Top Browsers', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(818, 0, 'en', 'core.dashboard/dashboard', 'widget_analytics_referrer', 'Top Referrers', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(819, 0, 'en', 'core.dashboard/dashboard', 'widget_analytics_general', 'Site Analytics', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(820, 0, 'en', 'core.dashboard/dashboard', 'widget_audit_logs', 'Activities Logs', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(821, 0, 'en', 'core.dashboard/dashboard', 'widget_request_errors', 'Request Errors', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(822, 0, 'en', 'core.dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(823, 0, 'en', 'core.dashboard/dashboard', 'fullscreen', 'Full screen', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(824, 0, 'en', 'core.dashboard/dashboard', 'title', 'Dashboard', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(825, 0, 'vi', 'core.dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(826, 0, 'vi', 'core.dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(827, 0, 'vi', 'core.dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(828, 0, 'vi', 'core.dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(829, 0, 'vi', 'core.dashboard/dashboard', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(830, 0, 'vi', 'core.dashboard/dashboard', 'hide', 'Ẩn', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(831, 0, 'vi', 'core.dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(832, 0, 'vi', 'core.dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(833, 0, 'vi', 'core.dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(834, 0, 'vi', 'core.dashboard/dashboard', 'reload', 'Làm mới', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(835, 0, 'vi', 'core.dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(836, 0, 'vi', 'core.dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(837, 0, 'vi', 'core.dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(838, 0, 'vi', 'core.dashboard/dashboard', 'page', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(839, 0, 'vi', 'core.dashboard/dashboard', 'page_description', 'Bạn có :pages trang trong hệ thống. Nhấn vào nút \"Xem tất cả trang\" bên dưới để xem toàn bộ trang.', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(840, 0, 'vi', 'core.dashboard/dashboard', 'post', 'Bài viết', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(841, 0, 'vi', 'core.dashboard/dashboard', 'post_description', 'Bạn có :posts bài viết trong hệ thống. Nhấn vào nút \"Xem tất cả bài viết\" bên dưới để xem toàn bộ bài viết.', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(842, 0, 'vi', 'core.dashboard/dashboard', 'user', 'Thành viên', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(843, 0, 'vi', 'core.dashboard/dashboard', 'user_description', 'Bạn có :users thành viên trong hệ thống. Nhấn vào nút \"Xem tất cả thành viên\" bên dưới để xem toàn bộ thành viên.', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(844, 0, 'vi', 'core.dashboard/dashboard', 'view_all_pages', 'Xem tất cả trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(845, 0, 'vi', 'core.dashboard/dashboard', 'view_all_posts', 'Xem tất cả bài viết', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(846, 0, 'vi', 'core.dashboard/dashboard', 'view_all_users', 'Xem tất cả thành viên', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(847, 0, 'vi', 'core.dashboard/dashboard', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(848, 0, 'vi', 'core.dashboard/dashboard', 'widget_analytics_general', 'Thống kê truy cập', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(849, 0, 'vi', 'core.dashboard/dashboard', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(850, 0, 'vi', 'core.dashboard/dashboard', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(851, 0, 'vi', 'core.dashboard/dashboard', 'widget_audit_logs', 'Lịch sử hoạt động', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(852, 0, 'vi', 'core.dashboard/dashboard', 'widget_posts_recent', 'Bài viết gần đây', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(853, 0, 'vi', 'core.dashboard/dashboard', 'widget_request_errors', 'Liên kết bị hỏng', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(854, 0, 'en', 'core.menu/menu', 'name', 'Menu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(855, 0, 'en', 'core.menu/menu', 'key_name', 'Menu name (key: :key)', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(856, 0, 'en', 'core.menu/menu', 'basic_info', 'Basic information', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(857, 0, 'en', 'core.menu/menu', 'add_to_menu', 'Add to menu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(858, 0, 'en', 'core.menu/menu', 'custom_link', 'Custom link', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(859, 0, 'en', 'core.menu/menu', 'add_link', 'Add link', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(860, 0, 'en', 'core.menu/menu', 'structure', 'Menu structure', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(861, 0, 'en', 'core.menu/menu', 'remove', 'Remove', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(862, 0, 'en', 'core.menu/menu', 'cancel', 'Cancel', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(863, 0, 'en', 'core.menu/menu', 'title', 'Title', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(864, 0, 'en', 'core.menu/menu', 'icon', 'Icon', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(865, 0, 'en', 'core.menu/menu', 'url', 'URL', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(866, 0, 'en', 'core.menu/menu', 'target', 'Target', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(867, 0, 'en', 'core.menu/menu', 'css_class', 'CSS class', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(868, 0, 'en', 'core.menu/menu', 'self_open_link', 'Open link directly', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(869, 0, 'en', 'core.menu/menu', 'blank_open_link', 'Open link in new tab', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(870, 0, 'en', 'core.menu/menu', 'create', 'Create menu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(871, 0, 'en', 'core.menu/menu', 'edit', 'Edit menu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(872, 0, 'vi', 'core.menu/menu', 'name', 'Menu', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(873, 0, 'vi', 'core.menu/menu', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(874, 0, 'vi', 'core.menu/menu', 'add_link', 'Thêm liên kết', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(875, 0, 'vi', 'core.menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(876, 0, 'vi', 'core.menu/menu', 'basic_info', 'Thông tin cơ bản', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(877, 0, 'vi', 'core.menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(878, 0, 'vi', 'core.menu/menu', 'categories', 'Danh mục', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(879, 0, 'vi', 'core.menu/menu', 'css_class', 'CSS class', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(880, 0, 'vi', 'core.menu/menu', 'custom_link', 'Liên kết tùy chọn', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(881, 0, 'vi', 'core.menu/menu', 'icon', 'Biểu tượng', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(882, 0, 'vi', 'core.menu/menu', 'key_name', 'Tên menu (key::key)', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(883, 0, 'vi', 'core.menu/menu', 'pages', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(884, 0, 'vi', 'core.menu/menu', 'remove', 'Xóa', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(885, 0, 'vi', 'core.menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(886, 0, 'vi', 'core.menu/menu', 'structure', 'Cấu trúc trình đơn', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(887, 0, 'vi', 'core.menu/menu', 'tags', 'Thẻ', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(888, 0, 'vi', 'core.menu/menu', 'target', 'Target', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(889, 0, 'vi', 'core.menu/menu', 'title', 'Tiêu đề', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(890, 0, 'vi', 'core.menu/menu', 'url', 'URL', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(891, 0, 'en', 'core.page/pages', 'model', 'Page', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(892, 0, 'en', 'core.page/pages', 'models', 'Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(893, 0, 'en', 'core.page/pages', 'list', 'List Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(894, 0, 'en', 'core.page/pages', 'create', 'Create new page', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(895, 0, 'en', 'core.page/pages', 'edit', 'Edit page', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(896, 0, 'en', 'core.page/pages', 'form.name', 'Name', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(897, 0, 'en', 'core.page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(898, 0, 'en', 'core.page/pages', 'form.content', 'Content', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(899, 0, 'en', 'core.page/pages', 'form.note', 'Note content', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(900, 0, 'en', 'core.page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(901, 0, 'en', 'core.page/pages', 'notices.update_success_message', 'Update successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(902, 0, 'en', 'core.page/pages', 'cannot_delete', 'Page could not be deleted', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(903, 0, 'en', 'core.page/pages', 'deleted', 'Page deleted', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(904, 0, 'en', 'core.page/pages', 'pages', 'Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(905, 0, 'en', 'core.page/pages', 'menu', 'Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(906, 0, 'en', 'core.page/pages', 'menu_name', 'Pages', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(907, 0, 'en', 'core.page/pages', 'edit_this_page', 'Edit this page', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(908, 0, 'vi', 'core.page/pages', 'model', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(909, 0, 'vi', 'core.page/pages', 'models', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(910, 0, 'vi', 'core.page/pages', 'list', 'Danh sách trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(911, 0, 'vi', 'core.page/pages', 'create', 'Thêm trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(912, 0, 'vi', 'core.page/pages', 'edit', 'Sửa trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(913, 0, 'vi', 'core.page/pages', 'form.name', 'Tiêu đề trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(914, 0, 'vi', 'core.page/pages', 'form.note', 'Nội dung ghi chú', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(915, 0, 'vi', 'core.page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(916, 0, 'vi', 'core.page/pages', 'form.content', 'Nội dung', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(917, 0, 'vi', 'core.page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(918, 0, 'vi', 'core.page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(919, 0, 'vi', 'core.page/pages', 'deleted', 'Xóa trang thành công', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(920, 0, 'vi', 'core.page/pages', 'cannot_delete', 'Không thể xóa trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(921, 0, 'vi', 'core.page/pages', 'menu', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(922, 0, 'vi', 'core.page/pages', 'menu_name', 'Trang', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(923, 0, 'en', 'core.setting/setting', 'title', 'Settings', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(924, 0, 'en', 'core.setting/setting', 'general.theme', 'Theme', '2018-03-18 09:04:20', '2018-03-28 03:22:36'),
(925, 0, 'en', 'core.setting/setting', 'general.description', 'Setting site information', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(926, 0, 'en', 'core.setting/setting', 'general.title', 'General', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(927, 0, 'en', 'core.setting/setting', 'general.general_block', 'General Information', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(928, 0, 'en', 'core.setting/setting', 'general.rich_editor', 'Rich Editor', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(929, 0, 'en', 'core.setting/setting', 'general.site_title', 'Site title', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(930, 0, 'en', 'core.setting/setting', 'general.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(931, 0, 'en', 'core.setting/setting', 'general.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(932, 0, 'en', 'core.setting/setting', 'general.seo_block', 'SEO Configuration', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(933, 0, 'en', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(934, 0, 'en', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(935, 0, 'en', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(936, 0, 'en', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(937, 0, 'en', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(938, 0, 'en', 'core.setting/setting', 'general.enable_captcha', 'Enable Captcha?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(939, 0, 'en', 'core.setting/setting', 'general.contact_block', 'Contact Information', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(940, 0, 'en', 'core.setting/setting', 'general.address', 'Address', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(941, 0, 'en', 'core.setting/setting', 'general.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(942, 0, 'en', 'core.setting/setting', 'general.email_support', 'Email Support', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(943, 0, 'en', 'core.setting/setting', 'general.phone', 'Phone', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(944, 0, 'en', 'core.setting/setting', 'general.hotline', '	Hotline', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(945, 0, 'en', 'core.setting/setting', 'general.google_plus', 'Google Plus', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(946, 0, 'en', 'core.setting/setting', 'general.facebook', 'Facebook', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(947, 0, 'en', 'core.setting/setting', 'general.twitter', 'Twitter', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(948, 0, 'en', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(949, 0, 'en', 'core.setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(950, 0, 'en', 'core.setting/setting', 'general.placeholder.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(951, 0, 'en', 'core.setting/setting', 'general.placeholder.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(952, 0, 'en', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(953, 0, 'en', 'core.setting/setting', 'general.placeholder.email_support', 'Email Support', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(954, 0, 'en', 'core.setting/setting', 'general.placeholder.phone', 'Contact phone', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(955, 0, 'en', 'core.setting/setting', 'general.placeholder.address', 'Contact address', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(956, 0, 'en', 'core.setting/setting', 'general.placeholder.hotline', 'Hotline', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(957, 0, 'en', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(958, 0, 'en', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(959, 0, 'en', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (maximum 60 characters, separate by \",\" character)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(960, 0, 'en', 'core.setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(961, 0, 'en', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(962, 0, 'en', 'core.setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(963, 0, 'en', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Enable multi language in admin area?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(964, 0, 'en', 'core.setting/setting', 'general.enable', 'Enable', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(965, 0, 'en', 'core.setting/setting', 'general.disable', 'Disable', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(966, 0, 'en', 'core.setting/setting', 'general.enable_cache', 'Enable cache?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(967, 0, 'en', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(968, 0, 'en', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(969, 0, 'en', 'core.setting/setting', 'general.admin_logo', 'Admin logo', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(970, 0, 'en', 'core.setting/setting', 'general.admin_title', 'Admin title', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(971, 0, 'en', 'core.setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(972, 0, 'en', 'core.setting/setting', 'email.title', 'General settings for emails', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(973, 0, 'en', 'core.setting/setting', 'email.description', 'Config default value using in emails', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(974, 0, 'en', 'core.setting/setting', 'email.variable_title', 'Available variables can be use in email template', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(975, 0, 'vi', 'core.setting/setting', 'title', 'Cài đặt', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(976, 0, 'vi', 'core.setting/setting', 'general.theme', 'Giao diện', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(977, 0, 'vi', 'core.setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(978, 0, 'vi', 'core.setting/setting', 'general.title', 'Thông tin chung', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(979, 0, 'vi', 'core.setting/setting', 'general.general_block', 'Thông tin chung', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(980, 0, 'vi', 'core.setting/setting', 'general.site_title', 'Tên trang', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(981, 0, 'vi', 'core.setting/setting', 'general.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(982, 0, 'vi', 'core.setting/setting', 'general.admin_email', 'Email quản trị viên', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(983, 0, 'vi', 'core.setting/setting', 'general.seo_block', 'Cấu hình SEO', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(984, 0, 'vi', 'core.setting/setting', 'general.seo_title', 'SEO Title', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(985, 0, 'vi', 'core.setting/setting', 'general.seo_description', 'SEO Description', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(986, 0, 'vi', 'core.setting/setting', 'general.seo_keywords', 'SEO Keywords', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(987, 0, 'vi', 'core.setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(988, 0, 'vi', 'core.setting/setting', 'general.google_site_verification', 'Google site verification', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(989, 0, 'vi', 'core.setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(990, 0, 'vi', 'core.setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(991, 0, 'vi', 'core.setting/setting', 'general.address', 'Địa chỉ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(992, 0, 'vi', 'core.setting/setting', 'general.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(993, 0, 'vi', 'core.setting/setting', 'general.email_support', 'Email Hỗ trợ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(994, 0, 'vi', 'core.setting/setting', 'general.phone', 'Điện thoại', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(995, 0, 'vi', 'core.setting/setting', 'general.hotline', 'Đường dây nóng', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(996, 0, 'vi', 'core.setting/setting', 'general.google_plus', 'Google Plus', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(997, 0, 'vi', 'core.setting/setting', 'general.facebook', 'Facebook', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(998, 0, 'vi', 'core.setting/setting', 'general.twitter', 'Twitter', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(999, 0, 'vi', 'core.setting/setting', 'general.show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website) ?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1000, 0, 'vi', 'core.setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1001, 0, 'vi', 'core.setting/setting', 'general.placeholder.copyright', 'Copyright', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1002, 0, 'vi', 'core.setting/setting', 'general.placeholder.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1003, 0, 'vi', 'core.setting/setting', 'general.placeholder.address', 'Địa chỉ liên hệ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1004, 0, 'vi', 'core.setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1005, 0, 'vi', 'core.setting/setting', 'general.placeholder.email_support', 'Email Hỗ trợ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1006, 0, 'vi', 'core.setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1007, 0, 'vi', 'core.setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1008, 0, 'vi', 'core.setting/setting', 'general.placeholder.hotline', 'Đường dây nóng', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1009, 0, 'vi', 'core.setting/setting', 'general.placeholder.seo_title', 'SEO Title (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1010, 0, 'vi', 'core.setting/setting', 'general.placeholder.seo_description', 'SEO Description (tối đa 120 kí tự)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1011, 0, 'vi', 'core.setting/setting', 'general.placeholder.phone', 'Điện thoại', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1012, 0, 'vi', 'core.setting/setting', 'general.placeholder.seo_keywords', 'SEO Keywords (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1013, 0, 'vi', 'core.setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1014, 0, 'vi', 'core.setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1015, 0, 'vi', 'core.setting/setting', 'general.enable', 'Bật', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1016, 0, 'vi', 'core.setting/setting', 'general.disable', 'Tắt', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1017, 0, 'vi', 'core.setting/setting', 'general.enable_https', 'Bật https?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1018, 0, 'vi', 'core.setting/setting', 'general.enable_cache', 'Bật cache?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1019, 0, 'vi', 'core.setting/setting', 'general.cache_time', 'Cache time', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1020, 0, 'vi', 'core.setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1021, 0, 'vi', 'core.setting/setting', 'email.title', 'Cấu hình chung cho emails', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1022, 0, 'vi', 'core.setting/setting', 'email.description', 'Cấu hình các gía trị mặc định cho emails', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1023, 0, 'vi', 'core.setting/setting', 'email.variable_title', 'Sử dụng các biến trong email template', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1024, 0, 'en', 'core.widget/global', 'name', 'Widgets', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1025, 0, 'en', 'core.widget/global', 'create', 'New widget', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1026, 0, 'en', 'core.widget/global', 'edit', 'Edit widget', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1027, 0, 'en', 'core.widget/global', 'delete', 'Delete', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1028, 0, 'en', 'core.widget/global', 'available', 'Available Widgets', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1029, 0, 'en', 'core.widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1030, 0, 'en', 'core.widget/global', 'number_tag_display', 'Number tags will be display', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1031, 0, 'en', 'core.widget/global', 'number_post_display', 'Number posts will be display', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1032, 0, 'en', 'core.widget/global', 'select_menu', 'Select Menu', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1033, 0, 'en', 'core.widget/global', 'widget_text', 'Text', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1034, 0, 'en', 'core.widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1035, 0, 'en', 'core.widget/global', 'widget_recent_post', 'Recent Posts', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1036, 0, 'en', 'core.widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1037, 0, 'en', 'core.widget/global', 'widget_custom_menu', 'Custom Menu', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1038, 0, 'en', 'core.widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1039, 0, 'en', 'core.widget/global', 'widget_tag', 'Tags', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1040, 0, 'en', 'core.widget/global', 'widget_tag_description', 'Popular tags', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1041, 0, 'en', 'core.widget/global', 'save_success', 'Save widget successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1042, 0, 'en', 'core.widget/global', 'delete_success', 'Delete widget successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1043, 0, 'vi', 'core.widget/global', 'name', 'Widgets', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1044, 0, 'vi', 'core.widget/global', 'create', 'New widget', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1045, 0, 'vi', 'core.widget/global', 'edit', 'Edit widget', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1046, 0, 'vi', 'core.widget/global', 'available', 'Tiện ích có sẵn', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1047, 0, 'vi', 'core.widget/global', 'delete', 'Xóa', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1048, 0, 'vi', 'core.widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1049, 0, 'vi', 'core.widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1050, 0, 'vi', 'core.widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1051, 0, 'vi', 'core.widget/global', 'select_menu', 'Lựa chọn trình đơn', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1052, 0, 'vi', 'core.widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1053, 0, 'vi', 'core.widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1054, 0, 'vi', 'core.widget/global', 'widget_recent_post', 'Bài viết gần đây', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1055, 0, 'vi', 'core.widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1056, 0, 'vi', 'core.widget/global', 'widget_tag', 'Thẻ', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1057, 0, 'vi', 'core.widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1058, 0, 'vi', 'core.widget/global', 'widget_text', 'Văn bản', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1059, 0, 'vi', 'core.widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1060, 0, 'en', '/auth', 'login.username', 'Username', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1061, 0, 'en', '/auth', 'login.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1062, 0, 'en', '/auth', 'login.password', 'Password', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1063, 0, 'en', '/auth', 'login.title', 'User Login', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1064, 0, 'en', '/auth', 'login.remember', 'Remember me?', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1065, 0, 'en', '/auth', 'login.login', 'Sign in', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1066, 0, 'en', '/auth', 'login.placeholder.username', 'Please enter your username', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1067, 0, 'en', '/auth', 'login.placeholder.email', 'Please enter your email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1068, 0, 'en', '/auth', 'login.success', 'Login successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1069, 0, 'en', '/auth', 'login.fail', 'Wrong username or password.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1070, 0, 'en', '/auth', 'login.not_active', 'Your account has not been activated yet!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1071, 0, 'en', '/auth', 'login.banned', 'This account is banned.', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1072, 0, 'en', '/auth', 'login.logout_success', 'Logout successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1073, 0, 'en', '/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1074, 0, 'en', '/auth', 'forgot_password.title', 'Lost password', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1075, 0, 'en', '/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your username account. System will send a email with active link to reset your password.</p>', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1076, 0, 'en', '/auth', 'forgot_password.submit', 'Submit', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1077, 0, 'en', '/auth', 'reset.new_password', 'New password', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1078, 0, 'en', '/auth', 'reset.repassword', 'Confirm new password', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1079, 0, 'en', '/auth', 'reset.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:37'),
(1080, 0, 'en', '/auth', 'reset.title', 'Reset your password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1081, 0, 'en', '/auth', 'reset.update', 'Update', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1082, 0, 'en', '/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1083, 0, 'en', '/auth', 'reset.user_not_found', 'This username is not exist.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1084, 0, 'en', '/auth', 'reset.success', 'Reset password successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1085, 0, 'en', '/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1086, 0, 'en', '/auth', 'reset.reset.title', 'Email reset password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1087, 0, 'en', '/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1088, 0, 'en', '/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1089, 0, 'en', '/auth', 'reset.new-password', 'New password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1090, 0, 'en', '/auth', 'email.reminder.title', 'Email reset password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1091, 0, 'en', '/auth', 'email.invite.title', 'Invite to join ', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1092, 0, 'en', '/auth', 'repassword', 'Password confirm', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1093, 0, 'en', '/auth', 'failed', 'Failed', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1094, 0, 'en', '/auth', 'throttle', 'Throttle', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1095, 0, 'en', '/auth', 'not_member', 'Not a member yet?', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1096, 0, 'en', '/auth', 'register_now', 'Register now', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1097, 0, 'en', '/auth', 'lost_your_password', 'Lost your password?', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1098, 0, 'en', '/auth', 'login_title', 'Login to system', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1099, 0, 'en', '/auth', 'login_via_social', 'Login with social networks', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1100, 0, 'en', '/auth', 'back_to_login', 'Back to login page', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1101, 0, 'en', '/auth', 'accept_invite', 'Accept invite', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1102, 0, 'en', '/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1103, 0, 'en', '/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1104, 0, 'en', '/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1105, 0, 'en', '/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1106, 0, 'en', '/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1107, 0, 'en', '/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1108, 0, 'en', '/permissions', 'notices.create_success', 'The new role was successfully created', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1109, 0, 'en', '/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1110, 0, 'en', '/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1111, 0, 'en', '/permissions', 'notices.not_found', 'Role not found', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1112, 0, 'en', '/permissions', 'list', 'List Permissions', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1113, 0, 'en', '/permissions', 'name', 'Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1114, 0, 'en', '/permissions', 'current_role', 'Current Role', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1115, 0, 'en', '/permissions', 'no_role_assigned', 'No role assigned', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1116, 0, 'en', '/permissions', 'role_assigned', 'Assigned Role', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1117, 0, 'en', '/permissions', 'create_role', 'Create New Role', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1118, 0, 'en', '/permissions', 'role_name', 'Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1119, 0, 'en', '/permissions', 'role_description', 'Description', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1120, 0, 'en', '/permissions', 'permission_flags', 'Permission Flags', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1121, 0, 'en', '/permissions', 'cancel', 'Cancel', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1122, 0, 'en', '/permissions', 'reset', 'Reset', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1123, 0, 'en', '/permissions', 'save', 'Save', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1124, 0, 'en', '/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1125, 0, 'en', '/permissions', 'details', 'Details', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1126, 0, 'en', '/permissions', 'duplicate', 'Duplicate', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1127, 0, 'en', '/permissions', 'all', 'All Permissions', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1128, 0, 'en', '/permissions', 'list_role', 'List Roles', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1129, 0, 'en', '/permissions', 'created_on', 'Created On', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1130, 0, 'en', '/permissions', 'created_by', 'Created By', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1131, 0, 'en', '/permissions', 'actions', 'Actions', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1132, 0, 'en', '/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1133, 0, 'en', '/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1134, 0, 'en', '/permissions', 'delete_global_role', 'Can not delete global role', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1135, 0, 'en', '/permissions', 'delete_success', 'Delete role successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1136, 0, 'en', '/permissions', 'no_select', 'Please select at least one role to take this action!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1137, 0, 'en', '/permissions', 'not_found', 'No role found!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1138, 0, 'en', '/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1139, 0, 'en', '/permissions', 'modified_success', 'Modified successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1140, 0, 'en', '/permissions', 'create_success', 'Create successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1141, 0, 'en', '/permissions', 'duplicated_success', 'Duplicated successfully', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1142, 0, 'en', '/permissions', 'options', 'Options', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1143, 0, 'en', '/permissions', 'access_denied_message', 'You are not allowed to use this module', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1144, 0, 'en', '/permissions', 'roles', 'Roles', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1145, 0, 'en', '/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1146, 0, 'en', '/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1147, 0, 'en', '/reminders', 'token', 'This password reset token is invalid.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1148, 0, 'en', '/reminders', 'sent', 'Password reminder sent!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1149, 0, 'en', '/reminders', 'reset', 'Password has been reset!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1150, 0, 'en', '/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1151, 0, 'en', '/users', 'no_select', 'Please select at least one record to take this action!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1152, 0, 'en', '/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1153, 0, 'en', '/users', 'update_success', 'Update status successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1154, 0, 'en', '/users', 'save_setting_failed', 'Something went wrong when save your setting', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1155, 0, 'en', '/users', 'not_found', 'User not found', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1156, 0, 'en', '/users', 'email_exist', 'That email address already belongs to an existing account', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1157, 0, 'en', '/users', 'username_exist', 'That username address already belongs to an existing account', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1158, 0, 'en', '/users', 'update_profile_success', 'Your profile changes were successfully saved', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1159, 0, 'en', '/users', 'password_update_success', 'Password successfully changed', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1160, 0, 'en', '/users', 'current_password_not_valid', 'Current password is not valid', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1161, 0, 'en', '/users', 'invite_success', 'A new user account has been created for this person and an email sent to the address to complete the process.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1162, 0, 'en', '/users', 'invite_exist', 'User has already been invited.  A reminder notice has been sent.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1163, 0, 'en', '/users', 'invite_not_exist', 'Invite does not exist.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1164, 0, 'en', '/users', 'accept_invite_success', 'Welcome new member!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1165, 0, 'en', '/users', 'user_exist_in', 'User is already a member', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1166, 0, 'en', '/users', 'email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1167, 0, 'en', '/users', 'role', 'Role', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1168, 0, 'en', '/users', 'username', 'Username', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1169, 0, 'en', '/users', 'invite_user', 'Invite User', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1170, 0, 'en', '/users', 'invite_new_member', 'Invite new member?', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1171, 0, 'en', '/users', 'invite_description', 'Invite a new member to join this system.', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1172, 0, 'en', '/users', 'last_name', 'Last Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1173, 0, 'en', '/users', 'first_name', 'First Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1174, 0, 'en', '/users', 'message', 'Message', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1175, 0, 'en', '/users', 'cancel_btn', 'Cancel', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1176, 0, 'en', '/users', 'invite_btn', 'Invite', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1177, 0, 'en', '/users', 'change_password', 'Change password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1178, 0, 'en', '/users', 'new_password', 'New Password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1179, 0, 'en', '/users', 'confirm_new_password', 'Confirm New Password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1180, 0, 'en', '/users', 'password', 'Password', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1181, 0, 'en', '/users', 'save', 'Save', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1182, 0, 'en', '/users', 'cannot_delete', 'User could not be deleted', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1183, 0, 'en', '/users', 'deleted', 'User deleted', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1184, 0, 'en', '/users', 'list', 'List Users', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1185, 0, 'en', '/users', 'last_login', 'Last Login', '2018-03-18 09:04:20', '2018-03-28 03:22:38');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1186, 0, 'en', '/users', 'error_update_profile_image', 'Error when update profile image', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1187, 0, 'en', '/users', 'email_invite_template', '<h3>Hello :name</h3><p>You are invited to be a user in :site_title.</p><p>The sender included the following message with this invitation:</p><p>\":content\"</p><p>Please click this link to accept invite and join with us: <a href=\":link\">Join now</a></p>', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1188, 0, 'en', '/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1189, 0, 'en', '/users', 'change_profile_image', 'Change Profile Image', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1190, 0, 'en', '/users', 'new_image', 'New Image', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1191, 0, 'en', '/users', 'loading', 'Loading', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1192, 0, 'en', '/users', 'close', 'Close', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1193, 0, 'en', '/users', 'update', 'Update', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1194, 0, 'en', '/users', 'read_image_failed', 'Failed to read the image file', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1195, 0, 'en', '/users', 'users', 'Users', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1196, 0, 'en', '/users', 'update_avatar_success', 'Update profile image successfully!', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1197, 0, 'en', '/users', 'info.title', 'User profile', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1198, 0, 'en', '/users', 'info.first_name', 'First Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1199, 0, 'en', '/users', 'info.last_name', 'Last Name', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1200, 0, 'en', '/users', 'info.email', 'Email', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1201, 0, 'en', '/users', 'info.second_email', 'Secondary Email', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1202, 0, 'en', '/users', 'info.address', 'Address', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1203, 0, 'en', '/users', 'info.second_address', 'Secondary Address', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1204, 0, 'en', '/users', 'info.birth_day', 'Date of birth', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1205, 0, 'en', '/users', 'info.job', 'Job Position', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1206, 0, 'en', '/users', 'info.mobile_number', 'Mobile Number', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1207, 0, 'en', '/users', 'info.second_mobile_number', 'Secondary Phone', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1208, 0, 'en', '/users', 'info.interes', 'Interests', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1209, 0, 'en', '/users', 'info.about', 'About', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1210, 0, 'en', '/users', 'gender.title', 'Gender', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1211, 0, 'en', '/users', 'gender.male', 'Male', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1212, 0, 'en', '/users', 'gender.female', 'Female', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1213, 0, 'en', 'media/media', 'filter', 'Filter', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1214, 0, 'en', 'media/media', 'everything', 'Everything', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1215, 0, 'en', 'media/media', 'image', 'Image', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1216, 0, 'en', 'media/media', 'video', 'Video', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1217, 0, 'en', 'media/media', 'document', 'Document', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1218, 0, 'en', 'media/media', 'view_in', 'View in', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1219, 0, 'en', 'media/media', 'all_media', 'All media', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1220, 0, 'en', 'media/media', 'trash', 'Trash', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1221, 0, 'en', 'media/media', 'recent', 'Recent', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1222, 0, 'en', 'media/media', 'favorites', 'Favorites', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1223, 0, 'en', 'media/media', 'upload', 'Upload', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1224, 0, 'en', 'media/media', 'add_from', 'Add from', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1225, 0, 'en', 'media/media', 'youtube', 'Youtube', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1226, 0, 'en', 'media/media', 'vimeo', 'Vimeo', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1227, 0, 'en', 'media/media', 'vine', 'Vine', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1228, 0, 'en', 'media/media', 'daily_motion', 'Dailymotion', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1229, 0, 'en', 'media/media', 'create_folder', 'Create folder', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1230, 0, 'en', 'media/media', 'refresh', 'Refresh', '2018-03-18 09:04:20', '2018-03-28 03:22:38'),
(1231, 0, 'en', 'media/media', 'empty_trash', 'Empty trash', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1232, 0, 'en', 'media/media', 'search_file_and_folder', 'Search file and folder', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1233, 0, 'en', 'media/media', 'sort', 'Sort', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1234, 0, 'en', 'media/media', 'file_name_asc', 'File name - ASC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1235, 0, 'en', 'media/media', 'file_name_desc', 'File name - DESC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1236, 0, 'en', 'media/media', 'created_date_asc', 'Created date - ASC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1237, 0, 'en', 'media/media', 'created_date_desc', 'Created_date - DESC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1238, 0, 'en', 'media/media', 'uploaded_date_asc', 'Uploaed date - ASC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1239, 0, 'en', 'media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1240, 0, 'en', 'media/media', 'size_asc', 'Size - ASC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1241, 0, 'en', 'media/media', 'size_desc', 'Size - DESC', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1242, 0, 'en', 'media/media', 'actions', 'Actions', '2018-03-18 09:04:20', '2018-03-28 03:22:39'),
(1243, 0, 'en', 'media/media', 'nothing_is_selected', 'Nothing is selected', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1244, 0, 'en', 'media/media', 'insert', 'Insert', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1245, 0, 'en', 'media/media', 'coming_soon', 'Coming soon', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1246, 0, 'en', 'media/media', 'add_from_youtube', 'Add from youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1247, 0, 'en', 'media/media', 'playlist', 'Playlist', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1248, 0, 'en', 'media/media', 'add_url', 'Add URL', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1249, 0, 'en', 'media/media', 'folder_name', 'Folder name', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1250, 0, 'en', 'media/media', 'create', 'Create', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1251, 0, 'en', 'media/media', 'rename', 'Rename', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1252, 0, 'en', 'media/media', 'close', 'Close', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1253, 0, 'en', 'media/media', 'save_changes', 'Save changes', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1254, 0, 'en', 'media/media', 'move_to_trash', 'Move items to trash', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1255, 1, 'en', 'media/media', 'confirm_trash', 'Are you sure you wanna move these items to trash?', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1256, 0, 'en', 'media/media', 'confirm', 'Confirm', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1257, 0, 'en', 'media/media', 'confirm_delete', 'Delete item(s)', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1258, 0, 'en', 'media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1259, 0, 'en', 'media/media', 'empty_trash_title', 'Empty trash', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1260, 0, 'en', 'media/media', 'empty_trash_description', 'Your request cannot rollback.Are you sure you wanna remove all items in trash?', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1261, 0, 'en', 'media/media', 'up_level', 'Up one level', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1262, 0, 'en', 'media/media', 'upload_progress', 'Upload progress', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1263, 1, 'en', 'media/media', 'name_reserved', 'The name is reserved', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1264, 0, 'en', 'media/media', 'folder_created', 'Folder is created successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1265, 0, 'en', 'media/media', 'gallery', 'Media gallery', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1266, 0, 'en', 'media/media', 'trash_error', 'Error when delete selected item(s)', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1267, 0, 'en', 'media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1268, 0, 'en', 'media/media', 'restore_error', 'Error when restore selected item(s)', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1269, 0, 'en', 'media/media', 'restore_success', 'Restore selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1270, 0, 'en', 'media/media', 'copy_success', 'Copied selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1271, 0, 'en', 'media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1272, 0, 'en', 'media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1273, 0, 'en', 'media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1274, 1, 'en', 'media/media', 'is_reserved_name', ':name is reserved name!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1275, 0, 'en', 'media/media', 'rename_error', 'Error when rename item(s)', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1276, 0, 'en', 'media/media', 'rename_success', 'Rename selected item(s) successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1277, 1, 'en', 'media/media', 'emty_trash_success', 'Empty trash successfully!', '2018-03-18 09:04:21', '2018-03-18 09:04:21'),
(1278, 0, 'en', 'media/media', 'invalid_action', 'Invalid action!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1279, 0, 'en', 'media/media', 'file_not_exists', 'File is not exists!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1280, 0, 'en', 'media/media', 'download_file_error', 'Error when downloading files!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1281, 0, 'en', 'media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1282, 0, 'en', 'media/media', 'can_not_download_file', 'Can not download this file!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1283, 0, 'en', 'media/media', 'invalid_request', 'Invalid request!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1284, 0, 'en', 'media/media', 'add_success', 'Add item successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1285, 0, 'en', 'media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1286, 0, 'en', 'media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1287, 0, 'en', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1288, 0, 'en', 'media/media', 'menu_name', 'Media', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1289, 0, 'en', 'media/media', 'add', 'Add media', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1290, 0, 'en', 'media/media', 'javascript.name', 'Name', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1291, 0, 'en', 'media/media', 'javascript.url', 'Url', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1292, 0, 'en', 'media/media', 'javascript.full_url', 'Full url', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1293, 0, 'en', 'media/media', 'javascript.size', 'Size', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1294, 0, 'en', 'media/media', 'javascript.mime_type', 'Type', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1295, 0, 'en', 'media/media', 'javascript.created_at', 'Uploaded at', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1296, 0, 'en', 'media/media', 'javascript.updated_at', 'Modified at', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1297, 0, 'en', 'media/media', 'javascript.nothing_selected', 'Nothing is selected', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1298, 0, 'en', 'media/media', 'javascript.visit_link', 'Open link', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1299, 0, 'en', 'media/media', 'javascript.add_from.youtube.original_msg', 'Please input Youtube URL', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1300, 0, 'en', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Please specify the Youtube API key', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1301, 0, 'en', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Your link is not belongs to Youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1302, 0, 'en', 'media/media', 'javascript.add_from.youtube.error_msg', 'Some error occurred...', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1303, 0, 'en', 'media/media', 'javascript.no_item.all_media.icon', 'fa fa-cloud-upload', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1304, 0, 'en', 'media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1305, 0, 'en', 'media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1306, 0, 'en', 'media/media', 'javascript.no_item.trash.icon', 'fa fa-trash', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1307, 0, 'en', 'media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1308, 0, 'en', 'media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1309, 0, 'en', 'media/media', 'javascript.no_item.favorites.icon', 'fa fa-star', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1310, 0, 'en', 'media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1311, 0, 'en', 'media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1312, 0, 'en', 'media/media', 'javascript.no_item.recent.icon', 'fa fa-clock-o', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1313, 0, 'en', 'media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1314, 0, 'en', 'media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1315, 0, 'en', 'media/media', 'javascript.no_item.default.icon', 'fa fa-refresh', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1316, 0, 'en', 'media/media', 'javascript.no_item.default.title', 'No items', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1317, 0, 'en', 'media/media', 'javascript.no_item.default.message', 'This directory has no item', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1318, 0, 'en', 'media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1319, 0, 'en', 'media/media', 'javascript.message.error_header', 'Error', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1320, 0, 'en', 'media/media', 'javascript.message.success_header', 'Success', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1321, 0, 'en', 'media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1322, 0, 'en', 'media/media', 'javascript.actions_list.basic.preview', 'Preview', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1323, 0, 'en', 'media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1324, 0, 'en', 'media/media', 'javascript.actions_list.file.rename', 'Rename', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1325, 0, 'en', 'media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1326, 0, 'en', 'media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1327, 0, 'en', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1328, 0, 'en', 'media/media', 'javascript.actions_list.other.download', 'Download', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1329, 0, 'en', 'media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1330, 0, 'en', 'media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1331, 0, 'en', 'media/media', 'javascript.actions_list.other.restore', 'Restore', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1332, 0, 'vi', 'media/media', 'filter', 'Lọc', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1333, 0, 'vi', 'media/media', 'everything', 'Tất cả', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1334, 0, 'vi', 'media/media', 'image', 'Hình ảnh', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1335, 0, 'vi', 'media/media', 'video', 'Phim', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1336, 0, 'vi', 'media/media', 'document', 'Tài liệu', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1337, 0, 'vi', 'media/media', 'view_in', 'Chế độ xem', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1338, 0, 'vi', 'media/media', 'all_media', 'Tất cả tập tin', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1339, 0, 'vi', 'media/media', 'trash', 'Thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1340, 0, 'vi', 'media/media', 'recent', 'Gần đây', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1341, 0, 'vi', 'media/media', 'favorites', 'Được gắn dấu sao', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1342, 0, 'vi', 'media/media', 'upload', 'Tải lên', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1343, 0, 'vi', 'media/media', 'add_from', 'Thêm từ', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1344, 0, 'vi', 'media/media', 'youtube', 'Youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1345, 0, 'vi', 'media/media', 'vimeo', 'Vimeo', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1346, 0, 'vi', 'media/media', 'vine', 'Vine', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1347, 0, 'vi', 'media/media', 'daily_motion', 'Dailymotion', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1348, 0, 'vi', 'media/media', 'create_folder', 'Tạo thư mục', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1349, 0, 'vi', 'media/media', 'refresh', 'Làm mới', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1350, 0, 'vi', 'media/media', 'empty_trash', 'Dọn thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1351, 0, 'vi', 'media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1352, 0, 'vi', 'media/media', 'sort', 'Sắp xếp', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1353, 0, 'vi', 'media/media', 'file_name_asc', 'Tên tập tin - ASC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1354, 0, 'vi', 'media/media', 'file_name_desc', 'Tên tập tin - DESC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1355, 0, 'vi', 'media/media', 'created_date_asc', 'Ngày tạo - ASC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1356, 0, 'vi', 'media/media', 'created_date_desc', 'Ngày tạo - DESC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1357, 0, 'vi', 'media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1358, 0, 'vi', 'media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1359, 0, 'vi', 'media/media', 'size_asc', 'Kích thước - ASC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1360, 0, 'vi', 'media/media', 'size_desc', 'Kích thước - DESC', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1361, 0, 'vi', 'media/media', 'actions', 'Hành động', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1362, 0, 'vi', 'media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1363, 0, 'vi', 'media/media', 'insert', 'Chèn', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1364, 0, 'vi', 'media/media', 'coming_soon', 'Đang phát triển', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1365, 0, 'vi', 'media/media', 'add_from_youtube', 'Thêm từ youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1366, 0, 'vi', 'media/media', 'playlist', 'Playlist', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1367, 0, 'vi', 'media/media', 'add_url', 'Thêm đường dẫn', '2018-03-18 09:04:21', '2018-03-28 03:22:39'),
(1368, 0, 'vi', 'media/media', 'folder_name', 'Tên thư mục', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1369, 0, 'vi', 'media/media', 'create', 'Tạo', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1370, 0, 'vi', 'media/media', 'rename', 'Đổi tên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1371, 0, 'vi', 'media/media', 'close', 'Đóng', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1372, 0, 'vi', 'media/media', 'save_changes', 'Lưu thay đổi', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1373, 0, 'vi', 'media/media', 'move_to_trash', 'Đưa vào thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1374, 0, 'vi', 'media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1375, 0, 'vi', 'media/media', 'confirm', 'Xác nhận', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1376, 0, 'vi', 'media/media', 'confirm_delete', 'Xóa tập tin', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1377, 0, 'vi', 'media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1378, 0, 'vi', 'media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1379, 0, 'vi', 'media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1380, 0, 'vi', 'media/media', 'up_level', 'Quay lại một cấp', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1381, 0, 'vi', 'media/media', 'upload_progress', 'Tiến trình tải lên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1382, 0, 'vi', 'media/media', 'name_reserved', 'Tên này không được phép đặt', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1383, 0, 'vi', 'media/media', 'folder_created', 'Tạo thư mục thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1384, 0, 'vi', 'media/media', 'gallery', 'Thư viện tập tin', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1385, 0, 'vi', 'media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1386, 0, 'vi', 'media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1387, 0, 'vi', 'media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1388, 0, 'vi', 'media/media', 'restore_success', 'Khôi phục thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1389, 0, 'vi', 'media/media', 'copy_success', 'Sao chép thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1390, 0, 'vi', 'media/media', 'delete_success', 'Xóa thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1391, 0, 'vi', 'media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1392, 0, 'vi', 'media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1393, 0, 'vi', 'media/media', 'is_reserved_name', ':name không được phép đặt!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1394, 0, 'vi', 'media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1395, 0, 'vi', 'media/media', 'rename_success', 'Đổi tên thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1396, 0, 'vi', 'media/media', 'emty_trash_success', 'Dọn sạch thùng rác thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1397, 0, 'vi', 'media/media', 'invalid_action', 'Hành động không hợp lệ!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1398, 0, 'vi', 'media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1399, 0, 'vi', 'media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1400, 0, 'vi', 'media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1401, 0, 'vi', 'media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1402, 0, 'vi', 'media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1403, 0, 'vi', 'media/media', 'add_success', 'Thêm thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1404, 0, 'vi', 'media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1405, 0, 'vi', 'media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1406, 0, 'vi', 'media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1407, 0, 'vi', 'media/media', 'menu_name', 'Quản lý tập tin', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1408, 0, 'vi', 'media/media', 'add', 'Thêm tập tin', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1409, 0, 'vi', 'media/media', 'javascript.name', 'Tên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1410, 0, 'vi', 'media/media', 'javascript.url', 'Đường dẫn', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1411, 0, 'vi', 'media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1412, 0, 'vi', 'media/media', 'javascript.size', 'Kích thước', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1413, 0, 'vi', 'media/media', 'javascript.mime_type', 'Loại', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1414, 0, 'vi', 'media/media', 'javascript.created_at', 'Được tải lên lúc', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1415, 0, 'vi', 'media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1416, 0, 'vi', 'media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1417, 0, 'vi', 'media/media', 'javascript.visit_link', 'Mở liên kết', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1418, 0, 'vi', 'media/media', 'javascript.add_from.youtube.original_msg', 'Vui lòng nhập chính xác đường dẫn Youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1419, 0, 'vi', 'media/media', 'javascript.add_from.youtube.no_api_key_msg', 'Vui lòng khai báo API key của Youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1420, 0, 'vi', 'media/media', 'javascript.add_from.youtube.invalid_url_msg', 'Liên kết này không dẫn đến Youtube', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1421, 0, 'vi', 'media/media', 'javascript.add_from.youtube.error_msg', 'Có lỗi xảy ra trong tiến trình thực hiện...', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1422, 0, 'vi', 'media/media', 'javascript.no_item.all_media.icon', 'fa fa-cloud-upload', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1423, 0, 'vi', 'media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1424, 0, 'vi', 'media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1425, 0, 'vi', 'media/media', 'javascript.no_item.trash.icon', 'fa fa-trash', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1426, 0, 'vi', 'media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1427, 0, 'vi', 'media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1428, 0, 'vi', 'media/media', 'javascript.no_item.favorites.icon', 'fa fa-star', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1429, 0, 'vi', 'media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1430, 0, 'vi', 'media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1431, 0, 'vi', 'media/media', 'javascript.no_item.recent.icon', 'fa fa-clock-o', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1432, 0, 'vi', 'media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1433, 0, 'vi', 'media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1434, 0, 'vi', 'media/media', 'javascript.no_item.default.icon', 'fa fa-refresh', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1435, 0, 'vi', 'media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1436, 0, 'vi', 'media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1437, 0, 'vi', 'media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1438, 0, 'vi', 'media/media', 'javascript.message.error_header', 'Lỗi', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1439, 0, 'vi', 'media/media', 'javascript.message.success_header', 'Thành công', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1440, 0, 'vi', 'media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1441, 0, 'vi', 'media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1442, 0, 'vi', 'media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1443, 0, 'vi', 'media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1444, 0, 'vi', 'media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1445, 0, 'vi', 'media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1446, 0, 'vi', 'media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1447, 0, 'vi', 'media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1448, 0, 'vi', 'media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1449, 0, 'vi', 'media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1450, 0, 'vi', 'media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1451, 0, 'en', 'plugins.analytics/analytics', 'sessions', 'Sessions', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1452, 0, 'en', 'plugins.analytics/analytics', 'visitors', 'Visitors', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1453, 0, 'en', 'plugins.analytics/analytics', 'pageviews', 'Pageviews', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1454, 0, 'en', 'plugins.analytics/analytics', 'bounce_rate', 'Bounce Rate', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1455, 0, 'en', 'plugins.analytics/analytics', 'page_session', 'Pages/Session', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1456, 0, 'en', 'plugins.analytics/analytics', 'avg_duration', 'Avg. Duration', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1457, 0, 'en', 'plugins.analytics/analytics', 'percent_new_session', 'Percent new session', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1458, 0, 'en', 'plugins.analytics/analytics', 'new_users', 'New visitors', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1459, 0, 'en', 'plugins.analytics/analytics', 'visits', 'visits', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1460, 0, 'en', 'plugins.analytics/analytics', 'views', 'views', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1461, 0, 'en', 'plugins.analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1462, 0, 'en', 'plugins.analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1463, 0, 'en', 'plugins.analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1464, 0, 'en', 'plugins.analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"http://docs.botble.com/v/:version/analytics\" target=\"_blank\">http://docs.botble.com/v/:version/analytics</a>', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1465, 0, 'vi', 'plugins.analytics/analytics', 'avg_duration', 'Trung bình', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1466, 0, 'vi', 'plugins.analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1467, 0, 'vi', 'plugins.analytics/analytics', 'page_session', 'Trang/Phiên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1468, 0, 'vi', 'plugins.analytics/analytics', 'pageviews', 'Lượt xem', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1469, 0, 'vi', 'plugins.analytics/analytics', 'sessions', 'Phiên', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1470, 0, 'vi', 'plugins.analytics/analytics', 'views', 'lượt xem', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1471, 0, 'vi', 'plugins.analytics/analytics', 'visitors', 'Người truy cập', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1472, 0, 'vi', 'plugins.analytics/analytics', 'visits', 'lượt ghé thăm', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1473, 0, 'en', 'plugins.audit-log/history', 'created', 'created', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1474, 0, 'en', 'plugins.audit-log/history', 'updated', 'updated', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1475, 0, 'en', 'plugins.audit-log/history', 'deleted', 'deleted', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1476, 0, 'en', 'plugins.audit-log/history', 'logged in', 'logged in', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1477, 0, 'en', 'plugins.audit-log/history', 'logged out', 'logged out', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1478, 0, 'en', 'plugins.audit-log/history', 'changed password', 'changed password', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1479, 0, 'en', 'plugins.audit-log/history', 'updated profile', 'updated profile', '2018-03-18 09:04:21', '2018-03-28 03:22:40'),
(1480, 0, 'en', 'plugins.audit-log/history', 'attached', 'attached', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1481, 0, 'en', 'plugins.audit-log/history', 'shared', 'shared', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1482, 0, 'en', 'plugins.audit-log/history', 'to the system', 'to the system', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1483, 0, 'en', 'plugins.audit-log/history', 'of the system', 'of the system', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1484, 0, 'en', 'plugins.audit-log/history', 'menu', 'menu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1485, 0, 'en', 'plugins.audit-log/history', 'post', 'post', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1486, 0, 'en', 'plugins.audit-log/history', 'page', 'page', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1487, 0, 'en', 'plugins.audit-log/history', 'category', 'category', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1488, 0, 'en', 'plugins.audit-log/history', 'tag', 'tag', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1489, 0, 'en', 'plugins.audit-log/history', 'user', 'user', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1490, 0, 'en', 'plugins.audit-log/history', 'contact', 'contact', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1491, 0, 'en', 'plugins.audit-log/history', 'backup', 'backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1492, 0, 'en', 'plugins.audit-log/history', 'custom-field', 'custom field', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1493, 0, 'vi', 'plugins.audit-log/history', 'created', ' đã tạo', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1494, 0, 'vi', 'plugins.audit-log/history', 'updated', ' đã cập nhật', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1495, 0, 'vi', 'plugins.audit-log/history', 'deleted', ' đã xóa', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1496, 0, 'vi', 'plugins.audit-log/history', 'attached', 'đính kèm', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1497, 0, 'vi', 'plugins.audit-log/history', 'backup', 'sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1498, 0, 'vi', 'plugins.audit-log/history', 'category', 'danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1499, 0, 'vi', 'plugins.audit-log/history', 'changed password', 'thay đổi mật khẩu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1500, 0, 'vi', 'plugins.audit-log/history', 'contact', 'liên hệ', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1501, 0, 'vi', 'plugins.audit-log/history', 'custom-field', 'khung mở rộng', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1502, 0, 'vi', 'plugins.audit-log/history', 'logged in', 'đăng nhập', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1503, 0, 'vi', 'plugins.audit-log/history', 'logged out', 'đăng xuất', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1504, 0, 'vi', 'plugins.audit-log/history', 'menu', 'trình đơn', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1505, 0, 'vi', 'plugins.audit-log/history', 'of the system', 'khỏi hệ thống', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1506, 0, 'vi', 'plugins.audit-log/history', 'page', 'trang', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1507, 0, 'vi', 'plugins.audit-log/history', 'post', 'bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1508, 0, 'vi', 'plugins.audit-log/history', 'shared', 'đã chia sẻ', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1509, 0, 'vi', 'plugins.audit-log/history', 'tag', 'thẻ', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1510, 0, 'vi', 'plugins.audit-log/history', 'to the system', 'vào hệ thống', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1511, 0, 'vi', 'plugins.audit-log/history', 'updated profile', 'cập nhật tài khoản', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1512, 0, 'vi', 'plugins.audit-log/history', 'user', 'thành viên', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1513, 0, 'en', 'plugins.backup/backup', 'name', 'Backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1514, 0, 'en', 'plugins.backup/backup', 'backup_description', 'Backup database and uploads folder.', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1515, 0, 'en', 'plugins.backup/backup', 'create_backup_success', 'Created backup successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1516, 0, 'en', 'plugins.backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1517, 0, 'en', 'plugins.backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1518, 0, 'en', 'plugins.backup/backup', 'generate_btn', 'Generate backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1519, 0, 'en', 'plugins.backup/backup', 'create', 'Create backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1520, 0, 'en', 'plugins.backup/backup', 'restore', 'Restore backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1521, 0, 'en', 'plugins.backup/backup', 'create_btn', 'Create', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1522, 0, 'en', 'plugins.backup/backup', 'restore_btn', 'Restore', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1523, 0, 'en', 'plugins.backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1524, 0, 'en', 'plugins.backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1525, 0, 'en', 'plugins.backup/backup', 'download_database', 'Download backup of database', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1526, 0, 'en', 'plugins.backup/backup', 'restore_tooltip', 'Restore this backup', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1527, 0, 'en', 'plugins.backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1528, 0, 'en', 'plugins.backup/backup', 'menu_name', 'Backups', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1529, 0, 'vi', 'plugins.backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1530, 0, 'vi', 'plugins.backup/backup', 'create', 'Tạo bản sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1531, 0, 'vi', 'plugins.backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1532, 0, 'vi', 'plugins.backup/backup', 'create_btn', 'Tạo', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1533, 0, 'vi', 'plugins.backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1534, 0, 'vi', 'plugins.backup/backup', 'generate_btn', 'Tạo sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1535, 0, 'vi', 'plugins.backup/backup', 'name', 'Sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1536, 0, 'vi', 'plugins.backup/backup', 'restore', 'Khôi phục bản sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1537, 0, 'vi', 'plugins.backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1538, 0, 'vi', 'plugins.backup/backup', 'restore_btn', 'Khôi phục', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1539, 0, 'vi', 'plugins.backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1540, 0, 'vi', 'plugins.backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1541, 0, 'vi', 'plugins.backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1542, 0, 'vi', 'plugins.backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1543, 0, 'vi', 'plugins.backup/backup', 'menu_name', 'Sao lưu', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1544, 0, 'en', 'plugins.block/block', 'name', 'Block', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1545, 0, 'en', 'plugins.block/block', 'create', 'New block', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1546, 0, 'en', 'plugins.block/block', 'edit', 'Edit block', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1547, 0, 'en', 'plugins.block/block', 'list', 'List block', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1548, 0, 'en', 'plugins.block/block', 'menu', 'Static Blocks', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1549, 0, 'vi', 'plugins.block/block', 'name', 'Nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1550, 0, 'vi', 'plugins.block/block', 'create', 'Thêm nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1551, 0, 'vi', 'plugins.block/block', 'edit', 'Sửa nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1552, 0, 'vi', 'plugins.block/block', 'list', 'Danh sách nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1553, 0, 'vi', 'plugins.block/block', 'menu', 'Nội dung tĩnh', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1554, 0, 'en', 'plugins.blog/categories', 'model', 'Category', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1555, 0, 'en', 'plugins.blog/categories', 'models', 'Categories', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1556, 0, 'en', 'plugins.blog/categories', 'create', 'Create new category', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1557, 0, 'en', 'plugins.blog/categories', 'edit', 'Edit category', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1558, 0, 'en', 'plugins.blog/categories', 'list', 'List categories', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1559, 0, 'en', 'plugins.blog/categories', 'menu', 'Categories', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1560, 0, 'en', 'plugins.blog/categories', 'edit_this_category', 'Edit this category', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1561, 0, 'en', 'plugins.blog/categories', 'menu_name', 'Categories', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1562, 0, 'en', 'plugins.blog/posts', 'model', 'Post', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1563, 0, 'en', 'plugins.blog/posts', 'models', 'Posts', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1564, 0, 'en', 'plugins.blog/posts', 'list', 'List Posts', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1565, 0, 'en', 'plugins.blog/posts', 'create', 'Create new post', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1566, 0, 'en', 'plugins.blog/posts', 'edit', 'Edit post', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1567, 0, 'en', 'plugins.blog/posts', 'form.name', 'Name', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1568, 0, 'en', 'plugins.blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1569, 0, 'en', 'plugins.blog/posts', 'form.description', 'Description', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1570, 0, 'en', 'plugins.blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1571, 0, 'en', 'plugins.blog/posts', 'form.categories', 'Categories', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1572, 0, 'en', 'plugins.blog/posts', 'form.tags', 'Tags', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1573, 0, 'en', 'plugins.blog/posts', 'form.tags_placeholder', 'Tags', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1574, 0, 'en', 'plugins.blog/posts', 'form.content', 'Content', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1575, 0, 'en', 'plugins.blog/posts', 'form.featured', 'Is featured?', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1576, 0, 'en', 'plugins.blog/posts', 'form.note', 'Note content', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1577, 0, 'en', 'plugins.blog/posts', 'form.format_type', 'Format', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1578, 0, 'en', 'plugins.blog/posts', 'cannot_delete', 'Post could not be deleted', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1579, 0, 'en', 'plugins.blog/posts', 'post_deleted', 'Post deleted', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1580, 0, 'en', 'plugins.blog/posts', 'posts', 'Posts', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1581, 0, 'en', 'plugins.blog/posts', 'edit_this_post', 'Edit this post', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1582, 0, 'en', 'plugins.blog/posts', 'no_new_post_now', 'There is no new post now!', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1583, 0, 'en', 'plugins.blog/posts', 'menu_name', 'Posts', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1584, 1, 'en', 'plugins.blog/posts', 'all_posts', 'All Posts', '2018-03-18 09:04:21', '2018-03-18 09:04:21');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1585, 0, 'en', 'plugins.blog/tags', 'model', 'Tag', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1586, 0, 'en', 'plugins.blog/tags', 'models', 'Tags', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1587, 0, 'en', 'plugins.blog/tags', 'form.name', 'Name', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1588, 0, 'en', 'plugins.blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1589, 0, 'en', 'plugins.blog/tags', 'form.description', 'Description', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1590, 0, 'en', 'plugins.blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2018-03-18 09:04:21', '2018-03-28 03:22:41'),
(1591, 0, 'en', 'plugins.blog/tags', 'form.categories', 'Categories', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1592, 0, 'en', 'plugins.blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1593, 0, 'en', 'plugins.blog/tags', 'create', 'Create new tag', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1594, 0, 'en', 'plugins.blog/tags', 'edit', 'Edit tag', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1595, 0, 'en', 'plugins.blog/tags', 'list', 'List tags', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1596, 0, 'en', 'plugins.blog/tags', 'cannot_delete', 'Tag could not be deleted', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1597, 0, 'en', 'plugins.blog/tags', 'deleted', 'Tag deleted', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1598, 0, 'en', 'plugins.blog/tags', 'menu', 'Tags', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1599, 0, 'en', 'plugins.blog/tags', 'edit_this_tag', 'Edit this tag', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1600, 0, 'en', 'plugins.blog/tags', 'menu_name', 'Tags', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1601, 0, 'vi', 'plugins.blog/categories', 'model', 'Danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1602, 0, 'vi', 'plugins.blog/categories', 'models', 'Danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1603, 0, 'vi', 'plugins.blog/categories', 'list', 'Danh sách danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1604, 0, 'vi', 'plugins.blog/categories', 'create', 'Thêm danh mục mới', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1605, 0, 'vi', 'plugins.blog/categories', 'edit', 'Sửa danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1606, 0, 'vi', 'plugins.blog/categories', 'menu_name', 'Danh mục', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1607, 0, 'vi', 'plugins.blog/posts', 'model', 'Bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1608, 0, 'vi', 'plugins.blog/posts', 'models', 'Bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1609, 0, 'vi', 'plugins.blog/posts', 'list', 'Danh sách bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1610, 0, 'vi', 'plugins.blog/posts', 'create', 'Thêm bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1611, 0, 'vi', 'plugins.blog/posts', 'edit', 'Sửa bài viết', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1612, 0, 'vi', 'plugins.blog/posts', 'form.name', 'Tên', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1613, 0, 'vi', 'plugins.blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2018-03-18 09:04:21', '2018-03-28 03:22:42'),
(1614, 0, 'vi', 'plugins.blog/posts', 'form.description', 'Mô tả', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1615, 0, 'vi', 'plugins.blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1616, 0, 'vi', 'plugins.blog/posts', 'form.categories', 'Chuyên mục', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1617, 0, 'vi', 'plugins.blog/posts', 'form.tags', 'Từ khóa', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1618, 0, 'vi', 'plugins.blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1619, 0, 'vi', 'plugins.blog/posts', 'form.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1620, 0, 'vi', 'plugins.blog/posts', 'form.featured', 'Bài viết nổi bật?', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1621, 0, 'vi', 'plugins.blog/posts', 'form.note', 'Nội dung ghi chú', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1622, 0, 'vi', 'plugins.blog/posts', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1623, 0, 'vi', 'plugins.blog/posts', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1624, 0, 'vi', 'plugins.blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1625, 0, 'vi', 'plugins.blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1626, 0, 'vi', 'plugins.blog/posts', 'menu_name', 'Bài viết', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1627, 0, 'vi', 'plugins.blog/posts', 'all_posts', 'Tất cả bài viết', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1628, 0, 'vi', 'plugins.blog/tags', 'model', 'Tag', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1629, 0, 'vi', 'plugins.blog/tags', 'models', 'Tags', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1630, 0, 'vi', 'plugins.blog/tags', 'list', 'Danh sách tags', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1631, 0, 'vi', 'plugins.blog/tags', 'create', 'Thêm tag mới', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1632, 0, 'vi', 'plugins.blog/tags', 'edit', 'Sửa tag', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1633, 0, 'vi', 'plugins.blog/tags', 'form.name', 'Tên', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1634, 0, 'vi', 'plugins.blog/tags', 'form.name_placeholder', 'Tên tag (Tối đa 120 kí tự)', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1635, 0, 'vi', 'plugins.blog/tags', 'form.description', 'Mô tả', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1636, 0, 'vi', 'plugins.blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1637, 0, 'vi', 'plugins.blog/tags', 'form.categories', 'Chuyên mục', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1638, 0, 'vi', 'plugins.blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1639, 0, 'vi', 'plugins.blog/tags', 'cannot_delete', 'Không thể xóa tag', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1640, 0, 'vi', 'plugins.blog/tags', 'deleted', 'Xóa tag thành công', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1641, 0, 'vi', 'plugins.blog/tags', 'menu_name', 'Thẻ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1642, 0, 'vi', 'plugins.blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1643, 0, 'vi', 'plugins.blog/tags', 'menu', 'Thẻ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1644, 0, 'en', 'plugins.contact/contact', 'menu', 'Contact', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1645, 0, 'en', 'plugins.contact/contact', 'model', 'Contact', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1646, 0, 'en', 'plugins.contact/contact', 'models', 'Contact', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1647, 0, 'en', 'plugins.contact/contact', 'list', 'List contact', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1648, 0, 'en', 'plugins.contact/contact', 'edit', 'View contact', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1649, 0, 'en', 'plugins.contact/contact', 'tables.phone', 'Phone', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1650, 0, 'en', 'plugins.contact/contact', 'tables.email', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1651, 0, 'en', 'plugins.contact/contact', 'tables.fullname', 'Fullname', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1652, 0, 'en', 'plugins.contact/contact', 'tables.address', 'Address', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1653, 0, 'en', 'plugins.contact/contact', 'tables.content', 'Content', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1654, 0, 'en', 'plugins.contact/contact', 'form.is_read', 'Read?', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1655, 0, 'en', 'plugins.contact/contact', 'form.status', 'Status', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1656, 0, 'en', 'plugins.contact/contact', 'notices.no_select', 'Please select at least one contact to take this action!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1657, 0, 'en', 'plugins.contact/contact', 'notices.update_success_message', 'Update successfully', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1658, 0, 'en', 'plugins.contact/contact', 'cannot_delete', 'Contact could not be deleted', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1659, 0, 'en', 'plugins.contact/contact', 'deleted', 'Contact deleted', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1660, 0, 'en', 'plugins.contact/contact', 'contact_information', 'Contact information', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1661, 0, 'en', 'plugins.contact/contact', 'email.header', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1662, 0, 'en', 'plugins.contact/contact', 'email.title', 'New contact from your site', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1663, 0, 'en', 'plugins.contact/contact', 'email.success', 'Send message successfully!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1664, 0, 'en', 'plugins.contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1665, 0, 'en', 'plugins.contact/contact', 'name.required', 'Name is required', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1666, 0, 'en', 'plugins.contact/contact', 'email.required', 'Email is required', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1667, 0, 'en', 'plugins.contact/contact', 'email.email', 'The email address is not valid', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1668, 0, 'en', 'plugins.contact/contact', 'content.required', 'Content is required', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1669, 0, 'en', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Please confirm you are not a robot before send message.', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1670, 1, 'en', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'You are not confirm rotbot yet.', '2018-03-18 09:04:22', '2018-03-18 09:04:22'),
(1671, 0, 'en', 'plugins.contact/contact', 'contact_sent_from', 'This contact information sent from', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1672, 0, 'en', 'plugins.contact/contact', 'sender', 'Sender', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1673, 0, 'en', 'plugins.contact/contact', 'sender_email', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1674, 0, 'en', 'plugins.contact/contact', 'sender_address', 'Address', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1675, 0, 'en', 'plugins.contact/contact', 'sender_phone', 'Phone', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1676, 0, 'en', 'plugins.contact/contact', 'message_content', 'Message content', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1677, 0, 'en', 'plugins.contact/contact', 'sent_from', 'Email sent from', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1678, 0, 'en', 'plugins.contact/contact', 'form_name', 'Name', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1679, 0, 'en', 'plugins.contact/contact', 'form_email', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1680, 0, 'en', 'plugins.contact/contact', 'form_address', 'Address', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1681, 0, 'en', 'plugins.contact/contact', 'form_phone', 'Phone', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1682, 0, 'en', 'plugins.contact/contact', 'form_message', 'Message', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1683, 0, 'en', 'plugins.contact/contact', 'confirm_not_robot', 'Please confirm you are not robot', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1684, 0, 'en', 'plugins.contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1685, 0, 'en', 'plugins.contact/contact', 'send_btn', 'Send message', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1686, 0, 'en', 'plugins.contact/contact', 'mark_as_read', 'Mark as read', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1687, 0, 'en', 'plugins.contact/contact', 'mark_as_unread', 'Mark as unread', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1688, 0, 'en', 'plugins.contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count New</span> Messages', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1689, 0, 'en', 'plugins.contact/contact', 'view_all', 'View all', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1690, 0, 'en', 'plugins.contact/contact', 'read', 'Read', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1691, 0, 'en', 'plugins.contact/contact', 'unread', 'UnRead', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1692, 0, 'en', 'plugins.contact/contact', 'phone', 'Phone', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1693, 0, 'en', 'plugins.contact/contact', 'address', 'Address', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1694, 0, 'en', 'plugins.contact/contact', 'message', 'Message', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1695, 0, 'vi', 'plugins.contact/contact', 'menu', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1696, 0, 'vi', 'plugins.contact/contact', 'model', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1697, 0, 'vi', 'plugins.contact/contact', 'models', 'Liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1698, 0, 'vi', 'plugins.contact/contact', 'list', 'Danh sách liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1699, 0, 'vi', 'plugins.contact/contact', 'edit', 'Xem liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1700, 0, 'vi', 'plugins.contact/contact', 'tables.phone', 'Điện thoại', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1701, 0, 'vi', 'plugins.contact/contact', 'tables.email', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1702, 0, 'vi', 'plugins.contact/contact', 'tables.fullname', 'Họ tên', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1703, 0, 'vi', 'plugins.contact/contact', 'tables.address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1704, 0, 'vi', 'plugins.contact/contact', 'tables.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1705, 0, 'vi', 'plugins.contact/contact', 'form.is_read', 'Đã xem?', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1706, 0, 'vi', 'plugins.contact/contact', 'notices.no_select', 'Chọn ít nhất 1 liên hệ để thực hiện hành động này!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1707, 0, 'vi', 'plugins.contact/contact', 'notices.update_success_message', 'Cập nhật thành công', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1708, 0, 'vi', 'plugins.contact/contact', 'cannot_delete', 'Không thể xóa liên hệ này', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1709, 0, 'vi', 'plugins.contact/contact', 'deleted', 'Liên hệ đã được xóa', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1710, 0, 'vi', 'plugins.contact/contact', 'contact_information', 'Thông tin liên hệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1711, 0, 'vi', 'plugins.contact/contact', 'email.title', 'Thông tin liên hệ mới', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1712, 0, 'vi', 'plugins.contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1713, 0, 'vi', 'plugins.contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1714, 0, 'vi', 'plugins.contact/contact', 'email.required', 'Email không được để trống', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1715, 0, 'vi', 'plugins.contact/contact', 'email.email', 'Địa chỉ email không hợp lệ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1716, 0, 'vi', 'plugins.contact/contact', 'name.required', 'Họ tên không được để trống', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1717, 0, 'vi', 'plugins.contact/contact', 'content.required', 'Nội dung tin nhắn không được để trống', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1718, 0, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1719, 0, 'vi', 'plugins.contact/contact', 'g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1720, 0, 'vi', 'plugins.contact/contact', 'confirm_not_robot', 'Xác nhận không phải người máy', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1721, 0, 'vi', 'plugins.contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1722, 0, 'vi', 'plugins.contact/contact', 'form_address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1723, 0, 'vi', 'plugins.contact/contact', 'form_email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1724, 0, 'vi', 'plugins.contact/contact', 'form_message', 'Thông điệp', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1725, 0, 'vi', 'plugins.contact/contact', 'form_name', 'Họ tên', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1726, 0, 'vi', 'plugins.contact/contact', 'form_phone', 'Số điện thoại', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1727, 0, 'vi', 'plugins.contact/contact', 'message_content', 'Nội dung thông điệp', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1728, 0, 'vi', 'plugins.contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1729, 0, 'vi', 'plugins.contact/contact', 'send_btn', 'Gửi tin nhắn', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1730, 0, 'vi', 'plugins.contact/contact', 'sender', 'Người gửi', '2018-03-18 09:04:22', '2018-03-28 03:22:42'),
(1731, 0, 'vi', 'plugins.contact/contact', 'sender_address', 'Địa chỉ', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1732, 0, 'vi', 'plugins.contact/contact', 'sender_email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1733, 0, 'vi', 'plugins.contact/contact', 'sender_phone', 'Số điện thoại', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1734, 0, 'vi', 'plugins.contact/contact', 'sent_from', 'Thư được gửi từ', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1735, 0, 'vi', 'plugins.contact/contact', 'mark_as_read', 'Đánh dấu đã đọc', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1736, 0, 'vi', 'plugins.contact/contact', 'mark_as_unread', 'Đánh dấu chưa đọc', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1737, 0, 'en', 'plugins.custom-field/base', 'admin_menu.title', 'Custom fields', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1738, 0, 'en', 'plugins.custom-field/base', 'page_title', 'Custom fields', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1739, 0, 'en', 'plugins.custom-field/base', 'all_field_groups', 'All field groups', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1740, 0, 'en', 'plugins.custom-field/base', 'form.create_field_group', 'Create field group', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1741, 0, 'en', 'plugins.custom-field/base', 'form.edit_field_group', 'Edit field group', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1742, 0, 'en', 'plugins.custom-field/base', 'form.field_items_information', 'Field items information', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1743, 0, 'en', 'plugins.custom-field/base', 'form.repeater_fields', 'Repeater', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1744, 0, 'en', 'plugins.custom-field/base', 'form.add_field', 'Add field', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1745, 0, 'en', 'plugins.custom-field/base', 'form.remove_field', 'Remove field', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1746, 0, 'en', 'plugins.custom-field/base', 'form.close_field', 'Close field', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1747, 0, 'en', 'plugins.custom-field/base', 'form.field_label', 'Label', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1748, 0, 'en', 'plugins.custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1749, 0, 'en', 'plugins.custom-field/base', 'form.field_name', 'Field name', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1750, 0, 'en', 'plugins.custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1751, 0, 'en', 'plugins.custom-field/base', 'form.field_type', 'Field type', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1752, 0, 'en', 'plugins.custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1753, 0, 'en', 'plugins.custom-field/base', 'form.field_instructions', 'Field instructions', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1754, 0, 'en', 'plugins.custom-field/base', 'form.field_instructions_helper', 'HThe instructions guide for user easier know what they need to input.', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1755, 0, 'en', 'plugins.custom-field/base', 'form.default_value', 'Default value', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1756, 0, 'en', 'plugins.custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1757, 0, 'en', 'plugins.custom-field/base', 'form.placeholder', 'Placeholder', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1758, 0, 'en', 'plugins.custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1759, 0, 'en', 'plugins.custom-field/base', 'form.rows', 'Rows', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1760, 0, 'en', 'plugins.custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1761, 0, 'en', 'plugins.custom-field/base', 'form.toolbar', 'Toolbar', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1762, 0, 'en', 'plugins.custom-field/base', 'form.toolbar_helper', 'The toolbar when use editor', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1763, 0, 'en', 'plugins.custom-field/base', 'form.toolbar_basic', 'Basic', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1764, 0, 'en', 'plugins.custom-field/base', 'form.toolbar_full', 'Full', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1765, 0, 'en', 'plugins.custom-field/base', 'form.choices', 'Choices', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1766, 0, 'en', 'plugins.custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1767, 0, 'en', 'plugins.custom-field/base', 'form.button_label', 'Button for repeater', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1768, 0, 'en', 'plugins.custom-field/base', 'form.groups.basic', 'Basic', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1769, 0, 'en', 'plugins.custom-field/base', 'form.groups.content', 'Content', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1770, 0, 'en', 'plugins.custom-field/base', 'form.groups.choice', 'Choices', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1771, 0, 'en', 'plugins.custom-field/base', 'form.groups.other', 'Other', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1772, 0, 'en', 'plugins.custom-field/base', 'form.types.text', 'Text field', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1773, 0, 'en', 'plugins.custom-field/base', 'form.types.textarea', 'Textarea', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1774, 0, 'en', 'plugins.custom-field/base', 'form.types.number', 'Number', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1775, 0, 'en', 'plugins.custom-field/base', 'form.types.email', 'Email', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1776, 0, 'en', 'plugins.custom-field/base', 'form.types.password', 'Password', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1777, 0, 'en', 'plugins.custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1778, 0, 'en', 'plugins.custom-field/base', 'form.types.image', 'Image', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1779, 0, 'en', 'plugins.custom-field/base', 'form.types.file', 'File', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1780, 0, 'en', 'plugins.custom-field/base', 'form.types.select', 'Select', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1781, 0, 'en', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1782, 0, 'en', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1783, 0, 'en', 'plugins.custom-field/base', 'form.types.repeater', 'Repeater', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1784, 0, 'en', 'plugins.custom-field/base', 'form.rules.rules', 'Display rules', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1785, 0, 'en', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1786, 0, 'en', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1787, 0, 'en', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1788, 0, 'en', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1789, 0, 'en', 'plugins.custom-field/base', 'form.rules.and', 'And', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1790, 0, 'en', 'plugins.custom-field/base', 'form.rules.or', 'Or', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1791, 0, 'en', 'plugins.custom-field/base', 'import', 'Import', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1792, 0, 'en', 'plugins.custom-field/base', 'export', 'Export', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1793, 0, 'en', 'plugins.custom-field/permissions', 'view-custom-fields', 'View custom fields', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1794, 0, 'en', 'plugins.custom-field/permissions', 'create-field-groups', 'Create field groups', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1795, 0, 'en', 'plugins.custom-field/permissions', 'edit-field-groups', 'Edit field groups', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1796, 0, 'en', 'plugins.custom-field/permissions', 'delete-field-groups', 'Delete field groups', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1797, 0, 'en', 'plugins.custom-field/rules', 'groups.basic', 'Basic', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1798, 0, 'en', 'plugins.custom-field/rules', 'groups.other', 'Other', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1799, 0, 'en', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1800, 0, 'en', 'plugins.custom-field/rules', 'logged_in_user', 'Logged in user', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1801, 0, 'en', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1802, 0, 'en', 'plugins.custom-field/rules', 'page_template', 'Page template', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1803, 0, 'en', 'plugins.custom-field/rules', 'page', 'Page', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1804, 0, 'en', 'plugins.custom-field/rules', 'model_name', 'Model name', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1805, 0, 'en', 'plugins.custom-field/rules', 'model_name_page', 'Page', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1806, 0, 'en', 'plugins.custom-field/rules', 'category', 'Category', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1807, 0, 'en', 'plugins.custom-field/rules', 'post_with_related_category', 'Post with related category', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1808, 0, 'en', 'plugins.custom-field/rules', 'model_name_post', 'Post (blog)', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1809, 0, 'en', 'plugins.custom-field/rules', 'model_name_category', 'Category (blog)', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1810, 0, 'vi', 'plugins.custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1811, 0, 'vi', 'plugins.custom-field/base', 'page_title', 'Trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1812, 0, 'vi', 'plugins.custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1813, 0, 'vi', 'plugins.custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1814, 0, 'vi', 'plugins.custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1815, 0, 'vi', 'plugins.custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1816, 0, 'vi', 'plugins.custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1817, 0, 'vi', 'plugins.custom-field/base', 'form.add_field', 'Thêm trường', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1818, 0, 'vi', 'plugins.custom-field/base', 'form.remove_field', 'Xóa trường này', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1819, 0, 'vi', 'plugins.custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1820, 0, 'vi', 'plugins.custom-field/base', 'form.field_label', 'Nhãn', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1821, 0, 'vi', 'plugins.custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1822, 0, 'vi', 'plugins.custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1823, 0, 'vi', 'plugins.custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1824, 0, 'vi', 'plugins.custom-field/base', 'form.field_type', 'Kiểu trường', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1825, 0, 'vi', 'plugins.custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1826, 0, 'vi', 'plugins.custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1827, 0, 'vi', 'plugins.custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1828, 0, 'vi', 'plugins.custom-field/base', 'form.default_value', 'Giá trị mặc định', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1829, 0, 'vi', 'plugins.custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1830, 0, 'vi', 'plugins.custom-field/base', 'form.placeholder', 'Mô tả trường', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1831, 0, 'vi', 'plugins.custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1832, 0, 'vi', 'plugins.custom-field/base', 'form.rows', 'Số dòng', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1833, 0, 'vi', 'plugins.custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1834, 0, 'vi', 'plugins.custom-field/base', 'form.toolbar', 'Thanh công cụ', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1835, 0, 'vi', 'plugins.custom-field/base', 'form.toolbar_helper', 'Tùy chỉnh kiểu thanh công cụ khi sử dụng trình nhập liệu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1836, 0, 'vi', 'plugins.custom-field/base', 'form.toolbar_basic', 'Thanh công cụ đơn giản', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1837, 0, 'vi', 'plugins.custom-field/base', 'form.toolbar_full', 'Thanh công cụ đầy đủ', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1838, 0, 'vi', 'plugins.custom-field/base', 'form.choices', 'Các mục lựa chọn', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1839, 0, 'vi', 'plugins.custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1840, 0, 'vi', 'plugins.custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1841, 0, 'vi', 'plugins.custom-field/base', 'form.groups.basic', 'Cơ bản', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1842, 0, 'vi', 'plugins.custom-field/base', 'form.groups.content', 'Nội dung', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1843, 0, 'vi', 'plugins.custom-field/base', 'form.groups.choice', 'Lựa chọn', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1844, 0, 'vi', 'plugins.custom-field/base', 'form.groups.other', 'Khác', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1845, 0, 'vi', 'plugins.custom-field/base', 'form.types.text', 'Văn bản', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1846, 0, 'vi', 'plugins.custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1847, 0, 'vi', 'plugins.custom-field/base', 'form.types.number', 'Số', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1848, 0, 'vi', 'plugins.custom-field/base', 'form.types.email', 'Thư điện tử', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1849, 0, 'vi', 'plugins.custom-field/base', 'form.types.password', 'Mật khẩu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1850, 0, 'vi', 'plugins.custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1851, 0, 'vi', 'plugins.custom-field/base', 'form.types.image', 'Hình ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1852, 0, 'vi', 'plugins.custom-field/base', 'form.types.file', 'Tập tin', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1853, 0, 'vi', 'plugins.custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1854, 0, 'vi', 'plugins.custom-field/base', 'form.types.checkbox', 'Checkbox', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1855, 0, 'vi', 'plugins.custom-field/base', 'form.types.radio', 'Radio', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1856, 0, 'vi', 'plugins.custom-field/base', 'form.types.repeater', 'Bộ lặp', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1857, 0, 'vi', 'plugins.custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1858, 0, 'vi', 'plugins.custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1859, 0, 'vi', 'plugins.custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1860, 0, 'vi', 'plugins.custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1861, 0, 'vi', 'plugins.custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1862, 0, 'vi', 'plugins.custom-field/base', 'form.rules.and', 'Và', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1863, 0, 'vi', 'plugins.custom-field/base', 'form.rules.or', 'Hoặc', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1864, 0, 'vi', 'plugins.custom-field/base', 'import', 'Nhập dữ liệu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1865, 0, 'vi', 'plugins.custom-field/base', 'export', 'Xuất dữ liệu', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1866, 0, 'vi', 'plugins.custom-field/permissions', 'view-custom-fields', 'Xem trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1867, 0, 'vi', 'plugins.custom-field/permissions', 'create-field-groups', 'Tạo các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1868, 0, 'vi', 'plugins.custom-field/permissions', 'edit-field-groups', 'Chỉnh sửa các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:43'),
(1869, 0, 'vi', 'plugins.custom-field/permissions', 'delete-field-groups', 'Xóa các nhóm trường tùy chỉnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1870, 0, 'vi', 'plugins.custom-field/rules', 'groups.basic', 'Cơ bản', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1871, 0, 'vi', 'plugins.custom-field/rules', 'groups.other', 'Khác', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1872, 0, 'vi', 'plugins.custom-field/rules', 'groups.blog', 'Blog', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1873, 0, 'vi', 'plugins.custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1874, 0, 'vi', 'plugins.custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1875, 0, 'vi', 'plugins.custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1876, 0, 'vi', 'plugins.custom-field/rules', 'page', 'Trang tĩnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1877, 0, 'vi', 'plugins.custom-field/rules', 'model_name', 'Tên model', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1878, 0, 'vi', 'plugins.custom-field/rules', 'model_name_page', 'Trang tĩnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1879, 0, 'vi', 'plugins.custom-field/rules', 'category', 'Danh mục bài viết', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1880, 0, 'vi', 'plugins.custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1881, 0, 'vi', 'plugins.custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1882, 0, 'vi', 'plugins.custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1883, 0, 'en', 'plugins.gallery/gallery', 'create', 'Create new gallery', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1884, 0, 'en', 'plugins.gallery/gallery', 'edit', 'Edit gallery', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1885, 0, 'en', 'plugins.gallery/gallery', 'list', 'List galleries', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1886, 0, 'en', 'plugins.gallery/gallery', 'galleries', 'Galleries', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1887, 0, 'en', 'plugins.gallery/gallery', 'item', 'Gallery item', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1888, 0, 'en', 'plugins.gallery/gallery', 'select_image', 'Select images', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1889, 0, 'en', 'plugins.gallery/gallery', 'reset', 'Reset gallery', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1890, 0, 'en', 'plugins.gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1891, 0, 'en', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1892, 0, 'en', 'plugins.gallery/gallery', 'delete_photo', 'Delete this photo', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1893, 0, 'en', 'plugins.gallery/gallery', 'gallery_box', 'Gallery images', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1894, 0, 'en', 'plugins.gallery/gallery', 'by', 'By', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1895, 0, 'en', 'plugins.gallery/gallery', 'menu_name', 'Galleries', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1896, 0, 'vi', 'plugins.gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1897, 0, 'vi', 'plugins.gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1898, 0, 'vi', 'plugins.gallery/gallery', 'list', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1899, 0, 'vi', 'plugins.gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1900, 0, 'vi', 'plugins.gallery/gallery', 'galleries', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1901, 0, 'vi', 'plugins.gallery/gallery', 'item', 'Ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1902, 0, 'vi', 'plugins.gallery/gallery', 'reset', 'Làm mới thư viện', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1903, 0, 'vi', 'plugins.gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1904, 0, 'vi', 'plugins.gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1905, 0, 'vi', 'plugins.gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1906, 0, 'vi', 'plugins.gallery/gallery', 'by', 'Bởi', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1907, 0, 'vi', 'plugins.gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1908, 0, 'vi', 'plugins.gallery/gallery', 'menu_name', 'Thư viện ảnh', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1909, 0, 'en', 'plugins.language/language', 'menu', 'Language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1910, 0, 'en', 'plugins.language/language', 'name', 'Languages', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1911, 0, 'en', 'plugins.language/language', 'choose_language', 'Choose a language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1912, 0, 'en', 'plugins.language/language', 'select_language', 'Select language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1913, 0, 'en', 'plugins.language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1914, 0, 'en', 'plugins.language/language', 'full_name', 'Full name', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1915, 0, 'en', 'plugins.language/language', 'full_name_helper', 'The name is how it is displayed on your site (for example: English).', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1916, 0, 'en', 'plugins.language/language', 'locale', 'Locale', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1917, 0, 'en', 'plugins.language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>). You will need to create <code>/resources/lang/en</code> directory if it\'s not exists for this language.', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1918, 0, 'en', 'plugins.language/language', 'language_code', 'Language code', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1919, 0, 'en', 'plugins.language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1920, 0, 'en', 'plugins.language/language', 'text_direction', 'Text direction', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1921, 0, 'en', 'plugins.language/language', 'text_direction_helper', 'Choose the text direction for the language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1922, 0, 'en', 'plugins.language/language', 'left_to_right', 'Left to right', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1923, 0, 'en', 'plugins.language/language', 'right_to_left', 'Right to left', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1924, 0, 'en', 'plugins.language/language', 'flag', 'Flag', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1925, 0, 'en', 'plugins.language/language', 'flag_helper', 'Choose a flag for the language.', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1926, 0, 'en', 'plugins.language/language', 'order', 'Order', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1927, 0, 'en', 'plugins.language/language', 'order_helper', 'Position of the language in the language switcher', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1928, 0, 'en', 'plugins.language/language', 'add_new_language', 'Add new language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1929, 0, 'en', 'plugins.language/language', 'code', 'Code', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1930, 0, 'en', 'plugins.language/language', 'default_language', 'Default language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1931, 0, 'en', 'plugins.language/language', 'actions', 'Actions', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1932, 0, 'en', 'plugins.language/language', 'translations', 'Translations', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1933, 0, 'en', 'plugins.language/language', 'edit', 'Edit', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1934, 0, 'en', 'plugins.language/language', 'edit_tooltip', 'Edit this language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1935, 0, 'en', 'plugins.language/language', 'delete', 'Delete', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1936, 0, 'en', 'plugins.language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1937, 0, 'en', 'plugins.language/language', 'choose_default_language', 'Choose :language as default language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1938, 0, 'en', 'plugins.language/language', 'current_language', 'Current record\'s language', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1939, 0, 'en', 'plugins.language/language', 'edit_related', 'Edit related language for this record', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1940, 0, 'en', 'plugins.language/language', 'add_language_for_item', 'Add other language version for this record', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1941, 0, 'en', 'plugins.language/language', 'settings', 'Settings', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1942, 0, 'en', 'plugins.language/language', 'language_hide_default', 'Hide default language?', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1943, 0, 'en', 'plugins.language/language', 'language_display_flag_only', 'Flag only', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1944, 0, 'en', 'plugins.language/language', 'language_display_name_only', 'Name only', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1945, 0, 'en', 'plugins.language/language', 'language_display_all', 'Display all flag and name', '2018-03-18 09:04:22', '2018-03-28 03:22:44'),
(1946, 0, 'en', 'plugins.language/language', 'language_display', 'Language display', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1947, 0, 'en', 'plugins.language/language', 'switcher_display', 'Switcher language display', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1948, 0, 'en', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1949, 0, 'en', 'plugins.language/language', 'language_switcher_display_list', 'List', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1950, 0, 'en', 'plugins.language/language', 'current_language_edit_notification', 'You are editing \"<strrong class=\"current_language_text\">:language</strrong>\" version', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1951, 0, 'en', 'plugins.language/language', 'confirm-change-language', 'Confirm change language', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1952, 0, 'en', 'plugins.language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strrong class=\"change_to_language_text\"></strrong>\" ? This action will be override \"<strrong class=\"change_to_language_text\"></strrong>\" version if it\'s existed!', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1953, 0, 'en', 'plugins.language/language', 'confirm-change-language-btn', 'Confirm change', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1954, 0, 'en', 'plugins.language/language', 'hide_languages', 'Hide languages', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1955, 0, 'en', 'plugins.language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1956, 0, 'en', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1957, 0, 'en', 'plugins.language/language', 'show_all', 'Show all', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1958, 0, 'en', 'plugins.language/language', 'change_language', 'Language', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1959, 0, 'vi', 'plugins.language/language', 'name', 'Ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1960, 0, 'vi', 'plugins.language/language', 'choose_language', 'Chọn một ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1961, 0, 'vi', 'plugins.language/language', 'select_language', 'Chọn ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1962, 0, 'vi', 'plugins.language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1963, 0, 'vi', 'plugins.language/language', 'full_name', 'Tên đầy đủ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1964, 0, 'vi', 'plugins.language/language', 'full_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1965, 0, 'vi', 'plugins.language/language', 'locale', 'Locale', '2018-03-18 09:04:23', '2018-03-28 03:22:44');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1966, 0, 'vi', 'plugins.language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1967, 0, 'vi', 'plugins.language/language', 'language_code', 'Mã ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1968, 0, 'vi', 'plugins.language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1969, 0, 'vi', 'plugins.language/language', 'text_direction', 'Hướng viết chữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1970, 0, 'vi', 'plugins.language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1971, 0, 'vi', 'plugins.language/language', 'left_to_right', 'Trái qua phải', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1972, 0, 'vi', 'plugins.language/language', 'right_to_left', 'Phải qua trái', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1973, 0, 'vi', 'plugins.language/language', 'flag', 'Cờ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1974, 0, 'vi', 'plugins.language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1975, 0, 'vi', 'plugins.language/language', 'order', 'Sắp xếp', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1976, 0, 'vi', 'plugins.language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1977, 0, 'vi', 'plugins.language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1978, 0, 'vi', 'plugins.language/language', 'code', 'Mã', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1979, 0, 'vi', 'plugins.language/language', 'default_language', 'Ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1980, 0, 'vi', 'plugins.language/language', 'actions', 'Hành động', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1981, 0, 'vi', 'plugins.language/language', 'translations', 'Dịch', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1982, 0, 'vi', 'plugins.language/language', 'edit', 'Sửa', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1983, 0, 'vi', 'plugins.language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1984, 0, 'vi', 'plugins.language/language', 'delete', 'Xóa', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1985, 0, 'vi', 'plugins.language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1986, 0, 'vi', 'plugins.language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1987, 0, 'vi', 'plugins.language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1988, 0, 'vi', 'plugins.language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1989, 0, 'vi', 'plugins.language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1990, 0, 'vi', 'plugins.language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1991, 0, 'vi', 'plugins.language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1992, 0, 'vi', 'plugins.language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strrong class=\"change_to_language_text\"></strrong>\" nếu nó đã tồn tại!', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1993, 0, 'vi', 'plugins.language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strrong class=\"current_language_text\">:language</strrong>\"', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1994, 0, 'vi', 'plugins.language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1995, 0, 'vi', 'plugins.language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1996, 0, 'vi', 'plugins.language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1997, 0, 'vi', 'plugins.language/language', 'language_display', 'Hiển thị ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1998, 0, 'vi', 'plugins.language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(1999, 0, 'vi', 'plugins.language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(2000, 0, 'vi', 'plugins.language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(2001, 0, 'vi', 'plugins.language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định', '2018-03-18 09:04:23', '2018-03-28 03:22:44'),
(2002, 0, 'vi', 'plugins.language/language', 'language_switcher_display_dropdown', 'Dropdown', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2003, 0, 'vi', 'plugins.language/language', 'language_switcher_display_list', 'Danh sách', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2004, 0, 'vi', 'plugins.language/language', 'settings', 'Cài đặt', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2005, 0, 'vi', 'plugins.language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2006, 0, 'vi', 'plugins.language/language', 'menu', 'Ngôn ngữ', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2007, 0, 'en', 'plugins.log-viewer/general', 'all', 'All', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2008, 0, 'en', 'plugins.log-viewer/general', 'date', 'Date', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2009, 0, 'en', 'plugins.log-viewer/general', 'name', 'Log viewer', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2010, 0, 'en', 'plugins.log-viewer/levels', 'all', 'All', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2011, 0, 'en', 'plugins.log-viewer/levels', 'emergency', 'Emergency', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2012, 0, 'en', 'plugins.log-viewer/levels', 'alert', 'Alert', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2013, 0, 'en', 'plugins.log-viewer/levels', 'critical', 'Critical', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2014, 0, 'en', 'plugins.log-viewer/levels', 'error', 'Error', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2015, 0, 'en', 'plugins.log-viewer/levels', 'warning', 'Warning', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2016, 0, 'en', 'plugins.log-viewer/levels', 'notice', 'Notice', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2017, 0, 'en', 'plugins.log-viewer/levels', 'info', 'Info', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2018, 0, 'en', 'plugins.log-viewer/levels', 'debug', 'Debug', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2019, 0, 'en', 'plugins.log-viewer/log-viewer', 'system_logs', 'System Logs', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2020, 0, 'en', 'plugins.log-viewer/log-viewer', 'system_logs_description', 'View system errors log.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2021, 0, 'en', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2022, 0, 'en', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2023, 0, 'en', 'plugins.log-viewer/log-viewer', 'levels', 'Levels', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2024, 0, 'en', 'plugins.log-viewer/log-viewer', 'no_error', 'There is no error now.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2025, 0, 'en', 'plugins.log-viewer/log-viewer', 'entries', 'entries', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2026, 0, 'en', 'plugins.log-viewer/log-viewer', 'actions', 'Actions', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2027, 0, 'en', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Delete log file', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2028, 0, 'en', 'plugins.log-viewer/log-viewer', 'loading', 'Loading...', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2029, 0, 'en', 'plugins.log-viewer/log-viewer', 'delete_button', 'Delete file', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2030, 0, 'en', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Are you sure you want to <span class=\"label label-danger\">DELETE</span> this log file <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2031, 0, 'en', 'plugins.log-viewer/log-viewer', 'download', 'Download', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2032, 0, 'en', 'plugins.log-viewer/log-viewer', 'delete', 'Delete', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2033, 0, 'en', 'plugins.log-viewer/log-viewer', 'file_path', 'File path', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2034, 0, 'en', 'plugins.log-viewer/log-viewer', 'log_entries', 'Log entries', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2035, 0, 'en', 'plugins.log-viewer/log-viewer', 'size', 'Size', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2036, 0, 'en', 'plugins.log-viewer/log-viewer', 'page', 'Page', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2037, 0, 'en', 'plugins.log-viewer/log-viewer', 'of', 'of', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2038, 0, 'en', 'plugins.log-viewer/log-viewer', 'env', 'Env', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2039, 0, 'en', 'plugins.log-viewer/log-viewer', 'level', 'Level', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2040, 0, 'en', 'plugins.log-viewer/log-viewer', 'time', 'Time', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2041, 0, 'en', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2042, 0, 'en', 'plugins.log-viewer/log-viewer', 'stack', 'Stack', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2043, 0, 'en', 'plugins.log-viewer/log-viewer', 'log_info', 'Log info', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2044, 0, 'en', 'plugins.log-viewer/log-viewer', 'menu_name', 'System logs', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2045, 0, 'vi', 'plugins.log-viewer/general', 'all', 'Tất cả', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2046, 0, 'vi', 'plugins.log-viewer/general', 'date', 'Ngày', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2047, 0, 'vi', 'plugins.log-viewer/general', 'name', 'Lỗi hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2048, 0, 'vi', 'plugins.log-viewer/levels', 'all', 'Tất cả', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2049, 0, 'vi', 'plugins.log-viewer/levels', 'emergency', 'Khẩn cấp', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2050, 0, 'vi', 'plugins.log-viewer/levels', 'alert', 'Báo động', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2051, 0, 'vi', 'plugins.log-viewer/levels', 'critical', 'Nguy kịch', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2052, 0, 'vi', 'plugins.log-viewer/levels', 'error', 'Lỗi', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2053, 0, 'vi', 'plugins.log-viewer/levels', 'warning', 'Cảnh báo', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2054, 0, 'vi', 'plugins.log-viewer/levels', 'notice', 'Chú ý', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2055, 0, 'vi', 'plugins.log-viewer/levels', 'info', 'Thông tin', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2056, 0, 'vi', 'plugins.log-viewer/levels', 'debug', 'Gỡ lỗi', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2057, 0, 'vi', 'plugins.log-viewer/log-viewer', 'name', 'LogViewers', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2058, 0, 'vi', 'plugins.log-viewer/log-viewer', 'list', 'List LogViewer', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2059, 0, 'vi', 'plugins.log-viewer/log-viewer', 'actions', 'Hành động', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2060, 0, 'vi', 'plugins.log-viewer/log-viewer', 'confirm_delete_msg', 'Bạn có chắc muốn <span class=\"label label-danger\">XÓA</span> tập tin này <span class=\"label label-primary\"><span class=\"log_date\">:date</span></span> ?', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2061, 0, 'vi', 'plugins.log-viewer/log-viewer', 'delete', 'Xóa', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2062, 0, 'vi', 'plugins.log-viewer/log-viewer', 'delete_button', 'Xóa tập tin', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2063, 0, 'vi', 'plugins.log-viewer/log-viewer', 'delete_log_file', 'Xóa tập tin', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2064, 0, 'vi', 'plugins.log-viewer/log-viewer', 'download', 'Tải xuống', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2065, 0, 'vi', 'plugins.log-viewer/log-viewer', 'entries', 'bản ghi', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2066, 0, 'vi', 'plugins.log-viewer/log-viewer', 'env', 'Môi trường', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2067, 0, 'vi', 'plugins.log-viewer/log-viewer', 'file_path', 'Đường dẫn', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2068, 0, 'vi', 'plugins.log-viewer/log-viewer', 'header', 'Header', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2069, 0, 'vi', 'plugins.log-viewer/log-viewer', 'level', 'Cấp độ', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2070, 0, 'vi', 'plugins.log-viewer/log-viewer', 'levels', 'Cấp độ', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2071, 0, 'vi', 'plugins.log-viewer/log-viewer', 'loading', 'Đang tải...', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2072, 0, 'vi', 'plugins.log-viewer/log-viewer', 'log_entries', 'Bản ghi nhật ký', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2073, 0, 'vi', 'plugins.log-viewer/log-viewer', 'log_info', 'Bản ghi thông tin', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2074, 0, 'vi', 'plugins.log-viewer/log-viewer', 'no_error', 'Hiện tại không có lỗi trong hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2075, 0, 'vi', 'plugins.log-viewer/log-viewer', 'of', 'trong tổng số', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2076, 0, 'vi', 'plugins.log-viewer/log-viewer', 'page', 'Trang', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2077, 0, 'vi', 'plugins.log-viewer/log-viewer', 'size', 'Kích thước', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2078, 0, 'vi', 'plugins.log-viewer/log-viewer', 'stack', 'Chi tiết', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2079, 0, 'vi', 'plugins.log-viewer/log-viewer', 'time', 'Thời gian', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2080, 0, 'vi', 'plugins.log-viewer/log-viewer', 'menu_name', 'Lỗi hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2081, 0, 'en', 'plugins.request-log/request-log', 'status_code', 'Status Code', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2082, 0, 'en', 'plugins.request-log/request-log', 'no_request_error', 'No request error now!', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2083, 0, 'vi', 'plugins.request-log/request-log', 'status_code', 'Mã lỗi', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2084, 0, 'en', 'plugins.translation/translation', 'translations', 'Translations', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2085, 0, 'en', 'plugins.translation/translation', 'translations_description', 'Translate all words in system.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2086, 0, 'en', 'plugins.translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the app/lang file, using \'php artisan translation:export\' command or publish button.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2087, 0, 'en', 'plugins.translation/translation', 'import_done', 'Done importing, processed <strong class=\"counter\">N</strong> items! Reload this page to refresh the groups!', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2088, 0, 'en', 'plugins.translation/translation', 'translation_manager', 'Translations Manager', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2089, 0, 'en', 'plugins.translation/translation', 'done_searching', 'Done searching for translations, found <strong class=\"counter\">N</strong> items!', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2090, 0, 'en', 'plugins.translation/translation', 'done_publishing', 'Done publishing the translations for group', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2091, 0, 'en', 'plugins.translation/translation', 'append_translation', 'Append new translations', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2092, 0, 'en', 'plugins.translation/translation', 'replace_translation', 'Replace existing translations', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2093, 0, 'en', 'plugins.translation/translation', 'loading', 'Loading...', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2094, 0, 'en', 'plugins.translation/translation', 'import_group', 'Import group', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2095, 0, 'en', 'plugins.translation/translation', 'confirm_scan_translation', 'Are you sure you want to scan you app folder? All found translation keys will be added to the database.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2096, 0, 'en', 'plugins.translation/translation', 'searching', 'Searching...', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2097, 0, 'en', 'plugins.translation/translation', 'find_translation_files', 'Find translations in files', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2098, 0, 'en', 'plugins.translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2099, 0, 'en', 'plugins.translation/translation', 'publishing', 'Publishing..', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2100, 0, 'en', 'plugins.translation/translation', 'publish_translations', 'Publish translations', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2101, 0, 'en', 'plugins.translation/translation', 'back', 'Back', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2102, 0, 'en', 'plugins.translation/translation', 'add_key_description', 'Add 1 key per line, without the group prefix', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2103, 0, 'en', 'plugins.translation/translation', 'add_key_button', 'Add keys', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2104, 0, 'en', 'plugins.translation/translation', 'total', 'Total', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2105, 0, 'en', 'plugins.translation/translation', 'changed', 'changed', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2106, 0, 'en', 'plugins.translation/translation', 'key', 'Key', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2107, 0, 'en', 'plugins.translation/translation', 'edit_title', 'Enter translation', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2108, 0, 'en', 'plugins.translation/translation', 'confirm_delete_key', 'Are you sure you want to delete the translations for :key ?', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2109, 0, 'en', 'plugins.translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have run the migrations and imported the translations.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2110, 0, 'en', 'plugins.translation/translation', 'choose_a_group', 'Choose a group', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2111, 0, 'en', 'plugins.translation/translation', 'menu_name', 'Translations', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2112, 0, 'vi', 'plugins.translation/translation', 'add_key_button', 'Thêm khóa', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2113, 0, 'vi', 'plugins.translation/translation', 'add_key_description', 'Mỗi khóa trên mỗi dòng, trừ tiền tố của nhóm', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2114, 0, 'vi', 'plugins.translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2115, 0, 'vi', 'plugins.translation/translation', 'back', 'Quay lại', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2116, 0, 'vi', 'plugins.translation/translation', 'changed', 'thay đổi', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2117, 0, 'vi', 'plugins.translation/translation', 'choose_a_group', 'Chọn một nhóm', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2118, 0, 'vi', 'plugins.translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2119, 0, 'vi', 'plugins.translation/translation', 'confirm_delete_key', 'Bạn có chắc muốn xóa dịch thuật cho :key?', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2120, 0, 'vi', 'plugins.translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2121, 0, 'vi', 'plugins.translation/translation', 'confirm_scan_translation', 'Bạn có chắc muốn quét thư mục app? Tất cả khóa dịch thuật tìm thấy sẽ được thêm vào cơ sở dữ liệu.', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2122, 0, 'vi', 'plugins.translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2123, 0, 'vi', 'plugins.translation/translation', 'done_searching', 'Tìm kiếm dịch thuật xong, tìm thấy <strong class=\"counter\">N</strong> bản ghi!', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2124, 0, 'vi', 'plugins.translation/translation', 'edit_title', 'Nhập nội dung dịch', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2125, 0, 'vi', 'plugins.translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan translations:export\' hoặc sử dụng nút xuất bản', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2126, 0, 'vi', 'plugins.translation/translation', 'find_translation_files', 'Tìm thấy tập tin dịch thuật', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2127, 0, 'vi', 'plugins.translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý <strong class=\"counter\">N</strong> bản ghi!  ', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2128, 0, 'vi', 'plugins.translation/translation', 'import_group', 'Nhập nhóm', '2018-03-18 09:04:23', '2018-03-28 03:22:45'),
(2129, 0, 'vi', 'plugins.translation/translation', 'key', 'Khóa', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2130, 0, 'vi', 'plugins.translation/translation', 'loading', 'Đang tải...', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2131, 0, 'vi', 'plugins.translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2132, 0, 'vi', 'plugins.translation/translation', 'publishing', 'Đang xuất bản...', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2133, 0, 'vi', 'plugins.translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2134, 0, 'vi', 'plugins.translation/translation', 'searching', 'Đang tìm kiếm...', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2135, 0, 'vi', 'plugins.translation/translation', 'total', 'Tổng cộng', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2136, 0, 'vi', 'plugins.translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2137, 0, 'vi', 'plugins.translation/translation', 'translations', 'Dịch thuật', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2138, 0, 'vi', 'plugins.translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2139, 0, 'vi', 'plugins.translation/translation', 'menu_name', 'Dịch thuật', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2140, 0, 'vi', '/auth', 'login.username', 'Tên truy cập', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2141, 0, 'vi', '/auth', 'login.password', 'Mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2142, 0, 'vi', '/auth', 'login.title', 'Đăng nhập hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2143, 0, 'vi', '/auth', 'login.remember', 'Nhớ mật khẩu?', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2144, 0, 'vi', '/auth', 'login.login', 'Đăng nhập', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2145, 0, 'vi', '/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2146, 0, 'vi', '/auth', 'login.success', 'Đăng nhập thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2147, 0, 'vi', '/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2148, 0, 'vi', '/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2149, 0, 'vi', '/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2150, 0, 'vi', '/auth', 'login.logout_success', 'Đăng xuất thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2151, 0, 'vi', '/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2152, 0, 'vi', '/auth', 'forgot_password.title', 'Quên mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2153, 0, 'vi', '/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập tên đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2154, 0, 'vi', '/auth', 'forgot_password.submit', 'Hoàn tất', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2155, 0, 'vi', '/auth', 'reset.new_password', 'Mật khẩu mới', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2156, 0, 'vi', '/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2157, 0, 'vi', '/auth', 'reset.title', 'Khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2158, 0, 'vi', '/auth', 'reset.update', 'Cập nhật', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2159, 0, 'vi', '/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2160, 0, 'vi', '/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2161, 0, 'vi', '/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2162, 0, 'vi', '/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2163, 0, 'vi', '/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2164, 0, 'vi', '/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2165, 0, 'vi', '/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2166, 0, 'vi', '/auth', 'reset.new-password', 'Mật khẩu mới', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2167, 0, 'vi', '/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2168, 0, 'vi', '/auth', 'email.invite.title', 'Mời tham gia hệ thống ', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2169, 0, 'vi', '/auth', 'failed', 'Không thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2170, 0, 'vi', '/auth', 'repassword', 'Xác nhận mật khẩu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2171, 0, 'vi', '/auth', 'throttle', 'Throttle', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2172, 0, 'vi', '/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2173, 0, 'vi', '/auth', 'login_title', 'Đăng nhập với tài khoản hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2174, 0, 'vi', '/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2175, 0, 'vi', '/auth', 'lost_your_password', 'Quên mật khẩu?', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2176, 0, 'vi', '/auth', 'not_member', 'Chưa là thành viên?', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2177, 0, 'vi', '/auth', 'register_now', 'Đăng ký ngay', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2178, 0, 'vi', '/auth', 'accept_invite', 'Xác nhận lời mời', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2179, 0, 'vi', '/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2180, 0, 'vi', '/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2181, 0, 'vi', '/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2182, 0, 'vi', '/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2183, 0, 'vi', '/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2184, 0, 'vi', '/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2185, 0, 'vi', '/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2186, 0, 'vi', '/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2187, 0, 'vi', '/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2188, 0, 'vi', '/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2189, 0, 'vi', '/permissions', 'list', 'Danh sách phân quyền', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2190, 0, 'vi', '/permissions', 'name', 'Tên', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2191, 0, 'vi', '/permissions', 'current_role', 'Quyền hiện tại', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2192, 0, 'vi', '/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2193, 0, 'vi', '/permissions', 'role_assigned', 'Quyền đã được gán', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2194, 0, 'vi', '/permissions', 'create_role', 'Tạo quyền mới', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2195, 0, 'vi', '/permissions', 'role_name', 'Tên', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2196, 0, 'vi', '/permissions', 'role_description', 'Mô tả', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2197, 0, 'vi', '/permissions', 'is_staff', 'Là người quản lý?', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2198, 0, 'vi', '/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2199, 0, 'vi', '/permissions', 'cancel', 'Hủy bỏ', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2200, 0, 'vi', '/permissions', 'reset', 'Làm lại', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2201, 0, 'vi', '/permissions', 'save', 'Lưu', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2202, 0, 'vi', '/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2203, 0, 'vi', '/permissions', 'details', 'Chi tiết', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2204, 0, 'vi', '/permissions', 'duplicate', 'Nhân bản', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2205, 0, 'vi', '/permissions', 'all', 'Tất cả phân quyền', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2206, 0, 'vi', '/permissions', 'list_role', 'Danh sách quyền', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2207, 0, 'vi', '/permissions', 'created_on', 'Ngày tạo', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2208, 0, 'vi', '/permissions', 'created_by', 'Được tạo bởi', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2209, 0, 'vi', '/permissions', 'actions', 'Tác vụ', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2210, 0, 'vi', '/permissions', 'create_success', 'Tạo thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2211, 0, 'vi', '/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2212, 0, 'vi', '/permissions', 'delete_success', 'Xóa quyền thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2213, 0, 'vi', '/permissions', 'duplicated_success', 'Nhân bản thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2214, 0, 'vi', '/permissions', 'modified_success', 'Sửa thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2215, 0, 'vi', '/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2216, 0, 'vi', '/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2217, 0, 'vi', '/permissions', 'options', 'Tùy chọn', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2218, 0, 'vi', '/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2219, 0, 'vi', '/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2220, 0, 'vi', '/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2221, 0, 'vi', '/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2222, 0, 'vi', '/permissions', 'roles', 'Quyền', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2223, 0, 'vi', '/permissions', 'role_permission', 'Nhóm và phân quyền', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2224, 0, 'vi', '/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2225, 0, 'vi', '/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2226, 0, 'vi', '/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2227, 0, 'vi', '/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2228, 0, 'vi', '/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2229, 0, 'vi', '/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2230, 0, 'vi', '/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2231, 0, 'vi', '/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2232, 0, 'vi', '/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2233, 0, 'vi', '/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2234, 0, 'vi', '/users', 'update_success', 'Cập nhật trạng thái thành công!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2235, 0, 'vi', '/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2236, 0, 'vi', '/users', 'not_found', 'Không tìm thấy người dùng', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2237, 0, 'vi', '/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2238, 0, 'vi', '/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2239, 0, 'vi', '/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2240, 0, 'vi', '/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2241, 0, 'vi', '/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2242, 0, 'vi', '/users', 'invite_success', 'Một tài khoản đã được tạo cho người này, email xác nhận đã được gửi để hoàn thành thao tác mời tham gia hệ thống', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2243, 0, 'vi', '/users', 'invite_exist', 'Người dùng này đã được mời.  Một thông báo nhắc nhở đã được gửi.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2244, 0, 'vi', '/users', 'invite_not_exist', 'Mã mời không tồn tại.', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2245, 0, 'vi', '/users', 'accept_invite_success', 'Chào mừng thành viên mới!', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2246, 0, 'vi', '/users', 'user_exist_in', 'Người dùng đã là thành viên', '2018-03-18 09:04:23', '2018-03-28 03:22:46'),
(2247, 0, 'vi', '/users', 'email', 'Email', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2248, 0, 'vi', '/users', 'username', 'Tên đăng nhập', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2249, 0, 'vi', '/users', 'role', 'Phân quyền', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2250, 0, 'vi', '/users', 'invite_user', 'Mời tham gia hệ thống', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2251, 0, 'vi', '/users', 'invite_new_member', 'Mời thành viên mới?', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2252, 0, 'vi', '/users', 'invite_description', 'Mời người dùng mới tham gia nhóm này.', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2253, 0, 'vi', '/users', 'first_name', 'Họ', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2254, 0, 'vi', '/users', 'last_name', 'Tên', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2255, 0, 'vi', '/users', 'message', 'Thông điệp', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2256, 0, 'vi', '/users', 'invite_btn', 'Mời', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2257, 0, 'vi', '/users', 'cancel_btn', 'Hủy bỏ', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2258, 0, 'vi', '/users', 'password', 'Mật khẩu', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2259, 0, 'vi', '/users', 'new_password', 'Mật khẩu mới', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2260, 0, 'vi', '/users', 'save', 'Lưu', '2018-03-18 09:04:24', '2018-03-28 03:22:46'),
(2261, 0, 'vi', '/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2262, 0, 'vi', '/users', 'deleted', 'Xóa thành viên thành công', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2263, 0, 'vi', '/users', 'cannot_delete', 'Không thể xóa thành viên', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2264, 0, 'vi', '/users', 'can_not_get_list_roles', 'Không thể lấy danh sách phân quyền trong nhóm này.', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2265, 0, 'vi', '/users', 'list', 'Danh sách thành viên', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2266, 0, 'vi', '/users', 'last_login', 'Lần cuối đăng nhập', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2267, 0, 'vi', '/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2268, 0, 'vi', '/users', 'email_invite_template', '<h3>Xin chào :name</h3><p>Bạn được mời tham gia vào hệ thống :site_title, người gửi đã kèm theo nội dung sau:</p><p>Người mời bạn tham gia đã gửi kèm thông điệp bên dưới:</p><p>\":content\"</p><p>Hãy nhấn vào liên kết bên dưới để xác nhận tham gia vào hệ thống: <a href=\":link\">Tham gia ngay</a></p>', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2269, 0, 'vi', '/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2270, 0, 'vi', '/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2271, 0, 'vi', '/users', 'new_image', 'Ảnh mới', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2272, 0, 'vi', '/users', 'loading', 'Đang tải', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2273, 0, 'vi', '/users', 'close', 'Đóng', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2274, 0, 'vi', '/users', 'update', 'Cập nhật', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2275, 0, 'vi', '/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2276, 0, 'vi', '/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2277, 0, 'vi', '/users', 'users', 'Thành viên', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2278, 0, 'vi', '/users', 'info.title', 'Thông tin người dùng', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2279, 0, 'vi', '/users', 'info.first_name', 'Họ', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2280, 0, 'vi', '/users', 'info.last_name', 'Tên', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2281, 0, 'vi', '/users', 'info.email', 'Email', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2282, 0, 'vi', '/users', 'info.second_email', 'Email dự phòng', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2283, 0, 'vi', '/users', 'info.address', 'Địa chỉ', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2284, 0, 'vi', '/users', 'info.second_address', 'Địa chỉ dự phòng', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2285, 0, 'vi', '/users', 'info.birth_day', 'Ngày sinh', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2286, 0, 'vi', '/users', 'info.job', 'Nghề nghiệp', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2287, 0, 'vi', '/users', 'info.mobile_number', 'Số điện thoại di động', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2288, 0, 'vi', '/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2289, 0, 'vi', '/users', 'info.interes', 'Sở thích', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2290, 0, 'vi', '/users', 'info.about', 'Giới thiệu', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2291, 0, 'vi', '/users', 'gender.title', 'Giới tính', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2292, 0, 'vi', '/users', 'gender.male', 'nam', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2293, 0, 'vi', '/users', 'gender.female', 'nữ', '2018-03-18 09:04:24', '2018-03-28 03:22:47'),
(2294, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2295, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2296, 1, 'vi', 'passwords', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với xác nhận mật khẩu.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2297, 1, 'vi', 'passwords', 'reset', 'Mật khẩu của bạn đã được khôi phục', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2298, 1, 'vi', 'passwords', 'sent', 'Hệ thống đã gửi một email cho bạn chứa liên kết khôi phục mật khẩu!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2299, 1, 'vi', 'passwords', 'token', 'Mã khôi phục mật khẩu không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2300, 1, 'vi', 'passwords', 'user', 'Không thể tìm thấy người dùng với địa chỉ email này.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2301, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2302, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2303, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2304, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2305, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2306, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2307, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2308, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2309, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2310, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2311, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2312, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2313, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2314, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2315, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2316, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2317, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2318, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2319, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2320, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2321, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2322, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2323, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2324, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2325, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2326, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2327, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2328, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2329, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2330, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2331, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2332, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2333, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2334, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2335, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2336, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2337, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2338, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2339, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2340, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2341, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2342, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2343, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2344, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2345, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2346, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2347, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2348, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2349, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2350, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2351, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong CSDL.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2352, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2353, 1, 'vi', 'validation', 'uploaded', 'Không thể tải lên, hãy thử lại.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2354, 1, 'vi', 'validation', 'custom.email.email', 'Địa chỉ email không hợp lệ', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2355, 1, 'vi', 'validation', 'custom.email.required', 'Email không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2356, 1, 'vi', 'validation', 'custom.email.unique', 'Email đã được sử dụng, vui lòng chọn email khác!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2357, 1, 'vi', 'validation', 'custom.password.min', 'Mật khẩu phải ít nhất :min kí tự.', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2358, 1, 'vi', 'validation', 'custom.password.required', 'Mật khẩu không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2359, 1, 'vi', 'validation', 'custom.repassword.same', 'Mật khẩu và xác nhận mật khẩu không trùng khớp', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2360, 1, 'vi', 'validation', 'custom.username.min', 'Tên phải ít nhất 6 kí tự', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2361, 1, 'vi', 'validation', 'custom.username.required', 'Tên đăng nhập không được để trống!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2362, 1, 'vi', 'validation', 'custom.username.unique', 'Tên này đã được sử dụng, vui lòng chọn tên khác!', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2363, 1, 'vi', 'validation', 'attributes', 'Thuộc tính', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2364, 1, 'vi', 'validation', 'after_or_equal', 'Thuộc tính :attribute phải là ngày lớn hơn hoặc bằng :date', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2365, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là ngày trước hoặc bằng ngày :date', '2018-03-18 09:04:24', '2018-03-18 09:04:24'),
(2366, 1, 'en', 'core.acl/permissions', 'role_permission', 'Roles and Permissions', '2018-03-28 03:22:32', '2018-03-28 03:22:32'),
(2367, 1, 'en', 'core.acl/permissions', 'user_management', 'User Management', '2018-03-28 03:22:32', '2018-03-28 03:22:32'),
(2368, 1, 'en', 'core.acl/permissions', 'super_user_management', 'Super User Management', '2018-03-28 03:22:32', '2018-03-28 03:22:32'),
(2369, 1, 'en', 'core.base/layouts', 'setting_email', 'Email', '2018-03-28 03:22:34', '2018-03-28 03:22:34'),
(2370, 1, 'en', 'core.base/system', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2018-03-28 03:22:34', '2018-03-28 03:22:34'),
(2371, 1, 'en', 'media/media', 'empty_trash_success', 'Empty trash successfully!', '2018-03-28 03:22:39', '2018-03-28 03:22:39'),
(2372, 1, 'en', 'plugins.blog/base', 'menu_name', 'Blog', '2018-03-28 03:22:41', '2018-03-28 03:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_position` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `completed_profile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `dob`, `address`, `secondary_address`, `job_position`, `phone`, `secondary_phone`, `secondary_email`, `gender`, `website`, `skype`, `facebook`, `twitter`, `google_plus`, `youtube`, `github`, `interest`, `about`, `profile_image`, `super_user`, `manage_supers`, `completed_profile`) VALUES
(1, 'chithien175@gmail.com', '$2y$10$/eZYKbDrnjpKpz8TgOagre9qx7tylzGV2vEdgmfiWbcN410y3RJh.', 'i1acpGDbapctEEguIVyrl9PBAJ7kbTrIt9F6EahYbvmmOR0T1tA8ExkRhWTI', '2017-11-15 06:57:09', '2018-04-23 10:40:27', '{\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"backups.list\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.delete\":true,\"block.list\":true,\"block.create\":true,\"block.edit\":true,\"block.delete\":true,\"categories.list\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.delete\":true,\"contacts.list\":true,\"contacts.create\":true,\"contacts.edit\":true,\"contacts.delete\":true,\"custom-fields.list\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.delete\":true,\"dashboard.index\":true,\"galleries.list\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.delete\":true,\"languages.list\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.delete\":true,\"logs.list\":true,\"logs.delete\":true,\"media.index\":true,\"files.list\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.delete\":true,\"folders.list\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.delete\":true,\"member.list\":true,\"member.create\":true,\"member.edit\":true,\"member.delete\":true,\"menus.list\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.delete\":true,\"pages.list\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.delete\":true,\"plugins.list\":true,\"posts.list\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.delete\":true,\"roles.list\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.delete\":true,\"settings.options\":true,\"tags.list\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.delete\":true,\"translations.list\":true,\"translations.create\":true,\"translations.edit\":true,\"translations.delete\":true,\"users.list\":true,\"users.create\":true,\"users.edit\":true,\"users.delete\":true,\"widgets.list\":true,\"superuser\":true,\"manage_supers\":true}', '2018-04-23 10:40:27', 'Dev', 'Team', 'admin', '1991-05-17 15:59:03', NULL, NULL, NULL, NULL, NULL, 'chithien175@gmail.com', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/vendor/core/images/default-avatar.jpg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'languages_current_data_language', 'all', 1, '2017-11-30 18:27:51', '2018-04-12 09:49:57'),
(2, 'admin-theme', 'default', 1, '2018-03-07 03:42:13', '2018-04-12 09:06:16'),
(3, 'admin-locale', 'en', 1, '2018-03-07 03:42:14', '2018-03-07 03:42:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(2, 'Botble\\Widget\\Widgets\\Text', 'second_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:47:20', '2016-12-18 04:47:20'),
(7, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-18 04:48:00', '2016-12-18 04:48:00'),
(9, 'Botble\\Widget\\Widgets\\Text', 'primary_sidebar', 'demo', 0, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\Text\",\"name\":\"Text\",\"content\":\"\"}', '2016-12-18 04:50:57', '2016-12-18 04:50:57'),
(19, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":\"5\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(20, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(21, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2016-12-24 07:41:57', '2016-12-24 07:41:57'),
(30, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":\"5\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(31, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite website\",\"menu_id\":\"favorite-website\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(32, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2016-12-24 07:42:58', '2016-12-24 07:42:58'),
(42, 'PopularPostsWidget', 'primary_sidebar', 'newstv', 0, '{\"id\":\"PopularPostsWidget\",\"name\":\"Top Views\",\"number_display\":\"5\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(43, 'VideoPostsWidget', 'primary_sidebar', 'newstv', 1, '{\"id\":\"VideoPostsWidget\",\"name\":\"Videos\",\"number_display\":\"1\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(44, 'FacebookWidget', 'primary_sidebar', 'newstv', 2, '{\"id\":\"FacebookWidget\",\"name\":\"Facebook\",\"facebook_name\":\"T\\u00f4i y\\u00eau l\\u1eadp tr\\u00ecnh\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/LoveCodingFC\\/\"}', '2017-04-30 19:55:10', '2017-04-30 19:55:10'),
(61, 'RecentPostsWidget', 'footer_sidebar', 'newstv', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"6\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(62, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite websites\",\"menu_id\":\"favorite-website\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(63, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My links\",\"menu_id\":\"my-links\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(64, 'CustomMenuWidget', 'footer_sidebar', 'newstv', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2017-04-30 19:56:39', '2017-04-30 19:56:39'),
(198, 'SlidersWidget', 'botonblue_hompage_section', 'botonblue', 0, '{\"id\":\"SlidersWidget\",\"name\":\"Slider for Homepage\",\"gallery_id\":\"1\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(199, 'BlocksWidget', 'botonblue_hompage_section', 'botonblue', 1, '{\"id\":\"BlocksWidget\",\"name\":\"Blocks Widget\",\"block_id\":\"1\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(200, 'PostsByCategoryWidget', 'botonblue_hompage_section', 'botonblue', 2, '{\"id\":\"PostsByCategoryWidget\",\"name\":\"Posts by Category\",\"category_id\":\"4\",\"number_display\":\"2\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(201, 'FeaturePostWidget', 'botonblue_hompage_section', 'botonblue', 3, '{\"id\":\"FeaturePostWidget\",\"name\":\"Feature Post of Homepage\",\"post_id\":\"6\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(202, 'CategoriesWidget', 'botonblue_hompage_section', 'botonblue', 4, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\",\"number_display\":\"3\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(203, 'EventsWidget', 'botonblue_hompage_section', 'botonblue', 5, '{\"id\":\"EventsWidget\",\"name\":\"UPCOMING EVENTS\",\"number_display\":\"6\",\"image_url\":\"\\/uploads\\/1\\/dining\\/diamond-sky-bar\\/botom-diamond-sky-bar.jpg\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(204, 'AboutUsWidget', 'botonblue_hompage_section', 'botonblue', 6, '{\"id\":\"AboutUsWidget\",\"name\":\"About Us\",\"page_id\":\"4\"}', '2018-04-12 07:48:55', '2018-04-12 07:48:55'),
(337, 'HomeBannerWidget', 'home_sidebar', 'book2go', 0, '{\"id\":\"HomeBannerWidget\",\"banner_image\":\"\\/uploads\\/1\\/slide1.png\"}', '2018-04-22 04:40:13', '2018-04-22 04:40:13'),
(338, 'HomeGuaranteeWidget', 'home_sidebar', 'book2go', 1, '{\"id\":\"HomeGuaranteeWidget\",\"number\":\"01\",\"title\":\"Cam k\\u1ebft c\\u1ee7a ch\\u00fang t\\u00f4i\",\"sub_title\":\"Your fun and enjoyment is guaranteed when you book travel tours and hotels with us.<br>Well-organized routine, experienced guide, and professional service\",\"image_block1\":\"\\/uploads\\/1\\/icon1.png\",\"image_block2\":\"\\/uploads\\/1\\/icon2.png\",\"image_block3\":\"\\/uploads\\/1\\/icon3.png\"}', '2018-04-22 04:40:13', '2018-04-22 04:40:13'),
(339, 'HomeDestinationWidget', 'home_sidebar', 'book2go', 2, '{\"id\":\"HomeDestinationWidget\",\"destination_image\":\"\\/uploads\\/1\\/pr.png\",\"number\":\"02\",\"title\":\"\\u0110\\u1ecba \\u0110i\\u1ec3m N\\u1ed5i B\\u1eadt\",\"sub_title\":\"Right place, Right time. Discover now the best destinations to travel this month!             <br>Recommended by millions of real travelers.\",\"hotels\":[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"]}', '2018-04-22 04:40:13', '2018-04-22 04:40:13'),
(340, 'HomeTestimonialWidget', 'home_sidebar', 'book2go', 3, '{\"id\":\"HomeTestimonialWidget\",\"number\":\"03\"}', '2018-04-22 04:40:13', '2018-04-22 04:40:13'),
(341, 'HomeNewsWidget', 'home_sidebar', 'book2go', 4, '{\"id\":\"HomeNewsWidget\",\"number\":\"04\"}', '2018-04-22 04:40:13', '2018-04-22 04:40:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `audit_history`
--
ALTER TABLE `audit_history`
  ADD KEY `audit_history_user_id_index` (`user_id`),
  ADD KEY `audit_history_module_index` (`module`);

--
-- Chỉ mục cho bảng `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_member_id_index` (`member_id`),
  ADD KEY `bookings_servicer_id_index` (`servicer_id`),
  ADD KEY `bookings_user_id_index` (`user_id`),
  ADD KEY `bookings_ip_address_index` (`ip_address`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_foreign` (`field_item_id`);

--
-- Chỉ mục cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_foreign` (`created_by`),
  ADD KEY `field_groups_updated_by_foreign` (`updated_by`);

--
-- Chỉ mục cho bảng `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_foreign` (`field_group_id`),
  ADD KEY `field_items_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`content_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`lang_meta_content_id`);

--
-- Chỉ mục cho bảng `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Chỉ mục cho bảng `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`related_id`);

--
-- Chỉ mục cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`content_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_category_id_index` (`category_id`),
  ADD KEY `post_category_post_id_index` (`post_id`);

--
-- Chỉ mục cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`),
  ADD KEY `post_tag_post_id_index` (`post_id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_code_index` (`code`),
  ADD KEY `promotions_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `promotion_servicer`
--
ALTER TABLE `promotion_servicer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_servicer_promotion_id_index` (`promotion_id`),
  ADD KEY `promotion_servicer_reference_id_index` (`reference_id`),
  ADD KEY `promotion_servicer_reference_index` (`reference`);

--
-- Chỉ mục cho bảng `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_type_index` (`revisionable_type`),
  ADD KEY `revisions_revisionable_id_index` (`revisionable_id`),
  ADD KEY `revisions_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `servicers`
--
ALTER TABLE `servicers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_types_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Chỉ mục cho bảng `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_index` (`user_id`),
  ADD KEY `tags_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT cho bảng `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `promotion_servicer`
--
ALTER TABLE `promotion_servicer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `servicers`
--
ALTER TABLE `servicers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2373;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_field_item_id_foreign` FOREIGN KEY (`field_item_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `field_groups`
--
ALTER TABLE `field_groups`
  ADD CONSTRAINT `field_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `field_items`
--
ALTER TABLE `field_items`
  ADD CONSTRAINT `field_items_field_group_id_foreign` FOREIGN KEY (`field_group_id`) REFERENCES `field_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `field_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `field_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
