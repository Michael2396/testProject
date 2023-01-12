-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 12, 2023 at 02:00 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpd`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-01-10 08:25:59', '2023-01-10 08:25:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tpd.test', 'yes'),
(2, 'home', 'http://tpd.test', 'yes'),
(3, 'blogname', 'tpd', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'base', 'yes'),
(41, 'stylesheet', 'base', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1688891159', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"theme_options_view\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:15:\"default-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1673526359;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1673555159;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673555183;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673598359;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673598383;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673598384;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674030359;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1673522014;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(128, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673339456;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(133, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673522015;s:7:\"checked\";a:4:{s:4:\"base\";s:1:\"1\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_timeout_browser_86ea820282c5c7a85f5fab9bf1140c42', '1673943984', 'no'),
(136, '_site_transient_browser_86ea820282c5c7a85f5fab9bf1140c42', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1673943984', 'no'),
(138, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'Base', 'yes'),
(157, 'theme_mods_base', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:20;s:11:\"footer_logo\";i:20;s:16:\"footer_copyright\";s:36:\"Copyright © 2021 All right reserved\";}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(159, 'widget_recent-posts-from-category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, 'recently_activated', 'a:0:{}', 'yes'),
(181, 'bodhi_svgs_plugin_version', '2.5.3', 'yes'),
(182, 'bodhi_svgs_settings', 'a:4:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:12:\"sanitize_svg\";s:2:\"on\";s:24:\"sanitize_on_upload_roles\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}}', 'yes'),
(183, 'acf_version', '6.0.5', 'yes'),
(184, 'site_logo', '20', 'yes'),
(619, '_transient_timeout_acf_plugin_updates', '1673557706', 'no'),
(620, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.5\";}}', 'no'),
(661, 'recovery_mode_email_last_sent', '1673386586', 'yes'),
(677, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes'),
(974, '_site_transient_timeout_theme_roots', '1673523815', 'no'),
(975, '_site_transient_theme_roots', 'a:4:{s:4:\"base\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(976, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673522016;s:8:\"response\";a:2:{s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.2\";s:14:\"upgrade_notice\";s:191:\"<p>Updating to 2.5+ Adds new features and addresses a number of earlier issues raised. Please take a backup before updating!\n2.5.5 fixes more reported errors in the 2.5 series of updates.</p>\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.5\";s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"svg-support/svg-support.php\";s:5:\"2.5.4\";}}', 'no'),
(982, '_transient_timeout_global_styles_base', '1673522898', 'no'),
(983, '_transient_global_styles_base', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(984, '_transient_timeout_global_styles_svg_filters_base', '1673522898', 'no'),
(985, '_transient_global_styles_svg_filters_base', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1673377698:1'),
(4, 7, '_edit_lock', '1673339512:1'),
(5, 9, '_edit_lock', '1673339532:1'),
(6, 11, '_edit_lock', '1673339556:1'),
(7, 13, '_edit_lock', '1673339994:1'),
(8, 15, '_menu_item_type', 'post_type'),
(9, 15, '_menu_item_menu_item_parent', '0'),
(10, 15, '_menu_item_object_id', '13'),
(11, 15, '_menu_item_object', 'page'),
(12, 15, '_menu_item_target', ''),
(13, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 15, '_menu_item_xfn', ''),
(15, 15, '_menu_item_url', ''),
(17, 16, '_menu_item_type', 'post_type'),
(18, 16, '_menu_item_menu_item_parent', '0'),
(19, 16, '_menu_item_object_id', '11'),
(20, 16, '_menu_item_object', 'page'),
(21, 16, '_menu_item_target', ''),
(22, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 16, '_menu_item_xfn', ''),
(24, 16, '_menu_item_url', ''),
(26, 17, '_menu_item_type', 'post_type'),
(27, 17, '_menu_item_menu_item_parent', '0'),
(28, 17, '_menu_item_object_id', '9'),
(29, 17, '_menu_item_object', 'page'),
(30, 17, '_menu_item_target', ''),
(31, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 17, '_menu_item_xfn', ''),
(33, 17, '_menu_item_url', ''),
(35, 18, '_menu_item_type', 'post_type'),
(36, 18, '_menu_item_menu_item_parent', '0'),
(37, 18, '_menu_item_object_id', '7'),
(38, 18, '_menu_item_object', 'page'),
(39, 18, '_menu_item_target', ''),
(40, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 18, '_menu_item_xfn', ''),
(42, 18, '_menu_item_url', ''),
(44, 19, '_menu_item_type', 'post_type'),
(45, 19, '_menu_item_menu_item_parent', '0'),
(46, 19, '_menu_item_object_id', '5'),
(47, 19, '_menu_item_object', 'page'),
(48, 19, '_menu_item_target', ''),
(49, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 19, '_menu_item_xfn', ''),
(51, 19, '_menu_item_url', ''),
(53, 20, '_wp_attached_file', '2023/01/Logo.svg'),
(54, 20, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:180;s:6:\"height\";i:40;s:4:\"file\";s:8:\"Logo.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";d:33;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";d:67;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:171;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";d:228;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"thumbnail_1920\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"Logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(55, 21, '_wp_trash_meta_status', 'publish'),
(56, 21, '_wp_trash_meta_time', '1673340293'),
(57, 22, '_edit_last', '1'),
(58, 22, '_edit_lock', '1673347442:1'),
(59, 27, '_wp_trash_meta_status', 'publish'),
(60, 27, '_wp_trash_meta_time', '1673342115'),
(61, 29, '_wp_attached_file', '2023/01/Man_Img.png'),
(62, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:739;s:6:\"height\";i:1133;s:4:\"file\";s:19:\"2023/01/Man_Img.png\";s:8:\"filesize\";i:1437883;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Man_Img-196x300.png\";s:5:\"width\";i:196;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:100430;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"Man_Img-668x1024.png\";s:5:\"width\";i:668;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1137616;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Man_Img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38518;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 31, '_edit_last', '1'),
(64, 31, '_edit_lock', '1673351484:1'),
(65, 36, '_wp_attached_file', '2023/01/img_devices.png'),
(66, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:825;s:6:\"height\";i:490;s:4:\"file\";s:23:\"2023/01/img_devices.png\";s:8:\"filesize\";i:389586;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"img_devices-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66688;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"img_devices-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36867;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"img_devices-768x456.png\";s:5:\"width\";i:768;s:6:\"height\";i:456;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:346281;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 39, '_edit_last', '1'),
(68, 39, '_edit_lock', '1673354130:1'),
(69, 42, '_edit_lock', '1673354086:1'),
(70, 44, '_edit_last', '1'),
(71, 44, '_edit_lock', '1673376313:1'),
(72, 48, '_edit_lock', '1673354276:1'),
(73, 49, '_edit_lock', '1673354306:1'),
(74, 50, '_edit_lock', '1673354488:1'),
(75, 51, '_edit_lock', '1673354345:1'),
(76, 52, '_edit_lock', '1673354602:1'),
(79, 54, '_wp_attached_file', '2023/01/img.jpg'),
(80, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:543;s:6:\"height\";i:331;s:4:\"file\";s:15:\"2023/01/img.jpg\";s:8:\"filesize\";i:37265;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"img-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12772;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6627;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 52, '_thumbnail_id', '54'),
(82, 52, '_edit_last', '1'),
(83, 52, 'name', 'Frank Hardy'),
(84, 52, '_name', 'field_63bd5c264f048'),
(85, 52, 'position', 'Your Marketing Crew CEO'),
(86, 52, '_position', 'field_63bd5c4c4f049'),
(87, 52, 'video', 'https://youtu.be/aqz-KE-bpKQ'),
(88, 52, '_video', 'field_63bd5c564f04a'),
(89, 55, '_edit_lock', '1673355424:1'),
(90, 56, '_wp_attached_file', '2023/01/img-1.png'),
(91, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:551;s:6:\"height\";i:338;s:4:\"file\";s:17:\"2023/01/img-1.png\";s:8:\"filesize\";i:223767;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"img-1-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66340;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"img-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28599;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 55, '_thumbnail_id', '56'),
(93, 55, '_edit_last', '1'),
(94, 55, 'position', 'Your Marketing Crew CEO2'),
(95, 55, '_position', 'field_63bd5c4c4f049'),
(96, 55, 'video', 'https://youtu.be/aqz-KE-bpKQ'),
(97, 55, '_video', 'field_63bd5c564f04a'),
(98, 58, '_edit_last', '1'),
(99, 58, '_edit_lock', '1673385683:1'),
(100, 63, '_edit_lock', '1673385804:1'),
(101, 63, '_wp_trash_meta_status', 'publish'),
(102, 63, '_wp_trash_meta_time', '1673385816'),
(148, 69, '_edit_lock', '1673386217:1'),
(149, 69, '_wp_trash_meta_status', 'publish'),
(150, 69, '_wp_trash_meta_time', '1673386241'),
(151, 70, '_wp_trash_meta_status', 'publish'),
(152, 70, '_wp_trash_meta_time', '1673386246'),
(153, 71, '_wp_trash_meta_status', 'publish'),
(154, 71, '_wp_trash_meta_time', '1673386632'),
(155, 72, '_wp_trash_meta_status', 'publish'),
(156, 72, '_wp_trash_meta_time', '1673386696'),
(157, 73, '_wp_trash_meta_status', 'publish'),
(158, 73, '_wp_trash_meta_time', '1673386716'),
(227, 19, '_wp_old_date', '2023-01-10'),
(228, 18, '_wp_old_date', '2023-01-10'),
(229, 17, '_wp_old_date', '2023-01-10'),
(230, 16, '_wp_old_date', '2023-01-10'),
(231, 15, '_wp_old_date', '2023-01-10'),
(232, 81, '_menu_item_type', 'post_type'),
(233, 81, '_menu_item_menu_item_parent', '0'),
(234, 81, '_menu_item_object_id', '13'),
(235, 81, '_menu_item_object', 'page'),
(236, 81, '_menu_item_target', ''),
(237, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 81, '_menu_item_xfn', ''),
(239, 81, '_menu_item_url', ''),
(241, 82, '_menu_item_type', 'post_type'),
(242, 82, '_menu_item_menu_item_parent', '0'),
(243, 82, '_menu_item_object_id', '11'),
(244, 82, '_menu_item_object', 'page'),
(245, 82, '_menu_item_target', ''),
(246, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 82, '_menu_item_xfn', ''),
(248, 82, '_menu_item_url', ''),
(250, 83, '_menu_item_type', 'post_type'),
(251, 83, '_menu_item_menu_item_parent', '0'),
(252, 83, '_menu_item_object_id', '9'),
(253, 83, '_menu_item_object', 'page'),
(254, 83, '_menu_item_target', ''),
(255, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 83, '_menu_item_xfn', ''),
(257, 83, '_menu_item_url', ''),
(259, 84, '_menu_item_type', 'post_type'),
(260, 84, '_menu_item_menu_item_parent', '0'),
(261, 84, '_menu_item_object_id', '7'),
(262, 84, '_menu_item_object', 'page'),
(263, 84, '_menu_item_target', ''),
(264, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 84, '_menu_item_xfn', ''),
(266, 84, '_menu_item_url', ''),
(268, 85, '_menu_item_type', 'post_type'),
(269, 85, '_menu_item_menu_item_parent', '0'),
(270, 85, '_menu_item_object_id', '5'),
(271, 85, '_menu_item_object', 'page'),
(272, 85, '_menu_item_target', ''),
(273, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 85, '_menu_item_xfn', ''),
(275, 85, '_menu_item_url', ''),
(277, 86, '_menu_item_type', 'custom'),
(278, 86, '_menu_item_menu_item_parent', '18'),
(279, 86, '_menu_item_object_id', '86'),
(280, 86, '_menu_item_object', 'custom'),
(281, 86, '_menu_item_target', ''),
(282, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 86, '_menu_item_xfn', ''),
(284, 86, '_menu_item_url', '#'),
(286, 87, '_menu_item_type', 'custom'),
(287, 87, '_menu_item_menu_item_parent', '18'),
(288, 87, '_menu_item_object_id', '87'),
(289, 87, '_menu_item_object', 'custom'),
(290, 87, '_menu_item_target', ''),
(291, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 87, '_menu_item_xfn', ''),
(293, 87, '_menu_item_url', '#'),
(295, 88, '_menu_item_type', 'custom'),
(296, 88, '_menu_item_menu_item_parent', '18'),
(297, 88, '_menu_item_object_id', '88'),
(298, 88, '_menu_item_object', 'custom'),
(299, 88, '_menu_item_target', ''),
(300, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 88, '_menu_item_xfn', ''),
(302, 88, '_menu_item_url', '#'),
(304, 89, '_menu_item_type', 'custom'),
(305, 89, '_menu_item_menu_item_parent', '87'),
(306, 89, '_menu_item_object_id', '89'),
(307, 89, '_menu_item_object', 'custom'),
(308, 89, '_menu_item_target', ''),
(309, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(310, 89, '_menu_item_xfn', ''),
(311, 89, '_menu_item_url', '#'),
(313, 90, '_menu_item_type', 'custom'),
(314, 90, '_menu_item_menu_item_parent', '87'),
(315, 90, '_menu_item_object_id', '90'),
(316, 90, '_menu_item_object', 'custom'),
(317, 90, '_menu_item_target', ''),
(318, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 90, '_menu_item_xfn', ''),
(320, 90, '_menu_item_url', '#'),
(322, 91, '_menu_item_type', 'custom'),
(323, 91, '_menu_item_menu_item_parent', '87'),
(324, 91, '_menu_item_object_id', '91'),
(325, 91, '_menu_item_object', 'custom'),
(326, 91, '_menu_item_target', ''),
(327, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(328, 91, '_menu_item_xfn', ''),
(329, 91, '_menu_item_url', '#'),
(331, 92, '_menu_item_type', 'custom'),
(332, 92, '_menu_item_menu_item_parent', '87'),
(333, 92, '_menu_item_object_id', '92'),
(334, 92, '_menu_item_object', 'custom'),
(335, 92, '_menu_item_target', ''),
(336, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 92, '_menu_item_xfn', ''),
(338, 92, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-01-10 08:25:59', '2023-01-10 08:25:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-01-10 08:25:59', '2023-01-10 08:25:59', '', 0, 'http://tpd.test/?p=1', 0, 'post', '', 1),
(2, 1, '2023-01-10 08:25:59', '2023-01-10 08:25:59', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tpd.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-01-10 08:25:59', '2023-01-10 08:25:59', '', 0, 'http://tpd.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-01-10 08:25:59', '2023-01-10 08:25:59', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tpd.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-01-10 08:25:59', '2023-01-10 08:25:59', '', 0, 'http://tpd.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-01-10 08:26:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-10 08:26:24', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?p=4', 0, 'post', '', 0),
(5, 1, '2023-01-10 08:34:03', '2023-01-10 08:34:03', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"title\":\"Superstar SEO\",\"_title\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-clients {\"name\":\"acf/block-clients\",\"data\":{\"title\":\"What My \\u003cspan\\u003eClients Say\\u003c/span\\u003e\",\"_title\":\"field_63bd594d25ec9\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-get-in-touch {\"name\":\"acf/block-get-in-touch\",\"data\":{\"title\":\"Get in Touch\",\"_title\":\"field_63bdb5c9b7713\",\"link\":{\"title\":\"hello@domainexample.com\",\"url\":\"http://hello@domainexample.com\",\"target\":\"\"},\"_link\":\"field_63bdb5dab7714\",\"address\":\"237 Haylee Islands Suite 960\",\"_address\":\"field_63bdb5edb7715\"},\"mode\":\"edit\"} /-->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-01-10 19:03:49', '2023-01-10 19:03:49', '', 0, 'http://tpd.test/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-01-10 08:34:03', '2023-01-10 08:34:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 08:34:03', '2023-01-10 08:34:03', '', 5, 'http://tpd.test/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-01-10 08:34:16', '2023-01-10 08:34:16', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-01-10 08:34:16', '2023-01-10 08:34:16', '', 0, 'http://tpd.test/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-01-10 08:34:16', '2023-01-10 08:34:16', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-01-10 08:34:16', '2023-01-10 08:34:16', '', 7, 'http://tpd.test/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-01-10 08:34:30', '2023-01-10 08:34:30', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2023-01-10 08:34:30', '2023-01-10 08:34:30', '', 0, 'http://tpd.test/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-01-10 08:34:30', '2023-01-10 08:34:30', '', 'Products', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-01-10 08:34:30', '2023-01-10 08:34:30', '', 9, 'http://tpd.test/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-01-10 08:34:43', '2023-01-10 08:34:43', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2023-01-10 08:34:43', '2023-01-10 08:34:43', '', 0, 'http://tpd.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-01-10 08:34:43', '2023-01-10 08:34:43', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-01-10 08:34:43', '2023-01-10 08:34:43', '', 11, 'http://tpd.test/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-01-10 08:35:08', '2023-01-10 08:35:08', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-01-10 08:35:08', '2023-01-10 08:35:08', '', 0, 'http://tpd.test/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-01-10 08:35:08', '2023-01-10 08:35:08', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-01-10 08:35:08', '2023-01-10 08:35:08', '', 13, 'http://tpd.test/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-01-11 17:07:41', '2023-01-10 08:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=15', 12, 'nav_menu_item', '', 0),
(16, 1, '2023-01-11 17:07:41', '2023-01-10 08:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=16', 11, 'nav_menu_item', '', 0),
(17, 1, '2023-01-11 17:07:41', '2023-01-10 08:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=17', 10, 'nav_menu_item', '', 0),
(18, 1, '2023-01-11 17:07:41', '2023-01-10 08:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2023-01-11 17:07:41', '2023-01-10 08:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2023-01-10 08:44:48', '2023-01-10 08:44:48', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-01-10 08:44:48', '2023-01-10 08:44:48', '', 0, 'http://tpd.test/wp-content/uploads/2023/01/Logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(21, 1, '2023-01-10 08:44:53', '2023-01-10 08:44:53', '{\n    \"base::custom_logo\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 08:44:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d406e63-a85a-444f-9869-22a679650f44', '', '', '2023-01-10 08:44:53', '2023-01-10 08:44:53', '', 0, 'http://tpd.test/2023/01/10/5d406e63-a85a-444f-9869-22a679650f44/', 0, 'customize_changeset', '', 0),
(22, 1, '2023-01-10 09:04:21', '2023-01-10 09:04:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"acf/block-hero\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Block Hero Section', 'block-hero-section', 'publish', 'closed', 'closed', '', 'group_63bd29ea4e770', '', '', '2023-01-10 10:44:02', '2023-01-10 10:44:02', '', 0, 'http://tpd.test/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2023-01-10 09:04:21', '2023-01-10 09:04:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63bd29eab4f45', '', '', '2023-01-10 09:04:21', '2023-01-10 09:04:21', '', 22, 'http://tpd.test/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2023-01-10 09:04:21', '2023-01-10 09:04:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63bd29f6b4f46', '', '', '2023-01-10 09:04:21', '2023-01-10 09:04:21', '', 22, 'http://tpd.test/?post_type=acf-field&p=24', 1, 'acf-field', '', 0),
(25, 1, '2023-01-10 09:04:21', '2023-01-10 09:04:21', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'btn', 'btn', 'publish', 'closed', 'closed', '', 'field_63bd29fbb4f47', '', '', '2023-01-10 09:04:21', '2023-01-10 09:04:21', '', 22, 'http://tpd.test/?post_type=acf-field&p=25', 2, 'acf-field', '', 0),
(26, 1, '2023-01-10 09:14:01', '2023-01-10 09:14:01', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 09:14:01', '2023-01-10 09:14:01', '', 5, 'http://tpd.test/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-01-10 09:15:15', '2023-01-10 09:15:15', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 09:15:15\"\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 09:15:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5b2de8b9-5a8c-4cae-a30a-d8e1a0061f87', '', '', '2023-01-10 09:15:15', '2023-01-10 09:15:15', '', 0, 'http://tpd.test/2023/01/10/5b2de8b9-5a8c-4cae-a30a-d8e1a0061f87/', 0, 'customize_changeset', '', 0),
(28, 1, '2023-01-10 09:23:38', '2023-01-10 09:23:38', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_63bd2e9083185', '', '', '2023-01-10 10:44:02', '2023-01-10 10:44:02', '', 22, 'http://tpd.test/?post_type=acf-field&#038;p=28', 3, 'acf-field', '', 0),
(29, 1, '2023-01-10 10:40:36', '2023-01-10 10:40:36', '', 'Man_Img', '', 'inherit', 'open', 'closed', '', 'man_img', '', '', '2023-01-10 10:40:36', '2023-01-10 10:40:36', '', 5, 'http://tpd.test/wp-content/uploads/2023/01/Man_Img.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-01-10 10:40:39', '2023-01-10 10:40:39', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 10:40:39', '2023-01-10 10:40:39', '', 5, 'http://tpd.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-01-10 11:41:00', '2023-01-10 11:41:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"acf/block-superstar\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Super Star Seo', 'super-star-seo', 'publish', 'closed', 'closed', '', 'group_63bd4ebf01bf2', '', '', '2023-01-10 11:53:39', '2023-01-10 11:53:39', '', 0, 'http://tpd.test/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2023-01-10 11:41:00', '2023-01-10 11:41:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63bd4ebf145ea', '', '', '2023-01-10 11:53:39', '2023-01-10 11:53:39', '', 31, 'http://tpd.test/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(33, 1, '2023-01-10 11:41:52', '2023-01-10 11:41:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_63bd4ece02adc', '', '', '2023-01-10 11:41:52', '2023-01-10 11:41:52', '', 31, 'http://tpd.test/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(34, 1, '2023-01-10 11:41:52', '2023-01-10 11:41:52', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'btn', 'btn', 'publish', 'closed', 'closed', '', 'field_63bd4ed502add', '', '', '2023-01-10 11:41:52', '2023-01-10 11:41:52', '', 31, 'http://tpd.test/?post_type=acf-field&p=34', 2, 'acf-field', '', 0),
(35, 1, '2023-01-10 11:41:52', '2023-01-10 11:41:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_63bd4ee502ade', '', '', '2023-01-10 11:41:52', '2023-01-10 11:41:52', '', 31, 'http://tpd.test/?post_type=acf-field&p=35', 3, 'acf-field', '', 0),
(36, 1, '2023-01-10 11:45:50', '2023-01-10 11:45:50', '', 'img_devices', '', 'inherit', 'open', 'closed', '', 'img_devices', '', '', '2023-01-10 11:45:50', '2023-01-10 11:45:50', '', 5, 'http://tpd.test/wp-content/uploads/2023/01/img_devices.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2023-01-10 11:45:54', '2023-01-10 11:45:54', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"\":\"Superstar SEO\",\"_\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 11:45:54', '2023-01-10 11:45:54', '', 5, 'http://tpd.test/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-01-10 11:54:00', '2023-01-10 11:54:00', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"title\":\"Superstar SEO\",\"_title\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 11:54:00', '2023-01-10 11:54:00', '', 5, 'http://tpd.test/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-01-10 12:26:58', '2023-01-10 12:26:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"acf/block-clients\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Block Clients', 'block-clients', 'publish', 'closed', 'closed', '', 'group_63bd594d9210d', '', '', '2023-01-10 12:27:22', '2023-01-10 12:27:22', '', 0, 'http://tpd.test/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2023-01-10 12:26:58', '2023-01-10 12:26:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63bd594d25ec9', '', '', '2023-01-10 12:26:58', '2023-01-10 12:26:58', '', 39, 'http://tpd.test/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2023-01-10 12:27:55', '2023-01-10 12:27:55', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"title\":\"Superstar SEO\",\"_title\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-clients {\"name\":\"acf/block-clients\",\"data\":{\"title\":\"What My Clients Say\",\"_title\":\"field_63bd594d25ec9\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 12:27:55', '2023-01-10 12:27:55', '', 5, 'http://tpd.test/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-01-10 12:36:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-10 12:36:50', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?post_type=clients&p=42', 0, 'clients', '', 0),
(43, 1, '2023-01-10 12:37:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-10 12:37:14', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?post_type=acf-field-group&p=43', 0, 'acf-field-group', '', 0),
(44, 1, '2023-01-10 12:39:23', '2023-01-10 12:39:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"clients\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Clients Custom Type', 'clients-custom-type', 'publish', 'closed', 'closed', '', 'group_63bd5c264348a', '', '', '2023-01-10 12:43:51', '2023-01-10 12:43:51', '', 0, 'http://tpd.test/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(46, 1, '2023-01-10 12:39:23', '2023-01-10 12:39:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_63bd5c4c4f049', '', '', '2023-01-10 12:43:51', '2023-01-10 12:43:51', '', 44, 'http://tpd.test/?post_type=acf-field&#038;p=46', 0, 'acf-field', '', 0),
(47, 1, '2023-01-10 12:39:23', '2023-01-10 12:39:23', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_63bd5c564f04a', '', '', '2023-01-10 12:43:51', '2023-01-10 12:43:51', '', 44, 'http://tpd.test/?post_type=acf-field&#038;p=47', 1, 'acf-field', '', 0),
(48, 1, '2023-01-10 12:39:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-10 12:39:27', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?post_type=clients&p=48', 0, 'clients', '', 0),
(49, 1, '2023-01-10 12:40:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-01-10 12:40:45', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?post_type=clients&p=49', 0, 'clients', '', 0),
(50, 1, '2023-01-10 12:41:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-10 12:41:28', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?p=50', 0, 'post', '', 0),
(51, 1, '2023-01-10 12:41:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-10 12:41:28', '0000-00-00 00:00:00', '', 0, 'http://tpd.test/?p=51', 0, 'post', '', 0),
(52, 1, '2023-01-10 12:43:10', '2023-01-10 12:43:10', '<!-- wp:paragraph -->\n<p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing diam, tortor, egestas euismod neque venenatis, viverra. Ante nibh morbi egestas quam lorem ipsum. Eget sit praesent a laoreet. Mi, phasellus quis mauris sollicitudin non. Iaculis ac duis mauris enim. “</p>\n<!-- /wp:paragraph -->', 'Frank Hardy', '', 'publish', 'closed', 'closed', '', '52', '', '', '2023-01-10 12:43:22', '2023-01-10 12:43:22', '', 0, 'http://tpd.test/?post_type=clients&#038;p=52', 0, 'clients', '', 0),
(54, 1, '2023-01-10 12:43:06', '2023-01-10 12:43:06', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2023-01-10 12:43:06', '2023-01-10 12:43:06', '', 52, 'http://tpd.test/wp-content/uploads/2023/01/img.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-01-10 12:45:19', '2023-01-10 12:45:19', '<!-- wp:paragraph -->\n<p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing diam, tortor, egestas euismod neque venenatis, viverra. Ante nibh morbi egestas quam lorem ipsum. Eget sit praesent a laoreet. Mi, phasellus quis mauris sollicitudin non. Iaculis ac duis mauris enim. “</p>\n<!-- /wp:paragraph -->', 'Frank Hardy2', '', 'publish', 'closed', 'closed', '', 'frank-hardy2', '', '', '2023-01-10 12:45:23', '2023-01-10 12:45:23', '', 0, 'http://tpd.test/?post_type=clients&#038;p=55', 0, 'clients', '', 0),
(56, 1, '2023-01-10 12:45:15', '2023-01-10 12:45:15', '', 'img (1)', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2023-01-10 12:45:15', '2023-01-10 12:45:15', '', 55, 'http://tpd.test/wp-content/uploads/2023/01/img-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2023-01-10 18:48:01', '2023-01-10 18:48:01', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"title\":\"Superstar SEO\",\"_title\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-clients {\"name\":\"acf/block-clients\",\"data\":{\"title\":\"What My \\u003cspan\\u003eClients Say\\u003c/span\\u003e\",\"_title\":\"field_63bd594d25ec9\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 18:48:01', '2023-01-10 18:48:01', '', 5, 'http://tpd.test/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-01-10 19:01:59', '2023-01-10 19:01:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"acf/block-get-in-touch\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Block Get In Touch', 'block-get-in-touch', 'publish', 'closed', 'closed', '', 'group_63bdb5c9884c7', '', '', '2023-01-10 19:02:11', '2023-01-10 19:02:11', '', 0, 'http://tpd.test/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2023-01-10 19:01:59', '2023-01-10 19:01:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_63bdb5c9b7713', '', '', '2023-01-10 19:01:59', '2023-01-10 19:01:59', '', 58, 'http://tpd.test/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2023-01-10 19:01:59', '2023-01-10 19:01:59', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_63bdb5dab7714', '', '', '2023-01-10 19:01:59', '2023-01-10 19:01:59', '', 58, 'http://tpd.test/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2023-01-10 19:01:59', '2023-01-10 19:01:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'address', 'address', 'publish', 'closed', 'closed', '', 'field_63bdb5edb7715', '', '', '2023-01-10 19:01:59', '2023-01-10 19:01:59', '', 58, 'http://tpd.test/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2023-01-10 19:03:49', '2023-01-10 19:03:49', '<!-- wp:acf/block-hero {\"name\":\"acf/block-hero\",\"data\":{\"title\":\"John Doe\",\"_title\":\"field_63bd29eab4f45\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor magna risus sed. Et dictumst vel.\",\"_text\":\"field_63bd29f6b4f46\",\"btn\":{\"title\":\"Free Seo Consulting Training\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd29fbb4f47\",\"img\":29,\"_img\":\"field_63bd2e9083185\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-superstar {\"name\":\"acf/block-superstar\",\"data\":{\"title\":\"Superstar SEO\",\"_title\":\"field_63bd4ebf145ea\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam amet, platea diam rhoncus, sem tortor, turpis ac tincidunt. Nisi adipiscing a suspendisse justo eleifend volutpat et vitae ac. Consequat in mi iaculis hendrerit mauris mattis. Lacus risus amet at magna urna. Felis nec orci a, quis nullam vel sem nunc enim. Sit mi tellus eget commodo augue.\",\"_text\":\"field_63bd4ece02adc\",\"btn\":{\"title\":\"Learn More\",\"url\":\"#\",\"target\":\"\"},\"_btn\":\"field_63bd4ed502add\",\"img\":36,\"_img\":\"field_63bd4ee502ade\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-clients {\"name\":\"acf/block-clients\",\"data\":{\"title\":\"What My \\u003cspan\\u003eClients Say\\u003c/span\\u003e\",\"_title\":\"field_63bd594d25ec9\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:acf/block-get-in-touch {\"name\":\"acf/block-get-in-touch\",\"data\":{\"title\":\"Get in Touch\",\"_title\":\"field_63bdb5c9b7713\",\"link\":{\"title\":\"hello@domainexample.com\",\"url\":\"http://hello@domainexample.com\",\"target\":\"\"},\"_link\":\"field_63bdb5dab7714\",\"address\":\"237 Haylee Islands Suite 960\",\"_address\":\"field_63bdb5edb7715\"},\"mode\":\"edit\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-01-10 19:03:49', '2023-01-10 19:03:49', '', 5, 'http://tpd.test/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-01-10 21:23:36', '2023-01-10 21:23:36', '{\n    \"base::footer_logo\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:23:24\"\n    },\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9 2021 All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:23:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '333b05eb-8123-421f-8c62-b65beb72d23c', '', '', '2023-01-10 21:23:36', '2023-01-10 21:23:36', '', 0, 'http://tpd.test/?p=63', 0, 'customize_changeset', '', 0),
(69, 1, '2023-01-10 21:30:41', '2023-01-10 21:30:41', '{\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9 [date][/date] All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:30:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6923c0d2-64c8-4fa8-9b81-97cb29134a03', '', '', '2023-01-10 21:30:41', '2023-01-10 21:30:41', '', 0, 'http://tpd.test/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2023-01-10 21:30:46', '2023-01-10 21:30:46', '{\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9 [date]2021[/date] All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:30:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '83d58505-9b73-4fee-a85a-04017a70128d', '', '', '2023-01-10 21:30:46', '2023-01-10 21:30:46', '', 0, 'http://tpd.test/2023/01/10/83d58505-9b73-4fee-a85a-04017a70128d/', 0, 'customize_changeset', '', 0),
(71, 1, '2023-01-10 21:37:12', '2023-01-10 21:37:12', '{\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9  [caption][/caption]  All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:37:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '44d0a3f2-7b69-46e0-a8a9-b702c9e44f2d', '', '', '2023-01-10 21:37:12', '2023-01-10 21:37:12', '', 0, 'http://tpd.test/2023/01/10/44d0a3f2-7b69-46e0-a8a9-b702c9e44f2d/', 0, 'customize_changeset', '', 0),
(72, 1, '2023-01-10 21:38:16', '2023-01-10 21:38:16', '{\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9  [caption]23[/caption]  All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:38:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '73c6c69e-2fa7-4b84-937d-fe45c598e7e3', '', '', '2023-01-10 21:38:16', '2023-01-10 21:38:16', '', 0, 'http://tpd.test/2023/01/10/73c6c69e-2fa7-4b84-937d-fe45c598e7e3/', 0, 'customize_changeset', '', 0),
(73, 1, '2023-01-10 21:38:36', '2023-01-10 21:38:36', '{\n    \"base::footer_copyright\": {\n        \"value\": \"Copyright \\u00a9  2021  All right reserved\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-01-10 21:38:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2af9d38-6132-4049-8ba7-76f88d26ed51', '', '', '2023-01-10 21:38:36', '2023-01-10 21:38:36', '', 0, 'http://tpd.test/2023/01/10/f2af9d38-6132-4049-8ba7-76f88d26ed51/', 0, 'customize_changeset', '', 0),
(81, 1, '2023-01-11 17:05:36', '2023-01-11 17:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2023-01-11 17:05:36', '2023-01-11 17:05:36', '', 0, 'http://tpd.test/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2023-01-11 17:05:36', '2023-01-11 17:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2023-01-11 17:05:36', '2023-01-11 17:05:36', '', 0, 'http://tpd.test/?p=82', 3, 'nav_menu_item', '', 0),
(83, 1, '2023-01-11 17:05:36', '2023-01-11 17:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2023-01-11 17:05:36', '2023-01-11 17:05:36', '', 0, 'http://tpd.test/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2023-01-11 17:05:36', '2023-01-11 17:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2023-01-11 17:05:36', '2023-01-11 17:05:36', '', 0, 'http://tpd.test/?p=84', 5, 'nav_menu_item', '', 0),
(85, 1, '2023-01-11 17:05:36', '2023-01-11 17:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2023-01-11 17:05:36', '2023-01-11 17:05:36', '', 0, 'http://tpd.test/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 'Submenu 1', '', 'publish', 'closed', 'closed', '', 'submenu-1', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 'Submenu 2', '', 'publish', 'closed', 'closed', '', 'submenu-2', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 'Submenu 3', '', 'publish', 'closed', 'closed', '', 'submenu-3', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=88', 9, 'nav_menu_item', '', 0),
(89, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', '3rd level menu 1', '', 'publish', 'closed', 'closed', '', '3rd-level-menu-1', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=89', 5, 'nav_menu_item', '', 0),
(90, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', '3rd level menu 2', '', 'publish', 'closed', 'closed', '', '3rd-level-menu-2', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=90', 6, 'nav_menu_item', '', 0),
(91, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', '3rd level menu 3', '', 'publish', 'closed', 'closed', '', '3rd-level-menu-3', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=91', 7, 'nav_menu_item', '', 0),
(92, 1, '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', '3rd level menu 4', '', 'publish', 'closed', 'closed', '', '3rd-level-menu-4', '', '', '2023-01-11 17:07:41', '2023-01-11 17:07:41', '', 0, 'http://tpd.test/?p=92', 8, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header', 'header', 0),
(4, 'Footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(81, 4, 0),
(82, 4, 0),
(83, 4, 0),
(84, 4, 0),
(85, 4, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3e3bf28038db3311cdecb0492648e4170d400809799e8d49854859b3159c5d10\";a:4:{s:10:\"expiration\";i:1673511983;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673339183;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:12:\"post-excerpt\";i:2;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-01-10T12:42:19.724Z\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(23, 1, 'wp_user-settings-time', '1673354586');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BXCGeR.6bN7VbprTJCckAyIlePiunL/', 'admin', 'test@gmail.com', 'http://tpd.test', '2023-01-10 08:25:59', '', 0, 'admin');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
