-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 11:02 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scratch`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-30 14:28:38', '2019-12-30 14:28:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/scratch', 'yes'),
(2, 'home', 'http://localhost/scratch', 'yes'),
(3, 'blogname', 'Scratch', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'scratch@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:124:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"vc_grid_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"vc_grid_item/([^/]+)/embed/?$\";s:45:\"index.php?vc_grid_item=$matches[1]&embed=true\";s:33:\"vc_grid_item/([^/]+)/trackback/?$\";s:39:\"index.php?vc_grid_item=$matches[1]&tb=1\";s:41:\"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&paged=$matches[2]\";s:48:\"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]\";s:37:\"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?vc_grid_item=$matches[1]&page=$matches[2]\";s:29:\"vc_grid_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"vc_grid_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"vc_grid_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=46&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:27:\"js_composer/js_composer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'scratch', 'yes'),
(41, 'stylesheet', 'scratch', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '46', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1593268109', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:74:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:31:\"vc_access_rules_post_types/post\";b:1;s:31:\"vc_access_rules_post_types/page\";b:1;s:35:\"vc_access_rules_post_types/services\";b:1;s:26:\"vc_access_rules_post_types\";s:6:\"custom\";s:30:\"vc_access_rules_backend_editor\";b:1;s:31:\"vc_access_rules_frontend_editor\";b:1;s:29:\"vc_access_rules_post_settings\";b:1;s:24:\"vc_access_rules_settings\";b:1;s:25:\"vc_access_rules_templates\";b:1;s:26:\"vc_access_rules_shortcodes\";b:1;s:28:\"vc_access_rules_grid_builder\";b:1;s:23:\"vc_access_rules_presets\";b:1;s:25:\"vc_access_rules_dragndrop\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:26:\"vc_access_rules_post_types\";b:1;s:30:\"vc_access_rules_backend_editor\";b:1;s:31:\"vc_access_rules_frontend_editor\";b:1;s:29:\"vc_access_rules_post_settings\";b:1;s:25:\"vc_access_rules_templates\";b:1;s:26:\"vc_access_rules_shortcodes\";b:1;s:28:\"vc_access_rules_grid_builder\";b:1;s:23:\"vc_access_rules_presets\";b:1;s:25:\"vc_access_rules_dragndrop\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:26:\"vc_access_rules_post_types\";b:1;s:30:\"vc_access_rules_backend_editor\";b:1;s:31:\"vc_access_rules_frontend_editor\";b:1;s:29:\"vc_access_rules_post_settings\";b:1;s:25:\"vc_access_rules_templates\";b:1;s:26:\"vc_access_rules_shortcodes\";b:1;s:28:\"vc_access_rules_grid_builder\";b:1;s:23:\"vc_access_rules_presets\";b:1;s:25:\"vc_access_rules_dragndrop\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:14:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:26:\"vc_access_rules_post_types\";b:1;s:30:\"vc_access_rules_backend_editor\";b:1;s:31:\"vc_access_rules_frontend_editor\";b:1;s:29:\"vc_access_rules_post_settings\";b:1;s:25:\"vc_access_rules_templates\";b:1;s:26:\"vc_access_rules_shortcodes\";b:1;s:28:\"vc_access_rules_grid_builder\";b:1;s:23:\"vc_access_rules_presets\";b:1;s:25:\"vc_access_rules_dragndrop\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"contact-1\";a:1:{i:0;s:13:\"custom_html-2\";}s:8:\"footer-1\";a:1:{i:0;s:13:\"custom_html-3\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1591903721;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591928921;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591972120;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591972133;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591972136;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'Xa?qlM`#Gs;$SP%oOkx{f~LIh%~I5g;*sAybsctp8CzsA!MGldK8|O>Wa+..jqup', 'no'),
(111, 'nonce_salt', 'm!]N:B3IEi<.HZmS]kw:.MQk>_hrE8_E5:T3T=0d=bGZ%CHd P>H{99HXZDn fJ9', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:123:\"<p class=\"color-white text-uppercase font-weight-bold mb-0\">Contact</p>\r\n<p class=\"color-white\">YouTube: Scratch Coding</p>\";}i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:81:\"<p class=\"color-white\">@ Copyright, all rights reserved - Scratch Coding 2020</p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.4-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-rollback-2.zip\";}s:7:\"current\";s:5:\"5.3.4\";s:7:\"version\";s:5:\"5.3.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1591901677;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591901687;s:7:\"checked\";a:1:{s:7:\"scratch\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'auth_key', 'z7+:KUmmUFM8<K+o+SADR=jF]HmznEU<2Mn3gzn8kGRx&tkhUb-o]W@J,_qWk*-A', 'no'),
(124, 'auth_salt', 'nfsU[..)vukE-GZ3OX;?73P4&tta3q!*T^PTW+mc2,uJEjIvKqLO&%zKw}ez@kj_', 'no'),
(125, 'logged_in_key', 'fjTNetPi;,W]X~NvbNNQ=7H.]os 2M{;m!!@r0*=A}%[ene]i0~AQd]_F,539z5I', 'no'),
(126, 'logged_in_salt', 'GX7T8Hs-gk~[bw-mmK>CWU#64+ADJj8JU.JUB))sCOaS6Tzzw),zwkY~?8BoX=TU', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(146, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577716146;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'current_theme', 'scratch', 'yes'),
(148, 'theme_mods_scratch', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;s:12:\"header_image\";s:88:\"http://localhost/scratch/wp-content/uploads/2020/01/photo-1510915228340-29c85a43dcfe.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:10;s:3:\"url\";s:88:\"http://localhost/scratch/wp-content/uploads/2020/01/photo-1510915228340-29c85a43dcfe.jpg\";s:13:\"thumbnail_url\";s:88:\"http://localhost/scratch/wp-content/uploads/2020/01/photo-1510915228340-29c85a43dcfe.jpg\";s:6:\"height\";i:667;s:5:\"width\";i:1000;}}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(171, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(273, 'recovery_mode_email_last_sent', '1591043495', 'yes'),
(345, 'recently_activated', 'a:0:{}', 'yes'),
(346, 'vc_version', '5.7', 'yes'),
(350, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(501, 'category_children', 'a:0:{}', 'yes'),
(530, '_site_transient_timeout_theme_roots', '1591903486', 'no'),
(531, '_site_transient_theme_roots', 'a:1:{s:7:\"scratch\";s:7:\"/themes\";}', 'no'),
(532, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591901691;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"js_composer/js_composer.php\";s:3:\"5.7\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":6:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:3:\"6.2\";s:6:\"plugin\";s:27:\"js_composer/js_composer.php\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:1;s:4:\"name\";s:21:\"WPBakery Page Builder\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/01/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:64;s:4:\"file\";s:16:\"2020/01/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 10, '_wp_attached_file', '2020/01/photo-1510915228340-29c85a43dcfe.jpg'),
(26, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:44:\"2020/01/photo-1510915228340-29c85a43dcfe.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1510915228340-29c85a43dcfe-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1510915228340-29c85a43dcfe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1510915228340-29c85a43dcfe-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 10, '_wp_attachment_custom_header_last_used_scratch', '1579043736'),
(28, 10, '_wp_attachment_is_custom_header', 'scratch'),
(35, 15, '_edit_last', '1'),
(36, 15, '_edit_lock', '1588973967:1'),
(40, 17, '_edit_last', '1'),
(41, 17, '_edit_lock', '1588971218:1'),
(42, 18, '_wp_attached_file', '2020/01/img_573752.png'),
(43, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:980;s:6:\"height\";i:796;s:4:\"file\";s:22:\"2020/01/img_573752.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"img_573752-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"img_573752-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"img_573752-768x624.png\";s:5:\"width\";i:768;s:6:\"height\";i:624;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 17, '_thumbnail_id', '63'),
(45, 19, '_edit_last', '1'),
(46, 19, '_edit_lock', '1590951832:1'),
(49, 21, '_wp_attached_file', '2020/01/194_Laravel-512.png'),
(50, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/01/194_Laravel-512.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"194_Laravel-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"194_Laravel-512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 19, '_thumbnail_id', '64'),
(54, 19, 'link', 'https://www.facebook.com/'),
(55, 15, 'link', 'https://www.youtube.com'),
(56, 1, '_edit_lock', '1587306607:1'),
(59, 26, '_wp_attached_file', '2019/12/19911835-natural-green-spring-or-summer-season-abstract-nature-background.jpg'),
(60, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:960;s:4:\"file\";s:85:\"2019/12/19911835-natural-green-spring-or-summer-season-abstract-nature-background.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:85:\"19911835-natural-green-spring-or-summer-season-abstract-nature-background-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:86:\"19911835-natural-green-spring-or-summer-season-abstract-nature-background-1024x756.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:756;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:85:\"19911835-natural-green-spring-or-summer-season-abstract-nature-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:85:\"19911835-natural-green-spring-or-summer-season-abstract-nature-background-768x567.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:567;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 1, '_thumbnail_id', '26'),
(64, 27, '_edit_lock', '1587308452:1'),
(65, 28, '_wp_attached_file', '2020/04/143196-nature-background-hd-2304x1440-notebook.jpg'),
(66, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2304;s:6:\"height\";i:1440;s:4:\"file\";s:58:\"2020/04/143196-nature-background-hd-2304x1440-notebook.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"143196-nature-background-hd-2304x1440-notebook-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"143196-nature-background-hd-2304x1440-notebook-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"143196-nature-background-hd-2304x1440-notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:58:\"143196-nature-background-hd-2304x1440-notebook-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:59:\"143196-nature-background-hd-2304x1440-notebook-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:60:\"143196-nature-background-hd-2304x1440-notebook-2048x1280.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1280;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 27, '_thumbnail_id', '28'),
(72, 32, '_edit_lock', '1588755984:1'),
(73, 33, '_menu_item_type', 'post_type'),
(74, 33, '_menu_item_menu_item_parent', '0'),
(75, 33, '_menu_item_object_id', '32'),
(76, 33, '_menu_item_object', 'page'),
(77, 33, '_menu_item_target', ''),
(78, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 33, '_menu_item_xfn', ''),
(80, 33, '_menu_item_url', ''),
(81, 32, '_wp_page_template', 'template-parts/homepage.php'),
(82, 32, '_edit_last', '1'),
(83, 32, '_wpb_vc_js_status', 'true'),
(84, 37, '_wp_attached_file', '2020/05/makro-cvety-razmytie-cvet.jpg'),
(85, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1332;s:6:\"height\";i:850;s:4:\"file\";s:37:\"2020/05/makro-cvety-razmytie-cvet.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"makro-cvety-razmytie-cvet-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"makro-cvety-razmytie-cvet-1024x653.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:653;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"makro-cvety-razmytie-cvet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"makro-cvety-razmytie-cvet-768x490.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 38, '_wpb_shortcodes_custom_css', '.vc_custom_1588755031422{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet.jpg?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(88, 39, '_wpb_shortcodes_custom_css', '.vc_custom_1588755320168{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet.jpg?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(89, 40, '_wpb_shortcodes_custom_css', '.vc_custom_1588755421976{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet.jpg?id=37) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(93, 32, '_wp_desired_post_slug', 'homepage'),
(94, 46, '_edit_lock', '1588757442:1'),
(95, 47, '_menu_item_type', 'post_type'),
(96, 47, '_menu_item_menu_item_parent', '0'),
(97, 47, '_menu_item_object_id', '46'),
(98, 47, '_menu_item_object', 'page'),
(99, 47, '_menu_item_target', ''),
(100, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 47, '_menu_item_xfn', ''),
(102, 47, '_menu_item_url', ''),
(103, 46, '_edit_last', '1'),
(104, 46, '_wpb_vc_js_status', 'true'),
(105, 46, '_wp_page_template', 'template-parts/homepage.php'),
(106, 50, '_wp_attached_file', '2020/05/makro-cvety-razmytie-cvet-1.jpg'),
(107, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1332;s:6:\"height\";i:850;s:4:\"file\";s:39:\"2020/05/makro-cvety-razmytie-cvet-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"makro-cvety-razmytie-cvet-1-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"makro-cvety-razmytie-cvet-1-1024x653.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:653;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"makro-cvety-razmytie-cvet-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"makro-cvety-razmytie-cvet-1-768x490.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:490;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 51, '_wpb_shortcodes_custom_css', '.vc_custom_1588756607287{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(110, 52, '_wpb_shortcodes_custom_css', '.vc_custom_1588756607287{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(111, 53, '_wpb_shortcodes_custom_css', '.vc_custom_1588756691166{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(112, 54, '_wpb_shortcodes_custom_css', '.vc_custom_1588756705704{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(113, 57, '_wpb_shortcodes_custom_css', '.vc_custom_1588757255296{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(114, 46, '_wpb_shortcodes_custom_css', '.vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(115, 58, '_wpb_shortcodes_custom_css', '.vc_custom_1588757255296{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(116, 59, '_wpb_shortcodes_custom_css', '.vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(117, 60, '_wpb_shortcodes_custom_css', '.vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(118, 61, '_wp_attached_file', '2020/01/798110.png'),
(119, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2020/01/798110.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"798110-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"798110-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"798110-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"798110-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"798110-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 15, '_thumbnail_id', '62'),
(121, 62, '_wp_attached_file', '2020/01/PngItem_412661.png'),
(122, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:845;s:4:\"file\";s:26:\"2020/01/PngItem_412661.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"PngItem_412661-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"PngItem_412661-1024x721.png\";s:5:\"width\";i:1024;s:6:\"height\";i:721;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"PngItem_412661-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"PngItem_412661-768x541.png\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 63, '_wp_attached_file', '2020/01/icons8-wordpress-150.png'),
(124, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:32:\"2020/01/icons8-wordpress-150.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 17, 'link', ''),
(126, 64, '_wp_attached_file', '2020/01/icons8-laravel-100.png'),
(127, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:30:\"2020/01/icons8-laravel-100.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 65, '_wp_attached_file', '2020/01/laravel_smolten_2.png'),
(129, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2020/01/laravel_smolten_2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"laravel_smolten_2-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"laravel_smolten_2-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"laravel_smolten_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"laravel_smolten_2-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"laravel_smolten_2-1536x960.png\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 67, '_wp_attached_file', '2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg'),
(131, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2200;s:6:\"height\";i:1458;s:4:\"file\";s:79:\"2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:79:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:80:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-1024x679.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:679;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:79:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:79:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:81:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:81:\"201-2014432_red-rose-blur-nature-background-hd-wallpaper-background-2048x1357.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1357;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(132, 68, '_wp_attached_file', '2020/01/icons8-laravel-100-1.png'),
(133, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:32:\"2020/01/icons8-laravel-100-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 19, '_wpb_vc_js_status', 'true'),
(135, 19, '_wpb_shortcodes_custom_css', '.vc_custom_1588976744122{background-image: url(http://localhost/scratch/wp-content/uploads/2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg?id=67) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}'),
(137, 71, '_edit_lock', '1589752096:1'),
(138, 72, '_wp_attached_file', '2020/05/nature-background-2560x1440-1.jpg'),
(139, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:41:\"2020/05/nature-background-2560x1440-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"nature-background-2560x1440-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"nature-background-2560x1440-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"nature-background-2560x1440-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"nature-background-2560x1440-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"nature-background-2560x1440-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:43:\"nature-background-2560x1440-1-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 71, '_thumbnail_id', '72'),
(143, 71, '_edit_last', '1'),
(145, 71, '_wpb_vc_js_status', 'false'),
(146, 74, '_edit_lock', '1589752052:1'),
(147, 75, '_wp_attached_file', '2020/05/photo-1445855743215-296f71d4b49c.jpg'),
(148, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:44:\"2020/05/photo-1445855743215-296f71d4b49c.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1445855743215-296f71d4b49c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1445855743215-296f71d4b49c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1445855743215-296f71d4b49c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 74, '_thumbnail_id', '75'),
(152, 74, '_edit_last', '1'),
(155, 74, '_wpb_vc_js_status', 'false'),
(156, 77, '_edit_lock', '1589752108:1'),
(157, 78, '_wp_attached_file', '2020/05/fall-1072821__340.jpg'),
(158, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:510;s:6:\"height\";i:340;s:4:\"file\";s:29:\"2020/05/fall-1072821__340.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"fall-1072821__340-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"fall-1072821__340-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 77, '_thumbnail_id', '78'),
(162, 77, '_edit_last', '1'),
(165, 77, '_wpb_vc_js_status', 'false'),
(166, 80, '_edit_lock', '1589752727:1'),
(167, 81, '_wp_attached_file', '2020/05/267434.jpg'),
(168, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2020/05/267434.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"267434-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"267434-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"267434-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"267434-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 80, '_pingme', '1'),
(171, 80, '_thumbnail_id', '81'),
(172, 80, '_edit_last', '1'),
(173, 80, '_wpb_vc_js_status', 'false'),
(174, 84, '_edit_last', '1'),
(175, 84, '_edit_lock', '1591043857:1'),
(176, 84, 'iframe', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2hu5GeJ5FT8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(177, 85, '_edit_last', '1'),
(178, 85, '_edit_lock', '1591043828:1'),
(179, 85, 'iframe', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oIymKzi8bVU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(180, 86, '_edit_last', '1'),
(181, 86, 'iframe', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lYno3Y79-EE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(182, 86, '_edit_lock', '1591043572:1'),
(183, 86, '_wp_old_date', '2020-05-31'),
(184, 86, '_wp_old_date', '2020-06-06'),
(185, 86, 'date', '2020-05-29 19:50:36'),
(186, 85, 'date', '2020-05-31 19:49:16'),
(187, 84, 'date', '2020-05-25 19:41:40'),
(188, 84, '_wp_old_date', '2020-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-30 14:28:38', '2019-12-30 14:28:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Post 1', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-19 14:25:20', '2020-04-19 14:25:20', '', 0, 'http://localhost/scratch/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-30 14:28:38', '2019-12-30 14:28:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/scratch/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-30 14:28:38', '2019-12-30 14:28:38', '', 0, 'http://localhost/scratch/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-30 14:28:38', '2019-12-30 14:28:38', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/scratch.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-30 14:28:38', '2019-12-30 14:28:38', '', 0, 'http://localhost/scratch/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-01-01 11:20:50', '2020-01-01 11:20:50', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-01-01 11:20:50', '2020-01-01 11:20:50', '', 0, 'http://localhost/scratch/wp-content/uploads/2020/01/logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-01-14 23:04:34', '2020-01-14 23:04:34', '', 'photo-1510915228340-29c85a43dcfe', '', 'inherit', 'open', 'closed', '', 'photo-1510915228340-29c85a43dcfe', '', '', '2020-01-14 23:04:34', '2020-01-14 23:04:34', '', 0, 'http://localhost/scratch/wp-content/uploads/2020/01/photo-1510915228340-29c85a43dcfe.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-01-26 14:39:35', '2020-01-26 14:39:35', 'In Youtube channel you can watch our videos that we made for Wordpress.', 'Youtube Videos', '', 'publish', 'closed', 'closed', '', 'youtube-videos', '', '', '2020-05-08 20:53:29', '2020-05-08 20:53:29', '', 0, 'http://localhost/scratch/?post_type=services&#038;p=15', 0, 'services', '', 0),
(17, 1, '2020-01-26 14:46:46', '2020-01-26 14:46:46', 'We will create custom theme from scratch in Wordpress for learning purposes.', 'Wordpress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2020-05-08 20:54:54', '2020-05-08 20:54:54', '', 0, 'http://localhost/scratch/?post_type=services&#038;p=17', 0, 'services', '', 0),
(18, 1, '2020-01-26 14:46:42', '2020-01-26 14:46:42', '', 'img_573752', '', 'inherit', 'open', 'closed', '', 'img_573752', '', '', '2020-01-26 14:46:42', '2020-01-26 14:46:42', '', 17, 'http://localhost/scratch/wp-content/uploads/2020/01/img_573752.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-01-26 14:48:15', '2020-01-26 14:48:15', '[vc_row full_width=\"stretch_row_content\" css=\".vc_custom_1588976744122{background-image: url(http://localhost/scratch/wp-content/uploads/2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg?id=67) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"service-page pt-5 pb-5\"][vc_column][vc_row_inner el_class=\"container\"][vc_column_inner width=\"1/4\"][vc_single_image image=\"68\" img_size=\"full\" alignment=\"center\" el_class=\"service-page-image\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color-white\"]\r\n<h1>The PHP Framework for Web Artisans</h1>\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Laravel', '', 'publish', 'closed', 'closed', '', 'laravel', '', '', '2020-05-08 22:25:47', '2020-05-08 22:25:47', '', 0, 'http://localhost/scratch/?post_type=services&#038;p=19', 0, 'services', '', 0),
(21, 1, '2020-01-26 14:48:12', '2020-01-26 14:48:12', '', '194_Laravel-512', '', 'inherit', 'open', 'closed', '', '194_laravel-512', '', '', '2020-01-26 14:48:12', '2020-01-26 14:48:12', '', 19, 'http://localhost/scratch/wp-content/uploads/2020/01/194_Laravel-512.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2020-04-19 14:24:45', '2020-04-19 14:24:45', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Post 1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-19 14:24:45', '2020-04-19 14:24:45', '', 1, 'http://localhost/scratch/2020/04/19/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-04-19 14:24:59', '2020-04-19 14:24:59', '', '19911835-natural-green-spring-or-summer-season-abstract-nature-background', '', 'inherit', 'open', 'closed', '', '19911835-natural-green-spring-or-summer-season-abstract-nature-background', '', '', '2020-04-19 14:24:59', '2020-04-19 14:24:59', '', 1, 'http://localhost/scratch/wp-content/uploads/2019/12/19911835-natural-green-spring-or-summer-season-abstract-nature-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-04-19 14:33:46', '2020-04-19 14:33:46', '<!-- wp:paragraph -->\n<p> It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). </p>\n<!-- /wp:paragraph -->', 'Post 2', '', 'publish', 'open', 'open', '', 'post-2', '', '', '2020-04-19 14:33:46', '2020-04-19 14:33:46', '', 0, 'http://localhost/scratch/?p=27', 0, 'post', '', 0),
(28, 1, '2020-04-19 14:33:35', '2020-04-19 14:33:35', '', '143196-nature-background-hd-2304x1440-notebook', '', 'inherit', 'open', 'closed', '', '143196-nature-background-hd-2304x1440-notebook', '', '', '2020-04-19 14:33:35', '2020-04-19 14:33:35', '', 27, 'http://localhost/scratch/wp-content/uploads/2020/04/143196-nature-background-hd-2304x1440-notebook.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-04-19 14:33:46', '2020-04-19 14:33:46', '', 'Post 2', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-04-19 14:33:46', '2020-04-19 14:33:46', '', 27, 'http://localhost/scratch/2020/04/19/27-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-05-06 09:09:05', '2020-05-06 09:09:05', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-05-06 09:09:05', '2020-05-06 09:09:05', '', 32, 'http://localhost/scratch/2020/05/06/32-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-05-06 09:09:20', '2020-05-06 09:09:20', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"pt-5 pb-5 mt-5\"][vc_column][vc_row_inner el_class=\"container\"][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color_white text-justify\"]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-05-06 09:31:08', '2020-05-06 09:31:08', '', 0, 'http://localhost/scratch/?page_id=46', 0, 'page', '', 0),
(47, 1, '2020-05-06 09:09:20', '2020-05-06 09:09:20', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-05-06 09:09:20', '2020-05-06 09:09:20', '', 0, 'http://localhost/scratch/2020/05/06/47/', 0, 'nav_menu_item', '', 0),
(48, 1, '2020-05-06 09:09:20', '2020-05-06 09:09:20', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:09:20', '2020-05-06 09:09:20', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-05-06 09:10:41', '2020-05-06 09:10:41', 'test', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:10:41', '2020-05-06 09:10:41', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-05-06 09:16:42', '2020-05-06 09:16:42', '', 'makro-cvety-razmytie-cvet', '', 'inherit', 'open', 'closed', '', 'makro-cvety-razmytie-cvet', '', '', '2020-05-06 09:16:42', '2020-05-06 09:16:42', '', 46, 'http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-05-06 09:17:13', '2020-05-06 09:17:13', '[vc_row css=\".vc_custom_1588756607287{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text]I am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:17:13', '2020-05-06 09:17:13', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-05-06 09:17:44', '2020-05-06 09:17:44', '[vc_row css=\".vc_custom_1588756607287{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:17:44', '2020-05-06 09:17:44', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-05-06 09:18:12', '2020-05-06 09:18:12', '[vc_row full_width=\"stretch_row_content\" css=\".vc_custom_1588756691166{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:18:12', '2020-05-06 09:18:12', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-05-06 09:18:27', '2020-05-06 09:18:27', '[vc_row full_width=\"stretch_row_content_no_spaces\" css=\".vc_custom_1588756705704{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:18:27', '2020-05-06 09:18:27', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-05-06 09:21:23', '2020-05-06 09:21:23', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:21:23', '2020-05-06 09:21:23', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-05-06 09:27:21', '2020-05-06 09:27:21', '<p>[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757154587{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text]</p>\n<h2>Why do we use it?</h2>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]</p>\n', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2020-05-06 09:27:21', '2020-05-06 09:27:21', '', 46, 'http://localhost/scratch/2020/05/06/46-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2020-05-06 09:27:38', '2020-05-06 09:27:38', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757255296{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\" pt-5 pb-5\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color_white\"]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:27:38', '2020-05-06 09:27:38', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-05-06 09:29:58', '2020-05-06 09:29:58', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757255296{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"pt-5 pb-5\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color_white text-justify\"]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:29:58', '2020-05-06 09:29:58', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-05-06 09:30:29', '2020-05-06 09:30:29', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"pt-5 pb-5 mt-5\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color_white text-justify\"]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:30:29', '2020-05-06 09:30:29', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-05-06 09:31:08', '2020-05-06 09:31:08', '[vc_row full_width=\"stretch_row\" css=\".vc_custom_1588757426130{background-image: url(http://localhost/scratch/wp-content/uploads/2020/05/makro-cvety-razmytie-cvet-1.jpg?id=50) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\" el_class=\"pt-5 pb-5 mt-5\"][vc_column][vc_row_inner el_class=\"container\"][vc_column_inner width=\"1/4\"][vc_single_image image=\"5\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][vc_column_text el_class=\"color_white text-justify\"]\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Homepage', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-05-06 09:31:08', '2020-05-06 09:31:08', '', 46, 'http://localhost/scratch/2020/05/06/46-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-05-08 20:42:41', '2020-05-08 20:42:41', '', '798110', '', 'inherit', 'open', 'closed', '', '798110', '', '', '2020-05-08 20:42:41', '2020-05-08 20:42:41', '', 15, 'http://localhost/scratch/wp-content/uploads/2020/01/798110.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2020-05-08 20:53:24', '2020-05-08 20:53:24', '', 'PngItem_412661', '', 'inherit', 'open', 'closed', '', 'pngitem_412661', '', '', '2020-05-08 20:53:24', '2020-05-08 20:53:24', '', 15, 'http://localhost/scratch/wp-content/uploads/2020/01/PngItem_412661.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-05-08 20:54:51', '2020-05-08 20:54:51', '', 'icons8-wordpress-150', '', 'inherit', 'open', 'closed', '', 'icons8-wordpress-150', '', '', '2020-05-08 20:54:51', '2020-05-08 20:54:51', '', 17, 'http://localhost/scratch/wp-content/uploads/2020/01/icons8-wordpress-150.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2020-05-08 20:56:16', '2020-05-08 20:56:16', '', 'icons8-laravel-100', '', 'inherit', 'open', 'closed', '', 'icons8-laravel-100', '', '', '2020-05-08 20:56:16', '2020-05-08 20:56:16', '', 19, 'http://localhost/scratch/wp-content/uploads/2020/01/icons8-laravel-100.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2020-05-08 22:19:49', '2020-05-08 22:19:49', '', 'laravel_smolten_2', '', 'inherit', 'open', 'closed', '', 'laravel_smolten_2', '', '', '2020-05-08 22:19:49', '2020-05-08 22:19:49', '', 19, 'http://localhost/scratch/wp-content/uploads/2020/01/laravel_smolten_2.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-05-08 22:21:56', '2020-05-08 22:21:56', '<p>[vc_row full_width=\"stretch_row_content\" css=\".vc_custom_1588976476812{background-image: url(http://localhost/scratch/wp-content/uploads/2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg?id=67) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}\"][vc_column][vc_row_inner][vc_column_inner width=\"1/4\"][vc_single_image image=\"68\" img_size=\"full\" alignment=\"center\"][/vc_column_inner][vc_column_inner width=\"3/4\"][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]</p>\n', 'Laravel', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2020-05-08 22:21:56', '2020-05-08 22:21:56', '', 19, 'http://localhost/scratch/2020/05/08/19-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2020-05-08 22:21:00', '2020-05-08 22:21:00', '', '201-2014432_red-rose-blur-nature-background-hd-wallpaper-background', '', 'inherit', 'open', 'closed', '', '201-2014432_red-rose-blur-nature-background-hd-wallpaper-background', '', '', '2020-05-08 22:21:00', '2020-05-08 22:21:00', '', 19, 'http://localhost/scratch/wp-content/uploads/2020/01/201-2014432_red-rose-blur-nature-background-hd-wallpaper-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-05-08 22:21:36', '2020-05-08 22:21:36', '', 'icons8-laravel-100', '', 'inherit', 'open', 'closed', '', 'icons8-laravel-100-2', '', '', '2020-05-08 22:21:36', '2020-05-08 22:21:36', '', 19, 'http://localhost/scratch/wp-content/uploads/2020/01/icons8-laravel-100-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-05-17 21:46:32', '2020-05-17 21:46:32', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2020-05-17 21:46:38', '2020-05-17 21:46:38', '', 0, 'http://localhost/scratch/?p=71', 0, 'post', '', 0),
(72, 1, '2020-05-17 21:46:20', '2020-05-17 21:46:20', '', 'nature-background-2560x1440', '', 'inherit', 'open', 'closed', '', 'nature-background-2560x1440', '', '', '2020-05-17 21:46:20', '2020-05-17 21:46:20', '', 71, 'http://localhost/scratch/wp-content/uploads/2020/05/nature-background-2560x1440-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-05-17 21:46:32', '2020-05-17 21:46:32', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 3', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-05-17 21:46:32', '2020-05-17 21:46:32', '', 71, 'http://localhost/scratch/2020/05/17/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-05-17 21:47:25', '2020-05-17 21:47:25', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 4', '', 'publish', 'open', 'open', '', 'post-4', '', '', '2020-05-17 21:47:29', '2020-05-17 21:47:29', '', 0, 'http://localhost/scratch/?p=74', 0, 'post', '', 0),
(75, 1, '2020-05-17 21:47:16', '2020-05-17 21:47:16', '', 'photo-1445855743215-296f71d4b49c', '', 'inherit', 'open', 'closed', '', 'photo-1445855743215-296f71d4b49c', '', '', '2020-05-17 21:47:16', '2020-05-17 21:47:16', '', 74, 'http://localhost/scratch/wp-content/uploads/2020/05/photo-1445855743215-296f71d4b49c.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-05-17 21:47:25', '2020-05-17 21:47:25', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 4', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-05-17 21:47:25', '2020-05-17 21:47:25', '', 74, 'http://localhost/scratch/2020/05/17/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-05-17 21:48:15', '2020-05-17 21:48:15', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 5', '', 'publish', 'open', 'open', '', 'post-5', '', '', '2020-05-17 21:48:24', '2020-05-17 21:48:24', '', 0, 'http://localhost/scratch/?p=77', 0, 'post', '', 0),
(78, 1, '2020-05-17 21:48:04', '2020-05-17 21:48:04', '', 'fall-1072821__340', '', 'inherit', 'open', 'closed', '', 'fall-1072821__340', '', '', '2020-05-17 21:48:04', '2020-05-17 21:48:04', '', 77, 'http://localhost/scratch/wp-content/uploads/2020/05/fall-1072821__340.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-05-17 21:48:15', '2020-05-17 21:48:15', '<!-- wp:paragraph -->\n<p> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. </p>\n<!-- /wp:paragraph -->', 'Post 5', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-05-17 21:48:15', '2020-05-17 21:48:15', '', 77, 'http://localhost/scratch/2020/05/17/77-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-05-17 21:50:02', '2020-05-17 21:50:02', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Post 6', '', 'publish', 'open', 'open', '', 'post-6', '', '', '2020-05-17 21:50:09', '2020-05-17 21:50:09', '', 0, 'http://localhost/scratch/?p=80', 0, 'post', '', 0),
(81, 1, '2020-05-17 21:49:51', '2020-05-17 21:49:51', '', '267434', '', 'inherit', 'open', 'closed', '', '267434', '', '', '2020-05-17 21:49:51', '2020-05-17 21:49:51', '', 80, 'http://localhost/scratch/wp-content/uploads/2020/05/267434.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-05-17 21:50:02', '2020-05-17 21:50:02', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->', 'Post 6', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-05-17 21:50:02', '2020-05-17 21:50:02', '', 80, 'http://localhost/scratch/2020/05/17/80-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-05-25 19:41:40', '2020-05-25 19:41:40', '', 'Wordpress - Part 1: Create empty Wordpress theme and install (2020)', '', 'publish', 'closed', 'closed', '', 'wordpress-part-1-create-empty-wordpress-theme-and-install-2020', '', '', '2020-06-01 20:39:52', '2020-06-01 20:39:52', '', 0, 'http://localhost/scratch/?post_type=video-tutorials&#038;p=84', 0, 'video-tutorials', '', 0),
(85, 1, '2020-05-31 19:49:16', '2020-05-31 19:49:16', '', 'Wordpress - Part 2: Linking Bootstrap, jQuery, Creating Header (2020)', '', 'publish', 'closed', 'closed', '', 'wordpress-part-2-linking-bootstrap-jquery-creating-header-2020', '', '', '2020-05-31 19:49:16', '2020-05-31 19:49:16', '', 0, 'http://localhost/scratch/?post_type=video-tutorials&#038;p=85', 0, 'video-tutorials', '', 0),
(86, 1, '2020-05-29 19:50:36', '2020-05-29 19:50:36', '', 'Wordpress - Part 3: Custom Header Image (2020)', '', 'publish', 'closed', 'closed', '', 'wordpress-part-3-custom-header-image-2020', '', '', '2020-06-01 20:32:34', '2020-06-01 20:32:34', '', 0, 'http://localhost/scratch/?post_type=video-tutorials&#038;p=86', 0, 'video-tutorials', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Wordpress Tutorials Videos', 'wordpress-tutorials-videos', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 1, 0),
(33, 2, 0),
(47, 2, 0),
(71, 1, 0),
(74, 1, 0),
(77, 1, 0),
(80, 1, 0),
(84, 3, 0),
(85, 3, 0),
(86, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'scratch'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '83'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1588755108'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(29, 1, 'session_tokens', 'a:3:{s:64:\"2d00d89989c92155d81cd7cef2d6474e230f7b07422f80f34033c8b0095c8241\";a:4:{s:10:\"expiration\";i:1590959795;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589750195;}s:64:\"9d00655aeeff2183f49f2c2ba9d7c920697f5fb967f3b8ff55e5ac01535df39d\";a:4:{s:10:\"expiration\";i:1591124615;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590951815;}s:64:\"5fd774ce045c76026ed4de213eb6115925f614cf2ff2bb7e2d73693f9c6e4206\";a:4:{s:10:\"expiration\";i:1591126818;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590954018;}}'),
(30, 1, 'nav_menu_recently_edited', '2'),
(31, 1, 'closedpostboxes_services', 'a:0:{}'),
(32, 1, 'metaboxhidden_services', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'scratch', '$P$BCRSbLi/QIipwOEkLSb3AbVixSFToC/', 'scratch', 'scratch@gmail.com', '', '2019-12-30 14:28:36', '', 0, 'scratch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
