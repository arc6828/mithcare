-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2019 at 01:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

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
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-14 03:34:25', '2019-06-14 03:34:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
(1, 'siteurl', 'https://mithcare.com', 'yes'),
(2, 'home', 'https://mithcare.com', 'yes'),
(3, 'blogname', 'Mithcare', 'yes'),
(4, 'blogdescription', 'Treatments for Everyone', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chavalit.kow@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:9:\"hello.php\";i:3;s:47:\"one-click-demo-import/one-click-demo-import.php\";i:4;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:101:\"/var/www/mithcare.com/mithcare/wp-content/themes/medical-way-plus/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'medical-way-plus', 'yes'),
(41, 'stylesheet', 'medical-way-plus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:1;}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '26', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:16:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-3\";i:2;s:10:\"archives-4\";i:3;s:13:\"media_audio-3\";i:4;s:13:\"media_audio-5\";i:5;s:12:\"categories-4\";i:6;s:20:\"medical-way-social-3\";i:7;s:17:\"medical-way-cta-3\";i:8;s:22:\"medical-way-services-5\";i:9;s:25:\"medical-way-departments-3\";i:10;s:25:\"medical-way-departments-4\";i:11;s:25:\"medical-way-departments-5\";i:12;s:21:\"medical-way-contact-3\";i:13;s:21:\"medical-way-contact-4\";i:14;s:18:\"medical-way-team-3\";i:15;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"home-page-widget-area\";a:8:{i:0;s:22:\"medical-way-services-3\";i:1;s:17:\"medical-way-cta-5\";i:2;s:25:\"medical-way-departments-7\";i:3;s:19:\"medical-way-facts-3\";i:4;s:18:\"medical-way-team-5\";i:5;s:25:\"medical-way-testimonial-3\";i:6;s:25:\"medical-way-latest-news-3\";i:7;s:21:\"medical-way-contact-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1561448069;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561476869;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561476880;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561520068;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561520085;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561520089;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(104, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(105, 'widget_media_audio', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:3:\"www\";}i:5;a:0:{}}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:4:\"Menu\";s:8:\"nav_menu\";i:2;}}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560483580;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'can_compress_scripts', '0', 'no'),
(142, 'current_theme', 'Medical Way Plus', 'yes'),
(143, 'theme_mods_hestia', 'a:10:{i:0;b:0;s:29:\"hestia_contact_form_shortcode\";s:14:\"[pirate_forms]\";s:28:\"ti_about_recommended_plugins\";a:1:{s:19:\"themeisle-companion\";s:7:\"visible\";}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:28:\"zerif_frontpage_was_imported\";s:9:\"not-zerif\";s:13:\"ti_prev_theme\";s:5:\"flash\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560484541;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:0:{}s:17:\"sidebar-big-title\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}}}s:31:\"hestia_feature_thumbnail_buffer\";s:77:\"https://mithcare.com/wp-content/themes/hestia/assets/img/contact.jpg\";s:24:\"hestia_feature_thumbnail\";s:77:\"https://mithcare.com/wp-content/themes/hestia/assets/img/contact.jpg\";}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'hestia_contact_form_legacy', '1', 'yes'),
(146, 'hestia_install', '1560483581', 'yes'),
(147, 'hestia_had_elementor', 'no', 'yes'),
(148, 'hestia_time_activated', '1560484476', 'yes'),
(151, '_transient_timeout_ti_sdk_pause_hestia', '1569123616', 'no'),
(152, '_transient_ti_sdk_pause_hestia', '1', 'no'),
(162, 'theme_mods_medical-way', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:3:\"top\";i:3;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561103279;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:16:{i:0;s:7:\"pages-3\";i:1;s:10:\"calendar-3\";i:2;s:10:\"archives-4\";i:3;s:13:\"media_audio-3\";i:4;s:13:\"media_audio-5\";i:5;s:12:\"categories-4\";i:6;s:20:\"medical-way-social-3\";i:7;s:17:\"medical-way-cta-3\";i:8;s:22:\"medical-way-services-5\";i:9;s:25:\"medical-way-departments-3\";i:10;s:25:\"medical-way-departments-4\";i:11;s:25:\"medical-way-departments-5\";i:12;s:21:\"medical-way-contact-3\";i:13;s:21:\"medical-way-contact-4\";i:14;s:18:\"medical-way-team-3\";i:15;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"home-page-widget-area\";a:8:{i:0;s:22:\"medical-way-services-3\";i:1;s:17:\"medical-way-cta-5\";i:2;s:25:\"medical-way-departments-7\";i:3;s:19:\"medical-way-facts-3\";i:4;s:18:\"medical-way-team-5\";i:5;s:25:\"medical-way-testimonial-3\";i:6;s:25:\"medical-way-latest-news-3\";i:7;s:21:\"medical-way-contact-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(163, 'widget_medical-way-social', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:2:\"Sk\";}}', 'yes'),
(164, 'widget_medical-way-latest-news', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:8:{s:5:\"title\";s:16:\"LATEST FROM BLOG\";s:13:\"post_category\";i:0;s:18:\"exclude_categories\";s:0:\"\";s:11:\"post_number\";i:3;s:11:\"post_column\";i:3;s:14:\"excerpt_length\";i:20;s:15:\"disable_excerpt\";i:0;s:14:\"disable_button\";i:0;}}', 'yes'),
(165, 'widget_medical-way-cta', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:3:{s:8:\"cta_page\";i:89;s:11:\"button_text\";s:9:\"Find More\";s:10:\"button_url\";s:0:\"\";}i:5;a:3:{s:8:\"cta_page\";i:127;s:11:\"button_text\";s:9:\"Find More\";s:10:\"button_url\";s:4:\"/cta\";}}', 'yes'),
(166, 'widget_medical-way-services', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:12:\"service_page\";i:82;s:14:\"excerpt_length\";i:20;s:11:\"detail_link\";i:1;s:9:\"item_id_1\";i:84;s:9:\"item_id_2\";i:121;s:9:\"item_id_3\";i:112;s:9:\"item_id_4\";i:106;s:9:\"item_id_5\";i:115;s:9:\"item_id_6\";i:118;s:11:\"appointment\";s:50:\"[contact-form-7 id=\"125\" title=\"Appointment Form\"]\";}i:5;a:0:{}}', 'yes'),
(167, 'widget_medical-way-departments', 'a:5:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:4;a:10:{s:15:\"department_page\";i:82;s:14:\"excerpt_length\";i:20;s:11:\"detail_link\";i:0;s:15:\"image_alignment\";s:4:\"left\";s:9:\"item_id_1\";i:84;s:9:\"item_id_2\";i:0;s:9:\"item_id_3\";i:0;s:9:\"item_id_4\";i:0;s:9:\"item_id_5\";i:0;s:9:\"item_id_6\";i:0;}i:5;a:10:{s:15:\"department_page\";i:89;s:14:\"excerpt_length\";i:20;s:11:\"detail_link\";i:0;s:15:\"image_alignment\";s:4:\"left\";s:9:\"item_id_1\";i:0;s:9:\"item_id_2\";i:0;s:9:\"item_id_3\";i:0;s:9:\"item_id_4\";i:0;s:9:\"item_id_5\";i:0;s:9:\"item_id_6\";i:0;}i:7;a:10:{s:15:\"department_page\";i:136;s:14:\"excerpt_length\";i:20;s:11:\"detail_link\";i:1;s:15:\"image_alignment\";s:4:\"left\";s:9:\"item_id_1\";i:143;s:9:\"item_id_2\";i:146;s:9:\"item_id_3\";i:148;s:9:\"item_id_4\";i:150;s:9:\"item_id_5\";i:0;s:9:\"item_id_6\";i:0;}}', 'yes'),
(168, 'widget_medical-way-facts', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:14:{s:5:\"title\";s:0:\"\";s:8:\"icon_one\";s:10:\"fa-user-md\";s:9:\"count_one\";i:100;s:8:\"text_one\";s:16:\"In-House Doctors\";s:8:\"icon_two\";s:6:\"fa-bed\";s:9:\"count_two\";i:238;s:8:\"text_two\";s:4:\"Beds\";s:10:\"icon_three\";s:13:\"fa-building-o\";s:11:\"count_three\";i:25;s:10:\"text_three\";s:11:\"Departments\";s:9:\"icon_four\";s:12:\"fa-ambulance\";s:10:\"count_four\";i:5;s:9:\"text_four\";s:10:\"Ambulances\";s:6:\"bg_pic\";s:83:\"https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg\";}}', 'yes'),
(169, 'widget_medical-way-contact', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:5:\"title\";s:5:\"Hello\";s:17:\"contact_shortcode\";s:0:\"\";s:12:\"contact_page\";i:82;s:6:\"bg_pic\";s:0:\"\";}i:4;a:4:{s:5:\"title\";s:10:\"Contact Us\";s:17:\"contact_shortcode\";s:0:\"\";s:12:\"contact_page\";i:82;s:6:\"bg_pic\";s:0:\"\";}i:6;a:4:{s:5:\"title\";s:10:\"Contact Us\";s:17:\"contact_shortcode\";s:48:\"[contact-form-7 id=\"124\" title=\"Contact form 1\"]\";s:12:\"contact_page\";i:208;s:6:\"bg_pic\";s:0:\"\";}}', 'yes'),
(170, 'widget_medical-way-team', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:9:\"team_page\";i:89;s:11:\"post_number\";i:3;}i:5;a:2:{s:9:\"team_page\";i:89;s:11:\"post_number\";i:3;}}', 'yes'),
(171, 'widget_medical-way-testimonial', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:9:{s:5:\"title\";s:11:\"Testimonial\";s:16:\"testimonial_page\";i:182;s:18:\"transition_effects\";s:10:\"scrollHorz\";s:16:\"transition_delay\";i:3;s:19:\"transition_duration\";i:3;s:10:\"show_arrow\";i:1;s:10:\"show_pager\";i:1;s:15:\"enable_autoplay\";i:1;s:6:\"bg_pic\";s:83:\"https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg\";}}', 'yes'),
(177, 'theme_mods_flash', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560484473;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"flash_right_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"flash_left_sidebar\";a:0:{}s:21:\"flash_footer_sidebar1\";a:0:{}s:21:\"flash_footer_sidebar2\";a:0:{}s:21:\"flash_footer_sidebar3\";a:0:{}s:21:\"flash_footer_sidebar4\";a:0:{}}}}', 'yes'),
(185, '_transient_flash_categories', '1', 'yes'),
(190, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(192, 'theme_mods_materialis', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:20:\"theme_default_preset\";s:11:\"dark-purple\";s:18:\"custom_css_post_id\";i:-1;s:16:\"header_nav_boxed\";b:0;s:17:\"header_nav_border\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560484632;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:24:\"materialis_pages_sidebar\";a:0:{}s:17:\"first_box_widgets\";a:0:{}s:18:\"second_box_widgets\";a:0:{}s:17:\"third_box_widgets\";a:0:{}}}}', 'yes'),
(194, '__materialis_cached_values__', 'a:2:{s:23:\"materialis_google_fonts\";s:186:\"https://fonts.googleapis.com/css?family=Roboto:300,300italic,400,400italic,500,500italic,700,700italic,900,900italic%7CPlayfair Display:400,400italic,700,700italic&subset=latin,latin-ext\";s:40:\"materialis_cached_kirki_style_materialis\";s:808:\".header-homepage{background-position:center bottom;}.header{background-position:center center;}.header-homepage.color-overlay:before{background:#181818;}.header-homepage .background-overlay,.header-homepage.color-overlay::before{opacity:0.4;}.header.color-overlay:before{background:#181818;}.header .background-overlay,.header.color-overlay::before{opacity:0.4;}.header-homepage .hero-title{color:#ffffff;}.header-homepage .header-description-row{padding-top:20%;padding-bottom:24%;}.inner-header-description{padding-top:10%;padding-bottom:10%;}@media screen and (max-width:767px){.header-homepage .header-description-row{padding-top:10%;padding-bottom:10%;}}@media only screen and (min-width: 768px){.header-content .align-holder{width:85%!important;}.inner-header-description{text-align:center!important;}}\";}', 'yes'),
(196, 'theme_mods_medical-heed', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560484863;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"popup-sidebar\";a:0:{}}}}', 'yes'),
(200, 'theme_mods_spicepress', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560484845;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar_primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:23:\"footer_widget_area_left\";a:0:{}s:25:\"footer_widget_area_center\";a:0:{}s:24:\"footer_widget_area_right\";a:0:{}s:11:\"woocommerce\";a:0:{}s:24:\"wdl_contact_page_sidebar\";a:0:{}}}}', 'yes'),
(212, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561445648;s:7:\"checked\";a:12:{s:9:\"empowerwp\";s:6:\"1.0.11\";s:5:\"flash\";s:5:\"1.2.8\";s:6:\"hestia\";s:5:\"2.4.5\";s:10:\"materialis\";s:7:\"1.0.167\";s:12:\"medical-heed\";s:5:\"1.0.2\";s:16:\"medical-way-plus\";s:5:\"1.1.2\";s:11:\"medical-way\";s:5:\"1.1.2\";s:9:\"mesmerize\";s:6:\"1.6.81\";s:10:\"spicepress\";s:5:\"1.6.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(214, 'theme_mods_medical-way-plus', 'a:26:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:3:\"top\";i:3;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:13:\"slider_status\";s:4:\"home\";s:11:\"custom_logo\";s:0:\"\";s:12:\"header_image\";s:21:\"random-uploaded-image\";s:16:\"background_image\";s:0:\"\";s:10:\"show_title\";b:1;s:12:\"show_tagline\";b:1;s:11:\"top_address\";s:8:\"Thailand\";s:9:\"top_phone\";s:11:\"02-123-4567\";s:17:\"show_social_icons\";b:1;s:13:\"enable_sticky\";b:1;s:13:\"global_layout\";s:13:\"right-sidebar\";s:13:\"slider_page_1\";i:71;s:15:\"breadcrumb_type\";s:6:\"simple\";s:15:\"slider_button_1\";s:10:\"Go to Page\";s:12:\"slider_url_1\";s:9:\"/main-one\";s:13:\"slider_page_2\";i:77;s:15:\"slider_button_2\";s:10:\"Go to Page\";s:12:\"slider_url_2\";s:9:\"/main-two\";s:13:\"services_page\";i:82;s:13:\"services_link\";b:0;s:16:\"departments_page\";i:89;s:9:\"team_page\";i:89;s:11:\"member_link\";b:0;}', 'yes'),
(340, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1561445651;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(346, 'recently_activated', 'a:0:{}', 'yes'),
(347, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1561097635;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(348, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, '_site_transient_timeout_browser_fd1885f00291b83c2cb49a9bbb9a909a', '1561706297', 'no'),
(405, '_site_transient_browser_fd1885f00291b83c2cb49a9bbb9a909a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.169\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(406, '_site_transient_timeout_php_check_abb6d88a45d814554e5d096b10501bca', '1561706299', 'no'),
(407, '_site_transient_php_check_abb6d88a45d814554e5d096b10501bca', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(414, 'category_children', 'a:0:{}', 'yes'),
(428, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"AIzaSyAmaz0Bp4TQ0WNJ1KaOoTCH_ig-Qru3UyA\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"\\/\\/maps.gstatic.com\\/mapfiles\\/api-3\\/images\\/spotlight-poi2.png\",\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"Mithcare\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_gdpr_notice_override_text\":\"\",\"wpgmza_load_engine_api_condition\":\"where-required\",\"use_fontawesome\":\"4.*\",\"wpgmza_maps_engine\":\"google-maps\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_store_locator_radii\":\"1,5,10,25,50,75,100,150,200,300\"}', 'yes'),
(429, 'WPGMZA_OTHER_SETTINGS', 'a:17:{s:26:\"wpgmza_google_maps_api_key\";s:39:\"AIzaSyAmaz0Bp4TQ0WNJ1KaOoTCH_ig-Qru3UyA\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:59:\"//maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\";s:26:\"wpgmza_gdpr_default_notice\";s:1972:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:8:\"Mithcare\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:32:\"wpgmza_load_engine_api_condition\";s:14:\"where-required\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}', 'yes'),
(430, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(431, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(432, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(433, 'wpgmza_db_version', '7.11.32', 'yes'),
(434, 'wpgmaps_current_version', '7.11.32', 'yes'),
(435, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(436, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(437, 'WPGMZA_FIRST_TIME', '7.11.32', 'yes'),
(438, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:7;s:13:\"last_accessed\";s:19:\"2019-06-21 07:41:11\";s:14:\"first_accessed\";s:19:\"2019-06-21 07:24:35\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:6;s:13:\"last_accessed\";s:19:\"2019-06-21 07:41:34\";s:14:\"first_accessed\";s:19:\"2019-06-21 07:29:52\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2019-06-21 07:41:43\";s:14:\"first_accessed\";s:19:\"2019-06-21 07:29:59\";}}', 'yes'),
(439, 'wpgmza_google_maps_api_key', 'AIzaSyAmaz0Bp4TQ0WNJ1KaOoTCH_ig-Qru3UyA', 'yes'),
(444, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:9:\"14.071641\";s:24:\"map_default_starting_lng\";s:18:\"100.61403500000006\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:14;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(449, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1561445652;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:5:\"2.5.1\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:7:\"7.11.32\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"one-click-demo-import/one-click-demo-import.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/one-click-demo-import\";s:4:\"slug\";s:21:\"one-click-demo-import\";s:6:\"plugin\";s:47:\"one-click-demo-import/one-click-demo-import.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/one-click-demo-import/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/one-click-demo-import.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-256x256.png?rev=1694310\";s:2:\"1x\";s:74:\"https://ps.w.org/one-click-demo-import/assets/icon-128x128.png?rev=1694310\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/one-click-demo-import/assets/banner-1544x500.png?rev=1694310\";s:2:\"1x\";s:76:\"https://ps.w.org/one-click-demo-import/assets/banner-772x250.png?rev=1694310\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:7:\"7.11.32\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(450, 'theme_switch_menu_locations', 'a:3:{s:7:\"primary\";i:2;s:3:\"top\";i:3;s:6:\"social\";i:0;}', 'yes'),
(451, 'theme_switched_via_customizer', '', 'yes'),
(452, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(453, '_transient_is_multi_author', '0', 'yes'),
(455, '_transient_medical_way_categories', '1', 'yes'),
(478, '_site_transient_timeout_theme_roots', '1561447446', 'no'),
(479, '_site_transient_theme_roots', 'a:12:{s:9:\"empowerwp\";s:7:\"/themes\";s:5:\"flash\";s:7:\"/themes\";s:6:\"hestia\";s:7:\"/themes\";s:10:\"materialis\";s:7:\"/themes\";s:12:\"medical-heed\";s:7:\"/themes\";s:16:\"medical-way-plus\";s:7:\"/themes\";s:11:\"medical-way\";s:7:\"/themes\";s:9:\"mesmerize\";s:7:\"/themes\";s:10:\"spicepress\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 6, '_customize_changeset_uuid', '51ca8099-6b18-48f6-9706-92a9abdf9be4'),
(11, 7, '_customize_changeset_uuid', '51ca8099-6b18-48f6-9706-92a9abdf9be4'),
(12, 11, '_menu_item_type', 'post_type'),
(13, 11, '_menu_item_menu_item_parent', '0'),
(14, 11, '_menu_item_object_id', '6'),
(15, 11, '_menu_item_object', 'page'),
(16, 11, '_menu_item_target', ''),
(17, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 11, '_menu_item_xfn', ''),
(19, 11, '_menu_item_url', ''),
(20, 12, '_menu_item_type', 'post_type'),
(21, 12, '_menu_item_menu_item_parent', '0'),
(22, 12, '_menu_item_object_id', '7'),
(23, 12, '_menu_item_object', 'page'),
(24, 12, '_menu_item_target', ''),
(25, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 12, '_menu_item_xfn', ''),
(27, 12, '_menu_item_url', ''),
(28, 8, '_wp_trash_meta_status', 'publish'),
(29, 8, '_wp_trash_meta_time', '1560484518'),
(30, 13, '_wp_trash_meta_status', 'publish'),
(31, 13, '_wp_trash_meta_time', '1560484599'),
(32, 14, '_wp_trash_meta_status', 'publish'),
(33, 14, '_wp_trash_meta_time', '1560484608'),
(38, 6, '_edit_lock', '1561086393:1'),
(39, 18, '_edit_lock', '1560503642:1'),
(40, 19, '_wp_attached_file', '2019/06/cropped-contact.jpg'),
(41, 19, '_wp_attachment_context', 'custom-logo'),
(42, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:27:\"2019/06/cropped-contact.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-contact-150x70.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 20, '_wp_attached_file', '2019/06/cropped-contact-1.jpg'),
(44, 20, '_wp_attachment_context', 'site-icon'),
(45, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/06/cropped-contact-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-512x380.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-contact-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-contact-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 21, '_wp_attached_file', '2019/06/mithcare-logo.png'),
(47, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:627;s:6:\"height\";i:348;s:4:\"file\";s:25:\"2019/06/mithcare-logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"mithcare-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"mithcare-logo-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:25:\"mithcare-logo-570x348.png\";s:5:\"width\";i:570;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 22, '_wp_attached_file', '2019/06/cropped-mithcare-logo.png'),
(49, 22, '_wp_attachment_context', 'custom-logo'),
(50, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:33:\"2019/06/cropped-mithcare-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-mithcare-logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 23, '_wp_attached_file', '2019/06/white2.png'),
(52, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:848;s:6:\"height\";i:190;s:4:\"file\";s:18:\"2019/06/white2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"white2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"white2-300x67.png\";s:5:\"width\";i:300;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"white2-768x172.png\";s:5:\"width\";i:768;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:18:\"white2-570x190.png\";s:5:\"width\";i:570;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 24, '_wp_attached_file', '2019/06/cropped-white2.png'),
(54, 24, '_wp_attachment_context', 'custom-logo'),
(55, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:26:\"2019/06/cropped-white2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-white2-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 25, '_wp_attached_file', '2019/06/blue2.png'),
(57, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:848;s:6:\"height\";i:190;s:4:\"file\";s:17:\"2019/06/blue2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blue2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"blue2-300x67.png\";s:5:\"width\";i:300;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blue2-768x172.png\";s:5:\"width\";i:768;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:17:\"blue2-570x190.png\";s:5:\"width\";i:570;s:6:\"height\";i:190;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 26, '_wp_attached_file', '2019/06/cropped-blue2.png'),
(59, 26, '_wp_attachment_context', 'site-icon'),
(60, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2019/06/cropped-blue2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-512x380.png\";s:5:\"width\";i:512;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-blue2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-blue2-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 18, '_wp_trash_meta_status', 'publish'),
(62, 18, '_wp_trash_meta_time', '1560503664'),
(63, 27, '_wp_attached_file', '2019/06/cropped-contact-2.jpg'),
(64, 27, '_wp_attachment_context', 'custom-header'),
(65, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:401;s:4:\"file\";s:29:\"2019/06/cropped-contact-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-contact-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-contact-2-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-contact-2-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-contact-2-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:29:\"cropped-contact-2-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:5;}'),
(66, 27, '_wp_attachment_custom_header_last_used_medical-way-plus', '1560503695'),
(67, 27, '_wp_attachment_is_custom_header', 'medical-way-plus'),
(68, 28, '_wp_trash_meta_status', 'publish'),
(69, 28, '_wp_trash_meta_time', '1560503695'),
(71, 29, '_edit_lock', '1560503822:1'),
(72, 29, '_wp_trash_meta_status', 'publish'),
(73, 29, '_wp_trash_meta_time', '1560503833'),
(74, 30, '_edit_lock', '1560503967:1'),
(75, 30, '_wp_trash_meta_status', 'publish'),
(76, 30, '_wp_trash_meta_time', '1560503972'),
(77, 31, '_edit_lock', '1560504123:1'),
(78, 31, '_wp_trash_meta_status', 'publish'),
(79, 31, '_wp_trash_meta_time', '1560504163'),
(80, 32, '_edit_lock', '1560504358:1'),
(81, 33, '_wp_attached_file', '2019/06/main-one.png'),
(82, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:20:\"2019/06/main-one.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"main-one-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"main-one-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"main-one-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"main-one-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:20:\"main-one-570x380.png\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 32, '_thumbnail_id', '33'),
(84, 35, '_wp_trash_meta_status', 'publish'),
(85, 35, '_wp_trash_meta_time', '1560504442'),
(86, 36, '_edit_lock', '1560504779:1'),
(87, 37, '_wp_attached_file', '2019/06/main-two.png'),
(88, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:20:\"2019/06/main-two.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"main-two-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"main-two-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"main-two-768x360.png\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"main-two-1024x480.png\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:20:\"main-two-570x380.png\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 36, '_thumbnail_id', '37'),
(90, 39, '_edit_lock', '1560505797:1'),
(91, 40, '_edit_lock', '1560506962:1'),
(92, 39, '_wp_trash_meta_status', 'publish'),
(93, 39, '_wp_trash_meta_time', '1560505812'),
(94, 43, '_wp_trash_meta_status', 'publish'),
(95, 43, '_wp_trash_meta_time', '1560505988'),
(96, 44, '_menu_item_type', 'custom'),
(97, 44, '_menu_item_menu_item_parent', '0'),
(98, 44, '_menu_item_object_id', '44'),
(99, 44, '_menu_item_object', 'custom'),
(100, 44, '_menu_item_target', ''),
(101, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 44, '_menu_item_xfn', ''),
(103, 44, '_menu_item_url', '#'),
(105, 46, '_wp_attached_file', '2019/06/progress-1807543_1280-570x380.jpg'),
(106, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:41:\"2019/06/progress-1807543_1280-570x380.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"progress-1807543_1280-570x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"progress-1807543_1280-570x380-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 47, '_wp_attached_file', '2019/06/the-device-1822457_1280-570x380.jpg'),
(108, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:43:\"2019/06/the-device-1822457_1280-570x380.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"the-device-1822457_1280-570x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"the-device-1822457_1280-570x380-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 48, '_wp_attached_file', '2019/06/hospital-ward-1024x683.jpg'),
(110, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:34:\"2019/06/hospital-ward-1024x683.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"hospital-ward-1024x683-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"hospital-ward-1024x683-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"hospital-ward-1024x683-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"hospital-ward-1024x683-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:34:\"hospital-ward-1024x683-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 40, '_wp_trash_meta_status', 'publish'),
(120, 40, '_wp_trash_meta_time', '1560506745'),
(121, 40, '_wp_desired_post_slug', 'our-services-vivamus-sit-amet-nunc-non'),
(122, 36, '_wp_trash_meta_status', 'publish'),
(123, 36, '_wp_trash_meta_time', '1560506754'),
(124, 36, '_wp_desired_post_slug', 'lorem-ipsum-dolor-sit-amet'),
(125, 32, '_wp_trash_meta_status', 'publish'),
(126, 32, '_wp_trash_meta_time', '1560506756'),
(127, 32, '_wp_desired_post_slug', 'mauris-sagittis-mauris'),
(129, 52, '_edit_lock', '1560507293:1'),
(138, 52, '_wp_page_template', 'templates/services.php'),
(139, 55, '_edit_lock', '1560506839:1'),
(148, 55, '_wp_page_template', 'templates/departments.php'),
(149, 59, '_wp_trash_meta_status', 'publish'),
(150, 59, '_wp_trash_meta_time', '1560507060'),
(151, 60, '_edit_lock', '1560507076:1'),
(152, 60, '_wp_trash_meta_status', 'publish'),
(153, 60, '_wp_trash_meta_time', '1560507091'),
(154, 6, '_wp_page_template', 'templates/home.php'),
(155, 62, '_edit_lock', '1560507640:1'),
(164, 65, '_edit_lock', '1560507664:1'),
(200, 65, '_wp_page_template', 'templates/departments.php'),
(201, 62, '_wp_page_template', 'templates/team.php'),
(202, 55, '_wp_trash_meta_status', 'publish'),
(203, 55, '_wp_trash_meta_time', '1561086524'),
(204, 55, '_wp_desired_post_slug', 'department'),
(205, 65, '_wp_trash_meta_status', 'publish'),
(206, 65, '_wp_trash_meta_time', '1561086525'),
(207, 65, '_wp_desired_post_slug', 'our-department'),
(208, 52, '_wp_trash_meta_status', 'publish'),
(209, 52, '_wp_trash_meta_time', '1561086525'),
(210, 52, '_wp_desired_post_slug', 'service'),
(211, 62, '_wp_trash_meta_status', 'publish'),
(212, 62, '_wp_trash_meta_time', '1561086525'),
(213, 62, '_wp_desired_post_slug', 'our-team'),
(214, 71, '_edit_lock', '1561086773:1'),
(215, 71, '_thumbnail_id', '37'),
(216, 71, '_wp_page_template', ''),
(217, 73, '_wp_trash_meta_status', 'publish'),
(218, 73, '_wp_trash_meta_time', '1561086716'),
(219, 74, '_edit_lock', '1561086781:1'),
(220, 74, '_wp_trash_meta_status', 'publish'),
(221, 74, '_wp_trash_meta_time', '1561086785'),
(222, 75, '_wp_trash_meta_status', 'publish'),
(223, 75, '_wp_trash_meta_time', '1561086830'),
(224, 77, '_edit_lock', '1561086948:1'),
(225, 77, '_thumbnail_id', '33'),
(226, 79, '_edit_lock', '1561087014:1'),
(227, 79, '_customize_restore_dismissed', '1'),
(228, 80, '_wp_trash_meta_status', 'publish'),
(229, 80, '_wp_trash_meta_time', '1561087049'),
(230, 81, '_edit_lock', '1561086952:1'),
(231, 82, '_edit_lock', '1561087424:1'),
(232, 82, '_wp_page_template', 'templates/services.php'),
(233, 84, '_edit_lock', '1561087426:1'),
(234, 85, '_wp_trash_meta_status', 'publish'),
(235, 85, '_wp_trash_meta_time', '1561087335'),
(236, 84, '_thumbnail_id', '46'),
(237, 87, '_wp_trash_meta_status', 'publish'),
(238, 87, '_wp_trash_meta_time', '1561087515'),
(239, 88, '_edit_lock', '1561087713:1'),
(240, 89, '_edit_lock', '1561088708:1'),
(241, 89, '_wp_page_template', 'templates/team.php'),
(242, 91, '_edit_lock', '1561088187:1'),
(243, 92, '_wp_attached_file', '2019/06/44525053_316593339159262_5904430350859239424_n.png'),
(244, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:58:\"2019/06/44525053_316593339159262_5904430350859239424_n.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"44525053_316593339159262_5904430350859239424_n-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"44525053_316593339159262_5904430350859239424_n-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 91, '_thumbnail_id', '92'),
(246, 94, '_menu_item_type', 'post_type'),
(247, 94, '_menu_item_menu_item_parent', '0'),
(248, 94, '_menu_item_object_id', '82'),
(249, 94, '_menu_item_object', 'page'),
(250, 94, '_menu_item_target', ''),
(251, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 94, '_menu_item_xfn', ''),
(253, 94, '_menu_item_url', ''),
(255, 95, '_menu_item_type', 'post_type'),
(256, 95, '_menu_item_menu_item_parent', '0'),
(257, 95, '_menu_item_object_id', '89'),
(258, 95, '_menu_item_object', 'page'),
(259, 95, '_menu_item_target', ''),
(260, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 95, '_menu_item_xfn', ''),
(262, 95, '_menu_item_url', ''),
(264, 96, '_wp_trash_meta_status', 'publish'),
(265, 96, '_wp_trash_meta_time', '1561088261'),
(266, 97, '_wp_trash_meta_status', 'publish'),
(267, 97, '_wp_trash_meta_time', '1561088276'),
(268, 98, '_wp_trash_meta_status', 'publish'),
(269, 98, '_wp_trash_meta_time', '1561088281'),
(270, 100, '_edit_lock', '1561088516:1'),
(271, 100, '_wp_trash_meta_status', 'publish'),
(272, 100, '_wp_trash_meta_time', '1561088547'),
(273, 101, '_edit_lock', '1561088970:1'),
(274, 101, '_customize_restore_dismissed', '1'),
(275, 102, '_edit_lock', '1561088983:1'),
(276, 101, '_wp_trash_meta_status', 'publish'),
(277, 101, '_wp_trash_meta_time', '1561088995'),
(278, 102, '_wp_trash_meta_status', 'publish'),
(279, 102, '_wp_trash_meta_time', '1561089008'),
(280, 103, '_edit_lock', '1561096207:1'),
(281, 103, '_wp_trash_meta_status', 'publish'),
(282, 103, '_wp_trash_meta_time', '1561096240'),
(283, 104, '_edit_lock', '1561096267:1'),
(284, 104, '_wp_trash_meta_status', 'publish'),
(285, 104, '_wp_trash_meta_time', '1561096304'),
(286, 105, '_edit_lock', '1561096979:1'),
(287, 105, '_wp_trash_meta_status', 'publish'),
(288, 105, '_wp_trash_meta_time', '1561096989'),
(289, 106, '_edit_lock', '1561097140:1'),
(290, 107, '_wp_attached_file', '2019/06/hospice-768x512.jpg'),
(291, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2019/06/hospice-768x512.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"hospice-768x512-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hospice-768x512-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"hospice-768x512-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:27:\"hospice-768x512-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 108, '_wp_attached_file', '2019/06/nurse-baby-570x380.jpg'),
(293, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:30:\"2019/06/nurse-baby-570x380.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"nurse-baby-570x380-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"nurse-baby-570x380-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 106, '_thumbnail_id', '108'),
(297, 111, '_edit_lock', '1561097143:1'),
(298, 112, '_edit_lock', '1561097225:1'),
(299, 112, '_thumbnail_id', '107'),
(300, 114, '_edit_lock', '1561097228:1'),
(301, 115, '_edit_lock', '1561097270:1'),
(302, 115, '_thumbnail_id', '47'),
(303, 117, '_edit_lock', '1561097273:1'),
(304, 118, '_edit_lock', '1561097313:1'),
(305, 118, '_thumbnail_id', '33'),
(306, 120, '_edit_lock', '1561097317:1'),
(307, 121, '_edit_lock', '1561097358:1'),
(308, 121, '_thumbnail_id', '48'),
(309, 123, '_wp_trash_meta_status', 'publish'),
(310, 123, '_wp_trash_meta_time', '1561097579'),
(311, 124, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(312, 124, '_mail', 'a:8:{s:7:\"subject\";s:25:\"Mithcare \"[your-subject]\"\";s:6:\"sender\";s:42:\"Mithcare <wordpress@mithcare.com>\";s:4:\"body\";s:176:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\";s:9:\"recipient\";s:22:\"chavalit.kow@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(313, 124, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Mithcare \"[your-subject]\"\";s:6:\"sender\";s:42:\"Mithcare <wordpress@mithcare.com>\";s:4:\"body\";s:118:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: chavalit.kow@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(314, 124, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(315, 124, '_additional_settings', NULL),
(316, 124, '_locale', 'en_US'),
(317, 125, '_form', '<h3>Make An Appointment Today</h3>\n<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(318, 125, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Mithcare \"[your-subject]\"\";s:6:\"sender\";s:42:\"Mithcare <wordpress@mithcare.com>\";s:9:\"recipient\";s:22:\"chavalit.kow@gmail.com\";s:4:\"body\";s:176:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(319, 125, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Mithcare \"[your-subject]\"\";s:6:\"sender\";s:42:\"Mithcare <wordpress@mithcare.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:118:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\";s:18:\"additional_headers\";s:32:\"Reply-To: chavalit.kow@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(320, 125, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(321, 125, '_additional_settings', ''),
(322, 125, '_locale', 'en_US'),
(323, 126, '_wp_trash_meta_status', 'publish'),
(324, 126, '_wp_trash_meta_time', '1561097742'),
(325, 127, '_edit_lock', '1561097942:1'),
(326, 128, '_wp_attached_file', '2019/06/Nurse-rightx380.png'),
(327, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:330;s:6:\"height\";i:380;s:4:\"file\";s:27:\"2019/06/Nurse-rightx380.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Nurse-rightx380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Nurse-rightx380-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:27:\"Nurse-rightx380-330x380.png\";s:5:\"width\";i:330;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 127, '_thumbnail_id', '128'),
(329, 130, '_wp_trash_meta_status', 'publish'),
(330, 130, '_wp_trash_meta_time', '1561097968'),
(331, 131, '_wp_trash_meta_status', 'publish'),
(332, 131, '_wp_trash_meta_time', '1561097985'),
(333, 135, '_edit_lock', '1561098335:1'),
(334, 136, '_edit_lock', '1561099294:1'),
(335, 136, '_wp_page_template', 'templates/departments.php'),
(336, 138, '_edit_lock', '1561097996:1'),
(337, 139, '_wp_attached_file', '2019/06/nurses-768x510.jpg'),
(338, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:510;s:4:\"file\";s:26:\"2019/06/nurses-768x510.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"nurses-768x510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"nurses-768x510-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"nurses-768x510-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:26:\"nurses-768x510-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 140, '_wp_attached_file', '2019/06/foot-1689784_1280-768x512.jpg'),
(340, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:37:\"2019/06/foot-1689784_1280-768x512.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"foot-1689784_1280-768x512-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"foot-1689784_1280-768x512-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"foot-1689784_1280-768x512-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:37:\"foot-1689784_1280-768x512-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 141, '_wp_attached_file', '2019/06/zahnreinigung-1514693_1280-768x512.jpg'),
(342, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:46:\"2019/06/zahnreinigung-1514693_1280-768x512.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"zahnreinigung-1514693_1280-768x512-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"zahnreinigung-1514693_1280-768x512-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"zahnreinigung-1514693_1280-768x512-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:46:\"zahnreinigung-1514693_1280-768x512-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 142, '_wp_attached_file', '2019/06/surgery-1822458_1280-768x512.jpg'),
(344, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:40:\"2019/06/surgery-1822458_1280-768x512.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"surgery-1822458_1280-768x512-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"surgery-1822458_1280-768x512-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"surgery-1822458_1280-768x512-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:40:\"surgery-1822458_1280-768x512-570x380.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 143, '_edit_lock', '1561098090:1'),
(346, 143, '_thumbnail_id', '142'),
(347, 145, '_edit_lock', '1561098095:1'),
(348, 146, '_edit_lock', '1561098128:1'),
(349, 146, '_thumbnail_id', '141'),
(350, 148, '_edit_lock', '1561098162:1'),
(351, 148, '_thumbnail_id', '140'),
(352, 150, '_edit_lock', '1561098253:1'),
(353, 150, '_thumbnail_id', '139'),
(354, 135, '_wp_trash_meta_status', 'publish'),
(355, 135, '_wp_trash_meta_time', '1561098337'),
(356, 152, '_edit_lock', '1561098400:1'),
(357, 153, '_wp_attached_file', '2019/06/nurse.png'),
(358, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:1024;s:4:\"file\";s:17:\"2019/06/nurse.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nurse-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nurse-278x300.png\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"nurse-768x828.png\";s:5:\"width\";i:768;s:6:\"height\";i:828;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"nurse-950x1024.png\";s:5:\"width\";i:950;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medical-way-large\";a:4:{s:4:\"file\";s:17:\"nurse-570x380.png\";s:5:\"width\";i:570;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 136, '_thumbnail_id', '153'),
(360, 152, '_wp_trash_meta_status', 'publish'),
(361, 152, '_wp_trash_meta_time', '1561098439'),
(362, 154, '_wp_trash_meta_status', 'publish'),
(363, 154, '_wp_trash_meta_time', '1561098512'),
(364, 155, '_wp_trash_meta_status', 'publish'),
(365, 155, '_wp_trash_meta_time', '1561098536'),
(366, 156, '_edit_lock', '1561098752:1'),
(369, 156, '_wp_trash_meta_status', 'publish'),
(370, 156, '_wp_trash_meta_time', '1561098762'),
(371, 158, '_edit_lock', '1561098812:1'),
(372, 158, '_wp_trash_meta_status', 'publish'),
(373, 158, '_wp_trash_meta_time', '1561098847'),
(374, 159, '_edit_lock', '1561099338:1'),
(375, 159, '_wp_trash_meta_status', 'publish'),
(376, 159, '_wp_trash_meta_time', '1561099341'),
(385, 160, '_wp_trash_meta_status', 'publish'),
(386, 160, '_wp_trash_meta_time', '1561099386'),
(387, 162, '_wp_attached_file', '2019/06/Christina-570x380.png'),
(388, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:29:\"2019/06/Christina-570x380.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Christina-570x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Christina-570x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 163, '_wp_attached_file', '2019/06/William-570x380.png'),
(390, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:27:\"2019/06/William-570x380.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"William-570x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"William-570x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 164, '_wp_attached_file', '2019/06/Sharon-570x380.png'),
(392, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:26:\"2019/06/Sharon-570x380.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Sharon-570x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Sharon-570x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 165, '_wp_attached_file', '2019/06/Dr-Christopher-570x380.png'),
(394, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:34:\"2019/06/Dr-Christopher-570x380.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Dr-Christopher-570x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Dr-Christopher-570x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 166, '_wp_attached_file', '2019/06/Andrew-570x380.png'),
(396, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:26:\"2019/06/Andrew-570x380.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Andrew-570x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Andrew-570x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(397, 167, '_edit_lock', '1561099368:1'),
(398, 167, '_thumbnail_id', '166'),
(399, 169, '_edit_lock', '1561099442:1'),
(400, 169, '_thumbnail_id', '165'),
(401, 171, '_edit_lock', '1561099592:1'),
(402, 172, '_edit_lock', '1561099477:1'),
(403, 172, '_thumbnail_id', '164'),
(404, 174, '_edit_lock', '1561099507:1'),
(405, 174, '_thumbnail_id', '163'),
(406, 176, '_edit_lock', '1561099510:1'),
(407, 177, '_edit_lock', '1561099693:1'),
(408, 177, '_thumbnail_id', '162'),
(409, 179, '_wp_trash_meta_status', 'publish'),
(410, 179, '_wp_trash_meta_time', '1561099746'),
(411, 180, '_wp_trash_meta_status', 'publish'),
(412, 180, '_wp_trash_meta_time', '1561099766'),
(413, 181, '_edit_lock', '1561100016:1'),
(414, 182, '_edit_lock', '1561101202:1'),
(415, 182, '_wp_page_template', ''),
(416, 184, '_edit_lock', '1561099952:1'),
(417, 181, '_wp_trash_meta_status', 'publish'),
(418, 181, '_wp_trash_meta_time', '1561100056'),
(419, 185, '_edit_lock', '1561100119:1'),
(420, 186, '_edit_lock', '1561099955:1'),
(421, 187, '_edit_lock', '1561100443:1'),
(422, 185, '_wp_trash_meta_status', 'publish'),
(423, 185, '_wp_trash_meta_time', '1561100164'),
(424, 187, '_thumbnail_id', '164'),
(433, 189, '_wp_trash_meta_status', 'publish'),
(434, 189, '_wp_trash_meta_time', '1561100323'),
(435, 191, '_wp_trash_meta_status', 'publish'),
(436, 191, '_wp_trash_meta_time', '1561100410'),
(445, 192, '_wp_trash_meta_status', 'publish'),
(446, 192, '_wp_trash_meta_time', '1561100525'),
(447, 194, '_wp_trash_meta_status', 'publish'),
(448, 194, '_wp_trash_meta_time', '1561100749'),
(449, 195, '_wp_trash_meta_status', 'publish'),
(450, 195, '_wp_trash_meta_time', '1561100777'),
(451, 197, '_wp_trash_meta_status', 'publish'),
(452, 197, '_wp_trash_meta_time', '1561100945'),
(453, 198, '_wp_trash_meta_status', 'publish'),
(454, 198, '_wp_trash_meta_time', '1561100959'),
(455, 182, '_edit_last', '1'),
(456, 199, '_edit_lock', '1561101639:1'),
(457, 200, '_edit_lock', '1561102641:1'),
(460, 200, '_thumbnail_id', '37'),
(461, 202, '_edit_lock', '1561102640:1'),
(464, 202, '_thumbnail_id', '47'),
(465, 1, '_edit_lock', '1561102642:1'),
(468, 1, '_thumbnail_id', '33'),
(469, 199, '_customize_restore_dismissed', '1'),
(470, 205, '_wp_trash_meta_status', 'publish'),
(471, 205, '_wp_trash_meta_time', '1561101485'),
(478, 199, '_wp_trash_meta_status', 'publish'),
(479, 199, '_wp_trash_meta_time', '1561101646'),
(480, 207, '_edit_lock', '1561101712:1'),
(481, 207, '_wp_trash_meta_status', 'publish'),
(482, 207, '_wp_trash_meta_time', '1561101759'),
(483, 208, '_edit_lock', '1561102639:1'),
(484, 212, '_wp_trash_meta_status', 'publish'),
(485, 212, '_wp_trash_meta_time', '1561102057'),
(486, 213, '_edit_lock', '1561102726:1'),
(487, 213, '_wp_page_template', ''),
(488, 217, '_menu_item_type', 'post_type'),
(489, 217, '_menu_item_menu_item_parent', '0'),
(490, 217, '_menu_item_object_id', '213'),
(491, 217, '_menu_item_object', 'page'),
(492, 217, '_menu_item_target', ''),
(493, 217, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(494, 217, '_menu_item_xfn', ''),
(495, 217, '_menu_item_url', ''),
(497, 218, '_wp_trash_meta_status', 'publish'),
(498, 218, '_wp_trash_meta_time', '1561103279');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-14 03:34:25', '2019-06-14 03:34:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-21 07:20:21', '2019-06-21 07:20:21', '', 0, 'https://mithcare.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-14 03:34:25', '2019-06-14 03:34:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://mithcare.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-14 03:34:25', '2019-06-14 03:34:25', '', 0, 'https://mithcare.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-14 03:34:25', '2019-06-14 03:34:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://mithcare.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-14 03:34:25', '2019-06-14 03:34:25', '', 0, 'https://mithcare.com/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-06-14 03:55:12', '2019-06-14 03:55:12', '<div class=\"col-md-5\">\n</div>\n<div class=\"col-md-6 col-md-offset-1\"></div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-06-14 10:16:16', '2019-06-14 10:16:16', '', 0, 'https://mithcare.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-06-14 03:55:12', '2019-06-14 03:55:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-06-14 03:55:12', '2019-06-14 03:55:12', '', 0, 'https://mithcare.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-06-14 03:55:11', '2019-06-14 03:55:11', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:55:11\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:55:11\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:55:11\"\n    },\n    \"hestia::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    },\n    \"hestia::hestia_feature_thumbnail\": {\n        \"starter_content\": true,\n        \"value\": \"https://mithcare.com/wp-content/themes/hestia/assets/img/contact.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:54:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '51ca8099-6b18-48f6-9706-92a9abdf9be4', '', '', '2019-06-14 03:55:11', '2019-06-14 03:55:11', '', 0, 'https://mithcare.com/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2019-06-14 03:55:12', '2019-06-14 03:55:12', '<div class=\"col-md-5\"><h3>About Hestia</h3>Need more details? Please check our full documentation for detailed information on how to use Hestia.</div><div class=\"col-md-6 col-md-offset-1\"><img class=\"size-medium alignright\" src=\"https://mithcare.com/wp-content/themes/hestia/assets/img/about-content.png\"/></div>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-14 03:55:12', '2019-06-14 03:55:12', '', 6, 'https://mithcare.com/2019/06/14/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-06-14 03:55:12', '2019-06-14 03:55:12', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-06-14 03:55:12', '2019-06-14 03:55:12', '', 7, 'https://mithcare.com/2019/06/14/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-06-14 03:55:14', '2019-06-14 03:55:14', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2019-06-21 07:43:15', '2019-06-21 07:43:15', '', 0, 'https://mithcare.com/2019/06/14/11/', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-06-14 03:55:15', '2019-06-14 03:55:15', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-06-21 07:43:15', '2019-06-21 07:43:15', '', 0, 'https://mithcare.com/2019/06/14/12/', 4, 'nav_menu_item', '', 0),
(13, 1, '2019-06-14 03:56:39', '2019-06-14 03:56:39', '{\n    \"materialis::header_nav_boxed\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:56:39\"\n    },\n    \"materialis::header_nav_border\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:56:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '99d3e5fc-b613-4e89-b4e6-7cf12f91707f', '', '', '2019-06-14 03:56:39', '2019-06-14 03:56:39', '', 0, 'https://mithcare.com/2019/06/14/99d3e5fc-b613-4e89-b4e6-7cf12f91707f/', 0, 'customize_changeset', '', 0),
(14, 1, '2019-06-14 03:56:48', '2019-06-14 03:56:48', '{\n    \"materialis::header_nav_boxed\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:56:48\"\n    },\n    \"materialis::header_nav_border\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 03:56:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4702bf2-7501-499c-b07d-a85f1385abb2', '', '', '2019-06-14 03:56:48', '2019-06-14 03:56:48', '', 0, 'https://mithcare.com/2019/06/14/c4702bf2-7501-499c-b07d-a85f1385abb2/', 0, 'customize_changeset', '', 0),
(17, 1, '2019-06-14 04:43:00', '2019-06-14 04:43:00', '<div class=\"col-md-5\">\n\n</div>\n<div class=\"col-md-6 col-md-offset-1\"></div>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-14 04:43:00', '2019-06-14 04:43:00', '', 6, 'https://mithcare.com/2019/06/14/6-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-06-14 09:14:23', '2019-06-14 09:14:23', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 04:46:38\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 04:46:38\"\n    },\n    \"medical-way-plus::slider_status\": {\n        \"value\": \"home\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 04:47:39\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:04:09\"\n    },\n    \"medical-way-plus::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:13:09\"\n    },\n    \"site_icon\": {\n        \"value\": 26,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:14:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3a21232-960a-423a-9934-eacc2eda2c31', '', '', '2019-06-14 09:14:23', '2019-06-14 09:14:23', '', 0, 'https://mithcare.com/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2019-06-14 09:05:06', '2019-06-14 09:05:06', 'https://mithcare.com/wp-content/uploads/2019/06/cropped-contact.jpg', 'cropped-contact.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-contact-jpg', '', '', '2019-06-14 09:05:06', '2019-06-14 09:05:06', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-contact.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-06-14 09:05:29', '2019-06-14 09:05:29', 'https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-1.jpg', 'cropped-contact-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-contact-1-jpg', '', '', '2019-06-14 09:05:29', '2019-06-14 09:05:29', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-06-14 09:05:59', '2019-06-14 09:05:59', '', 'mithcare-logo', '', 'inherit', 'open', 'closed', '', 'mithcare-logo', '', '', '2019-06-14 09:05:59', '2019-06-14 09:05:59', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/mithcare-logo.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-06-14 09:06:05', '2019-06-14 09:06:05', 'https://mithcare.com/wp-content/uploads/2019/06/cropped-mithcare-logo.png', 'cropped-mithcare-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-mithcare-logo-png', '', '', '2019-06-14 09:06:05', '2019-06-14 09:06:05', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-mithcare-logo.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-06-14 09:12:15', '2019-06-14 09:12:15', '', 'white2', '', 'inherit', 'open', 'closed', '', 'white2', '', '', '2019-06-14 09:12:15', '2019-06-14 09:12:15', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/white2.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-06-14 09:12:20', '2019-06-14 09:12:20', 'https://mithcare.com/wp-content/uploads/2019/06/cropped-white2.png', 'cropped-white2.png', '', 'inherit', 'open', 'closed', '', 'cropped-white2-png', '', '', '2019-06-14 09:12:20', '2019-06-14 09:12:20', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-white2.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2019-06-14 09:12:37', '2019-06-14 09:12:37', '', 'blue2', '', 'inherit', 'open', 'closed', '', 'blue2', '', '', '2019-06-14 09:12:37', '2019-06-14 09:12:37', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/blue2.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-06-14 09:14:19', '2019-06-14 09:14:19', 'https://mithcare.com/wp-content/uploads/2019/06/cropped-blue2.png', 'cropped-blue2.png', '', 'inherit', 'open', 'closed', '', 'cropped-blue2-png', '', '', '2019-06-14 09:14:19', '2019-06-14 09:14:19', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-blue2.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-06-14 09:14:45', '2019-06-14 09:14:45', '', 'cropped-contact-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-contact-2-jpg', '', '', '2019-06-14 09:14:45', '2019-06-14 09:14:45', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-06-14 09:14:54', '2019-06-14 09:14:54', '{\n    \"medical-way-plus::header_image\": {\n        \"value\": \"https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:14:54\"\n    },\n    \"medical-way-plus::header_image_data\": {\n        \"value\": {\n            \"url\": \"https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-2.jpg\",\n            \"thumbnail_url\": \"https://mithcare.com/wp-content/uploads/2019/06/cropped-contact-2.jpg\",\n            \"timestamp\": 1560503686365,\n            \"attachment_id\": 27,\n            \"width\": 1920,\n            \"height\": 401\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:14:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a535b312-696a-4610-8ee7-54a49278d6e7', '', '', '2019-06-14 09:14:54', '2019-06-14 09:14:54', '', 0, 'https://mithcare.com/2019/06/14/a535b312-696a-4610-8ee7-54a49278d6e7/', 0, 'customize_changeset', '', 0),
(29, 1, '2019-06-14 09:17:13', '2019-06-14 09:17:13', '{\n    \"medical-way-plus::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:15:48\"\n    },\n    \"medical-way-plus::show_title\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:15:48\"\n    },\n    \"medical-way-plus::show_tagline\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:15:48\"\n    },\n    \"medical-way-plus::top_address\": {\n        \"value\": \"Thailand\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:16:48\"\n    },\n    \"medical-way-plus::top_phone\": {\n        \"value\": \"02-123-4567\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:16:48\"\n    },\n    \"medical-way-plus::show_social_icons\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:17:13\"\n    },\n    \"medical-way-plus::enable_sticky\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:17:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34835455-4063-4c9f-9c0c-a88faf3664b6', '', '', '2019-06-14 09:17:13', '2019-06-14 09:17:13', '', 0, 'https://mithcare.com/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2019-06-14 09:19:31', '2019-06-14 09:19:31', '{\n    \"medical-way-plus::global_layout\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:18:48\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:18:48\"\n    },\n    \"medical-way-plus::nav_menu_locations[top]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:19:27\"\n    },\n    \"medical-way-plus::nav_menu_locations[social]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:19:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4cea11ec-90b7-40e7-8043-e9f26311c573', '', '', '2019-06-14 09:19:31', '2019-06-14 09:19:31', '', 0, 'https://mithcare.com/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2019-06-14 09:22:42', '2019-06-14 09:22:42', '{\n    \"medical-way-plus::slider_status\": {\n        \"value\": \"home\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:20:27\"\n    },\n    \"medical-way-plus::slider_page_1\": {\n        \"value\": \"6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:20:27\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Treatments for Everyone\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:22:42\"\n    },\n    \"medical-way-plus::nav_menu_locations[top]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:22:42\"\n    },\n    \"medical-way-plus::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:22:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9a6166ba-aad2-4fc0-98e0-e546437a01f6', '', '', '2019-06-14 09:22:42', '2019-06-14 09:22:42', '', 0, 'https://mithcare.com/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2019-06-14 09:27:02', '2019-06-14 09:27:02', '<!-- wp:paragraph -->\n<p>Mauris sagittis mauris sed mauris egestas semper. Quisque convallis id ligula ac faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Mauris sagittis mauris', '', 'trash', 'closed', 'closed', '', 'mauris-sagittis-mauris__trashed', '', '', '2019-06-14 10:05:56', '2019-06-14 10:05:56', '', 0, 'https://mithcare.com/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-06-14 09:26:00', '2019-06-14 09:26:00', '', 'main-one', '', 'inherit', 'open', 'closed', '', 'main-one', '', '', '2019-06-14 09:26:00', '2019-06-14 09:26:00', '', 32, 'https://mithcare.com/wp-content/uploads/2019/06/main-one.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2019-06-14 09:27:02', '2019-06-14 09:27:02', '<!-- wp:paragraph -->\n<p>Mauris sagittis mauris sed mauris egestas semper. Quisque convallis id ligula ac faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Mauris sagittis mauris', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-06-14 09:27:02', '2019-06-14 09:27:02', '', 32, 'https://mithcare.com/2019/06/14/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-06-14 09:27:22', '2019-06-14 09:27:22', '{\n    \"medical-way-plus::slider_page_1\": {\n        \"value\": \"32\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:27:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b1280b66-a180-4e8e-9add-a21b3ede1a80', '', '', '2019-06-14 09:27:22', '2019-06-14 09:27:22', '', 0, 'https://mithcare.com/2019/06/14/b1280b66-a180-4e8e-9add-a21b3ede1a80/', 0, 'customize_changeset', '', 0),
(36, 1, '2019-06-14 09:28:57', '2019-06-14 09:28:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id mauris magna.<br></p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet', '', 'trash', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet__trashed', '', '', '2019-06-14 10:05:54', '2019-06-14 10:05:54', '', 0, 'https://mithcare.com/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-06-14 09:28:46', '2019-06-14 09:28:46', '', 'main-two', '', 'inherit', 'open', 'closed', '', 'main-two', '', '', '2019-06-14 09:28:46', '2019-06-14 09:28:46', '', 36, 'https://mithcare.com/wp-content/uploads/2019/06/main-two.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2019-06-14 09:28:57', '2019-06-14 09:28:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id mauris magna.<br></p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-06-14 09:28:57', '2019-06-14 09:28:57', '', 36, 'https://mithcare.com/2019/06/14/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-06-14 09:50:11', '2019-06-14 09:50:11', '{\n    \"medical-way-plus::breadcrumb_type\": {\n        \"value\": \"simple\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:33:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b40ebac6-68f7-4ff8-a9ef-0caea0e8c002', '', '', '2019-06-14 09:50:11', '2019-06-14 09:50:11', '', 0, 'https://mithcare.com/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2019-06-14 10:04:20', '2019-06-14 10:04:20', '<!-- wp:paragraph -->\n<p>\n\nVivamus sit amet nunc non erat ullamcorper dignissim in ut velit. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {\"columns\":3,\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide has-3-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/progress-1807543_1280-570x380.jpg\",\"id\":46} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/progress-1807543_1280-570x380.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/emergency-services/\">Emergency Services</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Etiam consectetur odio non lacus eleifend egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/the-device-1822457_1280-570x380.jpg\",\"id\":47} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/the-device-1822457_1280-570x380.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/rapid-rescue/\">Rapid Rescue</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In non velit leo. In hac habitasse platea dictumst. Vivamus enim est, feugiat aliquet nisi vitae, pharetra molestie ex. Nam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg\",\"id\":48} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/in-patient-services/\">In-patient Services</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Our Services – Vivamus Sit Amet Nunc Non', '', 'trash', 'closed', 'closed', '', 'our-services-vivamus-sit-amet-nunc-non__trashed', '', '', '2019-06-14 10:05:45', '2019-06-14 10:05:45', '', 0, 'https://mithcare.com/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-06-14 09:50:53', '2019-06-14 09:50:53', '<div class=\"col-md-5\">\n</div>\n<div class=\"col-md-6 col-md-offset-1\"></div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-14 09:50:53', '2019-06-14 09:50:53', '', 6, 'https://mithcare.com/2019/06/14/6-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-06-14 09:51:32', '2019-06-14 09:51:32', '<div class=\"col-md-5\">\n</div>\n<div class=\"col-md-6 col-md-offset-1\"></div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-14 09:51:32', '2019-06-14 09:51:32', '', 6, 'https://mithcare.com/2019/06/14/6-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-06-14 09:53:07', '2019-06-14 09:53:07', '{\n    \"medical-way-plus::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::slider_button_1\": {\n        \"value\": \"Go to Page\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::slider_url_1\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::slider_page_2\": {\n        \"value\": \"36\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::slider_button_2\": {\n        \"value\": \"Go to Page\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    },\n    \"medical-way-plus::slider_url_2\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 09:53:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e598a77-05d2-4b24-881b-65e1832b3adf', '', '', '2019-06-14 09:53:07', '2019-06-14 09:53:07', '', 0, 'https://mithcare.com/2019/06/14/5e598a77-05d2-4b24-881b-65e1832b3adf/', 0, 'customize_changeset', '', 0),
(44, 1, '2019-06-14 09:56:09', '2019-06-14 09:56:09', '', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-06-14 10:20:09', '2019-06-14 10:20:09', '', 0, 'https://mithcare.com/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-06-14 09:58:20', '2019-06-14 09:58:20', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover -->\n<div class=\"wp-block-cover has-background-dim\"><div class=\"wp-block-cover__inner-container\"></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/emergency-services/\">Emergency Services</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Etiam consectetur odio non lacus eleifend egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover -->\n<div class=\"wp-block-cover has-background-dim\"><div class=\"wp-block-cover__inner-container\"></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/rapid-rescue/\">Rapid Rescue</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In non velit leo. In hac habitasse platea dictumst. Vivamus enim est, feugiat aliquet nisi vitae, pharetra molestie ex. Nam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Our Services – Vivamus Sit Amet Nunc Non', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-06-14 09:58:20', '2019-06-14 09:58:20', '', 40, 'https://mithcare.com/2019/06/14/40-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-06-14 10:01:09', '2019-06-14 10:01:09', '', 'progress-1807543_1280-570x380', '', 'inherit', 'open', 'closed', '', 'progress-1807543_1280-570x380', '', '', '2019-06-14 10:01:09', '2019-06-14 10:01:09', '', 40, 'https://mithcare.com/wp-content/uploads/2019/06/progress-1807543_1280-570x380.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-06-14 10:01:20', '2019-06-14 10:01:20', '', 'the-device-1822457_1280-570x380', '', 'inherit', 'open', 'closed', '', 'the-device-1822457_1280-570x380', '', '', '2019-06-14 10:01:20', '2019-06-14 10:01:20', '', 40, 'https://mithcare.com/wp-content/uploads/2019/06/the-device-1822457_1280-570x380.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-06-14 10:02:56', '2019-06-14 10:02:56', '', 'hospital-ward-1024x683', '', 'inherit', 'open', 'closed', '', 'hospital-ward-1024x683', '', '', '2019-06-14 10:02:56', '2019-06-14 10:02:56', '', 40, 'https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-06-14 10:04:20', '2019-06-14 10:04:20', '<!-- wp:paragraph -->\n<p>\n\nVivamus sit amet nunc non erat ullamcorper dignissim in ut velit. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {\"columns\":3,\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide has-3-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/progress-1807543_1280-570x380.jpg\",\"id\":46} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/progress-1807543_1280-570x380.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/emergency-services/\">Emergency Services</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Etiam consectetur odio non lacus eleifend egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/the-device-1822457_1280-570x380.jpg\",\"id\":47} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/the-device-1822457_1280-570x380.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/rapid-rescue/\">Rapid Rescue</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In non velit leo. In hac habitasse platea dictumst. Vivamus enim est, feugiat aliquet nisi vitae, pharetra molestie ex. Nam...</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:cover {\"url\":\"https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg\",\"id\":48} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(https://mithcare.com/wp-content/uploads/2019/06/hospital-ward-1024x683.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><a href=\"https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/our-services-vivamus-sit-amet-nunc-non/in-patient-services/\">In-patient Services</a></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Our Services – Vivamus Sit Amet Nunc Non', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-06-14 10:04:20', '2019-06-14 10:04:20', '', 40, 'https://mithcare.com/2019/06/14/40-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-06-14 10:07:04', '2019-06-14 10:07:04', '', 'Our services', '', 'trash', 'closed', 'closed', '', 'service__trashed', '', '', '2019-06-21 03:08:45', '2019-06-21 03:08:45', '', 0, 'https://mithcare.com/?page_id=52', 0, 'page', '', 0),
(54, 1, '2019-06-14 10:07:04', '2019-06-14 10:07:04', '', 'Service', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-06-14 10:07:04', '2019-06-14 10:07:04', '', 52, 'https://mithcare.com/2019/06/14/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-06-14 10:09:35', '2019-06-14 10:09:35', '<!-- wp:paragraph -->\n<p>sfsfsfsfsfs</p>\n<!-- /wp:paragraph -->', 'Department', '', 'trash', 'closed', 'closed', '', 'department__trashed', '', '', '2019-06-21 03:08:44', '2019-06-21 03:08:44', '', 0, 'https://mithcare.com/?page_id=55', 0, 'page', '', 0),
(57, 1, '2019-06-14 10:09:35', '2019-06-14 10:09:35', '', 'Department', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-06-14 10:09:35', '2019-06-14 10:09:35', '', 55, 'https://mithcare.com/2019/06/14/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-06-14 10:09:42', '2019-06-14 10:09:42', '<!-- wp:paragraph -->\n<p>sfsfsfsfsfs</p>\n<!-- /wp:paragraph -->', 'Department', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-06-14 10:09:42', '2019-06-14 10:09:42', '', 55, 'https://mithcare.com/2019/06/14/55-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-06-14 10:11:00', '2019-06-14 10:11:00', '{\n    \"medical-way-plus::services_page\": {\n        \"value\": \"52\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 10:11:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '994c960f-6b29-4b01-8063-b107d009b489', '', '', '2019-06-14 10:11:00', '2019-06-14 10:11:00', '', 0, 'https://mithcare.com/2019/06/14/994c960f-6b29-4b01-8063-b107d009b489/', 0, 'customize_changeset', '', 0),
(60, 1, '2019-06-14 10:11:30', '2019-06-14 10:11:30', '{\n    \"medical-way-plus::services_link\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-14 10:11:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18c6e83e-24db-43e6-b440-586e1b631f99', '', '', '2019-06-14 10:11:30', '2019-06-14 10:11:30', '', 0, 'https://mithcare.com/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2019-06-14 10:17:10', '2019-06-14 10:17:10', '', 'Our services', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-06-14 10:17:10', '2019-06-14 10:17:10', '', 52, 'https://mithcare.com/2019/06/14/52-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-06-14 10:17:33', '2019-06-14 10:17:33', '', 'Our team', '', 'trash', 'closed', 'closed', '', 'our-team__trashed', '', '', '2019-06-21 03:08:45', '2019-06-21 03:08:45', '', 0, 'https://mithcare.com/?page_id=62', 0, 'page', '', 0),
(64, 1, '2019-06-14 10:17:33', '2019-06-14 10:17:33', '', 'Our team', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-06-14 10:17:33', '2019-06-14 10:17:33', '', 62, 'https://mithcare.com/2019/06/14/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-06-14 10:17:48', '2019-06-14 10:17:48', '', 'Our department', '', 'trash', 'closed', 'closed', '', 'our-department__trashed', '', '', '2019-06-21 03:08:45', '2019-06-21 03:08:45', '', 0, 'https://mithcare.com/?page_id=65', 0, 'page', '', 0),
(67, 1, '2019-06-14 10:17:48', '2019-06-14 10:17:48', '', 'Our department', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-06-14 10:17:48', '2019-06-14 10:17:48', '', 65, 'https://mithcare.com/2019/06/14/65-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-06-21 03:10:34', '2019-06-21 03:10:34', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id mauris magna.\n\n</p>\n<!-- /wp:paragraph -->', 'Slide 1', '', 'publish', 'closed', 'closed', '', 'main-one', '', '', '2019-06-21 03:15:12', '2019-06-21 03:15:12', '', 0, 'https://mithcare.com/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-06-21 03:10:34', '2019-06-21 03:10:34', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id mauris magna.\n\n</p>\n<!-- /wp:paragraph -->', 'Lorem ipsum dolor sit amet', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-06-21 03:10:34', '2019-06-21 03:10:34', '', 71, 'https://mithcare.com/2019/06/21/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-06-21 03:11:55', '2019-06-21 03:11:55', '{\n    \"medical-way-plus::departments_page\": {\n        \"value\": \"6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:11:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '681797c0-3dc1-4797-8bf7-dff9d30dfa89', '', '', '2019-06-21 03:11:55', '2019-06-21 03:11:55', '', 0, 'https://mithcare.com/2019/06/21/681797c0-3dc1-4797-8bf7-dff9d30dfa89/', 0, 'customize_changeset', '', 0),
(74, 1, '2019-06-21 03:13:05', '2019-06-21 03:13:05', '{\n    \"medical-way-plus::show_title\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:13:00\"\n    },\n    \"medical-way-plus::slider_page_1\": {\n        \"value\": \"6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:13:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ac6a684-74b7-4c97-9621-4cb8efea8206', '', '', '2019-06-21 03:13:05', '2019-06-21 03:13:05', '', 0, 'https://mithcare.com/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2019-06-21 03:13:49', '2019-06-21 03:13:49', '{\n    \"medical-way-plus::slider_page_1\": {\n        \"value\": \"71\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:13:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ef211c3-d370-4e37-a5de-3401c82b791b', '', '', '2019-06-21 03:13:49', '2019-06-21 03:13:49', '', 0, 'https://mithcare.com/2019/06/21/8ef211c3-d370-4e37-a5de-3401c82b791b/', 0, 'customize_changeset', '', 0),
(76, 1, '2019-06-21 03:15:12', '2019-06-21 03:15:12', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id mauris magna.\n\n</p>\n<!-- /wp:paragraph -->', 'Slide 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-06-21 03:15:12', '2019-06-21 03:15:12', '', 71, 'https://mithcare.com/2019/06/21/71-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-06-21 03:16:01', '2019-06-21 03:16:01', '<!-- wp:paragraph -->\n<p>\n\nMauris sagittis mauris sed mauris egestas semper. Quisque convallis id ligula ac faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Slide 2', '', 'publish', 'closed', 'closed', '', 'main-two', '', '', '2019-06-21 03:16:17', '2019-06-21 03:16:17', '', 0, 'https://mithcare.com/?page_id=77', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2019-06-21 03:16:01', '2019-06-21 03:16:01', '<!-- wp:paragraph -->\n<p>\n\nMauris sagittis mauris sed mauris egestas semper. Quisque convallis id ligula ac faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Slide 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-06-21 03:16:01', '2019-06-21 03:16:01', '', 77, 'https://mithcare.com/2019/06/21/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-06-21 03:16:54', '0000-00-00 00:00:00', '{\n    \"medical-way-plus::slider_url_1\": {\n        \"value\": \"/main-one\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:16:54\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ef3e5793-e992-480d-bc6a-f6e0e03f0406', '', '', '2019-06-21 03:16:54', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=79', 0, 'customize_changeset', '', 0),
(80, 1, '2019-06-21 03:17:29', '2019-06-21 03:17:29', '{\n    \"medical-way-plus::slider_url_1\": {\n        \"value\": \"/main-one\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:17:29\"\n    },\n    \"medical-way-plus::slider_page_2\": {\n        \"value\": \"77\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:17:29\"\n    },\n    \"medical-way-plus::slider_url_2\": {\n        \"value\": \"/main-two\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:17:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '566739f1-498d-43f7-b93d-935516913528', '', '', '2019-06-21 03:17:29', '2019-06-21 03:17:29', '', 0, 'https://mithcare.com/2019/06/21/566739f1-498d-43f7-b93d-935516913528/', 0, 'customize_changeset', '', 0),
(81, 1, '2019-06-21 03:18:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 03:18:14', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=81', 0, 'post', '', 0),
(82, 1, '2019-06-21 03:21:45', '2019-06-21 03:21:45', '<!-- wp:paragraph -->\n<p>\n\nVivamus sit amet nunc non erat ullamcorper dignissim in ut velit. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2019-06-21 03:21:45', '2019-06-21 03:21:45', '', 0, 'https://mithcare.com/?page_id=82', 0, 'page', '', 0),
(83, 1, '2019-06-21 03:21:45', '2019-06-21 03:21:45', '<!-- wp:paragraph -->\n<p>\n\nVivamus sit amet nunc non erat ullamcorper dignissim in ut velit. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Services', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-06-21 03:21:45', '2019-06-21 03:21:45', '', 82, 'https://mithcare.com/2019/06/21/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-06-21 03:23:55', '2019-06-21 03:23:55', '<!-- wp:paragraph -->\n<p>\n\nEtiam consectetur odio non lacus eleifend egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam et hendrerit libero.\n\n</p>\n<!-- /wp:paragraph -->', 'Emergency Services', '', 'publish', 'closed', 'closed', '', 'emergency-services', '', '', '2019-06-21 03:24:22', '2019-06-21 03:24:22', '', 82, 'https://mithcare.com/?page_id=84', 0, 'page', '', 0),
(85, 1, '2019-06-21 03:22:14', '2019-06-21 03:22:14', '{\n    \"medical-way-plus::services_page\": {\n        \"value\": \"82\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:22:14\"\n    },\n    \"medical-way-plus::services_link\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:22:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a08ce35-dde1-4faa-96c2-497bdb2da250', '', '', '2019-06-21 03:22:14', '2019-06-21 03:22:14', '', 0, 'https://mithcare.com/2019/06/21/2a08ce35-dde1-4faa-96c2-497bdb2da250/', 0, 'customize_changeset', '', 0),
(86, 1, '2019-06-21 03:23:55', '2019-06-21 03:23:55', '<!-- wp:paragraph -->\n<p>\n\nEtiam consectetur odio non lacus eleifend egestas. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam et hendrerit libero.\n\n</p>\n<!-- /wp:paragraph -->', 'Emergency Services', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-06-21 03:23:55', '2019-06-21 03:23:55', '', 84, 'https://mithcare.com/2019/06/21/84-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-06-21 03:25:15', '2019-06-21 03:25:15', '{\n    \"medical-way-plus::services_page\": {\n        \"value\": \"82\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:25:15\"\n    },\n    \"medical-way-plus::services_link\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:25:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a7d3042c-1086-466d-85c9-14342a22bc82', '', '', '2019-06-21 03:25:15', '2019-06-21 03:25:15', '', 0, 'https://mithcare.com/2019/06/21/a7d3042c-1086-466d-85c9-14342a22bc82/', 0, 'customize_changeset', '', 0),
(88, 1, '2019-06-21 03:26:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-21 03:26:21', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?page_id=88', 0, 'page', '', 0),
(89, 1, '2019-06-21 03:28:13', '2019-06-21 03:28:13', '<!-- wp:paragraph -->\n<p>\n\nSuspendisse interdum libero ligula, et sollicitudin est facilisis sit amet. Phasellus viverra maximus urna eget faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Meet The Medical Way Specialists Doctors', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2019-06-21 03:28:41', '2019-06-21 03:28:41', '', 0, 'https://mithcare.com/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-06-21 03:28:13', '2019-06-21 03:28:13', '<!-- wp:paragraph -->\n<p>\n\nSuspendisse interdum libero ligula, et sollicitudin est facilisis sit amet. Phasellus viverra maximus urna eget faucibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Meet The Medical Way Specialists Doctors', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-06-21 03:28:13', '2019-06-21 03:28:13', '', 89, 'https://mithcare.com/2019/06/21/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-06-21 03:31:57', '2019-06-21 03:31:57', '<!-- wp:paragraph -->\n<p><strong>Senior Gynecologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur nibh ipsum, commodo sed dui id, varius sagittis tortor.</p>\n<!-- /wp:paragraph -->', 'Dr. Kathy Lewis', '', 'publish', 'closed', 'closed', '', 'dr-kathy-lewis', '', '', '2019-06-21 03:38:40', '2019-06-21 03:38:40', '', 89, 'https://mithcare.com/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-06-21 03:31:22', '2019-06-21 03:31:22', '', '44525053_316593339159262_5904430350859239424_n', '', 'inherit', 'open', 'closed', '', '44525053_316593339159262_5904430350859239424_n', '', '', '2019-06-21 03:31:22', '2019-06-21 03:31:22', '', 91, 'https://mithcare.com/wp-content/uploads/2019/06/44525053_316593339159262_5904430350859239424_n.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2019-06-21 03:31:57', '2019-06-21 03:31:57', '<!-- wp:image {\"id\":92} -->\n<figure class=\"wp-block-image\"><img src=\"https://mithcare.com/wp-content/uploads/2019/06/44525053_316593339159262_5904430350859239424_n.png\" alt=\"\" class=\"wp-image-92\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Senior Gynecologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur nibh ipsum, commodo sed dui id, varius sagittis tortor.</p>\n<!-- /wp:paragraph -->', 'Dr. Kathy Lewis', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-06-21 03:31:57', '2019-06-21 03:31:57', '', 91, 'https://mithcare.com/2019/06/21/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-06-21 03:33:17', '2019-06-21 03:33:17', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2019-06-21 07:43:15', '2019-06-21 07:43:15', '', 0, 'https://mithcare.com/?p=94', 3, 'nav_menu_item', '', 0),
(95, 1, '2019-06-21 03:34:46', '2019-06-21 03:34:46', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2019-06-21 07:43:15', '2019-06-21 07:43:15', '', 0, 'https://mithcare.com/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2019-06-21 03:37:39', '2019-06-21 03:37:39', '{\n    \"medical-way-plus::departments_page\": {\n        \"value\": \"89\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:37:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cea5525f-5e80-4a29-91f8-fa3a75caa7e5', '', '', '2019-06-21 03:37:39', '2019-06-21 03:37:39', '', 0, 'https://mithcare.com/2019/06/21/cea5525f-5e80-4a29-91f8-fa3a75caa7e5/', 0, 'customize_changeset', '', 0),
(97, 1, '2019-06-21 03:37:56', '2019-06-21 03:37:56', '{\n    \"medical-way-plus::team_page\": {\n        \"value\": \"89\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:37:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6087fe7-d3cc-4686-bdaa-a4bd96781467', '', '', '2019-06-21 03:37:56', '2019-06-21 03:37:56', '', 0, 'https://mithcare.com/2019/06/21/e6087fe7-d3cc-4686-bdaa-a4bd96781467/', 0, 'customize_changeset', '', 0),
(98, 1, '2019-06-21 03:38:00', '2019-06-21 03:38:00', '{\n    \"medical-way-plus::member_link\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:38:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7c1c77ba-1dca-4c40-a27a-4314ab6fe05f', '', '', '2019-06-21 03:38:00', '2019-06-21 03:38:00', '', 0, 'https://mithcare.com/2019/06/21/7c1c77ba-1dca-4c40-a27a-4314ab6fe05f/', 0, 'customize_changeset', '', 0),
(99, 1, '2019-06-21 03:38:40', '2019-06-21 03:38:40', '<!-- wp:paragraph -->\n<p><strong>Senior Gynecologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur nibh ipsum, commodo sed dui id, varius sagittis tortor.</p>\n<!-- /wp:paragraph -->', 'Dr. Kathy Lewis', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-06-21 03:38:40', '2019-06-21 03:38:40', '', 91, 'https://mithcare.com/2019/06/21/91-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-06-21 03:42:26', '2019-06-21 03:42:26', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-team-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:42:26\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:40:55\"\n    },\n    \"widget_medical-way-contact[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjU6IkhlbGxvIjtzOjE3OiJjb250YWN0X3Nob3J0Y29kZSI7czowOiIiO3M6MTI6ImNvbnRhY3RfcGFnZSI7aTo4MjtzOjY6ImJnX3BpYyI7czowOiIiO30=\",\n            \"title\": \"Hello\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f86d8f32ab08de3b536df2907754f8d1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:40:55\"\n    },\n    \"widget_medical-way-departments[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:41:55\"\n    },\n    \"widget_medical-way-team[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjk6InRlYW1fcGFnZSI7aTo4OTtzOjExOiJwb3N0X251bWJlciI7aTozO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"763b8c0c13c90d16ddc3b495599b1cc6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:42:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60518899-9426-4110-a1e6-c730e6fb1218', '', '', '2019-06-21 03:42:26', '2019-06-21 03:42:26', '', 0, 'https://mithcare.com/?p=100', 0, 'customize_changeset', '', 0),
(101, 1, '2019-06-21 03:49:55', '2019-06-21 03:49:55', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-departments-4\",\n            \"medical-way-team-3\",\n            \"medical-way-contact-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:46:28\"\n    },\n    \"widget_medical-way-cta[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjg6ImN0YV9wYWdlIjtpOjg5O3M6MTE6ImJ1dHRvbl90ZXh0IjtzOjk6IkZpbmQgTW9yZSI7czoxMDoiYnV0dG9uX3VybCI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0cd99ec2b0db79da4391ea81cd895b44\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:42:55\"\n    },\n    \"widget_medical-way-departments[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxNToiZGVwYXJ0bWVudF9wYWdlIjtpOjgyO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjA7czoxNToiaW1hZ2VfYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6OToiaXRlbV9pZF8xIjtpOjg0O3M6OToiaXRlbV9pZF8yIjtpOjA7czo5OiJpdGVtX2lkXzMiO2k6MDtzOjk6Iml0ZW1faWRfNCI7aTowO3M6OToiaXRlbV9pZF81IjtpOjA7czo5OiJpdGVtX2lkXzYiO2k6MDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"691e00f13c121fa41eb90f16a58ca352\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:45:28\"\n    },\n    \"widget_medical-way-departments[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxNToiZGVwYXJ0bWVudF9wYWdlIjtpOjg5O3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjA7czoxNToiaW1hZ2VfYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6OToiaXRlbV9pZF8xIjtpOjA7czo5OiJpdGVtX2lkXzIiO2k6MDtzOjk6Iml0ZW1faWRfMyI7aTowO3M6OToiaXRlbV9pZF80IjtpOjA7czo5OiJpdGVtX2lkXzUiO2k6MDtzOjk6Iml0ZW1faWRfNiI7aTowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ad348d9b3b22c27e79f6dcb5de7d7fd7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:45:28\"\n    },\n    \"widget_medical-way-contact[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjE3OiJjb250YWN0X3Nob3J0Y29kZSI7czowOiIiO3M6MTI6ImNvbnRhY3RfcGFnZSI7aTo4MjtzOjY6ImJnX3BpYyI7czowOiIiO30=\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"32e9527bf16f86d6b4214f6de6c82b68\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:46:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7a0286b-5a04-4d5b-a1c4-c0ef3eee6931', '', '', '2019-06-21 03:49:55', '2019-06-21 03:49:55', '', 0, 'https://mithcare.com/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2019-06-21 03:50:07', '2019-06-21 03:50:07', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"sidebars_widgets[footer-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"sidebars_widgets[footer-4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"widget_media_audio[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo3OiJwcmVsb2FkIjtzOjQ6Im5vbmUiO3M6NDoibG9vcCI7YjowO3M6MzoibXAzIjtzOjA6IiI7czozOiJvZ2ciO3M6MDoiIjtzOjQ6ImZsYWMiO3M6MDoiIjtzOjM6Im00YSI7czowOiIiO3M6Mzoid2F2IjtzOjA6IiI7czoxMzoiYXR0YWNobWVudF9pZCI7aTowO3M6MzoidXJsIjtzOjA6IiI7czo1OiJ0aXRsZSI7czozOiJ3d3ciO30=\",\n            \"title\": \"www\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5fcf3e0cc142c735844b1cc0f7a0e8a7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"widget_pages[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:17\"\n    },\n    \"widget_medical-way-services[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxMjoic2VydmljZV9wYWdlIjtpOjgyO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjA7czo5OiJpdGVtX2lkXzEiO2k6ODQ7czo5OiJpdGVtX2lkXzIiO2k6MDtzOjk6Iml0ZW1faWRfMyI7aTowO3M6OToiaXRlbV9pZF80IjtpOjA7czo5OiJpdGVtX2lkXzUiO2k6MDtzOjk6Iml0ZW1faWRfNiI7aTowO3M6MTE6ImFwcG9pbnRtZW50IjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"999be46ef99fed90798653ba8a3abb30\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 03:49:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9552c55-6e40-48ca-8b1b-489d7eba2005', '', '', '2019-06-21 03:50:07', '2019-06-21 03:50:07', '', 0, 'https://mithcare.com/?p=102', 0, 'customize_changeset', '', 0),
(103, 1, '2019-06-21 05:50:39', '2019-06-21 05:50:39', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-contact-6\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:39\"\n    },\n    \"widget_archives[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:07\"\n    },\n    \"widget_media_audio[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:07\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6MTI6ImhpZXJhcmNoaWNhbCI7aToxO3M6ODoiZHJvcGRvd24iO2k6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f0e0c5ce9222dd980a0dd892cab8928f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:07\"\n    },\n    \"widget_medical-way-contact[6]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:07\"\n    },\n    \"widget_medical-way-cta[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:39\"\n    },\n    \"widget_medical-way-departments[7]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:39\"\n    },\n    \"widget_medical-way-facts[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czo0OiJGYWN0IjtzOjg6Imljb25fb25lIjtzOjE2OiJmYS1mb2xkZXItb3Blbi1vIjtzOjk6ImNvdW50X29uZSI7aTowO3M6ODoidGV4dF9vbmUiO3M6MDoiIjtzOjg6Imljb25fdHdvIjtzOjEwOiJmYS1jbG9jay1vIjtzOjk6ImNvdW50X3R3byI7aTowO3M6ODoidGV4dF90d28iO3M6MDoiIjtzOjEwOiJpY29uX3RocmVlIjtzOjg6ImZhLXVzZXJzIjtzOjExOiJjb3VudF90aHJlZSI7aTowO3M6MTA6InRleHRfdGhyZWUiO3M6MDoiIjtzOjk6Imljb25fZm91ciI7czo5OiJmYS10cm9waHkiO3M6MTA6ImNvdW50X2ZvdXIiO2k6MDtzOjk6InRleHRfZm91ciI7czowOiIiO3M6NjoiYmdfcGljIjtzOjA6IiI7fQ==\",\n            \"title\": \"Fact\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"10733c4ad84d357e599f0ce071f134eb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:50:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f93bc2f1-0034-4612-a2fc-a8fdf4685826', '', '', '2019-06-21 05:50:39', '2019-06-21 05:50:39', '', 0, 'https://mithcare.com/?p=103', 0, 'customize_changeset', '', 0),
(104, 1, '2019-06-21 05:51:43', '2019-06-21 05:51:43', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-contact-6\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-team-5\",\n            \"medical-way-testimonial-3\",\n            \"nav_menu-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:43\"\n    },\n    \"widget_medical-way-latest-news[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjQ6Ik5ld3MiO3M6MTM6InBvc3RfY2F0ZWdvcnkiO2k6MDtzOjE4OiJleGNsdWRlX2NhdGVnb3JpZXMiO3M6MDoiIjtzOjExOiJwb3N0X251bWJlciI7aTozO3M6MTE6InBvc3RfY29sdW1uIjtpOjM7czoxNDoiZXhjZXJwdF9sZW5ndGgiO2k6MjA7czoxNToiZGlzYWJsZV9leGNlcnB0IjtpOjA7czoxNDoiZGlzYWJsZV9idXR0b24iO2k6MDt9\",\n            \"title\": \"News\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"699218c15f4260e4203b7ef92d78b71d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:07\"\n    },\n    \"widget_medical-way-services[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:07\"\n    },\n    \"widget_medical-way-social[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:43\"\n    },\n    \"widget_medical-way-team[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:43\"\n    },\n    \"widget_medical-way-testimonial[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:43\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:51:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0241be06-e94b-4947-b225-27e50a1ff56f', '', '', '2019-06-21 05:51:43', '2019-06-21 05:51:43', '', 0, 'https://mithcare.com/?p=104', 0, 'customize_changeset', '', 0),
(105, 1, '2019-06-21 06:03:08', '2019-06-21 06:03:08', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"nav_menu-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:59:52\"\n    },\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-contact-6\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-team-5\",\n            \"medical-way-testimonial-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:59:52\"\n    },\n    \"widget_medical-way-testimonial[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjExOiJUZXN0aW1vbmlhbCI7czoxNjoidGVzdGltb25pYWxfcGFnZSI7aTo4MjtzOjE4OiJ0cmFuc2l0aW9uX2VmZmVjdHMiO3M6MTA6InNjcm9sbEhvcnoiO3M6MTY6InRyYW5zaXRpb25fZGVsYXkiO2k6MztzOjE5OiJ0cmFuc2l0aW9uX2R1cmF0aW9uIjtpOjM7czoxMDoic2hvd19hcnJvdyI7aToxO3M6MTA6InNob3dfcGFnZXIiO2k6MTtzOjE1OiJlbmFibGVfYXV0b3BsYXkiO2k6MTtzOjY6ImJnX3BpYyI7czowOiIiO30=\",\n            \"title\": \"Testimonial\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"8e9c95c0e365c7fd2eb018a47d8b043f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:00:29\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjQ6Ik1lbnUiO3M6ODoibmF2X21lbnUiO2k6Mjt9\",\n            \"title\": \"Menu\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"031d18f3d34d4abf455760c984295799\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 05:59:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ffc2c022-a0f5-4a61-824a-bd964ced999f', '', '', '2019-06-21 06:03:08', '2019-06-21 06:03:08', '', 0, 'https://mithcare.com/?p=105', 0, 'customize_changeset', '', 0),
(106, 1, '2019-06-21 06:08:01', '2019-06-21 06:08:01', '<!-- wp:paragraph -->\n<p>In non velit leo. In hac habitasse platea dictumst. Vivamus enim est, feugiat aliquet nisi vitae, pharetra molestie ex. Nam </p>\n<!-- /wp:paragraph -->', 'Rapid Rescue', '', 'publish', 'closed', 'closed', '', 'rapid-rescue', '', '', '2019-06-21 06:08:01', '2019-06-21 06:08:01', '', 82, 'https://mithcare.com/?page_id=106', 0, 'page', '', 0),
(107, 1, '2019-06-21 06:06:47', '2019-06-21 06:06:47', '', 'hospice-768x512', '', 'inherit', 'open', 'closed', '', 'hospice-768x512', '', '', '2019-06-21 06:06:47', '2019-06-21 06:06:47', '', 106, 'https://mithcare.com/wp-content/uploads/2019/06/hospice-768x512.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-06-21 06:06:48', '2019-06-21 06:06:48', '', 'nurse-baby-570x380', '', 'inherit', 'open', 'closed', '', 'nurse-baby-570x380', '', '', '2019-06-21 06:06:48', '2019-06-21 06:06:48', '', 106, 'https://mithcare.com/wp-content/uploads/2019/06/nurse-baby-570x380.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-06-21 06:08:01', '2019-06-21 06:08:01', '<!-- wp:paragraph -->\n<p>In non velit leo. In hac habitasse platea dictumst. Vivamus enim est, feugiat aliquet nisi vitae, pharetra molestie ex. Nam </p>\n<!-- /wp:paragraph -->', 'Rapid Rescue', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-06-21 06:08:01', '2019-06-21 06:08:01', '', 106, 'https://mithcare.com/2019/06/21/106-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-06-21 06:08:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:08:05', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=111', 0, 'post', '', 0),
(112, 1, '2019-06-21 06:08:38', '2019-06-21 06:08:38', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'In-patient Services', '', 'publish', 'closed', 'closed', '', 'in-patient-services', '', '', '2019-06-21 06:09:16', '2019-06-21 06:09:16', '', 82, 'https://mithcare.com/?page_id=112', 0, 'page', '', 0),
(113, 1, '2019-06-21 06:08:38', '2019-06-21 06:08:38', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'In-patient Services', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-06-21 06:08:38', '2019-06-21 06:08:38', '', 112, 'https://mithcare.com/2019/06/21/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-06-21 06:09:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:09:30', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=114', 0, 'post', '', 0),
(115, 1, '2019-06-21 06:10:08', '2019-06-21 06:10:08', '<!-- wp:paragraph -->\n<p>\n\nQuisque orci quam, accumsan vitae dolor sed, ornare feugiat dolor. Mauris dolor sem, accumsan quis malesuada et, finibus ut libero.\n\n</p>\n<!-- /wp:paragraph -->', 'Specialized Interventions', '', 'publish', 'closed', 'closed', '', 'specialized-interventions', '', '', '2019-06-21 06:10:08', '2019-06-21 06:10:08', '', 82, 'https://mithcare.com/?page_id=115', 0, 'page', '', 0),
(116, 1, '2019-06-21 06:10:08', '2019-06-21 06:10:08', '<!-- wp:paragraph -->\n<p>\n\nQuisque orci quam, accumsan vitae dolor sed, ornare feugiat dolor. Mauris dolor sem, accumsan quis malesuada et, finibus ut libero.\n\n</p>\n<!-- /wp:paragraph -->', 'Specialized Interventions', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2019-06-21 06:10:08', '2019-06-21 06:10:08', '', 115, 'https://mithcare.com/2019/06/21/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-06-21 06:10:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:10:15', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=117', 0, 'post', '', 0),
(118, 1, '2019-06-21 06:10:51', '2019-06-21 06:10:51', '<!-- wp:paragraph -->\n<p>\n\nAenean erat neque, vehicula at enim a, feugiat laoreet sem. Donec ut metus ullamcorper, pulvinar justo at, cursus ex. Mauris\n\n</p>\n<!-- /wp:paragraph -->', 'The Wellness Center', '', 'publish', 'closed', 'closed', '', 'the-wellness-center', '', '', '2019-06-21 06:10:51', '2019-06-21 06:10:51', '', 82, 'https://mithcare.com/?page_id=118', 0, 'page', '', 0),
(119, 1, '2019-06-21 06:10:51', '2019-06-21 06:10:51', '<!-- wp:paragraph -->\n<p>\n\nAenean erat neque, vehicula at enim a, feugiat laoreet sem. Donec ut metus ullamcorper, pulvinar justo at, cursus ex. Mauris\n\n</p>\n<!-- /wp:paragraph -->', 'The Wellness Center', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-06-21 06:10:51', '2019-06-21 06:10:51', '', 118, 'https://mithcare.com/2019/06/21/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-06-21 06:10:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:10:59', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=120', 0, 'post', '', 0),
(121, 1, '2019-06-21 06:11:30', '2019-06-21 06:11:30', '<!-- wp:paragraph -->\n<p>\n\nAenean erat neque, vehicula at enim a, feugiat laoreet sem. Donec ut metus ullamcorper, pulvinar justo at, cursus ex. Mauris\n\n</p>\n<!-- /wp:paragraph -->', 'Dental Services', '', 'publish', 'closed', 'closed', '', 'dental-services', '', '', '2019-06-21 06:11:30', '2019-06-21 06:11:30', '', 82, 'https://mithcare.com/?page_id=121', 0, 'page', '', 0),
(122, 1, '2019-06-21 06:11:30', '2019-06-21 06:11:30', '<!-- wp:paragraph -->\n<p>\n\nAenean erat neque, vehicula at enim a, feugiat laoreet sem. Donec ut metus ullamcorper, pulvinar justo at, cursus ex. Mauris\n\n</p>\n<!-- /wp:paragraph -->', 'Dental Services', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2019-06-21 06:11:30', '2019-06-21 06:11:30', '', 121, 'https://mithcare.com/2019/06/21/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2019-06-21 06:12:58', '2019-06-21 06:12:58', '{\n    \"widget_medical-way-services[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxMjoic2VydmljZV9wYWdlIjtpOjgyO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjA7czo5OiJpdGVtX2lkXzEiO2k6ODQ7czo5OiJpdGVtX2lkXzIiO2k6MTIxO3M6OToiaXRlbV9pZF8zIjtpOjExMjtzOjk6Iml0ZW1faWRfNCI7aToxMDY7czo5OiJpdGVtX2lkXzUiO2k6MTE1O3M6OToiaXRlbV9pZF82IjtpOjExODtzOjExOiJhcHBvaW50bWVudCI7czowOiIiO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f5d32cd7ea018aa74db365cc0319f0ca\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:12:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c04e3179-a015-4979-8bd6-61ff0dbbdd08', '', '', '2019-06-21 06:12:58', '2019-06-21 06:12:58', '', 0, 'https://mithcare.com/2019/06/21/c04e3179-a015-4979-8bd6-61ff0dbbdd08/', 0, 'customize_changeset', '', 0),
(124, 1, '2019-06-21 06:13:54', '2019-06-21 06:13:54', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nMithcare \"[your-subject]\"\nMithcare <wordpress@mithcare.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\nchavalit.kow@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nMithcare \"[your-subject]\"\nMithcare <wordpress@mithcare.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\n[your-email]\nReply-To: chavalit.kow@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-06-21 06:13:54', '2019-06-21 06:13:54', '', 0, 'https://mithcare.com/?post_type=wpcf7_contact_form&p=124', 0, 'wpcf7_contact_form', '', 0),
(125, 1, '2019-06-21 06:14:37', '2019-06-21 06:14:37', '<h3>Make An Appointment Today</h3>\r\n<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nMithcare \"[your-subject]\"\nMithcare <wordpress@mithcare.com>\nchavalit.kow@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\nReply-To: [your-email]\n\n\n\n\nMithcare \"[your-subject]\"\nMithcare <wordpress@mithcare.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mithcare (https://mithcare.com)\nReply-To: chavalit.kow@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Appointment Form', '', 'publish', 'closed', 'closed', '', 'contact-form-1_copy', '', '', '2019-06-21 06:17:09', '2019-06-21 06:17:09', '', 0, 'https://mithcare.com/?post_type=wpcf7_contact_form&#038;p=125', 0, 'wpcf7_contact_form', '', 0),
(126, 1, '2019-06-21 06:15:41', '2019-06-21 06:15:41', '{\n    \"widget_medical-way-services[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxMjoic2VydmljZV9wYWdlIjtpOjgyO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjA7czo5OiJpdGVtX2lkXzEiO2k6ODQ7czo5OiJpdGVtX2lkXzIiO2k6MTIxO3M6OToiaXRlbV9pZF8zIjtpOjExMjtzOjk6Iml0ZW1faWRfNCI7aToxMDY7czo5OiJpdGVtX2lkXzUiO2k6MTE1O3M6OToiaXRlbV9pZF82IjtpOjExODtzOjExOiJhcHBvaW50bWVudCI7czo1MDoiW2NvbnRhY3QtZm9ybS03IGlkPSIxMjUiIHRpdGxlPSJBcHBvaW50bWVudCBGb3JtIl0iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1346e1d74df9840734de148c9a42ba60\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:15:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '88c80fe5-3e2e-470d-a7d0-8902d2423443', '', '', '2019-06-21 06:15:41', '2019-06-21 06:15:41', '', 0, 'https://mithcare.com/2019/06/21/88c80fe5-3e2e-470d-a7d0-8902d2423443/', 0, 'customize_changeset', '', 0),
(127, 1, '2019-06-21 06:18:51', '2019-06-21 06:18:51', '<!-- wp:paragraph -->\n<p><strong>Curabitur feugiat imperdiet odio quis malesuada.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan, posuere elit. Mauris efficitur efficitur purus, cursus malesuada dolor finibus at. Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor.</p>\n<!-- /wp:paragraph -->', 'Call for Action', '', 'publish', 'closed', 'closed', '', 'cta', '', '', '2019-06-21 06:20:32', '2019-06-21 06:20:32', '', 0, 'https://mithcare.com/?page_id=127', 0, 'page', '', 0),
(128, 1, '2019-06-21 06:18:45', '2019-06-21 06:18:45', '', 'Nurse-rightx380', '', 'inherit', 'open', 'closed', '', 'nurse-rightx380', '', '', '2019-06-21 06:18:45', '2019-06-21 06:18:45', '', 127, 'https://mithcare.com/wp-content/uploads/2019/06/Nurse-rightx380.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2019-06-21 06:18:51', '2019-06-21 06:18:51', '<!-- wp:paragraph -->\n<p><strong>Curabitur feugiat imperdiet odio quis malesuada.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan, posuere elit. Mauris efficitur efficitur purus, cursus malesuada dolor finibus at. Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor.</p>\n<!-- /wp:paragraph -->', 'CTA', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2019-06-21 06:18:51', '2019-06-21 06:18:51', '', 127, 'https://mithcare.com/2019/06/21/127-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-06-21 06:19:28', '2019-06-21 06:19:28', '{\n    \"widget_medical-way-cta[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjg6ImN0YV9wYWdlIjtpOjEyNztzOjExOiJidXR0b25fdGV4dCI7czo5OiJGaW5kIE1vcmUiO3M6MTA6ImJ1dHRvbl91cmwiO3M6MToiIyI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7938ce339b0448777590c3c2a10d1836\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:19:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e782fc1f-8cc8-4303-8956-f144c440dd9b', '', '', '2019-06-21 06:19:28', '2019-06-21 06:19:28', '', 0, 'https://mithcare.com/2019/06/21/e782fc1f-8cc8-4303-8956-f144c440dd9b/', 0, 'customize_changeset', '', 0),
(131, 1, '2019-06-21 06:19:45', '2019-06-21 06:19:45', '{\n    \"widget_medical-way-cta[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjg6ImN0YV9wYWdlIjtpOjEyNztzOjExOiJidXR0b25fdGV4dCI7czo5OiJGaW5kIE1vcmUiO3M6MTA6ImJ1dHRvbl91cmwiO3M6NDoiL2N0YSI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3726cd993aaa0439845320ed0181a8d4\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:19:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4e391b6-aa8a-4bb7-b858-042fb7a9426e', '', '', '2019-06-21 06:19:45', '2019-06-21 06:19:45', '', 0, 'https://mithcare.com/2019/06/21/e4e391b6-aa8a-4bb7-b858-042fb7a9426e/', 0, 'customize_changeset', '', 0),
(132, 1, '2019-06-21 06:20:07', '2019-06-21 06:20:07', '<!-- wp:paragraph -->\n<p><strong>Curabitur feugiat imperdiet odio quis malesuada.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan, posuere elit. Mauris efficitur efficitur purus, cursus malesuada dolor finibus at. Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor.</p>\n<!-- /wp:paragraph -->', 'Integer Vehicula Lobortis Lacus Sit Amet Ullamcorper', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2019-06-21 06:20:07', '2019-06-21 06:20:07', '', 127, 'https://mithcare.com/2019/06/21/127-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-06-21 06:20:25', '2019-06-21 06:20:25', '<!-- wp:paragraph -->\n<p><strong>Curabitur feugiat imperdiet odio quis malesuada.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan, posuere elit. Mauris efficitur efficitur purus, cursus malesuada dolor finibus at. Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor.</p>\n<!-- /wp:paragraph -->', 'Call for action', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2019-06-21 06:20:25', '2019-06-21 06:20:25', '', 127, 'https://mithcare.com/2019/06/21/127-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-06-21 06:20:32', '2019-06-21 06:20:32', '<!-- wp:paragraph -->\n<p><strong>Curabitur feugiat imperdiet odio quis malesuada.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan, posuere elit. Mauris efficitur efficitur purus, cursus malesuada dolor finibus at. Integer vehicula lobortis lacus sit amet ullamcorper. Morbi id elit id nisl efficitur dictum at a risus.&nbsp;Vestibulum eu feugiat dolor.</p>\n<!-- /wp:paragraph -->', 'Call for Action', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2019-06-21 06:20:32', '2019-06-21 06:20:32', '', 127, 'https://mithcare.com/2019/06/21/127-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-06-21 06:25:37', '2019-06-21 06:25:37', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-team-5\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:21:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '705c909c-9591-4cad-9adf-b16789d35124', '', '', '2019-06-21 06:25:37', '2019-06-21 06:25:37', '', 0, 'https://mithcare.com/?p=135', 0, 'customize_changeset', '', 0),
(136, 1, '2019-06-21 06:21:58', '2019-06-21 06:21:58', '<!-- wp:paragraph -->\n<p>\n\nVestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Departments', '', 'publish', 'closed', 'closed', '', 'our-departments', '', '', '2019-06-21 06:27:15', '2019-06-21 06:27:15', '', 0, 'https://mithcare.com/?page_id=136', 0, 'page', '', 0),
(137, 1, '2019-06-21 06:21:58', '2019-06-21 06:21:58', '<!-- wp:paragraph -->\n<p>\n\nVestibulum eu feugiat dolor. Cras non nunc lobortis, tristique mauris accumsan.\n\n</p>\n<!-- /wp:paragraph -->', 'Our Departments', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2019-06-21 06:21:58', '2019-06-21 06:21:58', '', 136, 'https://mithcare.com/2019/06/21/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-06-21 06:22:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-21 06:22:01', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?page_id=138', 0, 'page', '', 0),
(139, 1, '2019-06-21 06:22:40', '2019-06-21 06:22:40', '', 'nurses-768x510', '', 'inherit', 'open', 'closed', '', 'nurses-768x510', '', '', '2019-06-21 06:22:40', '2019-06-21 06:22:40', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/nurses-768x510.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2019-06-21 06:22:41', '2019-06-21 06:22:41', '', 'foot-1689784_1280-768x512', '', 'inherit', 'open', 'closed', '', 'foot-1689784_1280-768x512', '', '', '2019-06-21 06:22:41', '2019-06-21 06:22:41', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/foot-1689784_1280-768x512.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2019-06-21 06:22:41', '2019-06-21 06:22:41', '', 'zahnreinigung-1514693_1280-768x512', '', 'inherit', 'open', 'closed', '', 'zahnreinigung-1514693_1280-768x512', '', '', '2019-06-21 06:22:41', '2019-06-21 06:22:41', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/zahnreinigung-1514693_1280-768x512.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-06-21 06:22:42', '2019-06-21 06:22:42', '', 'surgery-1822458_1280-768x512', '', 'inherit', 'open', 'closed', '', 'surgery-1822458_1280-768x512', '', '', '2019-06-21 06:22:42', '2019-06-21 06:22:42', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/surgery-1822458_1280-768x512.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2019-06-21 06:23:51', '2019-06-21 06:23:51', '<!-- wp:paragraph -->\n<p>\n\nProin quis tincidunt lectus. Mauris commodo augue semper magna maximus blandit. Aliquam et risus dapibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Anesthesiology', '', 'publish', 'closed', 'closed', '', 'anesthesiology', '', '', '2019-06-21 06:23:51', '2019-06-21 06:23:51', '', 136, 'https://mithcare.com/?page_id=143', 0, 'page', '', 0),
(144, 1, '2019-06-21 06:23:51', '2019-06-21 06:23:51', '<!-- wp:paragraph -->\n<p>\n\nProin quis tincidunt lectus. Mauris commodo augue semper magna maximus blandit. Aliquam et risus dapibus.\n\n</p>\n<!-- /wp:paragraph -->', 'Anesthesiology', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2019-06-21 06:23:51', '2019-06-21 06:23:51', '', 143, 'https://mithcare.com/2019/06/21/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-06-21 06:23:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:23:56', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=145', 0, 'post', '', 0),
(146, 1, '2019-06-21 06:24:27', '2019-06-21 06:24:27', '<!-- wp:paragraph -->\n<p>\n\nVivamus varius nisl sapien, quis consectetur nisl mattis a. Nam sit amet nunc a velit...\n\n</p>\n<!-- /wp:paragraph -->', 'Dentistry & Dental Surgery', '', 'publish', 'closed', 'closed', '', 'dentistry-dental-surgery', '', '', '2019-06-21 06:24:27', '2019-06-21 06:24:27', '', 136, 'https://mithcare.com/?page_id=146', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 1, '2019-06-21 06:24:27', '2019-06-21 06:24:27', '<!-- wp:paragraph -->\n<p>\n\nVivamus varius nisl sapien, quis consectetur nisl mattis a. Nam sit amet nunc a velit...\n\n</p>\n<!-- /wp:paragraph -->', 'Dentistry & Dental Surgery', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-06-21 06:24:27', '2019-06-21 06:24:27', '', 146, 'https://mithcare.com/2019/06/21/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-06-21 06:25:04', '2019-06-21 06:25:04', '<!-- wp:paragraph -->\n<p>\n\nNunc pretium nulla magna. Donec elementum odio vel sem egestas, vitae porttitor ipsum semper.\n\n</p>\n<!-- /wp:paragraph -->', 'Internal Medicine', '', 'publish', 'closed', 'closed', '', 'internal-medicine', '', '', '2019-06-21 06:25:04', '2019-06-21 06:25:04', '', 136, 'https://mithcare.com/?page_id=148', 0, 'page', '', 0),
(149, 1, '2019-06-21 06:25:04', '2019-06-21 06:25:04', '<!-- wp:paragraph -->\n<p>\n\nNunc pretium nulla magna. Donec elementum odio vel sem egestas, vitae porttitor ipsum semper.\n\n</p>\n<!-- /wp:paragraph -->', 'Internal Medicine', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2019-06-21 06:25:04', '2019-06-21 06:25:04', '', 148, 'https://mithcare.com/2019/06/21/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-06-21 06:25:33', '2019-06-21 06:25:33', '<!-- wp:paragraph -->\n<p>\n\nEtiam scelerisque ligula et aliquam lobortis. Nam sed libero eget ligula fermentum posuere at eu...\n\n</p>\n<!-- /wp:paragraph -->', 'Obstetrics & Gynecology', '', 'publish', 'closed', 'closed', '', 'obstetrics-gynecology', '', '', '2019-06-21 06:25:33', '2019-06-21 06:25:33', '', 136, 'https://mithcare.com/?page_id=150', 0, 'page', '', 0),
(151, 1, '2019-06-21 06:25:33', '2019-06-21 06:25:33', '<!-- wp:paragraph -->\n<p>\n\nEtiam scelerisque ligula et aliquam lobortis. Nam sed libero eget ligula fermentum posuere at eu...\n\n</p>\n<!-- /wp:paragraph -->', 'Obstetrics & Gynecology', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2019-06-21 06:25:33', '2019-06-21 06:25:33', '', 150, 'https://mithcare.com/2019/06/21/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2019-06-21 06:27:18', '2019-06-21 06:27:18', '{\n    \"widget_medical-way-departments[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxNToiZGVwYXJ0bWVudF9wYWdlIjtpOjEzNjtzOjE0OiJleGNlcnB0X2xlbmd0aCI7aToyMDtzOjExOiJkZXRhaWxfbGluayI7aTowO3M6MTU6ImltYWdlX2FsaWdubWVudCI7czo0OiJsZWZ0IjtzOjk6Iml0ZW1faWRfMSI7aToxNDM7czo5OiJpdGVtX2lkXzIiO2k6MTQ2O3M6OToiaXRlbV9pZF8zIjtpOjE0ODtzOjk6Iml0ZW1faWRfNCI7aToxNTA7czo5OiJpdGVtX2lkXzUiO2k6MDtzOjk6Iml0ZW1faWRfNiI7aTowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6a011b4981daa13184342080854c78bb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:26:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b74fb4a-c4f7-4e15-a4d6-2a12d2e52502', '', '', '2019-06-21 06:27:18', '2019-06-21 06:27:18', '', 0, 'https://mithcare.com/?p=152', 0, 'customize_changeset', '', 0),
(153, 1, '2019-06-21 06:27:07', '2019-06-21 06:27:07', '', 'nurse', '', 'inherit', 'open', 'closed', '', 'nurse', '', '', '2019-06-21 06:27:07', '2019-06-21 06:27:07', '', 136, 'https://mithcare.com/wp-content/uploads/2019/06/nurse.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2019-06-21 06:28:31', '2019-06-21 06:28:31', '{\n    \"widget_medical-way-departments[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxNToiZGVwYXJ0bWVudF9wYWdlIjtpOjEzNjtzOjE0OiJleGNlcnB0X2xlbmd0aCI7aToyMDtzOjExOiJkZXRhaWxfbGluayI7aToxO3M6MTU6ImltYWdlX2FsaWdubWVudCI7czo0OiJsZWZ0IjtzOjk6Iml0ZW1faWRfMSI7aToxNDM7czo5OiJpdGVtX2lkXzIiO2k6MTQ2O3M6OToiaXRlbV9pZF8zIjtpOjE0ODtzOjk6Iml0ZW1faWRfNCI7aToxNTA7czo5OiJpdGVtX2lkXzUiO2k6MDtzOjk6Iml0ZW1faWRfNiI7aTowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d89170db3452dccf3766f3c7dc50b870\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:28:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1347408f-140b-4c1c-b861-75db8e627691', '', '', '2019-06-21 06:28:31', '2019-06-21 06:28:31', '', 0, 'https://mithcare.com/2019/06/21/1347408f-140b-4c1c-b861-75db8e627691/', 0, 'customize_changeset', '', 0),
(155, 1, '2019-06-21 06:28:56', '2019-06-21 06:28:56', '{\n    \"widget_medical-way-services[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czoxMjoic2VydmljZV9wYWdlIjtpOjgyO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTE6ImRldGFpbF9saW5rIjtpOjE7czo5OiJpdGVtX2lkXzEiO2k6ODQ7czo5OiJpdGVtX2lkXzIiO2k6MTIxO3M6OToiaXRlbV9pZF8zIjtpOjExMjtzOjk6Iml0ZW1faWRfNCI7aToxMDY7czo5OiJpdGVtX2lkXzUiO2k6MTE1O3M6OToiaXRlbV9pZF82IjtpOjExODtzOjExOiJhcHBvaW50bWVudCI7czo1MDoiW2NvbnRhY3QtZm9ybS03IGlkPSIxMjUiIHRpdGxlPSJBcHBvaW50bWVudCBGb3JtIl0iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bc93f6893b0e2b66b03e78233d7703e5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:28:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23179dad-81e0-4ff1-af2a-1ed70bf304d6', '', '', '2019-06-21 06:28:56', '2019-06-21 06:28:56', '', 0, 'https://mithcare.com/2019/06/21/23179dad-81e0-4ff1-af2a-1ed70bf304d6/', 0, 'customize_changeset', '', 0),
(156, 1, '2019-06-21 06:32:42', '2019-06-21 06:32:42', '{\n    \"widget_medical-way-facts[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czowOiIiO3M6ODoiaWNvbl9vbmUiO3M6MTY6ImZhLWZvbGRlci1vcGVuLW8iO3M6OToiY291bnRfb25lIjtpOjEwMDtzOjg6InRleHRfb25lIjtzOjE2OiJJbi1Ib3VzZSBEb2N0b3JzIjtzOjg6Imljb25fdHdvIjtzOjEwOiJmYS1jbG9jay1vIjtzOjk6ImNvdW50X3R3byI7aToyNDA7czo4OiJ0ZXh0X3R3byI7czo0OiJCZWRzIjtzOjEwOiJpY29uX3RocmVlIjtzOjg6ImZhLXVzZXJzIjtzOjExOiJjb3VudF90aHJlZSI7aToyNTtzOjEwOiJ0ZXh0X3RocmVlIjtzOjExOiJEZXBhcnRtZW50cyI7czo5OiJpY29uX2ZvdXIiO3M6OToiZmEtdHJvcGh5IjtzOjEwOiJjb3VudF9mb3VyIjtpOjU7czo5OiJ0ZXh0X2ZvdXIiO3M6MTA6IkFtYnVsYW5jZXMiO3M6NjoiYmdfcGljIjtzOjk1OiJodHRwczovL21pdGhjYXJlLmNzaW5jdWJlLmNvbS93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wNi9ob3NwaXRhbC13YXJkLTEzMzg1ODVfMTkyMC0zMDB4MjAwLmpwZyI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"206b8e41b645cc333d8dd9d5a6d36dde\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:32:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '325883ab-1739-4a0c-8f02-41214b1f9131', '', '', '2019-06-21 06:32:42', '2019-06-21 06:32:42', '', 0, 'https://mithcare.com/?p=156', 0, 'customize_changeset', '', 0),
(158, 1, '2019-06-21 06:34:07', '2019-06-21 06:34:07', '{\n    \"widget_medical-way-facts[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czowOiIiO3M6ODoiaWNvbl9vbmUiO3M6MTA6ImZhLXVzZXItbWQiO3M6OToiY291bnRfb25lIjtpOjEwMDtzOjg6InRleHRfb25lIjtzOjE2OiJJbi1Ib3VzZSBEb2N0b3JzIjtzOjg6Imljb25fdHdvIjtzOjY6ImZhLWJlZCI7czo5OiJjb3VudF90d28iO2k6MjM4O3M6ODoidGV4dF90d28iO3M6NDoiQmVkcyI7czoxMDoiaWNvbl90aHJlZSI7czoxMzoiZmEtYnVpbGRpbmctbyI7czoxMToiY291bnRfdGhyZWUiO2k6MjU7czoxMDoidGV4dF90aHJlZSI7czoxMToiRGVwYXJ0bWVudHMiO3M6OToiaWNvbl9mb3VyIjtzOjEyOiJmYS1hbWJ1bGFuY2UiO3M6MTA6ImNvdW50X2ZvdXIiO2k6NTtzOjk6InRleHRfZm91ciI7czoxMDoiQW1idWxhbmNlcyI7czo2OiJiZ19waWMiO3M6OTU6Imh0dHBzOi8vbWl0aGNhcmUuY3NpbmN1YmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzA2L2hvc3BpdGFsLXdhcmQtMTMzODU4NV8xOTIwLTMwMHgyMDAuanBnIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"707b63dd2e9fd7618a317db495911299\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:34:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1fe2289d-1566-4593-86db-da716e9b1e3b', '', '', '2019-06-21 06:34:07', '2019-06-21 06:34:07', '', 0, 'https://mithcare.com/?p=158', 0, 'customize_changeset', '', 0),
(159, 1, '2019-06-21 06:42:21', '2019-06-21 06:42:21', '{\n    \"widget_medical-way-facts[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNDp7czo1OiJ0aXRsZSI7czowOiIiO3M6ODoiaWNvbl9vbmUiO3M6MTA6ImZhLXVzZXItbWQiO3M6OToiY291bnRfb25lIjtpOjEwMDtzOjg6InRleHRfb25lIjtzOjE2OiJJbi1Ib3VzZSBEb2N0b3JzIjtzOjg6Imljb25fdHdvIjtzOjY6ImZhLWJlZCI7czo5OiJjb3VudF90d28iO2k6MjM4O3M6ODoidGV4dF90d28iO3M6NDoiQmVkcyI7czoxMDoiaWNvbl90aHJlZSI7czoxMzoiZmEtYnVpbGRpbmctbyI7czoxMToiY291bnRfdGhyZWUiO2k6MjU7czoxMDoidGV4dF90aHJlZSI7czoxMToiRGVwYXJ0bWVudHMiO3M6OToiaWNvbl9mb3VyIjtzOjEyOiJmYS1hbWJ1bGFuY2UiO3M6MTA6ImNvdW50X2ZvdXIiO2k6NTtzOjk6InRleHRfZm91ciI7czoxMDoiQW1idWxhbmNlcyI7czo2OiJiZ19waWMiO3M6ODM6Imh0dHBzOi8vbWl0aGNhcmUuY3NpbmN1YmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzA2L2hvc3BpdGFsLXdhcmQtMTAyNHg2ODMuanBnIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9bec52057071e2a8731cb42faebac2b3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:42:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9dc6dab7-3142-4e12-82dd-ed742fa21022', '', '', '2019-06-21 06:42:21', '2019-06-21 06:42:21', '', 0, 'https://mithcare.com/?p=159', 0, 'customize_changeset', '', 0),
(160, 1, '2019-06-21 06:43:04', '2019-06-21 06:43:04', '{\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"https://mithcare.com/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:43:04\"\n    },\n    \"nav_menu_item[-4099052646067847000]\": {\n        \"value\": {\n            \"object_id\": 136,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Our Departments\",\n            \"url\": \"https://mithcare.com/our-departments/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Our Departments\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:43:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b268b081-b64e-45bc-8e20-e98018e52423', '', '', '2019-06-21 06:43:04', '2019-06-21 06:43:04', '', 0, 'https://mithcare.com/2019/06/21/b268b081-b64e-45bc-8e20-e98018e52423/', 0, 'customize_changeset', '', 0),
(162, 1, '2019-06-21 06:44:07', '2019-06-21 06:44:07', '', 'Christina-570x380', '', 'inherit', 'open', 'closed', '', 'christina-570x380', '', '', '2019-06-21 06:44:07', '2019-06-21 06:44:07', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/Christina-570x380.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2019-06-21 06:44:10', '2019-06-21 06:44:10', '', 'William-570x380', '', 'inherit', 'open', 'closed', '', 'william-570x380', '', '', '2019-06-21 06:44:10', '2019-06-21 06:44:10', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/William-570x380.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2019-06-21 06:44:11', '2019-06-21 06:44:11', '', 'Sharon-570x380', '', 'inherit', 'open', 'closed', '', 'sharon-570x380', '', '', '2019-06-21 06:44:11', '2019-06-21 06:44:11', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/Sharon-570x380.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2019-06-21 06:44:11', '2019-06-21 06:44:11', '', 'Dr-Christopher-570x380', '', 'inherit', 'open', 'closed', '', 'dr-christopher-570x380', '', '', '2019-06-21 06:44:11', '2019-06-21 06:44:11', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/Dr-Christopher-570x380.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2019-06-21 06:44:12', '2019-06-21 06:44:12', '', 'Andrew-570x380', '', 'inherit', 'open', 'closed', '', 'andrew-570x380', '', '', '2019-06-21 06:44:12', '2019-06-21 06:44:12', '', 0, 'https://mithcare.com/wp-content/uploads/2019/06/Andrew-570x380.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2019-06-21 06:45:11', '2019-06-21 06:45:11', '<!-- wp:paragraph -->\n<p><strong>Senior Professor</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In eu sapien ut ex varius consequat.&nbsp;Quisque tempor malesuada iaculis.</p>\n<!-- /wp:paragraph -->', 'Prof. Andrew Bailey', '', 'publish', 'closed', 'closed', '', 'prof-andrew-bailey', '', '', '2019-06-21 06:45:11', '2019-06-21 06:45:11', '', 89, 'https://mithcare.com/?page_id=167', 0, 'page', '', 0),
(168, 1, '2019-06-21 06:45:11', '2019-06-21 06:45:11', '<!-- wp:paragraph -->\n<p><strong>Senior Professor</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In eu sapien ut ex varius consequat.&nbsp;Quisque tempor malesuada iaculis.</p>\n<!-- /wp:paragraph -->', 'Prof. Andrew Bailey', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-06-21 06:45:11', '2019-06-21 06:45:11', '', 167, 'https://mithcare.com/2019/06/21/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-06-21 06:45:33', '2019-06-21 06:45:33', '<!-- wp:paragraph -->\n<p><strong>General Physician</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris aliquam neque magna, et hendrerit eros placerat et.</p>\n<!-- /wp:paragraph -->', 'Dr. Christopher Griffin', '', 'publish', 'closed', 'closed', '', 'dr-christopher-griffin', '', '', '2019-06-21 06:45:55', '2019-06-21 06:45:55', '', 89, 'https://mithcare.com/?page_id=169', 0, 'page', '', 0),
(170, 1, '2019-06-21 06:45:33', '2019-06-21 06:45:33', '<!-- wp:paragraph -->\n<p><strong>General Physician</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris aliquam neque magna, et hendrerit eros placerat et.</p>\n<!-- /wp:paragraph -->', 'Dr. Christopher Griffin', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-06-21 06:45:33', '2019-06-21 06:45:33', '', 169, 'https://mithcare.com/2019/06/21/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-06-21 06:46:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-21 06:46:30', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?page_id=171', 0, 'page', '', 0),
(172, 1, '2019-06-21 06:47:00', '2019-06-21 06:47:00', '<!-- wp:paragraph -->\n<p><strong>Neuro Surgeon</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur nibh ipsum, commodo sed dui id, varius sagittis tortor.</p>\n<!-- /wp:paragraph -->', 'Sharon Foster', '', 'publish', 'closed', 'closed', '', 'sharon-foster', '', '', '2019-06-21 06:47:00', '2019-06-21 06:47:00', '', 89, 'https://mithcare.com/?page_id=172', 0, 'page', '', 0),
(173, 1, '2019-06-21 06:47:00', '2019-06-21 06:47:00', '<!-- wp:paragraph -->\n<p><strong>Neuro Surgeon</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur nibh ipsum, commodo sed dui id, varius sagittis tortor.</p>\n<!-- /wp:paragraph -->', 'Sharon Foster', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2019-06-21 06:47:00', '2019-06-21 06:47:00', '', 172, 'https://mithcare.com/2019/06/21/172-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2019-06-21 06:47:27', '2019-06-21 06:47:27', '<!-- wp:paragraph -->\n<p><strong>Endocrinologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->', 'William Thompson', '', 'publish', 'closed', 'closed', '', 'william-thompson', '', '', '2019-06-21 06:47:27', '2019-06-21 06:47:27', '', 89, 'https://mithcare.com/?page_id=174', 0, 'page', '', 0),
(175, 1, '2019-06-21 06:47:27', '2019-06-21 06:47:27', '<!-- wp:paragraph -->\n<p><strong>Endocrinologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->', 'William Thompson', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2019-06-21 06:47:27', '2019-06-21 06:47:27', '', 174, 'https://mithcare.com/2019/06/21/174-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-06-21 06:47:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:47:32', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=176', 0, 'post', '', 0),
(177, 1, '2019-06-21 06:47:45', '2019-06-21 06:47:45', '<!-- wp:paragraph -->\n<p><strong>Hematologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>\n<!-- /wp:paragraph -->', 'Christina Perry', '', 'publish', 'closed', 'closed', '', 'christina-perry', '', '', '2019-06-21 06:48:21', '2019-06-21 06:48:21', '', 89, 'https://mithcare.com/?page_id=177', 0, 'page', '', 0),
(178, 1, '2019-06-21 06:47:45', '2019-06-21 06:47:45', '<!-- wp:paragraph -->\n<p><strong>Hematologist</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames.</p>\n<!-- /wp:paragraph -->', 'Christina Perry', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2019-06-21 06:47:45', '2019-06-21 06:47:45', '', 177, 'https://mithcare.com/2019/06/21/177-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-06-21 06:49:06', '2019-06-21 06:49:06', '{\n    \"widget_medical-way-team[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjk6InRlYW1fcGFnZSI7aTo4OTtzOjExOiJwb3N0X251bWJlciI7aTozO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"763b8c0c13c90d16ddc3b495599b1cc6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:49:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fffd92cb-ab56-4873-aaa7-69a98336d56d', '', '', '2019-06-21 06:49:06', '2019-06-21 06:49:06', '', 0, 'https://mithcare.com/2019/06/21/fffd92cb-ab56-4873-aaa7-69a98336d56d/', 0, 'customize_changeset', '', 0),
(180, 1, '2019-06-21 06:49:25', '2019-06-21 06:49:25', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-team-5\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:49:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c0ac8967-5e00-40e9-a048-c4cdb79c2760', '', '', '2019-06-21 06:49:25', '2019-06-21 06:49:25', '', 0, 'https://mithcare.com/2019/06/21/c0ac8967-5e00-40e9-a048-c4cdb79c2760/', 0, 'customize_changeset', '', 0),
(181, 1, '2019-06-21 06:54:15', '2019-06-21 06:54:15', '{\n    \"widget_medical-way-testimonial[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjExOiJUZXN0aW1vbmlhbCI7czoxNjoidGVzdGltb25pYWxfcGFnZSI7aTo4MjtzOjE4OiJ0cmFuc2l0aW9uX2VmZmVjdHMiO3M6MTA6InNjcm9sbEhvcnoiO3M6MTY6InRyYW5zaXRpb25fZGVsYXkiO2k6MztzOjE5OiJ0cmFuc2l0aW9uX2R1cmF0aW9uIjtpOjM7czoxMDoic2hvd19hcnJvdyI7aToxO3M6MTA6InNob3dfcGFnZXIiO2k6MTtzOjE1OiJlbmFibGVfYXV0b3BsYXkiO2k6MTtzOjY6ImJnX3BpYyI7czo4MzoiaHR0cHM6Ly9taXRoY2FyZS5jc2luY3ViZS5jb20vd3AtY29udGVudC91cGxvYWRzLzIwMTkvMDYvaG9zcGl0YWwtd2FyZC0xMDI0eDY4My5qcGciO30=\",\n            \"title\": \"Testimonial\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5260e43767e8cac84f4b5c612be29f0d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:54:15\"\n    },\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-team-5\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-social-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:50:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c3093be-5dd5-4b4d-8b2d-6aca0ab17740', '', '', '2019-06-21 06:54:15', '2019-06-21 06:54:15', '', 0, 'https://mithcare.com/?p=181', 0, 'customize_changeset', '', 0),
(182, 1, '2019-06-21 06:51:27', '2019-06-21 06:51:27', '<!-- wp:paragraph -->\n<p>\n\nAenean sit amet augue aliquam, faucibus arcu in, congue sapien. Etiam a nisi turpis. Pellentesque eu turpis in nisl lacinia auctor.\n\n</p>\n<!-- /wp:paragraph -->', 'WHAT PATIENTS SAYS – READ STORIES', '', 'publish', 'closed', 'closed', '', 'what-patients-says-read-stories', '', '', '2019-06-21 07:13:01', '2019-06-21 07:13:01', '', 0, 'https://mithcare.com/?page_id=182', 0, 'page', '', 0),
(183, 1, '2019-06-21 06:51:27', '2019-06-21 06:51:27', '<!-- wp:paragraph -->\n<p>\n\nAenean sit amet augue aliquam, faucibus arcu in, congue sapien. Etiam a nisi turpis. Pellentesque eu turpis in nisl lacinia auctor.\n\n</p>\n<!-- /wp:paragraph -->', 'WHAT PATIENTS SAYS – READ STORIES', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2019-06-21 06:51:27', '2019-06-21 06:51:27', '', 182, 'https://mithcare.com/2019/06/21/182-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2019-06-21 06:51:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-21 06:51:32', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?page_id=184', 0, 'page', '', 0),
(185, 1, '2019-06-21 06:56:04', '2019-06-21 06:56:04', '{\n    \"widget_medical-way-testimonial[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjExOiJUZXN0aW1vbmlhbCI7czoxNjoidGVzdGltb25pYWxfcGFnZSI7aToxODI7czoxODoidHJhbnNpdGlvbl9lZmZlY3RzIjtzOjEwOiJzY3JvbGxIb3J6IjtzOjE2OiJ0cmFuc2l0aW9uX2RlbGF5IjtpOjM7czoxOToidHJhbnNpdGlvbl9kdXJhdGlvbiI7aTozO3M6MTA6InNob3dfYXJyb3ciO2k6MTtzOjEwOiJzaG93X3BhZ2VyIjtpOjE7czoxNToiZW5hYmxlX2F1dG9wbGF5IjtpOjE7czo2OiJiZ19waWMiO3M6ODM6Imh0dHBzOi8vbWl0aGNhcmUuY3NpbmN1YmUuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzA2L2hvc3BpdGFsLXdhcmQtMTAyNHg2ODMuanBnIjt9\",\n            \"title\": \"Testimonial\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f681fbe1f7b35265190a467fae56deab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:54:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fed2bdbe-b5ea-4318-9f5e-1573e4def32b', '', '', '2019-06-21 06:56:04', '2019-06-21 06:56:04', '', 0, 'https://mithcare.com/?p=185', 0, 'customize_changeset', '', 0),
(186, 1, '2019-06-21 06:54:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 06:54:57', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=186', 0, 'post', '', 0),
(187, 1, '2019-06-21 06:56:27', '2019-06-21 06:56:27', '<!-- wp:paragraph -->\n<p><strong>Neuro Surgeon</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Duis ac mi molestie, sollicitudin velit id, mattis arcu. Nulla facilisi. Sed sit amet turpis vulputate, faucibus diam et, sollicitudin dolor. Aliquam malesuada nisi quis massa gravida posuere. Vestibulum hendrerit sit amet magna vel convallis.</em></p>\n<!-- /wp:paragraph -->', 'Aliquam id ultricies tellus', '', 'publish', 'closed', 'closed', '', 'aliquam-id-ultricies-tellus', '', '', '2019-06-21 06:56:27', '2019-06-21 06:56:27', '', 182, 'https://mithcare.com/?page_id=187', 0, 'page', '', 0),
(188, 1, '2019-06-21 06:56:27', '2019-06-21 06:56:27', '<!-- wp:paragraph -->\n<p><strong>Neuro Surgeon</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Duis ac mi molestie, sollicitudin velit id, mattis arcu. Nulla facilisi. Sed sit amet turpis vulputate, faucibus diam et, sollicitudin dolor. Aliquam malesuada nisi quis massa gravida posuere. Vestibulum hendrerit sit amet magna vel convallis.</em></p>\n<!-- /wp:paragraph -->', 'Aliquam id ultricies tellus', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2019-06-21 06:56:27', '2019-06-21 06:56:27', '', 187, 'https://mithcare.com/2019/06/21/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-06-21 06:58:39', '2019-06-21 06:58:39', '{\n    \"nav_menu_item[-8035256702259689000]\": {\n        \"value\": {\n            \"object_id\": 182,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Testimonial\",\n            \"url\": \"https://mithcare.com/what-patients-says-read-stories/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"WHAT PATIENTS SAYS \\u2013 READ STORIES\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 06:58:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '87a32e8f-f30e-4fa9-9969-c3da7c952c08', '', '', '2019-06-21 06:58:39', '2019-06-21 06:58:39', '', 0, 'https://mithcare.com/2019/06/21/87a32e8f-f30e-4fa9-9969-c3da7c952c08/', 0, 'customize_changeset', '', 0),
(191, 1, '2019-06-21 07:00:08', '2019-06-21 07:00:08', '{\n    \"nav_menu_item[190]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:00:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1963b45-984b-4f7a-8912-0407788a65c1', '', '', '2019-06-21 07:00:08', '2019-06-21 07:00:08', '', 0, 'https://mithcare.com/2019/06/21/f1963b45-984b-4f7a-8912-0407788a65c1/', 0, 'customize_changeset', '', 0),
(192, 1, '2019-06-21 07:02:01', '2019-06-21 07:02:01', '{\n    \"nav_menu_item[-5237196168255558000]\": {\n        \"value\": {\n            \"object_id\": 182,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Testimonial\",\n            \"url\": \"https://mithcare.com/what-patients-says-read-stories/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"WHAT PATIENTS SAYS \\u2013 READ STORIES\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:02:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33ad143a-b684-49da-9ad0-2518a403c659', '', '', '2019-06-21 07:02:01', '2019-06-21 07:02:01', '', 0, 'https://mithcare.com/2019/06/21/33ad143a-b684-49da-9ad0-2518a403c659/', 0, 'customize_changeset', '', 0),
(194, 1, '2019-06-21 07:05:48', '2019-06-21 07:05:48', '{\n    \"nav_menu_item[193]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:05:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb311830-a772-40f6-947f-2c09875b379d', '', '', '2019-06-21 07:05:48', '2019-06-21 07:05:48', '', 0, 'https://mithcare.com/2019/06/21/bb311830-a772-40f6-947f-2c09875b379d/', 0, 'customize_changeset', '', 0),
(195, 1, '2019-06-21 07:06:15', '2019-06-21 07:06:15', '{\n    \"nav_menu_item[161]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:06:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48bd0879-b0cb-45a6-8554-544b3e4be0d9', '', '', '2019-06-21 07:06:15', '2019-06-21 07:06:15', '', 0, 'https://mithcare.com/2019/06/21/48bd0879-b0cb-45a6-8554-544b3e4be0d9/', 0, 'customize_changeset', '', 0),
(197, 1, '2019-06-21 07:09:05', '2019-06-21 07:09:05', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-team-5\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:09:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6880628-f91b-41ae-97f9-c0b091e4a144', '', '', '2019-06-21 07:09:05', '2019-06-21 07:09:05', '', 0, 'https://mithcare.com/2019/06/21/e6880628-f91b-41ae-97f9-c0b091e4a144/', 0, 'customize_changeset', '', 0),
(198, 1, '2019-06-21 07:09:19', '2019-06-21 07:09:19', '{\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-team-5\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-social-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:09:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0b3e8b6-ba7d-43d3-b977-b304a67c86dc', '', '', '2019-06-21 07:09:19', '2019-06-21 07:09:19', '', 0, 'https://mithcare.com/2019/06/21/a0b3e8b6-ba7d-43d3-b977-b304a67c86dc/', 0, 'customize_changeset', '', 0),
(199, 1, '2019-06-21 07:20:45', '2019-06-21 07:20:45', '{\n    \"widget_medical-way-social[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjI6IlNrIjt9\",\n            \"title\": \"Sk\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1cdf2a39b84ce1448b6410f8a188b6e9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:15:14\"\n    },\n    \"widget_medical-way-latest-news[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjE2OiJMQVRFU1QgRlJPTSBCTE9HIjtzOjEzOiJwb3N0X2NhdGVnb3J5IjtpOjA7czoxODoiZXhjbHVkZV9jYXRlZ29yaWVzIjtzOjA6IiI7czoxMToicG9zdF9udW1iZXIiO2k6MztzOjExOiJwb3N0X2NvbHVtbiI7aTozO3M6MTQ6ImV4Y2VycHRfbGVuZ3RoIjtpOjIwO3M6MTU6ImRpc2FibGVfZXhjZXJwdCI7aTowO3M6MTQ6ImRpc2FibGVfYnV0dG9uIjtpOjA7fQ==\",\n            \"title\": \"LATEST FROM BLOG\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1bc53d118945c4c1fc2244e820e27ed3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:15:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5e6f400-b2b1-4197-9108-0e63a3c751c9', '', '', '2019-06-21 07:20:45', '2019-06-21 07:20:45', '', 0, 'https://mithcare.com/?p=199', 0, 'customize_changeset', '', 0),
(200, 1, '2019-06-21 07:16:21', '2019-06-21 07:16:21', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'Blog 2', '', 'publish', 'open', 'open', '', 'blog-2', '', '', '2019-06-21 07:20:16', '2019-06-21 07:20:16', '', 0, 'https://mithcare.com/?p=200', 0, 'post', '', 0),
(201, 1, '2019-06-21 07:16:21', '2019-06-21 07:16:21', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'Blog 2', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2019-06-21 07:16:21', '2019-06-21 07:16:21', '', 200, 'https://mithcare.com/2019/06/21/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2019-06-21 07:16:51', '2019-06-21 07:16:51', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'Blog 3', '', 'publish', 'open', 'open', '', 'blog-3', '', '', '2019-06-21 07:20:10', '2019-06-21 07:20:10', '', 0, 'https://mithcare.com/?p=202', 0, 'post', '', 0),
(203, 1, '2019-06-21 07:16:51', '2019-06-21 07:16:51', '<!-- wp:paragraph -->\n<p>\n\nSed ante enim, sollicitudin nec cursus non, posuere eu mauris. Nunc ut justo eleifend, placerat nulla condimentum, condimentum dui.\n\n</p>\n<!-- /wp:paragraph -->', 'Blog 3', '', 'inherit', 'closed', 'closed', '', '202-revision-v1', '', '', '2019-06-21 07:16:51', '2019-06-21 07:16:51', '', 202, 'https://mithcare.com/2019/06/21/202-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2019-06-21 07:17:04', '2019-06-21 07:17:04', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-21 07:17:04', '2019-06-21 07:17:04', '', 1, 'https://mithcare.com/2019/06/21/1-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2019-06-21 07:18:05', '2019-06-21 07:18:05', '{\n    \"medical-way-plus::breadcrumb_type\": {\n        \"value\": \"simple\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:18:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4762c01-f6ad-4505-b7ba-d21c43587493', '', '', '2019-06-21 07:18:05', '2019-06-21 07:18:05', '', 0, 'https://mithcare.com/2019/06/21/c4762c01-f6ad-4505-b7ba-d21c43587493/', 0, 'customize_changeset', '', 0),
(206, 1, '2019-06-21 07:18:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-21 07:18:19', '0000-00-00 00:00:00', '', 0, 'https://mithcare.com/?p=206', 0, 'post', '', 0),
(207, 1, '2019-06-21 07:22:38', '2019-06-21 07:22:38', '{\n    \"widget_medical-way-contact[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjE3OiJjb250YWN0X3Nob3J0Y29kZSI7czo0ODoiW2NvbnRhY3QtZm9ybS03IGlkPSIxMjQiIHRpdGxlPSJDb250YWN0IGZvcm0gMSJdIjtzOjEyOiJjb250YWN0X3BhZ2UiO2k6MTM2O3M6NjoiYmdfcGljIjtzOjA6IiI7fQ==\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1fbead60cfee9394b7a18cc1682f2ebb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:22:38\"\n    },\n    \"sidebars_widgets[home-page-widget-area]\": {\n        \"value\": [\n            \"medical-way-services-3\",\n            \"medical-way-cta-5\",\n            \"medical-way-departments-7\",\n            \"medical-way-facts-3\",\n            \"medical-way-team-5\",\n            \"medical-way-testimonial-3\",\n            \"medical-way-latest-news-3\",\n            \"medical-way-contact-6\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:21:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8b994b9-c7e6-44dc-a7a4-c277b184830e', '', '', '2019-06-21 07:22:38', '2019-06-21 07:22:38', '', 0, 'https://mithcare.com/?p=207', 0, 'customize_changeset', '', 0),
(208, 1, '2019-06-21 07:23:38', '2019-06-21 07:23:38', '<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Maps', '', 'publish', 'closed', 'closed', '', 'maps', '', '', '2019-06-21 07:26:41', '2019-06-21 07:26:41', '', 0, 'https://mithcare.com/?page_id=208', 0, 'page', '', 0),
(209, 1, '2019-06-21 07:23:32', '2019-06-21 07:23:32', '<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Maps', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-21 07:23:32', '2019-06-21 07:23:32', '', 208, 'https://mithcare.com/208-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2019-06-21 07:26:35', '2019-06-21 07:26:35', '<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Maps', '', 'inherit', 'closed', 'closed', '', '208-autosave-v1', '', '', '2019-06-21 07:26:35', '2019-06-21 07:26:35', '', 208, 'https://mithcare.com/208-autosave-v1/', 0, 'revision', '', 0),
(211, 1, '2019-06-21 07:26:41', '2019-06-21 07:26:41', '<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Maps', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-06-21 07:26:41', '2019-06-21 07:26:41', '', 208, 'https://mithcare.com/208-revision-v1/', 0, 'revision', '', 0),
(212, 1, '2019-06-21 07:27:35', '2019-06-21 07:27:35', '{\n    \"widget_medical-way-contact[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEwOiJDb250YWN0IFVzIjtzOjE3OiJjb250YWN0X3Nob3J0Y29kZSI7czo0ODoiW2NvbnRhY3QtZm9ybS03IGlkPSIxMjQiIHRpdGxlPSJDb250YWN0IGZvcm0gMSJdIjtzOjEyOiJjb250YWN0X3BhZ2UiO2k6MjA4O3M6NjoiYmdfcGljIjtzOjA6IiI7fQ==\",\n            \"title\": \"Contact Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e58cdddfe7af3323149ec5594a11471a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:27:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca87a68d-9807-45cc-983e-5e385ae170ca', '', '', '2019-06-21 07:27:35', '2019-06-21 07:27:35', '', 0, 'https://mithcare.com/ca87a68d-9807-45cc-983e-5e385ae170ca/', 0, 'customize_changeset', '', 0),
(213, 1, '2019-06-21 07:39:35', '2019-06-21 07:39:35', '<!-- wp:shortcode -->\n[contact-form-7 id=\"124\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-06-21 07:41:06', '2019-06-21 07:41:06', '', 0, 'https://mithcare.com/?page_id=213', 0, 'page', '', 0),
(214, 1, '2019-06-21 07:39:35', '2019-06-21 07:39:35', '<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2019-06-21 07:39:35', '2019-06-21 07:39:35', '', 213, 'https://mithcare.com/213-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-06-21 07:40:27', '2019-06-21 07:40:27', '<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"124\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2019-06-21 07:40:27', '2019-06-21 07:40:27', '', 213, 'https://mithcare.com/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-06-21 07:41:06', '2019-06-21 07:41:06', '<!-- wp:shortcode -->\n[contact-form-7 id=\"124\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[wpgmza id=\"1\"]\n<!-- /wp:shortcode -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2019-06-21 07:41:06', '2019-06-21 07:41:06', '', 213, 'https://mithcare.com/213-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-06-21 07:43:16', '2019-06-21 07:43:16', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2019-06-21 07:43:16', '2019-06-21 07:43:16', '', 0, 'https://mithcare.com/?p=217', 5, 'nav_menu_item', '', 0),
(218, 1, '2019-06-21 07:47:59', '2019-06-21 07:47:59', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"pages-3\",\n                \"calendar-3\",\n                \"archives-4\",\n                \"media_audio-3\",\n                \"media_audio-5\",\n                \"categories-4\",\n                \"medical-way-social-3\",\n                \"medical-way-cta-3\",\n                \"medical-way-services-5\",\n                \"medical-way-departments-3\",\n                \"medical-way-departments-4\",\n                \"medical-way-departments-5\",\n                \"medical-way-contact-3\",\n                \"medical-way-contact-4\",\n                \"medical-way-team-3\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"home-page-widget-area\": [\n                \"medical-way-services-3\",\n                \"medical-way-cta-5\",\n                \"medical-way-departments-7\",\n                \"medical-way-facts-3\",\n                \"medical-way-team-5\",\n                \"medical-way-testimonial-3\",\n                \"medical-way-latest-news-3\",\n                \"medical-way-contact-6\"\n            ],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:47:59\"\n    },\n    \"medical-way-plus::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:47:59\"\n    },\n    \"medical-way-plus::nav_menu_locations[top]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:47:59\"\n    },\n    \"medical-way-plus::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-21 07:47:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4abfb41e-5f15-48c5-8060-f09358d0d783', '', '', '2019-06-21 07:47:59', '2019-06-21 07:47:59', '', 0, 'https://mithcare.com/4abfb41e-5f15-48c5-8060-f09358d0d783/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Top Menu', 'top-menu', 0),
(4, 'News', 'news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(11, 2, 0),
(12, 2, 0),
(44, 3, 0),
(94, 2, 0),
(95, 2, 0),
(200, 4, 0),
(202, 4, 0),
(217, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '206'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"202.28.213.0\";}'),
(19, 1, 'session_tokens', 'a:1:{s:64:\"18f7a489838b090f36799033043c6aac786c3abec407f4f50f5cc704d955c0a8\";a:4:{s:10:\"expiration\";i:1561259172;s:2:\"ip\";s:14:\"202.28.213.154\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1561086372;}}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1560504280'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BYDU.t0dZlkNkMnBRXdyo7WivWByYk.', 'admin', 'chavalit.kow@gmail.com', '', '2019-06-14 03:34:24', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(2, 1, '14.071641460736476, 100.61403518287295', '', '', '', '', '14.071641', '100.614035', '0', '', '0', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0:ͅ0�$,@B9ZL\'Y@');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '14.071641', '100.614035', '14.071641,100.61403500000006', 14, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:15:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
