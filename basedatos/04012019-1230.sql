-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2019 a las 16:29:00
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fsma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-02 13:14:59', '2019-01-02 16:14:59', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visitá la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'FSMA-IT', 'yes'),
(4, 'blogdescription', 'Servicios IT', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fernandolopez84@yahoo.com.ar', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=56&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:68:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/twentynineteen/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'fino', 'yes'),
(41, 'stylesheet', 'fino-agency', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '56', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_AR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:13:\"media_image-3\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:12:\"categories-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";}s:12:\"blog-sidebar\";a:0:{}s:25:\"fino-footer-widget-area-1\";a:0:{}s:25:\"fino-footer-widget-area-2\";a:0:{}s:25:\"fino-footer-widget-area-3\";a:0:{}s:25:\"fino-footer-widget-area-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:15:{s:13:\"attachment_id\";i:11;s:3:\"url\";s:79:\"http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant-300x100.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1500;s:6:\"height\";i:500;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1546607701;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546618501;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546618545;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546686141;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:4;s:6:\"footer\";i:0;s:6:\"social\";i:0;}s:13:\"primary_color\";s:6:\"custom\";s:17:\"primary_color_hue\";i:175;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1546515291;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(124, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1547050521', 'no'),
(125, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(163, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'category_children', 'a:0:{}', 'yes'),
(168, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_AR/wordpress-5.0.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1546606883;s:15:\"version_checked\";s:5:\"5.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(169, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1546606890;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(172, 'current_theme', 'Fino Agency', 'yes'),
(173, 'theme_mods_rokophoto-lite', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"007a3f\";s:24:\"rokophotolite_logo_image\";s:65:\"http://localhost/wordpress/wp-content/uploads/2019/01/Captura.png\";s:12:\"header_image\";s:76:\"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:26;s:3:\"url\";s:76:\"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\";s:13:\"thumbnail_url\";s:76:\"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\";s:6:\"height\";i:582;s:5:\"width\";i:1360;}s:16:\"background_image\";s:0:\"\";s:26:\"rokophotolite_social_label\";s:63:\"Para tener las últimas actualizaciones sobre mi y mis trabajos\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1546515814;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"archives-2\";i:1;s:13:\"media_image-3\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:12:\"categories-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";}s:21:\"rokophoto-sidebar-top\";a:0:{}s:24:\"rokophoto-sidebar-bottom\";a:0:{}}}}', 'yes'),
(174, 'theme_switched', '', 'yes'),
(177, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1546606890;s:7:\"checked\";a:6:{s:11:\"fino-agency\";s:3:\"1.0\";s:4:\"fino\";s:5:\"1.1.1\";s:14:\"rokophoto-lite\";s:6:\"1.1.21\";s:14:\"twentynineteen\";s:3:\"1.1\";s:15:\"twentyseventeen\";s:3:\"1.9\";s:13:\"twentysixteen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(179, 'theme_mods_fino-agency', 'a:46:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:18:\"fino_slider_page_1\";i:65;s:20:\"fino_slider_btntxt_1\";s:0:\"\";s:18:\"fino_slider_page_2\";i:77;s:20:\"fino_slider_btntxt_2\";s:0:\"\";s:16:\"fino_footer_text\";s:33:\"COPYRIGHT 2019 - FSMA INFORMATICA\";s:22:\"fino_header_time_label\";s:20:\"tel. +54 11 65191091\";s:22:\"fino_header_time_value\";s:15:\"Capital Federal\";s:17:\"fino_ctah_btn_url\";s:26:\"http://www.dropbox.com/es/\";s:18:\"fino_ctah_btn_text\";s:9:\"DESCARGAS\";s:28:\"fino_header_section_hideshow\";s:4:\"show\";s:28:\"fino_slider_section_hideshow\";s:4:\"show\";s:20:\"fino_slider_btnurl_1\";s:0:\"\";s:20:\"fino_slider_btnurl_2\";s:0:\"\";s:18:\"fino_slider_page_3\";i:83;s:20:\"fino_slider_btntxt_3\";s:0:\"\";s:20:\"fino_slider_btnurl_3\";s:0:\"\";s:19:\"fino_services_title\";s:9:\"Servicios\";s:22:\"fino_services_subtitle\";s:35:\"Brindamos servicios de alta calidad\";s:30:\"fino_services_section_hideshow\";s:4:\"show\";s:24:\"fino_page_service_icon_2\";s:7:\"fa-cogs\";s:31:\"fino_casestudy_section_hideshow\";s:4:\"show\";s:20:\"fino_casestudy_title\";s:15:\"Nuestro enfoque\";s:23:\"fino_casestudy_subtitle\";s:101:\"Ponemos máxima atención en los detalles. Desde la planificación y ejecución de nuestros trabajos.\";s:24:\"fino_page_service_icon_1\";s:11:\"fa fa-globe\";s:12:\"header_image\";s:21:\"random-uploaded-image\";s:19:\"fino_service_page_1\";i:65;s:19:\"fino_service_page_2\";i:77;s:19:\"fino_service_page_3\";i:83;s:24:\"fino_page_service_icon_3\";s:10:\"fa-sitemap\";s:19:\"fino_service_page_4\";i:86;s:24:\"fino_page_service_icon_4\";s:7:\"fa-user\";s:26:\"fino_page_casestudy_icon_1\";s:8:\"fa-users\";s:21:\"fino_casestudy_page_1\";i:83;s:21:\"fino_casestudy_page_2\";i:86;s:15:\"fino_blog_title\";s:167:\"Brindamos servicios informáticos para pymes, desde el armado de la red, pasando por todas las instancias del soporte y data-center hasta el desarrollo web y sistemas.\";s:18:\"fino_blog_subtitle\";s:0:\"\";s:29:\"fino_clients_section_hideshow\";s:4:\"show\";s:18:\"fino_client_logo_1\";i:44;s:18:\"fino_client_logo_2\";i:86;s:18:\"fino_client_logo_3\";i:65;s:18:\"fino_client_logo_4\";i:77;s:28:\"fino_footer_section_hideshow\";s:4:\"show\";s:18:\"fino_column_layout\";s:1:\"3\";}', 'yes'),
(189, '_site_transient_timeout_theme_roots', '1546608688', 'no'),
(190, '_site_transient_theme_roots', 'a:6:{s:11:\"fino-agency\";s:7:\"/themes\";s:4:\"fino\";s:7:\"/themes\";s:14:\"rokophoto-lite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1546445888:1'),
(4, 1, '_oembed_1f7a3a10c915b51ebfec2b8b7c43f08b', '{{unknown}}'),
(6, 7, '_wp_attached_file', '2019/01/Captura.png'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:159;s:6:\"height\";i:62;s:4:\"file\";s:19:\"2019/01/Captura.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Captura-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1546513334'),
(10, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(11, 3, '_wp_trash_meta_status', 'draft'),
(12, 3, '_wp_trash_meta_time', '1546513337'),
(13, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(14, 10, '_edit_lock', '1546515090:1'),
(15, 11, '_wp_attached_file', '2019/01/cabecera-mant.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2019/01/cabecera-mant.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cabecera-mant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cabecera-mant-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cabecera-mant-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"cabecera-mant-1024x341.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 6, '_edit_lock', '1546514946:1'),
(50, 6, '_wp_trash_meta_status', 'publish'),
(51, 6, '_wp_trash_meta_time', '1546514958'),
(52, 18, '_edit_lock', '1546515093:1'),
(85, 18, '_wp_trash_meta_status', 'publish'),
(86, 18, '_wp_trash_meta_time', '1546515131'),
(87, 23, '_wp_trash_meta_status', 'publish'),
(88, 23, '_wp_trash_meta_time', '1546515194'),
(89, 24, '_edit_lock', '1546515428:1'),
(90, 25, '_wp_attached_file', '2019/01/servidores.jpg'),
(91, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2019/01/servidores.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"servidores-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"servidores-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"servidores-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"servidores-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"thumbnail_portfolio\";a:4:{s:4:\"file\";s:22:\"servidores-650x650.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"thumbnail_portfolio_mobile\";a:4:{s:4:\"file\";s:22:\"servidores-450x400.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"thumbnail_portfolio_modal\";a:4:{s:4:\"file\";s:22:\"servidores-720x480.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"thumbnail_portfolio_modal_mobile\";a:4:{s:4:\"file\";s:22:\"servidores-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blog_post_thumbnail\";a:4:{s:4:\"file\";s:22:\"servidores-750x650.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 26, '_wp_attached_file', '2019/01/cropped-servidores.jpg'),
(93, 26, '_wp_attachment_context', 'custom-header'),
(94, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1360;s:6:\"height\";i:582;s:4:\"file\";s:30:\"2019/01/cropped-servidores.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-768x329.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:329;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-servidores-1024x438.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"thumbnail_portfolio\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-650x582.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:26:\"thumbnail_portfolio_mobile\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-450x400.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"thumbnail_portfolio_modal\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-720x480.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"thumbnail_portfolio_modal_mobile\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blog_post_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-servidores-750x582.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:25;}'),
(95, 26, '_wp_attachment_custom_header_last_used_rokophoto-lite', '1546515429'),
(96, 26, '_wp_attachment_is_custom_header', 'rokophoto-lite'),
(97, 24, '_wp_trash_meta_status', 'publish'),
(98, 24, '_wp_trash_meta_time', '1546515430'),
(99, 11, '_wp_attachment_is_custom_background', 'rokophoto-lite'),
(100, 27, '_edit_lock', '1546515509:1'),
(101, 27, '_wp_trash_meta_status', 'publish'),
(102, 27, '_wp_trash_meta_time', '1546515524'),
(103, 28, '_edit_lock', '1546516716:1'),
(104, 29, '_edit_lock', '1546525085:1'),
(105, 28, '_customize_restore_dismissed', '1'),
(106, 33, '_wp_trash_meta_status', 'publish'),
(107, 33, '_wp_trash_meta_time', '1546516758'),
(108, 34, '_edit_lock', '1546516897:1'),
(109, 34, '_wp_trash_meta_status', 'publish'),
(110, 34, '_wp_trash_meta_time', '1546516953'),
(111, 1, '_wp_trash_meta_status', 'publish'),
(112, 1, '_wp_trash_meta_time', '1546517752'),
(113, 1, '_wp_desired_post_slug', 'hola-mundo'),
(114, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(115, 36, '_edit_lock', '1546517792:1'),
(116, 36, '_customize_restore_dismissed', '1'),
(117, 37, '_edit_lock', '1546517867:1'),
(118, 37, '_wp_trash_meta_status', 'publish'),
(119, 37, '_wp_trash_meta_time', '1546517893'),
(120, 38, '_edit_lock', '1546518161:1'),
(121, 38, '_wp_trash_meta_status', 'publish'),
(122, 38, '_wp_trash_meta_time', '1546518163'),
(123, 10, '_wp_trash_meta_status', 'draft'),
(124, 10, '_wp_trash_meta_time', '1546518212'),
(125, 10, '_wp_desired_post_slug', 'sobre-nosotros'),
(126, 40, '_wp_trash_meta_status', 'publish'),
(127, 40, '_wp_trash_meta_time', '1546518237'),
(128, 41, '_edit_lock', '1546518165:1'),
(129, 43, '_wp_trash_meta_status', 'publish'),
(130, 43, '_wp_trash_meta_time', '1546518329'),
(131, 44, '_edit_lock', '1546518239:1'),
(132, 46, '_wp_trash_meta_status', 'publish'),
(133, 46, '_wp_trash_meta_time', '1546518395'),
(134, 47, '_wp_trash_meta_status', 'publish'),
(135, 47, '_wp_trash_meta_time', '1546518488'),
(136, 48, '_wp_trash_meta_status', 'publish'),
(137, 48, '_wp_trash_meta_time', '1546518538'),
(138, 49, '_edit_lock', '1546518695:1'),
(139, 49, '_wp_trash_meta_status', 'publish'),
(140, 49, '_wp_trash_meta_time', '1546518708'),
(141, 50, '_edit_lock', '1546518836:1'),
(142, 50, '_wp_trash_meta_status', 'publish'),
(143, 50, '_wp_trash_meta_time', '1546518851'),
(144, 51, '_wp_trash_meta_status', 'publish'),
(145, 51, '_wp_trash_meta_time', '1546518918'),
(146, 52, '_edit_lock', '1546519235:1'),
(147, 53, '_wp_attached_file', '2019/01/cropped-servidores-1.jpg'),
(148, 53, '_wp_attachment_context', 'custom-header'),
(149, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:540;s:4:\"file\";s:32:\"2019/01/cropped-servidores-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-servidores-1-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-768x216.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cropped-servidores-1-1024x288.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fino-page-thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-738x423.jpg\";s:5:\"width\";i:738;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-home\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-360x244.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"fino-photo-single\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-847x411.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:411;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-blog\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-408x244.jpg\";s:5:\"width\";i:408;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"fino-casestudy-thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-555x286.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:32:\"cropped-servidores-1-170x120.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:25;}'),
(150, 53, '_wp_attachment_custom_header_last_used_fino-agency', '1546519170'),
(151, 53, '_wp_attachment_is_custom_header', 'fino-agency'),
(152, 54, '_wp_attached_file', '2019/01/cropped-cabecera-mant.jpg'),
(153, 54, '_wp_attachment_context', 'custom-header'),
(154, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:540;s:4:\"file\";s:33:\"2019/01/cropped-cabecera-mant.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-cabecera-mant-300x84.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-768x216.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"cropped-cabecera-mant-1024x288.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fino-page-thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-738x423.jpg\";s:5:\"width\";i:738;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-home\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-360x244.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"fino-photo-single\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-847x411.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:411;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-blog\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-408x244.jpg\";s:5:\"width\";i:408;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"fino-casestudy-thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-555x286.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:33:\"cropped-cabecera-mant-170x120.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:11;}'),
(155, 54, '_wp_attachment_custom_header_last_used_fino-agency', '1546519213'),
(156, 54, '_wp_attachment_is_custom_header', 'fino-agency'),
(157, 52, '_customize_restore_dismissed', '1'),
(158, 55, '_wp_trash_meta_status', 'publish'),
(159, 55, '_wp_trash_meta_time', '1546519262'),
(160, 56, '_edit_lock', '1546519631:1'),
(161, 56, '_wp_page_template', 'home-page.php'),
(162, 59, '_edit_lock', '1546520079:1'),
(163, 59, '_wp_trash_meta_status', 'publish'),
(164, 59, '_wp_trash_meta_time', '1546520085'),
(165, 60, '_edit_lock', '1546520163:1'),
(166, 60, '_wp_trash_meta_status', 'publish'),
(167, 60, '_wp_trash_meta_time', '1546520169'),
(168, 61, '_wp_trash_meta_status', 'publish'),
(169, 61, '_wp_trash_meta_time', '1546520196'),
(170, 62, '_edit_lock', '1546520306:1'),
(171, 62, '_wp_trash_meta_status', 'publish'),
(172, 62, '_wp_trash_meta_time', '1546520347'),
(173, 63, '_wp_trash_meta_status', 'publish'),
(174, 63, '_wp_trash_meta_time', '1546520392'),
(175, 64, '_edit_lock', '1546520743:1'),
(176, 65, '_edit_lock', '1546521194:1'),
(177, 66, '_wp_attached_file', '2019/01/1493938270-programacion-istock.jpg'),
(178, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:42:\"2019/01/1493938270-programacion-istock.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"1493938270-programacion-istock-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fino-page-thumbnail\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-738x423.jpg\";s:5:\"width\";i:738;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-home\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-360x244.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"fino-photo-single\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-847x411.jpg\";s:5:\"width\";i:847;s:6:\"height\";i:411;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-blog\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-408x244.jpg\";s:5:\"width\";i:408;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"fino-casestudy-thumbnail\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-555x286.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:42:\"1493938270-programacion-istock-170x120.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 66, '_wp_attachment_image_alt', 'Desarrollo WEB'),
(180, 65, '_thumbnail_id', '66'),
(181, 64, '_customize_restore_dismissed', '1'),
(182, 68, '_wp_trash_meta_status', 'publish'),
(183, 68, '_wp_trash_meta_time', '1546520796'),
(184, 69, '_edit_lock', '1546521505:1'),
(185, 70, '_menu_item_type', 'post_type'),
(186, 70, '_menu_item_menu_item_parent', '0'),
(187, 70, '_menu_item_object_id', '41'),
(188, 70, '_menu_item_object', 'page'),
(189, 70, '_menu_item_target', ''),
(190, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 70, '_menu_item_xfn', ''),
(192, 70, '_menu_item_url', ''),
(194, 71, '_menu_item_type', 'post_type'),
(195, 71, '_menu_item_menu_item_parent', '0'),
(196, 71, '_menu_item_object_id', '56'),
(197, 71, '_menu_item_object', 'page'),
(198, 71, '_menu_item_target', ''),
(199, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 71, '_menu_item_xfn', ''),
(201, 71, '_menu_item_url', ''),
(203, 72, '_menu_item_type', 'post_type'),
(204, 72, '_menu_item_menu_item_parent', '0'),
(205, 72, '_menu_item_object_id', '44'),
(206, 72, '_menu_item_object', 'page'),
(207, 72, '_menu_item_target', ''),
(208, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 72, '_menu_item_xfn', ''),
(210, 72, '_menu_item_url', ''),
(212, 73, '_menu_item_type', 'post_type'),
(213, 73, '_menu_item_menu_item_parent', '0'),
(214, 73, '_menu_item_object_id', '29'),
(215, 73, '_menu_item_object', 'page'),
(216, 73, '_menu_item_target', ''),
(217, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 73, '_menu_item_xfn', ''),
(219, 73, '_menu_item_url', ''),
(221, 69, '_customize_restore_dismissed', '1'),
(222, 74, '_wp_trash_meta_status', 'publish'),
(223, 74, '_wp_trash_meta_time', '1546521540'),
(224, 75, '_edit_lock', '1546521873:1'),
(225, 76, '_menu_item_type', 'post_type'),
(226, 76, '_menu_item_menu_item_parent', '70'),
(227, 76, '_menu_item_object_id', '65'),
(228, 76, '_menu_item_object', 'page'),
(229, 76, '_menu_item_target', ''),
(230, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 76, '_menu_item_xfn', ''),
(232, 76, '_menu_item_url', ''),
(234, 75, '_wp_trash_meta_status', 'publish'),
(235, 75, '_wp_trash_meta_time', '1546521928'),
(236, 77, '_edit_lock', '1546522677:1'),
(237, 79, '_menu_item_type', 'post_type'),
(238, 79, '_menu_item_menu_item_parent', '70'),
(239, 79, '_menu_item_object_id', '77'),
(240, 79, '_menu_item_object', 'page'),
(241, 79, '_menu_item_target', ''),
(242, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 79, '_menu_item_xfn', ''),
(244, 79, '_menu_item_url', ''),
(246, 80, '_wp_trash_meta_status', 'publish'),
(247, 80, '_wp_trash_meta_time', '1546522499'),
(248, 81, '_wp_attached_file', '2019/01/36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap.jpg'),
(249, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:822;s:6:\"height\";i:583;s:4:\"file\";s:95:\"2019/01/36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-768x545.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"fino-page-thumbnail\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-738x423.jpg\";s:5:\"width\";i:738;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-home\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-360x244.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"fino-photo-single\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-822x411.jpg\";s:5:\"width\";i:822;s:6:\"height\";i:411;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino-photo-blog\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-408x244.jpg\";s:5:\"width\";i:408;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"fino-casestudy-thumbnail\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-555x286.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:286;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:95:\"36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap-170x120.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:63:\"IT consultant presenting tag cloud about information technology\";s:17:\"created_timestamp\";s:10:\"1443293147\";s:9:\"copyright\";s:10:\"NicoElNino\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:63:\"IT consultant presenting tag cloud about information technology\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:42:{i:0;s:8:\"Computer\";i:1;s:7:\"Service\";i:2;s:18:\"Information Medium\";i:3;s:10:\"Cyberspace\";i:4;s:11:\"Businessman\";i:5;s:10:\"IT Support\";i:6;s:12:\"Presentation\";i:7;s:16:\"Computer Network\";i:8;s:11:\"Single Word\";i:9;s:10:\"E-commerce\";i:10;s:20:\"Electronics Industry\";i:11;s:11:\"Engineering\";i:12;s:11:\"Push Button\";i:13;s:5:\"Label\";i:14;s:6:\"Asking\";i:15;s:7:\"Pushing\";i:16;s:7:\"Showing\";i:17;s:4:\"Text\";i:18;s:11:\"Backgrounds\";i:19;s:19:\"Caucasian Ethnicity\";i:20;s:10:\"Connection\";i:21;s:13:\"Communication\";i:22;s:10:\"Innovation\";i:23;s:5:\"Order\";i:24;s:5:\"White\";i:25;s:4:\"Blue\";i:26;s:5:\"Ideas\";i:27;s:8:\"Business\";i:28;s:10:\"Technology\";i:29;s:25:\"Digitally Generated Image\";i:30;s:12:\"Human Finger\";i:31;s:10:\"Human Hand\";i:32;s:8:\"Engineer\";i:33;s:11:\"Cloud - Sky\";i:34;s:8:\"Internet\";i:35;s:17:\"Computer Software\";i:36;s:16:\"Computer Monitor\";i:37;s:4:\"Data\";i:38;s:12:\"Mobile Phone\";i:39;s:9:\"Telephone\";i:40;s:7:\"acronym\";i:41;s:10:\"Consultant\";}}}'),
(250, 81, '_wp_attachment_image_alt', 'Soporte y Data Center'),
(251, 77, '_thumbnail_id', '81'),
(252, 83, '_edit_lock', '1546522826:1'),
(253, 84, '_wp_attached_file', '2019/01/depositphotos_67316111-stock-photo-secure-computer-network.jpg'),
(254, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:70:\"2019/01/depositphotos_67316111-stock-photo-secure-computer-network.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:70:\"depositphotos_67316111-stock-photo-secure-computer-network-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:70:\"depositphotos_67316111-stock-photo-secure-computer-network-170x120.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(255, 83, '_thumbnail_id', '84'),
(256, 86, '_edit_lock', '1546522874:1'),
(257, 87, '_wp_attached_file', '2019/01/consultoria.png'),
(258, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:300;s:4:\"file\";s:23:\"2019/01/consultoria.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"consultoria-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"consultoria-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"fino-photo-home\";a:4:{s:4:\"file\";s:23:\"consultoria-360x244.png\";s:5:\"width\";i:360;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"fino-photo-blog\";a:4:{s:4:\"file\";s:23:\"consultoria-408x244.png\";s:5:\"width\";i:408;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"fino-casestudy-thumbnail\";a:4:{s:4:\"file\";s:23:\"consultoria-450x286.png\";s:5:\"width\";i:450;s:6:\"height\";i:286;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"fino_client_img\";a:4:{s:4:\"file\";s:23:\"consultoria-170x120.png\";s:5:\"width\";i:170;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 86, '_thumbnail_id', '87'),
(260, 89, '_menu_item_type', 'post_type'),
(261, 89, '_menu_item_menu_item_parent', '70'),
(262, 89, '_menu_item_object_id', '86'),
(263, 89, '_menu_item_object', 'page'),
(264, 89, '_menu_item_target', ''),
(265, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(266, 89, '_menu_item_xfn', ''),
(267, 89, '_menu_item_url', ''),
(269, 90, '_menu_item_type', 'post_type'),
(270, 90, '_menu_item_menu_item_parent', '70'),
(271, 90, '_menu_item_object_id', '83'),
(272, 90, '_menu_item_object', 'page'),
(273, 90, '_menu_item_target', ''),
(274, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 90, '_menu_item_xfn', ''),
(276, 90, '_menu_item_url', ''),
(278, 91, '_wp_trash_meta_status', 'publish'),
(279, 91, '_wp_trash_meta_time', '1546523142'),
(280, 92, '_edit_lock', '1546524241:1'),
(281, 92, '_wp_trash_meta_status', 'publish'),
(282, 92, '_wp_trash_meta_time', '1546524246'),
(283, 93, '_edit_lock', '1546524624:1'),
(284, 93, '_wp_trash_meta_status', 'publish'),
(285, 93, '_wp_trash_meta_time', '1546524640'),
(286, 94, '_edit_lock', '1546524684:1'),
(287, 94, '_wp_trash_meta_status', 'publish'),
(288, 94, '_wp_trash_meta_time', '1546524692'),
(289, 95, '_wp_trash_meta_status', 'publish'),
(290, 95, '_wp_trash_meta_time', '1546524720'),
(291, 101, '_edit_lock', '1546525186:1'),
(292, 101, '_wp_trash_meta_status', 'publish'),
(293, 101, '_wp_trash_meta_time', '1546525227');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-02 13:14:59', '2019-01-02 16:14:59', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2019-01-03 09:15:52', '2019-01-03 12:15:52', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-02 13:14:59', '2019-01-02 16:14:59', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo, es diferente de una entrada porque se va a quedar en un solo lugar y va a aparecer en la navegación de tu sitio (en la mayoría de los temas). Muchas gente empieza con una página del tipo \"Sobre Mí\", que los introduce a los potenciales visitantes de su sitio. Podés decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2019-01-03 08:02:14', '2019-01-03 11:02:14', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-02 13:14:59', '2019-01-02 16:14:59', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tenés una cuenta e iniciás sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido embebido desde otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Estadísticas</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo guardamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tenés sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Adónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>¿Qué procedimientos de violación de datos tenemos en marcha?</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quiénes (terceros) recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué toma de decisiones y/o perfiles automatizados se realizan con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos de divulgación regulatoria de la industria</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2019-01-03 08:02:17', '2019-01-03 11:02:17', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-02 13:15:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-02 13:15:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-02 13:20:12', '2019-01-02 16:20:12', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después empezá a escribir!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p><strong>gato</strong></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:core-embed/facebook {\"url\":\"https://www.facebook.com/Fsma-It-323434311567494/?modal=admin_todo_tour\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-facebook wp-block-embed\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.facebook.com/Fsma-It-323434311567494/?modal=admin_todo_tour\n</div></figure>\n<!-- /wp:core-embed/facebook -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2019-01-02 13:20:12', '2019-01-02 16:20:12', '', 1, 'http://localhost/wordpress/2019/01/02/1-autosave-v1/', 0, 'revision', '', 0),
(6, 1, '2019-01-03 08:29:14', '2019-01-03 11:29:14', '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -2101224131,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:58:15\"\n    },\n    \"nav_menu[-2101224131]\": {\n        \"value\": {\n            \"name\": \"HOME\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:58:15\"\n    },\n    \"nav_menu_item[-1022191774]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"HOME\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -2101224131,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:59:16\"\n    },\n    \"nav_menu_item[-1900306030]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"SOBRE NOSOTROS\",\n            \"url\": \"http://localhost/wordpress/pagina-ejemplo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina de ejemplo\",\n            \"nav_menu_term_id\": -2101224131,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:58:15\"\n    },\n    \"nav_menu_item[-366464490]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"SERVICIOS\",\n            \"url\": \"http://localhost/wordpress/pagina-ejemplo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina de ejemplo\",\n            \"nav_menu_term_id\": -2101224131,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:58:15\"\n    },\n    \"nav_menu_item[-1973456828]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"CONTACTO\",\n            \"url\": \"http://localhost/wordpress/pagina-ejemplo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina de ejemplo\",\n            \"nav_menu_term_id\": -2101224131,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 10:59:16\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Servicios IT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:00:16\"\n    },\n    \"twentynineteen::primary_color\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:00:16\"\n    },\n    \"twentynineteen::primary_color_hue\": {\n        \"value\": 175,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:00:16\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:01:16\"\n    },\n    \"nav_menu[2]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:01:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c9e0dba-3c42-4d15-8873-c58a1f6d34f7', '', '', '2019-01-03 08:29:14', '2019-01-03 11:29:14', '', 0, 'http://localhost/wordpress/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2019-01-03 07:59:13', '2019-01-03 10:59:13', '', 'Captura', '', 'inherit', 'open', 'closed', '', 'captura', '', '', '2019-01-03 07:59:13', '2019-01-03 10:59:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/Captura.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2019-01-03 08:02:14', '2019-01-03 11:02:14', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo, es diferente de una entrada porque se va a quedar en un solo lugar y va a aparecer en la navegación de tu sitio (en la mayoría de los temas). Muchas gente empieza con una página del tipo \"Sobre Mí\", que los introduce a los potenciales visitantes de su sitio. Podés decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy mensajero en bicicleta de día, actor aspirante de noche, y esta es mi página web. Vivo en Los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y ser atrapado por la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...o algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La compañia XYZ Trasto fue fundada en 1971, y provee trastos de calidad para el público desde entonces. Ubicado en Ciudad Gótica, XYZ le da empleo a más de 2000 personas y hace todo tipo de cosas asombrosas para la comunidad de Gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías dirigirte a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. Divertite!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-03 08:02:14', '2019-01-03 11:02:14', '', 2, 'http://localhost/wordpress/2019/01/03/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-01-03 08:02:17', '2019-01-03 11:02:17', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tenés una cuenta e iniciás sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido embebido desde otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Estadísticas</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo guardamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tenés sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Adónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>¿Qué procedimientos de violación de datos tenemos en marcha?</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quiénes (terceros) recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué toma de decisiones y/o perfiles automatizados se realizan con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos de divulgación regulatoria de la industria</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-01-03 08:02:17', '2019-01-03 11:02:17', '', 3, 'http://localhost/wordpress/2019/01/03/3-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-01-03 09:23:32', '2019-01-03 12:23:32', '<!-- wp:image {\"id\":11,\"width\":1266,\"height\":421} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant-1024x341.jpg\" alt=\"\" class=\"wp-image-11\" width=\"1266\" height=\"421\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'closed', 'closed', '', 'sobre-nosotros__trashed', '', '', '2019-01-03 09:23:32', '2019-01-03 12:23:32', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-01-03 08:03:06', '2019-01-03 11:03:06', '', 'cabecera-mant', '', 'inherit', 'open', 'closed', '', 'cabecera-mant', '', '', '2019-01-03 08:17:52', '2019-01-03 11:17:52', '', 10, 'http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-01-03 08:19:26', '2019-01-03 11:19:26', '<!-- wp:image {\"id\":11} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant-1024x341.jpg\" alt=\"sobre \" class=\"wp-image-11\"/></figure>\n<!-- /wp:image -->', 'Bloque reutilizable sin título', '', 'publish', 'closed', 'closed', '', 'bloque-reutilizable-sin-titulo', '', '', '2019-01-03 08:19:26', '2019-01-03 11:19:26', '', 0, 'http://localhost/wordpress/2019/01/03/bloque-reutilizable-sin-titulo/', 0, 'wp_block', '', 0),
(13, 1, '2019-01-03 08:24:33', '2019-01-03 11:24:33', '<!-- wp:image {\"id\":11,\"width\":1266,\"height\":421} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant-1024x341.jpg\" alt=\"\" class=\"wp-image-11\" width=\"1266\" height=\"421\"/></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-01-03 08:24:33', '2019-01-03 11:24:33', '', 10, 'http://localhost/wordpress/2019/01/03/10-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-01-03 08:32:06', '2019-01-03 11:32:06', '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -1242131661,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"twentynineteen::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu_item[15]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu_item[16]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu_item[17]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu[-1242131661]\": {\n        \"value\": {\n            \"name\": \"home\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:31:20\"\n    },\n    \"nav_menu_item[-1105053442]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"home\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -1242131661,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:32:06\"\n    },\n    \"nav_menu_item[-758514209]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"sobre nosotros\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -1242131661,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:32:06\"\n    },\n    \"nav_menu_item[-410379146]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"servicios\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -1242131661,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:32:06\"\n    },\n    \"nav_menu_item[-1047749910]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"contacto\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Inicio\",\n            \"nav_menu_term_id\": -1242131661,\n            \"_invalid\": false,\n            \"type_label\": \"Enlace personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:32:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '522deb40-3f6b-413d-8955-4ec0098b349d', '', '', '2019-01-03 08:32:06', '2019-01-03 11:32:06', '', 0, 'http://localhost/wordpress/?p=18', 0, 'customize_changeset', '', 0),
(23, 1, '2019-01-03 08:33:14', '2019-01-03 11:33:14', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:33:14\"\n    },\n    \"widget_media_image[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aToxMTtzOjM6InVybCI7czo3OToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzLzIwMTkvMDEvY2FiZWNlcmEtbWFudC0zMDB4MTAwLmpwZyI7czo1OiJ0aXRsZSI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NToid2lkdGgiO2k6MTUwMDtzOjY6ImhlaWdodCI7aTo1MDA7czo3OiJjYXB0aW9uIjtzOjA6IiI7czozOiJhbHQiO3M6MDoiIjtzOjk6ImxpbmtfdHlwZSI7czo2OiJjdXN0b20iO3M6ODoibGlua191cmwiO3M6MDoiIjtzOjEzOiJpbWFnZV9jbGFzc2VzIjtzOjA6IiI7czoxMjoibGlua19jbGFzc2VzIjtzOjA6IiI7czo4OiJsaW5rX3JlbCI7czowOiIiO3M6MTc6ImxpbmtfdGFyZ2V0X2JsYW5rIjtiOjA7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"141c169fda7a3eb47527b44d052fb172\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:33:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a678e425-28d9-47d9-94ef-1bbe73025666', '', '', '2019-01-03 08:33:14', '2019-01-03 11:33:14', '', 0, 'http://localhost/wordpress/2019/01/03/a678e425-28d9-47d9-94ef-1bbe73025666/', 0, 'customize_changeset', '', 0),
(24, 1, '2019-01-03 08:37:09', '2019-01-03 11:37:09', '{\n    \"rokophoto-lite::background_color\": {\n        \"value\": \"#007a3f\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:36:29\"\n    },\n    \"rokophoto-lite::rokophotolite_logo_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2019/01/Captura.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:36:29\"\n    },\n    \"rokophoto-lite::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:37:09\"\n    },\n    \"rokophoto-lite::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg\",\n            \"timestamp\": 1546515411423,\n            \"attachment_id\": 26,\n            \"width\": 1360,\n            \"height\": 582\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:37:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ceb1eeed-ac1c-4e3c-8db7-c5dd2c07b457', '', '', '2019-01-03 08:37:09', '2019-01-03 11:37:09', '', 0, 'http://localhost/wordpress/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2019-01-03 08:36:42', '2019-01-03 11:36:42', '', 'servidores', '', 'inherit', 'open', 'closed', '', 'servidores', '', '', '2019-01-03 08:36:42', '2019-01-03 11:36:42', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/servidores.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-01-03 08:36:50', '2019-01-03 11:36:50', '', 'cropped-servidores.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-servidores-jpg', '', '', '2019-01-03 08:36:50', '2019-01-03 11:36:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-01-03 08:38:43', '2019-01-03 11:38:43', '{\n    \"rokophoto-lite::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:38:29\"\n    },\n    \"rokophoto-lite::rokophotolite_social_label\": {\n        \"value\": \"Para tener las \\u00faltimas actualizaciones sobre mi y mis trabajos\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:38:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c31ee4c-fbcc-420d-86f4-98bdd62f93ca', '', '', '2019-01-03 08:38:43', '2019-01-03 11:38:43', '', 0, 'http://localhost/wordpress/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2019-01-03 08:56:59', '0000-00-00 00:00:00', '{\n    \"fino-agency::fino_header_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:52:59\"\n    },\n    \"fino-agency::fino_header_time_label\": {\n        \"value\": \"tel. +54 11 65191091\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:52:59\"\n    },\n    \"fino-agency::fino_header_time_value\": {\n        \"value\": \"Capital Federal\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:53:59\"\n    },\n    \"fino-agency::fino_header_phone_label\": {\n        \"value\": \"fdsfds\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:56:59\"\n    },\n    \"fino-agency::fino_header_phone_value\": {\n        \"value\": \"fsdf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:56:59\"\n    },\n    \"fino-agency::fino_ctah_btn_url\": {\n        \"value\": \"fdsf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:56:59\"\n    },\n    \"fino-agency::fino_ctah_btn_text\": {\n        \"value\": \"sfs\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:56:59\"\n    },\n    \"fino-agency::fino_slider_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_page_1\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btntxt_1\": {\n        \"value\": \"fsgds\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_1\": {\n        \"value\": \"gfdsgf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btntxt_2\": {\n        \"value\": \"fsfd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_2\": {\n        \"value\": \"fsf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_page_3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btntxt_3\": {\n        \"value\": \"fsdf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_3\": {\n        \"value\": \"sfd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_services_title\": {\n        \"value\": \"fdgdf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:54:59\"\n    },\n    \"fino-agency::fino_services_subtitle\": {\n        \"value\": \"dfgd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:55:59\"\n    },\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"gdfgd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:55:59\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '106058ef-871c-42ab-945d-7ec5c108e80d', '', '', '2019-01-03 08:56:59', '2019-01-03 11:56:59', '', 0, 'http://localhost/wordpress/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2019-01-03 08:57:42', '2019-01-03 11:57:42', '<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\">Profesionales con dedicación a los logros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">FSMA-IT comenzó con un pequeño grupo de entusiastas y amantes de la Tecnología, desde esos pilares, construimos este equipo de personas para brindar los mejores y mas actualizados servicios tecnológicos, estando siempre en búsqueda de la satisfacción de cada cliente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><strong>Nuestro trabajo acompaña a su crecimiento empresarial.</strong></p>\n<!-- /wp:paragraph -->', 'SOBRE NOSOTROS', '', 'publish', 'closed', 'closed', '', 'sobre-nosotros-2', '', '', '2019-01-03 11:16:27', '2019-01-03 14:16:27', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-01-03 08:57:42', '2019-01-03 11:57:42', '', 'sobre nosotros', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-01-03 08:57:42', '2019-01-03 11:57:42', '', 29, 'http://localhost/wordpress/2019/01/03/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-03 08:58:21', '2019-01-03 11:58:21', '<!-- wp:paragraph -->\n<p>pruebassssdkfmnkdsn{fkdsf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ds</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>{fdsflds</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>f}sdmf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ldsf</p>\n<!-- /wp:paragraph -->', 'sobre nosotros', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-01-03 08:58:21', '2019-01-03 11:58:21', '', 29, 'http://localhost/wordpress/2019/01/03/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-03 08:59:18', '2019-01-03 11:59:18', '{\n    \"fino-agency::fino_slider_page_1\": {\n        \"value\": \"29\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:59:18\"\n    },\n    \"fino-agency::fino_slider_btntxt_1\": {\n        \"value\": \"gato\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:59:18\"\n    },\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"29\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:59:18\"\n    },\n    \"fino-agency::fino_slider_btntxt_2\": {\n        \"value\": \"gato2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 11:59:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b4c30ef-248c-4bfe-ab0a-e89ca2b3e8f7', '', '', '2019-01-03 08:59:18', '2019-01-03 11:59:18', '', 0, 'http://localhost/wordpress/2019/01/03/3b4c30ef-248c-4bfe-ab0a-e89ca2b3e8f7/', 0, 'customize_changeset', '', 0),
(34, 1, '2019-01-03 09:02:33', '2019-01-03 12:02:33', '{\n    \"fino-agency::fino_footer_text\": {\n        \"value\": \"COPYRIGHT 2019 - FSMA INFORMATICA\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:02:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'deffef41-28f5-4332-876b-e1d81c570c85', '', '', '2019-01-03 09:02:33', '2019-01-03 12:02:33', '', 0, 'http://localhost/wordpress/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2019-01-03 09:15:52', '2019-01-03 12:15:52', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, y después empezá a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-03 09:15:52', '2019-01-03 12:15:52', '', 1, 'http://localhost/wordpress/2019/01/03/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-01-03 09:16:31', '0000-00-00 00:00:00', '{\n    \"fino-agency::fino_header_time_label\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:16:31\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1f1795e8-d872-41e3-bc35-21451b64cda0', '', '', '2019-01-03 09:16:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2019-01-03 09:18:12', '2019-01-03 12:18:12', '{\n    \"fino-agency::fino_header_time_label\": {\n        \"value\": \"tel. +54 11 65191091\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:17:47\"\n    },\n    \"fino-agency::fino_header_time_value\": {\n        \"value\": \"Capital Federal\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:17:47\"\n    },\n    \"fino-agency::fino_ctah_btn_url\": {\n        \"value\": \"...\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:18:12\"\n    },\n    \"fino-agency::fino_ctah_btn_text\": {\n        \"value\": \"INICIAR SESION\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:18:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '388d4bea-422b-4692-b3ba-4dd053a7607e', '', '', '2019-01-03 09:18:12', '2019-01-03 12:18:12', '', 0, 'http://localhost/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2019-01-03 09:22:43', '2019-01-03 12:22:43', '{\n    \"nav_menu_item[20]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 20,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Enlace personalizado\",\n            \"title\": \"sobre nosotros\",\n            \"url\": \"http://localhost/sobrenosotros\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 4,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:19:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5b83fc7-3f9e-466f-ba33-83ee7ddc658b', '', '', '2019-01-03 09:22:43', '2019-01-03 12:22:43', '', 0, 'http://localhost/wordpress/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2019-01-03 09:23:32', '2019-01-03 12:23:32', '<!-- wp:image {\"id\":11,\"width\":1266,\"height\":421} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/cabecera-mant-1024x341.jpg\" alt=\"\" class=\"wp-image-11\" width=\"1266\" height=\"421\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-01-03 09:23:32', '2019-01-03 12:23:32', '', 10, 'http://localhost/wordpress/2019/01/03/10-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-01-03 09:23:56', '2019-01-03 12:23:56', '{\n    \"nav_menu_item[20]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 20,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Enlace personalizado\",\n            \"title\": \"sobre nosotros\",\n            \"url\": \"http://localhost/wordpress/sobre-nosotros-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 4,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:23:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b6aa8069-6c80-4491-babd-0f37b2179e21', '', '', '2019-01-03 09:23:56', '2019-01-03 12:23:56', '', 0, 'http://localhost/wordpress/2019/01/03/b6aa8069-6c80-4491-babd-0f37b2179e21/', 0, 'customize_changeset', '', 0),
(41, 1, '2019-01-03 09:24:58', '2019-01-03 12:24:58', '', 'servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2019-01-03 09:24:58', '2019-01-03 12:24:58', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-01-03 09:24:58', '2019-01-03 12:24:58', '', 'servicios', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-03 09:24:58', '2019-01-03 12:24:58', '', 41, 'http://localhost/wordpress/2019/01/03/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-01-03 09:25:29', '2019-01-03 12:25:29', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 21,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Enlace personalizado\",\n            \"title\": \"servicios\",\n            \"url\": \"http://localhost/wordpress/servicios/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 4,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:25:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8dff5aea-d504-4efc-88f6-0e7a21febf31', '', '', '2019-01-03 09:25:29', '2019-01-03 12:25:29', '', 0, 'http://localhost/wordpress/2019/01/03/8dff5aea-d504-4efc-88f6-0e7a21febf31/', 0, 'customize_changeset', '', 0),
(44, 1, '2019-01-03 09:26:19', '2019-01-03 12:26:19', '<!-- wp:paragraph -->\n<p>contacto</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2019-01-03 09:26:19', '2019-01-03 12:26:19', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2019-01-03 09:26:19', '2019-01-03 12:26:19', '<!-- wp:paragraph -->\n<p>contacto</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 09:26:19', '2019-01-03 12:26:19', '', 44, 'http://localhost/wordpress/2019/01/03/44-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(46, 1, '2019-01-03 09:26:35', '2019-01-03 12:26:35', '{\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 22,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Enlace personalizado\",\n            \"title\": \"contacto\",\n            \"url\": \"http://localhost/wordpress/contacto/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 4,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:26:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f6e856c1-077d-425c-b09c-477b98d71260', '', '', '2019-01-03 09:26:35', '2019-01-03 12:26:35', '', 0, 'http://localhost/wordpress/2019/01/03/f6e856c1-077d-425c-b09c-477b98d71260/', 0, 'customize_changeset', '', 0),
(47, 1, '2019-01-03 09:28:08', '2019-01-03 12:28:08', '{\n    \"fino-agency::fino_ctah_btn_url\": {\n        \"value\": \"https://anydesk.es/plataformas/windows\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:28:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8beca17-8820-4517-b07b-f6e9adaca420', '', '', '2019-01-03 09:28:08', '2019-01-03 12:28:08', '', 0, 'http://localhost/wordpress/2019/01/03/c8beca17-8820-4517-b07b-f6e9adaca420/', 0, 'customize_changeset', '', 0),
(48, 1, '2019-01-03 09:28:58', '2019-01-03 12:28:58', '{\n    \"fino-agency::fino_ctah_btn_url\": {\n        \"value\": \"www.dropbox.com/es/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:28:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd25ef690-cae4-4db0-8eb4-d67882c638cf', '', '', '2019-01-03 09:28:58', '2019-01-03 12:28:58', '', 0, 'http://localhost/wordpress/2019/01/03/d25ef690-cae4-4db0-8eb4-d67882c638cf/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-01-03 09:31:47', '2019-01-03 12:31:47', '{\n    \"fino-agency::fino_header_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:29:35\"\n    },\n    \"fino-agency::fino_slider_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_btnurl_1\": {\n        \"value\": \"ggdfg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"41\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_btnurl_2\": {\n        \"value\": \"gdfgd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_page_3\": {\n        \"value\": \"44\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_btntxt_3\": {\n        \"value\": \"dgd \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_slider_btnurl_3\": {\n        \"value\": \"dfgdfg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_services_title\": {\n        \"value\": \"Soporte\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_services_subtitle\": {\n        \"value\": \"dfsfddsfdsmfkdsf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:30:35\"\n    },\n    \"fino-agency::fino_services_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:31:35\"\n    },\n    \"fino-agency::fino_page_service_icon_2\": {\n        \"value\": \"<i class=\\\"fa fa-bus\\\" aria-hidden=\\\"true\\\"></i>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:31:35\"\n    },\n    \"fino-agency::fino_casestudy_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:31:35\"\n    },\n    \"fino-agency::fino_casestudy_title\": {\n        \"value\": \"fgd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:31:35\"\n    },\n    \"fino-agency::fino_casestudy_subtitle\": {\n        \"value\": \"gdfgd\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:31:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8211b84a-d849-4f99-a1fb-5ed1ed2fdf9a', '', '', '2019-01-03 09:31:47', '2019-01-03 12:31:47', '', 0, 'http://localhost/wordpress/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2019-01-03 09:34:11', '2019-01-03 12:34:11', '{\n    \"fino-agency::fino_ctah_btn_text\": {\n        \"value\": \"DESCARGAS\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:33:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0808fe16-950b-44bb-9cc3-0303e34203ad', '', '', '2019-01-03 09:34:11', '2019-01-03 12:34:11', '', 0, 'http://localhost/wordpress/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2019-01-03 09:35:18', '2019-01-03 12:35:18', '{\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"<i class=\\\"fa fa-thermometer-three-quarters\\\" aria-hidden=\\\"true\\\"></i>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:35:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f18f4538-d2c3-4ed5-824a-e26d08304821', '', '', '2019-01-03 09:35:18', '2019-01-03 12:35:18', '', 0, 'http://localhost/wordpress/2019/01/03/f18f4538-d2c3-4ed5-824a-e26d08304821/', 0, 'customize_changeset', '', 0),
(52, 1, '2019-01-03 09:40:35', '0000-00-00 00:00:00', '{\n    \"fino-agency::fino_services_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:37:57\"\n    },\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"fa-thermometer-three-quarters\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:37:57\"\n    },\n    \"fino-agency::fino_blog_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:38:57\"\n    },\n    \"fino-agency::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:40:35\"\n    },\n    \"fino-agency::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:40:35\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ed541309-7193-40b6-9f39-5b1c1369ad5f', '', '', '2019-01-03 09:40:35', '2019-01-03 12:40:35', '', 0, 'http://localhost/wordpress/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2019-01-03 09:39:29', '2019-01-03 12:39:29', '', 'cropped-servidores-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-servidores-1-jpg', '', '', '2019-01-03 09:39:29', '2019-01-03 12:39:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/cropped-servidores-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-01-03 09:40:12', '2019-01-03 12:40:12', '', 'cropped-cabecera-mant.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cabecera-mant-jpg', '', '', '2019-01-03 09:40:12', '2019-01-03 12:40:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/cropped-cabecera-mant.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-01-03 09:41:02', '2019-01-03 12:41:02', '{\n    \"fino-agency::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:41:02\"\n    },\n    \"fino-agency::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:41:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ccf7a13-9a4c-4ce6-9659-f3b3f6a33a73', '', '', '2019-01-03 09:41:02', '2019-01-03 12:41:02', '', 0, 'http://localhost/wordpress/2019/01/03/6ccf7a13-9a4c-4ce6-9659-f3b3f6a33a73/', 0, 'customize_changeset', '', 0),
(56, 1, '2019-01-03 09:46:52', '2019-01-03 12:46:52', '<!-- wp:paragraph -->\n<p>HOLA MUNDO</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-03 09:49:14', '2019-01-03 12:49:14', '', 0, 'http://localhost/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-01-03 09:46:52', '2019-01-03 12:46:52', '<!-- wp:paragraph -->\n<p>HOLA MUNDO</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-03 09:46:52', '2019-01-03 12:46:52', '', 56, 'http://localhost/wordpress/2019/01/03/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-03 09:48:53', '2019-01-03 12:48:53', '<!-- wp:paragraph -->\n<p>HOLA MUNDO</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2019-01-03 09:48:53', '2019-01-03 12:48:53', '', 56, 'http://localhost/wordpress/2019/01/03/56-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2019-01-03 09:54:45', '2019-01-03 12:54:45', '{\n    \"fino-agency::fino_slider_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_page_1\": {\n        \"value\": \"29\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:45\"\n    },\n    \"fino-agency::fino_slider_btntxt_1\": {\n        \"value\": \"Slider 1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_btnurl_1\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"41\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:45\"\n    },\n    \"fino-agency::fino_slider_btntxt_2\": {\n        \"value\": \"Slider 2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_btnurl_2\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_btntxt_3\": {\n        \"value\": \"Slider 3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    },\n    \"fino-agency::fino_slider_btnurl_3\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:54:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2300cacc-2566-40ba-8d98-c4b1a70d3024', '', '', '2019-01-03 09:54:45', '2019-01-03 12:54:45', '', 0, 'http://localhost/wordpress/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2019-01-03 09:56:09', '2019-01-03 12:56:09', '{\n    \"fino-agency::fino_services_subtitle\": {\n        \"value\": \"SOPORTE TECNICO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:55:15\"\n    },\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"fa fa-microchip\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:56:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7126dbd7-67c4-405b-8dc0-7e26b1f8d098', '', '', '2019-01-03 09:56:09', '2019-01-03 12:56:09', '', 0, 'http://localhost/wordpress/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2019-01-03 09:56:35', '2019-01-03 12:56:35', '{\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"fa-microchip\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:56:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '684ff937-c331-4b9b-a329-ca7e8285e889', '', '', '2019-01-03 09:56:35', '2019-01-03 12:56:35', '', 0, 'http://localhost/wordpress/2019/01/03/684ff937-c331-4b9b-a329-ca7e8285e889/', 0, 'customize_changeset', '', 0),
(62, 1, '2019-01-03 09:59:07', '2019-01-03 12:59:07', '{\n    \"fino-agency::fino_services_title\": {\n        \"value\": \"Servicios\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:58:19\"\n    },\n    \"fino-agency::fino_services_subtitle\": {\n        \"value\": \"Brindamos servicios de alta calidad\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:58:19\"\n    },\n    \"fino-agency::fino_service_page_1\": {\n        \"value\": \"29\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:58:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c3e39d9d-d612-4a28-bdf0-9e25c92be9c6', '', '', '2019-01-03 09:59:07', '2019-01-03 12:59:07', '', 0, 'http://localhost/wordpress/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2019-01-03 09:59:51', '2019-01-03 12:59:51', '{\n    \"fino-agency::fino_casestudy_section_hideshow\": {\n        \"value\": \"hide\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 12:59:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04e016fd-0d4c-49f2-a4d5-ba0083c4453a', '', '', '2019-01-03 09:59:51', '2019-01-03 12:59:51', '', 0, 'http://localhost/wordpress/2019/01/03/04e016fd-0d4c-49f2-a4d5-ba0083c4453a/', 0, 'customize_changeset', '', 0),
(64, 1, '2019-01-03 10:00:38', '0000-00-00 00:00:00', '{\n    \"fino-agency::fino_blog_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:00:38\"\n    },\n    \"fino-agency::fino_client_logo_1\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:00:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5f0b4b11-d396-4ed4-b344-db1c10dca764', '', '', '2019-01-03 10:00:38', '2019-01-03 13:00:38', '', 0, 'http://localhost/wordpress/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2019-01-03 10:05:27', '2019-01-03 13:05:27', '<!-- wp:paragraph -->\n<p>Desarrollamos sitios web autogestionables y eCommerce. Contactanos y te enviamos un presupuesto.</p>\n<!-- /wp:paragraph -->', 'Desarrollo WEB', 'Desarrollamos Blogs y eCommerce.', 'publish', 'closed', 'closed', '', 'desarrollo-web', '', '', '2019-01-03 10:05:27', '2019-01-03 13:05:27', '', 0, 'http://localhost/wordpress/?page_id=65', 0, 'page', '', 0),
(66, 1, '2019-01-03 10:05:06', '2019-01-03 13:05:06', '', 'Desarrollo WEB', '', 'inherit', 'open', 'closed', '', '1493938270-programacion-istock', '', '', '2019-01-03 10:05:22', '2019-01-03 13:05:22', '', 65, 'http://localhost/wordpress/wp-content/uploads/2019/01/1493938270-programacion-istock.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-03 10:05:27', '2019-01-03 13:05:27', '<!-- wp:paragraph -->\n<p>Desarrollamos sitios web autogestionables y eCommerce. Contactanos y te enviamos un presupuesto.</p>\n<!-- /wp:paragraph -->', 'Desarrollo WEB', 'Desarrollamos Blogs y eCommerce.', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-01-03 10:05:27', '2019-01-03 13:05:27', '', 65, 'http://localhost/wordpress/2019/01/03/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-01-03 10:06:36', '2019-01-03 13:06:36', '{\n    \"fino-agency::fino_service_page_1\": {\n        \"value\": \"65\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:06:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75b66e21-af4f-4b0c-a2cc-bfbc7b89b324', '', '', '2019-01-03 10:06:36', '2019-01-03 13:06:36', '', 0, 'http://localhost/wordpress/2019/01/03/75b66e21-af4f-4b0c-a2cc-bfbc7b89b324/', 0, 'customize_changeset', '', 0),
(69, 1, '2019-01-03 10:08:07', '0000-00-00 00:00:00', '{\n    \"fino-agency::fino_slider_page_1\": {\n        \"value\": \"65\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:08:07\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2dfc8158-d850-4ad8-aeef-752fa1c337fd', '', '', '2019-01-03 10:08:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2019-01-03 10:18:16', '2019-01-03 13:18:16', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2019-01-03 10:44:02', '2019-01-03 13:44:02', '', 0, 'http://localhost/wordpress/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2019-01-03 10:18:16', '2019-01-03 13:18:16', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2019-01-03 10:44:02', '2019-01-03 13:44:02', '', 0, 'http://localhost/wordpress/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2019-01-03 10:18:16', '2019-01-03 13:18:16', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2019-01-03 10:44:03', '2019-01-03 13:44:03', '', 0, 'http://localhost/wordpress/?p=72', 8, 'nav_menu_item', '', 0),
(73, 1, '2019-01-03 10:18:27', '2019-01-03 13:18:27', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2019-01-03 10:44:03', '2019-01-03 13:44:03', '', 0, 'http://localhost/wordpress/?p=73', 7, 'nav_menu_item', '', 0),
(74, 1, '2019-01-03 10:18:59', '2019-01-03 13:18:59', '{\n    \"fino-agency::fino_slider_page_1\": {\n        \"value\": \"65\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_btntxt_2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_page_3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_btntxt_3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    },\n    \"fino-agency::fino_slider_btnurl_3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:18:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b979f1a-cf92-40e0-87de-b08cedc1bcfe', '', '', '2019-01-03 10:18:59', '2019-01-03 13:18:59', '', 0, 'http://localhost/wordpress/2019/01/03/8b979f1a-cf92-40e0-87de-b08cedc1bcfe/', 0, 'customize_changeset', '', 0),
(75, 1, '2019-01-03 10:25:28', '2019-01-03 13:25:28', '{\n    \"fino-agency::fino_slider_btntxt_1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:21:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6e73ff1-2b27-49e5-bcd1-5ab47bed7d86', '', '', '2019-01-03 10:25:28', '2019-01-03 13:25:28', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2019-01-03 10:25:51', '2019-01-03 13:25:51', '', 'Desarrollo WEB y Sistemas', '', 'publish', 'closed', 'closed', '', '76', '', '', '2019-01-03 10:44:03', '2019-01-03 13:44:03', '', 0, 'http://localhost/wordpress/?p=76', 6, 'nav_menu_item', '', 0),
(77, 1, '2019-01-03 10:32:00', '2019-01-03 13:32:00', '<!-- wp:paragraph -->\n<p><strong>SOPORTE TÉCNICO</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Evite tiempos perdidos a la espera de soporte técnico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brindamos servicio de Help Desk, con las mas actuales herramientas de Acceso Remoto.&nbsp;Presencia técnica on-site, para mejor comunicación y atención directa con los usuarios de su empresa.\n\n</p>\n<!-- /wp:paragraph -->', 'Soporte y Data-Center', '', 'publish', 'closed', 'closed', '', 'soporte-y-data-center', '', '', '2019-01-03 10:40:19', '2019-01-03 13:40:19', '', 0, 'http://localhost/wordpress/?page_id=77', 0, 'page', '', 0),
(78, 1, '2019-01-03 10:32:00', '2019-01-03 13:32:00', '<!-- wp:paragraph -->\n<p><strong>SOPORTE TÉCNICO</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Evite tiempos perdidos a la espera de soporte técnico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brindamos servicio de Help Desk, con las mas actuales herramientas de Acceso Remoto.&nbsp;Presencia técnica on-site, para mejor comunicación y atención directa con los usuarios de su empresa.\n\n</p>\n<!-- /wp:paragraph -->', 'Soporte y Data-Center', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-01-03 10:32:00', '2019-01-03 13:32:00', '', 77, 'http://localhost/wordpress/2019/01/03/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-01-03 10:34:20', '2019-01-03 13:34:20', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2019-01-03 10:44:03', '2019-01-03 13:44:03', '', 0, 'http://localhost/wordpress/?p=79', 5, 'nav_menu_item', '', 0),
(80, 1, '2019-01-03 10:34:59', '2019-01-03 13:34:59', '{\n    \"fino-agency::fino_slider_page_2\": {\n        \"value\": \"77\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:34:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '73528455-2f50-4ae9-bdb7-4ebc432d1bc8', '', '', '2019-01-03 10:34:59', '2019-01-03 13:34:59', '', 0, 'http://localhost/wordpress/2019/01/03/73528455-2f50-4ae9-bdb7-4ebc432d1bc8/', 0, 'customize_changeset', '', 0),
(81, 1, '2019-01-03 10:35:28', '2019-01-03 13:35:28', '', 'Soporte y Data Center', '', 'inherit', 'open', 'closed', '', 'it-consultant-presenting-tag-cloud-about-information-technology', '', '', '2019-01-03 10:35:50', '2019-01-03 13:35:50', '', 77, 'http://localhost/wordpress/wp-content/uploads/2019/01/36373306-businessman-in-black-suit-pushing-button-it-support-international-worldmap.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-01-03 10:36:00', '2019-01-03 13:36:00', '<!-- wp:paragraph -->\n<p><strong>SOPORTE TÉCNICO</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Evite tiempos perdidos a la espera de soporte técnico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brindamos servicio de Help Desk, con las mas actuales herramientas de Acceso Remoto.&nbsp;Presencia técnica on-site, para mejor comunicación y atención directa con los usuarios de su empresa.\n\n</p>\n<!-- /wp:paragraph -->', 'Soporte y Data-Center', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2019-01-03 10:36:00', '2019-01-03 13:36:00', '', 77, 'http://localhost/wordpress/2019/01/03/77-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-03 10:42:48', '2019-01-03 13:42:48', '<!-- wp:paragraph -->\n<p><strong>INFRAESTRUCTURA ETHERNET</strong>Armado de Redes de Datos.Diseñamos y montamos la arquitectura de Redes de Datos acorde a las necesidades y disposición edilicia.&nbsp;Telefonía - Rack - Armado - Instalación y Configuración de Servidores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>CONSULTORÍA</strong></p>\n<!-- /wp:paragraph -->', 'ARMADO DE LA RED', '', 'publish', 'closed', 'closed', '', 'armado-de-la-red', '', '', '2019-01-03 10:42:48', '2019-01-03 13:42:48', '', 0, 'http://localhost/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 1, '2019-01-03 10:42:29', '2019-01-03 13:42:29', '', 'depositphotos_67316111-stock-photo-secure-computer-network', '', 'inherit', 'open', 'closed', '', 'depositphotos_67316111-stock-photo-secure-computer-network', '', '', '2019-01-03 10:42:29', '2019-01-03 13:42:29', '', 83, 'http://localhost/wordpress/wp-content/uploads/2019/01/depositphotos_67316111-stock-photo-secure-computer-network.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-01-03 10:42:48', '2019-01-03 13:42:48', '<!-- wp:paragraph -->\n<p><strong>INFRAESTRUCTURA ETHERNET</strong>Armado de Redes de Datos.Diseñamos y montamos la arquitectura de Redes de Datos acorde a las necesidades y disposición edilicia.&nbsp;Telefonía - Rack - Armado - Instalación y Configuración de Servidores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>CONSULTORÍA</strong></p>\n<!-- /wp:paragraph -->', 'ARMADO DE LA RED', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-01-03 10:42:48', '2019-01-03 13:42:48', '', 83, 'http://localhost/wordpress/2019/01/03/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-01-03 10:43:26', '2019-01-03 13:43:26', '<!-- wp:paragraph -->\n<p><strong>CONSULTORÍA TECNOLÓGICA</strong>Su información es muy valiosa.&nbsp;Es por ello que nos esforzamos en proteger y resguardar sus datos.&nbsp;Brindamos asesoramiento acordes a las implementaciones y/o renovación de tecnologías mas convenientes para su negocio.\n\n</p>\n<!-- /wp:paragraph -->', 'ASESORIA IT', '', 'publish', 'closed', 'closed', '', 'asesoria-it', '', '', '2019-01-03 10:43:26', '2019-01-03 13:43:26', '', 0, 'http://localhost/wordpress/?page_id=86', 0, 'page', '', 0),
(87, 1, '2019-01-03 10:43:22', '2019-01-03 13:43:22', '', 'consultoria', '', 'inherit', 'open', 'closed', '', 'consultoria', '', '', '2019-01-03 10:43:22', '2019-01-03 13:43:22', '', 86, 'http://localhost/wordpress/wp-content/uploads/2019/01/consultoria.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2019-01-03 10:43:26', '2019-01-03 13:43:26', '<!-- wp:paragraph -->\n<p><strong>CONSULTORÍA TECNOLÓGICA</strong>Su información es muy valiosa.&nbsp;Es por ello que nos esforzamos en proteger y resguardar sus datos.&nbsp;Brindamos asesoramiento acordes a las implementaciones y/o renovación de tecnologías mas convenientes para su negocio.\n\n</p>\n<!-- /wp:paragraph -->', 'ASESORIA IT', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-01-03 10:43:26', '2019-01-03 13:43:26', '', 86, 'http://localhost/wordpress/2019/01/03/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-01-03 10:44:03', '2019-01-03 13:44:03', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2019-01-03 10:44:03', '2019-01-03 13:44:03', '', 0, 'http://localhost/wordpress/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2019-01-03 10:44:02', '2019-01-03 13:44:02', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-01-03 10:44:02', '2019-01-03 13:44:02', '', 0, 'http://localhost/wordpress/?p=90', 3, 'nav_menu_item', '', 0),
(91, 1, '2019-01-03 10:45:42', '2019-01-03 13:45:42', '{\n    \"fino-agency::fino_slider_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:45:42\"\n    },\n    \"fino-agency::fino_slider_page_3\": {\n        \"value\": \"83\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:45:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2325c33-7d19-4729-ad01-5ad541e83da0', '', '', '2019-01-03 10:45:42', '2019-01-03 13:45:42', '', 0, 'http://localhost/wordpress/2019/01/03/b2325c33-7d19-4729-ad01-5ad541e83da0/', 0, 'customize_changeset', '', 0),
(92, 1, '2019-01-03 11:04:05', '2019-01-03 14:04:05', '{\n    \"fino-agency::fino_page_service_icon_1\": {\n        \"value\": \"fa fa-globe\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:51:11\"\n    },\n    \"fino-agency::fino_page_service_icon_2\": {\n        \"value\": \"fa-cogs\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:55:43\"\n    },\n    \"fino-agency::fino_service_page_2\": {\n        \"value\": \"77\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:54:14\"\n    },\n    \"fino-agency::fino_service_page_3\": {\n        \"value\": \"83\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 13:54:14\"\n    },\n    \"fino-agency::fino_page_service_icon_3\": {\n        \"value\": \"fa-sitemap\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:03:25\"\n    },\n    \"fino-agency::fino_service_page_4\": {\n        \"value\": \"86\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:03:32\"\n    },\n    \"fino-agency::fino_page_service_icon_4\": {\n        \"value\": \"fa-user\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:04:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d996072-468d-4e8a-a567-7dfe72a5916d', '', '', '2019-01-03 11:04:05', '2019-01-03 14:04:05', '', 0, 'http://localhost/wordpress/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2019-01-03 11:10:40', '2019-01-03 14:10:40', '{\n    \"fino-agency::fino_casestudy_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:05:03\"\n    },\n    \"fino-agency::fino_casestudy_title\": {\n        \"value\": \"Nuestro enfoque\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:06:03\"\n    },\n    \"fino-agency::fino_casestudy_subtitle\": {\n        \"value\": \"Ponemos m\\u00e1xima atenci\\u00f3n en los detalles. Desde la planificaci\\u00f3n y ejecuci\\u00f3n de nuestros trabajos.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:06:03\"\n    },\n    \"fino-agency::fino_page_casestudy_icon_1\": {\n        \"value\": \"fa-users\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:07:06\"\n    },\n    \"fino-agency::fino_casestudy_page_1\": {\n        \"value\": \"83\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:08:06\"\n    },\n    \"fino-agency::fino_casestudy_page_2\": {\n        \"value\": \"86\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:08:06\"\n    },\n    \"fino-agency::fino_blog_title\": {\n        \"value\": \"Brindamos servicios inform\\u00e1ticos para pymes, desde el armado de la red, pasando por todas las instancias del soporte y data-center hasta el desarrollo web y sistemas.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:10:40\"\n    },\n    \"fino-agency::fino_blog_subtitle\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:10:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '44b6daed-90f4-49a6-9a9e-349e5d8402fe', '', '', '2019-01-03 11:10:40', '2019-01-03 14:10:40', '', 0, 'http://localhost/wordpress/?p=93', 0, 'customize_changeset', '', 0),
(94, 1, '2019-01-03 11:11:32', '2019-01-03 14:11:32', '{\n    \"fino-agency::fino_clients_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:06\"\n    },\n    \"fino-agency::fino_client_logo_1\": {\n        \"value\": \"44\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:32\"\n    },\n    \"fino-agency::fino_client_logo_2\": {\n        \"value\": \"86\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:32\"\n    },\n    \"fino-agency::fino_client_logo_3\": {\n        \"value\": \"65\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:32\"\n    },\n    \"fino-agency::fino_client_logo_4\": {\n        \"value\": \"77\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c5a5bae-708d-4457-9eec-9d14c0ed2ee7', '', '', '2019-01-03 11:11:32', '2019-01-03 14:11:32', '', 0, 'http://localhost/wordpress/?p=94', 0, 'customize_changeset', '', 0),
(95, 1, '2019-01-03 11:11:59', '2019-01-03 14:11:59', '{\n    \"fino-agency::fino_footer_section_hideshow\": {\n        \"value\": \"show\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:59\"\n    },\n    \"fino-agency::fino_column_layout\": {\n        \"value\": \"3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:11:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d8ff743-afb9-4bb9-b616-f946c61c4baa', '', '', '2019-01-03 11:11:59', '2019-01-03 14:11:59', '', 0, 'http://localhost/wordpress/2019/01/03/8d8ff743-afb9-4bb9-b616-f946c61c4baa/', 0, 'customize_changeset', '', 0),
(97, 1, '2019-01-03 11:14:53', '2019-01-03 14:14:53', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Profesionales con dedicación a los logros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">FSMA-IT comenzó con un pequeño grupo de entusiastas y amantes de la Tecnología, desde esos pilares, construimos este equipo de personas para brindar los mejores y mas actualizados servicios tecnológicos, estando siempre en búsqueda de la satisfacción de cada cliente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestro trabajo acompaña a su crecimiento empresarial.</strong></p>\n<!-- /wp:paragraph -->', 'SOBRE NOSOTROS', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-01-03 11:14:53', '2019-01-03 14:14:53', '', 29, 'http://localhost/wordpress/2019/01/03/29-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-01-03 11:15:41', '2019-01-03 14:15:41', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Profesionales con dedicación a los logros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\">FSMA-IT comenzó con un pequeño grupo de entusiastas y amantes de la Tecnología, desde esos pilares, construimos este equipo de personas para brindar los mejores y mas actualizados servicios tecnológicos, estando siempre en búsqueda de la satisfacción de cada cliente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Nuestro trabajo acompaña a su crecimiento empresarial.</strong></p>\n<!-- /wp:paragraph -->', 'SOBRE NOSOTROS', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2019-01-03 11:15:41', '2019-01-03 14:15:41', '', 29, 'http://localhost/wordpress/2019/01/03/29-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2019-01-03 11:15:53', '2019-01-03 14:15:53', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Profesionales con dedicación a los logros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">FSMA-IT comenzó con un pequeño grupo de entusiastas y amantes de la Tecnología, desde esos pilares, construimos este equipo de personas para brindar los mejores y mas actualizados servicios tecnológicos, estando siempre en búsqueda de la satisfacción de cada cliente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><strong>Nuestro trabajo acompaña a su crecimiento empresarial.</strong></p>\n<!-- /wp:paragraph -->', 'SOBRE NOSOTROS', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-01-03 11:15:53', '2019-01-03 14:15:53', '', 29, 'http://localhost/wordpress/2019/01/03/29-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-01-03 11:16:27', '2019-01-03 14:16:27', '<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"large\"} -->\n<p style=\"text-align:center\" class=\"has-large-font-size\">Profesionales con dedicación a los logros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">FSMA-IT comenzó con un pequeño grupo de entusiastas y amantes de la Tecnología, desde esos pilares, construimos este equipo de personas para brindar los mejores y mas actualizados servicios tecnológicos, estando siempre en búsqueda de la satisfacción de cada cliente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><strong>Nuestro trabajo acompaña a su crecimiento empresarial.</strong></p>\n<!-- /wp:paragraph -->', 'SOBRE NOSOTROS', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-01-03 11:16:27', '2019-01-03 14:16:27', '', 29, 'http://localhost/wordpress/2019/01/03/29-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-01-03 11:20:27', '2019-01-03 14:20:27', '{\n    \"sidebars_widgets[blog-sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    },\n    \"sidebars_widgets[fino-footer-widget-area-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    },\n    \"sidebars_widgets[fino-footer-widget-area-4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    },\n    \"widget_archives[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-03 14:18:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40f18460-ee33-4338-a758-8ac1484fc9eb', '', '', '2019-01-03 11:20:27', '2019-01-03 14:20:27', '', 0, 'http://localhost/wordpress/?p=101', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(4, 'home', 'home', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(70, 4, 0),
(71, 4, 0),
(72, 4, 0),
(73, 4, 0),
(76, 4, 0),
(79, 4, 0),
(89, 4, 0),
(90, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9ef1fd8e22faa64330f3279797a8532b4a0ee66af73407d1bb8495bb3fce4e3a\";a:4:{s:10:\"expiration\";i:1546618519;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1546445719;}s:64:\"ca773d0e91157415d3f021877ef312cbe2c88a9c246817ca72edee71e83e3d86\";a:4:{s:10:\"expiration\";i:1546685657;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1546512857;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1546513293'),
(22, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2W329e0rI0QiNJoXeKWsRs1Fo9RCv1', 'admin', 'fernandolopez84@yahoo.com.ar', '', '2019-01-02 16:14:58', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
