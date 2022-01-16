-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 16 jan. 2022 à 13:00
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetcms`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-01-14 11:09:42', '2022-01-14 10:09:42', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://projetcms.test', 'yes'),
(2, 'home', 'http://projetcms.test', 'yes'),
(3, 'blogname', 'Projet CMS', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'naimlawani01@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"vetement/?$\";s:28:\"index.php?post_type=vetement\";s:41:\"vetement/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=vetement&feed=$matches[1]\";s:36:\"vetement/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=vetement&feed=$matches[1]\";s:28:\"vetement/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=vetement&paged=$matches[1]\";s:12:\"chaussure/?$\";s:29:\"index.php?post_type=chaussure\";s:42:\"chaussure/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=chaussure&feed=$matches[1]\";s:37:\"chaussure/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=chaussure&feed=$matches[1]\";s:29:\"chaussure/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=chaussure&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"marque/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?marque=$matches[1]&feed=$matches[2]\";s:42:\"marque/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?marque=$matches[1]&feed=$matches[2]\";s:23:\"marque/([^/]+)/embed/?$\";s:39:\"index.php?marque=$matches[1]&embed=true\";s:35:\"marque/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?marque=$matches[1]&paged=$matches[2]\";s:17:\"marque/([^/]+)/?$\";s:28:\"index.php?marque=$matches[1]\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:27:\"index.php?genre=$matches[1]\";s:56:\"type_chaussures/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?type_chaussures=$matches[1]&feed=$matches[2]\";s:51:\"type_chaussures/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?type_chaussures=$matches[1]&feed=$matches[2]\";s:32:\"type_chaussures/([^/]+)/embed/?$\";s:48:\"index.php?type_chaussures=$matches[1]&embed=true\";s:44:\"type_chaussures/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?type_chaussures=$matches[1]&paged=$matches[2]\";s:26:\"type_chaussures/([^/]+)/?$\";s:37:\"index.php?type_chaussures=$matches[1]\";s:54:\"type_vetement/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?type_vetement=$matches[1]&feed=$matches[2]\";s:49:\"type_vetement/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?type_vetement=$matches[1]&feed=$matches[2]\";s:30:\"type_vetement/([^/]+)/embed/?$\";s:46:\"index.php?type_vetement=$matches[1]&embed=true\";s:42:\"type_vetement/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?type_vetement=$matches[1]&paged=$matches[2]\";s:24:\"type_vetement/([^/]+)/?$\";s:35:\"index.php?type_vetement=$matches[1]\";s:36:\"vetement/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"vetement/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"vetement/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vetement/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vetement/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"vetement/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"vetement/([^/]+)/embed/?$\";s:41:\"index.php?vetement=$matches[1]&embed=true\";s:29:\"vetement/([^/]+)/trackback/?$\";s:35:\"index.php?vetement=$matches[1]&tb=1\";s:49:\"vetement/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?vetement=$matches[1]&feed=$matches[2]\";s:44:\"vetement/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?vetement=$matches[1]&feed=$matches[2]\";s:37:\"vetement/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?vetement=$matches[1]&paged=$matches[2]\";s:44:\"vetement/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?vetement=$matches[1]&cpage=$matches[2]\";s:33:\"vetement/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?vetement=$matches[1]&page=$matches[2]\";s:25:\"vetement/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"vetement/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"vetement/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vetement/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vetement/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"vetement/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"chaussure/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"chaussure/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"chaussure/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"chaussure/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"chaussure/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"chaussure/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"chaussure/([^/]+)/embed/?$\";s:42:\"index.php?chaussure=$matches[1]&embed=true\";s:30:\"chaussure/([^/]+)/trackback/?$\";s:36:\"index.php?chaussure=$matches[1]&tb=1\";s:50:\"chaussure/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?chaussure=$matches[1]&feed=$matches[2]\";s:45:\"chaussure/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?chaussure=$matches[1]&feed=$matches[2]\";s:38:\"chaussure/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?chaussure=$matches[1]&paged=$matches[2]\";s:45:\"chaussure/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?chaussure=$matches[1]&cpage=$matches[2]\";s:34:\"chaussure/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?chaussure=$matches[1]&page=$matches[2]\";s:26:\"chaussure/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"chaussure/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"chaussure/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"chaussure/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"chaussure/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"chaussure/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1657706981', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1642338582;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1642370982;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1642414182;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642414194;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642414195;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642846182;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1642247258;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(131, '_site_transient_timeout_browser_8866308252d63f9bf74b74e606896148', '1642759795', 'no'),
(132, '_site_transient_browser_8866308252d63f9bf74b74e606896148', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"97.0.4692.71\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_7bd88c463d18d1395429260aa0d9ef54', '1642759795', 'no'),
(134, '_site_transient_php_check_7bd88c463d18d1395429260aa0d9ef54', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, 'can_compress_scripts', '1', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(159, 'cptui_new_install', 'false', 'yes'),
(162, 'acf_version', '5.11.4', 'yes'),
(163, 'cptui_post_types', 'a:2:{s:8:\"vetement\";a:30:{s:4:\"name\";s:8:\"vetement\";s:5:\"label\";s:11:\"Vêtements \";s:14:\"singular_label\";s:9:\"Vêtement\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:9:\"chaussure\";a:30:{s:4:\"name\";s:9:\"chaussure\";s:5:\"label\";s:10:\"Chaussures\";s:14:\"singular_label\";s:9:\"Chaussure\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(170, 'cptui_taxonomies', 'a:4:{s:6:\"marque\";a:26:{s:4:\"name\";s:6:\"marque\";s:5:\"label\";s:7:\"Marques\";s:14:\"singular_label\";s:6:\"Marque\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:2:{i:0;s:8:\"vetement\";i:1;s:9:\"chaussure\";}}s:5:\"genre\";a:26:{s:4:\"name\";s:5:\"genre\";s:5:\"label\";s:6:\"Genres\";s:14:\"singular_label\";s:5:\"Genre\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:2:{i:0;s:8:\"vetement\";i:1;s:9:\"chaussure\";}}s:15:\"type_chaussures\";a:26:{s:4:\"name\";s:15:\"type_chaussures\";s:5:\"label\";s:16:\"Types chaussures\";s:14:\"singular_label\";s:14:\"Type chaussure\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:9:\"chaussure\";}}s:13:\"type_vetement\";a:26:{s:4:\"name\";s:13:\"type_vetement\";s:5:\"label\";s:16:\"Types vêtements\";s:14:\"singular_label\";s:14:\"Type vêtement\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:19:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:8:\"vetement\";}}}', 'yes'),
(193, 'genre_children', 'a:0:{}', 'yes'),
(196, 'modele_children', 'a:0:{}', 'yes'),
(213, 'type_chaussures_children', 'a:0:{}', 'yes'),
(255, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(263, 'type_vetement_children', 'a:0:{}', 'yes'),
(267, 'current_theme', 'Twenty Twenty One Child', 'yes'),
(268, 'theme_switched', '', 'yes'),
(270, 'theme_mods_twentytwentyone-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(278, 'marque_children', 'a:1:{i:10;a:1:{i:0;i:40;}}', 'yes'),
(307, '_site_transient_timeout_theme_roots', '1642331582', 'no'),
(308, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:21:\"twentytwentyone-child\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(309, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.3\";s:7:\"version\";s:5:\"5.8.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1642329783;s:15:\"version_checked\";s:5:\"5.8.3\";s:12:\"translations\";a:0:{}}', 'no'),
(310, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642329784;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:21:\"twentytwentyone-child\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(311, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1642329784;s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"5.11.4\";s:7:\"updated\";s:19:\"2021-09-24 13:00:37\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.11.4/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"1.10.1\";s:7:\"updated\";s:19:\"2021-10-24 21:16:52\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.10.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.10.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.10.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.10.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(313, '_site_transient_timeout_available_translations', '1642344914', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(314, '_site_transient_available_translations', 'a:127:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-17 11:49:29\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.18\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.18/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.19/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-01 15:31:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.9/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-16 21:42:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-15 09:50:05\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-10 13:07:39\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-16 20:33:10\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-12 13:35:53\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-07-10 12:19:50\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-07-22 10:24:20\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-07-22 10:24:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.8.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-13 18:06:50\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-13 18:09:57\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-02 11:17:46\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-06 23:28:37\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-25 03:09:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-09 10:29:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-04 18:08:37\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-03 10:52:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-25 03:05:46\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-12 16:17:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-02 02:19:31\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-06 11:31:19\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.9/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.14\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.14/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-02 13:13:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-02 02:19:00\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-18 06:07:34\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-14 13:29:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-11 09:49:40\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-20 12:04:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-20 16:34:11\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-17 11:15:06\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-07 15:52:29\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-25 12:20:46\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.18\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.18/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-26 18:07:06\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.19/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.26\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.26/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-16 08:27:25\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.9/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-15 18:51:47\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-02 11:18:08\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-13 09:45:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-25 11:28:10\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.19/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-14 16:49:52\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-27 05:18:09\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.19/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-21 06:43:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-14 17:37:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.19/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.14\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.14/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-03 06:17:02\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-06 13:14:34\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-14 08:30:57\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.19/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.19/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.31\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.31/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-21 04:11:41\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.14\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.14/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-14 12:51:29\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-14 18:15:55\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-06 13:55:08\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.18\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.18/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-14 09:31:42\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.27\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.27/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-08 19:39:30\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-09-15 08:56:03\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-12 11:12:20\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-16 23:35:59\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.9/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-10 07:31:29\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-15 15:37:00\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-23 08:11:23\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-02 20:06:53\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-16 08:39:17\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.11\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.11/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.31\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.31/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-12-28 02:58:38\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.18\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.18/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-04 12:16:39\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.19\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.19/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-10-10 16:46:39\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.9\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.9/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-16 07:16:28\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-05 11:55:27\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2021-11-16 00:27:59\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.8.3\";s:7:\"updated\";s:19:\"2022-01-12 14:00:43\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '2'),
(4, 5, '_edit_lock', '1642201150:2'),
(5, 9, '_edit_last', '2'),
(6, 9, '_edit_lock', '1642254956:1'),
(7, 12, '_edit_last', '1'),
(8, 12, '_edit_lock', '1642176706:2'),
(9, 12, 'prix', '69.54'),
(10, 12, '_prix', 'field_61e15303218ae'),
(11, 12, 'taillle', 'a:6:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";i:5;s:3:\"XXL\";}'),
(12, 12, '_taillle', 'field_61e1536e218af'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1642158494:1'),
(15, 14, '_wp_attached_file', '2022/01/ac96830e29db4ff5af42e4090a4d2c80.jpg'),
(16, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1155;s:4:\"file\";s:44:\"2022/01/ac96830e29db4ff5af42e4090a4d2c80.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ac96830e29db4ff5af42e4090a4d2c80-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"ac96830e29db4ff5af42e4090a4d2c80-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ac96830e29db4ff5af42e4090a4d2c80-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"ac96830e29db4ff5af42e4090a4d2c80-768x1109.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1109;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 13, '_thumbnail_id', '14'),
(18, 13, 'prix', '74.95'),
(19, 13, '_prix', 'field_61e15416452d2'),
(20, 13, 'taille', 'a:8:{i:0;s:2:\"41\";i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";}'),
(21, 13, '_taille', 'field_61e15448452d3'),
(22, 15, '_wp_attached_file', '2022/01/5d421e09b3784e128ea98685da0b60b3.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1715;s:6:\"height\";i:2469;s:4:\"file\";s:44:\"2022/01/5d421e09b3784e128ea98685da0b60b3.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"5d421e09b3784e128ea98685da0b60b3-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"5d421e09b3784e128ea98685da0b60b3-711x1024.jpg\";s:5:\"width\";i:711;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"5d421e09b3784e128ea98685da0b60b3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"5d421e09b3784e128ea98685da0b60b3-768x1106.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"5d421e09b3784e128ea98685da0b60b3-1067x1536.jpg\";s:5:\"width\";i:1067;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"5d421e09b3784e128ea98685da0b60b3-1423x2048.jpg\";s:5:\"width\";i:1423;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:46:\"5d421e09b3784e128ea98685da0b60b3-1568x2257.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:2257;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 12, '_thumbnail_id', '15'),
(25, 16, '_edit_lock', '1642175714:1'),
(26, 16, '_edit_last', '1'),
(27, 16, 'prix', '2220'),
(28, 16, '_prix', 'field_61e15303218ae'),
(29, 16, 'taillle', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";}'),
(30, 16, '_taillle', 'field_61e1536e218af'),
(31, 17, '_wp_attached_file', '2022/01/cq5dam.web_.hf7f7f7.800.1000.webp'),
(32, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1000;s:4:\"file\";s:41:\"2022/01/cq5dam.web_.hf7f7f7.800.1000.webp\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cq5dam.web_.hf7f7f7.800.1000-240x300.webp\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cq5dam.web_.hf7f7f7.800.1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cq5dam.web_.hf7f7f7.800.1000-768x960.webp\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 16, '_thumbnail_id', '17'),
(34, 19, '_edit_lock', '1642236445:2'),
(35, 19, '_edit_last', '2'),
(36, 20, '_wp_attached_file', '2022/01/16864943_34829469_1000.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/16864943_34829469_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"16864943_34829469_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"16864943_34829469_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"16864943_34829469_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"16864943_34829469_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 19, '_thumbnail_id', '20'),
(39, 19, 'prix', '445'),
(40, 19, '_prix', 'field_61e15303218ae'),
(41, 19, 'taille', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";}'),
(42, 19, '_taille', 'field_61e1536e218af'),
(43, 21, '_edit_lock', '1642236563:2'),
(44, 21, '_edit_last', '2'),
(45, 22, '_wp_attached_file', '2022/01/17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000.webp'),
(46, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:63:\"2022/01/17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 21, '_thumbnail_id', '22'),
(48, 21, 'prix', '495'),
(49, 21, '_prix', 'field_61e15303218ae'),
(50, 21, 'taille', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";}'),
(51, 21, '_taille', 'field_61e1536e218af'),
(52, 23, '_edit_lock', '1642236660:2'),
(53, 23, '_edit_last', '2'),
(54, 24, '_wp_attached_file', '2022/01/16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000.jpg'),
(55, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1335;s:4:\"file\";s:62:\"2022/01/16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:63:\"16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000-767x1024.jpg\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:63:\"16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 23, '_thumbnail_id', '24'),
(57, 23, 'prix', '487'),
(58, 23, '_prix', 'field_61e15303218ae'),
(59, 23, 'taille', 'a:4:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";}'),
(60, 23, '_taille', 'field_61e1536e218af'),
(61, 25, '_edit_lock', '1642236784:2'),
(62, 25, '_edit_last', '2'),
(63, 26, '_wp_attached_file', '2022/01/16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000.webp'),
(64, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1335;s:4:\"file\";s:63:\"2022/01/16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000-767x1024.webp\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 25, '_thumbnail_id', '26'),
(66, 25, 'prix', '620'),
(67, 25, '_prix', 'field_61e15303218ae'),
(68, 25, 'taille', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:3:\"XXL\";}'),
(69, 25, '_taille', 'field_61e1536e218af'),
(70, 27, '_edit_lock', '1642236946:2'),
(71, 27, '_edit_last', '2'),
(72, 28, '_wp_attached_file', '2022/01/17287900_35629107_1000.jpg'),
(73, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/17287900_35629107_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"17287900_35629107_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"17287900_35629107_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"17287900_35629107_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"17287900_35629107_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 27, '_thumbnail_id', '28'),
(75, 27, 'prix', '420'),
(76, 27, '_prix', 'field_61e15303218ae'),
(77, 27, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(78, 27, '_taille', 'field_61e1536e218af'),
(79, 29, '_edit_lock', '1642237028:2'),
(80, 29, '_edit_last', '2'),
(81, 30, '_wp_attached_file', '2022/01/17492736_36375083_1000.webp'),
(82, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17492736_36375083_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17492736_36375083_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17492736_36375083_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17492736_36375083_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17492736_36375083_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 29, '_thumbnail_id', '30'),
(84, 29, 'prix', '1300'),
(85, 29, '_prix', 'field_61e15303218ae'),
(86, 29, 'taille', 'a:6:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";i:5;s:3:\"3XL\";}'),
(87, 29, '_taille', 'field_61e1536e218af'),
(88, 31, '_edit_lock', '1642237148:2'),
(89, 31, '_edit_last', '2'),
(90, 32, '_wp_attached_file', '2022/01/17464539_37143596_1000.webp'),
(91, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17464539_37143596_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17464539_37143596_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17464539_37143596_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17464539_37143596_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17464539_37143596_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 31, '_thumbnail_id', '32'),
(93, 31, 'prix', '1754'),
(94, 31, '_prix', 'field_61e15303218ae'),
(95, 31, 'taille', 'a:3:{i:0;s:1:\"S\";i:1;s:1:\"M\";i:2;s:1:\"L\";}'),
(96, 31, '_taille', 'field_61e1536e218af'),
(97, 33, '_edit_lock', '1642237342:2'),
(98, 33, '_edit_last', '2'),
(99, 34, '_wp_attached_file', '2022/01/16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000.webp'),
(100, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:63:\"2022/01/16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 33, '_thumbnail_id', '34'),
(102, 33, 'prix', '1990'),
(103, 33, '_prix', 'field_61e15303218ae'),
(104, 33, 'taille', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";}'),
(105, 33, '_taille', 'field_61e1536e218af'),
(106, 35, '_edit_lock', '1642237476:2'),
(107, 35, '_edit_last', '2'),
(108, 36, '_wp_attached_file', '2022/01/17148623_37508772_1000.webp'),
(109, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17148623_37508772_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17148623_37508772_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17148623_37508772_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17148623_37508772_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17148623_37508772_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 35, '_thumbnail_id', '36'),
(111, 35, 'prix', '7280'),
(112, 35, '_prix', 'field_61e15303218ae'),
(113, 35, 'taille', 'a:1:{i:0;s:1:\"M\";}'),
(114, 35, '_taille', 'field_61e1536e218af'),
(115, 37, '_edit_lock', '1642237628:2'),
(116, 37, '_edit_last', '2'),
(117, 38, '_wp_attached_file', '2022/01/17789269_37408149_1000.webp'),
(118, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1333;s:4:\"file\";s:35:\"2022/01/17789269_37408149_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17789269_37408149_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17789269_37408149_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17789269_37408149_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17789269_37408149_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 37, '_thumbnail_id', '38'),
(120, 37, 'prix', '795'),
(121, 37, '_prix', 'field_61e15303218ae'),
(122, 37, 'taille', 'a:4:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";}'),
(123, 37, '_taille', 'field_61e1536e218af'),
(124, 39, '_edit_lock', '1642237694:2'),
(125, 39, '_edit_last', '2'),
(126, 40, '_wp_attached_file', '2022/01/17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000.webp'),
(127, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:63:\"2022/01/17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 39, '_thumbnail_id', '40'),
(129, 39, 'prix', '1990'),
(130, 39, '_prix', 'field_61e15303218ae'),
(131, 39, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(132, 39, '_taille', 'field_61e1536e218af'),
(133, 41, '_edit_lock', '1642237821:2'),
(134, 41, '_edit_last', '2'),
(135, 42, '_wp_attached_file', '2022/01/16806617_33359765_1000.webp'),
(136, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16806617_33359765_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16806617_33359765_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16806617_33359765_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16806617_33359765_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16806617_33359765_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 41, '_thumbnail_id', '42'),
(138, 41, 'prix', '1440'),
(139, 41, '_prix', 'field_61e15303218ae'),
(140, 41, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"S\";}'),
(141, 41, '_taille', 'field_61e1536e218af'),
(142, 43, '_edit_lock', '1642237954:2'),
(143, 43, '_edit_last', '2'),
(144, 44, '_wp_attached_file', '2022/01/16581428_34012662_1000.webp'),
(145, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16581428_34012662_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16581428_34012662_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16581428_34012662_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16581428_34012662_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16581428_34012662_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 43, '_thumbnail_id', '44'),
(147, 43, 'prix', '2190'),
(148, 43, '_prix', 'field_61e15303218ae'),
(149, 43, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"S\";}'),
(150, 43, '_taille', 'field_61e1536e218af'),
(151, 45, '_edit_lock', '1642238031:2'),
(152, 45, '_edit_last', '2'),
(153, 46, '_wp_attached_file', '2022/01/16807426_33878015_1000.webp'),
(154, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16807426_33878015_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16807426_33878015_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16807426_33878015_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16807426_33878015_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16807426_33878015_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 45, '_thumbnail_id', '46'),
(156, 45, 'prix', '845'),
(157, 45, '_prix', 'field_61e15303218ae'),
(158, 45, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:2:\"XL\";}'),
(159, 45, '_taille', 'field_61e1536e218af'),
(160, 47, '_edit_lock', '1642238226:2'),
(161, 47, '_edit_last', '2'),
(162, 49, '_wp_attached_file', '2022/01/15203241_26124872_1000.jpg'),
(163, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/15203241_26124872_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"15203241_26124872_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"15203241_26124872_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"15203241_26124872_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"15203241_26124872_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 47, '_thumbnail_id', '49'),
(165, 47, 'prix', '820'),
(166, 47, '_prix', 'field_61e15303218ae'),
(167, 47, 'taille', 'a:5:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";}'),
(168, 47, '_taille', 'field_61e1536e218af'),
(169, 50, '_edit_lock', '1642238330:2'),
(170, 50, '_edit_last', '2'),
(171, 51, '_wp_attached_file', '2022/01/16783850_33182002_1000.jpg'),
(172, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/16783850_33182002_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"16783850_33182002_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"16783850_33182002_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"16783850_33182002_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"16783850_33182002_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 50, '_thumbnail_id', '51'),
(174, 50, 'prix', '150'),
(175, 50, '_prix', 'field_61e15303218ae'),
(176, 50, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(177, 50, '_taille', 'field_61e1536e218af'),
(178, 52, '_edit_lock', '1642238393:2'),
(179, 52, '_edit_last', '2'),
(180, 53, '_wp_attached_file', '2022/01/16903108_33646641_1000.webp'),
(181, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16903108_33646641_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16903108_33646641_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16903108_33646641_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16903108_33646641_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16903108_33646641_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 52, '_thumbnail_id', '53'),
(183, 52, 'prix', '360'),
(184, 52, '_prix', 'field_61e15303218ae'),
(185, 52, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"S\";}'),
(186, 52, '_taille', 'field_61e1536e218af'),
(187, 54, '_edit_lock', '1642238477:2'),
(188, 54, '_edit_last', '2'),
(189, 55, '_wp_attached_file', '2022/01/16905889_34385688_1000.webp'),
(190, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16905889_34385688_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16905889_34385688_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16905889_34385688_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16905889_34385688_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16905889_34385688_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 54, '_thumbnail_id', '55'),
(192, 54, 'prix', '185'),
(193, 54, '_prix', 'field_61e15303218ae'),
(194, 54, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"M\";i:2;s:1:\"L\";}'),
(195, 54, '_taille', 'field_61e1536e218af'),
(196, 56, '_edit_lock', '1642238604:2'),
(197, 56, '_edit_last', '2'),
(198, 57, '_wp_attached_file', '2022/01/16791461_33487661_1000.jpg'),
(199, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/16791461_33487661_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"16791461_33487661_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"16791461_33487661_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"16791461_33487661_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"16791461_33487661_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 56, '_thumbnail_id', '57'),
(201, 56, 'prix', '325'),
(202, 56, '_prix', 'field_61e15303218ae'),
(203, 56, 'taille', 'a:6:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"L\";i:3;s:2:\"XL\";i:4;s:3:\"XXL\";i:5;s:3:\"3XL\";}'),
(204, 56, '_taille', 'field_61e1536e218af'),
(205, 58, '_edit_lock', '1642238674:2'),
(206, 58, '_edit_last', '2'),
(207, 59, '_wp_attached_file', '2022/01/17720239_37130932_1000.webp'),
(208, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17720239_37130932_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17720239_37130932_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17720239_37130932_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17720239_37130932_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17720239_37130932_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 58, '_thumbnail_id', '59'),
(210, 58, 'prix', '145'),
(211, 58, '_prix', 'field_61e15303218ae'),
(212, 58, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(213, 58, '_taille', 'field_61e1536e218af'),
(214, 60, '_edit_lock', '1642266735:1'),
(215, 60, '_edit_last', '2'),
(216, 61, '_wp_attached_file', '2022/01/17645817_37185408_1000.webp'),
(217, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1335;s:4:\"file\";s:35:\"2022/01/17645817_37185408_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17645817_37185408_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17645817_37185408_1000-767x1024.webp\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17645817_37185408_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17645817_37185408_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 60, '_thumbnail_id', '61'),
(219, 60, 'prix', '121'),
(220, 60, '_prix', 'field_61e15303218ae'),
(221, 60, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"L\";}'),
(222, 60, '_taille', 'field_61e1536e218af'),
(223, 62, '_edit_lock', '1642239057:2'),
(224, 62, '_edit_last', '2'),
(225, 63, '_wp_attached_file', '2022/01/17585165_36754929_1000.webp'),
(226, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17585165_36754929_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17585165_36754929_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17585165_36754929_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17585165_36754929_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17585165_36754929_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 62, '_thumbnail_id', '63'),
(228, 62, 'prix', '150'),
(229, 62, '_prix', 'field_61e15303218ae'),
(230, 62, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"M\";}'),
(231, 62, '_taille', 'field_61e1536e218af'),
(232, 64, '_edit_lock', '1642239163:2'),
(233, 64, '_edit_last', '2'),
(234, 65, '_wp_attached_file', '2022/01/17764388_37344055_1000.webp'),
(235, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17764388_37344055_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17764388_37344055_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17764388_37344055_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17764388_37344055_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17764388_37344055_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 64, '_thumbnail_id', '65'),
(237, 64, 'prix', '890'),
(238, 64, '_prix', 'field_61e15303218ae'),
(239, 64, 'taille', 'a:4:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";}'),
(240, 64, '_taille', 'field_61e1536e218af'),
(241, 66, '_edit_lock', '1642239223:2'),
(242, 66, '_edit_last', '2'),
(243, 67, '_wp_attached_file', '2022/01/16734269_33082833_1000.jpg'),
(244, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/16734269_33082833_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"16734269_33082833_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"16734269_33082833_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"16734269_33082833_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"16734269_33082833_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 66, '_thumbnail_id', '67'),
(246, 66, 'prix', '180'),
(247, 66, '_prix', 'field_61e15303218ae'),
(248, 66, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"M\";i:2;s:1:\"L\";}'),
(249, 66, '_taille', 'field_61e1536e218af'),
(250, 68, '_edit_lock', '1642239307:2'),
(251, 68, '_edit_last', '2'),
(252, 69, '_wp_attached_file', '2022/01/17572915_36749226_1000.webp'),
(253, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17572915_36749226_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17572915_36749226_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17572915_36749226_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17572915_36749226_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17572915_36749226_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 68, '_thumbnail_id', '69'),
(255, 68, 'prix', '325'),
(256, 68, '_prix', 'field_61e15303218ae'),
(257, 68, 'taille', 'a:7:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";i:5;s:3:\"XXL\";i:6;s:3:\"3XL\";}'),
(258, 68, '_taille', 'field_61e1536e218af'),
(259, 70, '_edit_lock', '1642239397:2'),
(260, 70, '_edit_last', '2'),
(261, 71, '_wp_attached_file', '2022/01/17431171_36143171_1000.jpg'),
(262, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/17431171_36143171_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"17431171_36143171_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"17431171_36143171_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"17431171_36143171_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"17431171_36143171_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 70, '_thumbnail_id', '71'),
(264, 70, 'prix', '1100'),
(265, 70, '_prix', 'field_61e15303218ae'),
(266, 70, 'taille', 'a:4:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";}'),
(267, 70, '_taille', 'field_61e1536e218af'),
(268, 72, '_edit_lock', '1642239468:2'),
(269, 72, '_edit_last', '2'),
(270, 73, '_wp_attached_file', '2022/01/17566111_37305175_1000.webp'),
(271, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17566111_37305175_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17566111_37305175_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17566111_37305175_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17566111_37305175_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17566111_37305175_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 72, '_thumbnail_id', '73'),
(273, 72, 'prix', '155'),
(274, 72, '_prix', 'field_61e15303218ae'),
(275, 72, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(276, 72, '_taille', 'field_61e1536e218af'),
(277, 74, '_edit_lock', '1642239558:2'),
(278, 74, '_edit_last', '2'),
(279, 75, '_wp_attached_file', '2022/01/17004145_33975883_1000.webp'),
(280, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17004145_33975883_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17004145_33975883_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17004145_33975883_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17004145_33975883_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17004145_33975883_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 74, '_thumbnail_id', '75'),
(282, 74, 'prix', '299'),
(283, 74, '_prix', 'field_61e15303218ae'),
(284, 74, 'taille', 'a:2:{i:0;s:1:\"M\";i:1;s:1:\"L\";}'),
(285, 74, '_taille', 'field_61e1536e218af'),
(286, 76, '_edit_lock', '1642239656:2'),
(287, 76, '_edit_last', '2'),
(288, 77, '_wp_attached_file', '2022/01/16818194_35049856_1000.webp');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(289, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16818194_35049856_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16818194_35049856_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16818194_35049856_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16818194_35049856_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16818194_35049856_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 76, '_thumbnail_id', '77'),
(291, 76, 'prix', '552'),
(292, 76, '_prix', 'field_61e15303218ae'),
(293, 76, 'taille', 'a:3:{i:0;s:1:\"S\";i:1;s:1:\"M\";i:2;s:1:\"L\";}'),
(294, 76, '_taille', 'field_61e1536e218af'),
(295, 78, '_edit_lock', '1642266667:1'),
(296, 78, '_edit_last', '2'),
(297, 79, '_wp_attached_file', '2022/01/17376066_37535931_1000.webp'),
(298, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17376066_37535931_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17376066_37535931_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17376066_37535931_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17376066_37535931_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17376066_37535931_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 78, '_thumbnail_id', '79'),
(300, 78, 'prix', '90'),
(301, 78, '_prix', 'field_61e15303218ae'),
(302, 78, 'taille', 'a:3:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";}'),
(303, 78, '_taille', 'field_61e1536e218af'),
(304, 80, '_edit_lock', '1642239871:2'),
(305, 80, '_edit_last', '2'),
(306, 81, '_wp_attached_file', '2022/01/16049224_31043067_1000.webp'),
(307, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16049224_31043067_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16049224_31043067_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16049224_31043067_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16049224_31043067_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16049224_31043067_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 80, '_thumbnail_id', '81'),
(309, 80, 'prix', '842'),
(310, 80, '_prix', 'field_61e15303218ae'),
(311, 80, 'taille', 'a:4:{i:0;s:1:\"S\";i:1;s:1:\"M\";i:2;s:1:\"L\";i:3;s:2:\"XL\";}'),
(312, 80, '_taille', 'field_61e1536e218af'),
(313, 82, '_edit_lock', '1642240785:2'),
(314, 83, '_edit_lock', '1642240730:2'),
(315, 83, '_edit_last', '2'),
(316, 84, '_wp_attached_file', '2022/01/17315140_37542664_1000.webp'),
(317, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17315140_37542664_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17315140_37542664_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17315140_37542664_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17315140_37542664_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17315140_37542664_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 83, '_thumbnail_id', '84'),
(319, 83, 'prix', '475'),
(320, 83, '_prix', 'field_61e15416452d2'),
(321, 83, 'taille', 'a:5:{i:0;s:2:\"37\";i:1;s:2:\"38\";i:2;s:2:\"39\";i:3;s:2:\"40\";i:4;s:2:\"41\";}'),
(322, 83, '_taille', 'field_61e15448452d3'),
(323, 85, '_edit_lock', '1642240809:2'),
(324, 85, '_edit_last', '2'),
(325, 86, '_wp_attached_file', '2022/01/16853370_34715228_1000.webp'),
(326, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16853370_34715228_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16853370_34715228_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16853370_34715228_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16853370_34715228_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16853370_34715228_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 85, '_thumbnail_id', '86'),
(328, 85, 'prix', '255'),
(329, 85, '_prix', 'field_61e15416452d2'),
(330, 85, 'taille', 'a:4:{i:0;s:2:\"37\";i:1;s:2:\"38\";i:2;s:2:\"39\";i:3;s:2:\"40\";}'),
(331, 85, '_taille', 'field_61e15448452d3'),
(332, 87, '_edit_lock', '1642240870:2'),
(333, 87, '_edit_last', '2'),
(334, 88, '_wp_attached_file', '2022/01/17693549_37153918_1000.jpg'),
(335, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/17693549_37153918_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"17693549_37153918_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"17693549_37153918_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"17693549_37153918_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"17693549_37153918_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 87, '_thumbnail_id', '88'),
(337, 87, 'prix', '750'),
(338, 87, '_prix', 'field_61e15416452d2'),
(339, 87, 'taille', 'a:7:{i:0;s:2:\"40\";i:1;s:2:\"41\";i:2;s:2:\"42\";i:3;s:2:\"43\";i:4;s:2:\"44\";i:5;s:2:\"45\";i:6;s:2:\"46\";}'),
(340, 87, '_taille', 'field_61e15448452d3'),
(341, 89, '_edit_lock', '1642240941:2'),
(342, 89, '_edit_last', '2'),
(343, 90, '_wp_attached_file', '2022/01/17217850_37474246_1000.webp'),
(344, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17217850_37474246_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17217850_37474246_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17217850_37474246_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17217850_37474246_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17217850_37474246_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 89, '_thumbnail_id', '90'),
(346, 89, 'prix', '490'),
(347, 89, '_prix', 'field_61e15416452d2'),
(348, 89, 'taille', 'a:6:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";}'),
(349, 89, '_taille', 'field_61e15448452d3'),
(350, 91, '_edit_lock', '1642241091:2'),
(351, 91, '_edit_last', '2'),
(352, 92, '_wp_attached_file', '2022/01/17417064_36104686_1000.webp'),
(353, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17417064_36104686_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17417064_36104686_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17417064_36104686_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17417064_36104686_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17417064_36104686_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 91, '_thumbnail_id', '92'),
(355, 91, 'prix', '377'),
(356, 91, '_prix', 'field_61e15416452d2'),
(357, 91, 'taille', 'a:6:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";}'),
(358, 91, '_taille', 'field_61e15448452d3'),
(359, 93, '_edit_lock', '1642241174:2'),
(360, 93, '_edit_last', '2'),
(361, 94, '_wp_attached_file', '2022/01/17537287_37327653_1000.webp'),
(362, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17537287_37327653_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17537287_37327653_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17537287_37327653_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17537287_37327653_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17537287_37327653_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 93, '_thumbnail_id', '94'),
(364, 93, 'prix', '590'),
(365, 93, '_prix', 'field_61e15416452d2'),
(366, 93, 'taille', 'a:7:{i:0;s:2:\"39\";i:1;s:2:\"40\";i:2;s:2:\"41\";i:3;s:2:\"42\";i:4;s:2:\"43\";i:5;s:2:\"44\";i:6;s:2:\"45\";}'),
(367, 93, '_taille', 'field_61e15448452d3'),
(368, 95, '_edit_lock', '1642241410:2'),
(369, 95, '_edit_last', '2'),
(370, 96, '_wp_attached_file', '2022/01/17823686_37456965_1000.webp'),
(371, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17823686_37456965_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17823686_37456965_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17823686_37456965_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17823686_37456965_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17823686_37456965_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 95, '_thumbnail_id', '96'),
(373, 95, 'prix', '750'),
(374, 95, '_prix', 'field_61e15416452d2'),
(375, 95, 'taille', 'a:5:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";}'),
(376, 95, '_taille', 'field_61e15448452d3'),
(377, 97, '_edit_lock', '1642241376:2'),
(378, 97, '_edit_last', '2'),
(379, 98, '_wp_attached_file', '2022/01/16419065_31653891_1000.jpg'),
(380, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:34:\"2022/01/16419065_31653891_1000.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"16419065_31653891_1000-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"16419065_31653891_1000-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"16419065_31653891_1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"16419065_31653891_1000-768x1025.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 97, '_thumbnail_id', '98'),
(382, 97, 'prix', '360'),
(383, 97, '_prix', 'field_61e15416452d2'),
(384, 97, 'taille', 'a:2:{i:0;s:2:\"36\";i:1;s:2:\"37\";}'),
(385, 97, '_taille', 'field_61e15448452d3'),
(386, 99, '_edit_lock', '1642241470:2'),
(387, 99, '_edit_last', '2'),
(388, 100, '_wp_attached_file', '2022/01/17595006_37287981_1000.webp'),
(389, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17595006_37287981_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17595006_37287981_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17595006_37287981_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17595006_37287981_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17595006_37287981_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 99, '_thumbnail_id', '100'),
(391, 99, 'prix', '275'),
(392, 99, '_prix', 'field_61e15416452d2'),
(393, 99, 'taille', 'a:9:{i:0;s:2:\"38\";i:1;s:2:\"39\";i:2;s:2:\"40\";i:3;s:2:\"41\";i:4;s:2:\"42\";i:5;s:2:\"43\";i:6;s:2:\"44\";i:7;s:2:\"45\";i:8;s:2:\"46\";}'),
(394, 99, '_taille', 'field_61e15448452d3'),
(395, 101, '_edit_lock', '1642241579:2'),
(396, 101, '_edit_last', '2'),
(397, 102, '_wp_attached_file', '2022/01/17769976_37457676_1000.webp'),
(398, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1333;s:4:\"file\";s:35:\"2022/01/17769976_37457676_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17769976_37457676_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17769976_37457676_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17769976_37457676_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17769976_37457676_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 101, '_thumbnail_id', '102'),
(400, 101, 'prix', '590'),
(401, 101, '_prix', 'field_61e15416452d2'),
(402, 101, 'taille', 'a:6:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";}'),
(403, 101, '_taille', 'field_61e15448452d3'),
(404, 103, '_edit_lock', '1642241650:2'),
(405, 103, '_edit_last', '2'),
(406, 104, '_wp_attached_file', '2022/01/12404035_11284779_1000.webp'),
(407, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/12404035_11284779_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"12404035_11284779_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"12404035_11284779_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"12404035_11284779_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"12404035_11284779_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 103, '_thumbnail_id', '104'),
(409, 103, 'prix', '270'),
(410, 103, '_prix', 'field_61e15416452d2'),
(411, 103, 'taille', 'a:1:{i:0;s:2:\"38\";}'),
(412, 103, '_taille', 'field_61e15448452d3'),
(413, 105, '_edit_lock', '1642241888:2'),
(414, 105, '_edit_last', '2'),
(415, 106, '_wp_attached_file', '2022/01/16113670_32250616_1000.webp'),
(416, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16113670_32250616_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16113670_32250616_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16113670_32250616_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16113670_32250616_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16113670_32250616_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(417, 105, '_thumbnail_id', '106'),
(418, 105, 'prix', '557'),
(419, 105, '_prix', 'field_61e15416452d2'),
(420, 105, 'taille', 'a:8:{i:0;s:2:\"39\";i:1;s:2:\"40\";i:2;s:2:\"41\";i:3;s:2:\"42\";i:4;s:2:\"43\";i:5;s:2:\"44\";i:6;s:2:\"45\";i:7;s:2:\"46\";}'),
(421, 105, '_taille', 'field_61e15448452d3'),
(422, 107, '_edit_lock', '1642241882:2'),
(423, 107, '_edit_last', '2'),
(424, 108, '_wp_attached_file', '2022/01/17800583_37392118_1000.webp'),
(425, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17800583_37392118_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17800583_37392118_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17800583_37392118_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17800583_37392118_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17800583_37392118_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(426, 107, '_thumbnail_id', '108'),
(427, 107, 'prix', '1650'),
(428, 107, '_prix', 'field_61e15416452d2'),
(429, 107, 'taille', 'a:2:{i:0;s:2:\"36\";i:1;s:2:\"37\";}'),
(430, 107, '_taille', 'field_61e15448452d3'),
(431, 109, '_edit_lock', '1642241978:2'),
(432, 109, '_edit_last', '2'),
(433, 110, '_wp_attached_file', '2022/01/17321431_37276736_1000.webp'),
(434, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17321431_37276736_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17321431_37276736_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17321431_37276736_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17321431_37276736_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17321431_37276736_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(435, 109, '_thumbnail_id', '110'),
(436, 109, 'prix', '465'),
(437, 109, '_prix', 'field_61e15416452d2'),
(438, 109, 'taille', 'a:2:{i:0;s:2:\"37\";i:1;s:2:\"38\";}'),
(439, 109, '_taille', 'field_61e15448452d3'),
(440, 111, '_edit_lock', '1642242067:2'),
(441, 111, '_edit_last', '2'),
(442, 112, '_wp_attached_file', '2022/01/17409185_36009016_1000.webp'),
(443, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17409185_36009016_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17409185_36009016_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17409185_36009016_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17409185_36009016_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17409185_36009016_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(444, 111, '_thumbnail_id', '112'),
(445, 111, 'prix', '1190'),
(446, 111, '_prix', 'field_61e15416452d2'),
(447, 111, 'taille', 'a:1:{i:0;s:2:\"44\";}'),
(448, 111, '_taille', 'field_61e15448452d3'),
(449, 113, '_edit_lock', '1642242167:2'),
(450, 113, '_edit_last', '2'),
(451, 114, '_wp_attached_file', '2022/01/17239156_36902588_1000.webp'),
(452, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17239156_36902588_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17239156_36902588_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17239156_36902588_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17239156_36902588_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17239156_36902588_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 113, '_thumbnail_id', '114'),
(454, 113, 'prix', '590'),
(455, 113, '_prix', 'field_61e15416452d2'),
(456, 113, 'taille', 'a:3:{i:0;s:2:\"36\";i:1;s:2:\"38\";i:2;s:2:\"40\";}'),
(457, 113, '_taille', 'field_61e15448452d3'),
(458, 115, '_edit_lock', '1642242241:2'),
(459, 115, '_edit_last', '2'),
(460, 116, '_wp_attached_file', '2022/01/17402534_36044249_1000.webp'),
(461, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1335;s:4:\"file\";s:35:\"2022/01/17402534_36044249_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17402534_36044249_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17402534_36044249_1000-767x1024.webp\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17402534_36044249_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17402534_36044249_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 115, '_thumbnail_id', '116'),
(463, 115, 'prix', '145'),
(464, 115, '_prix', 'field_61e15416452d2'),
(465, 115, 'taille', 'a:1:{i:0;s:2:\"36\";}'),
(466, 115, '_taille', 'field_61e15448452d3'),
(467, 117, '_edit_lock', '1642242341:2'),
(468, 117, '_edit_last', '2'),
(469, 118, '_wp_attached_file', '2022/01/17677893_36949471_1000.webp'),
(470, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17677893_36949471_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17677893_36949471_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17677893_36949471_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17677893_36949471_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17677893_36949471_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 117, '_thumbnail_id', '118'),
(472, 117, 'prix', '590'),
(473, 117, '_prix', 'field_61e15416452d2'),
(474, 117, 'taille', 'a:3:{i:0;s:2:\"41\";i:1;s:2:\"42\";i:2;s:2:\"43\";}'),
(475, 117, '_taille', 'field_61e15448452d3'),
(476, 119, '_edit_lock', '1642242458:2'),
(477, 119, '_edit_last', '2'),
(478, 120, '_wp_attached_file', '2022/01/17802560_37391751_1000.webp'),
(479, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17802560_37391751_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17802560_37391751_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17802560_37391751_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17802560_37391751_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17802560_37391751_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(480, 119, '_thumbnail_id', '120'),
(481, 119, 'prix', '920'),
(482, 119, '_prix', 'field_61e15416452d2'),
(483, 119, 'taille', 'a:6:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";}'),
(484, 119, '_taille', 'field_61e15448452d3'),
(485, 121, '_edit_lock', '1642242576:2'),
(486, 121, '_edit_last', '2'),
(487, 122, '_wp_attached_file', '2022/01/17510481_36393843_1000.webp'),
(488, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17510481_36393843_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17510481_36393843_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17510481_36393843_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17510481_36393843_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17510481_36393843_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 121, '_thumbnail_id', '122'),
(490, 121, 'prix', '238'),
(491, 121, '_prix', 'field_61e15416452d2'),
(492, 121, 'taille', 'a:1:{i:0;s:2:\"36\";}'),
(493, 121, '_taille', 'field_61e15448452d3'),
(494, 123, '_edit_lock', '1642267974:1'),
(495, 123, '_edit_last', '2'),
(496, 124, '_wp_attached_file', '2022/01/17537273_37237535_1000.webp'),
(497, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17537273_37237535_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17537273_37237535_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17537273_37237535_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17537273_37237535_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17537273_37237535_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(498, 123, '_thumbnail_id', '124'),
(499, 123, 'prix', '1095'),
(500, 123, '_prix', 'field_61e15416452d2'),
(501, 123, 'taille', 'a:6:{i:0;s:2:\"40\";i:1;s:2:\"41\";i:2;s:2:\"42\";i:3;s:2:\"43\";i:4;s:2:\"44\";i:5;s:2:\"45\";}'),
(502, 123, '_taille', 'field_61e15448452d3'),
(503, 125, '_edit_lock', '1642266298:1'),
(504, 125, '_edit_last', '2'),
(505, 126, '_wp_attached_file', '2022/01/16957236_33826493_1000.webp'),
(506, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16957236_33826493_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16957236_33826493_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16957236_33826493_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16957236_33826493_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16957236_33826493_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(507, 125, '_thumbnail_id', '126'),
(508, 125, 'prix', '448'),
(509, 125, '_prix', 'field_61e15303218ae'),
(510, 125, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"S\";}'),
(511, 125, '_taille', 'field_61e1536e218af'),
(512, 127, '_edit_lock', '1642243246:2'),
(513, 127, '_edit_last', '2'),
(514, 128, '_wp_attached_file', '2022/01/16798963_34409582_1000.webp'),
(515, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16798963_34409582_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16798963_34409582_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16798963_34409582_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16798963_34409582_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16798963_34409582_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 127, '_thumbnail_id', '128'),
(517, 127, 'prix', '100'),
(518, 127, '_prix', 'field_61e15303218ae'),
(519, 127, 'taille', 'a:2:{i:0;s:1:\"S\";i:1;s:1:\"M\";}'),
(520, 127, '_taille', 'field_61e1536e218af'),
(521, 129, '_edit_lock', '1642243238:2'),
(522, 129, '_edit_last', '2'),
(523, 130, '_wp_attached_file', '2022/01/17789009_37434026_1000.webp'),
(524, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17789009_37434026_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17789009_37434026_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17789009_37434026_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17789009_37434026_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17789009_37434026_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(525, 129, '_thumbnail_id', '130'),
(526, 129, 'prix', '520'),
(527, 129, '_prix', 'field_61e15303218ae'),
(528, 129, 'taille', 'a:4:{i:0;s:1:\"S\";i:1;s:1:\"M\";i:2;s:1:\"L\";i:3;s:2:\"XL\";}'),
(529, 129, '_taille', 'field_61e1536e218af'),
(530, 131, '_edit_lock', '1642243307:2'),
(531, 131, '_edit_last', '2'),
(532, 132, '_wp_attached_file', '2022/01/17308474_35719402_1000.webp'),
(533, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17308474_35719402_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17308474_35719402_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17308474_35719402_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17308474_35719402_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17308474_35719402_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 131, '_thumbnail_id', '132'),
(535, 131, 'prix', '490'),
(536, 131, '_prix', 'field_61e15303218ae'),
(537, 131, 'taille', 'a:4:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";}'),
(538, 131, '_taille', 'field_61e1536e218af'),
(539, 133, '_edit_lock', '1642243462:2'),
(540, 133, '_edit_last', '2'),
(541, 134, '_wp_attached_file', '2022/01/16908239_35920381_1000.webp'),
(542, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16908239_35920381_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16908239_35920381_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16908239_35920381_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16908239_35920381_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16908239_35920381_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(543, 133, '_thumbnail_id', '134'),
(544, 133, 'prix', '120'),
(545, 133, '_prix', 'field_61e15303218ae'),
(546, 133, 'taille', 'a:1:{i:0;s:1:\"S\";}'),
(547, 133, '_taille', 'field_61e1536e218af'),
(548, 135, '_edit_lock', '1642243627:2'),
(549, 135, '_edit_last', '2'),
(550, 136, '_wp_attached_file', '2022/01/17709273_37249834_1000.webp'),
(551, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17709273_37249834_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17709273_37249834_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17709273_37249834_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17709273_37249834_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17709273_37249834_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 135, '_thumbnail_id', '136'),
(553, 135, 'prix', '95'),
(554, 135, '_prix', 'field_61e15303218ae'),
(555, 135, 'taille', 'a:7:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";i:5;s:3:\"XXL\";i:6;s:3:\"3XL\";}'),
(556, 135, '_taille', 'field_61e1536e218af'),
(557, 137, '_edit_lock', '1642243741:2'),
(558, 137, '_edit_last', '2'),
(559, 138, '_wp_attached_file', '2022/01/16910504_37169336_1000.webp'),
(560, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16910504_37169336_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16910504_37169336_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16910504_37169336_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16910504_37169336_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16910504_37169336_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(561, 137, '_thumbnail_id', '138'),
(562, 137, 'prix', '450'),
(563, 137, '_prix', 'field_61e15303218ae'),
(564, 137, 'taille', 'a:2:{i:0;s:1:\"M\";i:1;s:1:\"L\";}'),
(565, 137, '_taille', 'field_61e1536e218af'),
(566, 139, '_edit_lock', '1642243838:2'),
(567, 139, '_edit_last', '2'),
(568, 140, '_wp_attached_file', '2022/01/16258872_31113839_1000.webp'),
(569, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/16258872_31113839_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"16258872_31113839_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"16258872_31113839_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"16258872_31113839_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"16258872_31113839_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 139, '_thumbnail_id', '140'),
(571, 139, 'prix', '110'),
(572, 139, '_prix', 'field_61e15303218ae'),
(573, 139, 'taille', 'a:2:{i:0;s:2:\"XS\";i:1;s:1:\"S\";}'),
(574, 139, '_taille', 'field_61e1536e218af'),
(575, 141, '_edit_lock', '1642267961:1'),
(576, 141, '_edit_last', '2'),
(577, 142, '_wp_attached_file', '2022/01/17514291_37331602_1000.webp');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(578, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1334;s:4:\"file\";s:35:\"2022/01/17514291_37331602_1000.webp\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"17514291_37331602_1000-225x300.webp\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"17514291_37331602_1000-768x1024.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"17514291_37331602_1000-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"17514291_37331602_1000-768x1025.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(579, 141, '_thumbnail_id', '142'),
(580, 141, 'prix', '270'),
(581, 141, '_prix', 'field_61e15303218ae'),
(582, 141, 'taille', 'a:6:{i:0;s:2:\"XS\";i:1;s:1:\"S\";i:2;s:1:\"M\";i:3;s:1:\"L\";i:4;s:2:\"XL\";i:5;s:3:\"XXL\";}'),
(583, 141, '_taille', 'field_61e1536e218af'),
(584, 143, '_edit_lock', '1642268539:1'),
(585, 143, '_edit_last', '1'),
(586, 144, '_wp_attached_file', '2022/01/4a3656da68ffdda0cb166d18b609a726.jpg'),
(587, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2022/01/4a3656da68ffdda0cb166d18b609a726.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"4a3656da68ffdda0cb166d18b609a726-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"4a3656da68ffdda0cb166d18b609a726-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 143, '_thumbnail_id', '144'),
(589, 143, 'prix', '22.5'),
(590, 143, '_prix', 'field_61e15303218ae'),
(591, 143, 'taille', 'a:2:{i:0;s:1:\"S\";i:1;s:3:\"XXL\";}'),
(592, 143, '_taille', 'field_61e1536e218af');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-01-14 11:09:42', '2022-01-14 10:09:42', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2022-01-14 11:09:42', '2022-01-14 10:09:42', '', 0, 'http://projetcms.test/?p=1', 0, 'post', '', 1),
(2, 1, '2022-01-14 11:09:42', '2022-01-14 10:09:42', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://projetcms.test/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2022-01-14 11:09:42', '2022-01-14 10:09:42', '', 0, 'http://projetcms.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-01-14 11:09:42', '2022-01-14 10:09:42', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://projetcms.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2022-01-14 11:09:42', '2022-01-14 10:09:42', '', 0, 'http://projetcms.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-01-14 11:09:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-14 11:09:55', '0000-00-00 00:00:00', '', 0, 'http://projetcms.test/?p=4', 0, 'post', '', 0),
(5, 1, '2022-01-14 11:44:17', '2022-01-14 10:44:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"vetement\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Vêtements ACF', 'vetements-acf', 'publish', 'closed', 'closed', '', 'group_61e1520180247', '', '', '2022-01-14 20:57:27', '2022-01-14 19:57:27', '', 0, 'http://projetcms.test/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(7, 1, '2022-01-14 11:44:17', '2022-01-14 10:44:17', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'prix', 'prix', 'publish', 'closed', 'closed', '', 'field_61e15303218ae', '', '', '2022-01-14 12:03:44', '2022-01-14 11:03:44', '', 5, 'http://projetcms.test/?post_type=acf-field&#038;p=7', 0, 'acf-field', '', 0),
(8, 1, '2022-01-14 11:44:17', '2022-01-14 10:44:17', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:7:{s:2:\"XS\";s:2:\"XS\";s:1:\"S\";s:1:\"S\";s:1:\"M\";s:1:\"M\";s:1:\"L\";s:1:\"L\";s:2:\"XL\";s:2:\"XL\";s:3:\"XXL\";s:3:\"XXL\";s:3:\"3XL\";s:3:\"3XL\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Taille', 'taille', 'publish', 'closed', 'closed', '', 'field_61e1536e218af', '', '', '2022-01-14 17:35:00', '2022-01-14 16:35:00', '', 5, 'http://projetcms.test/?post_type=acf-field&#038;p=8', 1, 'acf-field', '', 0),
(9, 1, '2022-01-14 11:52:57', '2022-01-14 10:52:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"chaussure\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Chaussures ACF', 'chaussures-acf', 'publish', 'closed', 'closed', '', 'group_61e154050e8c7', '', '', '2022-01-14 20:56:42', '2022-01-14 19:56:42', '', 0, 'http://projetcms.test/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2022-01-14 11:52:57', '2022-01-14 10:52:57', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Prix', 'prix', 'publish', 'closed', 'closed', '', 'field_61e15416452d2', '', '', '2022-01-14 17:34:20', '2022-01-14 16:34:20', '', 9, 'http://projetcms.test/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(11, 1, '2022-01-14 11:52:57', '2022-01-14 10:52:57', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:14:{i:36;s:2:\"36\";i:37;s:2:\"37\";i:38;s:2:\"38\";i:39;s:2:\"39\";i:40;s:2:\"40\";i:41;s:2:\"41\";i:42;s:2:\"42\";i:43;s:2:\"43\";i:44;s:2:\"44\";i:45;s:2:\"45\";i:46;s:2:\"46\";i:47;s:2:\"47\";i:48;s:2:\"48\";i:49;s:2:\"49\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Taille', 'taille', 'publish', 'closed', 'closed', '', 'field_61e15448452d3', '', '', '2022-01-14 11:54:40', '2022-01-14 10:54:40', '', 9, 'http://projetcms.test/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2022-01-14 12:05:44', '2022-01-14 11:05:44', '', 'PIKE - Veste d\'hiver', '', 'publish', 'closed', 'closed', '', 'pike-veste-dhiver', '', '', '2022-01-14 16:57:59', '2022-01-14 15:57:59', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=12', 0, 'vetement', '', 0),
(13, 1, '2022-01-14 12:10:33', '2022-01-14 11:10:33', '', 'SPRINT TREKKER SUPER - Bottines à lacets', '', 'publish', 'closed', 'closed', '', 'sprint-trekker-super-bottines-a-lacets', '', '', '2022-01-14 12:10:33', '2022-01-14 11:10:33', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=13', 0, 'chaussure', '', 0),
(14, 1, '2022-01-14 12:10:12', '2022-01-14 11:10:12', '', 'ac96830e29db4ff5af42e4090a4d2c80', '', 'inherit', 'open', 'closed', '', 'ac96830e29db4ff5af42e4090a4d2c80', '', '', '2022-01-14 12:10:12', '2022-01-14 11:10:12', '', 13, 'http://projetcms.test/wp-content/uploads/2022/01/ac96830e29db4ff5af42e4090a4d2c80.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2022-01-14 12:11:44', '2022-01-14 11:11:44', '', '5d421e09b3784e128ea98685da0b60b3', '', 'inherit', 'open', 'closed', '', '5d421e09b3784e128ea98685da0b60b3', '', '', '2022-01-14 12:11:44', '2022-01-14 11:11:44', '', 12, 'http://projetcms.test/wp-content/uploads/2022/01/5d421e09b3784e128ea98685da0b60b3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2022-01-14 16:55:42', '2022-01-14 15:55:42', '', 'Veste droite en velours', '', 'publish', 'closed', 'closed', '', 'veste-droite-en-velours', '', '', '2022-01-14 16:57:29', '2022-01-14 15:57:29', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=16', 0, 'vetement', '', 0),
(17, 1, '2022-01-14 16:56:56', '2022-01-14 15:56:56', '', 'cq5dam.web.hf7f7f7.800.1000', '', 'inherit', 'open', 'closed', '', 'cq5dam-web-hf7f7f7-800-1000', '', '', '2022-01-14 16:56:56', '2022-01-14 15:56:56', '', 16, 'http://projetcms.test/wp-content/uploads/2022/01/cq5dam.web_.hf7f7f7.800.1000.webp', 0, 'attachment', 'image/webp', 0),
(18, 2, '2022-01-15 00:01:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-01-15 00:01:38', '0000-00-00 00:00:00', '', 0, 'http://projetcms.test/?post_type=vetement&p=18', 0, 'vetement', '', 0),
(19, 2, '2022-01-15 09:49:43', '2022-01-15 08:49:43', '', 'chemise en jean à imprimé Arrow', '', 'publish', 'closed', 'closed', '', 'chemise-en-jean-a-imprime-arrow', '', '', '2022-01-15 09:49:43', '2022-01-15 08:49:43', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=19', 0, 'vetement', '', 0),
(20, 2, '2022-01-15 09:49:28', '2022-01-15 08:49:28', '', '16864943_34829469_1000', '', 'inherit', 'open', 'closed', '', '16864943_34829469_1000', '', '', '2022-01-15 09:49:28', '2022-01-15 08:49:28', '', 19, 'http://projetcms.test/wp-content/uploads/2022/01/16864943_34829469_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 2, '2022-01-15 09:51:42', '2022-01-15 08:51:42', '', 'chemise Outline-Arrows en flanelle', '', 'publish', 'closed', 'closed', '', 'chemise-outline-arrows-en-flanelle', '', '', '2022-01-15 09:51:42', '2022-01-15 08:51:42', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=21', 0, 'vetement', '', 0),
(22, 2, '2022-01-15 09:51:32', '2022-01-15 08:51:32', '', '17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000', '', 'inherit', 'open', 'closed', '', '17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000', '', '', '2022-01-15 09:51:32', '2022-01-15 08:51:32', '', 21, 'http://projetcms.test/wp-content/uploads/2022/01/17592992_70911e1b-da08-489a-971c-1cfcdece5972_1000.webp', 0, 'attachment', 'image/webp', 0),
(23, 2, '2022-01-15 09:53:19', '2022-01-15 08:53:19', '', 'chemise à bandes rayées', '', 'publish', 'closed', 'closed', '', 'chemise-a-bandes-rayees', '', '', '2022-01-15 09:53:19', '2022-01-15 08:53:19', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=23', 0, 'vetement', '', 0),
(24, 2, '2022-01-15 09:53:09', '2022-01-15 08:53:09', '', '16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000', '', 'inherit', 'open', 'closed', '', '16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000', '', '', '2022-01-15 09:53:09', '2022-01-15 08:53:09', '', 23, 'http://projetcms.test/wp-content/uploads/2022/01/16865272_782fe55e-3583-43b2-9fdd-727250d3c3e2_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 2, '2022-01-15 09:55:00', '2022-01-15 08:55:00', '', 'chemise à imprimé zébré', '', 'publish', 'closed', 'closed', '', 'chemise-a-imprime-zebre', '', '', '2022-01-15 09:55:00', '2022-01-15 08:55:00', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=25', 0, 'vetement', '', 0),
(26, 2, '2022-01-15 09:54:48', '2022-01-15 08:54:48', '', '16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000', '', 'inherit', 'open', 'closed', '', '16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000', '', '', '2022-01-15 09:54:48', '2022-01-15 08:54:48', '', 25, 'http://projetcms.test/wp-content/uploads/2022/01/16863483_0d32d2ec-7257-439d-b16d-c7f9bbf9ebee_1000.webp', 0, 'attachment', 'image/webp', 0),
(27, 2, '2022-01-15 09:57:56', '2022-01-15 08:57:56', '', 'cape à capuche', '', 'publish', 'closed', 'closed', '', 'cape-a-capuche', '', '', '2022-01-15 09:57:56', '2022-01-15 08:57:56', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=27', 0, 'vetement', '', 0),
(28, 2, '2022-01-15 09:57:47', '2022-01-15 08:57:47', '', '17287900_35629107_1000', '', 'inherit', 'open', 'closed', '', '17287900_35629107_1000', '', '', '2022-01-15 09:57:47', '2022-01-15 08:57:47', '', 27, 'http://projetcms.test/wp-content/uploads/2022/01/17287900_35629107_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 2, '2022-01-15 09:59:26', '2022-01-15 08:59:26', '', 'doudoune Amboise', '', 'publish', 'closed', 'closed', '', 'doudoune-amboise', '', '', '2022-01-15 09:59:26', '2022-01-15 08:59:26', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=29', 0, 'vetement', '', 0),
(30, 2, '2022-01-15 09:59:14', '2022-01-15 08:59:14', '', '17492736_36375083_1000', '', 'inherit', 'open', 'closed', '', '17492736_36375083_1000', '', '', '2022-01-15 09:59:14', '2022-01-15 08:59:14', '', 29, 'http://projetcms.test/wp-content/uploads/2022/01/17492736_36375083_1000.webp', 0, 'attachment', 'image/webp', 0),
(31, 2, '2022-01-15 10:01:28', '2022-01-15 09:01:28', '', 'manteau militaire en laine', '', 'publish', 'closed', 'closed', '', 'manteau-militaire-en-laine', '', '', '2022-01-15 10:01:28', '2022-01-15 09:01:28', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=31', 0, 'vetement', '', 0),
(32, 2, '2022-01-15 10:01:15', '2022-01-15 09:01:15', '', '17464539_37143596_1000', '', 'inherit', 'open', 'closed', '', '17464539_37143596_1000', '', '', '2022-01-15 10:01:15', '2022-01-15 09:01:15', '', 31, 'http://projetcms.test/wp-content/uploads/2022/01/17464539_37143596_1000.webp', 0, 'attachment', 'image/webp', 0),
(33, 2, '2022-01-15 10:02:41', '2022-01-15 09:02:41', '', 'trench à taille ceinturée', '', 'publish', 'closed', 'closed', '', 'trench-a-taille-ceinturee', '', '', '2022-01-15 10:02:41', '2022-01-15 09:02:41', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=33', 0, 'vetement', '', 0),
(34, 2, '2022-01-15 10:02:33', '2022-01-15 09:02:33', '', '16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000', '', 'inherit', 'open', 'closed', '', '16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000', '', '', '2022-01-15 10:02:33', '2022-01-15 09:02:33', '', 33, 'http://projetcms.test/wp-content/uploads/2022/01/16825347_9d3fe17c-3827-4ebf-a08c-9298c4fcc8c1_1000.webp', 0, 'attachment', 'image/webp', 0),
(35, 2, '2022-01-15 10:06:56', '2022-01-15 09:06:56', '', 'manteau en cuir à finitions lainées', '', 'publish', 'closed', 'closed', '', 'manteau-en-cuir-a-finitions-lainees', '', '', '2022-01-15 10:06:56', '2022-01-15 09:06:56', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=35', 0, 'vetement', '', 0),
(36, 2, '2022-01-15 10:06:48', '2022-01-15 09:06:48', '', '17148623_37508772_1000', '', 'inherit', 'open', 'closed', '', '17148623_37508772_1000', '', '', '2022-01-15 10:06:48', '2022-01-15 09:06:48', '', 35, 'http://projetcms.test/wp-content/uploads/2022/01/17148623_37508772_1000.webp', 0, 'attachment', 'image/webp', 0),
(37, 2, '2022-01-15 10:09:28', '2022-01-15 09:09:28', '', 'robe asymétrique à dos-nu', '', 'publish', 'closed', 'closed', '', 'robe-asymetrique-a-dos-nu', '', '', '2022-01-15 10:09:28', '2022-01-15 09:09:28', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=37', 0, 'vetement', '', 0),
(38, 2, '2022-01-15 10:09:14', '2022-01-15 09:09:14', '', '17789269_37408149_1000', '', 'inherit', 'open', 'closed', '', '17789269_37408149_1000', '', '', '2022-01-15 10:09:14', '2022-01-15 09:09:14', '', 37, 'http://projetcms.test/wp-content/uploads/2022/01/17789269_37408149_1000.webp', 0, 'attachment', 'image/webp', 0),
(39, 2, '2022-01-15 10:10:34', '2022-01-15 09:10:34', '', 'robe évasée à fleurs', '', 'publish', 'closed', 'closed', '', 'robe-evasee-a-fleurs', '', '', '2022-01-15 10:10:34', '2022-01-15 09:10:34', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=39', 0, 'vetement', '', 0),
(40, 2, '2022-01-15 10:10:24', '2022-01-15 09:10:24', '', '17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000', '', 'inherit', 'open', 'closed', '', '17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000', '', '', '2022-01-15 10:10:24', '2022-01-15 09:10:24', '', 39, 'http://projetcms.test/wp-content/uploads/2022/01/17769197_73414a1e-0149-4730-b5ad-89cf02bca3f3_1000.webp', 0, 'attachment', 'image/webp', 0),
(41, 2, '2022-01-15 10:11:53', '2022-01-15 09:11:53', '', 'robe-chemise en soie à imprimé Medusa Renaissance', '', 'publish', 'closed', 'closed', '', 'robe-chemise-en-soie-a-imprime-medusa-renaissance', '', '', '2022-01-15 10:11:53', '2022-01-15 09:11:53', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=41', 0, 'vetement', '', 0),
(42, 2, '2022-01-15 10:11:43', '2022-01-15 09:11:43', '', '16806617_33359765_1000', '', 'inherit', 'open', 'closed', '', '16806617_33359765_1000', '', '', '2022-01-15 10:11:43', '2022-01-15 09:11:43', '', 41, 'http://projetcms.test/wp-content/uploads/2022/01/16806617_33359765_1000.webp', 0, 'attachment', 'image/webp', 0),
(43, 2, '2022-01-15 10:14:54', '2022-01-15 09:14:54', '', 'blazer Hourglass à boutonnière croisée', '', 'publish', 'closed', 'closed', '', 'blazer-hourglass-a-boutonniere-croisee', '', '', '2022-01-15 10:14:54', '2022-01-15 09:14:54', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=43', 0, 'vetement', '', 0),
(44, 2, '2022-01-15 10:14:42', '2022-01-15 09:14:42', '', '16581428_34012662_1000', '', 'inherit', 'open', 'closed', '', '16581428_34012662_1000', '', '', '2022-01-15 10:14:42', '2022-01-15 09:14:42', '', 43, 'http://projetcms.test/wp-content/uploads/2022/01/16581428_34012662_1000.webp', 0, 'attachment', 'image/webp', 0),
(45, 2, '2022-01-15 10:16:12', '2022-01-15 09:16:12', '', 'veste matelassée bicolore', '', 'publish', 'closed', 'closed', '', 'veste-matelassee-bicolore', '', '', '2022-01-15 10:16:12', '2022-01-15 09:16:12', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=45', 0, 'vetement', '', 0),
(46, 2, '2022-01-15 10:16:03', '2022-01-15 09:16:03', '', '16807426_33878015_1000', '', 'inherit', 'open', 'closed', '', '16807426_33878015_1000', '', '', '2022-01-15 10:16:03', '2022-01-15 09:16:03', '', 45, 'http://projetcms.test/wp-content/uploads/2022/01/16807426_33878015_1000.webp', 0, 'attachment', 'image/webp', 0),
(47, 2, '2022-01-15 10:19:23', '2022-01-15 09:19:23', '', 'minijupe à carreaux vintage', '', 'publish', 'closed', 'closed', '', 'minijupe-a-carreaux-vintage', '', '', '2022-01-15 10:19:23', '2022-01-15 09:19:23', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=47', 0, 'vetement', '', 0),
(48, 2, '2022-01-15 10:17:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-01-15 10:17:07', '0000-00-00 00:00:00', '', 0, 'http://projetcms.test/?p=48', 0, 'post', '', 0),
(49, 2, '2022-01-15 10:19:14', '2022-01-15 09:19:14', '', '15203241_26124872_1000', '', 'inherit', 'open', 'closed', '', '15203241_26124872_1000', '', '', '2022-01-15 10:19:14', '2022-01-15 09:19:14', '', 47, 'http://projetcms.test/wp-content/uploads/2022/01/15203241_26124872_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 2, '2022-01-15 10:20:49', '2022-01-15 09:20:49', '', 'robe à carreaux', '', 'publish', 'closed', 'closed', '', 'robe-a-carreaux', '', '', '2022-01-15 10:20:49', '2022-01-15 09:20:49', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=50', 0, 'vetement', '', 0),
(51, 2, '2022-01-15 10:20:40', '2022-01-15 09:20:40', '', '16783850_33182002_1000', '', 'inherit', 'open', 'closed', '', '16783850_33182002_1000', '', '', '2022-01-15 10:20:40', '2022-01-15 09:20:40', '', 50, 'http://projetcms.test/wp-content/uploads/2022/01/16783850_33182002_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 2, '2022-01-15 10:22:13', '2022-01-15 09:22:13', '', 'robe à motif GG', '', 'publish', 'closed', 'closed', '', 'robe-a-motif-gg', '', '', '2022-01-15 10:22:13', '2022-01-15 09:22:13', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=52', 0, 'vetement', '', 0),
(53, 2, '2022-01-15 10:22:05', '2022-01-15 09:22:05', '', '16903108_33646641_1000', '', 'inherit', 'open', 'closed', '', '16903108_33646641_1000', '', '', '2022-01-15 10:22:05', '2022-01-15 09:22:05', '', 52, 'http://projetcms.test/wp-content/uploads/2022/01/16903108_33646641_1000.webp', 0, 'attachment', 'image/webp', 0),
(54, 2, '2022-01-15 10:23:34', '2022-01-15 09:23:34', '', 'robe à logo brodé', '', 'publish', 'closed', 'closed', '', 'robe-a-logo-brode', '', '', '2022-01-15 10:23:34', '2022-01-15 09:23:34', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=54', 0, 'vetement', '', 0),
(55, 2, '2022-01-15 10:23:24', '2022-01-15 09:23:24', '', '16905889_34385688_1000', '', 'inherit', 'open', 'closed', '', '16905889_34385688_1000', '', '', '2022-01-15 10:23:24', '2022-01-15 09:23:24', '', 54, 'http://projetcms.test/wp-content/uploads/2022/01/16905889_34385688_1000.webp', 0, 'attachment', 'image/webp', 0),
(56, 2, '2022-01-15 10:25:43', '2022-01-15 09:25:43', '', 'x Missoni short de sport à bandes latérales', '', 'publish', 'closed', 'closed', '', 'x-missoni-short-de-sport-a-bandes-laterales', '', '', '2022-01-15 10:25:43', '2022-01-15 09:25:43', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=56', 0, 'vetement', '', 0),
(57, 2, '2022-01-15 10:25:30', '2022-01-15 09:25:30', '', '16791461_33487661_1000', '', 'inherit', 'open', 'closed', '', '16791461_33487661_1000', '', '', '2022-01-15 10:25:30', '2022-01-15 09:25:30', '', 56, 'http://projetcms.test/wp-content/uploads/2022/01/16791461_33487661_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 2, '2022-01-15 10:26:54', '2022-01-15 09:26:54', '', 'short évasé à bande logo', '', 'publish', 'closed', 'closed', '', 'short-evase-a-bande-logo', '', '', '2022-01-15 10:26:54', '2022-01-15 09:26:54', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=58', 0, 'vetement', '', 0),
(59, 2, '2022-01-15 10:26:45', '2022-01-15 09:26:45', '', '17720239_37130932_1000', '', 'inherit', 'open', 'closed', '', '17720239_37130932_1000', '', '', '2022-01-15 10:26:45', '2022-01-15 09:26:45', '', 58, 'http://projetcms.test/wp-content/uploads/2022/01/17720239_37130932_1000.webp', 0, 'attachment', 'image/webp', 0),
(60, 2, '2022-01-15 10:29:11', '2022-01-15 09:29:11', '', 'short à logo imprimé', '', 'publish', 'closed', 'closed', '', 'short-a-logo-imprime', '', '', '2022-01-15 10:29:11', '2022-01-15 09:29:11', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=60', 0, 'vetement', '', 0),
(61, 2, '2022-01-15 10:29:00', '2022-01-15 09:29:00', '', '17645817_37185408_1000', '', 'inherit', 'open', 'closed', '', '17645817_37185408_1000', '', '', '2022-01-15 10:29:00', '2022-01-15 09:29:00', '', 60, 'http://projetcms.test/wp-content/uploads/2022/01/17645817_37185408_1000.webp', 0, 'attachment', 'image/webp', 0),
(62, 2, '2022-01-15 10:31:57', '2022-01-15 09:31:57', '', 'short à rayures Icon', '', 'publish', 'closed', 'closed', '', 'short-a-rayures-icon', '', '', '2022-01-15 10:31:57', '2022-01-15 09:31:57', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=62', 0, 'vetement', '', 0),
(63, 2, '2022-01-15 10:31:49', '2022-01-15 09:31:49', '', '17585165_36754929_1000', '', 'inherit', 'open', 'closed', '', '17585165_36754929_1000', '', '', '2022-01-15 10:31:49', '2022-01-15 09:31:49', '', 62, 'http://projetcms.test/wp-content/uploads/2022/01/17585165_36754929_1000.webp', 0, 'attachment', 'image/webp', 0),
(64, 2, '2022-01-15 10:35:04', '2022-01-15 09:35:04', '', 'pantalon en soie à imprimé William Blake Dante', '', 'publish', 'closed', 'closed', '', 'pantalon-en-soie-a-imprime-william-blake-dante', '', '', '2022-01-15 10:35:04', '2022-01-15 09:35:04', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=64', 0, 'vetement', '', 0),
(65, 2, '2022-01-15 10:34:56', '2022-01-15 09:34:56', '', '17764388_37344055_1000', '', 'inherit', 'open', 'closed', '', '17764388_37344055_1000', '', '', '2022-01-15 10:34:56', '2022-01-15 09:34:56', '', 64, 'http://projetcms.test/wp-content/uploads/2022/01/17764388_37344055_1000.webp', 0, 'attachment', 'image/webp', 0),
(66, 2, '2022-01-15 10:36:02', '2022-01-15 09:36:02', '', 'legging stretch à motif Vintage Check', '', 'publish', 'closed', 'closed', '', 'legging-stretch-a-motif-vintage-check', '', '', '2022-01-15 10:36:02', '2022-01-15 09:36:02', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=66', 0, 'vetement', '', 0),
(67, 2, '2022-01-15 10:35:51', '2022-01-15 09:35:51', '', '16734269_33082833_1000', '', 'inherit', 'open', 'closed', '', '16734269_33082833_1000', '', '', '2022-01-15 10:35:51', '2022-01-15 09:35:51', '', 66, 'http://projetcms.test/wp-content/uploads/2022/01/16734269_33082833_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 2, '2022-01-15 10:37:14', '2022-01-15 09:37:14', '', 'pantalon de jogging à logo imprimé', '', 'publish', 'closed', 'closed', '', 'pantalon-de-jogging-a-logo-imprime', '', '', '2022-01-15 10:37:14', '2022-01-15 09:37:14', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=68', 0, 'vetement', '', 0),
(69, 2, '2022-01-15 10:37:05', '2022-01-15 09:37:05', '', '17572915_36749226_1000', '', 'inherit', 'open', 'closed', '', '17572915_36749226_1000', '', '', '2022-01-15 10:37:05', '2022-01-15 09:37:05', '', 68, 'http://projetcms.test/wp-content/uploads/2022/01/17572915_36749226_1000.webp', 0, 'attachment', 'image/webp', 0),
(70, 2, '2022-01-15 10:38:56', '2022-01-15 09:38:56', '', 'pantalon droit à motif GG Supreme', '', 'publish', 'closed', 'closed', '', 'pantalon-droit-a-motif-gg-supreme', '', '', '2022-01-15 10:38:56', '2022-01-15 09:38:56', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=70', 0, 'vetement', '', 0),
(71, 2, '2022-01-15 10:38:47', '2022-01-15 09:38:47', '', '17431171_36143171_1000', '', 'inherit', 'open', 'closed', '', '17431171_36143171_1000', '', '', '2022-01-15 10:38:47', '2022-01-15 09:38:47', '', 70, 'http://projetcms.test/wp-content/uploads/2022/01/17431171_36143171_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 2, '2022-01-15 10:40:07', '2022-01-15 09:40:07', '', 'legging à logo imprimé', '', 'publish', 'closed', 'closed', '', 'legging-a-logo-imprime', '', '', '2022-01-15 10:40:07', '2022-01-15 09:40:07', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=72', 0, 'vetement', '', 0),
(73, 2, '2022-01-15 10:40:00', '2022-01-15 09:40:00', '', '17566111_37305175_1000', '', 'inherit', 'open', 'closed', '', '17566111_37305175_1000', '', '', '2022-01-15 10:40:00', '2022-01-15 09:40:00', '', 72, 'http://projetcms.test/wp-content/uploads/2022/01/17566111_37305175_1000.webp', 0, 'attachment', 'image/webp', 0),
(74, 2, '2022-01-15 10:41:37', '2022-01-15 09:41:37', '', 'pantalon droit à poches cargo', '', 'publish', 'closed', 'closed', '', 'pantalon-droit-a-poches-cargo', '', '', '2022-01-15 10:41:37', '2022-01-15 09:41:37', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=74', 0, 'vetement', '', 0),
(75, 2, '2022-01-15 10:41:28', '2022-01-15 09:41:28', '', '17004145_33975883_1000', '', 'inherit', 'open', 'closed', '', '17004145_33975883_1000', '', '', '2022-01-15 10:41:28', '2022-01-15 09:41:28', '', 74, 'http://projetcms.test/wp-content/uploads/2022/01/17004145_33975883_1000.webp', 0, 'attachment', 'image/webp', 0),
(76, 2, '2022-01-15 10:43:16', '2022-01-15 09:43:16', '', 'pantalon à motif monogrammé', '', 'publish', 'closed', 'closed', '', 'pantalon-a-motif-monogramme', '', '', '2022-01-15 10:43:16', '2022-01-15 09:43:16', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=76', 0, 'vetement', '', 0),
(77, 2, '2022-01-15 10:43:05', '2022-01-15 09:43:05', '', '16818194_35049856_1000', '', 'inherit', 'open', 'closed', '', '16818194_35049856_1000', '', '', '2022-01-15 10:43:05', '2022-01-15 09:43:05', '', 76, 'http://projetcms.test/wp-content/uploads/2022/01/16818194_35049856_1000.webp', 0, 'attachment', 'image/webp', 0),
(78, 2, '2022-01-15 10:45:20', '2022-01-15 09:45:20', '', 'pantalon de jogging à logo imprimé', '', 'publish', 'closed', 'closed', '', 'pantalon-de-jogging-a-logo-imprime-2', '', '', '2022-01-15 10:45:20', '2022-01-15 09:45:20', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=78', 0, 'vetement', '', 0),
(79, 2, '2022-01-15 10:45:09', '2022-01-15 09:45:09', '', '17376066_37535931_1000', '', 'inherit', 'open', 'closed', '', '17376066_37535931_1000', '', '', '2022-01-15 10:45:09', '2022-01-15 09:45:09', '', 78, 'http://projetcms.test/wp-content/uploads/2022/01/17376066_37535931_1000.webp', 0, 'attachment', 'image/webp', 0),
(80, 2, '2022-01-15 10:46:52', '2022-01-15 09:46:52', '', 'pantalon à poches cargo', '', 'publish', 'closed', 'closed', '', 'pantalon-a-poches-cargo', '', '', '2022-01-15 10:46:52', '2022-01-15 09:46:52', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=80', 0, 'vetement', '', 0),
(81, 2, '2022-01-15 10:46:40', '2022-01-15 09:46:40', '', '16049224_31043067_1000', '', 'inherit', 'open', 'closed', '', '16049224_31043067_1000', '', '', '2022-01-15 10:46:40', '2022-01-15 09:46:40', '', 80, 'http://projetcms.test/wp-content/uploads/2022/01/16049224_31043067_1000.webp', 0, 'attachment', 'image/webp', 0),
(82, 2, '2022-01-15 10:46:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-01-15 10:46:55', '0000-00-00 00:00:00', '', 0, 'http://projetcms.test/?post_type=vetement&p=82', 0, 'vetement', '', 0),
(83, 2, '2022-01-15 11:01:11', '2022-01-15 10:01:11', '', 'baskets à détails pailletés', '', 'publish', 'closed', 'closed', '', 'baskets-a-details-pailletes', '', '', '2022-01-15 11:01:11', '2022-01-15 10:01:11', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=83', 0, 'chaussure', '', 0),
(84, 2, '2022-01-15 11:01:01', '2022-01-15 10:01:01', '', '17315140_37542664_1000', '', 'inherit', 'open', 'closed', '', '17315140_37542664_1000', '', '', '2022-01-15 11:01:01', '2022-01-15 10:01:01', '', 83, 'http://projetcms.test/wp-content/uploads/2022/01/17315140_37542664_1000.webp', 0, 'attachment', 'image/webp', 0),
(85, 2, '2022-01-15 11:02:30', '2022-01-15 10:02:30', '', 'baskets à logo imprimé', '', 'publish', 'closed', 'closed', '', 'baskets-a-logo-imprime', '', '', '2022-01-15 11:02:30', '2022-01-15 10:02:30', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=85', 0, 'chaussure', '', 0),
(86, 2, '2022-01-15 11:02:14', '2022-01-15 10:02:14', '', '16853370_34715228_1000', '', 'inherit', 'open', 'closed', '', '16853370_34715228_1000', '', '', '2022-01-15 11:02:14', '2022-01-15 10:02:14', '', 85, 'http://projetcms.test/wp-content/uploads/2022/01/16853370_34715228_1000.webp', 0, 'attachment', 'image/webp', 0),
(87, 2, '2022-01-15 11:03:30', '2022-01-15 10:03:30', '', 'baskets Phantom', '', 'publish', 'closed', 'closed', '', 'baskets-phantom', '', '', '2022-01-15 11:03:30', '2022-01-15 10:03:30', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=87', 0, 'chaussure', '', 0),
(88, 2, '2022-01-15 11:03:22', '2022-01-15 10:03:22', '', '17693549_37153918_1000', '', 'inherit', 'open', 'closed', '', '17693549_37153918_1000', '', '', '2022-01-15 11:03:22', '2022-01-15 10:03:22', '', 87, 'http://projetcms.test/wp-content/uploads/2022/01/17693549_37153918_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 2, '2022-01-15 11:04:40', '2022-01-15 10:04:40', '', 'baskets Off-Court 3.0', '', 'publish', 'closed', 'closed', '', 'baskets-off-court-3-0', '', '', '2022-01-15 11:04:40', '2022-01-15 10:04:40', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=89', 0, 'chaussure', '', 0),
(90, 2, '2022-01-15 11:04:32', '2022-01-15 10:04:32', '', '17217850_37474246_1000', '', 'inherit', 'open', 'closed', '', '17217850_37474246_1000', '', '', '2022-01-15 11:04:32', '2022-01-15 10:04:32', '', 89, 'http://projetcms.test/wp-content/uploads/2022/01/17217850_37474246_1000.webp', 0, 'attachment', 'image/webp', 0),
(91, 2, '2022-01-15 11:07:11', '2022-01-15 10:07:11', '', 'baskets Dunk', '', 'publish', 'closed', 'closed', '', 'baskets-dunk', '', '', '2022-01-15 11:07:11', '2022-01-15 10:07:11', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=91', 0, 'chaussure', '', 0),
(92, 2, '2022-01-15 11:06:59', '2022-01-15 10:06:59', '', '17417064_36104686_1000', '', 'inherit', 'open', 'closed', '', '17417064_36104686_1000', '', '', '2022-01-15 11:06:59', '2022-01-15 10:06:59', '', 91, 'http://projetcms.test/wp-content/uploads/2022/01/17417064_36104686_1000.webp', 0, 'attachment', 'image/webp', 0),
(93, 2, '2022-01-15 11:08:34', '2022-01-15 10:08:34', '', 'baskets Odsy-1000', '', 'publish', 'closed', 'closed', '', 'baskets-odsy-1000', '', '', '2022-01-15 11:08:34', '2022-01-15 10:08:34', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=93', 0, 'chaussure', '', 0),
(94, 2, '2022-01-15 11:08:25', '2022-01-15 10:08:25', '', '17537287_37327653_1000', '', 'inherit', 'open', 'closed', '', '17537287_37327653_1000', '', '', '2022-01-15 11:08:25', '2022-01-15 10:08:25', '', 93, 'http://projetcms.test/wp-content/uploads/2022/01/17537287_37327653_1000.webp', 0, 'attachment', 'image/webp', 0),
(95, 2, '2022-01-15 11:10:08', '2022-01-15 10:10:08', '', 'baskets à semelle Greca', '', 'publish', 'closed', 'closed', '', 'baskets-a-semelle-greca', '', '', '2022-01-15 11:10:08', '2022-01-15 10:10:08', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=95', 0, 'chaussure', '', 0),
(96, 2, '2022-01-15 11:09:59', '2022-01-15 10:09:59', '', '17823686_37456965_1000', '', 'inherit', 'open', 'closed', '', '17823686_37456965_1000', '', '', '2022-01-15 11:09:59', '2022-01-15 10:09:59', '', 95, 'http://projetcms.test/wp-content/uploads/2022/01/17823686_37456965_1000.webp', 0, 'attachment', 'image/webp', 0),
(97, 2, '2022-01-15 11:11:56', '2022-01-15 10:11:56', '', 'baskets à semelle épaisse', '', 'publish', 'closed', 'closed', '', 'baskets-a-semelle-epaisse', '', '', '2022-01-15 11:11:56', '2022-01-15 10:11:56', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=97', 0, 'chaussure', '', 0),
(98, 2, '2022-01-15 11:11:39', '2022-01-15 10:11:39', '', '16419065_31653891_1000', '', 'inherit', 'open', 'closed', '', '16419065_31653891_1000', '', '', '2022-01-15 11:11:39', '2022-01-15 10:11:39', '', 97, 'http://projetcms.test/wp-content/uploads/2022/01/16419065_31653891_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 2, '2022-01-15 11:13:30', '2022-01-15 10:13:30', '', 'baskets mi-montantes Vulcanized', '', 'publish', 'closed', 'closed', '', 'baskets-mi-montantes-vulcanized', '', '', '2022-01-15 11:13:30', '2022-01-15 10:13:30', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=99', 0, 'chaussure', '', 0),
(100, 2, '2022-01-15 11:13:16', '2022-01-15 10:13:16', '', '17595006_37287981_1000', '', 'inherit', 'open', 'closed', '', '17595006_37287981_1000', '', '', '2022-01-15 11:13:16', '2022-01-15 10:13:16', '', 99, 'http://projetcms.test/wp-content/uploads/2022/01/17595006_37287981_1000.webp', 0, 'attachment', 'image/webp', 0),
(101, 2, '2022-01-15 11:15:07', '2022-01-15 10:15:07', '', 'baskets à motif Vintage Check', '', 'publish', 'closed', 'closed', '', 'baskets-a-motif-vintage-check', '', '', '2022-01-15 11:15:07', '2022-01-15 10:15:07', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=101', 0, 'chaussure', '', 0),
(102, 2, '2022-01-15 11:14:51', '2022-01-15 10:14:51', '', '17769976_37457676_1000', '', 'inherit', 'open', 'closed', '', '17769976_37457676_1000', '', '', '2022-01-15 11:14:51', '2022-01-15 10:14:51', '', 101, 'http://projetcms.test/wp-content/uploads/2022/01/17769976_37457676_1000.webp', 0, 'attachment', 'image/webp', 0),
(103, 2, '2022-01-15 11:16:31', '2022-01-15 10:16:31', '', 'baskets GG Supreme', '', 'publish', 'closed', 'closed', '', 'baskets-gg-supreme', '', '', '2022-01-15 11:16:31', '2022-01-15 10:16:31', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=103', 0, 'chaussure', '', 0),
(104, 2, '2022-01-15 11:16:22', '2022-01-15 10:16:22', '', '12404035_11284779_1000', '', 'inherit', 'open', 'closed', '', '12404035_11284779_1000', '', '', '2022-01-15 11:16:22', '2022-01-15 10:16:22', '', 103, 'http://projetcms.test/wp-content/uploads/2022/01/12404035_11284779_1000.webp', 0, 'attachment', 'image/webp', 0),
(105, 2, '2022-01-15 11:18:06', '2022-01-15 10:18:06', '', 'baskets Track', '', 'publish', 'closed', 'closed', '', 'baskets-track', '', '', '2022-01-15 11:18:06', '2022-01-15 10:18:06', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=105', 0, 'chaussure', '', 0),
(106, 2, '2022-01-15 11:17:59', '2022-01-15 10:17:59', '', '16113670_32250616_1000', '', 'inherit', 'open', 'closed', '', '16113670_32250616_1000', '', '', '2022-01-15 11:17:59', '2022-01-15 10:17:59', '', 105, 'http://projetcms.test/wp-content/uploads/2022/01/16113670_32250616_1000.webp', 0, 'attachment', 'image/webp', 0),
(107, 2, '2022-01-15 11:20:22', '2022-01-15 10:20:22', '', 'bottes Monolith à détail de pochette', '', 'publish', 'closed', 'closed', '', 'bottes-monolith-a-detail-de-pochette', '', '', '2022-01-15 11:20:22', '2022-01-15 10:20:22', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=107', 0, 'chaussure', '', 0),
(108, 2, '2022-01-15 11:20:11', '2022-01-15 10:20:11', '', '17800583_37392118_1000', '', 'inherit', 'open', 'closed', '', '17800583_37392118_1000', '', '', '2022-01-15 11:20:11', '2022-01-15 10:20:11', '', 107, 'http://projetcms.test/wp-content/uploads/2022/01/17800583_37392118_1000.webp', 0, 'attachment', 'image/webp', 0),
(109, 2, '2022-01-15 11:21:56', '2022-01-15 10:21:56', '', 'bottes à boucle B', '', 'publish', 'closed', 'closed', '', 'bottes-a-boucle-b', '', '', '2022-01-15 11:21:56', '2022-01-15 10:21:56', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=109', 0, 'chaussure', '', 0),
(110, 2, '2022-01-15 11:21:45', '2022-01-15 10:21:45', '', '17321431_37276736_1000', '', 'inherit', 'open', 'closed', '', '17321431_37276736_1000', '', '', '2022-01-15 11:21:45', '2022-01-15 10:21:45', '', 109, 'http://projetcms.test/wp-content/uploads/2022/01/17321431_37276736_1000.webp', 0, 'attachment', 'image/webp', 0),
(111, 2, '2022-01-15 11:23:27', '2022-01-15 10:23:27', '', 'x The North Face bottines', '', 'publish', 'closed', 'closed', '', 'x-the-north-face-bottines', '', '', '2022-01-15 11:23:27', '2022-01-15 10:23:27', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=111', 0, 'chaussure', '', 0),
(112, 2, '2022-01-15 11:23:18', '2022-01-15 10:23:18', '', '17409185_36009016_1000', '', 'inherit', 'open', 'closed', '', '17409185_36009016_1000', '', '', '2022-01-15 11:23:18', '2022-01-15 10:23:18', '', 111, 'http://projetcms.test/wp-content/uploads/2022/01/17409185_36009016_1000.webp', 0, 'attachment', 'image/webp', 0),
(113, 2, '2022-01-15 11:25:06', '2022-01-15 10:25:06', '', 'x Barbie après-ski à motif monogrammé', '', 'publish', 'closed', 'closed', '', 'x-barbie-apres-ski-a-motif-monogramme', '', '', '2022-01-15 11:25:06', '2022-01-15 10:25:06', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=113', 0, 'chaussure', '', 0),
(114, 2, '2022-01-15 11:24:53', '2022-01-15 10:24:53', '', '17239156_36902588_1000', '', 'inherit', 'open', 'closed', '', '17239156_36902588_1000', '', '', '2022-01-15 11:24:53', '2022-01-15 10:24:53', '', 113, 'http://projetcms.test/wp-content/uploads/2022/01/17239156_36902588_1000.webp', 0, 'attachment', 'image/webp', 0),
(115, 2, '2022-01-15 11:26:21', '2022-01-15 10:26:21', '', 'bottines en cuir à imprimé Teddy Bear', '', 'publish', 'closed', 'closed', '', 'bottines-en-cuir-a-imprime-teddy-bear', '', '', '2022-01-15 11:26:21', '2022-01-15 10:26:21', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=115', 0, 'chaussure', '', 0),
(116, 2, '2022-01-15 11:26:09', '2022-01-15 10:26:09', '', '17402534_36044249_1000', '', 'inherit', 'open', 'closed', '', '17402534_36044249_1000', '', '', '2022-01-15 11:26:09', '2022-01-15 10:26:09', '', 115, 'http://projetcms.test/wp-content/uploads/2022/01/17402534_36044249_1000.webp', 0, 'attachment', 'image/webp', 0),
(117, 2, '2022-01-15 11:28:01', '2022-01-15 10:28:01', '', 'bottines à lacets', '', 'publish', 'closed', 'closed', '', 'bottines-a-lacets', '', '', '2022-01-15 11:28:01', '2022-01-15 10:28:01', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=117', 0, 'chaussure', '', 0),
(118, 2, '2022-01-15 11:27:47', '2022-01-15 10:27:47', '', '17677893_36949471_1000', '', 'inherit', 'open', 'closed', '', '17677893_36949471_1000', '', '', '2022-01-15 11:27:47', '2022-01-15 10:27:47', '', 117, 'http://projetcms.test/wp-content/uploads/2022/01/17677893_36949471_1000.webp', 0, 'attachment', 'image/webp', 0),
(119, 2, '2022-01-15 11:29:55', '2022-01-15 10:29:55', '', 'après-ski Blow à design matelassé', '', 'publish', 'closed', 'closed', '', 'apres-ski-blow-a-design-matelasse', '', '', '2022-01-15 11:29:55', '2022-01-15 10:29:55', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=119', 0, 'chaussure', '', 0),
(120, 2, '2022-01-15 11:29:46', '2022-01-15 10:29:46', '', '17802560_37391751_1000', '', 'inherit', 'open', 'closed', '', '17802560_37391751_1000', '', '', '2022-01-15 11:29:46', '2022-01-15 10:29:46', '', 119, 'http://projetcms.test/wp-content/uploads/2022/01/17802560_37391751_1000.webp', 0, 'attachment', 'image/webp', 0),
(121, 2, '2022-01-15 11:31:57', '2022-01-15 10:31:57', '', 'bottines à logo imprimé', '', 'publish', 'closed', 'closed', '', 'bottines-a-logo-imprime', '', '', '2022-01-15 11:31:57', '2022-01-15 10:31:57', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=121', 0, 'chaussure', '', 0),
(122, 2, '2022-01-15 11:31:48', '2022-01-15 10:31:48', '', '17510481_36393843_1000', '', 'inherit', 'open', 'closed', '', '17510481_36393843_1000', '', '', '2022-01-15 11:31:48', '2022-01-15 10:31:48', '', 121, 'http://projetcms.test/wp-content/uploads/2022/01/17510481_36393843_1000.webp', 0, 'attachment', 'image/webp', 0),
(123, 2, '2022-01-15 11:33:07', '2022-01-15 10:33:07', '', 'bottines à bout carré', '', 'publish', 'closed', 'closed', '', 'bottines-a-bout-carre', '', '', '2022-01-15 11:33:07', '2022-01-15 10:33:07', '', 0, 'http://projetcms.test/?post_type=chaussure&#038;p=123', 0, 'chaussure', '', 0),
(124, 2, '2022-01-15 11:32:59', '2022-01-15 10:32:59', '', '17537273_37237535_1000', '', 'inherit', 'open', 'closed', '', '17537273_37237535_1000', '', '', '2022-01-15 11:32:59', '2022-01-15 10:32:59', '', 123, 'http://projetcms.test/wp-content/uploads/2022/01/17537273_37237535_1000.webp', 0, 'attachment', 'image/webp', 0),
(125, 2, '2022-01-15 11:39:36', '2022-01-15 10:39:36', '', 't-shirt à logo Fish-Eye', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-fish-eye', '', '', '2022-01-15 11:39:36', '2022-01-15 10:39:36', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=125', 0, 'vetement', '', 0),
(126, 2, '2022-01-15 11:39:26', '2022-01-15 10:39:26', '', '16957236_33826493_1000', '', 'inherit', 'open', 'closed', '', '16957236_33826493_1000', '', '', '2022-01-15 11:39:26', '2022-01-15 10:39:26', '', 125, 'http://projetcms.test/wp-content/uploads/2022/01/16957236_33826493_1000.webp', 0, 'attachment', 'image/webp', 0),
(127, 2, '2022-01-15 11:40:28', '2022-01-15 10:40:28', '', 't-shirt à logo imprimé', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-imprime', '', '', '2022-01-15 11:40:28', '2022-01-15 10:40:28', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=127', 0, 'vetement', '', 0),
(128, 2, '2022-01-15 11:40:21', '2022-01-15 10:40:21', '', '16798963_34409582_1000', '', 'inherit', 'open', 'closed', '', '16798963_34409582_1000', '', '', '2022-01-15 11:40:21', '2022-01-15 10:40:21', '', 127, 'http://projetcms.test/wp-content/uploads/2022/01/16798963_34409582_1000.webp', 0, 'attachment', 'image/webp', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(129, 2, '2022-01-15 11:42:42', '2022-01-15 10:42:42', '', 't-shirt à logo brodé', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-brode', '', '', '2022-01-15 11:42:42', '2022-01-15 10:42:42', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=129', 0, 'vetement', '', 0),
(130, 2, '2022-01-15 11:42:34', '2022-01-15 10:42:34', '', '17789009_37434026_1000', '', 'inherit', 'open', 'closed', '', '17789009_37434026_1000', '', '', '2022-01-15 11:42:34', '2022-01-15 10:42:34', '', 129, 'http://projetcms.test/wp-content/uploads/2022/01/17789009_37434026_1000.webp', 0, 'attachment', 'image/webp', 0),
(131, 2, '2022-01-15 11:43:58', '2022-01-15 10:43:58', '', 't-shirt à logo imprimé', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-imprime-2', '', '', '2022-01-15 11:43:58', '2022-01-15 10:43:58', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=131', 0, 'vetement', '', 0),
(132, 2, '2022-01-15 11:43:49', '2022-01-15 10:43:49', '', '17308474_35719402_1000', '', 'inherit', 'open', 'closed', '', '17308474_35719402_1000', '', '', '2022-01-15 11:43:49', '2022-01-15 10:43:49', '', 131, 'http://projetcms.test/wp-content/uploads/2022/01/17308474_35719402_1000.webp', 0, 'attachment', 'image/webp', 0),
(133, 2, '2022-01-15 11:45:26', '2022-01-15 10:45:26', '', 't-shirt à logo imprimé', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-imprime-3', '', '', '2022-01-15 11:45:26', '2022-01-15 10:45:26', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=133', 0, 'vetement', '', 0),
(134, 2, '2022-01-15 11:45:17', '2022-01-15 10:45:17', '', '16908239_35920381_1000', '', 'inherit', 'open', 'closed', '', '16908239_35920381_1000', '', '', '2022-01-15 11:45:17', '2022-01-15 10:45:17', '', 133, 'http://projetcms.test/wp-content/uploads/2022/01/16908239_35920381_1000.webp', 0, 'attachment', 'image/webp', 0),
(135, 2, '2022-01-15 11:49:10', '2022-01-15 10:49:10', '', 't-shirt Tiger Classic', '', 'publish', 'closed', 'closed', '', 't-shirt-tiger-classic', '', '', '2022-01-15 11:49:10', '2022-01-15 10:49:10', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=135', 0, 'vetement', '', 0),
(136, 2, '2022-01-15 11:48:55', '2022-01-15 10:48:55', '', '17709273_37249834_1000', '', 'inherit', 'open', 'closed', '', '17709273_37249834_1000', '', '', '2022-01-15 11:48:55', '2022-01-15 10:48:55', '', 135, 'http://projetcms.test/wp-content/uploads/2022/01/17709273_37249834_1000.webp', 0, 'attachment', 'image/webp', 0),
(137, 2, '2022-01-15 11:51:21', '2022-01-15 10:51:21', '', 't-shirt oversize à imprimé Couture', '', 'publish', 'closed', 'closed', '', 't-shirt-oversize-a-imprime-couture', '', '', '2022-01-15 11:51:21', '2022-01-15 10:51:21', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=137', 0, 'vetement', '', 0),
(138, 2, '2022-01-15 11:50:05', '2022-01-15 10:50:05', '', '16910504_37169336_1000', '', 'inherit', 'open', 'closed', '', '16910504_37169336_1000', '', '', '2022-01-15 11:50:05', '2022-01-15 10:50:05', '', 137, 'http://projetcms.test/wp-content/uploads/2022/01/16910504_37169336_1000.webp', 0, 'attachment', 'image/webp', 0),
(139, 2, '2022-01-15 11:52:51', '2022-01-15 10:52:51', '', 't-shirt à logo imprimé', '', 'publish', 'closed', 'closed', '', 't-shirt-a-logo-imprime-4', '', '', '2022-01-15 11:52:51', '2022-01-15 10:52:51', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=139', 0, 'vetement', '', 0),
(140, 2, '2022-01-15 11:52:32', '2022-01-15 10:52:32', '', '16258872_31113839_1000', '', 'inherit', 'open', 'closed', '', '16258872_31113839_1000', '', '', '2022-01-15 11:52:32', '2022-01-15 10:52:32', '', 139, 'http://projetcms.test/wp-content/uploads/2022/01/16258872_31113839_1000.webp', 0, 'attachment', 'image/webp', 0),
(141, 2, '2022-01-15 11:54:59', '2022-01-15 10:54:59', '', 't-shirt Medusa Head à logo imprimé', '', 'publish', 'closed', 'closed', '', 't-shirt-medusa-head-a-logo-imprime', '', '', '2022-01-15 11:54:59', '2022-01-15 10:54:59', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=141', 0, 'vetement', '', 0),
(142, 2, '2022-01-15 11:54:50', '2022-01-15 10:54:50', '', '17514291_37331602_1000', '', 'inherit', 'open', 'closed', '', '17514291_37331602_1000', '', '', '2022-01-15 11:54:50', '2022-01-15 10:54:50', '', 141, 'http://projetcms.test/wp-content/uploads/2022/01/17514291_37331602_1000.webp', 0, 'attachment', 'image/webp', 0),
(143, 1, '2022-01-15 18:44:13', '2022-01-15 17:44:13', '', 'Polo droit maille piquée Logo Chesthit', '', 'publish', 'closed', 'closed', '', 'polo-droit-maille-piquee-logo-chesthit', '', '', '2022-01-15 18:44:13', '2022-01-15 17:44:13', '', 0, 'http://projetcms.test/?post_type=vetement&#038;p=143', 0, 'vetement', '', 0),
(144, 1, '2022-01-15 18:44:03', '2022-01-15 17:44:03', '', '4a3656da68ffdda0cb166d18b609a726', '', 'inherit', 'open', 'closed', '', '4a3656da68ffdda0cb166d18b609a726', '', '', '2022-01-15 18:44:03', '2022-01-15 17:44:03', '', 143, 'http://projetcms.test/wp-content/uploads/2022/01/4a3656da68ffdda0cb166d18b609a726.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Threadbare', 'threadbare', 0),
(3, 'Homme', 'homme', 0),
(4, 'Timberland', 'timberland', 0),
(5, 'Bottes', 'bottes', 0),
(6, 'Gucci', 'gucci', 0),
(7, 'Moncler', 'moncler', 0),
(8, 'Stone-Island', 'stone-island', 0),
(9, 'CP Company', 'cp-company', 0),
(10, 'Louis Vuitton', 'louis-vuitton', 0),
(11, 'Femme', 'femme', 0),
(12, 'Enfant', 'enfant', 0),
(13, 'Sneakers', 'sneakers', 0),
(14, 'Chaussures', 'chaussures', 0),
(15, 'Mocassins', 'mocassins', 0),
(16, 'Prada', 'prada', 0),
(17, 'Vestes et manteaux', 'vestes-et-manteaux', 0),
(18, 'Sneakers', 'sneakers', 0),
(19, 'Bottes', 'bottes', 0),
(20, 'Chaussures', 'chaussures', 0),
(21, 'Mocassins', 'mocassins', 0),
(22, 'Off-White', 'off-white', 0),
(23, 'Chemises', 'chemises', 0),
(24, 'Palm Angels', 'palm-angels', 0),
(25, 'Alexander McQueen', 'alexander-mcqueen', 0),
(26, 'Versace', 'versace', 0),
(27, 'Robes', 'robes', 0),
(28, 'Balenciaga', 'balenciaga', 0),
(29, 'Burberry', 'burberry', 0),
(30, 'Jupes', 'jupes', 0),
(31, 'Shorts', 'shorts', 0),
(32, 'Givenchy', 'givenchy', 0),
(33, 'Pantalons', 'pantalons', 0),
(34, 'Balmain', 'balmain', 0),
(35, 'Moschino', 'moschino', 0),
(36, 'Nike', 'nike', 0),
(37, 'Kenzo', 'kenzo', 0),
(38, 'Fendi', 'fendi', 0),
(39, 'T-shirts', 't-shirts', 0),
(40, 'LEVI\'S', 'levis', 0),
(41, 'LEVI\'S', 'levis-2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(12, 3, 0),
(12, 17, 0),
(13, 3, 0),
(13, 4, 0),
(13, 5, 0),
(16, 3, 0),
(16, 16, 0),
(16, 17, 0),
(19, 3, 0),
(19, 22, 0),
(19, 23, 0),
(21, 3, 0),
(21, 22, 0),
(21, 23, 0),
(23, 3, 0),
(23, 23, 0),
(23, 24, 0),
(25, 3, 0),
(25, 23, 0),
(25, 24, 0),
(27, 7, 0),
(27, 12, 0),
(27, 17, 0),
(29, 3, 0),
(29, 7, 0),
(29, 17, 0),
(31, 11, 0),
(31, 17, 0),
(31, 25, 0),
(33, 11, 0),
(33, 17, 0),
(33, 25, 0),
(35, 11, 0),
(35, 17, 0),
(35, 26, 0),
(37, 11, 0),
(37, 22, 0),
(37, 27, 0),
(39, 11, 0),
(39, 25, 0),
(39, 27, 0),
(41, 11, 0),
(41, 26, 0),
(41, 27, 0),
(43, 11, 0),
(43, 17, 0),
(43, 28, 0),
(45, 11, 0),
(45, 17, 0),
(45, 26, 0),
(47, 11, 0),
(47, 29, 0),
(47, 30, 0),
(50, 12, 0),
(50, 27, 0),
(50, 29, 0),
(52, 6, 0),
(52, 12, 0),
(52, 27, 0),
(54, 12, 0),
(54, 26, 0),
(54, 27, 0),
(56, 3, 0),
(56, 22, 0),
(56, 24, 0),
(56, 31, 0),
(58, 12, 0),
(58, 26, 0),
(58, 31, 0),
(60, 12, 0),
(60, 31, 0),
(60, 32, 0),
(62, 12, 0),
(62, 29, 0),
(62, 31, 0),
(64, 11, 0),
(64, 25, 0),
(64, 33, 0),
(66, 12, 0),
(66, 29, 0),
(66, 33, 0),
(68, 3, 0),
(68, 24, 0),
(68, 33, 0),
(70, 6, 0),
(70, 11, 0),
(70, 33, 0),
(72, 12, 0),
(72, 33, 0),
(72, 34, 0),
(74, 3, 0),
(74, 8, 0),
(74, 33, 0),
(76, 11, 0),
(76, 26, 0),
(76, 33, 0),
(78, 12, 0),
(78, 33, 0),
(78, 35, 0),
(80, 3, 0),
(80, 22, 0),
(80, 33, 0),
(83, 11, 0),
(83, 18, 0),
(83, 25, 0),
(85, 12, 0),
(85, 18, 0),
(85, 35, 0),
(87, 3, 0),
(87, 18, 0),
(87, 28, 0),
(89, 11, 0),
(89, 18, 0),
(89, 22, 0),
(91, 12, 0),
(91, 18, 0),
(91, 36, 0),
(93, 3, 0),
(93, 18, 0),
(93, 22, 0),
(95, 11, 0),
(95, 18, 0),
(95, 26, 0),
(97, 7, 0),
(97, 12, 0),
(97, 18, 0),
(99, 3, 0),
(99, 18, 0),
(99, 22, 0),
(101, 11, 0),
(101, 18, 0),
(101, 29, 0),
(103, 6, 0),
(103, 12, 0),
(103, 18, 0),
(105, 3, 0),
(105, 18, 0),
(105, 28, 0),
(107, 11, 0),
(107, 16, 0),
(107, 19, 0),
(109, 12, 0),
(109, 19, 0),
(109, 34, 0),
(111, 3, 0),
(111, 6, 0),
(111, 19, 0),
(113, 11, 0),
(113, 19, 0),
(113, 34, 0),
(115, 12, 0),
(115, 19, 0),
(115, 35, 0),
(117, 3, 0),
(117, 19, 0),
(117, 25, 0),
(119, 11, 0),
(119, 16, 0),
(119, 19, 0),
(121, 12, 0),
(121, 19, 0),
(121, 37, 0),
(123, 3, 0),
(123, 19, 0),
(123, 32, 0),
(125, 11, 0),
(125, 38, 0),
(125, 39, 0),
(127, 12, 0),
(127, 34, 0),
(127, 39, 0),
(129, 3, 0),
(129, 25, 0),
(129, 39, 0),
(131, 11, 0),
(131, 32, 0),
(131, 39, 0),
(133, 12, 0),
(133, 26, 0),
(133, 39, 0),
(135, 3, 0),
(135, 37, 0),
(135, 39, 0),
(137, 11, 0),
(137, 28, 0),
(137, 39, 0),
(139, 3, 0),
(139, 29, 0),
(139, 39, 0),
(141, 3, 0),
(141, 26, 0),
(141, 39, 0),
(143, 3, 0),
(143, 23, 0),
(143, 41, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'marque', '', 0, 1),
(3, 3, 'genre', '', 0, 24),
(4, 4, 'marque', '', 0, 1),
(5, 5, 'modele', '', 0, 1),
(6, 6, 'marque', '', 0, 4),
(7, 7, 'marque', '', 0, 3),
(8, 8, 'marque', '', 0, 1),
(9, 9, 'marque', '', 0, 0),
(10, 10, 'marque', '', 0, 0),
(11, 11, 'genre', '', 0, 22),
(12, 12, 'genre', '', 0, 19),
(13, 13, 'modele', '', 0, 0),
(14, 14, 'modele', '', 0, 0),
(15, 15, 'modele', '', 0, 0),
(16, 16, 'marque', '', 0, 3),
(17, 17, 'type_vetement', '', 0, 9),
(18, 18, 'type_chaussures', '', 0, 12),
(19, 19, 'type_chaussures', '', 0, 9),
(20, 20, 'type_chaussures', '', 0, 0),
(21, 21, 'type_chaussures', '', 0, 0),
(22, 22, 'marque', '', 0, 8),
(23, 23, 'type_vetement', '', 0, 5),
(24, 24, 'marque', '', 0, 4),
(25, 25, 'marque', '', 0, 7),
(26, 26, 'marque', '', 0, 9),
(27, 27, 'type_vetement', '', 0, 6),
(28, 28, 'marque', '', 0, 4),
(29, 29, 'marque', '', 0, 6),
(30, 30, 'type_vetement', '', 0, 1),
(31, 31, 'type_vetement', '', 0, 4),
(32, 32, 'marque', '', 0, 3),
(33, 33, 'type_vetement', '', 0, 9),
(34, 34, 'marque', '', 0, 4),
(35, 35, 'marque', '', 0, 3),
(36, 36, 'marque', '', 0, 1),
(37, 37, 'marque', '', 0, 2),
(38, 38, 'marque', '', 0, 1),
(39, 39, 'type_vetement', '', 0, 9),
(40, 40, 'marque', '', 10, 0),
(41, 41, 'marque', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'imrane'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"3de1c3fb33b4e02ca2a16cd026055153eca54930acb626ab1afeb616d0920f36\";a:4:{s:10:\"expiration\";i:1643364593;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\";s:5:\"login\";i:1642154993;}s:64:\"1fa689e444dec8200c179f8f033fddff0b333f2307fae3b22a99da677bae0ce1\";a:4:{s:10:\"expiration\";i:1643543707;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\";s:5:\"login\";i:1642334107;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:23:\"acf-field-group-options\";}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1642158629'),
(23, 2, 'nickname', 'holyfriday'),
(24, 2, 'first_name', ''),
(25, 2, 'last_name', ''),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(35, 2, 'wp_user_level', '10'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(38, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:22:\"add-post-type-vetement\";i:1;s:23:\"add-post-type-chaussure\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:10:\"add-marque\";i:5;s:10:\"add-modele\";i:6;s:9:\"add-genre\";}'),
(39, 2, 'session_tokens', 'a:1:{s:64:\"d50649890c00b928b8ddbf8a564eb5cfecf484006b81487491f4f2b4cb15992f\";a:4:{s:10:\"expiration\";i:1642349634;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\";s:5:\"login\";i:1642176834;}}'),
(40, 2, 'wp_user-settings', 'libraryContent=browse'),
(41, 2, 'wp_user-settings-time', '1642236579'),
(42, 2, 'wp_dashboard_quick_press_last_post_id', '48'),
(43, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'imrane', '$P$BZ3dk7aCspHPlseSUBGYotnJ6PP1c70', 'imrane', 'naimlawani01@gmail.com', 'http://projetcms.test', '2022-01-14 10:09:42', '', 0, 'imrane'),
(2, 'holyfriday', '$P$BOdvB3D9ZwoXBaRjsFZ3i64leElKjJ1', 'holyfriday', 'rikemarcdevy.ngbehin@hetic.net', '', '2022-01-14 11:38:35', '1642160316:$P$ByyYRhM7JNuwvwffogfndUpqn70vfH1', 0, 'holyfriday');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
