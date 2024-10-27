-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1893 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10004','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Junho Dev World','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"note/?$\";s:24:\"index.php?post_type=note\";s:37:\"note/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=note&feed=$matches[1]\";s:32:\"note/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=note&feed=$matches[1]\";s:24:\"note/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=note&paged=$matches[1]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:8:\"about/?$\";s:25:\"index.php?post_type=about\";s:38:\"about/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=about&feed=$matches[1]\";s:33:\"about/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=about&feed=$matches[1]\";s:25:\"about/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=about&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"note/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"note/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"note/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"note/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"note/([^/]+)/embed/?$\";s:37:\"index.php?note=$matches[1]&embed=true\";s:25:\"note/([^/]+)/trackback/?$\";s:31:\"index.php?note=$matches[1]&tb=1\";s:45:\"note/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?note=$matches[1]&feed=$matches[2]\";s:40:\"note/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?note=$matches[1]&feed=$matches[2]\";s:33:\"note/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&paged=$matches[2]\";s:40:\"note/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&cpage=$matches[2]\";s:29:\"note/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?note=$matches[1]&page=$matches[2]\";s:21:\"note/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"note/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"note/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"note/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"about/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"about/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"about/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"about/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"about/([^/]+)/embed/?$\";s:38:\"index.php?about=$matches[1]&embed=true\";s:26:\"about/([^/]+)/trackback/?$\";s:32:\"index.php?about=$matches[1]&tb=1\";s:46:\"about/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?about=$matches[1]&feed=$matches[2]\";s:41:\"about/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?about=$matches[1]&feed=$matches[2]\";s:34:\"about/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&paged=$matches[2]\";s:41:\"about/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&cpage=$matches[2]\";s:30:\"about/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?about=$matches[1]&page=$matches[2]\";s:22:\"about/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"about/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"about/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"about/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"enable-cors/enable-cors.php\";i:2;s:45:\"simple-local-avatars/simple-local-avatars.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','empty','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','empty','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:2:{s:27:\"enable-cors/enable-cors.php\";a:2:{i:0;s:18:\"Enable\\Cors\\Plugin\";i:1;s:10:\"deactivate\";}s:45:\"simple-local-avatars/simple-local-avatars.php\";s:30:\"simple_local_avatars_uninstall\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','37','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1731621347','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','57155','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','19','off');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:10:{i:1729657205;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1729677349;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729677638;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729720549;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729720838;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729720839;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729980076;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1730081188;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1730156362;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (130,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716070005;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (138,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (149,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (163,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729655037;s:7:\"checked\";a:2:{s:5:\"empty\";s:3:\"1.0\";s:13:\"junhoDevWorld\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (164,'current_theme','Empty','yes');
INSERT INTO `wp_options` VALUES (165,'theme_mods_junhoDevWorld','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1722817170;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (166,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (178,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":2,\"critical\":3}','yes');
INSERT INTO `wp_options` VALUES (368,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (369,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (660,'repr_apps','a:1:{i:0;a:3:{s:13:\"allowsRouting\";b:0;s:7:\"appname\";s:13:\"junhoDevWorld\";s:7:\"pageIds\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (661,'repr_version','3.2.2','yes');
INSERT INTO `wp_options` VALUES (678,'recovery_mode_email_last_sent','1727749992','yes');
INSERT INTO `wp_options` VALUES (786,'theme_mods_empty','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (850,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (925,'auto_update_plugins','a:1:{i:0;s:27:\"enable-cors/enable-cors.php\";}','no');
INSERT INTO `wp_options` VALUES (929,'enable-cors-options','a:7:{s:6:\"enable\";b:1;s:9:\"allowFont\";b:1;s:10:\"allowImage\";b:1;s:16:\"allowCredentials\";b:1;s:10:\"allowedFor\";a:1:{i:0;a:1:{s:5:\"value\";s:1:\"*\";}}s:14:\"allowedMethods\";a:4:{i:0;s:3:\"GET\";i:1;s:4:\"POST\";i:2;s:7:\"OPTIONS\";i:3;s:3:\"PUT\";}s:13:\"allowedHeader\";a:4:{i:0;s:6:\"Accept\";i:1;s:13:\"Authorization\";i:2;s:12:\"Content-Type\";i:3;s:6:\"Origin\";}}','yes');
INSERT INTO `wp_options` VALUES (930,'enable-cors_version','1.2.3','yes');
INSERT INTO `wp_options` VALUES (1160,'simple_local_avatars','a:2:{s:4:\"caps\";i:0;s:4:\"only\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (1240,'acf_first_activated_version','6.3.6','yes');
INSERT INTO `wp_options` VALUES (1241,'acf_site_health','{\"version\":\"6.3.6\",\"plugin_type\":\"Free\",\"wp_version\":\"6.6.1\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Empty\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.6\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"enable-cors\\/enable-cors.php\":{\"name\":\"Enable CORS\",\"version\":\"1.2.3\",\"plugin_uri\":\"https:\\/\\/www.fiverr.com\\/share\\/7kXeLW\"},\"simple-local-avatars\\/simple-local-avatars.php\":{\"name\":\"Simple Local Avatars\",\"version\":\"2.7.11\",\"plugin_uri\":\"https:\\/\\/10up.com\\/plugins\\/simple-local-avatars-wordpress\\/\"}},\"ui_field_groups\":\"6\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"1\",\"number_of_fields_by_type\":{\"date_picker\":3,\"image\":5,\"text\":3,\"relationship\":1,\"url\":3,\"true_false\":1,\"number\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"9\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1725847588,\"event_first_created_field_group\":1725848045,\"last_updated\":1729655037}','off');
INSERT INTO `wp_options` VALUES (1243,'acf_version','6.3.6','yes');
INSERT INTO `wp_options` VALUES (1246,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.6.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.6.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.6.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.2-rollback-1.zip\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.6.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1729655122;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1426,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (1875,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729655036;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:7:\"6.3.6.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3167679\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3167679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.6.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:27:\"enable-cors/enable-cors.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/enable-cors\";s:4:\"slug\";s:11:\"enable-cors\";s:6:\"plugin\";s:27:\"enable-cors/enable-cors.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/enable-cors/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/enable-cors.1.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/enable-cors/assets/icon-256x256.png?rev=2889819\";s:2:\"1x\";s:64:\"https://ps.w.org/enable-cors/assets/icon-128x128.png?rev=2889819\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/enable-cors/assets/banner-1544x500.png?rev=2892361\";s:2:\"1x\";s:66:\"https://ps.w.org/enable-cors/assets/banner-772x250.png?rev=2892361\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:45:\"simple-local-avatars/simple-local-avatars.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/simple-local-avatars\";s:4:\"slug\";s:20:\"simple-local-avatars\";s:6:\"plugin\";s:45:\"simple-local-avatars/simple-local-avatars.php\";s:11:\"new_version\";s:6:\"2.7.11\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/simple-local-avatars/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/simple-local-avatars.2.7.11.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/simple-local-avatars/assets/icon.svg?rev=2783752\";s:3:\"svg\";s:65:\"https://ps.w.org/simple-local-avatars/assets/icon.svg?rev=2783752\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/simple-local-avatars/assets/banner-1544x500.jpg?rev=2406995\";s:2:\"1x\";s:75:\"https://ps.w.org/simple-local-avatars/assets/banner-772x250.jpg?rev=2406995\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.3.6\";s:27:\"enable-cors/enable-cors.php\";s:5:\"1.2.3\";s:45:\"simple-local-avatars/simple-local-avatars.php\";s:6:\"2.7.11\";}}','off');
INSERT INTO `wp_options` VALUES (1887,'_site_transient_timeout_wp_theme_files_patterns-249279c646d403aa159ca661c78b7b77','1729656836','off');
INSERT INTO `wp_options` VALUES (1889,'_site_transient_wp_theme_files_patterns-249279c646d403aa159ca661c78b7b77','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1891,'_site_transient_timeout_theme_roots','1729656837','off');
INSERT INTO `wp_options` VALUES (1892,'_site_transient_theme_roots','a:2:{s:5:\"empty\";s:7:\"/themes\";s:13:\"junhoDevWorld\";s:7:\"/themes\";}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (28,29,'_edit_lock','1722827129:1');
INSERT INTO `wp_postmeta` VALUES (30,29,'_wp_page_template','templates/empty-react-page-template.php');
INSERT INTO `wp_postmeta` VALUES (40,37,'_edit_lock','1722827134:1');
INSERT INTO `wp_postmeta` VALUES (41,40,'_edit_lock','1724898993:1');
INSERT INTO `wp_postmeta` VALUES (42,41,'_wp_attached_file','2024/08/field.jpg');
INSERT INTO `wp_postmeta` VALUES (43,41,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:17:\"2024/08/field.jpg\";s:8:\"filesize\";i:10375;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6307;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (46,43,'_edit_lock','1724044283:1');
INSERT INTO `wp_postmeta` VALUES (49,45,'_edit_lock','1723346232:1');
INSERT INTO `wp_postmeta` VALUES (52,47,'_edit_lock','1723346226:1');
INSERT INTO `wp_postmeta` VALUES (55,49,'_edit_lock','1723346220:1');
INSERT INTO `wp_postmeta` VALUES (58,51,'_edit_lock','1723346216:1');
INSERT INTO `wp_postmeta` VALUES (61,53,'_edit_lock','1723346212:1');
INSERT INTO `wp_postmeta` VALUES (64,55,'_edit_lock','1723346207:1');
INSERT INTO `wp_postmeta` VALUES (67,57,'_edit_lock','1726621872:1');
INSERT INTO `wp_postmeta` VALUES (70,59,'_edit_lock','1726619295:1');
INSERT INTO `wp_postmeta` VALUES (99,76,'_wp_attached_file','2024/08/myface.jpg');
INSERT INTO `wp_postmeta` VALUES (100,76,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:288;s:6:\"height\";i:288;s:4:\"file\";s:18:\"2024/08/myface.jpg\";s:8:\"filesize\";i:31290;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"myface-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7036;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (101,77,'_wp_attached_file','2024/08/field-1.jpg');
INSERT INTO `wp_postmeta` VALUES (102,77,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:19:\"2024/08/field-1.jpg\";s:8:\"filesize\";i:10375;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"field-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6307;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (103,78,'_wp_attached_file','2024/08/myface-1.jpg');
INSERT INTO `wp_postmeta` VALUES (104,78,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:288;s:6:\"height\";i:288;s:4:\"file\";s:20:\"2024/08/myface-1.jpg\";s:8:\"filesize\";i:31290;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"myface-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7036;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (105,79,'_wp_attached_file','2024/08/Screen-Shot-2024-01-09-at-2.22.48-PM.png');
INSERT INTO `wp_postmeta` VALUES (106,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1073;s:6:\"height\";i:298;s:4:\"file\";s:48:\"2024/08/Screen-Shot-2024-01-09-at-2.22.48-PM.png\";s:8:\"filesize\";i:96771;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"Screen-Shot-2024-01-09-at-2.22.48-PM-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35388;}s:5:\"large\";a:5:{s:4:\"file\";s:49:\"Screen-Shot-2024-01-09-at-2.22.48-PM-1024x284.png\";s:5:\"width\";i:1024;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:236747;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2024-01-09-at-2.22.48-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25821;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"Screen-Shot-2024-01-09-at-2.22.48-PM-768x213.png\";s:5:\"width\";i:768;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:157512;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (107,80,'_wp_attached_file','2024/08/waftgreentreefrogamplexis-bg.jpg');
INSERT INTO `wp_postmeta` VALUES (108,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:693;s:6:\"height\";i:437;s:4:\"file\";s:40:\"2024/08/waftgreentreefrogamplexis-bg.jpg\";s:8:\"filesize\";i:106614;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"waftgreentreefrogamplexis-bg-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24752;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"waftgreentreefrogamplexis-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10069;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (109,81,'_wp_attached_file','2024/08/screenshot.png');
INSERT INTO `wp_postmeta` VALUES (110,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:900;s:4:\"file\";s:22:\"2024/08/screenshot.png\";s:8:\"filesize\";i:991141;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"screenshot-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66190;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"screenshot-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:577004;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"screenshot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26907;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"screenshot-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:338149;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (113,84,'_edit_lock','1725070215:1');
INSERT INTO `wp_postmeta` VALUES (114,85,'_wp_attached_file','2024/08/cat.webp');
INSERT INTO `wp_postmeta` VALUES (115,85,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:16:\"2024/08/cat.webp\";s:8:\"filesize\";i:101948;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"cat-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9726;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"cat-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5158;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"cat-768x511.webp\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38634;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (120,87,'_edit_lock','1725070238:1');
INSERT INTO `wp_postmeta` VALUES (121,88,'_edit_lock','1725070248:1');
INSERT INTO `wp_postmeta` VALUES (122,89,'_edit_lock','1725070256:1');
INSERT INTO `wp_postmeta` VALUES (123,90,'_edit_lock','1725070883:1');
INSERT INTO `wp_postmeta` VALUES (124,91,'_edit_lock','1725070772:1');
INSERT INTO `wp_postmeta` VALUES (125,92,'_edit_lock','1725070781:1');
INSERT INTO `wp_postmeta` VALUES (126,93,'_edit_lock','1725070791:1');
INSERT INTO `wp_postmeta` VALUES (127,94,'_edit_lock','1725070801:1');
INSERT INTO `wp_postmeta` VALUES (128,95,'_edit_lock','1725847966:1');
INSERT INTO `wp_postmeta` VALUES (129,96,'_wp_attached_file','2024/08/Profile.pdf');
INSERT INTO `wp_postmeta` VALUES (130,96,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:15:\"Profile-pdf.jpg\";s:5:\"width\";i:1088;s:6:\"height\";i:1408;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56617;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"Profile-pdf-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5541;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"Profile-pdf-791x1024.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33353;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"Profile-pdf-116x150.jpg\";s:5:\"width\";i:116;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2743;}}s:8:\"filesize\";i:33388;}');
INSERT INTO `wp_postmeta` VALUES (131,97,'_wp_attached_file','2024/08/cropped-myface-1.jpg');
INSERT INTO `wp_postmeta` VALUES (132,97,'_wp_attachment_context','control-id');
INSERT INTO `wp_postmeta` VALUES (133,97,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2024/08/cropped-myface-1.jpg\";s:8:\"filesize\";i:12198;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-myface-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6951;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (135,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (136,105,'_edit_lock','1726708320:1');
INSERT INTO `wp_postmeta` VALUES (137,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (138,106,'_edit_lock','1726708312:1');
INSERT INTO `wp_postmeta` VALUES (139,107,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (140,107,'_edit_lock','1726708300:1');
INSERT INTO `wp_postmeta` VALUES (141,108,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,108,'_edit_lock','1726713537:1');
INSERT INTO `wp_postmeta` VALUES (143,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,109,'_edit_lock','1726707858:1');
INSERT INTO `wp_postmeta` VALUES (145,111,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,111,'_edit_lock','1726439640:1');
INSERT INTO `wp_postmeta` VALUES (147,111,'skills','a:3:{i:0;s:3:\"106\";i:1;s:3:\"105\";i:2;s:3:\"107\";}');
INSERT INTO `wp_postmeta` VALUES (148,111,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (149,112,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (150,112,'_edit_lock','1726439649:1');
INSERT INTO `wp_postmeta` VALUES (151,112,'skills','a:2:{i:0;s:3:\"106\";i:1;s:3:\"105\";}');
INSERT INTO `wp_postmeta` VALUES (152,112,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (153,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (154,113,'_edit_lock','1726440363:1');
INSERT INTO `wp_postmeta` VALUES (155,113,'skills','a:3:{i:0;s:3:\"106\";i:1;s:3:\"107\";i:2;s:3:\"108\";}');
INSERT INTO `wp_postmeta` VALUES (156,113,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (157,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,114,'_edit_lock','1725932379:1');
INSERT INTO `wp_postmeta` VALUES (159,114,'skills','a:2:{i:0;s:3:\"106\";i:1;s:3:\"105\";}');
INSERT INTO `wp_postmeta` VALUES (160,114,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (161,115,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (162,115,'_edit_lock','1726348272:1');
INSERT INTO `wp_postmeta` VALUES (163,115,'skills','a:2:{i:0;s:3:\"105\";i:1;s:3:\"107\";}');
INSERT INTO `wp_postmeta` VALUES (164,115,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (165,115,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (166,115,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (167,114,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (168,114,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (169,113,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (170,113,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (171,112,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (172,112,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (173,111,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (174,111,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (175,115,'background','41');
INSERT INTO `wp_postmeta` VALUES (176,115,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (177,114,'background','81');
INSERT INTO `wp_postmeta` VALUES (178,114,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (179,113,'background','81');
INSERT INTO `wp_postmeta` VALUES (180,113,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (181,112,'background','81');
INSERT INTO `wp_postmeta` VALUES (182,112,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (183,111,'background','85');
INSERT INTO `wp_postmeta` VALUES (184,111,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (185,115,'is_outstanding_project','1');
INSERT INTO `wp_postmeta` VALUES (186,115,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (187,114,'is_outstanding_project','1');
INSERT INTO `wp_postmeta` VALUES (188,114,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (189,113,'is_outstanding_project','1');
INSERT INTO `wp_postmeta` VALUES (190,113,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (191,112,'is_outstanding_project','1');
INSERT INTO `wp_postmeta` VALUES (192,112,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (193,111,'is_outstanding_project','1');
INSERT INTO `wp_postmeta` VALUES (194,111,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (195,120,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (196,120,'_edit_lock','1726436520:1');
INSERT INTO `wp_postmeta` VALUES (197,120,'skills','');
INSERT INTO `wp_postmeta` VALUES (198,120,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (199,120,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (200,120,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (201,120,'background','77');
INSERT INTO `wp_postmeta` VALUES (202,120,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (203,120,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (204,120,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (205,122,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (206,122,'_edit_lock','1726436530:1');
INSERT INTO `wp_postmeta` VALUES (207,122,'skills','a:2:{i:0;s:3:\"106\";i:1;s:3:\"105\";}');
INSERT INTO `wp_postmeta` VALUES (208,122,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (209,122,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (210,122,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (211,122,'background','85');
INSERT INTO `wp_postmeta` VALUES (212,122,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (213,122,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (214,122,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (215,123,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (216,123,'_edit_lock','1726436549:1');
INSERT INTO `wp_postmeta` VALUES (217,123,'skills','');
INSERT INTO `wp_postmeta` VALUES (218,123,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (219,123,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (220,123,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (221,123,'background','41');
INSERT INTO `wp_postmeta` VALUES (222,123,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (223,123,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (224,123,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (225,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,124,'_edit_lock','1726436556:1');
INSERT INTO `wp_postmeta` VALUES (227,124,'skills','');
INSERT INTO `wp_postmeta` VALUES (228,124,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (229,124,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (230,124,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (231,124,'background','81');
INSERT INTO `wp_postmeta` VALUES (232,124,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (233,124,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (234,124,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (235,125,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (236,125,'_edit_lock','1726436567:1');
INSERT INTO `wp_postmeta` VALUES (237,125,'_oembed_5d6fd1907a44c22b83055c9cd5e4147d','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (238,125,'skills','');
INSERT INTO `wp_postmeta` VALUES (239,125,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (240,125,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (241,125,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (242,125,'background','41');
INSERT INTO `wp_postmeta` VALUES (243,125,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (244,125,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (245,125,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (246,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (247,126,'_edit_lock','1726436577:1');
INSERT INTO `wp_postmeta` VALUES (248,126,'skills','');
INSERT INTO `wp_postmeta` VALUES (249,126,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (250,126,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (251,126,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (252,126,'background','76');
INSERT INTO `wp_postmeta` VALUES (253,126,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (254,126,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (255,126,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (256,128,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,128,'_edit_lock','1726436585:1');
INSERT INTO `wp_postmeta` VALUES (258,128,'skills','');
INSERT INTO `wp_postmeta` VALUES (259,128,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (260,128,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (261,128,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (262,128,'background','81');
INSERT INTO `wp_postmeta` VALUES (263,128,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (264,128,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (265,128,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (266,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (267,129,'_edit_lock','1726436597:1');
INSERT INTO `wp_postmeta` VALUES (268,129,'skills','');
INSERT INTO `wp_postmeta` VALUES (269,129,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (270,129,'github_link','https://www.google.com/');
INSERT INTO `wp_postmeta` VALUES (271,129,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (272,129,'background','41');
INSERT INTO `wp_postmeta` VALUES (273,129,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (274,129,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (275,129,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (276,132,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,132,'_edit_lock','1726436760:1');
INSERT INTO `wp_postmeta` VALUES (278,133,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (279,133,'_edit_lock','1726436751:1');
INSERT INTO `wp_postmeta` VALUES (280,133,'skills','');
INSERT INTO `wp_postmeta` VALUES (281,133,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (282,133,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (283,133,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (284,133,'background','81');
INSERT INTO `wp_postmeta` VALUES (285,133,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (286,133,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (287,133,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (288,132,'skills','');
INSERT INTO `wp_postmeta` VALUES (289,132,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (290,132,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (291,132,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (292,132,'background','81');
INSERT INTO `wp_postmeta` VALUES (293,132,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (294,132,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (295,132,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (296,134,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (297,134,'_edit_lock','1726436767:1');
INSERT INTO `wp_postmeta` VALUES (298,134,'skills','');
INSERT INTO `wp_postmeta` VALUES (299,134,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (300,134,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (301,134,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (302,134,'background','81');
INSERT INTO `wp_postmeta` VALUES (303,134,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (304,134,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (305,134,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (306,135,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (307,135,'_edit_lock','1726436632:1');
INSERT INTO `wp_postmeta` VALUES (308,135,'skills','');
INSERT INTO `wp_postmeta` VALUES (309,135,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (310,135,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (311,135,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (312,135,'background','81');
INSERT INTO `wp_postmeta` VALUES (313,135,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (314,135,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (315,135,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (316,136,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (317,136,'_edit_lock','1726436642:1');
INSERT INTO `wp_postmeta` VALUES (318,136,'skills','');
INSERT INTO `wp_postmeta` VALUES (319,136,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (320,136,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (321,136,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (322,136,'background','81');
INSERT INTO `wp_postmeta` VALUES (323,136,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (324,136,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (325,136,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (326,137,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (327,137,'_edit_lock','1726436657:1');
INSERT INTO `wp_postmeta` VALUES (328,137,'skills','');
INSERT INTO `wp_postmeta` VALUES (329,137,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (330,137,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (331,137,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (332,137,'background','81');
INSERT INTO `wp_postmeta` VALUES (333,137,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (334,137,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (335,137,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (336,138,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (337,138,'_edit_lock','1726436673:1');
INSERT INTO `wp_postmeta` VALUES (338,138,'skills','');
INSERT INTO `wp_postmeta` VALUES (339,138,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (340,138,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (341,138,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (342,138,'background','81');
INSERT INTO `wp_postmeta` VALUES (343,138,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (344,138,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (345,138,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (346,139,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (347,139,'_edit_lock','1726434922:1');
INSERT INTO `wp_postmeta` VALUES (348,139,'skills','');
INSERT INTO `wp_postmeta` VALUES (349,139,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (350,139,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (351,139,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (352,139,'background','81');
INSERT INTO `wp_postmeta` VALUES (353,139,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (354,139,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (355,139,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (356,140,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (357,140,'_edit_lock','1726436706:1');
INSERT INTO `wp_postmeta` VALUES (358,140,'skills','');
INSERT INTO `wp_postmeta` VALUES (359,140,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (360,140,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (361,140,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (362,140,'background','81');
INSERT INTO `wp_postmeta` VALUES (363,140,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (364,140,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (365,140,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (366,141,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (367,141,'_edit_lock','1726436726:1');
INSERT INTO `wp_postmeta` VALUES (368,141,'skills','');
INSERT INTO `wp_postmeta` VALUES (369,141,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (370,141,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (371,141,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (372,141,'background','81');
INSERT INTO `wp_postmeta` VALUES (373,141,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (374,141,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (375,141,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (376,142,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (377,142,'_edit_lock','1726436752:1');
INSERT INTO `wp_postmeta` VALUES (378,142,'skills','');
INSERT INTO `wp_postmeta` VALUES (379,142,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (380,142,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (381,142,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (382,142,'background','81');
INSERT INTO `wp_postmeta` VALUES (383,142,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (384,142,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (385,142,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (386,143,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (387,143,'_edit_lock','1726436807:1');
INSERT INTO `wp_postmeta` VALUES (388,144,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (389,144,'_edit_lock','1726436777:1');
INSERT INTO `wp_postmeta` VALUES (390,144,'skills','');
INSERT INTO `wp_postmeta` VALUES (391,144,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (392,144,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (393,144,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (394,144,'background','81');
INSERT INTO `wp_postmeta` VALUES (395,144,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (396,144,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (397,144,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (398,143,'skills','');
INSERT INTO `wp_postmeta` VALUES (399,143,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (400,143,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (401,143,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (402,143,'background','81');
INSERT INTO `wp_postmeta` VALUES (403,143,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (404,143,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (405,143,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (406,145,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (407,145,'_edit_lock','1726436825:1');
INSERT INTO `wp_postmeta` VALUES (408,145,'skills','');
INSERT INTO `wp_postmeta` VALUES (409,145,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (410,145,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (411,145,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (412,145,'background','81');
INSERT INTO `wp_postmeta` VALUES (413,145,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (414,145,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (415,145,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (416,146,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (417,146,'_edit_lock','1726436843:1');
INSERT INTO `wp_postmeta` VALUES (418,146,'skills','');
INSERT INTO `wp_postmeta` VALUES (419,146,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (420,146,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (421,146,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (422,146,'background','81');
INSERT INTO `wp_postmeta` VALUES (423,146,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (424,146,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (425,146,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (426,147,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (427,147,'_edit_lock','1726436860:1');
INSERT INTO `wp_postmeta` VALUES (428,147,'skills','');
INSERT INTO `wp_postmeta` VALUES (429,147,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (430,147,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (431,147,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (432,147,'background','81');
INSERT INTO `wp_postmeta` VALUES (433,147,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (434,147,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (435,147,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (436,148,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (437,148,'_edit_lock','1726436889:1');
INSERT INTO `wp_postmeta` VALUES (438,148,'skills','');
INSERT INTO `wp_postmeta` VALUES (439,148,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (440,148,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (441,148,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (442,148,'background','81');
INSERT INTO `wp_postmeta` VALUES (443,148,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (444,148,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (445,148,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (446,149,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (447,149,'_edit_lock','1726436905:1');
INSERT INTO `wp_postmeta` VALUES (448,149,'skills','');
INSERT INTO `wp_postmeta` VALUES (449,149,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (450,149,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (451,149,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (452,149,'background','81');
INSERT INTO `wp_postmeta` VALUES (453,149,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (454,149,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (455,149,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (456,150,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (457,150,'_edit_lock','1726436925:1');
INSERT INTO `wp_postmeta` VALUES (458,150,'skills','');
INSERT INTO `wp_postmeta` VALUES (459,150,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (460,150,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (461,150,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (462,150,'background','81');
INSERT INTO `wp_postmeta` VALUES (463,150,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (464,150,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (465,150,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (466,151,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (467,151,'_edit_lock','1726436944:1');
INSERT INTO `wp_postmeta` VALUES (468,151,'skills','');
INSERT INTO `wp_postmeta` VALUES (469,151,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (470,151,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (471,151,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (472,151,'background','81');
INSERT INTO `wp_postmeta` VALUES (473,151,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (474,151,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (475,151,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (476,152,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (477,152,'_edit_lock','1726436966:1');
INSERT INTO `wp_postmeta` VALUES (478,152,'skills','');
INSERT INTO `wp_postmeta` VALUES (479,152,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (480,152,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (481,152,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (482,152,'background','81');
INSERT INTO `wp_postmeta` VALUES (483,152,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (484,152,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (485,152,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (486,153,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (487,153,'_edit_lock','1726436985:1');
INSERT INTO `wp_postmeta` VALUES (488,153,'skills','');
INSERT INTO `wp_postmeta` VALUES (489,153,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (490,153,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (491,153,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (492,153,'background','81');
INSERT INTO `wp_postmeta` VALUES (493,153,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (494,153,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (495,153,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (496,154,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (497,154,'_edit_lock','1726437000:1');
INSERT INTO `wp_postmeta` VALUES (498,154,'skills','');
INSERT INTO `wp_postmeta` VALUES (499,154,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (500,154,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (501,154,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (502,154,'background','81');
INSERT INTO `wp_postmeta` VALUES (503,154,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (504,154,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (505,154,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (506,155,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (507,155,'_edit_lock','1726437015:1');
INSERT INTO `wp_postmeta` VALUES (508,155,'skills','');
INSERT INTO `wp_postmeta` VALUES (509,155,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (510,155,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (511,155,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (512,155,'background','81');
INSERT INTO `wp_postmeta` VALUES (513,155,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (514,155,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (515,155,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (516,156,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (517,156,'_edit_lock','1726437033:1');
INSERT INTO `wp_postmeta` VALUES (518,156,'skills','');
INSERT INTO `wp_postmeta` VALUES (519,156,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (520,156,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (521,156,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (522,156,'background','81');
INSERT INTO `wp_postmeta` VALUES (523,156,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (524,156,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (525,156,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (526,157,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (527,157,'_edit_lock','1726437045:1');
INSERT INTO `wp_postmeta` VALUES (528,157,'skills','');
INSERT INTO `wp_postmeta` VALUES (529,157,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (530,157,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (531,157,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (532,157,'background','81');
INSERT INTO `wp_postmeta` VALUES (533,157,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (534,157,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (535,157,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (536,158,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (537,158,'_edit_lock','1726437059:1');
INSERT INTO `wp_postmeta` VALUES (538,158,'skills','');
INSERT INTO `wp_postmeta` VALUES (539,158,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (540,158,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (541,158,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (542,158,'background','81');
INSERT INTO `wp_postmeta` VALUES (543,158,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (544,158,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (545,158,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (546,159,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (547,159,'_edit_lock','1726437072:1');
INSERT INTO `wp_postmeta` VALUES (548,159,'skills','');
INSERT INTO `wp_postmeta` VALUES (549,159,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (550,159,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (551,159,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (552,159,'background','81');
INSERT INTO `wp_postmeta` VALUES (553,159,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (554,159,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (555,159,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (556,160,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (557,160,'_edit_lock','1726437088:1');
INSERT INTO `wp_postmeta` VALUES (558,160,'skills','');
INSERT INTO `wp_postmeta` VALUES (559,160,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (560,160,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (561,160,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (562,160,'background','81');
INSERT INTO `wp_postmeta` VALUES (563,160,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (564,160,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (565,160,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (566,161,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (567,161,'_edit_lock','1726437101:1');
INSERT INTO `wp_postmeta` VALUES (568,161,'skills','');
INSERT INTO `wp_postmeta` VALUES (569,161,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (570,161,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (571,161,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (572,161,'background','81');
INSERT INTO `wp_postmeta` VALUES (573,161,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (574,161,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (575,161,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (576,162,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (577,162,'_edit_lock','1726437118:1');
INSERT INTO `wp_postmeta` VALUES (578,162,'skills','');
INSERT INTO `wp_postmeta` VALUES (579,162,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (580,162,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (581,162,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (582,162,'background','81');
INSERT INTO `wp_postmeta` VALUES (583,162,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (584,162,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (585,162,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (586,163,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (587,163,'_edit_lock','1726625375:1');
INSERT INTO `wp_postmeta` VALUES (588,163,'skills','');
INSERT INTO `wp_postmeta` VALUES (589,163,'_skills','field_66de599eb2c28');
INSERT INTO `wp_postmeta` VALUES (590,163,'github_link','https://github.com/shinjuno123/JunhoDevWorld');
INSERT INTO `wp_postmeta` VALUES (591,163,'_github_link','field_66df9157f4f85');
INSERT INTO `wp_postmeta` VALUES (592,163,'background','81');
INSERT INTO `wp_postmeta` VALUES (593,163,'_background','field_66df9266f7c7b');
INSERT INTO `wp_postmeta` VALUES (594,163,'is_outstanding_project','0');
INSERT INTO `wp_postmeta` VALUES (595,163,'_is_outstanding_project','field_66df938ec4829');
INSERT INTO `wp_postmeta` VALUES (598,166,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (599,166,'_edit_lock','1726626441:1');
INSERT INTO `wp_postmeta` VALUES (600,168,'_edit_lock','1726625535:1');
INSERT INTO `wp_postmeta` VALUES (604,168,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (606,169,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (608,168,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (609,168,'featured_post','1');
INSERT INTO `wp_postmeta` VALUES (610,168,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (611,169,'featured_post','1');
INSERT INTO `wp_postmeta` VALUES (612,169,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (615,170,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (616,170,'featured_post','1');
INSERT INTO `wp_postmeta` VALUES (617,170,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (620,171,'_edit_lock','1726625544:1');
INSERT INTO `wp_postmeta` VALUES (623,171,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (624,171,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (625,171,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (626,172,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (627,172,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (628,173,'_edit_lock','1726625555:1');
INSERT INTO `wp_postmeta` VALUES (631,173,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (632,173,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (633,173,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (634,174,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (635,174,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (636,175,'_edit_lock','1726625567:1');
INSERT INTO `wp_postmeta` VALUES (639,175,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (640,175,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (641,175,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (642,176,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (643,176,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (644,177,'_edit_lock','1726625445:1');
INSERT INTO `wp_postmeta` VALUES (647,177,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (648,177,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (649,177,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (650,178,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (651,178,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (654,179,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (655,179,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (658,180,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (659,180,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (662,181,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (663,181,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (666,182,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (667,182,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (670,183,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (671,183,'featured_post','1');
INSERT INTO `wp_postmeta` VALUES (672,183,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (676,177,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (678,185,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (680,177,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (681,177,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (682,185,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (683,185,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (684,185,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (685,185,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (692,186,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (694,168,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (695,168,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (696,186,'featured_post','1');
INSERT INTO `wp_postmeta` VALUES (697,186,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (698,186,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (699,186,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (703,171,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (705,187,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (707,171,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (708,171,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (709,187,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (710,187,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (711,187,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (712,187,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (716,173,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (718,188,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (720,173,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (721,173,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (722,188,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (723,188,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (724,188,'background_image','81');
INSERT INTO `wp_postmeta` VALUES (725,188,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (729,175,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (731,189,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (733,175,'background_image','77');
INSERT INTO `wp_postmeta` VALUES (734,175,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (735,189,'featured_post','0');
INSERT INTO `wp_postmeta` VALUES (736,189,'_featured_post','field_66ea1ef17e630');
INSERT INTO `wp_postmeta` VALUES (737,189,'background_image','77');
INSERT INTO `wp_postmeta` VALUES (738,189,'_background_image','field_66ea2cd77d305');
INSERT INTO `wp_postmeta` VALUES (739,190,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (740,190,'_edit_lock','1726626496:1');
INSERT INTO `wp_postmeta` VALUES (741,194,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (742,194,'_edit_lock','1726708057:1');
INSERT INTO `wp_postmeta` VALUES (743,108,'skill_icon','81');
INSERT INTO `wp_postmeta` VALUES (744,108,'_skill_icon','field_66eb7929c1fa8');
INSERT INTO `wp_postmeta` VALUES (745,108,'skill_proficiency','90');
INSERT INTO `wp_postmeta` VALUES (746,108,'_skill_proficiency','field_66eb797a388a7');
INSERT INTO `wp_postmeta` VALUES (747,107,'skill_icon','81');
INSERT INTO `wp_postmeta` VALUES (748,107,'_skill_icon','field_66eb7929c1fa8');
INSERT INTO `wp_postmeta` VALUES (749,107,'skill_proficiency','97');
INSERT INTO `wp_postmeta` VALUES (750,107,'_skill_proficiency','field_66eb797a388a7');
INSERT INTO `wp_postmeta` VALUES (751,106,'skill_icon','81');
INSERT INTO `wp_postmeta` VALUES (752,106,'_skill_icon','field_66eb7929c1fa8');
INSERT INTO `wp_postmeta` VALUES (753,106,'skill_proficiency','98');
INSERT INTO `wp_postmeta` VALUES (754,106,'_skill_proficiency','field_66eb797a388a7');
INSERT INTO `wp_postmeta` VALUES (755,105,'skill_icon','81');
INSERT INTO `wp_postmeta` VALUES (756,105,'_skill_icon','field_66eb7929c1fa8');
INSERT INTO `wp_postmeta` VALUES (757,105,'skill_proficiency','99');
INSERT INTO `wp_postmeta` VALUES (758,105,'_skill_proficiency','field_66eb797a388a7');
INSERT INTO `wp_postmeta` VALUES (759,199,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (760,199,'_edit_lock','1727145637:1');
INSERT INTO `wp_postmeta` VALUES (761,201,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (762,201,'_edit_lock','1726797598:1');
INSERT INTO `wp_postmeta` VALUES (763,201,'date','20240513');
INSERT INTO `wp_postmeta` VALUES (764,201,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (765,204,'_wp_attached_file','2024/09/school-9.png');
INSERT INTO `wp_postmeta` VALUES (766,204,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2024/09/school-9.png\";s:8:\"filesize\";i:5538;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"school-9-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5547;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"school-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2422;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (767,201,'icon','204');
INSERT INTO `wp_postmeta` VALUES (768,201,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (769,201,'place','Asan Middle school');
INSERT INTO `wp_postmeta` VALUES (770,201,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (771,205,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (772,205,'_edit_lock','1726796230:1');
INSERT INTO `wp_postmeta` VALUES (773,205,'date','20240709');
INSERT INTO `wp_postmeta` VALUES (774,205,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (775,205,'icon','204');
INSERT INTO `wp_postmeta` VALUES (776,205,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (777,205,'place','Asan Middle school');
INSERT INTO `wp_postmeta` VALUES (778,205,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (779,206,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (780,206,'_edit_lock','1726796271:1');
INSERT INTO `wp_postmeta` VALUES (781,206,'date','20240611');
INSERT INTO `wp_postmeta` VALUES (782,206,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (783,206,'icon','204');
INSERT INTO `wp_postmeta` VALUES (784,206,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (785,206,'place','Asan Middle school');
INSERT INTO `wp_postmeta` VALUES (786,206,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (787,208,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (788,208,'_edit_lock','1726797287:1');
INSERT INTO `wp_postmeta` VALUES (789,208,'date','20240424');
INSERT INTO `wp_postmeta` VALUES (790,208,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (791,208,'icon','204');
INSERT INTO `wp_postmeta` VALUES (792,208,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (793,208,'place','Asan Middle school');
INSERT INTO `wp_postmeta` VALUES (794,208,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (795,210,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (796,210,'_edit_lock','1727139213:1');
INSERT INTO `wp_postmeta` VALUES (797,210,'date','20231023');
INSERT INTO `wp_postmeta` VALUES (798,210,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (799,210,'icon','');
INSERT INTO `wp_postmeta` VALUES (800,210,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (801,210,'place','bObsweep, Henderson, NV');
INSERT INTO `wp_postmeta` VALUES (802,210,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (803,211,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (804,211,'_edit_lock','1727140218:1');
INSERT INTO `wp_postmeta` VALUES (805,211,'date','20240912');
INSERT INTO `wp_postmeta` VALUES (806,211,'_date','field_66eccf4cf64f8');
INSERT INTO `wp_postmeta` VALUES (807,211,'icon','204');
INSERT INTO `wp_postmeta` VALUES (808,211,'_icon','field_66ecd001e2f65');
INSERT INTO `wp_postmeta` VALUES (809,211,'place','Asan Middle school');
INSERT INTO `wp_postmeta` VALUES (810,211,'_place','field_66ecd03280daf');
INSERT INTO `wp_postmeta` VALUES (811,212,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (812,212,'_edit_lock','1727142512:1');
INSERT INTO `wp_postmeta` VALUES (813,217,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (814,217,'_edit_lock','1727142582:1');
INSERT INTO `wp_postmeta` VALUES (815,217,'company','bObsweep');
INSERT INTO `wp_postmeta` VALUES (816,217,'_company','field_66f21a7649084');
INSERT INTO `wp_postmeta` VALUES (817,217,'icon','204');
INSERT INTO `wp_postmeta` VALUES (818,217,'_icon','field_66f21aa025304');
INSERT INTO `wp_postmeta` VALUES (819,217,'from','20090917');
INSERT INTO `wp_postmeta` VALUES (820,217,'_from','field_66f21ac54e18e');
INSERT INTO `wp_postmeta` VALUES (821,217,'to','');
INSERT INTO `wp_postmeta` VALUES (822,217,'_to','field_66f21ae697fb2');
INSERT INTO `wp_postmeta` VALUES (823,218,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (824,218,'_edit_lock','1727142631:1');
INSERT INTO `wp_postmeta` VALUES (825,218,'company','N/A');
INSERT INTO `wp_postmeta` VALUES (826,218,'_company','field_66f21a7649084');
INSERT INTO `wp_postmeta` VALUES (827,218,'icon','204');
INSERT INTO `wp_postmeta` VALUES (828,218,'_icon','field_66f21aa025304');
INSERT INTO `wp_postmeta` VALUES (829,218,'from','20240606');
INSERT INTO `wp_postmeta` VALUES (830,218,'_from','field_66f21ac54e18e');
INSERT INTO `wp_postmeta` VALUES (831,218,'to','20240912');
INSERT INTO `wp_postmeta` VALUES (832,218,'_to','field_66f21ae697fb2');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (4,0,'2024-05-18 22:00:17','2024-05-18 22:00:17','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-05-18 22:00:17','2024-05-18 22:00:17','',0,'http://localhost:10004/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-05-18 22:02:03','2024-05-18 22:02:03','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-05-18 22:02:03','2024-05-18 22:02:03','',0,'http://localhost:10004/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-07-22 05:06:44','2024-07-22 05:06:44','\n\n<!-- wp:html -->\n<!-- Please don\'t change. Block is needed for React app. -->\n<noscript>You need to enable JavaScript to run this app.</noscript>\n<div id=\"root\"></div>\n<!-- /wp:html -->','main','','publish','closed','closed','','main','','','2024-07-22 05:14:35','2024-07-22 05:14:35','',0,'http://localhost:10004/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-07-22 05:06:44','2024-07-22 05:06:44','','main','','inherit','closed','closed','','29-revision-v1','','','2024-07-22 05:06:44','2024-07-22 05:06:44','',29,'http://localhost:10004/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-07-22 05:06:53','2024-07-22 05:06:53','\n\n<!-- wp:html -->\n<!-- Please don\'t change. Block is needed for React app. -->\n<noscript>You need to enable JavaScript to run this app.</noscript>\n<div id=\"root\"></div>\n<!-- /wp:html -->','main','','inherit','closed','closed','','29-revision-v1','','','2024-07-22 05:06:53','2024-07-22 05:06:53','',29,'http://localhost:10004/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-08-05 03:07:19','2024-08-05 03:07:19','','index','','publish','closed','closed','','index','','','2024-08-05 03:07:19','2024-08-05 03:07:19','',0,'http://localhost:10004/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-08-05 03:07:19','2024-08-05 03:07:19','','index','','inherit','closed','closed','','37-revision-v1','','','2024-08-05 03:07:19','2024-08-05 03:07:19','',37,'http://localhost:10004/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-08-10 03:17:33','2024-08-10 03:17:33','<!-- wp:heading {\"level\":1} -->\n<h1 class=\"wp-block-heading\"><strong>H1</strong></h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>H2</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">H3</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">H4</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">H5</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6 class=\"wp-block-heading\">H6</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum odor amet, consectetuer adipiscing elit. Aliquet phasellus potenti dapibus tristique enim justo duis? Dapibus dis sagittis sem risus hac hac ipsum. Lacus eget mattis, pharetra sodales mattis ipsum ornare sollicitudin. Malesuada nulla vel ullamcorper sapien odio hendrerit arcu. Dictumst rhoncus nisi malesuada duis ullamcorper suscipit ut pretium.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci euismod aptent in integer dignissim aenean platea tempor. Habitasse penatibus quis adipiscing nec augue fermentum. Libero sodales molestie posuere curae tortor commodo. Ligula luctus dignissim nibh dolor quis condimentum! Egestas aenean elementum ridiculus augue venenatis auctor, fusce viverra vitae. Fames hendrerit massa vivamus cras gravida odio nascetur. Pretium congue aliquet ipsum consequat orci odio. Penatibus sodales duis mollis primis dictumst justo justo. Tellus nullam bibendum mus pulvinar ornare auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Orci metus odio aptent congue hac pharetra. Mus vestibulum blandit accumsan egestas nullam vestibulum phasellus. Venenatis dignissim senectus vitae facilisi nunc purus. Leo et facilisi commodo; lectus ad adipiscing maximus. Maximus nisi vulputate adipiscing aenean habitasse. Luctus tempor ad dapibus habitasse netus convallis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"right\"} -->\n<figure class=\"wp-block-image alignright size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Nisl malesuada varius dictum mattis suscipit rutrum hac. Ad ante libero nibh nullam elementum lacus ligula. Torquent congue fermentum nostra luctus massa vitae quisque tortor. Arcu ornare penatibus maximus etiam bibendum nam gravida. Semper ligula rutrum a mi a pellentesque tempus. Malesuada nisi consectetur mollis euismod; rutrum est mattis est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-image alignleft size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ipsum mauris inceptos finibus porttitor etiam sodales ultrices velit arcu. Phasellus inceptos montes vestibulum pulvinar nullam fames habitasse. Hac dapibus tellus lobortis ante phasellus, platea nascetur scelerisque? At iaculis torquent curae et vestibulum; iaculis euismod. Ut dui scelerisque sagittis orci ipsum! Quam leo ligula odio mi imperdiet id rhoncus. Torquent penatibus ligula metus tempus lacinia. Magna enim sociosqu nec aenean natoque dictum congue dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>number 1</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 2</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 3</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 4</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Quotes</p>\n<!-- /wp:paragraph --><cite>Add Quotes like this</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":78,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/myface-1.jpg\" alt=\"\" class=\"wp-image-78\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":77,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field-1.jpg\" alt=\"\" class=\"wp-image-77\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":80,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/waftgreentreefrogamplexis-bg.jpg\" alt=\"\" class=\"wp-image-80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/screenshot-1024x768.png\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":79,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/Screen-Shot-2024-01-09-at-2.22.48-PM-1024x284.png\" alt=\"\" class=\"wp-image-79\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery --></div>\n<!-- /wp:group -->','Test','This is the test post!','publish','open','open','','test','','','2024-08-21 03:38:56','2024-08-21 03:38:56','',0,'http://localhost:10004/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-08-10 03:16:33','2024-08-10 03:16:33','','field','','inherit','open','closed','','field','','','2024-08-10 03:16:33','2024-08-10 03:16:33','',40,'http://localhost:10004/wp-content/uploads/2024/08/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-08-10 03:17:33','2024-08-10 03:17:33','<!-- wp:paragraph -->\n<p>This is test writing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->','Test','','inherit','closed','closed','','40-revision-v1','','','2024-08-10 03:17:33','2024-08-10 03:17:33','',40,'http://localhost:10004/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-08-10 03:55:56','2024-08-10 03:55:56','<!-- wp:paragraph -->\n<p>Test1</p>\n<!-- /wp:paragraph -->','Test1','This is the test post!','publish','open','open','','test1','','','2024-08-11 03:19:41','2024-08-11 03:19:41','',0,'http://localhost:10004/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-08-10 03:55:56','2024-08-10 03:55:56','<!-- wp:paragraph -->\n<p>Test1</p>\n<!-- /wp:paragraph -->','Test1','','inherit','closed','closed','','43-revision-v1','','','2024-08-10 03:55:56','2024-08-10 03:55:56','',43,'http://localhost:10004/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-08-10 03:56:10','2024-08-10 03:56:10','<!-- wp:paragraph -->\n<p>test2</p>\n<!-- /wp:paragraph -->','Test2','This is the test post!','publish','open','open','','test2','','','2024-08-11 03:19:35','2024-08-11 03:19:35','',0,'http://localhost:10004/?p=45',0,'post','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-08-10 03:56:10','2024-08-10 03:56:10','<!-- wp:paragraph -->\n<p>test2</p>\n<!-- /wp:paragraph -->','Test2','','inherit','closed','closed','','45-revision-v1','','','2024-08-10 03:56:10','2024-08-10 03:56:10','',45,'http://localhost:10004/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-08-10 03:56:23','2024-08-10 03:56:23','<!-- wp:paragraph -->\n<p>test3</p>\n<!-- /wp:paragraph -->','Test3','This is the test post!','publish','open','open','','test3','','','2024-08-11 03:19:29','2024-08-11 03:19:29','',0,'http://localhost:10004/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-08-10 03:56:23','2024-08-10 03:56:23','<!-- wp:paragraph -->\n<p>test3</p>\n<!-- /wp:paragraph -->','Test3','','inherit','closed','closed','','47-revision-v1','','','2024-08-10 03:56:23','2024-08-10 03:56:23','',47,'http://localhost:10004/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-08-10 03:56:39','2024-08-10 03:56:39','<!-- wp:paragraph -->\n<p>test4</p>\n<!-- /wp:paragraph -->','Test4','This is the test post!','publish','open','open','','test4','','','2024-08-11 03:19:23','2024-08-11 03:19:23','',0,'http://localhost:10004/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-08-10 03:56:39','2024-08-10 03:56:39','<!-- wp:paragraph -->\n<p>test4</p>\n<!-- /wp:paragraph -->','Test4','','inherit','closed','closed','','49-revision-v1','','','2024-08-10 03:56:39','2024-08-10 03:56:39','',49,'http://localhost:10004/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-08-10 03:56:57','2024-08-10 03:56:57','<!-- wp:paragraph -->\n<p>Test5</p>\n<!-- /wp:paragraph -->','Test5','This is the test post!','publish','open','open','','test5','','','2024-08-11 03:19:19','2024-08-11 03:19:19','',0,'http://localhost:10004/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-08-10 03:56:57','2024-08-10 03:56:57','<!-- wp:paragraph -->\n<p>Test5</p>\n<!-- /wp:paragraph -->','Test5','','inherit','closed','closed','','51-revision-v1','','','2024-08-10 03:56:57','2024-08-10 03:56:57','',51,'http://localhost:10004/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-08-10 03:58:12','2024-08-10 03:58:12','<!-- wp:paragraph -->\n<p>test6</p>\n<!-- /wp:paragraph -->','Test6t','This is the test post!','publish','open','open','','test6t','','','2024-08-11 03:19:15','2024-08-11 03:19:15','',0,'http://localhost:10004/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-08-10 03:58:12','2024-08-10 03:58:12','<!-- wp:paragraph -->\n<p>test6</p>\n<!-- /wp:paragraph -->','Test6t','','inherit','closed','closed','','53-revision-v1','','','2024-08-10 03:58:12','2024-08-10 03:58:12','',53,'http://localhost:10004/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-08-10 03:58:24','2024-08-10 03:58:24','<!-- wp:paragraph -->\n<p>Test7</p>\n<!-- /wp:paragraph -->','Test7','This is the test post!','publish','open','open','','test7','','','2024-08-11 03:19:11','2024-08-11 03:19:11','',0,'http://localhost:10004/?p=55',0,'post','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-08-10 03:58:24','2024-08-10 03:58:24','<!-- wp:paragraph -->\n<p>Test7</p>\n<!-- /wp:paragraph -->','Test7','','inherit','closed','closed','','55-revision-v1','','','2024-08-10 03:58:24','2024-08-10 03:58:24','',55,'http://localhost:10004/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-08-10 03:59:51','2024-08-10 03:59:51','<!-- wp:paragraph -->\n<p>Test8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is the best test ever</p>\n<!-- /wp:paragraph -->','Test8','This is the test post!','publish','open','open','','test8','','','2024-09-18 00:28:48','2024-09-18 00:28:48','',0,'http://localhost:10004/?p=57',0,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-08-10 03:59:51','2024-08-10 03:59:51','<!-- wp:paragraph -->\n<p>Test8</p>\n<!-- /wp:paragraph -->','Test8','','inherit','closed','closed','','57-revision-v1','','','2024-08-10 03:59:51','2024-08-10 03:59:51','',57,'http://localhost:10004/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-08-10 04:00:00','2024-08-10 04:00:00','<!-- wp:paragraph -->\n<p>Test9 and it was modified</p>\n<!-- /wp:paragraph -->','Test9','This is the test post!','publish','open','open','','test9','','','2024-08-11 03:19:00','2024-08-11 03:19:00','',0,'http://localhost:10004/?p=59',0,'post','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-08-10 04:00:00','2024-08-10 04:00:00','<!-- wp:paragraph -->\n<p>Test9</p>\n<!-- /wp:paragraph -->','Test9','','inherit','closed','closed','','59-revision-v1','','','2024-08-10 04:00:00','2024-08-10 04:00:00','',59,'http://localhost:10004/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-08-10 19:36:27','2024-08-10 19:36:27','<!-- wp:paragraph -->\n<p>Test9 and it was modified</p>\n<!-- /wp:paragraph -->','Test9','','inherit','closed','closed','','59-revision-v1','','','2024-08-10 19:36:27','2024-08-10 19:36:27','',59,'http://localhost:10004/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-08-11 03:19:00','2024-08-11 03:19:00','<!-- wp:paragraph -->\n<p>Test9 and it was modified</p>\n<!-- /wp:paragraph -->','Test9','This is the test post!','inherit','closed','closed','','59-revision-v1','','','2024-08-11 03:19:00','2024-08-11 03:19:00','',59,'http://localhost:10004/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2024-08-11 03:19:06','2024-08-11 03:19:06','<!-- wp:paragraph -->\n<p>Test8</p>\n<!-- /wp:paragraph -->','Test8','This is the test post!','inherit','closed','closed','','57-revision-v1','','','2024-08-11 03:19:06','2024-08-11 03:19:06','',57,'http://localhost:10004/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-08-11 03:19:11','2024-08-11 03:19:11','<!-- wp:paragraph -->\n<p>Test7</p>\n<!-- /wp:paragraph -->','Test7','This is the test post!','inherit','closed','closed','','55-revision-v1','','','2024-08-11 03:19:11','2024-08-11 03:19:11','',55,'http://localhost:10004/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-08-11 03:19:15','2024-08-11 03:19:15','<!-- wp:paragraph -->\n<p>test6</p>\n<!-- /wp:paragraph -->','Test6t','This is the test post!','inherit','closed','closed','','53-revision-v1','','','2024-08-11 03:19:15','2024-08-11 03:19:15','',53,'http://localhost:10004/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-08-11 03:19:19','2024-08-11 03:19:19','<!-- wp:paragraph -->\n<p>Test5</p>\n<!-- /wp:paragraph -->','Test5','This is the test post!','inherit','closed','closed','','51-revision-v1','','','2024-08-11 03:19:19','2024-08-11 03:19:19','',51,'http://localhost:10004/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-08-11 03:19:23','2024-08-11 03:19:23','<!-- wp:paragraph -->\n<p>test4</p>\n<!-- /wp:paragraph -->','Test4','This is the test post!','inherit','closed','closed','','49-revision-v1','','','2024-08-11 03:19:23','2024-08-11 03:19:23','',49,'http://localhost:10004/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-08-11 03:19:29','2024-08-11 03:19:29','<!-- wp:paragraph -->\n<p>test3</p>\n<!-- /wp:paragraph -->','Test3','This is the test post!','inherit','closed','closed','','47-revision-v1','','','2024-08-11 03:19:29','2024-08-11 03:19:29','',47,'http://localhost:10004/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-08-11 03:19:35','2024-08-11 03:19:35','<!-- wp:paragraph -->\n<p>test2</p>\n<!-- /wp:paragraph -->','Test2','This is the test post!','inherit','closed','closed','','45-revision-v1','','','2024-08-11 03:19:35','2024-08-11 03:19:35','',45,'http://localhost:10004/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-08-11 03:19:41','2024-08-11 03:19:41','<!-- wp:paragraph -->\n<p>Test1</p>\n<!-- /wp:paragraph -->','Test1','This is the test post!','inherit','closed','closed','','43-revision-v1','','','2024-08-11 03:19:41','2024-08-11 03:19:41','',43,'http://localhost:10004/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-08-11 03:19:49','2024-08-11 03:19:49','<!-- wp:paragraph -->\n<p>This is test writing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->','Test','This is the test post!','inherit','closed','closed','','40-revision-v1','','','2024-08-11 03:19:49','2024-08-11 03:19:49','',40,'http://localhost:10004/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-08-21 03:22:48','2024-08-21 03:22:48','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Aliquet phasellus potenti dapibus tristique enim justo duis? Dapibus dis sagittis sem risus hac hac ipsum. Lacus eget mattis, pharetra sodales mattis ipsum ornare sollicitudin. Malesuada nulla vel ullamcorper sapien odio hendrerit arcu. Dictumst rhoncus nisi malesuada duis ullamcorper suscipit ut pretium.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci euismod aptent in integer dignissim aenean platea tempor. Habitasse penatibus quis adipiscing nec augue fermentum. Libero sodales molestie posuere curae tortor commodo. Ligula luctus dignissim nibh dolor quis condimentum! Egestas aenean elementum ridiculus augue venenatis auctor, fusce viverra vitae. Fames hendrerit massa vivamus cras gravida odio nascetur. Pretium congue aliquet ipsum consequat orci odio. Penatibus sodales duis mollis primis dictumst justo justo. Tellus nullam bibendum mus pulvinar ornare auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Orci metus odio aptent congue hac pharetra. Mus vestibulum blandit accumsan egestas nullam vestibulum phasellus. Venenatis dignissim senectus vitae facilisi nunc purus. Leo et facilisi commodo; lectus ad adipiscing maximus. Maximus nisi vulputate adipiscing aenean habitasse. Luctus tempor ad dapibus habitasse netus convallis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"right\"} -->\n<figure class=\"wp-block-image alignright size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Nisl malesuada varius dictum mattis suscipit rutrum hac. Ad ante libero nibh nullam elementum lacus ligula. Torquent congue fermentum nostra luctus massa vitae quisque tortor. Arcu ornare penatibus maximus etiam bibendum nam gravida. Semper ligula rutrum a mi a pellentesque tempus. Malesuada nisi consectetur mollis euismod; rutrum est mattis est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-image alignleft size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ipsum mauris inceptos finibus porttitor etiam sodales ultrices velit arcu. Phasellus inceptos montes vestibulum pulvinar nullam fames habitasse. Hac dapibus tellus lobortis ante phasellus, platea nascetur scelerisque? At iaculis torquent curae et vestibulum; iaculis euismod. Ut dui scelerisque sagittis orci ipsum! Quam leo ligula odio mi imperdiet id rhoncus. Torquent penatibus ligula metus tempus lacinia. Magna enim sociosqu nec aenean natoque dictum congue dolor.</p>\n<!-- /wp:paragraph -->','Test','This is the test post!','inherit','closed','closed','','40-revision-v1','','','2024-08-21 03:22:48','2024-08-21 03:22:48','',40,'http://localhost:10004/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-08-21 03:37:53','2024-08-21 03:37:53','','myface','','inherit','open','closed','','myface','','','2024-08-21 03:37:53','2024-08-21 03:37:53','',40,'http://localhost:10004/wp-content/uploads/2024/08/myface.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-08-21 03:38:50','2024-08-21 03:38:50','','field-1','','inherit','open','closed','','field-1','','','2024-08-21 03:38:50','2024-08-21 03:38:50','',40,'http://localhost:10004/wp-content/uploads/2024/08/field-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-08-21 03:38:50','2024-08-21 03:38:50','','myface-1','','inherit','open','closed','','myface-1','','','2024-08-21 03:38:50','2024-08-21 03:38:50','',40,'http://localhost:10004/wp-content/uploads/2024/08/myface-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-08-21 03:38:50','2024-08-21 03:38:50','','Screen-Shot-2024-01-09-at-2.22.48-PM','','inherit','open','closed','','screen-shot-2024-01-09-at-2-22-48-pm','','','2024-08-21 03:38:50','2024-08-21 03:38:50','',40,'http://localhost:10004/wp-content/uploads/2024/08/Screen-Shot-2024-01-09-at-2.22.48-PM.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-08-21 03:38:50','2024-08-21 03:38:50','','waftgreentreefrogamplexis-bg','','inherit','open','closed','','waftgreentreefrogamplexis-bg','','','2024-08-21 03:38:50','2024-08-21 03:38:50','',40,'http://localhost:10004/wp-content/uploads/2024/08/waftgreentreefrogamplexis-bg.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-08-21 03:38:51','2024-08-21 03:38:51','','screenshot','','inherit','open','closed','','screenshot','','','2024-08-21 03:38:51','2024-08-21 03:38:51','',40,'http://localhost:10004/wp-content/uploads/2024/08/screenshot.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-08-21 03:38:56','2024-08-21 03:38:56','<!-- wp:heading {\"level\":1} -->\n<h1 class=\"wp-block-heading\"><strong>H1</strong></h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><strong>H2</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">H3</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">H4</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5 class=\"wp-block-heading\">H5</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6 class=\"wp-block-heading\">H6</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem ipsum odor amet, consectetuer adipiscing elit. Aliquet phasellus potenti dapibus tristique enim justo duis? Dapibus dis sagittis sem risus hac hac ipsum. Lacus eget mattis, pharetra sodales mattis ipsum ornare sollicitudin. Malesuada nulla vel ullamcorper sapien odio hendrerit arcu. Dictumst rhoncus nisi malesuada duis ullamcorper suscipit ut pretium.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci euismod aptent in integer dignissim aenean platea tempor. Habitasse penatibus quis adipiscing nec augue fermentum. Libero sodales molestie posuere curae tortor commodo. Ligula luctus dignissim nibh dolor quis condimentum! Egestas aenean elementum ridiculus augue venenatis auctor, fusce viverra vitae. Fames hendrerit massa vivamus cras gravida odio nascetur. Pretium congue aliquet ipsum consequat orci odio. Penatibus sodales duis mollis primis dictumst justo justo. Tellus nullam bibendum mus pulvinar ornare auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"center\"} -->\n<figure class=\"wp-block-image aligncenter size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Orci metus odio aptent congue hac pharetra. Mus vestibulum blandit accumsan egestas nullam vestibulum phasellus. Venenatis dignissim senectus vitae facilisi nunc purus. Leo et facilisi commodo; lectus ad adipiscing maximus. Maximus nisi vulputate adipiscing aenean habitasse. Luctus tempor ad dapibus habitasse netus convallis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"right\"} -->\n<figure class=\"wp-block-image alignright size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Nisl malesuada varius dictum mattis suscipit rutrum hac. Ad ante libero nibh nullam elementum lacus ligula. Torquent congue fermentum nostra luctus massa vitae quisque tortor. Arcu ornare penatibus maximus etiam bibendum nam gravida. Semper ligula rutrum a mi a pellentesque tempus. Malesuada nisi consectetur mollis euismod; rutrum est mattis est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":41,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-image alignleft size-full\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field.jpg\" alt=\"\" class=\"wp-image-41\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Ipsum mauris inceptos finibus porttitor etiam sodales ultrices velit arcu. Phasellus inceptos montes vestibulum pulvinar nullam fames habitasse. Hac dapibus tellus lobortis ante phasellus, platea nascetur scelerisque? At iaculis torquent curae et vestibulum; iaculis euismod. Ut dui scelerisque sagittis orci ipsum! Quam leo ligula odio mi imperdiet id rhoncus. Torquent penatibus ligula metus tempus lacinia. Magna enim sociosqu nec aenean natoque dictum congue dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>number 1</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 2</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 3</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>number 4</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Quotes</p>\n<!-- /wp:paragraph --><cite>Add Quotes like this</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":78,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/myface-1.jpg\" alt=\"\" class=\"wp-image-78\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":77,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/field-1.jpg\" alt=\"\" class=\"wp-image-77\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":80,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/waftgreentreefrogamplexis-bg.jpg\" alt=\"\" class=\"wp-image-80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":81,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/screenshot-1024x768.png\" alt=\"\" class=\"wp-image-81\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":79,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/Screen-Shot-2024-01-09-at-2.22.48-PM-1024x284.png\" alt=\"\" class=\"wp-image-79\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery --></div>\n<!-- /wp:group -->','Test','This is the test post!','inherit','closed','closed','','40-revision-v1','','','2024-08-21 03:38:56','2024-08-21 03:38:56','',40,'http://localhost:10004/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-08-31 02:12:03','2024-08-31 02:12:03','<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li>I\'ll do this first</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>do this next</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":85,\"width\":\"315px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"align\":\"left\"} -->\n<figure class=\"wp-block-image alignleft size-full is-resized\"><img src=\"http://localhost:10004/wp-content/uploads/2024/08/cat.webp\" alt=\"\" class=\"wp-image-85\" style=\"width:315px;height:auto\"/></figure>\n<!-- /wp:image -->','Today\'s determination','','publish','closed','closed','','todays-determination','','','2024-08-31 02:12:03','2024-08-31 02:12:03','',0,'http://localhost:10004/?post_type=note&#038;p=84',0,'note','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-08-31 02:11:44','2024-08-31 02:11:44','','cat','','inherit','open','closed','','cat','','','2024-08-31 02:11:44','2024-08-31 02:11:44','',84,'http://localhost:10004/wp-content/uploads/2024/08/cat.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (87,1,'2024-08-31 02:13:03','2024-08-31 02:13:03','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HELLO','','publish','closed','closed','','hello','','','2024-08-31 02:13:03','2024-08-31 02:13:03','',0,'http://localhost:10004/?post_type=note&#038;p=87',0,'note','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2024-08-31 02:13:11','2024-08-31 02:13:11','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo','','','2024-08-31 02:13:11','2024-08-31 02:13:11','',0,'http://localhost:10004/?post_type=note&#038;p=88',0,'note','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-08-31 02:13:19','2024-08-31 02:13:19','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo-2','','','2024-08-31 02:13:19','2024-08-31 02:13:19','',0,'http://localhost:10004/?post_type=note&#038;p=89',0,'note','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-08-31 02:21:44','2024-08-31 02:21:44','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLPO','','publish','closed','closed','','hallpo','','','2024-08-31 02:21:44','2024-08-31 02:21:44','',0,'http://localhost:10004/?post_type=note&#038;p=90',0,'note','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-08-31 02:21:56','2024-08-31 02:21:56','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo-3','','','2024-08-31 02:21:56','2024-08-31 02:21:56','',0,'http://localhost:10004/?post_type=note&#038;p=91',0,'note','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2024-08-31 02:22:05','2024-08-31 02:22:05','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo-4','','','2024-08-31 02:22:05','2024-08-31 02:22:05','',0,'http://localhost:10004/?post_type=note&#038;p=92',0,'note','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-08-31 02:22:15','2024-08-31 02:22:15','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo-5','','','2024-08-31 02:22:15','2024-08-31 02:22:15','',0,'http://localhost:10004/?post_type=note&#038;p=93',0,'note','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-08-31 02:22:25','2024-08-31 02:22:25','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALLO','','publish','closed','closed','','hallo-6','','','2024-08-31 02:22:25','2024-08-31 02:22:25','',0,'http://localhost:10004/?post_type=note&#038;p=94',0,'note','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2024-08-31 02:22:36','2024-08-31 02:22:36','<!-- wp:paragraph -->\n<p>Lorem ipsum odor amet, consectetuer adipiscing elit. Ac id ridiculus magna aptent platea maximus vestibulum nascetur. Mattis sagittis ipsum tempor pharetra nostra luctus augue et porta. Odio maximus semper dapibus erat quisque eleifend. Odio congue elementum nunc morbi primis. Euismod magna tellus suspendisse ridiculus vestibulum torquent. Vitae nibh parturient hac id eu ultricies cursus tortor. Ultrices magna platea orci sodales ultricies libero?</p>\n<!-- /wp:paragraph -->','HALKLO','','publish','closed','closed','','halklo','','','2024-08-31 02:22:36','2024-08-31 02:22:36','',0,'http://localhost:10004/?post_type=note&#038;p=95',0,'note','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-08-31 15:01:01','2024-08-31 15:01:01','','Profile','','inherit','open','closed','','profile','','','2024-08-31 15:01:01','2024-08-31 15:01:01','',0,'http://localhost:10004/wp-content/uploads/2024/08/Profile.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-08-31 15:01:14','2024-08-31 15:01:14','http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1.jpg','cropped-myface-1.jpg','','inherit','open','closed','','cropped-myface-1-jpg','','','2024-08-31 15:01:14','2024-08-31 15:01:14','',78,'http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (105,1,'2024-09-09 02:11:52','2024-09-09 02:11:52','<ul>\r\n 	<li data-sourcepos=\"4:1-4:94\">The foundation of web pages. It defines the structure and content of a webpage.</li>\r\n 	<li data-sourcepos=\"5:1-5:145\"><strong>Elements:</strong> Uses tags (e.g., <code>&lt;html&gt;</code>, <code>&lt;head&gt;</code>, <code>&lt;body&gt;</code>, <code>&lt;p&gt;</code>, <code>&lt;img&gt;</code>) to mark up text, images, links, and other elements.</li>\r\n</ul>\r\nLorem <span class=\"citation-0 citation-end-0\">ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>','HTML','','publish','closed','closed','','html','','','2024-09-19 01:14:23','2024-09-19 01:14:23','',0,'http://localhost:10004/?post_type=skills&#038;p=105',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2024-09-09 02:12:09','2024-09-09 02:12:09','Lorem <span class=\"citation-0 citation-end-0\">ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>\r\n\r\nLorem <span class=\"citation-0 citation-end-0\">ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>','CSS','','publish','closed','closed','','css','','','2024-09-19 01:14:16','2024-09-19 01:14:16','',0,'http://localhost:10004/?post_type=skills&#038;p=106',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-09-09 02:12:19','2024-09-09 02:12:19','Adds interactivity to web pages. It can manipulate HTML, CSS, and respond to user actions.\r\n\r\nLorem <span class=\"citation-0 citation-end-0\">ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>','Javascript','','publish','closed','closed','','javascript','','','2024-09-19 01:14:04','2024-09-19 01:14:04','',0,'http://localhost:10004/?post_type=skills&#038;p=107',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2024-09-09 02:12:29','2024-09-09 02:12:29','A JavaScript library for building user interfaces. It uses a declarative approach to define components.\r\n<div class=\"cdk-visually-hidden cdk-focus-trap-anchor\" aria-hidden=\"true\">Lorem <span class=\"citation-0 citation-end-0\">ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><span class=\"button-container ng-star-inserted\">   </span></div>\r\n<div class=\"response-container-content ng-tns-c901324138-59\">\r\n<div class=\"response-content ng-tns-c901324138-59\">\r\n<div class=\"response-footer gap complete\">\r\n<div class=\"container\">\r\n<div class=\"carousel-container\">\r\n<div class=\"carousel-content\">\r\n<div class=\"sources-carousel-source ng-star-inserted\" data-test-id=\"sources-carousel-source\">\r\n<div class=\"source-card-container\">\r\n<div class=\"source-card-content\">\r\n<div class=\"source-card-body\">\r\n<div class=\"source-card-header\">\r\n<div class=\"source-card-title\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','React','','publish','closed','closed','','react-js','','','2024-09-19 01:13:56','2024-09-19 01:13:56','',0,'http://localhost:10004/?post_type=skills&#038;p=108',0,'skills','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2024-09-09 02:14:05','2024-09-09 02:14:05','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;}','Projects','projects','publish','closed','closed','','group_66de599e86841','','','2024-09-10 01:39:52','2024-09-10 01:39:52','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=109',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2024-09-09 02:14:05','2024-09-09 02:14:05','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"skills\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','skills','skills','publish','closed','closed','','field_66de599eb2c28','','','2024-09-09 02:14:05','2024-09-09 02:14:05','',109,'http://localhost:10004/?post_type=acf-field&p=110',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2024-09-09 02:15:50','2024-09-09 02:15:50','This project is blabla','Dummy Project 1','','publish','closed','closed','','dummy-project','','','2024-09-15 22:36:17','2024-09-15 22:36:17','',0,'http://localhost:10004/?post_type=project&#038;p=111',0,'project','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2024-09-10 00:20:30','2024-09-10 00:20:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Dummy Project 2','','publish','closed','closed','','dummy-project-2','','','2024-09-15 22:36:32','2024-09-15 22:36:32','',0,'http://localhost:10004/?post_type=project&#038;p=112',0,'project','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2024-09-10 00:20:51','2024-09-10 00:20:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Dummy Project 3','','publish','closed','closed','','dummy-project-3','','','2024-09-15 22:36:43','2024-09-15 22:36:43','',0,'http://localhost:10004/?post_type=project&#038;p=113',0,'project','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2024-09-10 00:21:09','2024-09-10 00:21:09','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Dummy Project 4','','publish','closed','closed','','dummy-project-4','','','2024-09-10 01:42:02','2024-09-10 01:42:02','',0,'http://localhost:10004/?post_type=project&#038;p=114',0,'project','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2024-09-10 00:21:24','2024-09-10 00:21:24','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Dummy Project 5','','publish','closed','closed','','dummy-project-5','','','2024-09-10 01:40:01','2024-09-10 01:40:01','',0,'http://localhost:10004/?post_type=project&#038;p=115',0,'project','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2024-09-10 00:23:49','2024-09-10 00:23:49','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}','github_link','github_link','publish','closed','closed','','field_66df9157f4f85','','','2024-09-10 00:23:49','2024-09-10 00:23:49','',109,'http://localhost:10004/?post_type=acf-field&p=116',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2024-09-10 00:27:58','2024-09-10 00:27:58','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','background','background','publish','closed','closed','','field_66df9266f7c7b','','','2024-09-10 00:27:58','2024-09-10 00:27:58','',109,'http://localhost:10004/?post_type=acf-field&p=117',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2024-09-10 00:32:55','2024-09-10 00:32:55','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','is_outstanding_project','is_outstanding_project','publish','closed','closed','','field_66df938ec4829','','','2024-09-10 01:39:52','2024-09-10 01:39:52','',109,'http://localhost:10004/?post_type=acf-field&#038;p=119',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2024-09-13 02:06:22','2024-09-13 02:06:22','','Other projects1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-projects1','','','2024-09-15 21:44:15','2024-09-15 21:44:15','',0,'http://localhost:10004/?post_type=project&#038;p=120',0,'project','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2024-09-13 02:06:53','2024-09-13 02:06:53','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Other posts 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-posts-2','','','2024-09-15 21:44:32','2024-09-15 21:44:32','',0,'http://localhost:10004/?post_type=project&#038;p=122',0,'project','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2024-09-13 02:07:04','2024-09-13 02:07:04','','Other post 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-post-3','','','2024-09-15 21:44:44','2024-09-15 21:44:44','',0,'http://localhost:10004/?post_type=project&#038;p=123',0,'project','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2024-09-13 02:07:15','2024-09-13 02:07:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Other post 4','','publish','closed','closed','','other-post-4','','','2024-09-15 21:44:59','2024-09-15 21:44:59','',0,'http://localhost:10004/?post_type=project&#038;p=124',0,'project','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2024-09-13 02:07:28','2024-09-13 02:07:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Other post 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-post-5','','','2024-09-15 21:45:09','2024-09-15 21:45:09','',0,'http://localhost:10004/?post_type=project&#038;p=125',0,'project','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2024-09-13 02:07:40','2024-09-13 02:07:40','','Other post 6','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-post-6','','','2024-09-15 21:45:20','2024-09-15 21:45:20','',0,'http://localhost:10004/?post_type=project&#038;p=126',0,'project','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2024-09-13 02:11:13','2024-09-13 02:11:13','','Other post 7','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-post-6-2','','','2024-09-15 21:45:28','2024-09-15 21:45:28','',0,'http://localhost:10004/?post_type=project&#038;p=128',0,'project','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2024-09-13 02:12:12','2024-09-13 02:12:12','','Other project 8','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-8','','','2024-09-15 21:45:39','2024-09-15 21:45:39','',0,'http://localhost:10004/?post_type=project&#038;p=129',0,'project','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2024-09-15 21:15:18','2024-09-15 21:15:18','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 10','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-10','','','2024-09-15 21:45:57','2024-09-15 21:45:57','',0,'http://localhost:10004/?post_type=project&#038;p=132',0,'project','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2024-09-15 21:15:04','2024-09-15 21:15:04','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 9','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-9','','','2024-09-15 21:45:49','2024-09-15 21:45:49','',0,'http://localhost:10004/?post_type=project&#038;p=133',0,'project','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2024-09-15 21:15:40','2024-09-15 21:15:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 11','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-11','','','2024-09-15 21:46:05','2024-09-15 21:46:05','',0,'http://localhost:10004/?post_type=project&#038;p=134',0,'project','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2024-09-15 21:16:08','2024-09-15 21:16:08','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 13','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-13','','','2024-09-15 21:46:14','2024-09-15 21:46:14','',0,'http://localhost:10004/?post_type=project&#038;p=135',0,'project','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2024-09-15 21:16:34','2024-09-15 21:16:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 12','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-12','','','2024-09-15 21:46:22','2024-09-15 21:46:22','',0,'http://localhost:10004/?post_type=project&#038;p=136',0,'project','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2024-09-15 21:17:07','2024-09-15 21:17:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 14','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-14','','','2024-09-15 21:46:33','2024-09-15 21:46:33','',0,'http://localhost:10004/?post_type=project&#038;p=137',0,'project','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2024-09-15 21:17:25','2024-09-15 21:17:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-15','','','2024-09-15 21:46:56','2024-09-15 21:46:56','',0,'http://localhost:10004/?post_type=project&#038;p=138',0,'project','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2024-09-15 21:17:45','2024-09-15 21:17:45','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 16','','publish','closed','closed','','other-project-16','','','2024-09-15 21:17:45','2024-09-15 21:17:45','',0,'http://localhost:10004/?post_type=project&#038;p=139',0,'project','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2024-09-15 21:18:02','2024-09-15 21:18:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 17','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-17','','','2024-09-15 21:47:28','2024-09-15 21:47:28','',0,'http://localhost:10004/?post_type=project&#038;p=140',0,'project','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2024-09-15 21:18:28','2024-09-15 21:18:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 18','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-17-2','','','2024-09-15 21:47:48','2024-09-15 21:47:48','',0,'http://localhost:10004/?post_type=project&#038;p=141',0,'project','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2024-09-15 21:19:03','2024-09-15 21:19:03','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other Project 19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-19','','','2024-09-15 21:48:13','2024-09-15 21:48:13','',0,'http://localhost:10004/?post_type=project&#038;p=142',0,'project','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2024-09-15 21:20:01','2024-09-15 21:20:01','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other Project 21','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-21','','','2024-09-15 21:49:08','2024-09-15 21:49:08','',0,'http://localhost:10004/?post_type=project&#038;p=143',0,'project','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2024-09-15 21:19:41','2024-09-15 21:19:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 20','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-20','','','2024-09-15 21:48:38','2024-09-15 21:48:38','',0,'http://localhost:10004/?post_type=project&#038;p=144',0,'project','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2024-09-15 21:20:22','2024-09-15 21:20:22','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 22','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-22','','','2024-09-15 21:49:28','2024-09-15 21:49:28','',0,'http://localhost:10004/?post_type=project&#038;p=145',0,'project','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2024-09-15 21:20:39','2024-09-15 21:20:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 23','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-23','','','2024-09-15 21:49:45','2024-09-15 21:49:45','',0,'http://localhost:10004/?post_type=project&#038;p=146',0,'project','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2024-09-15 21:20:59','2024-09-15 21:20:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 24','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-24','','','2024-09-15 21:50:03','2024-09-15 21:50:03','',0,'http://localhost:10004/?post_type=project&#038;p=147',0,'project','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2024-09-15 21:21:22','2024-09-15 21:21:22','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 25','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-25','','','2024-09-15 21:50:32','2024-09-15 21:50:32','',0,'http://localhost:10004/?post_type=project&#038;p=148',0,'project','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2024-09-15 21:21:39','2024-09-15 21:21:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 26','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-26','','','2024-09-15 21:50:46','2024-09-15 21:50:46','',0,'http://localhost:10004/?post_type=project&#038;p=149',0,'project','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2024-09-15 21:22:12','2024-09-15 21:22:12','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 27','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-27','','','2024-09-15 21:51:05','2024-09-15 21:51:05','',0,'http://localhost:10004/?post_type=project&#038;p=150',0,'project','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2024-09-15 21:22:30','2024-09-15 21:22:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-28','','','2024-09-15 21:51:26','2024-09-15 21:51:26','',0,'http://localhost:10004/?post_type=project&#038;p=151',0,'project','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2024-09-15 21:22:52','2024-09-15 21:22:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 29','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-29','','','2024-09-15 21:51:47','2024-09-15 21:51:47','',0,'http://localhost:10004/?post_type=project&#038;p=152',0,'project','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2024-09-15 21:23:12','2024-09-15 21:23:12','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 30','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-30','','','2024-09-15 21:52:07','2024-09-15 21:52:07','',0,'http://localhost:10004/?post_type=project&#038;p=153',0,'project','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2024-09-15 21:23:30','2024-09-15 21:23:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 31','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-31','','','2024-09-15 21:52:22','2024-09-15 21:52:22','',0,'http://localhost:10004/?post_type=project&#038;p=154',0,'project','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2024-09-15 21:23:48','2024-09-15 21:23:48','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 32','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-32','','','2024-09-15 21:52:37','2024-09-15 21:52:37','',0,'http://localhost:10004/?post_type=project&#038;p=155',0,'project','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2024-09-15 21:24:08','2024-09-15 21:24:08','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 33','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-33','','','2024-09-15 21:52:53','2024-09-15 21:52:53','',0,'http://localhost:10004/?post_type=project&#038;p=156',0,'project','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2024-09-15 21:24:30','2024-09-15 21:24:30','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 34','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-34','','','2024-09-15 21:53:07','2024-09-15 21:53:07','',0,'http://localhost:10004/?post_type=project&#038;p=157',0,'project','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2024-09-15 21:24:49','2024-09-15 21:24:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 35','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-35','','','2024-09-15 21:53:20','2024-09-15 21:53:20','',0,'http://localhost:10004/?post_type=project&#038;p=158',0,'project','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2024-09-15 21:25:06','2024-09-15 21:25:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 36','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-36','','','2024-09-15 21:53:34','2024-09-15 21:53:34','',0,'http://localhost:10004/?post_type=project&#038;p=159',0,'project','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2024-09-15 21:25:26','2024-09-15 21:25:26','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 37','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-37','','','2024-09-15 21:53:50','2024-09-15 21:53:50','',0,'http://localhost:10004/?post_type=project&#038;p=160',0,'project','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2024-09-15 21:25:55','2024-09-15 21:25:55','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 38','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-38','','','2024-09-15 21:54:03','2024-09-15 21:54:03','',0,'http://localhost:10004/?post_type=project&#038;p=161',0,'project','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2024-09-15 21:26:11','2024-09-15 21:26:11','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 39','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-39','','','2024-09-15 21:54:20','2024-09-15 21:54:20','',0,'http://localhost:10004/?post_type=project&#038;p=162',0,'project','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2024-09-15 21:26:29','2024-09-15 21:26:29','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Other project 40','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','publish','closed','closed','','other-project-40','','','2024-09-15 21:54:34','2024-09-15 21:54:34','',0,'http://localhost:10004/?post_type=project&#038;p=163',0,'project','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2024-09-18 00:28:36','2024-09-18 00:28:36','<!-- wp:paragraph -->\n<p>Test8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Test8','This is the test post!','inherit','closed','closed','','57-revision-v1','','','2024-09-18 00:28:36','2024-09-18 00:28:36','',57,'http://localhost:10004/?p=164',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2024-09-18 00:28:48','2024-09-18 00:28:48','<!-- wp:paragraph -->\n<p>Test8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is the best test ever</p>\n<!-- /wp:paragraph -->','Test8','This is the test post!','inherit','closed','closed','','57-revision-v1','','','2024-09-18 00:28:48','2024-09-18 00:28:48','',57,'http://localhost:10004/?p=165',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2024-09-18 00:30:26','2024-09-18 00:30:26','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Posts','posts','publish','closed','closed','','group_66ea1ef14dca9','','','2024-09-18 02:12:59','2024-09-18 02:12:59','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=166',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2024-09-18 00:31:26','2024-09-18 00:31:26','<!-- wp:paragraph -->\n<p>Featured post 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 1','This is the post!','publish','open','open','','new-post-1','','','2024-09-18 02:12:15','2024-09-18 02:12:15','',0,'http://localhost:10004/?p=168',0,'post','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2024-09-18 00:31:26','2024-09-18 00:31:26','<!-- wp:paragraph -->\n<p>Featured post 1</p>\n<!-- /wp:paragraph -->','New post 1','','inherit','closed','closed','','168-revision-v1','','','2024-09-18 00:31:26','2024-09-18 00:31:26','',168,'http://localhost:10004/?p=169',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2024-09-18 00:31:32','2024-09-18 00:31:32','<!-- wp:paragraph -->\n<p>Featured post 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 1','','inherit','closed','closed','','168-revision-v1','','','2024-09-18 00:31:32','2024-09-18 00:31:32','',168,'http://localhost:10004/?p=170',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2024-09-18 00:46:32','2024-09-18 00:46:32','<!-- wp:paragraph -->\n<p>Cool featured post!</p>\n<!-- /wp:paragraph -->','New post 2','This is the post!','publish','open','open','','new-post-2','','','2024-09-18 02:12:24','2024-09-18 02:12:24','',0,'http://localhost:10004/?p=171',0,'post','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2024-09-18 00:46:32','2024-09-18 00:46:32','<!-- wp:paragraph -->\n<p>Cool featured post!</p>\n<!-- /wp:paragraph -->','New post 2','','inherit','closed','closed','','171-revision-v1','','','2024-09-18 00:46:32','2024-09-18 00:46:32','',171,'http://localhost:10004/?p=172',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2024-09-18 00:47:33','2024-09-18 00:47:33','<!-- wp:paragraph -->\n<p>featured post 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 3','This is the post!','publish','open','open','','new-post-3','','','2024-09-18 02:12:35','2024-09-18 02:12:35','',0,'http://localhost:10004/?p=173',0,'post','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2024-09-18 00:47:33','2024-09-18 00:47:33','<!-- wp:paragraph -->\n<p>featured post 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 3','','inherit','closed','closed','','173-revision-v1','','','2024-09-18 00:47:33','2024-09-18 00:47:33','',173,'http://localhost:10004/?p=174',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2024-09-18 00:48:03','2024-09-18 00:48:03','<!-- wp:paragraph -->\n<p>Featured post 4</p>\n<!-- /wp:paragraph -->','New post 4','This is the post!','publish','open','open','','new-post-4','','','2024-09-18 02:12:47','2024-09-18 02:12:47','',0,'http://localhost:10004/?p=175',0,'post','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2024-09-18 00:48:03','2024-09-18 00:48:03','<!-- wp:paragraph -->\n<p>Featured post 4</p>\n<!-- /wp:paragraph -->','New post 4','','inherit','closed','closed','','175-revision-v1','','','2024-09-18 00:48:03','2024-09-18 00:48:03','',175,'http://localhost:10004/?p=176',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2024-09-18 00:48:20','2024-09-18 00:48:20','<!-- wp:paragraph -->\n<p>Featured post 5</p>\n<!-- /wp:paragraph -->','New post 5','This is the post!','publish','open','open','','new-post-5','','','2024-09-18 01:30:52','2024-09-18 01:30:52','',0,'http://localhost:10004/?p=177',0,'post','',0);
INSERT INTO `wp_posts` VALUES (178,1,'2024-09-18 00:48:20','2024-09-18 00:48:20','<!-- wp:paragraph -->\n<p>Featured post 5</p>\n<!-- /wp:paragraph -->','New post 5','','inherit','closed','closed','','177-revision-v1','','','2024-09-18 00:48:20','2024-09-18 00:48:20','',177,'http://localhost:10004/?p=178',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2024-09-18 01:27:23','2024-09-18 01:27:23','<!-- wp:paragraph -->\n<p>Featured post 5</p>\n<!-- /wp:paragraph -->','New post 5','This is the post!','inherit','closed','closed','','177-revision-v1','','','2024-09-18 01:27:23','2024-09-18 01:27:23','',177,'http://localhost:10004/?p=179',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2024-09-18 01:27:43','2024-09-18 01:27:43','<!-- wp:paragraph -->\n<p>Featured post 4</p>\n<!-- /wp:paragraph -->','New post 4','This is the post!','inherit','closed','closed','','175-revision-v1','','','2024-09-18 01:27:43','2024-09-18 01:27:43','',175,'http://localhost:10004/?p=180',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2024-09-18 01:27:52','2024-09-18 01:27:52','<!-- wp:paragraph -->\n<p>featured post 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 3','This is the post!','inherit','closed','closed','','173-revision-v1','','','2024-09-18 01:27:52','2024-09-18 01:27:52','',173,'http://localhost:10004/?p=181',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2024-09-18 01:28:02','2024-09-18 01:28:02','<!-- wp:paragraph -->\n<p>Cool featured post!</p>\n<!-- /wp:paragraph -->','New post 2','This is the post!','inherit','closed','closed','','171-revision-v1','','','2024-09-18 01:28:02','2024-09-18 01:28:02','',171,'http://localhost:10004/?p=182',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2024-09-18 01:28:12','2024-09-18 01:28:12','<!-- wp:paragraph -->\n<p>Featured post 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 1','This is the post!','inherit','closed','closed','','168-revision-v1','','','2024-09-18 01:28:12','2024-09-18 01:28:12','',168,'http://localhost:10004/?p=183',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2024-09-18 01:29:03','2024-09-18 01:29:03','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}','background_image','background_image','publish','closed','closed','','field_66ea2cd77d305','','','2024-09-18 02:12:59','2024-09-18 02:12:59','',166,'http://localhost:10004/?post_type=acf-field&#038;p=184',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2024-09-18 01:29:48','2024-09-18 01:29:48','<!-- wp:paragraph -->\n<p>Featured post 5</p>\n<!-- /wp:paragraph -->','New post 5','This is the post!','inherit','closed','closed','','177-revision-v1','','','2024-09-18 01:29:48','2024-09-18 01:29:48','',177,'http://localhost:10004/?p=185',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2024-09-18 02:12:15','2024-09-18 02:12:15','<!-- wp:paragraph -->\n<p>Featured post 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 1','This is the post!','inherit','closed','closed','','168-revision-v1','','','2024-09-18 02:12:15','2024-09-18 02:12:15','',168,'http://localhost:10004/?p=186',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2024-09-18 02:12:24','2024-09-18 02:12:24','<!-- wp:paragraph -->\n<p>Cool featured post!</p>\n<!-- /wp:paragraph -->','New post 2','This is the post!','inherit','closed','closed','','171-revision-v1','','','2024-09-18 02:12:24','2024-09-18 02:12:24','',171,'http://localhost:10004/?p=187',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2024-09-18 02:12:35','2024-09-18 02:12:35','<!-- wp:paragraph -->\n<p>featured post 3</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','New post 3','This is the post!','inherit','closed','closed','','173-revision-v1','','','2024-09-18 02:12:35','2024-09-18 02:12:35','',173,'http://localhost:10004/?p=188',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2024-09-18 02:12:46','2024-09-18 02:12:46','<!-- wp:paragraph -->\n<p>Featured post 4</p>\n<!-- /wp:paragraph -->','New post 4','This is the post!','inherit','closed','closed','','175-revision-v1','','','2024-09-18 02:12:46','2024-09-18 02:12:46','',175,'http://localhost:10004/?p=189',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2024-09-18 02:28:56','2024-09-18 02:28:56','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','UserForm','userform','publish','closed','closed','','group_66ea3aa4557db','','','2024-09-18 02:30:38','2024-09-18 02:30:38','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=190',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2024-09-18 02:28:56','2024-09-18 02:28:56','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','work','work','publish','closed','closed','','field_66ea3aa492933','','','2024-09-18 02:28:56','2024-09-18 02:28:56','',190,'http://localhost:10004/?post_type=acf-field&p=191',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2024-09-18 02:29:13','2024-09-18 02:29:13','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";}','work_url','work_url','publish','closed','closed','','field_66ea3aec940f0','','','2024-09-18 02:29:57','2024-09-18 02:29:57','',190,'http://localhost:10004/?post_type=acf-field&#038;p=192',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (193,1,'2024-09-18 02:30:38','2024-09-18 02:30:38','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}','github','github','publish','closed','closed','','field_66ea3b2cff42a','','','2024-09-18 02:30:38','2024-09-18 02:30:38','',190,'http://localhost:10004/?post_type=acf-field&p=193',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (194,1,'2024-09-19 01:07:43','2024-09-19 01:07:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"skills\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Skills','skills','publish','closed','closed','','group_66eb79295dad3','','','2024-09-19 01:10:00','2024-09-19 01:10:00','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=194',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (195,1,'2024-09-19 01:07:43','2024-09-19 01:07:43','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','skill_icon','skill_icon','publish','closed','closed','','field_66eb7929c1fa8','','','2024-09-19 01:10:00','2024-09-19 01:10:00','',194,'http://localhost:10004/?post_type=acf-field&#038;p=195',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (197,1,'2024-09-19 01:10:00','2024-09-19 01:10:00','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:100;s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','skill_proficiency','skill_proficiency','publish','closed','closed','','field_66eb797a388a7','','','2024-09-19 01:10:00','2024-09-19 01:10:00','',194,'http://localhost:10004/?post_type=acf-field&p=197',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (199,1,'2024-09-20 01:26:41','2024-09-20 01:26:41','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"history\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','History','history','publish','closed','closed','','group_66eccf4ca4835','','','2024-09-24 02:03:53','2024-09-24 02:03:53','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=199',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (200,1,'2024-09-20 01:26:41','2024-09-20 01:26:41','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"m/Y\";s:13:\"return_format\";s:3:\"m/Y\";s:9:\"first_day\";i:0;s:17:\"allow_in_bindings\";i:1;}','date','date','publish','closed','closed','','field_66eccf4cf64f8','','','2024-09-20 01:28:13','2024-09-20 01:28:13','',199,'http://localhost:10004/?post_type=acf-field&#038;p=200',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (201,1,'2024-09-20 01:29:31','2024-09-20 01:29:31','I graduated school and it was so good','Graduated middle school','','publish','closed','closed','','graduated-middle-school','','','2024-09-20 01:57:24','2024-09-20 01:57:24','',0,'http://localhost:10004/?post_type=history&#038;p=201',0,'history','',0);
INSERT INTO `wp_posts` VALUES (202,1,'2024-09-20 01:30:15','2024-09-20 01:30:15','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','icon','icon','publish','closed','closed','','field_66ecd001e2f65','','','2024-09-24 02:03:53','2024-09-24 02:03:53','',199,'http://localhost:10004/?post_type=acf-field&#038;p=202',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (203,1,'2024-09-20 01:30:37','2024-09-20 01:30:37','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','place','place','publish','closed','closed','','field_66ecd03280daf','','','2024-09-20 01:30:37','2024-09-20 01:30:37','',199,'http://localhost:10004/?post_type=acf-field&p=203',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (204,1,'2024-09-20 01:31:15','2024-09-20 01:31:15','','school-9','','inherit','open','closed','','school-9','','','2024-09-20 01:31:15','2024-09-20 01:31:15','',201,'http://localhost:10004/wp-content/uploads/2024/09/school-9.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (205,1,'2024-09-20 01:39:32','2024-09-20 01:39:32','This is the best thing! hahahahha','Graduated school 2','','publish','closed','closed','','graduated-school-2','','','2024-09-20 01:39:32','2024-09-20 01:39:32','',0,'http://localhost:10004/?post_type=history&#038;p=205',0,'history','',0);
INSERT INTO `wp_posts` VALUES (206,1,'2024-09-20 01:40:14','2024-09-20 01:40:14','Now I have nothing to write here unfortunately.','Graduated school 3','','publish','closed','closed','','graduated-school-3','','','2024-09-20 01:40:14','2024-09-20 01:40:14','',0,'http://localhost:10004/?post_type=history&#038;p=206',0,'history','',0);
INSERT INTO `wp_posts` VALUES (208,1,'2024-09-20 01:41:05','2024-09-20 01:41:05','Really I don\'t know what to write for a dummy data','Graduated school 4','','publish','closed','closed','','graduated-school-4','','','2024-09-20 01:41:05','2024-09-20 01:41:05','',0,'http://localhost:10004/?post_type=history&#038;p=208',0,'history','',0);
INSERT INTO `wp_posts` VALUES (210,1,'2024-09-24 00:41:11','2024-09-24 00:41:11','Working at bobsweep','Working at bObsweep~','','publish','closed','closed','','working-at-bobsweep','','','2024-09-24 00:41:11','2024-09-24 00:41:11','',0,'http://localhost:10004/?post_type=history&#038;p=210',0,'history','',0);
INSERT INTO `wp_posts` VALUES (211,1,'2024-09-24 01:12:29','2024-09-24 01:12:29','sdawd','Working at bObsweeep','','publish','closed','closed','','working-at-bobsweeep','','','2024-09-24 01:12:29','2024-09-24 01:12:29','',0,'http://localhost:10004/?post_type=history&#038;p=211',0,'history','',0);
INSERT INTO `wp_posts` VALUES (212,1,'2024-09-24 01:49:09','2024-09-24 01:49:09','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"work\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','work-experience','work-experience','publish','closed','closed','','group_66f21a761d107','','','2024-09-24 01:50:40','2024-09-24 01:50:40','',0,'http://localhost:10004/?post_type=acf-field-group&#038;p=212',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (213,1,'2024-09-24 01:49:09','2024-09-24 01:49:09','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','company','company','publish','closed','closed','','field_66f21a7649084','','','2024-09-24 01:49:09','2024-09-24 01:49:09','',212,'http://localhost:10004/?post_type=acf-field&p=213',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (214,1,'2024-09-24 01:49:39','2024-09-24 01:49:39','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','icon','icon','publish','closed','closed','','field_66f21aa025304','','','2024-09-24 01:49:39','2024-09-24 01:49:39','',212,'http://localhost:10004/?post_type=acf-field&p=214',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (215,1,'2024-09-24 01:50:26','2024-09-24 01:50:26','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}','from','from','publish','closed','closed','','field_66f21ac54e18e','','','2024-09-24 01:50:26','2024-09-24 01:50:26','',212,'http://localhost:10004/?post_type=acf-field&p=215',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (216,1,'2024-09-24 01:50:40','2024-09-24 01:50:40','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}','to','to','publish','closed','closed','','field_66f21ae697fb2','','','2024-09-24 01:50:40','2024-09-24 01:50:40','',212,'http://localhost:10004/?post_type=acf-field&p=216',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (217,1,'2024-09-24 01:52:04','2024-09-24 01:52:04','<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n</ul>','bObsweep','','publish','closed','closed','','bobsweep','','','2024-09-24 01:52:04','2024-09-24 01:52:04','',0,'http://localhost:10004/?post_type=work&#038;p=217',0,'work','',0);
INSERT INTO `wp_posts` VALUES (218,1,'2024-09-24 01:52:53','2024-09-24 01:52:53','<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>\r\n</ul>','Freelan','','publish','closed','closed','','freelan','','','2024-09-24 01:52:53','2024-09-24 01:52:53','',0,'http://localhost:10004/?post_type=work&#038;p=218',0,'work','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (9,2,0);
INSERT INTO `wp_term_relationships` VALUES (40,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,3,0);
INSERT INTO `wp_term_relationships` VALUES (45,1,0);
INSERT INTO `wp_term_relationships` VALUES (47,1,0);
INSERT INTO `wp_term_relationships` VALUES (49,1,0);
INSERT INTO `wp_term_relationships` VALUES (51,1,0);
INSERT INTO `wp_term_relationships` VALUES (53,1,0);
INSERT INTO `wp_term_relationships` VALUES (55,1,0);
INSERT INTO `wp_term_relationships` VALUES (57,1,0);
INSERT INTO `wp_term_relationships` VALUES (59,1,0);
INSERT INTO `wp_term_relationships` VALUES (168,5,0);
INSERT INTO `wp_term_relationships` VALUES (168,6,0);
INSERT INTO `wp_term_relationships` VALUES (171,6,0);
INSERT INTO `wp_term_relationships` VALUES (173,6,0);
INSERT INTO `wp_term_relationships` VALUES (175,6,0);
INSERT INTO `wp_term_relationships` VALUES (177,6,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfour','twentytwentyfour',0);
INSERT INTO `wp_terms` VALUES (3,'Code','code',0);
INSERT INTO `wp_terms` VALUES (4,'Featured','featured',0);
INSERT INTO `wp_terms` VALUES (5,'featured-posts','featured-posts',0);
INSERT INTO `wp_terms` VALUES (6,'FeaturedPost','featuredpost',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','shinjuno123');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Junho');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Shin');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. This is just a joke!');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','en_US');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','220');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','unfold=1&mfold=o&editor=tinymce&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1725116483');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_persisted_preferences','a:4:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:3:{s:29:\"isTemplatePartMoveHintVisible\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";i:2;s:15:\"page-attributes\";i:3;s:23:\"taxonomy-panel-category\";i:4;s:12:\"post-excerpt\";i:5;s:23:\"taxonomy-panel-post_tag\";}s:26:\"isComplementaryAreaVisible\";b:1;}s:9:\"_modified\";s:24:\"2024-09-18T01:03:15.945Z\";s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (21,1,'session_tokens','a:176:{s:64:\"bcfa2768581b2533345b22333233f66265b148c08c79a1f1c7a8c29ad494b83f\";a:4:{s:10:\"expiration\";i:1729372429;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728162829;}s:64:\"52e8f8e1cb244a98f09df08b1dd87e12c7a801fdca9e11366565a5217f3d9928\";a:4:{s:10:\"expiration\";i:1729372482;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728162882;}s:64:\"2d04822f2943451640f1ae88960678accea8ed3f590dd03f861794d99a821562\";a:4:{s:10:\"expiration\";i:1729372488;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728162888;}s:64:\"76dfec57c83e74d2639c453e8576fd5ecf9aa964b2bfa810d810b2759755fe1b\";a:4:{s:10:\"expiration\";i:1729372489;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728162889;}s:64:\"72ba0e8ac78b2e0ca3773586cafff205a7715ebd1f754fc0ab050435a38fc438\";a:4:{s:10:\"expiration\";i:1729372737;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163137;}s:64:\"9ec0a04ff36e1418e1b85052910a4f028c45c81fb673445877c8d9df9db66b15\";a:4:{s:10:\"expiration\";i:1729372737;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163137;}s:64:\"c071a0c62a91b2d771f1c89d5b1049285ba3d0ad41b09d05127f98ad162fb6a8\";a:4:{s:10:\"expiration\";i:1729372809;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163209;}s:64:\"020ed41b097a8ef21a88d0168d35b12cbab57c5de3f398e4b3123e877591cf17\";a:4:{s:10:\"expiration\";i:1729372809;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163209;}s:64:\"7be64477cf93790243bea90744d4bec9fb276d8c34437699c0b1a7187640c7dc\";a:4:{s:10:\"expiration\";i:1729372893;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163293;}s:64:\"ecdb3e223cd8f28ee5b835ebb4a42da4b050294994710f485bb35489dc26459a\";a:4:{s:10:\"expiration\";i:1729372893;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163293;}s:64:\"18b6c213e72274208201e91d3034c950713d931adb4a3064a383009eb6c0ae67\";a:4:{s:10:\"expiration\";i:1729372909;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163309;}s:64:\"d9190c0d9df3bc6b7d826568ccf67732b837b6e0bf591ede8a208ff8b8402ae4\";a:4:{s:10:\"expiration\";i:1729372923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163323;}s:64:\"97a2290475bc6ae35f9b39f89927e686dabc403c35f68c1484980449a9c7876d\";a:4:{s:10:\"expiration\";i:1729372924;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163324;}s:64:\"d49c1ea4177d0051ea455d3956d4c12cf8fb3c331906196d4aa8991b35793256\";a:4:{s:10:\"expiration\";i:1729372925;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163325;}s:64:\"033e033c6b90c9da75561e5672ed4a88c11da97e07d591ac684f1258b411ea9d\";a:4:{s:10:\"expiration\";i:1729372932;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163332;}s:64:\"59f84d28d87bd80761d3d2d1149a3302b8a465cebaa7e8b6dda2dfa33e172a7e\";a:4:{s:10:\"expiration\";i:1729372932;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163332;}s:64:\"fbd0cb9c1c3a3d58021e3c3d67485d2a9b8fdb2594fb2cb37824a16044fc0ebb\";a:4:{s:10:\"expiration\";i:1729372941;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163341;}s:64:\"686ec0dc2cdaa9cc77056a0b2f46ca9a09a2c99936e35917cce4113121515b26\";a:4:{s:10:\"expiration\";i:1729372941;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163341;}s:64:\"a9641b6559ea362ab06b291f58667af2e827cb69fc9d37905574b44af3583351\";a:4:{s:10:\"expiration\";i:1729373201;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163601;}s:64:\"e9a572880add812c970d976db19142a6f4b0cb777cde2044b952ff7d7c6ec653\";a:4:{s:10:\"expiration\";i:1729373201;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163601;}s:64:\"dead18b162db1d2b48af77e5e9b9b830b9bab82550e4c714c97bdc5633fd6b35\";a:4:{s:10:\"expiration\";i:1729373301;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163701;}s:64:\"864cae0b3e2f144711b4767ebb7f5e5c9d995c10c093f3a1c00d51649c63f209\";a:4:{s:10:\"expiration\";i:1729373301;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163701;}s:64:\"192bb5311fb4bcbb316aaa64e8bdc0a90ed3159c96c2a2cb709652cc5adecddf\";a:4:{s:10:\"expiration\";i:1729373321;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163721;}s:64:\"b271f33470d85c87ea35394b390ab854d07490f54ff35279d0c5ed94ab44daa0\";a:4:{s:10:\"expiration\";i:1729373321;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163721;}s:64:\"f090301924a7c0919684dfa0c8c21bb9614a24f02729c8b9c6f61472b2b4c273\";a:4:{s:10:\"expiration\";i:1729373400;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163800;}s:64:\"e7c4080409905fd96ce1f41d24da8f8f977f9ffc17516664250f72361698d6a6\";a:4:{s:10:\"expiration\";i:1729373400;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163800;}s:64:\"be0edba1020e1885e7e7138af771adbfeb18035a982c26e3ec702103fed72a53\";a:4:{s:10:\"expiration\";i:1729373416;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163816;}s:64:\"383a1f0cc85a117fb3a0c71697bb8cb5049da65ff1d2f71e77546c81e3a979a6\";a:4:{s:10:\"expiration\";i:1729373416;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163816;}s:64:\"1c152b31fe7f6a4c3a13a03b619d18fa772a0252d76ad90a6652607e2e4fcff3\";a:4:{s:10:\"expiration\";i:1729373489;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163889;}s:64:\"c65b6acb45b60da771e8fc5b814db18f62d96f396a7c705c3701b7384f08d059\";a:4:{s:10:\"expiration\";i:1729373489;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163889;}s:64:\"f9039e33c22b8f0ed7078b6cca84028e38f4a77764379652f5bb52f07f4243aa\";a:4:{s:10:\"expiration\";i:1729373491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163891;}s:64:\"f7a1521b10e7eee7d0cbe5786caba9b206a58b7cab3714b3f18c7316a853cd5c\";a:4:{s:10:\"expiration\";i:1729373491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163891;}s:64:\"ef0e3a581afab6372f6bcfba938adddf00e06c19708d9f36f71e3a070b7163bc\";a:4:{s:10:\"expiration\";i:1729373492;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163892;}s:64:\"6cf668216ed80d5842f09786cfb6541d69afabd486652f9c3ed146aae8d4c27b\";a:4:{s:10:\"expiration\";i:1729373492;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163892;}s:64:\"c9ab06b073cf511272b95d60a9cc8a5c2728cd5097d97b50aedec0745d5d0a9f\";a:4:{s:10:\"expiration\";i:1729373494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163894;}s:64:\"f9a21b42dc6cc6cee02d8829ec1a53ae1175bebc4e651ad737e0a243fd838089\";a:4:{s:10:\"expiration\";i:1729373494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163894;}s:64:\"cf82390efcaed30b774f515b5b95c227b25553437d23fe78f31da90e6c9b5cc7\";a:4:{s:10:\"expiration\";i:1729373495;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163895;}s:64:\"2129342f2ab7239c92a3afe12734cdd28e019260c95de51a38403b0b0d9e0eef\";a:4:{s:10:\"expiration\";i:1729373495;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163895;}s:64:\"6781011f4ba3654fbcd0afbea3c07c5d448451d5662a527b01f2f1807c7e1588\";a:4:{s:10:\"expiration\";i:1729373497;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163897;}s:64:\"25a4ebf867e9a3561afd5615c8a1285c916fa6cd2d6a76296c18f70784dc9b45\";a:4:{s:10:\"expiration\";i:1729373497;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728163897;}s:64:\"cfeb7dfcb1dc95674ec8c3b0debd4a50b4a1d8369d29a286d86b6ab3e32f07fb\";a:4:{s:10:\"expiration\";i:1729373653;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164053;}s:64:\"f2c8c6a35cf0e1b8312a30ece9b36ef6d6c6309ee89b4746b7020da3b51c9741\";a:4:{s:10:\"expiration\";i:1729373653;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164053;}s:64:\"6a743fca7ec1877ec6fd2582f4ea7fcfde7f57a66b4741dfe1e90974d538a360\";a:4:{s:10:\"expiration\";i:1729373667;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164067;}s:64:\"a3a0d4d5889cade60be57c3c671703bee4208a4594e387d6793d8901584d60b4\";a:4:{s:10:\"expiration\";i:1729373667;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164067;}s:64:\"eb9835128f6f9082e9b0a68c87c5435fe22ab46146efa81674b4c6c67ad580a2\";a:4:{s:10:\"expiration\";i:1729373673;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164073;}s:64:\"e18be6d724f783f71ad3d4922f9462e75525f1838e0d728177875f10555bc136\";a:4:{s:10:\"expiration\";i:1729373673;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164073;}s:64:\"95848d99dfdb05ee3efb3f25902fbcb4179128a99df54fa2fa7229309af914d6\";a:4:{s:10:\"expiration\";i:1729373707;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164107;}s:64:\"374d27e3701a742398afdb34936a217bc47ccad1a0d9c5d10d3ecb15440f9cd4\";a:4:{s:10:\"expiration\";i:1729373707;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164107;}s:64:\"b0aaa54c59dd4813d31b2f04c7e2fadee6ff27f5628e7bc62543929c85ce88f0\";a:4:{s:10:\"expiration\";i:1729373752;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164152;}s:64:\"c5dfbf52440b8ff8d282527d0fb37f9c69b50e47fd6e7a482338a2a8add3fac8\";a:4:{s:10:\"expiration\";i:1729373752;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164152;}s:64:\"7e0fca75162960dd9e678d593325a16f44da9b950ac115c4c792dd04a61c4de2\";a:4:{s:10:\"expiration\";i:1729373759;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164159;}s:64:\"3847608ddfaf435b41bf3aa6a6b56878865f1b2ebc6c71135dc5f14500d1da91\";a:4:{s:10:\"expiration\";i:1729373759;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164159;}s:64:\"fe15080c6f52b928edbdd512637e95aedb0584bafd7f4bc2ccfe7323e1346165\";a:4:{s:10:\"expiration\";i:1729373788;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164188;}s:64:\"2d06ff9adb00a57ea7a92f4306b68f3cc17cbc6695254e68d72a8c3653143e89\";a:4:{s:10:\"expiration\";i:1729373799;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164199;}s:64:\"537dd187bb8f2de489c5cea1d923d613e00989607ef648e4e70dd4b5fcacff2a\";a:4:{s:10:\"expiration\";i:1729373891;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164291;}s:64:\"6beacf7ae956473b4777bb5110b9e75bff7bf40a1005eb108139995f2548b90a\";a:4:{s:10:\"expiration\";i:1729373891;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164291;}s:64:\"89b396499651e206b48012c39461f10e1c79d7dbd57d9b9d0f5f3a433c53b5cc\";a:4:{s:10:\"expiration\";i:1729374063;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164463;}s:64:\"018827f3326b70a01831537a200edb34d83c204b5207b6303ce6ffab6c756fc7\";a:4:{s:10:\"expiration\";i:1729374063;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164463;}s:64:\"b1c33a5e3d5aa9ad590f72ac1629d3ac897838754d4ca33ee5271c16f8b5de47\";a:4:{s:10:\"expiration\";i:1729374065;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164465;}s:64:\"209b5b3ed0e5f98782e0d4f1e75791854495dadd50286a7a49d0320c44dfedfa\";a:4:{s:10:\"expiration\";i:1729374066;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164466;}s:64:\"c7406740820295a485d025c7e1c573c615eeff25fea8e02b62ea2d27991429ac\";a:4:{s:10:\"expiration\";i:1729374068;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164468;}s:64:\"6b145619f2979e19317f6a37e1827bc6d03e3ebe990c235d211248a918dec8cf\";a:4:{s:10:\"expiration\";i:1729374068;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164468;}s:64:\"381eda76f8b6d860cbbd976e1a6b8e6fcf85ea7ac1b1bab5943f2301e109f47a\";a:4:{s:10:\"expiration\";i:1729374077;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164477;}s:64:\"4a084ed5a2b08fb0dcb048cdfda0d7461daeabee76bf8556742af1f189120587\";a:4:{s:10:\"expiration\";i:1729374077;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164477;}s:64:\"58bf2b5f2dab9ef3c1a2e4c960f2d724761ae209452f8ef8dbc8cd40cf17ccb9\";a:4:{s:10:\"expiration\";i:1729374085;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164485;}s:64:\"da6991c8925489109ca0dc84b079ec3cc8f859f406c3f1b082704d00697cc37d\";a:4:{s:10:\"expiration\";i:1729374085;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164485;}s:64:\"a9a0d494b8c96e7de9a5dbe9cc8c1a4de18111c008a8a9509922d82534083597\";a:4:{s:10:\"expiration\";i:1729374133;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164533;}s:64:\"2b84fd1dbbbec067a3b36e3e7fcfaaabef7355257364cb5e8b97e0e0c251653e\";a:4:{s:10:\"expiration\";i:1729374133;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164533;}s:64:\"5091aa7b7feb3cc88d385f24d86c468dc18e3fff4091808f321a16a8dfaf8a62\";a:4:{s:10:\"expiration\";i:1729374143;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164543;}s:64:\"4b2f02221779912c0614a771e486f91d6e302bba1ddb0673aca97d0135bda7c4\";a:4:{s:10:\"expiration\";i:1729374143;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164543;}s:64:\"e8f05a05f08c45c6f176438eb0489f8bc1d7d82b8b642c60c8b3f2f307bebc37\";a:4:{s:10:\"expiration\";i:1729374170;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164570;}s:64:\"326e103481c6874e3a0f463197233f271e813df2417f58c9c7bec50446d8df58\";a:4:{s:10:\"expiration\";i:1729374170;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164570;}s:64:\"56457fbfa21309e08fde6ca9abb1c8e08f26fe3a05b9b51982a5f80caf60566e\";a:4:{s:10:\"expiration\";i:1729374213;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164613;}s:64:\"791c0c5e0a5a1e106feb4b3d1e8c5e82a8420a4e693b9404bec075a204b8ea06\";a:4:{s:10:\"expiration\";i:1729374213;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164613;}s:64:\"9ce5ed6491f7cd24cf1e190fbc6eefdf620a1fc2285b580703eac7e40abc12cc\";a:4:{s:10:\"expiration\";i:1729374223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164623;}s:64:\"0d802777948a445642ecca248a276ebf9e4a19a1b6371d861863f5e30f305099\";a:4:{s:10:\"expiration\";i:1729374223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164623;}s:64:\"c573e69f9887e926014859b084ba67854e43016937d19f69016699e55f085f83\";a:4:{s:10:\"expiration\";i:1729374255;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164655;}s:64:\"e60d3001539c2d0b3e92a915a2c11a4e2d31147b3d49c7ff6607670385c2d2b2\";a:4:{s:10:\"expiration\";i:1729374255;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164655;}s:64:\"bf1679858a53b4910da02998b62a3507fff6335b26921b257b990057787e9b50\";a:4:{s:10:\"expiration\";i:1729374275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164675;}s:64:\"00fccdc08e1cfb13e92b6ac2ad94c8f8f9900c2569d9fac0dec351c4af7ccf63\";a:4:{s:10:\"expiration\";i:1729374275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164675;}s:64:\"de4cf30b892d8c50e2cc3e6e3f29a8c71ecc61ec1f62ea8d4f6c188ac97908bd\";a:4:{s:10:\"expiration\";i:1729374310;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164710;}s:64:\"b6c158a480ba3e2ad2fee7845f513c9465e305313ee36d9d19d155427d291f2a\";a:4:{s:10:\"expiration\";i:1729374310;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164710;}s:64:\"b0edf7420de2ae82a4f190ca4a50b35d83a23b4208bb1250f6ce1aabf5dc411d\";a:4:{s:10:\"expiration\";i:1729374500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164900;}s:64:\"1939f29fc6e0db2fb911c434a647d960e18dc9566126fb342932aeb2a8b779a7\";a:4:{s:10:\"expiration\";i:1729374500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164900;}s:64:\"89a1e8be8c8f4137d05ce594e5cbb90b03fbbec5a4db39a021f49fe8a70d9d3c\";a:4:{s:10:\"expiration\";i:1729374521;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164921;}s:64:\"bd300ff7983746936681c684cee98daa3908b69e38ab0b1beeefe134772007af\";a:4:{s:10:\"expiration\";i:1729374521;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728164921;}s:64:\"7ca3d7a0b0784ed770343524971c135d34073444b5a4313e581762e08d630a2f\";a:4:{s:10:\"expiration\";i:1729374714;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165114;}s:64:\"284aff0ffc02b14d6ce67d11cad425ac335863ca7666aa24b7e7d436b4b47c15\";a:4:{s:10:\"expiration\";i:1729374714;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165114;}s:64:\"ef74501c312420e200b0bea708b1cfe30f0df3596b3888450f062f8f3b118b4a\";a:4:{s:10:\"expiration\";i:1729374716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165116;}s:64:\"bb7f005424d0912dcde1967f3eea85dae57b71002820eed14422652ef6586fd9\";a:4:{s:10:\"expiration\";i:1729374716;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165116;}s:64:\"bbdd4b8226fdeafb2051dbd80503a8dbd74e5997993ffb578396044df8067ac9\";a:4:{s:10:\"expiration\";i:1729375193;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165593;}s:64:\"0064e9474c3d520ace30939f4b66fdab2fb66e9ceee3c9acabe9e56e3f689978\";a:4:{s:10:\"expiration\";i:1729375193;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165593;}s:64:\"e8c13d4b65e8b8563d3bcab978f1f062fbb175538c3a2160e92c5fec69b10f78\";a:4:{s:10:\"expiration\";i:1729375230;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165630;}s:64:\"30fb2c834ade547632547156e91c295946b293b18a4becf1e866d8bacf7922c9\";a:4:{s:10:\"expiration\";i:1729375230;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165630;}s:64:\"6e9f9f83507e319e08affdf4fa66b811940ec0ad01239a11657dac572bd95fbc\";a:4:{s:10:\"expiration\";i:1729375290;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165690;}s:64:\"696bb535570b5f794637b8258dc92c86e829445b494e415655bcc6a02ff66396\";a:4:{s:10:\"expiration\";i:1729375290;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165690;}s:64:\"5c438a7c6ca901f664fcdb18b030d921914db3e863af4cfd799a1a1d5d4d4c27\";a:4:{s:10:\"expiration\";i:1729375353;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165753;}s:64:\"9824cc338b3fec46525b76b8559b2514c1f4059cf13530fd2321559a6ad512b2\";a:4:{s:10:\"expiration\";i:1729375353;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165753;}s:64:\"9a43868199cecaad05b511ed78af3ef76c2de675f02bc31b0e835c54c8853a2e\";a:4:{s:10:\"expiration\";i:1729375357;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165757;}s:64:\"6cbe5fc79093d624da4f54860139a4b1c57eb404aec4791eda5b7d50c9c51327\";a:4:{s:10:\"expiration\";i:1729375357;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165757;}s:64:\"6752bab9df78b851c62f491e43715e68abe09419a2b711f84f794ff4533defd9\";a:4:{s:10:\"expiration\";i:1729375366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165766;}s:64:\"74ce658578b70c60a749d23639e16671bef615406f22ea21c8a17e3cdfae7cd9\";a:4:{s:10:\"expiration\";i:1729375366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165766;}s:64:\"10f881eef523ad83d34463ffe7fc8ec7f9d08c11a017fa5be070f7b6ca4e6507\";a:4:{s:10:\"expiration\";i:1729375381;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165781;}s:64:\"52d3d71706e2fe106268218da792f11c542af9a6c0e70a445f5236eff1a0bc5c\";a:4:{s:10:\"expiration\";i:1729375381;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165781;}s:64:\"fc3bdb4c71942bce60b0e484143e961bc09b2249ee9b32bd4cb479f839e0167c\";a:4:{s:10:\"expiration\";i:1729375395;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165795;}s:64:\"5f497d0b09b5372603b5c7fa169962730141f4b3c582539a794accb547efe03d\";a:4:{s:10:\"expiration\";i:1729375395;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165795;}s:64:\"076f75c918fe9a4f167a6e95fb6ace5ef1a5c9d4b403bf17f0fe306224e13edd\";a:4:{s:10:\"expiration\";i:1729375437;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165837;}s:64:\"02babe02bcfcb4d00c3b7525714ff4e4698713c8ae9bd3b60c765de6a43f917b\";a:4:{s:10:\"expiration\";i:1729375437;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165837;}s:64:\"78c99ac29da11423fc4de68dc669eac81188710e4129f8263841cf8bbf55bdbe\";a:4:{s:10:\"expiration\";i:1729375491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165891;}s:64:\"c13c0a14be11721a4065c9cbff72077611852a9a9b8923965cf86a79e96fcb56\";a:4:{s:10:\"expiration\";i:1729375491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728165891;}s:64:\"bc3342d6d36d33abcd44e8ff819b141e066490678fddcd34f8c60429e7761b99\";a:4:{s:10:\"expiration\";i:1729377448;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728167848;}s:64:\"86b3651239b97b775083116614550150b0e8dd9775a242b5519e405351f5204b\";a:4:{s:10:\"expiration\";i:1729377448;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728167848;}s:64:\"1211eb623f9391f54850a303e62b9b780da5fce9fec6576ae8594db038ab2413\";a:4:{s:10:\"expiration\";i:1729439755;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728230155;}s:64:\"f7d30a4235a1073b82441cea0ddfe95c864b7e37217b5842a27c8db69fbf5dd0\";a:4:{s:10:\"expiration\";i:1729439755;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728230155;}s:64:\"64bd00d5ad937f382f861ce8f4f53fd9e06a8ab384db728f6e3ea9b54fc2b272\";a:4:{s:10:\"expiration\";i:1729439800;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728230200;}s:64:\"206a0ae11e87a0fef3abff94f9584cad5f7f3504e905ece4761c46d6e78aa4a8\";a:4:{s:10:\"expiration\";i:1729439800;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:21:\"PostmanRuntime/7.42.0\";s:5:\"login\";i:1728230200;}s:64:\"715fdb1c30fe9c553ed91c6179b5580340ef0b7de9440cab08e58b689a3e4457\";a:4:{s:10:\"expiration\";i:1729440984;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728231384;}s:64:\"4bfcbbb704e21f6f5ce2cdf474d70bdf65442d951c21055111cb470eac18e8a8\";a:4:{s:10:\"expiration\";i:1729440984;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728231384;}s:64:\"1ef39837be1ada0ec907d0b84ba1c06fc51a80bf32408f85aeea515eab6d072c\";a:4:{s:10:\"expiration\";i:1729441013;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728231413;}s:64:\"8cf726247f6a5678825c417d43537e5bc43f9f11605701f3fd0c06c5ebaab6de\";a:4:{s:10:\"expiration\";i:1729441013;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728231413;}s:64:\"c200aae8ac2bef6394621ed6bb383a4245c0f7d6640ebe96cbbe8d1035a9b5b2\";a:4:{s:10:\"expiration\";i:1729465275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728255675;}s:64:\"ab3dc4584d3e84a751e70173a1ce5bf286414a31f0444047104a123891e1eb8c\";a:4:{s:10:\"expiration\";i:1729465275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728255675;}s:64:\"5c0d2c791ae0912d7afd7cac4b2199ebf3d27b191375980abf6b461a61db5611\";a:4:{s:10:\"expiration\";i:1729465503;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728255903;}s:64:\"4f545f05b8b901df2fb38fba9822b492e6a161e066a21fe243d40be111119eaf\";a:4:{s:10:\"expiration\";i:1729465503;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728255903;}s:64:\"55aac02c5fccfb26f82db77ec036b0ce112ecebd4852ff321fdf5572e318c731\";a:4:{s:10:\"expiration\";i:1729556557;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728346957;}s:64:\"06d17af50754e7e4dc13ed19faabc2ec2d0f2027c9353f9a3bebf752ffb0a930\";a:4:{s:10:\"expiration\";i:1729556557;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728346957;}s:64:\"948cbb6e9961eee9c52d2de7047d8c3b244bf68378b0bbd6620c99c250856ec4\";a:4:{s:10:\"expiration\";i:1729557366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728347766;}s:64:\"51790632dfc278cfbe73c0406361432c230fa019959a6b3b54110017199ead89\";a:4:{s:10:\"expiration\";i:1729557366;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728347766;}s:64:\"10bd40bf7f2422e4c09f9b87ad5f7602e09d140c325eaa0f9f05ec505c32fd20\";a:4:{s:10:\"expiration\";i:1729560051;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350451;}s:64:\"9e16ed9c12d861c18504cb934d1d738be45b2b4f352fdd4f3b6d25b63f31efd3\";a:4:{s:10:\"expiration\";i:1729560051;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350451;}s:64:\"fa7231a5a977ad3bb4ae415ef90f2a5f6399f3237843a4291ec0f0b57166ae3f\";a:4:{s:10:\"expiration\";i:1729560116;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350516;}s:64:\"f9a7225deb75df218bff30c72e1540490420294351380202387317f296dcd96a\";a:4:{s:10:\"expiration\";i:1729560116;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350516;}s:64:\"b5b0a36ae5175c0dbd9bb9e0054e284bba56844910772366bedabe6bc0d78df7\";a:4:{s:10:\"expiration\";i:1729560239;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350639;}s:64:\"92c8b987e9133688ac69813ebfaaa9153d565ba31a30d06775fe947896d25b45\";a:4:{s:10:\"expiration\";i:1729560239;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350639;}s:64:\"5c188856b50ab1788be0b9d4b00eb83d5246ed9fa29e7eed9addb38adfde5d6e\";a:4:{s:10:\"expiration\";i:1729560375;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350775;}s:64:\"45acfe45143e66ec6684b379ce9d856d218562a2c0604e9517bae4b36e8f9064\";a:4:{s:10:\"expiration\";i:1729560375;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350775;}s:64:\"b1ee33317f0366827eef2afbb5f64a7d3acd4d8558c32253a1d58bc5c36f2df8\";a:4:{s:10:\"expiration\";i:1729560476;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350876;}s:64:\"7306b33e77300aa520cddbc8f98e6e75fc9fd4ac50078e47f1a98ea9f3287707\";a:4:{s:10:\"expiration\";i:1729560476;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350876;}s:64:\"fb813183aa685a76bb05a6af59a581c19b3777a22ff01bc9448cc8492e0e1fd2\";a:4:{s:10:\"expiration\";i:1729560594;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350994;}s:64:\"469ac8d43f624fb7bb762b3312ad5b7b0b15dde5dd1e59842973fbd29e8b2919\";a:4:{s:10:\"expiration\";i:1729560594;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728350994;}s:64:\"1fb92581d4a48798a1a49ad75a26e41e2969eb58e2bae407173266d9b6e7d859\";a:4:{s:10:\"expiration\";i:1729560608;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728351008;}s:64:\"a63d6681b9301416f4b8f9f65c6ffc3f65a070344dda02180f20f30fa1ef1026\";a:4:{s:10:\"expiration\";i:1729560608;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728351008;}s:64:\"96d766e90995b3e442288488c82ca02dcc6ac3bf277e32b8640423c6001a190f\";a:4:{s:10:\"expiration\";i:1729560675;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728351075;}s:64:\"f482cff841e52207b0d30161c92ad45bb0f0cfd040f99960744731b17a50d9c4\";a:4:{s:10:\"expiration\";i:1729560675;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728351075;}s:64:\"d2a85305a3fd3a17c25679d188bfa7ec26753c54b3de4dc3e6a233423de91f4c\";a:4:{s:10:\"expiration\";i:1729730748;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521148;}s:64:\"26c9fb9741ebdcdf8df703afd6f0e4e69a4c83e5d3777b4932d3e5b0ba8c7ee1\";a:4:{s:10:\"expiration\";i:1729730748;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521148;}s:64:\"6f3247785f66142a09a1f4d385c2f019f8ceba25307f43845ee9910424c5b88d\";a:4:{s:10:\"expiration\";i:1729730774;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521174;}s:64:\"b6a4ff4d12925221998c2da3e2660b37fe14040313d539e6fd67d7e74d16bf4c\";a:4:{s:10:\"expiration\";i:1729730774;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521174;}s:64:\"2bbefd42a8b09e2e8c58769a3b13cf6bf788c95be6c21fb44262203564203200\";a:4:{s:10:\"expiration\";i:1729731073;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521473;}s:64:\"3a190ff880352d365102fa5ae7deeefa7dc1cb992e1b7d69b8778c5b52e062fb\";a:4:{s:10:\"expiration\";i:1729731073;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521473;}s:64:\"939ef61e232e70d4e16fd1adc12f55b2c3dffe64d2bf1854e2763bbfa6d73dab\";a:4:{s:10:\"expiration\";i:1729731223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521623;}s:64:\"94c925ea0c047d2656218bfd813c2389b0f6b56e820cc0d31e2578669621eaf8\";a:4:{s:10:\"expiration\";i:1729731223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521623;}s:64:\"9fb829d89d203d7219c8b06272cc838fe66c5740af57648879c05b196e6ac87c\";a:4:{s:10:\"expiration\";i:1729736510;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728526910;}s:64:\"5e864e8b9115fccd88e89e3c8122ab55405d2341d9e1c6764a1ae1de2a5c679f\";a:4:{s:10:\"expiration\";i:1729736510;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728526910;}s:64:\"d4c3b07b85323f8f86f9cf14c7372a283eb6aaf21e516a26b2767c285e68f61e\";a:4:{s:10:\"expiration\";i:1729736698;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527098;}s:64:\"4b4a55f3877cb126b926df3da3e7c8188b9687aaf6757dddf30b49869ef69881\";a:4:{s:10:\"expiration\";i:1729736698;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527098;}s:64:\"61ba153bdd6581df48bbac969e17b2e455011318bc9f39c1fb6b5a64d4d28040\";a:4:{s:10:\"expiration\";i:1729736825;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527225;}s:64:\"933613748e37b31b8ab7fbad39e7bc0b17433ddc5222aeda8b004381dc51da09\";a:4:{s:10:\"expiration\";i:1729736825;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527225;}s:64:\"3af0333f2c3e04a42dda4651ed358ea1966bc2b133a1231d0cfe83e872974cbe\";a:4:{s:10:\"expiration\";i:1729736852;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527252;}s:64:\"b46c236add3ec054807f1cffd9882e25f984899e499e28185534398f10483f92\";a:4:{s:10:\"expiration\";i:1729736852;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527252;}s:64:\"6b5d915934a530e0b53cf4240dd5f9eab47a409898951c6afab08b379bdfe226\";a:4:{s:10:\"expiration\";i:1729736894;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527294;}s:64:\"b5f1713e418cbbf91241cb0f2acd6c5f021aacdd1f445f29543b5158a2739d3f\";a:4:{s:10:\"expiration\";i:1729736894;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728527294;}s:64:\"1f86acec68f07291d5d1efbd7a97f2c8fe364198f74c51442a723d8bb5ad17cc\";a:4:{s:10:\"expiration\";i:1729903055;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728693455;}s:64:\"5e0d27d1f5091fa158ebf85c64ca135e7f81ac60f7d1018992c7fc73d41ec25b\";a:4:{s:10:\"expiration\";i:1729903055;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728693455;}s:64:\"93499f27ef5f7d4ac68dfbdc9eb62a3a1f65f174acd0c4d7c520c9167e5b7035\";a:4:{s:10:\"expiration\";i:1730167203;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957603;}s:64:\"1707729a45946a20ef6358492dc1b1b9e8bc0fcaeb349f4d6fa1cdbc398f4701\";a:4:{s:10:\"expiration\";i:1730167203;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957603;}s:64:\"95861cfee3dffeb48fa944d7d9f85bd8cd1d1cf0928a7e40a4a69dfe84793358\";a:4:{s:10:\"expiration\";i:1730167227;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957627;}s:64:\"177890d687d0a8c5c7b671b28081a03f1a56c39cdb8199ae1489eb0fc5f7b434\";a:4:{s:10:\"expiration\";i:1730167227;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957627;}s:64:\"a69f143dc30c3ec54fb18b3f738e9b6d519f9e1ebe80665d3b9339a48b036517\";a:4:{s:10:\"expiration\";i:1730167384;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957784;}s:64:\"d998c7f976fb2c855654a10b256cc474ad8ba0b27bfdd848de7e48c90a7ec436\";a:4:{s:10:\"expiration\";i:1730167384;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957784;}s:64:\"407d6294b04fc622f7c11f60b79290ecd2251d12c5d2a3ad648e1c1694807651\";a:4:{s:10:\"expiration\";i:1730167487;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957887;}s:64:\"283e84ae19af88aad9f7f54f20893541ad76ab4b350a68230648f9e54aa7c4ab\";a:4:{s:10:\"expiration\";i:1730167487;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957887;}s:64:\"4a2fe80f971fe7122d8a300193d812395cb22e79f247557ae4d32d185d6abaa0\";a:4:{s:10:\"expiration\";i:1730167545;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957945;}s:64:\"b840fbd88eed54a12796f7bb4b9c7629026300cabd5b16be9a20bbe312fe0c26\";a:4:{s:10:\"expiration\";i:1730167545;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957945;}s:64:\"7e921b22e454a89c9834adb521331919ad8619b49238568108456f43cfa49f4f\";a:4:{s:10:\"expiration\";i:1730167546;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957946;}s:64:\"328d6fb511b29262e8b7bed31bc04f8f2e6299b84006751ed3dc367d305b870b\";a:4:{s:10:\"expiration\";i:1730167546;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728957946;}}');
INSERT INTO `wp_usermeta` VALUES (22,1,'simple_local_avatar','a:11:{s:8:\"media_id\";i:97;s:4:\"full\";s:70:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1.jpg\";i:192;s:78:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-192x192.jpg\";i:96;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-96x96.jpg\";i:128;s:78:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-128x128.jpg\";i:64;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-64x64.jpg\";i:52;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-52x52.jpg\";i:26;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-26x26.jpg\";i:32;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-32x32.jpg\";i:24;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-24x24.jpg\";i:48;s:76:\"http://localhost:10004/wp-content/uploads/2024/08/cropped-myface-1-48x48.jpg\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'simple_local_avatar_rating','G');
INSERT INTO `wp_usermeta` VALUES (24,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'acf_user_settings','a:3:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;s:15:\"show_field_keys\";s:1:\"1\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_project','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:33:\"acf-group_66de599e86841,submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_project','2');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'meta-box-order_acf-field-group','a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:54:\"acf-field-group-fields,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (32,1,'screen_layout_acf-field-group','1');
INSERT INTO `wp_usermeta` VALUES (33,1,'work','');
INSERT INTO `wp_usermeta` VALUES (34,1,'_work','field_66ea3aa492933');
INSERT INTO `wp_usermeta` VALUES (35,1,'work_url','');
INSERT INTO `wp_usermeta` VALUES (36,1,'_work_url','field_66ea3aec940f0');
INSERT INTO `wp_usermeta` VALUES (37,1,'github','');
INSERT INTO `wp_usermeta` VALUES (38,1,'_github','field_66ea3b2cff42a');
INSERT INTO `wp_usermeta` VALUES (156,11,'nickname','dummy1@gmail.com');
INSERT INTO `wp_usermeta` VALUES (157,11,'first_name','');
INSERT INTO `wp_usermeta` VALUES (158,11,'last_name','');
INSERT INTO `wp_usermeta` VALUES (159,11,'description','');
INSERT INTO `wp_usermeta` VALUES (160,11,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (161,11,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (162,11,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (163,11,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (164,11,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (165,11,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (166,11,'locale','');
INSERT INTO `wp_usermeta` VALUES (167,11,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (168,11,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (169,12,'nickname','dummy2@gmail.com');
INSERT INTO `wp_usermeta` VALUES (170,12,'first_name','');
INSERT INTO `wp_usermeta` VALUES (171,12,'last_name','');
INSERT INTO `wp_usermeta` VALUES (172,12,'description','');
INSERT INTO `wp_usermeta` VALUES (173,12,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (174,12,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (175,12,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (176,12,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (177,12,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (178,12,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (179,12,'locale','');
INSERT INTO `wp_usermeta` VALUES (180,12,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (181,12,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (182,13,'nickname','dummy6@gmail.com');
INSERT INTO `wp_usermeta` VALUES (183,13,'first_name','');
INSERT INTO `wp_usermeta` VALUES (184,13,'last_name','');
INSERT INTO `wp_usermeta` VALUES (185,13,'description','');
INSERT INTO `wp_usermeta` VALUES (186,13,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (187,13,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (188,13,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (189,13,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (190,13,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (191,13,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (192,13,'locale','');
INSERT INTO `wp_usermeta` VALUES (193,13,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (194,13,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (195,14,'nickname','dummy7@gmail.com');
INSERT INTO `wp_usermeta` VALUES (196,14,'first_name','');
INSERT INTO `wp_usermeta` VALUES (197,14,'last_name','');
INSERT INTO `wp_usermeta` VALUES (198,14,'description','');
INSERT INTO `wp_usermeta` VALUES (199,14,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (200,14,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (201,14,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (202,14,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (203,14,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (204,14,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (205,14,'locale','');
INSERT INTO `wp_usermeta` VALUES (206,14,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (207,14,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (208,15,'nickname','dummy18@gmail.com');
INSERT INTO `wp_usermeta` VALUES (209,15,'first_name','');
INSERT INTO `wp_usermeta` VALUES (210,15,'last_name','');
INSERT INTO `wp_usermeta` VALUES (211,15,'description','');
INSERT INTO `wp_usermeta` VALUES (212,15,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (213,15,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (214,15,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (215,15,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (216,15,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (217,15,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (218,15,'locale','');
INSERT INTO `wp_usermeta` VALUES (219,15,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (220,15,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (221,16,'nickname','dummy22@gmail.com');
INSERT INTO `wp_usermeta` VALUES (222,16,'first_name','');
INSERT INTO `wp_usermeta` VALUES (223,16,'last_name','');
INSERT INTO `wp_usermeta` VALUES (224,16,'description','');
INSERT INTO `wp_usermeta` VALUES (225,16,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (226,16,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (227,16,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (228,16,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (229,16,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (230,16,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (231,16,'locale','');
INSERT INTO `wp_usermeta` VALUES (232,16,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (233,16,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (234,17,'nickname','dummy24@gmail.com');
INSERT INTO `wp_usermeta` VALUES (235,17,'first_name','');
INSERT INTO `wp_usermeta` VALUES (236,17,'last_name','');
INSERT INTO `wp_usermeta` VALUES (237,17,'description','');
INSERT INTO `wp_usermeta` VALUES (238,17,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (239,17,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (240,17,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (241,17,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (242,17,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (243,17,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (244,17,'locale','');
INSERT INTO `wp_usermeta` VALUES (245,17,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (246,17,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (247,18,'nickname','junho@bobsweep.com');
INSERT INTO `wp_usermeta` VALUES (248,18,'first_name','');
INSERT INTO `wp_usermeta` VALUES (249,18,'last_name','');
INSERT INTO `wp_usermeta` VALUES (250,18,'description','');
INSERT INTO `wp_usermeta` VALUES (251,18,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (252,18,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (253,18,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (254,18,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (255,18,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (256,18,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (257,18,'locale','');
INSERT INTO `wp_usermeta` VALUES (258,18,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (259,18,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (260,19,'nickname','awdawd@gmail.com');
INSERT INTO `wp_usermeta` VALUES (261,19,'first_name','');
INSERT INTO `wp_usermeta` VALUES (262,19,'last_name','');
INSERT INTO `wp_usermeta` VALUES (263,19,'description','');
INSERT INTO `wp_usermeta` VALUES (264,19,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (265,19,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (266,19,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (267,19,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (268,19,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (269,19,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (270,19,'locale','');
INSERT INTO `wp_usermeta` VALUES (271,19,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (272,19,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (273,20,'nickname','shinjuno123@gmail.com');
INSERT INTO `wp_usermeta` VALUES (274,20,'first_name','');
INSERT INTO `wp_usermeta` VALUES (275,20,'last_name','');
INSERT INTO `wp_usermeta` VALUES (276,20,'description','');
INSERT INTO `wp_usermeta` VALUES (277,20,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (278,20,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (279,20,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (280,20,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (281,20,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (282,20,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (283,20,'locale','');
INSERT INTO `wp_usermeta` VALUES (284,20,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (285,20,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (286,21,'nickname','dummy72@gmail.com');
INSERT INTO `wp_usermeta` VALUES (287,21,'first_name','');
INSERT INTO `wp_usermeta` VALUES (288,21,'last_name','');
INSERT INTO `wp_usermeta` VALUES (289,21,'description','');
INSERT INTO `wp_usermeta` VALUES (290,21,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (291,21,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (292,21,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (293,21,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (294,21,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (295,21,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (296,21,'locale','');
INSERT INTO `wp_usermeta` VALUES (297,21,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (298,21,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (299,22,'nickname','dummy62@gmail.com');
INSERT INTO `wp_usermeta` VALUES (300,22,'first_name','');
INSERT INTO `wp_usermeta` VALUES (301,22,'last_name','');
INSERT INTO `wp_usermeta` VALUES (302,22,'description','');
INSERT INTO `wp_usermeta` VALUES (303,22,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (304,22,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (305,22,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (306,22,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (307,22,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (308,22,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (309,22,'locale','');
INSERT INTO `wp_usermeta` VALUES (310,22,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (311,22,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (312,23,'nickname','dummy100@gmail.com');
INSERT INTO `wp_usermeta` VALUES (313,23,'first_name','');
INSERT INTO `wp_usermeta` VALUES (314,23,'last_name','');
INSERT INTO `wp_usermeta` VALUES (315,23,'description','');
INSERT INTO `wp_usermeta` VALUES (316,23,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (317,23,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (318,23,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (319,23,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (320,23,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (321,23,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (322,23,'locale','');
INSERT INTO `wp_usermeta` VALUES (323,23,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (324,23,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (325,24,'nickname','dummy120@gmail.com');
INSERT INTO `wp_usermeta` VALUES (326,24,'first_name','');
INSERT INTO `wp_usermeta` VALUES (327,24,'last_name','');
INSERT INTO `wp_usermeta` VALUES (328,24,'description','');
INSERT INTO `wp_usermeta` VALUES (329,24,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (330,24,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (331,24,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (332,24,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (333,24,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (334,24,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (335,24,'locale','');
INSERT INTO `wp_usermeta` VALUES (336,24,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (337,24,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (338,25,'nickname','dummy1000@gmail.com');
INSERT INTO `wp_usermeta` VALUES (339,25,'first_name','');
INSERT INTO `wp_usermeta` VALUES (340,25,'last_name','');
INSERT INTO `wp_usermeta` VALUES (341,25,'description','');
INSERT INTO `wp_usermeta` VALUES (342,25,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (343,25,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (344,25,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (345,25,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (346,25,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (347,25,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (348,25,'locale','');
INSERT INTO `wp_usermeta` VALUES (349,25,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (350,25,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (351,20,'session_tokens','a:6:{s:64:\"e78299c221430da7a909c8a2eeb168218c89cb53fee21a57ae071cce0c3c7a2f\";a:4:{s:10:\"expiration\";i:1729730713;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521113;}s:64:\"ad74a6143ac18414e4f4a5bb79d8f96c7c543bab71bc220d9c924a6a3ab5c9b6\";a:4:{s:10:\"expiration\";i:1729730713;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728521113;}s:64:\"403bd602e0126cd2eceb4f78593ef62441f3268db2109dff62a3457ff0bf6c06\";a:4:{s:10:\"expiration\";i:1729731628;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728522028;}s:64:\"bae0884fea513560e079debbb252a780547a6b6fd4129dcbe119b81c544e0ca7\";a:4:{s:10:\"expiration\";i:1729731628;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728522028;}s:64:\"dbe49c2f7580d4ebe45b300b8aec92d77f1ae974a8864f1617af656ee3f5b9ab\";a:4:{s:10:\"expiration\";i:1729731786;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728522186;}s:64:\"111c796deb4dd80a9572354575d2b740423fa2fd1f93be9ffe5f7ff7d7351b3d\";a:4:{s:10:\"expiration\";i:1729731786;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\";s:5:\"login\";i:1728522186;}}');
INSERT INTO `wp_usermeta` VALUES (352,26,'nickname','dummy10020@gmail.com');
INSERT INTO `wp_usermeta` VALUES (353,26,'first_name','');
INSERT INTO `wp_usermeta` VALUES (354,26,'last_name','');
INSERT INTO `wp_usermeta` VALUES (355,26,'description','');
INSERT INTO `wp_usermeta` VALUES (356,26,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (357,26,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (358,26,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (359,26,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (360,26,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (361,26,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (362,26,'locale','');
INSERT INTO `wp_usermeta` VALUES (363,26,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (364,26,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (365,27,'nickname','shi@naver.com');
INSERT INTO `wp_usermeta` VALUES (366,27,'first_name','');
INSERT INTO `wp_usermeta` VALUES (367,27,'last_name','');
INSERT INTO `wp_usermeta` VALUES (368,27,'description','');
INSERT INTO `wp_usermeta` VALUES (369,27,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (370,27,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (371,27,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (372,27,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (373,27,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (374,27,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (375,27,'locale','');
INSERT INTO `wp_usermeta` VALUES (376,27,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (377,27,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (378,28,'nickname','dummy12000@naver.omc');
INSERT INTO `wp_usermeta` VALUES (379,28,'first_name','');
INSERT INTO `wp_usermeta` VALUES (380,28,'last_name','');
INSERT INTO `wp_usermeta` VALUES (381,28,'description','');
INSERT INTO `wp_usermeta` VALUES (382,28,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (383,28,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (384,28,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (385,28,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (386,28,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (387,28,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (388,28,'locale','');
INSERT INTO `wp_usermeta` VALUES (389,28,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (390,28,'wp_user_level','0');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'shinjuno123','$P$B5HAj5sD7rP0Pb/cZs2.U6VBwHdlo31','shinjuno123','dev-email@wpengine.local','http://localhost:10004','2024-05-18 21:55:48','',0,'shinjuno123');
INSERT INTO `wp_users` VALUES (11,'dummy1@gmail.com','$P$BGK.ftJ1z50ehw8kkUF3/DKI7zJnb81','dummy1gmail-com','dummy1@gmail.com','','2024-10-02 02:01:02','',0,'dummy1@gmail.com');
INSERT INTO `wp_users` VALUES (12,'dummy2@gmail.com','$P$BFxg0XysItnrysmtSL6x47p5.gubPI1','dummy2gmail-com','dummy2@gmail.com','','2024-10-02 02:07:38','',0,'dummy2@gmail.com');
INSERT INTO `wp_users` VALUES (13,'dummy6@gmail.com','$P$BLpO.USxQW0te.lwANuw5FH6Fk5tVu0','dummy6gmail-com','dummy6@gmail.com','','2024-10-02 02:08:42','',0,'dummy6@gmail.com');
INSERT INTO `wp_users` VALUES (14,'dummy7@gmail.com','$P$B/zUGDj0ppPYDRjNJBOcHi/Kb7Bydf/','dummy7gmail-com','dummy7@gmail.com','','2024-10-02 02:17:11','',0,'dummy7@gmail.com');
INSERT INTO `wp_users` VALUES (15,'dummy18@gmail.com','$P$BGqatrLeO83hGEtA3u892QPBkIw.G5.','dummy18gmail-com','dummy18@gmail.com','','2024-10-02 02:19:23','',0,'dummy18@gmail.com');
INSERT INTO `wp_users` VALUES (16,'dummy22@gmail.com','$P$BlxRZeddQo462lRE3StQAfVb7iDYAe/','dummy22gmail-com','dummy22@gmail.com','','2024-10-02 02:21:36','',0,'dummy22@gmail.com');
INSERT INTO `wp_users` VALUES (17,'dummy24@gmail.com','$P$BcpbUUmwq/30dkiuu4LemzkUn/C7zU1','dummy24gmail-com','dummy24@gmail.com','','2024-10-02 02:25:49','',0,'dummy24@gmail.com');
INSERT INTO `wp_users` VALUES (18,'junho@bobsweep.com','$P$BsBGZ6DrVe.AvwE/PFmPYUW4DmraVr0','junhobobsweep-com','junho@bobsweep.com','','2024-10-02 02:27:26','',0,'junho@bobsweep.com');
INSERT INTO `wp_users` VALUES (19,'awdawd@gmail.com','$P$BIQyP3zd8K/dQ3ZPCnp9bBzSTU8wOu.','awdawdgmail-com','awdawd@gmail.com','','2024-10-02 02:31:13','',0,'awdawd@gmail.com');
INSERT INTO `wp_users` VALUES (20,'shinjuno123@gmail.com','$P$B4z/0Ycb7hncl4MOJtbQ23rtNsNPXp.','shinjuno123gmail-com','shinjuno123@gmail.com','','2024-10-02 02:35:04','',0,'shinjuno123@gmail.com');
INSERT INTO `wp_users` VALUES (21,'dummy72@gmail.com','$P$BlTfTEPdpQsC81bUlNQTlCPq6.Q0Gt1','dummy72gmail-com','dummy72@gmail.com','','2024-10-02 02:43:52','',0,'dummy72@gmail.com');
INSERT INTO `wp_users` VALUES (22,'dummy62@gmail.com','$P$BjIdqZ7vCx3PnfVaUjBSfoVz69TQHQ1','dummy62gmail-com','dummy62@gmail.com','','2024-10-02 02:45:13','',0,'dummy62@gmail.com');
INSERT INTO `wp_users` VALUES (23,'dummy100@gmail.com','$P$BG/6mwJk6ZqvhQP/TgmJet7/D3B8fJ.','dummy100gmail-com','dummy100@gmail.com','','2024-10-02 02:45:37','',0,'dummy100@gmail.com');
INSERT INTO `wp_users` VALUES (24,'dummy120@gmail.com','$P$B/eNQ0UKcuCIi.4BZemCF5WaRvGEdB1','dummy120gmail-com','dummy120@gmail.com','','2024-10-02 18:38:14','',0,'dummy120@gmail.com');
INSERT INTO `wp_users` VALUES (25,'dummy1000@gmail.com','$P$BeRBT0av50gKF/Ze3OcH1zLaSi37YI/','dummy1000gmail-com','dummy1000@gmail.com','','2024-10-05 20:56:55','',0,'dummy1000@gmail.com');
INSERT INTO `wp_users` VALUES (26,'dummy10020@gmail.com','$P$BpBCtnjd7prEH59lG2ul5pe2i8re6.1','dummy10020gmail-com','dummy10020@gmail.com','','2024-10-10 02:24:28','',0,'dummy10020@gmail.com');
INSERT INTO `wp_users` VALUES (27,'shi@naver.com','$P$BTnhftxQIyS/Bw6FCgcn7JMAxA2Gx//','shinaver-com','shi@naver.com','','2024-10-10 02:29:22','',0,'shi@naver.com');
INSERT INTO `wp_users` VALUES (28,'dummy12000@naver.omc','$P$Bd2cb/tadOxLr6clQnqRuprkyMpl1./','dummy12000naver-omc','dummy12000@naver.omc','','2024-10-12 00:38:09','',0,'dummy12000@naver.omc');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 20:46:12
