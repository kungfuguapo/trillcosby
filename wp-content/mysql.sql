-- MySQL dump 10.13  Distrib 5.6.22-72.0, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: wp_trillcosby
-- ------------------------------------------------------
-- Server version	5.6.22-72.0-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2014-10-14 19:48:55','2014-10-14 19:48:55','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://trillcosby.ninja','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://trillcosby.ninja','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Trillcosby.ninja','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Lamborghini Mercy','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','perez.koz@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'gzipcompression','0','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'advanced_edit','0','yes');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (41,'template','moesia','yes');
INSERT INTO `wp_options` VALUES (42,'stylesheet','moesia','yes');
INSERT INTO `wp_options` VALUES (43,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (44,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (45,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (46,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (47,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (48,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (49,'db_version','30133','yes');
INSERT INTO `wp_options` VALUES (50,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (51,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (52,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (53,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (54,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (55,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (56,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (57,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (58,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (61,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (63,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (64,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (66,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (69,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (71,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (73,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (74,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (75,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (76,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (77,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (78,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (82,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (83,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (84,'page_for_posts','2','yes');
INSERT INTO `wp_options` VALUES (85,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (86,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (87,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (88,'initial_db_version','29630','yes');
INSERT INTO `wp_options` VALUES (89,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (90,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (91,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (92,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'sidebars_widgets','a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (96,'cron','a:4:{i:1425152940;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1425157137;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1425159160;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (109,'_transient_random_seed','00b09a81eb9129000428a8acf2cc347b','yes');
INSERT INTO `wp_options` VALUES (112,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (113,'wpe_notices_ttl','1423692191','yes');
INSERT INTO `wp_options` VALUES (137,'_transient_twentyfourteen_category_count','1','yes');
INSERT INTO `wp_options` VALUES (140,'optionsframework','a:2:{s:2:\"id\";s:32:\"optionsframework_skt_photo_world\";s:12:\"knownoptions\";a:1:{i:0;s:32:\"optionsframework_skt_photo_world\";}}','yes');
INSERT INTO `wp_options` VALUES (141,'optionsframework_skt_photo_world','a:27:{s:4:\"logo\";s:0:\"\";s:11:\"footertext2\";s:30:\"BipBoppityFlimFlam Productions\";s:22:\"featured_as_background\";s:1:\"1\";s:16:\"navigation_color\";s:7:\"#fc0000\";s:20:\"pagin_grad_top_color\";s:7:\"#e76a6a\";s:23:\"pagin_grad_bottom_color\";s:7:\"#fc0000\";s:14:\"sidebar-layout\";s:4:\"left\";s:6:\"style2\";s:0:\"\";s:6:\"slide1\";s:85:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner_bg.jpg\";s:6:\"slide2\";s:90:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-welcome.jpg\";s:6:\"slide3\";s:88:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-third.jpg\";s:6:\"slide4\";s:89:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-fourth.jpg\";s:6:\"slide5\";s:0:\"\";s:6:\"slide6\";s:88:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-sixth.jpg\";s:6:\"slide7\";s:90:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-seventh.jpg\";s:6:\"slide8\";s:88:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-eight.jpg\";s:6:\"slide9\";s:87:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-nine.jpg\";s:7:\"slide10\";s:86:\"http://trillcosby.wpengine.com/wp-content/themes/skt-photo-world/images/banner-ten.jpg\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:6:\"google\";s:1:\"#\";s:8:\"linkedin\";s:1:\"#\";s:8:\"contact1\";s:11:\"PHOTO WORLD\";s:8:\"contact2\";s:15:\"123 Some Street\";s:8:\"contact3\";s:15:\"California, USA\";s:8:\"contact4\";s:12:\"100 2000 300\";s:8:\"contact5\";s:16:\"info@example.com\";}','yes');
INSERT INTO `wp_options` VALUES (144,'current_theme','Moesia','yes');
INSERT INTO `wp_options` VALUES (145,'theme_mods_skt-photo-world','a:7:{i:0;b:0;s:16:\"background_color\";s:6:\"4486bf\";s:16:\"background_image\";s:97:\"http://trillcosby.wpengine.com/wp-content/uploads/2014/12/4-16-12-Bill-Cosby_standard_600x400.jpg\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1419978099;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (146,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (147,'theme_switched_via_customizer','','yes');
INSERT INTO `wp_options` VALUES (148,'widget_wpe_widget_powered_by','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (149,'widget_pages','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (150,'widget_calendar','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (151,'widget_tag_cloud','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (152,'widget_nav_menu','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (157,'_transient_all_the_cool_cats','1','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1419978590;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_mods_moesia','a:117:{i:0;b:0;s:16:\"header_textcolor\";s:0:\"\";s:16:\"background_color\";s:6:\"f5f5f5\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:9;s:3:\"url\";s:74:\"http://trillcosby.wpengine.com/wp-content/uploads/2014/12/thetrillest1.jpg\";s:13:\"thumbnail_url\";s:74:\"http://trillcosby.wpengine.com/wp-content/uploads/2014/12/thetrillest1.jpg\";s:6:\"height\";i:400;s:5:\"width\";i:600;}s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:6:\"scroll\";s:9:\"site_logo\";s:0:\"\";s:9:\"logo_size\";i:100;s:12:\"site_favicon\";s:0:\"\";s:15:\"apple_touch_144\";s:0:\"\";s:15:\"apple_touch_114\";s:0:\"\";s:14:\"apple_touch_72\";s:0:\"\";s:14:\"apple_touch_57\";s:0:\"\";s:15:\"moesia_scroller\";s:0:\"\";s:14:\"moesia_animate\";s:0:\"\";s:15:\"sidebar_widgets\";s:0:\"\";s:14:\"footer_widgets\";s:0:\"\";s:15:\"moesia_post_img\";s:0:\"\";s:15:\"moesia_page_img\";s:0:\"\";s:10:\"author_bio\";s:0:\"\";s:11:\"blog_layout\";s:12:\"small-images\";s:12:\"full_content\";s:0:\"\";s:10:\"exc_lenght\";i:30;s:12:\"header_title\";s:0:\"\";s:11:\"header_logo\";s:0:\"\";s:10:\"wlogo_size\";i:200;s:11:\"header_desc\";s:0:\"\";s:15:\"header_btn_text\";s:19:\"Download this theme\";s:15:\"header_btn_link\";s:0:\"\";s:13:\"moesia_banner\";s:0:\"\";s:14:\"header_overlay\";s:0:\"\";s:18:\"header_title_color\";s:4:\"#fff\";s:17:\"header_desc_color\";s:7:\"#d8d8d8\";s:13:\"header_btn_bg\";s:7:\"#ff6b53\";s:13:\"header_btn_bs\";s:7:\"#C2503D\";s:11:\"services_bg\";s:4:\"#fff\";s:14:\"services_title\";s:4:\"#444\";s:18:\"services_title_dec\";s:7:\"#ff6b53\";s:16:\"services_icon_bg\";s:7:\"#ff6b53\";s:19:\"services_item_title\";s:7:\"#ff6b53\";s:18:\"services_body_text\";s:4:\"#aaa\";s:12:\"employees_bg\";s:4:\"#fff\";s:15:\"employees_title\";s:4:\"#444\";s:19:\"employees_title_dec\";s:7:\"#ff6b53\";s:14:\"employees_name\";s:4:\"#222\";s:18:\"employees_function\";s:7:\"#727272\";s:19:\"employees_body_text\";s:4:\"#aaa\";s:15:\"testimonials_bg\";s:4:\"#fff\";s:18:\"testimonials_title\";s:4:\"#444\";s:22:\"testimonials_title_dec\";s:7:\"#ff6b53\";s:19:\"testimonials_client\";s:4:\"#222\";s:21:\"testimonials_function\";s:4:\"#aaa\";s:20:\"testimonials_body_bg\";s:7:\"#f5f5f5\";s:22:\"testimonials_body_text\";s:4:\"#aaa\";s:9:\"skills_bg\";s:4:\"#fff\";s:12:\"skills_title\";s:4:\"#444\";s:16:\"skills_title_dec\";s:7:\"#ff6b53\";s:10:\"skills_bar\";s:7:\"#ff6b53\";s:16:\"skills_body_text\";s:4:\"#aaa\";s:8:\"facts_bg\";s:4:\"#fff\";s:11:\"facts_title\";s:4:\"#444\";s:15:\"facts_title_dec\";s:7:\"#ff6b53\";s:13:\"facts_numbers\";s:7:\"#ff6b53\";s:15:\"facts_body_text\";s:4:\"#aaa\";s:10:\"clients_bg\";s:4:\"#fff\";s:13:\"clients_title\";s:4:\"#444\";s:17:\"clients_title_dec\";s:7:\"#ff6b53\";s:14:\"clients_slider\";s:7:\"#ff6b53\";s:13:\"blockquote_bg\";s:4:\"#fff\";s:16:\"blockquote_title\";s:4:\"#444\";s:20:\"blockquote_title_dec\";s:7:\"#ff6b53\";s:15:\"blockquote_icon\";s:7:\"#ff6b53\";s:20:\"blockquote_body_text\";s:4:\"#aaa\";s:9:\"social_bg\";s:4:\"#fff\";s:12:\"social_title\";s:4:\"#444\";s:16:\"social_title_dec\";s:7:\"#ff6b53\";s:12:\"social_icons\";s:7:\"#ff6b53\";s:11:\"projects_bg\";s:4:\"#fff\";s:14:\"projects_title\";s:4:\"#444\";s:18:\"projects_title_dec\";s:7:\"#ff6b53\";s:16:\"projects_item_bg\";s:7:\"#ff6b53\";s:14:\"projects_icons\";s:7:\"#ff6b53\";s:14:\"latest_news_bg\";s:4:\"#fff\";s:17:\"latest_news_title\";s:4:\"#444\";s:21:\"latest_news_title_dec\";s:7:\"#ff6b53\";s:22:\"latest_news_post_title\";s:4:\"#444\";s:21:\"latest_news_body_text\";s:4:\"#aaa\";s:19:\"latest_news_see_all\";s:4:\"#444\";s:14:\"action_area_bg\";s:4:\"#fff\";s:17:\"action_area_title\";s:4:\"#444\";s:21:\"action_area_title_dec\";s:7:\"#ff6b53\";s:19:\"action_area_message\";s:4:\"#aaa\";s:15:\"action_area_btn\";s:7:\"#ff6b53\";s:18:\"action_area_btn_bs\";s:7:\"#C2503D\";s:10:\"menu_color\";s:4:\"#222\";s:16:\"menu_links_color\";s:7:\"#ffffff\";s:13:\"primary_color\";s:7:\"#ff6b53\";s:16:\"site_title_color\";s:7:\"#ffffff\";s:15:\"site_desc_color\";s:7:\"#dfdfdf\";s:17:\"entry_title_color\";s:4:\"#444\";s:15:\"body_text_color\";s:4:\"#aaa\";s:12:\"footer_color\";s:4:\"#222\";s:14:\"headings_fonts\";s:0:\"\";s:10:\"body_fonts\";s:0:\"\";s:7:\"h1_size\";i:36;s:7:\"h2_size\";i:30;s:7:\"h3_size\";i:24;s:7:\"h4_size\";i:18;s:7:\"h5_size\";i:14;s:7:\"h6_size\";i:12;s:9:\"body_size\";i:14;s:17:\"widget_title_size\";i:56;s:9:\"menu_size\";i:14;s:13:\"mobile_header\";s:0:\"\";s:12:\"header_image\";s:74:\"http://trillcosby.wpengine.com/wp-content/uploads/2014/12/thetrillest1.jpg\";}','yes');
INSERT INTO `wp_options` VALUES (162,'widget_moesia_recent_posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (163,'widget_moesia_video_widget','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (164,'widget_moesia_contact_info','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (166,'limit_login_retries','a:1:{s:13:\"66.162.212.19\";i:1;}','no');
INSERT INTO `wp_options` VALUES (167,'limit_login_retries_valid','a:1:{s:13:\"66.162.212.19\";i:1420022203;}','no');
INSERT INTO `wp_options` VALUES (169,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (170,'_transient_is_multi_author','0','yes');
INSERT INTO `wp_options` VALUES (171,'_transient_moesia_categories','1','yes');
INSERT INTO `wp_options` VALUES (256,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1425121659;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip\";}}}','yes');
INSERT INTO `wp_options` VALUES (257,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (263,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.1.1\";s:7:\"version\";s:5:\"4.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1425121659;s:15:\"version_checked\";s:5:\"4.1.1\";s:12:\"translations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (340,'rewrite_rules','a:69:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (343,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (440,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1425121660;s:7:\"checked\";a:6:{s:6:\"moesia\";s:4:\"1.18\";s:15:\"skt-photo-world\";s:5:\"1.3.5\";s:13:\"twentyfifteen\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.2\";s:14:\"twentythirteen\";s:3:\"1.3\";s:12:\"twentytwelve\";s:3:\"1.5\";}s:8:\"response\";a:5:{s:6:\"moesia\";a:4:{s:5:\"theme\";s:6:\"moesia\";s:11:\"new_version\";s:4:\"1.24\";s:3:\"url\";s:35:\"https://wordpress.org/themes/moesia\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/moesia.1.24.zip\";}s:15:\"skt-photo-world\";a:4:{s:5:\"theme\";s:15:\"skt-photo-world\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/skt-photo-world\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/skt-photo-world.1.3.7.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfourteen\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.3.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentythirteen\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.1.4.zip\";}s:12:\"twentytwelve\";a:4:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:41:\"https://wordpress.org/themes/twentytwelve\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.1.6.zip\";}}s:12:\"translations\";a:0:{}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (20,9,'_wp_attached_file','2014/12/thetrillest1.jpg');
INSERT INTO `wp_postmeta` VALUES (21,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2014/12/thetrillest1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"thetrillest1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"thetrillest1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"project-image\";a:4:{s:4:\"file\";s:24:\"thetrillest1-350x250.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (22,9,'_wp_attachment_custom_header_last_used_moesia','1419979430');
INSERT INTO `wp_postmeta` VALUES (23,9,'_wp_attachment_is_custom_header','moesia');
INSERT INTO `wp_postmeta` VALUES (24,2,'_edit_lock','1419979205:2');
INSERT INTO `wp_postmeta` VALUES (25,2,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (26,10,'_wp_attached_file','2015/02/560191_10155141544795506_466178683974011204_n.jpg');
INSERT INTO `wp_postmeta` VALUES (27,10,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:621;s:4:\"file\";s:57:\"2015/02/560191_10155141544795506_466178683974011204_n.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"560191_10155141544795506_466178683974011204_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"560191_10155141544795506_466178683974011204_n-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"project-image\";a:4:{s:4:\"file\";s:57:\"560191_10155141544795506_466178683974011204_n-350x250.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-10-14 19:48:55','2014-10-14 19:48:55','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-10-14 19:48:55','2014-10-14 19:48:55','',0,'http://trillcosby.wpengine.com/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2014-10-14 19:48:55','2014-10-14 19:48:55','Hai Internets!','FlimFlamHamelCamel','','publish','open','open','','sample-page','','','2014-12-30 22:42:25','2014-12-30 22:42:25','',0,'http://trillcosby.wpengine.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,2,'2014-12-30 21:32:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-12-30 21:32:42','0000-00-00 00:00:00','',0,'http://trillcosby.wpengine.com/?p=3',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2014-12-30 22:19:37','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-12-30 22:19:37','0000-00-00 00:00:00','',0,'http://trillcosby.wpengine.com/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,2,'2014-12-30 22:38:13','2014-12-30 22:38:13','','thetrillest1','','inherit','open','open','','thetrillest1','','','2014-12-30 22:38:13','2014-12-30 22:38:13','',0,'http://trillcosby.wpengine.com/wp-content/uploads/2014/12/thetrillest1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (10,2,'2015-02-02 03:16:26','2015-02-02 03:16:26','','supernoo','','inherit','open','open','','560191_10155141544795506_466178683974011204_n','','','2015-02-02 03:16:47','2015-02-02 03:16:47','',0,'http://trillcosby.ninja/wp-content/uploads/2015/02/560191_10155141544795506_466178683974011204_n.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','wpengine');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','This is the \"wpengine\" admin user that our staff uses to gain access to your admin area to provide support and troubleshooting. It can only be accessed by a button in our secure log that auto generates a password and dumps that password after the staff member has logged in. We have taken extreme measures to ensure that our own user is not going to be misused to harm any of our clients sites.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (14,2,'nickname','trillcosby');
INSERT INTO `wp_usermeta` VALUES (15,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (16,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (17,2,'description','');
INSERT INTO `wp_usermeta` VALUES (18,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (19,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (20,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (21,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (22,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (23,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (24,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (25,2,'session_tokens','a:1:{s:64:\"7c257c4b10071eefda60216f767484b718c815b3fe3083b235701aa1a53a7f20\";a:4:{s:10:\"expiration\";i:1423019763;s:2:\"ip\";s:14:\"107.220.56.136\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36\";s:5:\"login\";i:1422846963;}}');
INSERT INTO `wp_usermeta` VALUES (26,2,'wp_dashboard_quick_press_last_post_id','3');
INSERT INTO `wp_usermeta` VALUES (27,2,'dismissed_wp_pointers','wp390_widgets,wp350_media');
INSERT INTO `wp_usermeta` VALUES (29,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (30,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (31,1,'wp_user-settings-time','1419978586');
INSERT INTO `wp_usermeta` VALUES (32,2,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (33,2,'wp_user-settings-time','1419979103');
INSERT INTO `wp_usermeta` VALUES (34,1,'session_tokens','a:2:{s:64:\"4d398184e6a639c152220260e2dc1d2ca7361aca3db7c01d61fa2709ffdc57e4\";a:4:{s:10:\"expiration\";i:1423861389;s:2:\"ip\";s:13:\"66.162.212.19\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36\";s:5:\"login\";i:1423688589;}s:64:\"cb89af9eb669a3c3ece1a358eb763266e77985128210f688f637806f4c580bf5\";a:4:{s:10:\"expiration\";i:1423861389;s:2:\"ip\";s:13:\"66.162.212.19\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36\";s:5:\"login\";i:1423688589;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$BLM1TMHMfrhC5XkCHQvt5MhfOWsJZo.','wpengine','bitbucket@wpengine.com','http://wpengine.com','2014-10-14 19:48:55','',0,'wpengine');
INSERT INTO `wp_users` VALUES (2,'trillcosby','$P$BbrwH/9s4gM924HWIueEoc1qgNp1g01','trillcosby','perez.koz@gmail.com','http://trillcosby.wpengine.com','2014-12-30 20:57:28','',0,'trillcosby');
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

-- Dump completed on 2015-03-02  4:37:46
