-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: superv
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,NULL,'admin','admin@gmail.com','admin','admin','64b893b1375a9.jpg','$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm',1,NULL,'2023-07-20 01:54:12'),(10,7,'delivery','delivery@gmail.com','Delivery','Manager','5f6c395833e14.jpg','$2y$10$658kJ38abUEn.d46DmYhQ.wNIy9fRE2TPDrNzeMODbxDWHWOwrqRS',1,'2020-09-24 00:14:48','2020-09-28 11:24:32'),(11,8,'kitchen','kitchen@gmail.com','Kitchen','Manager','60a934a18ff49.jpg','$2y$10$PTTKwbg5AEHm4BBVUaes1uhlx1eZKeTJzD7M5pIQjPrDmGYaVzul2',1,'2020-09-28 11:23:39','2021-05-23 01:43:13'),(12,9,'test','saifislamfci@gmail.com','Saiful Islam','Sharif','6402c0c90904c.jpg','$2y$10$7mmLn1fWdaYUkNQY8fEwY.QB6csIcv9WpFo5zLDvYy4UFZvuqq48W',1,'2023-03-04 03:53:45','2023-03-04 03:53:45');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
INSERT INTO `backups` VALUES (3,'2022-04-24-121935-dump-superv.sql','2022-04-24 06:19:35','2022-04-24 06:19:35'),(4,'2023-03-29-114729-dump-superv.sql','2023-03-29 05:47:29','2023-03-29 05:47:29'),(5,'2023-03-29-115159-dump-superv.sql','2023-03-29 05:51:59','2023-03-29 05:51:59'),(6,'2023-03-29-115326-dump-superv.sql','2023-03-29 05:53:26','2023-03-29 05:53:26'),(7,'2023-03-29-115431-dump-superv.sql','2023-03-29 05:54:32','2023-03-29 05:54:32'),(8,'2023-03-29-115433-dump-superv.sql','2023-03-29 05:54:33','2023-03-29 05:54:33'),(9,'2023-07-13-003250-dump-superv.sql','2023-07-13 05:32:50','2023-07-13 05:32:50'),(10,'2023-07-13-003526-dump-superv.sql','2023-07-13 05:35:26','2023-07-13 05:35:26');
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_extendeds`
--

DROP TABLE IF EXISTS `basic_extendeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_extendeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `cookie_alert_status` tinyint NOT NULL DEFAULT '1',
  `cookie_alert_text` blob,
  `cookie_alert_button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blogs_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_facebook_pexel` tinyint NOT NULL DEFAULT '0',
  `facebook_pexel_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_version` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `from_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint NOT NULL DEFAULT '0',
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_bg_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol` blob,
  `base_currency_symbol_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `hero_bg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_bold_text_font_size` int NOT NULL DEFAULT '60',
  `hero_section_bold_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text_font_size` int NOT NULL DEFAULT '18',
  `hero_section_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_text` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text_font_size` int NOT NULL DEFAULT '14',
  `hero_section_button_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FFFFFF',
  `hero_section_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_section_button2_text` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button2_text_font_size` int DEFAULT '14',
  `hero_section_button2_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_shape_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bottom_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_side_img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career_details_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_version` tinyint NOT NULL DEFAULT '1' COMMENT '1 - menu with col-6, 2 - menu with col-12',
  `qrcode_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qrcode_color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pusher_app_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_secret` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pusher_app_cluster` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_login` tinyint NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `facebook_app_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_app_secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_google_login` tinyint NOT NULL DEFAULT '1' COMMENT '1 - Active, 0 - Deactive',
  `google_client_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'UTC',
  `delivery_date_time_status` tinyint NOT NULL DEFAULT '0',
  `delivery_date_time_required` tinyint NOT NULL DEFAULT '0',
  `qr_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `qr_size` int NOT NULL DEFAULT '250',
  `qr_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_eye_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `qr_margin` int NOT NULL DEFAULT '0',
  `qr_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_text_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `qr_text_size` int NOT NULL DEFAULT '15',
  `qr_text_x` int NOT NULL DEFAULT '50',
  `qr_text_y` int NOT NULL DEFAULT '50',
  `qr_inserted_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_inserted_image_size` int NOT NULL DEFAULT '20',
  `qr_inserted_image_x` int NOT NULL DEFAULT '50',
  `qr_inserted_image_y` int NOT NULL DEFAULT '50',
  `qr_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  `order_close` tinyint NOT NULL DEFAULT '0' COMMENT '1 - order closed, 0 - order open',
  `order_close_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order is closed now!',
  `testimonial_side_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_two_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_author_designation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_water_shape_text_font_size` int DEFAULT NULL,
  `hero_section_water_shape_text_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_extendeds`
--

LOCK TABLES `basic_extendeds` WRITE;
/*!40000 ALTER TABLE `basic_extendeds` DISABLE KEYS */;
INSERT INTO `basic_extendeds` VALUES (150,179,1,_binary '<div><span style=\"font-family:Arial;\">Utilizamos cookies propias y de terceros para obtener datos estadísticos de la navegación de nuestros usuarios y mejorar nuestros servicios. Si acepta o continúa navegando, consideramos que acepta su uso. Puede cambiar la configuración u obtener más información</span><span style=\"font-size:17px;font-weight:700;font-family:Arial;\"><a href=\"/cookies-policy/11/page\">aquí</a></span><span style=\"font-family:Arial;font-size:17px;\">.</span></div>','Permitir Cookies','admin@rinconchami.pe','ltr','comida criolla, rincon chami, restaurante peruano, lima','Rincon Chami - Comida criolla peruana con 50 aÃ±os de tradiciÃ³n en Lima.',1,'<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->','default_service_category','admin@rinconchami.pe','Administracion',1,'smtpout.secureserver.net','587','TLS','admin@rinconchami.pe','z$5ru94Xng',NULL,NULL,NULL,'\"La auténtica receta del Rincón Chami\"',NULL,'1687222739.jpg','Our Special Offered Items Price','VIEW ALL MENU LIST','64ba036a70573.jpg','Reservación','Reserva tu Mesa','1683098625.png',_binary 'S/.','left','PEN','right',1.00,'651cfeecf3b61.jpg','Lomo Saltado',60,'FFFFFF','suculento plato fuerte, salteado de lomo fino, cebolla, tomate, cilantro acompañado de arroz y papas fritas y el secreto de la casa desde hace 50 años, no hay otro igual.',18,'FFFFFF','Ver mas platos',18,'000000','/menus','Pedir Ahora',14,'/reservation/form',NULL,NULL,'https://www.youtube.com/watch?v=ZDQn-9cdx9Q','64ac4656bd624.png','F.A.Q.','Career','Job Details','1600010997.jpg',2,'/menus','3851FF','1080494','bd457a6ed0c247922b06','019547a8751eec9b83af','ap2',0,'188100859706337','73dc84a95f12657de1b1ebaa6cc7ba94',1,'81856165251-cd0s41jcep43b3a33i3rc7pnp3jdvo0p.apps.googleusercontent.com','nLCYVG30u-bVIvhzSg-z52pi','America/Bogota',1,1,'64ae48bd2cb2f.png','18173D',297,'square','square',1,'Rincon Chami','114C05',14,50,50,'60a92611aca0a.png',7,50,50,'image',0,'Order is closed now!','1680940275.png','6432711301a4f.jpg','6432710879569.jpg','64adf53bf223a.jpeg','D3A971','',NULL,'','6412f4bbf028b.png','1678963129.png','1678948560.png','641a9269c1419.png','',50,'FFD854');
/*!40000 ALTER TABLE `basic_extendeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_extras`
--

DROP TABLE IF EXISTS `basic_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_extras` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `whatsapp_order_status_notification` tinyint NOT NULL DEFAULT '0' COMMENT '0 - disable, 1 - enable',
  `whatsapp_home_delivery` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_pickup` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `whatsapp_on_table` tinyint NOT NULL DEFAULT '0' COMMENT '0 - enabled, 1 - disabled',
  `twilio_sid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_extras`
--

LOCK TABLES `basic_extras` WRITE;
/*!40000 ALTER TABLE `basic_extras` DISABLE KEYS */;
INSERT INTO `basic_extras` VALUES (1,1,1,1,0,'','','');
/*!40000 ALTER TABLE `basic_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_settings`
--

DROP TABLE IF EXISTS `basic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `favicon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint NOT NULL COMMENT '0 - deactive, 1 - active',
  `preloader` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` blob,
  `intro_section_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_contact_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_mails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int NOT NULL DEFAULT '10',
  `contact_info_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_recaptcha` tinyint NOT NULL DEFAULT '0',
  `google_recaptcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint NOT NULL DEFAULT '1',
  `is_disqus` tinyint NOT NULL DEFAULT '1',
  `disqus_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_analytics` tinyint NOT NULL DEFAULT '1',
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - active, 0 - deactive',
  `maintenance_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ips` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_details_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint NOT NULL DEFAULT '1',
  `intro_section` tinyint NOT NULL DEFAULT '1',
  `testimonial_section` tinyint NOT NULL DEFAULT '1',
  `team_section` tinyint NOT NULL DEFAULT '1',
  `news_section` tinyint NOT NULL DEFAULT '1',
  `menu_section` int NOT NULL DEFAULT '1',
  `special_section` int NOT NULL DEFAULT '1',
  `instagram_section` int NOT NULL DEFAULT '1',
  `table_section` int NOT NULL DEFAULT '1',
  `top_footer_section` tinyint NOT NULL DEFAULT '1',
  `copyright_section` tinyint NOT NULL DEFAULT '1',
  `is_quote` tinyint NOT NULL DEFAULT '1',
  `office_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_appzi` tinyint NOT NULL DEFAULT '0',
  `appzi_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_addthis` tinyint NOT NULL DEFAULT '0',
  `addthis_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `token_no_start` int NOT NULL DEFAULT '1',
  `token_no` int NOT NULL DEFAULT '0',
  `postal_code` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enabled, 0 - disabled',
  `qr_call_waiter` tinyint NOT NULL DEFAULT '1',
  `website_call_waiter` tinyint NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `whatsapp_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chat with us on WhatsApp!',
  `whatsapp_popup_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whatsapp_popup` tinyint NOT NULL DEFAULT '1' COMMENT '1 - enable, 0 - disable',
  `feature_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_section_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_button_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_video_button_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_video_button_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_highlight_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intro_section_bg_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_author_designation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bg_color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_top_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_bottom_shape_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'multipurpose',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_settings`
--

LOCK TABLES `basic_settings` WRITE;
/*!40000 ALTER TABLE `basic_settings` DISABLE KEYS */;
INSERT INTO `basic_settings` VALUES (156,179,'651b6d9a40cb0.png','651b6d58b2cbd.png',1,'651b6bcf5bd72.png','Rincon Chami','FF6000','0A3041','admin@rinconchami.pe','4444511','64b73c9c4eb5c.jpg','651b6e10e7c94.png','50 años sazonando generaciones.','Subscribe to gate Latest News, Offer and connect With Us.',_binary 'Copyright © 2023. Todos los derechos reservados Rincon Chami S.R.L.  with ❤️ @isometric_s','Our Story','RESTAURANTES CRIOLLOS ATENDIENDO DESDE HACE 54 AÑOS','Durante generaciones hemos satisfecho los paladares mas exigentes  con los mejores platos insignia de nuestro querido Perú.','Our 24/7 Phone Services','555 666 999 00','64607433ed3e4.jpg','5f5b0ee606923.png','','64bf360a310cf.jpg','Our Team','Our Expert Members','Deja tus datos y nos pondremos en contacto','Calle Esperanza 154 - Miraflores |\r\nAv. Alfredo Benavides 2360 - Miraflores','(01) 4444511,WhatsApp: 931 278 037','admin@rinconchami.pe','Tambien puedes acercarte a nuestros locales','-12.120251384596678','-77.02806355899732',0,'Información','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5f5e445f4704467e89ee918d/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>',1,'6LckEBInAAAAAE2tipGbvMvekNMyeaB81gstqTGk','6LckEBInAAAAAOdlmnVyBe-XudDwK4wh9343Qbgl',0,0,'<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://superv-1.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>',0,0,'El sitio se encuentra en mantenimiento, vuelve luego :)','check','Que dicen nuestros clientes','Novedades','Latest News Feeds','Blog','Detalles Blog','Galeria','Nuestro equipo','Contáctanos','La Carta','Reservación','Delivery Online','Detalles','Carrito','CheckOut','404 Te perdiste!','video',0,1,1,0,1,0,0,1,1,1,1,1,'Lunes a Domingo de  9AM - 11 PM',0,'<!-- Appzi: Capture Insightful Feedback -->\r\n<script async src=\"https://w.appzi.io/w.js?token=p5cpm\"></script>\r\n<!-- End Appzi -->',0,'<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e74e0cf10c08cfa\"></script>',1,183,0,0,0,1,'+51931278037','Escribenos por WhatsApp!',NULL,1,'Nuestros Principales platos Criollos y Marinos','Lo que dicen nuestros comensales','Descubre nuestros platos criollos y marinos','','',NULL,'','Ver Video','Mas de 50 aÃ±os sazonando generaciones con la autentica receta criolla.',NULL,NULL,'','','64313d1503aa7.png','641ea69a4b116.png','62401A','64ae167458c2d.jpg','64ae1acd66bd4.png','coffee');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bcategories`
--

DROP TABLE IF EXISTS `bcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcategories`
--

LOCK TABLES `bcategories` WRITE;
/*!40000 ALTER TABLE `bcategories` DISABLE KEYS */;
INSERT INTO `bcategories` VALUES (13,179,'DIAS FESTIVOS',1,1);
/*!40000 ALTER TABLE `bcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `bcategory_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (75,179,13,'Dia de la Cancion Criolla','Dia-de-la-Cancion-Criolla','1689226106.png',_binary '<p><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">La celebración fue establecida, por resolución suprema del 18 de octubre de 1944, para ser celebrada el </span><a href=\"https://es.wikipedia.org/wiki/31_de_octubre\" title=\"31 de octubre\">31 de octubre</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\"> de cada año,</span><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-1\">1</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">​</span><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-2\">2</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">​ de forma que coincidiera con la festividad del </span><a href=\"https://es.wikipedia.org/wiki/Se%C3%B1or_de_los_Milagros_(Lima)\" title=\"Señor de los Milagros (Lima)\">Señor de los Milagros</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">.</span><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-:0-3\">3</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">​ La misma fue promulgada por el </span><a href=\"https://es.wikipedia.org/wiki/Primer_gobierno_de_Manuel_Prado_Ugarteche\" title=\"Primer gobierno de Manuel Prado Ugarteche\">presidente</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\"> </span><a href=\"https://es.wikipedia.org/wiki/Manuel_Prado_Ugarteche\" title=\"Manuel Prado Ugarteche\">Manuel Prado Ugarteche</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\"> y el </span><a href=\"https://es.wikipedia.org/wiki/Ministro_de_Educaci%C3%B3n_del_Per%C3%BA\" title=\"Ministro de Educación del Perú\">Ministro de Educación</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\"> </span><a href=\"https://es.wikipedia.org/wiki/Pedro_M._Oliveira\" title=\"Pedro M. Oliveira\">Pedro M. Oliveira</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">.</span><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-4\">4</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">​</span><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-5\">5</a><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">​ Además fue promovida por Carlos A. Saco, quien fue director del diario </span><i><a href=\"https://es.wikipedia.org/wiki/El_Comercio_(Per%C3%BA)\" title=\"El Comercio (Perú)\">El Comercio</a></i><span style=\"color:rgb(32,33,34);font-family:sans-serif;\">.</span><i><a href=\"https://es.wikipedia.org/wiki/D%C3%ADa_de_la_Canci%C3%B3n_Criolla#cite_note-:32-6\">6</a>​</i><br></p>',NULL,NULL,NULL,1,'2023-07-13 05:28:28','2023-07-15 04:56:35');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottomlinks`
--

DROP TABLE IF EXISTS `bottomlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottomlinks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottomlinks`
--

LOCK TABLES `bottomlinks` WRITE;
/*!40000 ALTER TABLE `bottomlinks` DISABLE KEYS */;
INSERT INTO `bottomlinks` VALUES (19,179,'Nuestra Historia','/Historia/5/page',NULL,NULL),(20,179,'Libro de Reclamaciones','/librodereclamaciones/10/page',NULL,NULL),(21,179,'Politica de Cookies','/cookies-policy/11/page',NULL,NULL);
/*!40000 ALTER TABLE `bottomlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percentage, fixed',
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (2,'KHABO60','KHABO60','fixed',60.00,'12/24/2020','12/30/2020',180.00,'2020-12-23 02:23:36','2020-12-23 02:23:36'),(3,'Victory Day','BIJOY16','percentage',16.00,'12/16/2020','01/07/2021',10.00,'2020-12-23 02:32:55','2020-12-24 04:54:59'),(4,'Special','Special14','percentage',14.00,'12/29/2020','01/09/2021',400.00,'2020-12-23 03:54:07','2020-12-24 08:54:42'),(5,'Shop Manager','123456789','percentage',10.00,'04/01/2023','05/31/2023',1.00,'2023-05-04 04:33:42','2023-05-04 04:33:42');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (15,'qweqwe','trevorcalfan2@gmail.com','946896855',NULL,'2023-07-22 04:52:41','2023-07-22 05:02:29'),(28,'ewtwet','werwer@qwerwewe','233333',NULL,'2023-07-31 15:50:34','2023-07-31 15:50:34'),(29,'qwqqwd','qwrqwr@qwqwr','588545',NULL,'2023-07-31 15:51:36','2023-07-31 15:51:36');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_body` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (2,'email_verification','Verify Your Email',_binary '<p style=\"line-height: 1.6;\">Hello<b> {customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Please click the link below to verify your email.</p><p>{verification_link}</p><p><br></p><p>Best Regards,</p><p>{website_title}</p>'),(3,'order_received','Order Received',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been received.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(4,'order_preparing','Preparing Your Order',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Chef has started preparing your ordered foods.<br>Order Number:&nbsp; #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(5,'order_ready_to_pickup','Your Order is Ready to Pickup',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order is ready to pickup. Our delivery man will pick up the order soon.<br>Order Number:&nbsp; #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(6,'order_ready_to_pickup_pick_up','Your order is ready to pick up',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order is ready to pickup. Please pickup your order at your chosen date & time.<br>Order Number:&nbsp; #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(7,'order_pickedup','Order has been pickedup',_binary '<p>Hello {customer_name},</p><p><br>Your order is picked up for delivery. It will be arrived in a few moments.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(8,'order_pickedup_pick_up','You have picked up Ordered Food',_binary '<p>Hello {customer_name},</p><p><br>Your have picked up your ordered Food.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(9,'order_delivered','Order has been Delivered',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been delivered.<br>Order Number: #{order_number}</p><p style=\"line-height: 1.6;\"><br>Please click on the below link to see your order details.<br>{order_link}</p><p style=\"line-height: 1.6;\"><br></p><p>Best Regards,<br>{website_title}</p>'),(10,'order_cancelled','Order is Cancelled',_binary '<p style=\"line-height: 1.6;\">Hello <b>{customer_name}</b>,</p><p style=\"line-height: 1.6;\"><br>Your order has been cancelled.<br>Order Number: {order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br><b>{website_title}</b></p>'),(11,'order_ready_to_serve','Your order is ready to serve on table',_binary '<p>Hello {customer_name},</p><p><br>Your order is ready to serve on table. Waiter will server the order in a moment.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(12,'order_served','You order is served on table',_binary '<p>Hello {customer_name},</p><p><br>Your order is served on your table. Enjoy your Food.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(13,'food_checkout','Order has been placed',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>Your order has been placed successfully. We have attached an invoice in this mail.<br>Order Number: #{order_number}</p><p><br>Please click on the below link to see your order details.<br>{order_link}</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(14,'reservation_accept','Reservation Request Accepted',_binary '<p>Hello {customer_name},</p><p><br>You reservation request has been accepted.</p><p><br></p><p>Best Regards,<br>{website_title}</p>'),(15,'reservation_reject','Reservation Request Rejected',_binary '<p style=\"line-height: 1.6;\">Hello {customer_name},</p><p style=\"line-height: 1.6;\"><br>You reservation request has been rejected.</p><p><br></p><p>Best Regards,<br>{website_title}</p>');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (52,179,'1689016158.png','Ensalada Chami',1,NULL,NULL);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guests_endpoint_unique` (`endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (3,'https://fcm.googleapis.com/fcm/send/dRDyV7OmiFg:APA91bHVyRIr4Fex43DVFIM_CC6Ldo9hieQFcgewtgoLNGfK_fpIzFgGAAP_INoOTjnmOzSjg5K1qJUKKLefZuz5uQBj3YFFuyREw5YqWVQt7AJTeAfo-bfiFEz6-BytS3JoYseML_wt','2020-12-26 07:38:28','2020-12-26 07:38:28'),(4,'https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X','2020-12-26 10:04:17','2020-12-26 10:04:17'),(5,'https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy','2021-03-24 07:37:03','2021-03-24 07:37:03'),(6,'https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8','2021-03-26 11:47:44','2021-03-26 11:47:44'),(7,'https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc','2021-04-03 00:02:31','2021-04-03 00:02:31'),(8,'https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ','2021-04-16 11:36:28','2021-04-16 11:36:28'),(9,'https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX','2021-05-06 09:40:57','2021-05-06 09:40:57'),(10,'https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy','2021-05-23 00:31:34','2021-05-23 00:31:34'),(11,'https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw','2022-03-08 11:07:58','2022-03-08 11:07:58'),(12,'https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ','2022-03-25 09:37:15','2022-03-25 09:37:15'),(13,'https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS','2022-03-25 15:10:08','2022-03-25 15:10:08'),(14,'https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc','2022-03-26 05:55:51','2022-03-26 05:55:51'),(15,'https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3','2022-03-26 06:11:44','2022-03-26 06:11:44'),(16,'https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv','2022-03-26 06:11:59','2022-03-26 06:11:59'),(17,'https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt','2022-03-26 06:33:01','2022-03-26 06:33:01'),(18,'https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa','2022-03-28 13:24:40','2022-03-28 13:24:40'),(19,'https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x','2022-03-29 07:23:02','2022-03-29 07:23:02'),(20,'https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz','2022-03-29 07:26:21','2022-03-29 07:26:21'),(21,'https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ','2022-03-29 09:33:41','2022-03-29 09:33:41'),(22,'https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M','2022-03-29 09:49:54','2022-03-29 09:49:54'),(23,'https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x','2022-03-29 11:31:26','2022-03-29 11:31:26'),(24,'https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO','2022-04-04 14:22:56','2022-04-04 14:22:56'),(25,'https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi','2022-04-06 14:45:27','2022-04-06 14:45:27'),(26,'https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF','2022-05-25 12:10:23','2022-05-25 12:10:23'),(27,'https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7','2023-04-10 05:35:33','2023-04-10 05:35:33'),(28,'https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK','2023-04-10 07:46:43','2023-04-10 07:46:43'),(29,'https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7','2023-05-30 10:54:57','2023-05-30 10:54:57');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intro_points`
--

DROP TABLE IF EXISTS `intro_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intro_points` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro_section_rating_point` int DEFAULT NULL,
  `intro_section_rating_symbol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intro_points`
--

LOCK TABLES `intro_points` WRITE;
/*!40000 ALTER TABLE `intro_points` DISABLE KEYS */;
INSERT INTO `intro_points` VALUES (3,176,'fab fa-accessible-icon','100% Pure Food','We provide 100& Pure & handmade foods',2,NULL,NULL,74,'%'),(7,177,'fab fa-accusoft','اطلب الان','اطلب الاناطلب الانلصفح',2,NULL,NULL,NULL,NULL),(8,177,'fab fa-accessible-icon','اطلب الان','اطلب الاناطلب الاناطلب الان',3,NULL,NULL,NULL,NULL),(9,176,'fab fa-accusoft','100% Pure Foods','We provide 100& Pure & handmade foods',10,NULL,NULL,100,'%'),(19,176,'fab fa-accessible-icon','111',NULL,10,NULL,NULL,10000,'%');
/*!40000 ALTER TABLE `intro_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jcategories`
--

DROP TABLE IF EXISTS `jcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jcategories`
--

LOCK TABLES `jcategories` WRITE;
/*!40000 ALTER TABLE `jcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jcategory_id` int DEFAULT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibilities` blob,
  `employment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_requirements` blob,
  `experience_requirements` blob,
  `additional_requirements` blob,
  `job_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` blob,
  `benefits` blob,
  `read_before_apply` blob,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT '1',
  `rtl` tinyint NOT NULL DEFAULT '0' COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (179,'español','es',1,0,'2023-06-19 00:54:57','2023-07-13 05:04:23');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `menus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (151,179,'[{\"text\":\"Cartas\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"menu_1\"},{\"text\":\"Historia\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"5\"},{\"text\":\"Locales\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"6\",\"children\":[{\"text\":\"Esperanza\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"13\"},{\"text\":\"Benavides\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"7\"}]},{\"text\":\"Galeria\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"gallery\"},{\"text\":\"Rappi\",\"href\":\"https://www.rappi.com.pe/restaurantes/52373-rinconchami\",\"icon\":\"empty\",\"target\":\"_top\",\"title\":\"\",\"type\":\"custom\"},{\"text\":\"Contáctanos\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"},{\"text\":\"Únete\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"career\"}]','2023-10-23 15:03:18','2023-10-23 15:03:18');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_04_10_155226_add_pos_to_serving_methods',1),(5,'2021_04_10_161129_create_pos_payment_methods',2),(6,'2021_04_11_075502_create_customers_table',3),(7,'2021_04_11_151305_create_tables_table',4),(8,'2021_04_16_175547_add_qr_image_to_tables',5),(10,'2021_04_16_184950_add_qr_cols_to_table',6),(11,'2021_05_06_172702_add_image_to_tables',7),(12,'2021_05_06_182658_add_image_size_to_tables',8),(13,'2021_05_07_141846_change_defailt_image_size',9),(14,'2021_05_07_165729_drop_background_color_from_tables',10),(15,'2021_05_07_170622_add_image_position_cols_to_tables',11),(17,'2021_05_08_104914_add_type_and_text_cols_to_tables',12),(18,'2021_05_08_113457_add_default_value_to_text_color_in_tables',13),(19,'2021_05_08_174437_add_default_value_to_text_size_in_tables',14),(20,'2021_05_08_194033_add_qr_image_cols_to_basic_extendeds',15),(21,'2021_05_10_155349_add_gateway_type_to_product_orders',16),(24,'2021_05_11_180827_add_token_no_in_basic_settings',17),(25,'2021_05_11_181941_add_token_no_after_order_number_in_product_orders',17),(28,'2021_05_13_083313_create_postal_codes_table',18),(29,'2021_05_13_101831_add_postal_code_to_basic_settings',19),(32,'2021_05_16_105019_add_postal_code_to_product_orders',20),(33,'2021_05_18_130916_add_call_waiter_status_to_basic_settings',21),(34,'2021_05_18_194729_add_contact_infos_to_basic_settings',22),(36,'2021_05_19_081335_create_popups_table',23),(37,'2021_05_19_122217_drop_announcement_cols_from_basic_settings',24),(38,'2021_05_19_125220_drop_parent_link_col_from_basic_settings',25),(40,'2021_05_19_125534_add_whatsapp_chat_cols_to_basic_settings',26),(41,'2021_05_20_120604_add_order_close_cols_to_basic_extendeds',27),(42,'2022_03_13_165621_create_psub_categories_table',28),(43,'2022_03_13_180650_add_subcategory_id_to_products_table',28),(44,'2022_03_17_131144_add_free_delivery_amount_to_postal_codes',29),(45,'2022_03_17_194525_add_free_delivery_amount_to_shipping_charges',30),(46,'2022_04_18_133021_create_basic_extras',31),(49,'2022_04_19_155032_add_country_code_to_users_table',32),(51,'2022_04_21_120742_add_country_code_in_product_orders',33),(52,'2022_04_23_124847_add_whatsapp_order_notification_based_on_serving_methods',34),(53,'2022_04_23_144354_add_twilio_credentials_in_basic_extras',35),(54,'2022_05_25_195401_add_is_feature_in_psub_categories',36),(65,'2023_03_04_165637_create_intro_points_table',37),(66,'2023_03_05_124128_create_titles_table',37),(67,'2023_03_05_132538_add_column_to_basic_settings',38),(69,'2023_03_05_161748_add_column_testimonial_side_image_to_basic_extendeds',39),(71,'2023_03_05_171212_add_column_testimonial_section_text_to_basic_settings_table',40),(72,'2023_03_05_173430_add_column_category_section_title_and_special_section_title_to_basic_settings_table',41),(73,'2023_03_06_105842_add_column_background_image_to_basic_extendeds',42),(74,'2023_03_11_160511_add_column_hero_section_button_two_color_to_basic_extendeds',43),(76,'2023_03_11_163039_add_column_hero_section_autor_name_to_basic_extendeds',44),(77,'2023_03_13_103439_add_column_pricing_to_basic_extendeds',45),(84,'2023_03_13_130121_add_column_intro_to_basic_settings',46),(85,'2023_03_13_132216_add_column_rating_to_intro_points',46),(86,'2023_03_14_102250_add_column_intro_bg_image_to_basic_extendeds',47),(87,'2023_03_14_111304_alter_column_testimonial_bg_img_to_basic_extendeds',48),(89,'2023_03_14_130444_remove_column_special_section_title_to_basic_settings',49),(90,'2023_03_16_121332_add_column_top_bottom_shape_to_basic_extendeds',50),(91,'2023_03_16_161727_add_column_intro_section_shape_image_to_basic_settings',51),(93,'2023_03_20_110357_add_column_intro_section_coffee_theme_to_basic_settings',52),(94,'2023_03_22_111823_add_column_blog_section_bg_image_basic_extendeds',53),(95,'2023_03_25_145040_alter_column_hero_section_button_2_text_font_size_to_basic_extendeds',54),(96,'2023_03_30_130615_ad_column_water_shape_to_basic_extededs',55),(97,'2023_04_09_123201_alter_column_maintainance_to_basic_settings',56),(98,'2023_04_11_112615_delete_column_intro_section_button_font_size_and_intro_section_button_text_color_to_basic_settings',57),(99,'2023_04_11_124905_delete_column_to_hero_section_starting_price_and_hero_section_ending_price_to_basic_extendeds',58),(100,'2023_05_02_131139_alter_column_intro_title_to_basic_settings',59),(101,'2023_05_25_124230_add_colum_theme_to_basic_settings',60);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_gateways`
--

DROP TABLE IF EXISTS `offline_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `is_receipt` tinyint NOT NULL DEFAULT '1',
  `receipt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_gateways`
--

LOCK TABLES `offline_gateways` WRITE;
/*!40000 ALTER TABLE `offline_gateways` DISABLE KEYS */;
INSERT INTO `offline_gateways` VALUES (1,'Offline Gateway 1','Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678',_binary '<p style=\"line-height: 1.8;\"><font face=\"CircularStd-Book, Arial, sans-serif\">Chase Bank is the consumer banking division of JPMorgan Chase. Unlike its competitors, Chase is taking steps to expand its branch network in key markets. The bank currently has nearly 5,000 branches and 16,000 ATMs. According to the bank, nearly half of the country’s households are Chase customers.</font><br></p>',0,1,1,NULL,'2020-09-17 01:06:39','2023-07-23 03:06:24'),(2,'Offline Gateway 2','Please send your payment to the following account.\r\nBank Name: Lorem Ipsum.\r\nBeneficiary Name: John Doe.\r\nAccount Number/IBAN: 12345678',_binary '<p style=\"line-height: 1.8;\"><span style=\"font-family: CircularStd-Book, Arial, sans-serif; font-size: 14px;\">Bank of America serves about 66 million consumers and small business clients worldwide. Like many of the biggest banks, Bank of America is known for its digital innovation. It has more than 37 million digital clients and is experiencing success after introducing its virtual assistant, Erica, that assists account holders with various tasks</span><br></p>',0,2,0,NULL,'2020-09-17 01:07:37','2023-07-23 03:06:26'),(3,'Cash On Delivery',NULL,_binary '<p><br></p>',0,3,0,NULL,'2020-09-17 02:05:36','2023-07-23 03:06:22');
/*!40000 ALTER TABLE `offline_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `addons` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `addons_price` decimal(11,2) NOT NULL,
  `product_price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (20,20,72,20,'Torta de Chocolate',1,'1689828817.jpg','\"\"','\"\"',0.00,0.00,10.00,10.00,'2023-07-31 15:50:34',NULL),(21,21,72,20,'Torta de Chocolate',1,'1689828817.jpg','\"\"','\"\"',0.00,0.00,10.00,10.00,'2023-07-31 15:51:36',NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_times`
--

DROP TABLE IF EXISTS `order_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_times`
--

LOCK TABLES `order_times` WRITE;
/*!40000 ALTER TABLE `order_times` DISABLE KEYS */;
INSERT INTO `order_times` VALUES (1,'monday','8:00 AM','9:00 PM'),(2,'tuesday','10:00 AM','10:30 PM'),(3,'wednesday','12:00 AM','11:59 PM'),(4,'thursday','8:00 AM','11:59 PM'),(5,'friday','4:00 PM','11:55 PM'),(6,'saturday','12:00 AM','11:59 PM'),(7,'sunday','2:21 PM','4:19 PM');
/*!40000 ALTER TABLE `order_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint NOT NULL DEFAULT '1',
  `serial_number` int NOT NULL DEFAULT '0',
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (5,179,'Historia','Nuestra Historia','desde hace 50 años','Historia',_binary 'hola esta es la historia del chami',1,4,'historia,rincon chami',NULL,'2023-07-08 03:58:19','2023-07-08 03:58:19'),(6,179,'Locales','Visita nuestros Locales','con la misma sazón y cariño','Locales',_binary '<p><br></p>',1,5,'locales,rincon chami,lince,miraflores,benavides,calle esperanza',NULL,'2023-07-10 14:43:28','2023-07-10 14:43:28'),(7,179,'benavides','Local Benavides','Av. Alfredo Benavides 2360, Miraflores','benavides',_binary '<p><br></p>',1,6,'rincon chami,av alfredo benavides 2360,locales,comida criolla,miraflores',NULL,'2023-07-10 14:53:47','2023-07-22 03:48:54'),(8,179,'Lince','Local Lince','Jr. Francisco de Zela 1701, Lince','Lince',_binary '<p><br></p>',1,7,'rincon chami,lince,jr francisco de zela 1701,comida criolla',NULL,'2023-07-10 14:55:00','2023-08-28 01:53:22'),(9,179,'la carta','La Carta','Descubre nuestra carta','la-carta',_binary '<p><br></p>',1,9,'carta,rincon chami,lince,miraflores,benavides,comida criolla,delivery',NULL,'2023-07-10 21:34:00','2023-07-12 02:53:17'),(10,179,'librodereclamaciones','Libro de Reclamaciones','Libro de Reclamaciones','librodereclamaciones',_binary '<p><br></p>',1,8,'libro de reclamaciones,virtual,rincon chami',NULL,'2023-07-22 02:16:35','2023-07-22 03:17:09'),(11,179,'cookies policy','Politica de Cookies','Politica de Cookies','cookies-policy',_binary 'POLÍTICA DE PRIVACIDAD GENERAL<p style=\"color:rgb(33,37,41);font-family:\'-apple-system\', BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;\">Por medio del presente documento, el Grupo de “Punto Azul” pone a disposición de los usuarios su Política de Privacidad, la cual se encuentra en armonía con la normativa vigente sobre protección de Datos Personales (Ley N° 29733 y Decreto Supremo 003-2013-JUS). A continuación, se señalan las finalidades de tratamiento de la información que usted nos ha suministrado, quiénes son los encargados de tratarla, el tiempo de almacenamiento en nuestras Bases de Datos, las medidas de seguridad, y los medios para ejercer sus derechos como titular de los Datos Personales.</p><ol><li><span style=\"font-weight:bolder;\">¿Qué información recopilamos?</span><br><br><p>Recolectamos la siguiente información personal:</p><ul><li>Respecto de los datos personales de nuestros Clientes: nombre, apellidos, teléfono, correo electrónico y dirección.</li><li>Respecto a los datos personales de nuestros Usuarios Web: nombre, apellidos, teléfono, correo electrónico y dirección.</li><li>Respecto de los Datos de Quejas y Reclamos: nombres, apellidos, domicilio, teléfono y correo electrónico.</li></ul><br><p>Cabe resaltar que para crear un Usuario en nuestra Página Web únicamente hará falta que la persona consigne su correo electrónico y contraseña.</p><br></li><li><span style=\"font-weight:bolder;\">¿Por cuánto tiempo almacenamos su información?</span><br><br><p>Es importante señalar que el plazo de almacenamiento de datos es indeterminado. Sin embargo, en la política de privacidad correspondiente a cada sección se consigna esta precisión.</p><br></li><li><span style=\"font-weight:bolder;\">¿Cómo protegemos su información?</span><br><br><p>La Página Web de Punto Azul ha adoptado todas las medidas técnicas, legales y organizacionales necesarias para garantizar la seguridad y el adecuado procesamiento de sus datos personales; así como para evitar cualquier manipulación indebida, pérdida accidental, destrucción o acceso no autorizado de terceros.</p><p>Asimismo, cumplimos con todas las medidas estrictamente necesarias respecto del flujo transfroterizo de datos, conforme al artículo 15 de la Ley N° 29733.</p><p>Hacemos de su conocimiento que su información no será comercializada, transferida ni compartida sin su autorización y para fines ajenos a los que se describen a continuación.</p><br></li><li><span style=\"font-weight:bolder;\">¿Con qué finalidad utilizamos su información?</span><br><br><p>Los datos personales que usted nos proporciona serán utilizados para las siguientes finalidades:</p><ul><li>Respecto de los datos personales de nuestros Clientes/Usuarios Web:<ul><li>Procesar la compra realizada en virtud de la relación de consumo entablada con Punto Azul.</li><li>Establecer un canal de comunicación con Punto Azul para informarle sobre el estado de su pedido u otra información relacionada a este.</li><li>Incorpóralo en el historial de ventas de Punto Azul para fines estadísticos e históricos.</li><li>Establecer un medio de comunicación para atender sus consultas, preguntas, quejas, reclamos.</li><li>Remitir promociones, beneficios, concursos, ofertas y, en general, publicidad sobre los productos y servicios de Punto Azul.</li><li>Obtener información de fuentes de acceso públicas y privadas para fines de perfilamiento.</li></ul></li><li>Respecto de los Datos de Quejas y Reclamos:<ul><li>Establecer un medio de comunicación para dar respuesta a las solicitudes de gestión, quejas y reclamos que han sido registrado por el usuario y/o consumidor.</li><li>Llevar un registro de las personas que presentan reclamos y quejas a través del Libro de Reclamaciones con el propósito de cumplir con las normas de protección al consumidor.</li></ul></li></ul><br></li><li><span style=\"font-weight:bolder;\">¿Quién tiene acceso a su información?</span><br><br><p>Usted nos autoriza a que podamos compartir y encargar el tratamiento de su información personal con terceros que nos prestan servicios para mejorar nuestras actividades. En estos casos, garantizará que el tratamiento de sus datos se limite a las finalidades antes autorizadas y que se mantenga confidencialidad y se implementen las medidas de seguridad adecuadas.</p><p>Cabe recalcar que la Página Web de Punto Azul cumple con todas las políticas y regulaciones respecto del flujo transfronterizo de datos personales, conforme a la Ley de Protección de Datos Personales.</p><br></li><li><span style=\"font-weight:bolder;\">¿Cómo puede ejercer sus derechos como titular de Datos Personales?</span><br><br><p>Punto Azul reconoce y garantiza el ejercicio de los derechos de acceso, rectificación, cancelación, oposición, información o revocación que por ley le asisten. Para ejercer los derechos antes mencionados podrá remitir un correo electrónico con el asunto \"Derechos Datos Personales\" a la siguiente dirección: servicioalcliente@puntoazulrestaurante.com.</p><p>En dicho correo deberá consignar la siguiente información:</p><ul><li>Nombre, apellidos, documento nacional de identidad, correo electrónico y dirección.</li><li>Indicar el tipo de solicitud que desea realizar: Acceso, Rectificación, Cancelación u Oposición. Asimismo, señalar claramente la información a la que desea acceder, rectificar, cancelar o respecto de la cual desea formular oposición.</li><li>Podrá adjuntar un documento en el cual desarrolle su solicitud. (formato pdf)</li></ul><p>En caso, considere que no ha sido atendido, podrá presentar una reclamación ante la Autoridad Nacional de Protección de Datos Personales, dirigiéndose a la Mesa de Partes del Ministerio de Justicia y Derechos Humanos ubicado en Calle Scipión Llona N° 350, Miraflores, Lima, Perú.</p><br></li><li><span style=\"font-weight:bolder;\">¿Cómo es el tratamiento de Cookies en nuestra Página Web?</span><br><br><p>La Página Web de Punto Azul hace uso de cookies con el fin de mejorar el servicio brindado al cliente y/o usuario que hace uso de ella.</p><p>En este sitio web usamos las cookies para: a) asegurar que la página web puede funcionar correctamente y b) recopilar información estadística anónima, como qué páginas has visto o cuánto tiempo has estado en el sitio web.</p><p>La política de cookies que emplea nuestra Página Web cumple en rigurosidad con la normativa vigente de protección de datos (Ley N° 29733 y Decreto Supremo 003-2013-JUS).</p><br></li><li><span style=\"font-weight:bolder;\">Actualizaciones de la presente política de privacidad</span><br><br><p>Con motivo de la mejora continua de nuestros procesos, la Página Web de Punto Azul podrá realizar correcciones y actualizaciones a esta Política de Privacidad. Por favor, verifique estos términos regularmente para consultar los cambios que puedan haber existido y de qué manera le pueden afectar.</p></li></ol>',1,3,'politica de cookies,rincon chami',NULL,'2023-07-24 11:15:18','2023-07-24 11:15:58'),(12,179,'rappi','rappi','rappi','rappi',_binary '<p><br></p>',1,10,'rincon chami rappi',NULL,'2023-08-21 14:37:27','2023-08-21 14:37:27'),(13,179,'esperanza','Local Esperanza','Calle Esperanza 154 - Miraflores','esperanza',_binary '<p>Esperanza</p>',1,11,'local esperanza,rincon chami,miraflores,comida criolla',NULL,'2023-10-23 01:03:35','2023-10-23 01:03:35');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateways`
--

LOCK TABLES `payment_gateways` WRITE;
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` VALUES (6,NULL,NULL,NULL,'Flutterwave','automatic','{\"text\": \"Pay via your Flutterwave account.\"}','flutterwave',0),(9,NULL,NULL,NULL,'Razorpay','automatic','{\"text\": \"Pay via your Razorpay account.\"}','razorpay',0),(11,NULL,NULL,NULL,'Paytm','automatic','{\"text\": \"Pay via your paytm account.\"}','paytm',0),(12,NULL,NULL,NULL,'Paystack','automatic','{\"text\": \"Pay via your Paystack account.\"}','paystack',0),(13,NULL,NULL,NULL,'Instamojo','automatic','{\"text\": \"Pay via your Instamojo account.\"}','instamojo',0),(14,NULL,NULL,NULL,'Stripe','automatic','{\"text\": \"Pay via your Credit account.\"}','stripe',0),(15,NULL,NULL,NULL,'Paypal','automatic','{\"text\": \"Pay via your PayPal account.\"}','paypal',1),(17,NULL,NULL,NULL,'Mollie Payment','automatic','{\"text\": \"Pay via your Mollie Payment account.\"}','mollie',0),(18,NULL,NULL,NULL,'PayUmoney','automatic','{\"text\": \"Pay via your PayUmoney account.\"}','payumoney',1),(19,NULL,NULL,NULL,'Mercado Pago','automatic','{\"text\": \"Pay via your Mercado Pago account.\"}','mercadopago',1);
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcategories`
--

DROP TABLE IF EXISTS `pcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `is_feature` int DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcategories`
--

LOCK TABLES `pcategories` WRITE;
/*!40000 ALTER TABLE `pcategories` DISABLE KEYS */;
INSERT INTO `pcategories` VALUES (16,179,'Entradas','Entradas','64b7765e38486.png',1,1,0.00,'2023-06-19 04:33:13','2023-07-19 05:36:30'),(17,179,'Fondos','Fondos','64b777e739319.png',1,1,0.00,'2023-07-12 02:29:33','2023-07-19 05:43:03'),(18,179,'Postres','Postres','64b777f2ed4fa.png',1,1,0.00,'2023-07-12 02:31:04','2023-07-19 05:43:14'),(19,179,'Bebidas','Bebidas','64b996d6eefad.png',0,1,0.00,'2023-07-20 20:19:34','2023-09-11 20:59:02');
/*!40000 ALTER TABLE `pcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_opacity` decimal(8,2) NOT NULL DEFAULT '1.00',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delay` int NOT NULL DEFAULT '1000' COMMENT 'in milisconds',
  `serial_number` int NOT NULL DEFAULT '0',
  `type` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `popups_language_id_foreign` (`language_id`),
  CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popups`
--

LOCK TABLES `popups` WRITE;
/*!40000 ALTER TABLE `popups` DISABLE KEYS */;
/*!40000 ALTER TABLE `popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pos_payment_methods`
--

DROP TABLE IF EXISTS `pos_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pos_payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL COMMENT '1 - active, 0 - deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pos_payment_methods`
--

LOCK TABLES `pos_payment_methods` WRITE;
/*!40000 ALTER TABLE `pos_payment_methods` DISABLE KEYS */;
INSERT INTO `pos_payment_methods` VALUES (2,'On Cash',1,'2021-04-11 00:57:46','2021-04-11 00:57:57'),(4,'Paypal',1,'2021-05-10 11:30:28','2021-05-10 11:30:28');
/*!40000 ALTER TABLE `pos_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postal_codes`
--

DROP TABLE IF EXISTS `postal_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postal_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT '0.00',
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_codes_language_id_foreign` (`language_id`),
  CONSTRAINT `postal_codes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postal_codes`
--

LOCK TABLES `postal_codes` WRITE;
/*!40000 ALTER TABLE `postal_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `postal_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (191,NULL,'64ae26a0b6911.jpg','2023-07-12 04:05:52','2023-07-12 04:05:52'),(192,39,'64ae2f82ad165.jpg','2023-07-12 04:43:46','2023-07-12 04:43:46'),(193,38,'64ae306343eb5.jpg','2023-07-12 04:47:31','2023-07-12 04:47:31'),(194,40,'64b886715a3ba.jpg','2023-07-20 00:57:21','2023-07-20 01:06:15'),(195,41,'64b8890c5de2b.jpg','2023-07-20 01:08:28','2023-07-20 01:09:48'),(196,42,'64b88965c3e55.jpg','2023-07-20 01:09:57','2023-07-20 01:18:00'),(197,43,'64b890834a7fe.jpg','2023-07-20 01:40:19','2023-07-20 01:52:42'),(198,44,'64b898c492a11.jpg','2023-07-20 02:15:32','2023-07-20 02:59:32'),(199,45,'64b8a33eca3f2.jpg','2023-07-20 03:00:14','2023-07-20 03:04:43'),(200,46,'64b8a5693766b.jpg','2023-07-20 03:09:29','2023-07-20 03:11:31'),(201,47,'64b8ab93c7087.jpg','2023-07-20 03:35:47','2023-07-20 03:35:49'),(202,48,'64b8ad15a261f.jpg','2023-07-20 03:42:13','2023-07-20 03:42:32'),(203,49,'64b8ad315f7bb.jpg','2023-07-20 03:42:41','2023-07-20 04:09:09'),(204,50,'64b8b37052b66.jpg','2023-07-20 04:09:20','2023-07-20 04:10:04'),(205,51,'64b8b49797d1a.jpg','2023-07-20 04:14:15','2023-07-20 04:14:17'),(206,52,'64b8b717e6802.jpg','2023-07-20 04:24:55','2023-07-20 04:24:57'),(207,53,'64b8b74726d67.jpg','2023-07-20 04:25:43','2023-07-20 04:25:52'),(208,54,'64b8b7be6e789.jpg','2023-07-20 04:27:42','2023-07-20 04:27:47'),(209,55,'64b8b7cc68606.jpg','2023-07-20 04:27:56','2023-07-20 04:29:05'),(210,56,'64b8b9120c58e.jpg','2023-07-20 04:33:22','2023-07-20 04:33:24'),(211,57,'64b8b939282b4.jpg','2023-07-20 04:34:01','2023-07-20 04:34:48'),(212,58,'64b8b9a6465c2.jpg','2023-07-20 04:35:50','2023-07-20 04:35:52'),(213,59,'64b8b9b27456e.jpg','2023-07-20 04:36:02','2023-07-20 04:37:06'),(214,60,'64b8b9fd68449.jpg','2023-07-20 04:37:17','2023-07-20 04:37:43'),(215,61,'64b8ba20d0b74.jpg','2023-07-20 04:37:52','2023-07-20 04:38:22'),(216,62,'64b8ba5e058ba.jpg','2023-07-20 04:38:54','2023-07-20 04:39:00'),(217,63,'64b8ba8abadf1.jpg','2023-07-20 04:39:38','2023-07-20 04:40:02'),(218,64,'64b8bc2227f82.jpg','2023-07-20 04:46:26','2023-07-20 04:46:46'),(219,65,'64b8bc42cbcc7.jpg','2023-07-20 04:46:58','2023-07-20 04:47:34'),(220,66,'64b8bc6fc19f3.jpg','2023-07-20 04:47:43','2023-07-20 04:48:21'),(221,67,'64b8bcadc5ffd.jpg','2023-07-20 04:48:45','2023-07-20 04:49:52'),(222,68,'64b8bd003897f.jpg','2023-07-20 04:50:08','2023-07-20 04:50:34'),(225,69,'64b8bd39f0f62.jpg','2023-07-20 04:51:05','2023-07-20 04:51:43'),(226,70,'64b8bd86cf9a4.jpg','2023-07-20 04:52:22','2023-07-20 04:52:25'),(227,71,'64b8bd9231496.jpg','2023-07-20 04:52:34','2023-07-20 04:53:00'),(228,72,'64b8bdcf4f9bb.jpg','2023-07-20 04:53:35','2023-07-20 04:53:37');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_orders`
--

DROP TABLE IF EXISTS `product_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob,
  `currency_symbol_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_no` int DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `postal_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `postal_code_status` tinyint NOT NULL DEFAULT '0' COMMENT '1 - post code based delivery enabled, 0 - post code based delivery disabled',
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receipt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `completed` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serving_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(11,2) NOT NULL DEFAULT '0.00',
  `delivery_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_start` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time_end` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_orders`
--

LOCK TABLES `product_orders` WRITE;
/*!40000 ALTER TABLE `product_orders` DISABLE KEYS */;
INSERT INTO `product_orders` VALUES (20,20,NULL,'ewtwet',NULL,NULL,NULL,'werwer@qwerwewe','+51','233333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10.00,'mercadopago','online','PEN','right',_binary 'S/.','left','nJsH-1690818634',NULL,NULL,NULL,NULL,0,'Pending','pending','txn_b7SSteqU1690818634','ch_z4YJUy2Bp1690818634',NULL,'2023-07-31 15:50:34','2023-07-31 15:50:34',NULL,'zsfdA','no','website','pick_up','07/31/2023','12:00 AM',NULL,NULL,0.00,0.00,NULL,NULL,NULL),(21,20,NULL,'qwqqwd',NULL,NULL,NULL,'qwrqwr@qwqwr','+51','588545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10.00,'mercadopago','online','PEN','right',_binary 'S/.','left','8G2K-1690818696',NULL,NULL,NULL,NULL,0,'Pending','pending','txn_fESTUYaF1690818696','ch_r8le8gvIe1690818696',NULL,'2023-07-31 15:51:36','2023-07-31 15:51:36',NULL,'qw','no','website','pick_up','07/31/2023','12:00 AM',NULL,NULL,0.00,0.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `review` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_reviews`
--

LOCK TABLES `product_reviews` WRITE;
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `addons` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `current_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `previous_price` decimal(11,2) DEFAULT '0.00',
  `rating` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '1',
  `is_feature` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint NOT NULL DEFAULT '0',
  `subcategory_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (38,179,'Papa a la huancaina','Papa-a-la-huancaina',16,'1689137260.jpg','La papa a la huancaína es uno de los platos más emblemáticos de la gastronomía peruana. Se trata de papas cocidas y cubiertas con una cremosa salsa de ají amarillo, queso fresco, galletas, leche evaporada y otros ingredientes. Es un plato delicioso y colorido que se suele servir como entrada o acompañamiento en Perú.','<p><br></p>',NULL,NULL,15.00,NULL,0.00,1,1,'2023-06-19 04:36:20','2023-09-11 20:46:35',1,NULL),(39,179,'Anticuchos','Anticuchos',16,'1689134755.jpg','Los anticuchos son un plato peruano muy popular que consiste en brochetas o pinchos de carne de res, generalmente corazón de res, marinados en una mezcla de ají panca (un tipo de ají peruano), especias y vinagre, y luego asados a la parrilla o a la brasa. Estas brochetas son una delicia tradicional en la gastronomía peruana.','<p><br></p>',NULL,NULL,25.00,NULL,0.00,1,1,'2023-07-12 04:05:55','2023-09-11 20:45:52',1,NULL),(40,179,'Causa Limeña','Causa-Limeña',16,'1689815175.jpg','La causa limeña es un plato tradicional de la gastronomía peruana, especialmente popular en la región de Lima. Consiste en capas de puré de papa amarilla con limón y ají amarillo, rellenas de diferentes ingredientes, como pollo, atún, mariscos, camarones o aguacate. Es un plato colorido y sabroso que se suele servir como entrada o plato principal en Perú.','<p><br></p>',NULL,NULL,20.00,NULL,0.00,1,1,'2023-07-20 01:06:15','2023-09-11 20:44:46',1,NULL),(41,179,'Adobo de Chancho','Adobo-de-Chancho',17,'1689815388.jpg','El adobo de chancho es un plato tradicional peruano que consiste en carne de cerdo adobada con una mezcla de ajíes, especias y vinagre, cocida lentamente hasta que la carne esté tierna y la salsa se reduzca y se adhiera a la carne.','<p><br></p>',NULL,NULL,30.00,NULL,0.00,1,1,'2023-07-20 01:09:48','2023-09-11 20:43:45',0,NULL),(42,179,'Aji de Gallina','Aji-de-Gallina',17,'1689815880.jpg','Delicioso plato peruano que consiste en tiras de pollo cocidas en una cremosa y sabrosa salsa de ají amarillo, acompañadas de papas cocidas, huevo duro, aceitunas y arroz. Es una de las recetas más representativas de la gastronomía peruana y se disfruta en todo el país.','<p><br></p>',NULL,NULL,30.00,NULL,0.00,1,1,'2023-07-20 01:18:00','2023-09-11 20:42:54',1,NULL),(43,179,'Alfajor','Alfajor',18,'1689817962.jpg','Los alfajores consisten en dos galletas o capas de masa (a menudo hechas con harina, azúcar, mantequilla y huevos) que están unidas por un relleno dulce. En la mayoría de las recetas, el relleno es una especie de dulce de leche espeso llamado \"manjar blanco\" en algunas regiones.','<p><br></p>',NULL,NULL,3.00,NULL,0.00,1,1,'2023-07-20 01:52:42','2023-09-11 20:57:05',1,NULL),(44,179,'Arroz con Pollo','Arroz-con-Pollo',17,'1689821972.jpg','Delicioso plato fuerte con el unico toque del Rincon Chami.','<p><span style=\"color:rgb(55,65,81);font-family:\'Söhne\', \'ui-sans-serif\', \'system-ui\', \'-apple-system\', \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';font-size:16px;background-color:rgb(247,247,248);\">El \"arroz con pollo\" es un plato tradicional de la gastronomía peruana. Se trata de un plato sabroso y reconfortante que combina arroz, pollo, verduras y una mezcla de especias.</span><br></p>',NULL,NULL,28.00,NULL,0.00,1,0,'2023-07-20 02:59:32','2023-09-11 20:57:01',1,NULL),(45,179,'Lomo a lo Pobre','Lomo-a-lo-Pobre',17,'1689822283.jpg','El \"lomo a lo pobre\" es un plato típico de la gastronomía peruana que combina carne de res, papas fritas, arroz, huevo frito y plátano frito.','<p><br></p>',NULL,NULL,48.00,NULL,0.00,1,0,'2023-07-20 03:04:43','2023-09-11 20:56:57',1,NULL),(46,179,'Brochetas de Pollo','Brochetas-de-Pollo',17,'1689822691.jpg','Las brochetas de pollo son un plato que consiste en trozos de pollo ensartados en palillos o brochetas y cocinados generalmente a la parrilla. Esta preparación culinaria ofrece una forma deliciosa de disfrutar el pollo con una variedad de sabores y acompañamientos.','<p><br></p>',NULL,NULL,28.00,NULL,0.00,1,0,'2023-07-20 03:11:31','2023-09-11 20:39:15',0,NULL),(47,179,'Cabrito a la chiclayana','Cabrito-a-la-chiclayana',17,'1689824184.jpg','Plato tradicional de la gastronomía peruana que se originó en la región de Chiclayo, en la costa norte del país. Consiste en cabrito tierno cocinado en una deliciosa salsa a base de ají amarillo, cerveza y otros ingredientes que le dan un sabor único y picante.','<p><br></p>',NULL,NULL,42.00,NULL,0.00,1,0,'2023-07-20 03:35:49','2023-09-11 20:56:48',1,NULL),(48,179,'Carapulcra','Carapulcra',17,'1689824552.jpg','Plato tradicional de la gastronomía peruana, especialmente popular en la región de Arequipa. Se trata de un guiso espeso hecho a base de papas secas, carne (generalmente cerdo o pollo), ají panca (pimiento rojo seco), y especias.','<p><br></p>',NULL,NULL,27.00,NULL,0.00,1,0,'2023-07-20 03:42:32','2023-09-11 20:56:40',1,NULL),(49,179,'Cau Cau','Cau-Cau',17,'1689826149.jpg','Plato típico de la gastronomía peruana que consiste en un guiso espeso y sabroso hecho a base de mondongo, papas y condimentos.','<p><br></p>',NULL,NULL,27.00,NULL,0.00,1,0,'2023-07-20 04:09:09','2023-09-11 20:56:33',1,NULL),(50,179,'Ceviche','Ceviche',17,'1689826204.jpg','Uno de los platos más emblemáticos y populares de la gastronomía peruana. Se trata de pescado fresco crudo que se marina en una mezcla de jugo de limón, ají (pimiento picante), cebolla roja y cilantro. La acidez del limón \"cocina\" el pescado, dándole un sabor refrescante y delicioso','<p><br></p>',NULL,NULL,35.00,NULL,0.00,1,0,'2023-07-20 04:10:04','2023-09-11 20:28:53',0,NULL),(51,179,'Combinado Arroz con leche y Mazamorra morada','Combinado-Arroz-con-leche-y-Mazamorra-morada',18,'1689826457.jpg','-','<p><br></p>','[]','[]',15.00,NULL,0.00,1,0,'2023-07-20 04:14:17','2023-07-20 04:14:17',0,NULL),(52,179,'Combinado Cau Cau - Carapuclra','Combinado-Cau-Cau---Carapuclra',17,'1689827097.jpg','-','<p><br></p>','[]','[]',27.00,NULL,0.00,1,0,'2023-07-20 04:24:57','2023-07-20 04:24:57',0,NULL),(53,179,'Escabeche de Pescado','Escabeche-de-Pescado',17,'1689827152.jpg','Platillo tradicional de la gastronomía peruana. Consiste en pescado cocido que se marina y sirve con una salsa agridulce de vinagre, cebolla, pimiento y especias.','<p><br></p>',NULL,NULL,28.00,NULL,0.00,1,0,'2023-07-20 04:25:52','2023-09-11 20:27:12',0,NULL),(54,179,'Humita','Humita',16,'1689827267.jpg','delicioso platillo tradicional de la gastronomía peruana. Consisten en una masa de maíz sazonada, rellena de queso.','<p><br></p>',NULL,NULL,10.00,NULL,0.00,1,0,'2023-07-20 04:27:47','2023-09-11 20:25:43',0,NULL),(55,179,'Lomo Saltado','Lomo-Saltado',17,'1689827345.jpg','El lomo saltado es uno de los platos más emblemáticos de la gastronomía peruana. Se trata de un delicioso salteado de carne, generalmente filete de res, con cebolla, tomate y pimiento, todo sazonado con una mezcla de especias y servido con papas fritas y arroz.','<p><br></p>',NULL,NULL,45.00,NULL,0.00,1,0,'2023-07-20 04:29:05','2023-09-11 20:55:42',1,NULL),(56,179,'Milanesa de Pollo','Milanesa-de-Pollo',17,'1689827604.jpg','Plato clásico y delicioso que consiste en filetes de pechuga de pollo empanizados y fritos hasta que estén dorados y crujientes.','<p><br></p>',NULL,NULL,38.00,NULL,0.00,1,0,'2023-07-20 04:33:24','2023-09-11 20:22:59',0,NULL),(57,179,'Mondonguito a la italiana','Mondonguito-a-la-italiana',17,'1689827688.jpg','Preparación culinaria que combina la carne de mondongo con sabores y técnicas de cocina italiana.','<p><br></p>',NULL,NULL,29.00,NULL,0.00,1,0,'2023-07-20 04:34:48','2023-09-11 20:55:54',1,NULL),(58,179,'Ocopa','Ocopa',16,'1689827752.jpg','Plato típico de la gastronomía peruana que consiste en una deliciosa salsa espesa y cremosa a base de ají amarillo, queso fresco y maní, que se sirve generalmente sobre papas cocidas y acompañado de huevo duro, aceitunas y lechuga.','<p><br></p>',NULL,NULL,15.00,NULL,0.00,1,0,'2023-07-20 04:35:52','2023-09-11 20:56:01',1,NULL),(59,179,'Papa Rellena','Papa-Rellena',17,'1689827826.jpg','Popular plato de la gastronomía peruana que consiste en una papa rellena con un sabroso relleno de carne, cebolla, huevo duro, aceitunas y especias, que luego se empaniza y se fríe hasta que quede dorada y crujiente por fuera','<p><br></p>',NULL,NULL,22.00,NULL,0.00,1,0,'2023-07-20 04:37:06','2023-09-11 20:56:07',1,NULL),(60,179,'Patita con Maní','Patita-con-Maní',17,'1689827863.jpg','Plato tradicional de la gastronomía peruana que consiste en una preparación a base de patas de res cocidas en una salsa de maní.','<p><br></p>',NULL,NULL,27.00,NULL,0.00,1,0,'2023-07-20 04:37:43','2023-09-11 20:56:16',1,NULL),(61,179,'Picarones','Picarones',18,'1689827902.jpg','Delicioso postre tradicional peruano que consiste en donas o buñuelos de calabaza dulce, servidos con una miel de chancaca (panela) y anís que les da un sabor único','<p><br></p>',NULL,NULL,12.00,NULL,0.00,1,0,'2023-07-20 04:38:22','2023-09-11 20:56:21',1,NULL),(62,179,'Pie de Limon','Pie-de-Limon',18,'1689827940.jpg','Delicioso postre que combina la acidez y frescura de los limones con una base crujiente de galletas y una suave capa de crema de limón.','<p><br></p>',NULL,NULL,12.00,NULL,0.00,1,0,'2023-07-20 04:39:00','2023-09-11 20:55:31',1,NULL),(63,179,'Pie de Manzana','Pie-de-Manzana',18,'1689828002.jpg','Clásico postre que combina la dulzura de las manzanas con una crujiente y deliciosa costra','<p><br></p>',NULL,NULL,10.00,NULL,0.00,1,0,'2023-07-20 04:40:02','2023-09-11 20:13:55',0,NULL),(64,179,'Pionono','Pionono',18,'1689828406.jpg','Postre encantador que combina la esponjosidad de la masa con la cremosidad de la crema pastelera','<p><br></p>',NULL,NULL,10.00,NULL,0.00,1,0,'2023-07-20 04:46:46','2023-09-11 20:11:50',0,NULL),(65,179,'Piqueo Criollo','Piqueo-Criollo',17,'1689828454.jpg','Piqueo con los principales sabores de la comida criolla, caucau - aji de gallina - patita - carapulcra , combinalos como prefieras.','<p><br></p>',NULL,NULL,42.00,NULL,0.00,1,0,'2023-07-20 04:47:34','2023-09-11 20:10:22',0,NULL),(66,179,'Suspiro a la limeña','Suspiro-a-la-limeña',18,'1689828501.jpg','Postre peruano tradicional y delicioso,  ícono de la cocina peruana','<p><br></p>',NULL,NULL,12.00,NULL,0.00,1,0,'2023-07-20 04:48:21','2023-09-11 20:55:25',1,NULL),(67,179,'Tacu Tacu con Apanado','Tacu-Tacu-con-Apanado',17,'1689828592.jpg','El tacu tacu con apanado es una variación del plato tradicional peruano en la que el tacu tacu, que generalmente se hace con frijoles y arroz, se sirve con filetes empanados y fritos.','<p><br></p>',NULL,NULL,28.00,NULL,0.00,1,0,'2023-07-20 04:49:52','2023-09-11 20:54:27',0,NULL),(68,179,'Tacu Tacu con Asado','Tacu-Tacu-con-Asado',17,'1689828883.jpg','El tacu tacu con asado es un plato tradicional peruano que combina dos elementos clásicos de la cocina peruana: el tacu tacu y el asado. El tacu tacu es una especie de pastel de frijoles y arroz que se fríe hasta que quede dorado y crujiente por fuera, mientras que el asado generalmente se refiere a carne asada.','<p><br></p>',NULL,NULL,32.00,NULL,0.00,1,0,'2023-07-20 04:50:34','2023-09-11 20:53:37',0,NULL),(69,179,'Tallarin verde con Lomo','Tallarin-verde-con-Lomo',17,'1689828703.jpg','El tallarín verde con lomo fino es una variación del plato tradicional peruano llamado \"tallarín verde\" en la que se utiliza lomo fino de res. Este plato combina los fideos verdes en una salsa de espinacas y queso con tiras de lomo fino de res a la parrilla.','<p><br></p>',NULL,NULL,45.00,NULL,0.00,1,0,'2023-07-20 04:51:43','2023-09-11 20:52:41',0,NULL),(70,179,'Tallarin Verde con Apanado','Tallarin-Verde-con-Apanado',17,'1689828745.jpg','El tallarín verde con apanado es un plato delicioso de la gastronomía peruana que combina fideos verdes en una salsa cremosa de espinacas y queso con filetes de carne de res empanados y fritos','<p><br></p>',NULL,NULL,32.00,NULL,0.00,1,0,'2023-07-20 04:52:25','2023-09-11 20:55:18',1,NULL),(71,179,'Tamal','Tamal',16,'1689828780.jpg','Los tamales son un platillo tradicional del Perú. Se preparan a partir de masa de maíz rellena de carne, aceituna, aji amarillo y se cocinan envueltos en hojas de plátano.','<p><br></p>',NULL,NULL,10.00,NULL,0.00,1,0,'2023-07-20 04:53:00','2023-09-11 20:49:45',0,NULL),(72,179,'Torta de Chocolate','Torta-de-Chocolate',18,'1689828817.jpg','Una torta de chocolate es un postre clásico y delicioso que a menudo se prepara para celebrar ocasiones especiales o simplemente para disfrutar de un dulce capricho.','<p><br></p>',NULL,NULL,10.00,NULL,0.00,1,0,'2023-07-20 04:53:37','2023-09-11 20:47:20',0,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psub_categories`
--

DROP TABLE IF EXISTS `psub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `is_feature` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psub_categories`
--

LOCK TABLES `psub_categories` WRITE;
/*!40000 ALTER TABLE `psub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `psub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_subscriptions`
--

DROP TABLE IF EXISTS `push_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_subscriptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscribable_id` int DEFAULT NULL,
  `subscribable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_subscriptions`
--

LOCK TABLES `push_subscriptions` WRITE;
/*!40000 ALTER TABLE `push_subscriptions` DISABLE KEYS */;
INSERT INTO `push_subscriptions` VALUES (3,4,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dt--VeNXQpk:APA91bEXROqytusuQiBN-WidokRxoe_IH7kR6Qi6zXD1Ajx-XyQ4EtEoJxg62WwI-j0RFq2xUjBe-Is7h17zlUMntaf4mgCUeDFtLiW98h8xoOfL3ynutkpMHmyqoldRHVZDZGOQY98X','BEXtiHSUjJseqePlRDOqeeCDVSFvZdAyI8BupOIw0bIztqWL3W_pduNUd91A-3RzEHIYfmSfKjusX8B0JG1gOdk','GsDOuT4NTf6KGQt9RRVq0Q',NULL,'2020-12-26 10:04:17','2020-12-26 10:04:17'),(4,5,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fetLuDtmxNg:APA91bHqqBZBZzCuFd8Ae3hGHo5q972ktIjfZuRzek59nJXiwdn88UBtnuU9IwaxVznCJGxn1SdhlOFZ8sIsGyVBoK-GIm6KCk0iTuvwc1e3o0H4hfunWZe-o98HQpIXpYDAkan0DiAy','BBBfXhMcnTWXOPHP4l2UObEUf7RGMkxoOK5_G4nGhLC8kkXcBdMWNcuhxk0BsSIEdw0jWcZTQ_i_569oZDqEnc0','k-yJKI5UjvvHbYQACv-Nrw',NULL,'2021-03-24 07:37:03','2021-03-24 07:37:03'),(5,6,'App\\Models\\Guest','https://updates.push.services.mozilla.com/wpush/v2/gAAAAABgXhAyYoUVkJ8ymIaucMN78o9LdNIJ2ZhWATCMTUa79O7Q_6IWuwZlWOkNi33elgKb73GjntPc0ErLR7FF9b0UU0BNiDpJdsEv0uqcGKdNWkiYlAdlmNPaR0rKI8VivAkeCPzjYhykXGdYpXVpR3TxceTSpWBzxivvTpCTLQlUq72QNO8','BP6E_WEMY_Gq-nWKfidLIo4fI4kDlWB3XgnAPevTYRa8niS4TB0_OknMpwML1r_i-dWxE69eDU6e_TnUgufsd5E','yzcj6vcUg0WgFcQH6kC7kA',NULL,'2021-03-26 11:47:44','2021-03-26 11:47:44'),(6,7,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/cmWvhqu3tv8:APA91bFobMGJpxJvuqHpFU7Y5vtVZNcvsykv_So9xDDoCqKLewXINW8QbmIkpha9i7CJZPAoaZjST1cJPnwwa0rbp-VCk8LOWRoxcuIyyUlsOIFCMCOwysBSFZm_1eBbVV9aeyLSENGc','BHKiK1CUzfBe51go0MhzpcrTdsa0qaLhyS4v-S-3U7p7piNG31Lv_awN0wHHqn4tK3KMACk1xiBS8d9vB1cgLKI','fgFmWWEiO9fQ1m-IDBOW3w',NULL,'2021-04-03 00:02:31','2021-04-03 00:02:31'),(7,8,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eh4uTNYjL8g:APA91bEX1UoNIWd9wkORCAREAofoRcvvbmRdDNMQwd1d-EZ0lbfCU5CUXewaZucNBK81XO0z6h0LnUaBFPHRlEDrUGm90vu_GHDd5lrndy3l6Otqf5i921YWUa-Xwn4i0MSW5uoPAeMQ','BMH-f875_KRifObIrwG57s-C4FT-X6NaQ0s8rTDEOK5kxlS_eCYT77cJjM2UsxuR3xAT49H_2ErlUPE1YnRtBUQ','x5mQe5dLhNw2H_x6j4jaOA',NULL,'2021-04-16 11:36:28','2021-04-16 11:36:28'),(8,9,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dObB80OmAaw:APA91bFv7cirSdv3z2G0IU7AlDsIylsVt5C2Z3q53ZUNLMlvlOIfQiOshMF-xKknu8706NDLq9PJyhl7eCdOZlzw-pxRrgsW-p2PjU9N1bePkHnYSIPnTp5a4g1N1tDQQQQWNDjy9slX','BD6AiJcjC3gwlLEYPJ2WBaozmaxp9-Q2XBtJOa9NvggCIhT2jN-cjkpGJS2uFMudkJJsvaxfQXpuhKjfYYrba3g','YywnXPOaIAiGmM_zru-29Q',NULL,'2021-05-06 09:40:57','2021-05-06 09:40:57'),(9,10,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eZKf01giLZc:APA91bH4tmbQ3s4Lv-B9nztPSZW3yd7Y2uXC-60sHsGIhKkOlUxP6oC68n37Vtq-FBk-OlTVlU76weuJ_vrW0BliQoqvrNRb8xstdCONgBIs47-5fgbphTiuONZgUp1nDtX8LfcFM-Iy','BB27dE5e2Bm7GTRujTwXihSJFtX1rwSXl1BUgLLWwI3jFdV5m-gvmSmbsVURyhtmbFmJrdUOAB4T8aVXJrUQsVo','gl9nLuDpTn82DcL_hIjndw',NULL,'2021-05-23 00:31:34','2021-05-23 00:31:34'),(10,11,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/cPVrToqh8P0:APA91bEiMbgqN8bDAhr0mbdzXPcFOvc77t1WzG17LnxbEo7shs1OJ-UhjuXbKMj71Nx0_EjBlZNmj4Nl44WiksfgkV3COShKvj02S_ZpkTe5fD6WFwtIlPZ6LO-IrH57t-lVOinUQkHw','BFkWNoEXEsV0OhL7ry_yJngdJ9nSAuXv89yIgABu39xh53VUfgZqpaMNiz5w_yLqFcZ935BVRJ1h0tEm3QmqjaY','ozwxzjykXazMuvf1RxBK3w',NULL,'2022-03-08 11:07:58','2022-03-08 11:07:58'),(11,12,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eSdjeQS-6ec:APA91bFUxeQX0vknYUYO5cF4Bau2chgFvbcNkVDiWxQzJFCC-koRWSuqHWlB-CNygN8YDUgGxCLD5EVEx8MpSGHTxkTpypT7lCxo9MiYVJdRjmLkxlLilJmyI2277FKumLhLbQM55CmZ','BCe9VF_iGITjvarsEaQ0f22fLX8lLZbXeQPscs4JQyT2iW_w6NallOMSkeiSk9tnEJc2Grzt4dvbOis9YS2GyFk','fVnvCzgIc24uKKVwF6b0rA',NULL,'2022-03-25 09:37:15','2022-03-25 09:37:15'),(12,13,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fVC8cace-fw:APA91bEWCMtj2rRSwKQ1q6JQKrdw5X4JAk8FKP6kbWS9Zr7koUH_yRlG7mVwaycVt20EO7UYs0xe3DP26Xba3xGo4tPhS3Rjapa3i-2MNewsDloDPsDppAFkm-X4FKqpWqS_Vk6L9XMS','BLW-a2b-CPlH0E43datHyflA6OxN0IIpVKNh3_ITsz3H5XKsD_0GrS_JEW_CxnLnrFqO7SMjSAA7niVvvKzPwEw','IHXSSIH3ujQohnNsTkeqvw',NULL,'2022-03-25 15:10:08','2022-03-25 15:10:08'),(13,14,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eAFjl2NwK-s:APA91bEp8b2PiBhmwX_zmnbBUTHukeW5vNABILeBOl5rsDHvN95kgd_3ywilHH9NfNnYpm7a7aJgNPXUc0gJ_7uaFuYjitNc-QRbXz7ys5ZGdtfSKOnGpiuyegInmd4Gzk2SpknKc4wc','BE0Jighn2izrgHO7NzhtdaOCAw9GMFmTGmRkx84bmXevQvLyG-60cF1XPDIVRhjI2AmaU5UkXQ21Tzey3isS_1E','U_cZTnEOkcCl-JNn74xpGg',NULL,'2022-03-26 05:55:51','2022-03-26 05:55:51'),(14,15,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/cYxO9t_xdXE:APA91bGQ1gBBBwp_ci8cdd_QyMhpiNn_YQHz5T7jYq_Rpy361fJn38T1n4_JepcLWvTVcWKS0_rKSxDZwj98j4tcKJ4WDTYftcpmHSOwzZ_wHMo-DbmOg7OCmo1H5bmM_qzs1JwSsKq3','BP7hrBFjwTu4WgVg2cRCQsTQqZWQVsNqqyaC1BOtpJreNbAHYy3_gY_UDojsdWqwiOnFEoNOoTcmTn13PxvR2cw','QumnEVX8v9ijINcYNHcXkg',NULL,'2022-03-26 06:11:44','2022-03-26 06:11:44'),(15,16,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fL9PPVT6jlM:APA91bF1dsI1uMzo_fGgOiP-6G_LSRBmOpdao8C9sSPUtd4Pu9bvcJbOcFmiCbEKxdD2TGk6elsRlMa44pw4m73kcZy1Z6dWdk4uFxoqwF542pO4ZgneVD6DT1-2cCiMcadxvdHmQAQv','BAS6X7QsadHhhmu6d9Vw3EaCWJj2b2Wy9YITG0MFStEV4Gb8VDZFhiIm1qIE9Ni-OP3krftkgYTE6M4Bg4WOReQ','CxwoglDSONZr0rYK-AR4LA',NULL,'2022-03-26 06:11:59','2022-03-26 06:11:59'),(16,17,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dvFmtOYkKOE:APA91bHpWKVtET2wBSGnEvLtLXpy5S150lRksdlSMTIDfiUNahnnOsJErkgga8EjvraIjSHkSe_epQEiN7naxS7w8vz9PmnOURQi4Bu4dBQj--WhHTyH50BPXBF_ZIVKcaOIlo3KVadt','BI33xxQv8EJZFF80Hyx-P4e8D8M5iMhPi6olDtwM_yQ2TXLuUMgoC2EK8fYfEsR2c32z0C2PssTuk14tEHAYHHY','bIvD5b7qsbv6mqcftsSyWQ',NULL,'2022-03-26 06:33:01','2022-03-26 06:33:01'),(17,18,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fVc8RLnHZ6M:APA91bG2us8fW833NzlJ1ilqh8kkVoNrbKck6JZezNXegKjw8NwAm8vDovgpLndAmHNJA6gRfznPD_Rc8vwJ7XXOE3pE0KBokTaozkMq5M4UbPp8MReZ3ho6_iyqx9FrnXjnpxR9wxpa','BI4KhyzTEY70WmY4jZchN0M4klUqNIsbGos7lIk6SMhkweV5P5qtWdw2z5GXVFZn3vgkPbl-ozGZ6zgJBQIP_kA','mZDMBSqnZpW-X6OEWsdt1Q',NULL,'2022-03-28 13:24:40','2022-03-28 13:24:40'),(18,19,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fgbnPkwsCU8:APA91bGJfLBxkTgEtJePLRIsyfSu2BIPQ22BYwHpAhVrA4whhAdsiHpOSOVr4Vcmp_pTLgRfP2PisJm_fG7so9YU0lNjbXEYHQJ24RkHcDf2eI3mP_5_BM9ALtjdM78nUxodMPYY4k5x','BMSdDc5maYAbAa8F3L-Vd1USadABzEWcUztaWRxgBk1Mz4ClvTrg8mQzXV_q7NUkYoCbC3vZ8CjfblbJlaVYDQg','JYpTiwRkwmPWtu0t5BEvng',NULL,'2022-03-29 07:23:02','2022-03-29 07:23:02'),(19,20,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/ePVbno9kWtA:APA91bHQi13UwmBnf_z9erJ2VBB78MK_hfeRvQ2tDeLiDgHC4Sl71dDktuhYtjOEamBq_w75T9_Nu0tJqw3YPRPqKW09ObMCn9LiA6pbQKWNYnJujatjDFL0VzZAhB_RLPo8KAdadkqz','BJYVyojs6MHZ322rE7rCQmoqeF9BHfOmbPG2c_U7Pv9BVTAiZM1IoUGw9gixoZuCaMHmuCO_GyrYsVDOHZ5bq1M','EbkcDvNrbLb31wyxyMgxyg',NULL,'2022-03-29 07:26:21','2022-03-29 07:26:21'),(20,21,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dgvxW5cNw5g:APA91bH8Au63veVx1bkKpGB0g_MxoQICgJ3bWaP-QtyowdorZUGcayo5xASkTEFjJri6IjOyvRP7WKCv4jbr4RxT4PD_zr-3AwHlpG00d8rDd-bTvzyvTK2Aj0r59zpKtNSEw8a99VlZ','BMz4LqfWJZcdcEPgXJccF1ao7kxQ5176SUTI_nE6_2kcDGX2bHYeb1Q__2I8Vx0poSOvFSJhZckR28N5oc_XRII','FKpeggtAtAG-Fr2HYW1UDQ',NULL,'2022-03-29 09:33:41','2022-03-29 09:33:41'),(21,22,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dH8KnORYEVQ:APA91bEJFuFWl1iloiH44Fuot4Gnoh5p0aUxs_mtrPVsm7O3Dkjd8vELa2DeW9ETdHFcSBkyZt8g0dERLI7jZU3sz5Kv0UP8S2UuDgkRGHC3hRIDp9PdYR8srv-7y_EitmUEY8kBhE9M','BGYGP4RPbx_ItA6mesKRIpYMuilij5XV7aKNj4u0VhWX2L5eL1PgV4qlS6Rp8ruvy04J0JA5nV8GfatnmkyxpEg','J13QxHa4fFtWFbcofgxp0Q',NULL,'2022-03-29 09:49:54','2022-03-29 09:49:54'),(22,23,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eV2Fy6cICFg:APA91bH64deQsEs8og6oMqWSN0IV80-6IJtBR0MmRHwpm6vNvyY1Q-mVU8IK9x_BvxPuTNje_k1Ur6G1WhNqi_kmlCXQZoikKjkeOuLzQ0JjcoT5enML53YCw__PX9i_yathf5ajux8x','BJSRrN5bqx-Q0ZJAmPkZD6HraYwjGKo-Ls79nO-wTkiiJK4B87ocIw1xSGy4NplL7DPrviGevUPinoW95rH9FGo','wo-kNkXLQpNqbqUdvvxlRw',NULL,'2022-03-29 11:31:26','2022-03-29 11:31:26'),(23,24,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/fjhrX4tX4Cc:APA91bGSxATfx2askizSwnj_XEEe1dirC38jMXFsCL-Nip69CVioMNbApRMS8_A3RzlWDBXI1sUm2DdSq0-OnXsqO1fror-THjD3R107bF_OBsJWSy4YfrBCdlqD_KZVP_MO3FJbIyIO','BCv7R4fibTLn5GeBd9ItJtSk3pAXtoy0_vGdDcYqD1OAVqP-we7doNBGyb5kwmoFWuNrYcqcDK4j9nmqtat2jS8','F4Bh1BXCJ4ElCNUYhlYEpw',NULL,'2022-04-04 14:22:56','2022-04-04 14:22:56'),(24,25,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/dMfJBWeK59g:APA91bHVx8OoUaqqaZROwpYLGi0oL_hpP27-BHhKWcsb_Cf3JhO_0nfblhoeyZWsntig9h4yIv20-lwaiIUVaKQcZ_GtyC1P4DWizrLSkGtYLUtO1Erv9Q5SN1gPfGFy9BN9-J9M17Qi','BFnEhSqjkzRKNzObnvrebeVoy_RhIVnpxhKQ3H5ACaXK5gfbdkwxXhgLQtwTGypp6_stQ7xdXd5LlIQpv44YBZs','8WigyorhUXnwfrUXwAi26A',NULL,'2022-04-06 14:45:27','2022-04-06 14:45:27'),(25,26,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eFLG-3oEzKI:APA91bF934GtVfeJ3I-0pekZ3k2uYGQyExkei8SLug9CuMb0uXNj8p0kkc_kGPuzAbW0oVt3hlOWdNKmChP2aAWkPRwfGtkxgnDodUhkEZamoo92yi50N6Q65AOOGJVrydcjfVmWFoWF','BNhbs0yBnUjiWbiLhQsXjR4QKSL4XgnPG90SUs5gtkHD4FrOwn1V62gOUBO1bjIGj5oqR8j-3zKjGHLaPCEZuCI','NoxAW9LgVmrUxNOcIePDww',NULL,'2022-05-25 12:10:23','2022-05-25 12:10:23'),(26,27,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/ddjYk0PfZN4:APA91bHrypeB-IsqioQhnJ5YUV1nZxv-bIK5tKRJppgC4q2mcmEib9ng0gFFlm3_xs8jiHbzQ_KnQPxthBm3qaMnEyRFuv2r-jjs_xE5ie6kVK1zCKjNL1wE0nDC8Ftu-vlA0qtCDYs7','BMbq5BZB64P6zkalym9HtYBaHk_D2-HfF4cewQKD54CdVfmu-axKqPuBt1S6z2zKMOyxoTgamAJj_r68zAXkarY','0L3fcWHSQ0EUNTPJ1U5o8w',NULL,'2023-04-10 05:35:33','2023-04-10 05:35:33'),(27,28,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/c6z1jcd4ug8:APA91bHU62xxRJMvKKsE2hAVbIP5aHsYN5kNXcyMJ1MJ7LU16BG1IJiHmangsq9yWPlFoIpPhKB_uIzldr7lr4jh01AqC5NS4tZVHYBZn_zrkZuWh1uOWPxtQQGudUwEc5XGFv_M1THK','BP8wsKuMUhGdPmNWoyMJVFcEEISFpqpb6q4GWjh_nXdqVrLhLMyjCYehZOa4zYwTPakUoFR9peaS2jt10fxQUHk','_-t7eG5DZKzXwEcwoaA2xQ',NULL,'2023-04-10 07:46:43','2023-04-10 07:46:43'),(28,29,'App\\Models\\Guest','https://fcm.googleapis.com/fcm/send/eZJp6IVs6lo:APA91bHggwA-gOtuZj-610cq9vO2dR3OuTKsklGG4bHXztdyX4tIQsDX--944xanSG3DWa2wkq6EflFM0i-r-OXQCsFa2nGloFQCyDvOwTWPGaXSbD3LCXAzvqJ-K2SFOvvsMSFq8h-7','BEbOX-LoYumTFSCNdDrIUg90a9SYUcom7clsKBbU00kKGtDfoLUoevn9GgLLuvsdYPkuAgoGkvAWhhJNhB8aK0o','AcUgE_pVVYgUXK8M0Uc2gw',NULL,'2023-05-30 10:54:57','2023-05-30 10:54:57');
/*!40000 ALTER TABLE `push_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_input_options`
--

DROP TABLE IF EXISTS `reservation_input_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_input_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reservation_input_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_input_options`
--

LOCK TABLES `reservation_input_options` WRITE;
/*!40000 ALTER TABLE `reservation_input_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_input_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_inputs`
--

DROP TABLE IF EXISTS `reservation_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_inputs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `type` tinyint DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint NOT NULL DEFAULT '0' COMMENT '1 - required, 0 - optional',
  `order_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_inputs`
--

LOCK TABLES `reservation_inputs` WRITE;
/*!40000 ALTER TABLE `reservation_inputs` DISABLE KEYS */;
INSERT INTO `reservation_inputs` VALUES (42,179,6,'Hora','Hora','Hora',1,3,'2023-07-18 01:01:26','2023-07-18 01:01:26'),(43,179,7,'Personas','Personas','n° personas',1,4,'2023-07-18 01:01:38','2023-07-18 01:01:38'),(46,179,1,'Contacto WhatsApp','Contacto_WhatsApp','Ingresa tu WhatsApp',1,6,'2023-07-18 01:03:44','2023-07-18 01:03:44'),(48,179,1,'Detalles','Detalles','Cuentanos más',1,7,'2023-07-18 01:06:47','2023-07-18 01:06:47'),(49,179,1,'Fecha','Fecha','dia/mes/año',1,8,'2023-09-11 06:58:10','2023-09-11 06:58:32');
/*!40000 ALTER TABLE `reservation_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (7,'Delivery Manager','[\"Dashboard\",\"Order Management\"]','2020-09-24 00:13:52','2021-05-21 05:28:11'),(8,'Kitchen Manager','[\"Dashboard\",\"Table Reservation\",\"Product Management\",\"Order Management\"]','2020-09-28 11:23:56','2020-12-31 05:45:18'),(9,'Shop Manager','[\"Dashboard\",\"POS\"]','2023-03-04 03:48:36','2023-03-04 03:56:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serving_methods`
--

DROP TABLE IF EXISTS `serving_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serving_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateways` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `serial_number` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_menu` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive on website menu, 1 - active on website menu',
  `qr_menu` tinyint NOT NULL DEFAULT '1' COMMENT '0 - deactive on qr menu, 1 - active on qr menu',
  `qr_payment` tinyint NOT NULL DEFAULT '0' COMMENT '0 - deactive, 1 - active',
  `pos` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active for POS, 0 - deactive for POS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serving_methods`
--

LOCK TABLES `serving_methods` WRITE;
/*!40000 ALTER TABLE `serving_methods` DISABLE KEYS */;
INSERT INTO `serving_methods` VALUES (1,'On Table','on_table','null',1,'Choose this method, if you are in restaurant',0,0,1,0),(2,'Pick Up','pick_up','[\"1\",\"2\",\"3\"]',2,'Choose this, if you want to pick up the food from Restaurant',1,1,1,1),(3,'Home Delivery','home_delivery','[\"1\",\"2\",\"3\"]',3,'Choose this, if you want the order to be served at your doorstep.',1,0,1,0);
/*!40000 ALTER TABLE `serving_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_charges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery_amount` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_charges`
--

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` VALUES (14,'delivery',179,NULL,15.00,'2023-07-22 04:57:44','2023-07-22 04:57:52',NULL);
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitemaps`
--

DROP TABLE IF EXISTS `sitemaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitemaps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sitemap_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitemaps`
--

LOCK TABLES `sitemaps` WRITE;
/*!40000 ALTER TABLE `sitemaps` DISABLE KEYS */;
INSERT INTO `sitemaps` VALUES (2,'http://localhost/superv/without_license/superv-1.2/','sitemap5f5e377957033.xml','2020-09-13 09:15:26','2020-09-13 09:15:26');
/*!40000 ALTER TABLE `sitemaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_font_size` int NOT NULL DEFAULT '60',
  `text_font_size` int NOT NULL DEFAULT '18',
  `button_text_font_size` int NOT NULL DEFAULT '14',
  `button_text1_font_size` int NOT NULL DEFAULT '14',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (30,179,'El auténtico lomo saltado desde hace 50 años','Lomo Saltado','Reserva!',NULL,'Revisa la Carta',NULL,'1687845857.png','1687845787.jpeg',1,'2023-06-24 04:56:42','2023-06-29 01:00:10','FFFFFF','FFFFFF','FFFFFF',50,20,15,15);
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (4,'fab fa-instagram iconpicker-component','https://www.instagram.com/rinconchami',2),(6,'fab fa-facebook-f','https://web.facebook.com/RinconChamiOficial',1);
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (37,'trevorcalfan2@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_books`
--

DROP TABLE IF EXISTS `table_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_books`
--

LOCK TABLES `table_books` WRITE;
/*!40000 ALTER TABLE `table_books` DISABLE KEYS */;
INSERT INTO `table_books` VALUES (1,'qwqweqwe','trevorcalfan2@gmail.com','{\"Hora\":\"12:00 AM\",\"Personas\":\"33\",\"Contacto_WhatsApp\":\"946896855\",\"Detalles\":\"qwqwqrwqwr\",\"Fecha\":\"10/05/2022\"}',2,'2023-09-11 06:59:37','2023-09-11 07:02:17');
/*!40000 ALTER TABLE `table_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `table_no` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 2 - deactive',
  `qr_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  `size` int NOT NULL DEFAULT '250',
  `style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `eye_style` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'square',
  `margin` int NOT NULL DEFAULT '0',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '000000',
  `text_size` int DEFAULT '15',
  `text_x` int NOT NULL DEFAULT '50',
  `text_y` int NOT NULL DEFAULT '50',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int NOT NULL DEFAULT '20',
  `image_x` int NOT NULL DEFAULT '50',
  `image_y` int NOT NULL DEFAULT '50',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'default, image, text',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (30,179,'1689224501.jpg','Exquisita la comida, creo que si visitas Lima debe ser una parada obligada. Platos grandes y rápida atención. Además nos sirvieron una segunda jarra grande de chicha morada de cortesía. Muy amables y atentos para atender!!','Camila V.','5',5,1,NULL,NULL),(31,179,'1689224993.jpg','Excelente atención, sazón, y sobre todo te sientes como en casa! El puré con asado de carne recomendado, tacu tacu riquísimo, pescado, ese sancochado inolvidable y sus postres deliciosos, como olvidar el suspiro a la limeña!','Karla T.','4',5,2,NULL,NULL),(32,179,'1689314097.jpg','En este lugar, no hay pierde con ningún plato. Realmente todo lo que ofrecen es realmente rico y todo lo puedes acompañar con la sarsa de cebolla y aji que están en todas las mesas como parte de su atractivo. Altamente recomendable.','Paola D.','5',5,3,NULL,NULL),(33,179,'1689912262.jpg','El lugar apropiado para disfrutar de uno de los mejores ceviches peruanos, una gran variedad de platos, lugar acogedor y clásico','David M.','5',5,4,NULL,NULL),(34,179,'1689746375.jpg','Es un lugar sencillo, donde sus deliciosos y abundantes platos son la estrella. Un lugar para ir solo o en familia, para disfrutar exquisitos platos del norte. Excelente atención siempre.','Marco M.','5',5,5,NULL,NULL),(35,179,'1689746477.jpg','La atención muy buena, todo fresco y muy rico, yo iba desde que era una jovencita, y cada vez que voy a Lima con mi esposo vamos a comer ahi. 100% rcomendable.','Rosie C.','5',5,6,NULL,NULL);
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_frames`
--

DROP TABLE IF EXISTS `time_frames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_frames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_orders` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_frames`
--

LOCK TABLES `time_frames` WRITE;
/*!40000 ALTER TABLE `time_frames` DISABLE KEYS */;
INSERT INTO `time_frames` VALUES (4,'wednesday','12:00 PM','05:00 PM',0),(5,'monday','12:30 PM','05:00 PM',0),(6,'tuesday','12:00 PM','05:00 PM',0),(7,'thursday','12:00 PM','05:00 PM',0),(8,'friday','12:00 PM','05:00 PM',0),(9,'saturday','12:00 PM','05:00 PM',0),(10,'sunday','12:00 PM','05:00 PM',0);
/*!40000 ALTER TABLE `time_frames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`country_code`,`timezone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES ('AD','Europe/Andorra',1.00,2.00,1.00),('AE','Asia/Dubai',4.00,4.00,4.00),('AF','Asia/Kabul',4.50,4.50,4.50),('AG','America/Antigua',-4.00,-4.00,-4.00),('AI','America/Anguilla',-4.00,-4.00,-4.00),('AL','Europe/Tirane',1.00,2.00,1.00),('AM','Asia/Yerevan',4.00,4.00,4.00),('AO','Africa/Luanda',1.00,1.00,1.00),('AQ','Antarctica/Casey',8.00,8.00,8.00),('AQ','Antarctica/Davis',7.00,7.00,7.00),('AQ','Antarctica/DumontDUrville',10.00,10.00,10.00),('AQ','Antarctica/Mawson',5.00,5.00,5.00),('AQ','Antarctica/McMurdo',13.00,12.00,12.00),('AQ','Antarctica/Palmer',-3.00,-4.00,-4.00),('AQ','Antarctica/Rothera',-3.00,-3.00,-3.00),('AQ','Antarctica/South_Pole',13.00,12.00,12.00),('AQ','Antarctica/Syowa',3.00,3.00,3.00),('AQ','Antarctica/Vostok',6.00,6.00,6.00),('AR','America/Argentina/Buenos_Aires',-3.00,-3.00,-3.00),('AR','America/Argentina/Catamarca',-3.00,-3.00,-3.00),('AR','America/Argentina/Cordoba',-3.00,-3.00,-3.00),('AR','America/Argentina/Jujuy',-3.00,-3.00,-3.00),('AR','America/Argentina/La_Rioja',-3.00,-3.00,-3.00),('AR','America/Argentina/Mendoza',-3.00,-3.00,-3.00),('AR','America/Argentina/Rio_Gallegos',-3.00,-3.00,-3.00),('AR','America/Argentina/Salta',-3.00,-3.00,-3.00),('AR','America/Argentina/San_Juan',-3.00,-3.00,-3.00),('AR','America/Argentina/San_Luis',-3.00,-3.00,-3.00),('AR','America/Argentina/Tucuman',-3.00,-3.00,-3.00),('AR','America/Argentina/Ushuaia',-3.00,-3.00,-3.00),('AS','Pacific/Pago_Pago',-11.00,-11.00,-11.00),('AT','Europe/Vienna',1.00,2.00,1.00),('AU','Antarctica/Macquarie',11.00,11.00,11.00),('AU','Australia/Adelaide',10.50,9.50,9.50),('AU','Australia/Brisbane',10.00,10.00,10.00),('AU','Australia/Broken_Hill',10.50,9.50,9.50),('AU','Australia/Currie',11.00,10.00,10.00),('AU','Australia/Darwin',9.50,9.50,9.50),('AU','Australia/Eucla',8.75,8.75,8.75),('AU','Australia/Hobart',11.00,10.00,10.00),('AU','Australia/Lindeman',10.00,10.00,10.00),('AU','Australia/Lord_Howe',11.00,10.50,10.50),('AU','Australia/Melbourne',11.00,10.00,10.00),('AU','Australia/Perth',8.00,8.00,8.00),('AU','Australia/Sydney',11.00,10.00,10.00),('AW','America/Aruba',-4.00,-4.00,-4.00),('AX','Europe/Mariehamn',2.00,3.00,2.00),('AZ','Asia/Baku',4.00,5.00,4.00),('BA','Europe/Sarajevo',1.00,2.00,1.00),('BB','America/Barbados',-4.00,-4.00,-4.00),('BD','Asia/Dhaka',6.00,6.00,6.00),('BE','Europe/Brussels',1.00,2.00,1.00),('BF','Africa/Ouagadougou',0.00,0.00,0.00),('BG','Europe/Sofia',2.00,3.00,2.00),('BH','Asia/Bahrain',3.00,3.00,3.00),('BI','Africa/Bujumbura',2.00,2.00,2.00),('BJ','Africa/Porto-Novo',1.00,1.00,1.00),('BL','America/St_Barthelemy',-4.00,-4.00,-4.00),('BM','Atlantic/Bermuda',-4.00,-3.00,-4.00),('BN','Asia/Brunei',8.00,8.00,8.00),('BO','America/La_Paz',-4.00,-4.00,-4.00),('BQ','America/Kralendijk',-4.00,-4.00,-4.00),('BR','America/Araguaina',-3.00,-3.00,-3.00),('BR','America/Bahia',-3.00,-3.00,-3.00),('BR','America/Belem',-3.00,-3.00,-3.00),('BR','America/Boa_Vista',-4.00,-4.00,-4.00),('BR','America/Campo_Grande',-3.00,-4.00,-4.00),('BR','America/Cuiaba',-3.00,-4.00,-4.00),('BR','America/Eirunepe',-5.00,-5.00,-5.00),('BR','America/Fortaleza',-3.00,-3.00,-3.00),('BR','America/Maceio',-3.00,-3.00,-3.00),('BR','America/Manaus',-4.00,-4.00,-4.00),('BR','America/Noronha',-2.00,-2.00,-2.00),('BR','America/Porto_Velho',-4.00,-4.00,-4.00),('BR','America/Recife',-3.00,-3.00,-3.00),('BR','America/Rio_Branco',-5.00,-5.00,-5.00),('BR','America/Santarem',-3.00,-3.00,-3.00),('BR','America/Sao_Paulo',-2.00,-3.00,-3.00),('BS','America/Nassau',-5.00,-4.00,-5.00),('BT','Asia/Thimphu',6.00,6.00,6.00),('BW','Africa/Gaborone',2.00,2.00,2.00),('BY','Europe/Minsk',3.00,3.00,3.00),('BZ','America/Belize',-6.00,-6.00,-6.00),('CA','America/Atikokan',-5.00,-5.00,-5.00),('CA','America/Blanc-Sablon',-4.00,-4.00,-4.00),('CA','America/Cambridge_Bay',-7.00,-6.00,-7.00),('CA','America/Creston',-7.00,-7.00,-7.00),('CA','America/Dawson',-8.00,-7.00,-8.00),('CA','America/Dawson_Creek',-7.00,-7.00,-7.00),('CA','America/Edmonton',-7.00,-6.00,-7.00),('CA','America/Glace_Bay',-4.00,-3.00,-4.00),('CA','America/Goose_Bay',-4.00,-3.00,-4.00),('CA','America/Halifax',-4.00,-3.00,-4.00),('CA','America/Inuvik',-7.00,-6.00,-7.00),('CA','America/Iqaluit',-5.00,-4.00,-5.00),('CA','America/Moncton',-4.00,-3.00,-4.00),('CA','America/Montreal',-5.00,-4.00,-5.00),('CA','America/Nipigon',-5.00,-4.00,-5.00),('CA','America/Pangnirtung',-5.00,-4.00,-5.00),('CA','America/Rainy_River',-6.00,-5.00,-6.00),('CA','America/Rankin_Inlet',-6.00,-5.00,-6.00),('CA','America/Regina',-6.00,-6.00,-6.00),('CA','America/Resolute',-6.00,-5.00,-6.00),('CA','America/St_Johns',-3.50,-2.50,-3.50),('CA','America/Swift_Current',-6.00,-6.00,-6.00),('CA','America/Thunder_Bay',-5.00,-4.00,-5.00),('CA','America/Toronto',-5.00,-4.00,-5.00),('CA','America/Vancouver',-8.00,-7.00,-8.00),('CA','America/Whitehorse',-8.00,-7.00,-8.00),('CA','America/Winnipeg',-6.00,-5.00,-6.00),('CA','America/Yellowknife',-7.00,-6.00,-7.00),('CC','Indian/Cocos',6.50,6.50,6.50),('CD','Africa/Kinshasa',1.00,1.00,1.00),('CD','Africa/Lubumbashi',2.00,2.00,2.00),('CF','Africa/Bangui',1.00,1.00,1.00),('CG','Africa/Brazzaville',1.00,1.00,1.00),('CH','Europe/Zurich',1.00,2.00,1.00),('CI','Africa/Abidjan',0.00,0.00,0.00),('CK','Pacific/Rarotonga',-10.00,-10.00,-10.00),('CL','America/Santiago',-3.00,-4.00,-4.00),('CL','Pacific/Easter',-5.00,-6.00,-6.00),('CM','Africa/Douala',1.00,1.00,1.00),('CN','Asia/Chongqing',8.00,8.00,8.00),('CN','Asia/Harbin',8.00,8.00,8.00),('CN','Asia/Kashgar',8.00,8.00,8.00),('CN','Asia/Shanghai',8.00,8.00,8.00),('CN','Asia/Urumqi',8.00,8.00,8.00),('CO','America/Bogota',-5.00,-5.00,-5.00),('CR','America/Costa_Rica',-6.00,-6.00,-6.00),('CU','America/Havana',-5.00,-4.00,-5.00),('CV','Atlantic/Cape_Verde',-1.00,-1.00,-1.00),('CW','America/Curacao',-4.00,-4.00,-4.00),('CX','Indian/Christmas',7.00,7.00,7.00),('CY','Asia/Nicosia',2.00,3.00,2.00),('CZ','Europe/Prague',1.00,2.00,1.00),('DE','Europe/Berlin',1.00,2.00,1.00),('DE','Europe/Busingen',1.00,2.00,1.00),('DJ','Africa/Djibouti',3.00,3.00,3.00),('DK','Europe/Copenhagen',1.00,2.00,1.00),('DM','America/Dominica',-4.00,-4.00,-4.00),('DO','America/Santo_Domingo',-4.00,-4.00,-4.00),('DZ','Africa/Algiers',1.00,1.00,1.00),('EC','America/Guayaquil',-5.00,-5.00,-5.00),('EC','Pacific/Galapagos',-6.00,-6.00,-6.00),('EE','Europe/Tallinn',2.00,3.00,2.00),('EG','Africa/Cairo',2.00,2.00,2.00),('EH','Africa/El_Aaiun',0.00,0.00,0.00),('ER','Africa/Asmara',3.00,3.00,3.00),('ES','Africa/Ceuta',1.00,2.00,1.00),('ES','Atlantic/Canary',0.00,1.00,0.00),('ES','Europe/Madrid',1.00,2.00,1.00),('ET','Africa/Addis_Ababa',3.00,3.00,3.00),('FI','Europe/Helsinki',2.00,3.00,2.00),('FJ','Pacific/Fiji',13.00,12.00,12.00),('FK','Atlantic/Stanley',-3.00,-3.00,-3.00),('FM','Pacific/Chuuk',10.00,10.00,10.00),('FM','Pacific/Kosrae',11.00,11.00,11.00),('FM','Pacific/Pohnpei',11.00,11.00,11.00),('FO','Atlantic/Faroe',0.00,1.00,0.00),('FR','Europe/Paris',1.00,2.00,1.00),('GA','Africa/Libreville',1.00,1.00,1.00),('GB','Europe/London',0.00,1.00,0.00),('GD','America/Grenada',-4.00,-4.00,-4.00),('GE','Asia/Tbilisi',4.00,4.00,4.00),('GF','America/Cayenne',-3.00,-3.00,-3.00),('GG','Europe/Guernsey',0.00,1.00,0.00),('GH','Africa/Accra',0.00,0.00,0.00),('GI','Europe/Gibraltar',1.00,2.00,1.00),('GL','America/Danmarkshavn',0.00,0.00,0.00),('GL','America/Godthab',-3.00,-2.00,-3.00),('GL','America/Scoresbysund',-1.00,0.00,-1.00),('GL','America/Thule',-4.00,-3.00,-4.00),('GM','Africa/Banjul',0.00,0.00,0.00),('GN','Africa/Conakry',0.00,0.00,0.00),('GP','America/Guadeloupe',-4.00,-4.00,-4.00),('GQ','Africa/Malabo',1.00,1.00,1.00),('GR','Europe/Athens',2.00,3.00,2.00),('GS','Atlantic/South_Georgia',-2.00,-2.00,-2.00),('GT','America/Guatemala',-6.00,-6.00,-6.00),('GU','Pacific/Guam',10.00,10.00,10.00),('GW','Africa/Bissau',0.00,0.00,0.00),('GY','America/Guyana',-4.00,-4.00,-4.00),('HK','Asia/Hong_Kong',8.00,8.00,8.00),('HN','America/Tegucigalpa',-6.00,-6.00,-6.00),('HR','Europe/Zagreb',1.00,2.00,1.00),('HT','America/Port-au-Prince',-5.00,-4.00,-5.00),('HU','Europe/Budapest',1.00,2.00,1.00),('ID','Asia/Jakarta',7.00,7.00,7.00),('ID','Asia/Jayapura',9.00,9.00,9.00),('ID','Asia/Makassar',8.00,8.00,8.00),('ID','Asia/Pontianak',7.00,7.00,7.00),('IE','Europe/Dublin',0.00,1.00,0.00),('IL','Asia/Jerusalem',2.00,3.00,2.00),('IM','Europe/Isle_of_Man',0.00,1.00,0.00),('IN','Asia/Kolkata',5.50,5.50,5.50),('IO','Indian/Chagos',6.00,6.00,6.00),('IQ','Asia/Baghdad',3.00,3.00,3.00),('IR','Asia/Tehran',3.50,4.50,3.50),('IS','Atlantic/Reykjavik',0.00,0.00,0.00),('IT','Europe/Rome',1.00,2.00,1.00),('JE','Europe/Jersey',0.00,1.00,0.00),('JM','America/Jamaica',-5.00,-5.00,-5.00),('JO','Asia/Amman',2.00,3.00,2.00),('JP','Asia/Tokyo',9.00,9.00,9.00),('KE','Africa/Nairobi',3.00,3.00,3.00),('KG','Asia/Bishkek',6.00,6.00,6.00),('KH','Asia/Phnom_Penh',7.00,7.00,7.00),('KI','Pacific/Enderbury',13.00,13.00,13.00),('KI','Pacific/Kiritimati',14.00,14.00,14.00),('KI','Pacific/Tarawa',12.00,12.00,12.00),('KM','Indian/Comoro',3.00,3.00,3.00),('KN','America/St_Kitts',-4.00,-4.00,-4.00),('KP','Asia/Pyongyang',9.00,9.00,9.00),('KR','Asia/Seoul',9.00,9.00,9.00),('KW','Asia/Kuwait',3.00,3.00,3.00),('KY','America/Cayman',-5.00,-5.00,-5.00),('KZ','Asia/Almaty',6.00,6.00,6.00),('KZ','Asia/Aqtau',5.00,5.00,5.00),('KZ','Asia/Aqtobe',5.00,5.00,5.00),('KZ','Asia/Oral',5.00,5.00,5.00),('KZ','Asia/Qyzylorda',6.00,6.00,6.00),('LA','Asia/Vientiane',7.00,7.00,7.00),('LB','Asia/Beirut',2.00,3.00,2.00),('LC','America/St_Lucia',-4.00,-4.00,-4.00),('LI','Europe/Vaduz',1.00,2.00,1.00),('LK','Asia/Colombo',5.50,5.50,5.50),('LR','Africa/Monrovia',0.00,0.00,0.00),('LS','Africa/Maseru',2.00,2.00,2.00),('LT','Europe/Vilnius',2.00,3.00,2.00),('LU','Europe/Luxembourg',1.00,2.00,1.00),('LV','Europe/Riga',2.00,3.00,2.00),('LY','Africa/Tripoli',2.00,2.00,2.00),('MA','Africa/Casablanca',0.00,0.00,0.00),('MC','Europe/Monaco',1.00,2.00,1.00),('MD','Europe/Chisinau',2.00,3.00,2.00),('ME','Europe/Podgorica',1.00,2.00,1.00),('MF','America/Marigot',-4.00,-4.00,-4.00),('MG','Indian/Antananarivo',3.00,3.00,3.00),('MH','Pacific/Kwajalein',12.00,12.00,12.00),('MH','Pacific/Majuro',12.00,12.00,12.00),('MK','Europe/Skopje',1.00,2.00,1.00),('ML','Africa/Bamako',0.00,0.00,0.00),('MM','Asia/Rangoon',6.50,6.50,6.50),('MN','Asia/Choibalsan',8.00,8.00,8.00),('MN','Asia/Hovd',7.00,7.00,7.00),('MN','Asia/Ulaanbaatar',8.00,8.00,8.00),('MO','Asia/Macau',8.00,8.00,8.00),('MP','Pacific/Saipan',10.00,10.00,10.00),('MQ','America/Martinique',-4.00,-4.00,-4.00),('MR','Africa/Nouakchott',0.00,0.00,0.00),('MS','America/Montserrat',-4.00,-4.00,-4.00),('MT','Europe/Malta',1.00,2.00,1.00),('MU','Indian/Mauritius',4.00,4.00,4.00),('MV','Indian/Maldives',5.00,5.00,5.00),('MW','Africa/Blantyre',2.00,2.00,2.00),('MX','America/Bahia_Banderas',-6.00,-5.00,-6.00),('MX','America/Cancun',-6.00,-5.00,-6.00),('MX','America/Chihuahua',-7.00,-6.00,-7.00),('MX','America/Hermosillo',-7.00,-7.00,-7.00),('MX','America/Matamoros',-6.00,-5.00,-6.00),('MX','America/Mazatlan',-7.00,-6.00,-7.00),('MX','America/Merida',-6.00,-5.00,-6.00),('MX','America/Mexico_City',-6.00,-5.00,-6.00),('MX','America/Monterrey',-6.00,-5.00,-6.00),('MX','America/Ojinaga',-7.00,-6.00,-7.00),('MX','America/Santa_Isabel',-8.00,-7.00,-8.00),('MX','America/Tijuana',-8.00,-7.00,-8.00),('MY','Asia/Kuala_Lumpur',8.00,8.00,8.00),('MY','Asia/Kuching',8.00,8.00,8.00),('MZ','Africa/Maputo',2.00,2.00,2.00),('NA','Africa/Windhoek',2.00,1.00,1.00),('NC','Pacific/Noumea',11.00,11.00,11.00),('NE','Africa/Niamey',1.00,1.00,1.00),('NF','Pacific/Norfolk',11.50,11.50,11.50),('NG','Africa/Lagos',1.00,1.00,1.00),('NI','America/Managua',-6.00,-6.00,-6.00),('NL','Europe/Amsterdam',1.00,2.00,1.00),('NO','Europe/Oslo',1.00,2.00,1.00),('NP','Asia/Kathmandu',5.75,5.75,5.75),('NR','Pacific/Nauru',12.00,12.00,12.00),('NU','Pacific/Niue',-11.00,-11.00,-11.00),('NZ','Pacific/Auckland',13.00,12.00,12.00),('NZ','Pacific/Chatham',13.75,12.75,12.75),('OM','Asia/Muscat',4.00,4.00,4.00),('PA','America/Panama',-5.00,-5.00,-5.00),('PE','America/Lima',-5.00,-5.00,-5.00),('PF','Pacific/Gambier',-9.00,-9.00,-9.00),('PF','Pacific/Marquesas',-9.50,-9.50,-9.50),('PF','Pacific/Tahiti',-10.00,-10.00,-10.00),('PG','Pacific/Port_Moresby',10.00,10.00,10.00),('PH','Asia/Manila',8.00,8.00,8.00),('PK','Asia/Karachi',5.00,5.00,5.00),('PL','Europe/Warsaw',1.00,2.00,1.00),('PM','America/Miquelon',-3.00,-2.00,-3.00),('PN','Pacific/Pitcairn',-8.00,-8.00,-8.00),('PR','America/Puerto_Rico',-4.00,-4.00,-4.00),('PS','Asia/Gaza',2.00,3.00,2.00),('PS','Asia/Hebron',2.00,3.00,2.00),('PT','Atlantic/Azores',-1.00,0.00,-1.00),('PT','Atlantic/Madeira',0.00,1.00,0.00),('PT','Europe/Lisbon',0.00,1.00,0.00),('PW','Pacific/Palau',9.00,9.00,9.00),('PY','America/Asuncion',-3.00,-4.00,-4.00),('QA','Asia/Qatar',3.00,3.00,3.00),('RE','Indian/Reunion',4.00,4.00,4.00),('RO','Europe/Bucharest',2.00,3.00,2.00),('RS','Europe/Belgrade',1.00,2.00,1.00),('RU','Asia/Anadyr',12.00,12.00,12.00),('RU','Asia/Irkutsk',9.00,9.00,9.00),('RU','Asia/Kamchatka',12.00,12.00,12.00),('RU','Asia/Khandyga',10.00,10.00,10.00),('RU','Asia/Krasnoyarsk',8.00,8.00,8.00),('RU','Asia/Magadan',12.00,12.00,12.00),('RU','Asia/Novokuznetsk',7.00,7.00,7.00),('RU','Asia/Novosibirsk',7.00,7.00,7.00),('RU','Asia/Omsk',7.00,7.00,7.00),('RU','Asia/Sakhalin',11.00,11.00,11.00),('RU','Asia/Ust-Nera',11.00,11.00,11.00),('RU','Asia/Vladivostok',11.00,11.00,11.00),('RU','Asia/Yakutsk',10.00,10.00,10.00),('RU','Asia/Yekaterinburg',6.00,6.00,6.00),('RU','Europe/Kaliningrad',3.00,3.00,3.00),('RU','Europe/Moscow',4.00,4.00,4.00),('RU','Europe/Samara',4.00,4.00,4.00),('RU','Europe/Volgograd',4.00,4.00,4.00),('RW','Africa/Kigali',2.00,2.00,2.00),('SA','Asia/Riyadh',3.00,3.00,3.00),('SB','Pacific/Guadalcanal',11.00,11.00,11.00),('SC','Indian/Mahe',4.00,4.00,4.00),('SD','Africa/Khartoum',3.00,3.00,3.00),('SE','Europe/Stockholm',1.00,2.00,1.00),('SG','Asia/Singapore',8.00,8.00,8.00),('SH','Atlantic/St_Helena',0.00,0.00,0.00),('SI','Europe/Ljubljana',1.00,2.00,1.00),('SJ','Arctic/Longyearbyen',1.00,2.00,1.00),('SK','Europe/Bratislava',1.00,2.00,1.00),('SL','Africa/Freetown',0.00,0.00,0.00),('SM','Europe/San_Marino',1.00,2.00,1.00),('SN','Africa/Dakar',0.00,0.00,0.00),('SO','Africa/Mogadishu',3.00,3.00,3.00),('SR','America/Paramaribo',-3.00,-3.00,-3.00),('SS','Africa/Juba',3.00,3.00,3.00),('ST','Africa/Sao_Tome',0.00,0.00,0.00),('SV','America/El_Salvador',-6.00,-6.00,-6.00),('SX','America/Lower_Princes',-4.00,-4.00,-4.00),('SY','Asia/Damascus',2.00,3.00,2.00),('SZ','Africa/Mbabane',2.00,2.00,2.00),('TC','America/Grand_Turk',-5.00,-4.00,-5.00),('TD','Africa/Ndjamena',1.00,1.00,1.00),('TF','Indian/Kerguelen',5.00,5.00,5.00),('TG','Africa/Lome',0.00,0.00,0.00),('TH','Asia/Bangkok',7.00,7.00,7.00),('TJ','Asia/Dushanbe',5.00,5.00,5.00),('TK','Pacific/Fakaofo',13.00,13.00,13.00),('TL','Asia/Dili',9.00,9.00,9.00),('TM','Asia/Ashgabat',5.00,5.00,5.00),('TN','Africa/Tunis',1.00,1.00,1.00),('TO','Pacific/Tongatapu',13.00,13.00,13.00),('TR','Europe/Istanbul',2.00,3.00,2.00),('TT','America/Port_of_Spain',-4.00,-4.00,-4.00),('TV','Pacific/Funafuti',12.00,12.00,12.00),('TW','Asia/Taipei',8.00,8.00,8.00),('TZ','Africa/Dar_es_Salaam',3.00,3.00,3.00),('UA','Europe/Kiev',2.00,3.00,2.00),('UA','Europe/Simferopol',2.00,4.00,4.00),('UA','Europe/Uzhgorod',2.00,3.00,2.00),('UA','Europe/Zaporozhye',2.00,3.00,2.00),('UG','Africa/Kampala',3.00,3.00,3.00),('UM','Pacific/Johnston',-10.00,-10.00,-10.00),('UM','Pacific/Midway',-11.00,-11.00,-11.00),('UM','Pacific/Wake',12.00,12.00,12.00),('US','America/Adak',-10.00,-9.00,-10.00),('US','America/Anchorage',-9.00,-8.00,-9.00),('US','America/Boise',-7.00,-6.00,-7.00),('US','America/Chicago',-6.00,-5.00,-6.00),('US','America/Denver',-7.00,-6.00,-7.00),('US','America/Detroit',-5.00,-4.00,-5.00),('US','America/Indiana/Indianapolis',-5.00,-4.00,-5.00),('US','America/Indiana/Knox',-6.00,-5.00,-6.00),('US','America/Indiana/Marengo',-5.00,-4.00,-5.00),('US','America/Indiana/Petersburg',-5.00,-4.00,-5.00),('US','America/Indiana/Tell_City',-6.00,-5.00,-6.00),('US','America/Indiana/Vevay',-5.00,-4.00,-5.00),('US','America/Indiana/Vincennes',-5.00,-4.00,-5.00),('US','America/Indiana/Winamac',-5.00,-4.00,-5.00),('US','America/Juneau',-9.00,-8.00,-9.00),('US','America/Kentucky/Louisville',-5.00,-4.00,-5.00),('US','America/Kentucky/Monticello',-5.00,-4.00,-5.00),('US','America/Los_Angeles',-8.00,-7.00,-8.00),('US','America/Menominee',-6.00,-5.00,-6.00),('US','America/Metlakatla',-8.00,-8.00,-8.00),('US','America/New_York',-5.00,-4.00,-5.00),('US','America/Nome',-9.00,-8.00,-9.00),('US','America/North_Dakota/Beulah',-6.00,-5.00,-6.00),('US','America/North_Dakota/Center',-6.00,-5.00,-6.00),('US','America/North_Dakota/New_Salem',-6.00,-5.00,-6.00),('US','America/Phoenix',-7.00,-7.00,-7.00),('US','America/Shiprock',-7.00,-6.00,-7.00),('US','America/Sitka',-9.00,-8.00,-9.00),('US','America/Yakutat',-9.00,-8.00,-9.00),('US','Pacific/Honolulu',-10.00,-10.00,-10.00),('UY','America/Montevideo',-2.00,-3.00,-3.00),('UZ','Asia/Samarkand',5.00,5.00,5.00),('UZ','Asia/Tashkent',5.00,5.00,5.00),('VA','Europe/Vatican',1.00,2.00,1.00),('VC','America/St_Vincent',-4.00,-4.00,-4.00),('VE','America/Caracas',-4.50,-4.50,-4.50),('VG','America/Tortola',-4.00,-4.00,-4.00),('VI','America/St_Thomas',-4.00,-4.00,-4.00),('VN','Asia/Ho_Chi_Minh',7.00,7.00,7.00),('VU','Pacific/Efate',11.00,11.00,11.00),('WF','Pacific/Wallis',12.00,12.00,12.00),('WS','Pacific/Apia',14.00,13.00,13.00),('YE','Asia/Aden',3.00,3.00,3.00),('YT','Indian/Mayotte',3.00,3.00,3.00),('ZA','Africa/Johannesburg',2.00,2.00,2.00),('ZM','Africa/Lusaka',2.00,2.00,2.00),('ZW','Africa/Harare',2.00,2.00,2.00);
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulinks`
--

DROP TABLE IF EXISTS `ulinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulinks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulinks`
--

LOCK TABLES `ulinks` WRITE;
/*!40000 ALTER TABLE `ulinks` DISABLE KEYS */;
INSERT INTO `ulinks` VALUES (40,179,'Libro de Reclamaciones','/superv/librodereclamaciones/10/page',NULL,NULL);
/*!40000 ALTER TABLE `ulinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verification_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_verified` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,NULL,NULL,NULL,'gutterreal','trevorcalfan2@gmail.com','$2y$10$cHdLVLKhnF4r3gbOQbFM2.155rWeonwdLCDphPTyIfSsn1aNvt2Iq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'99acd17e304e7428f8af60110191d266','Yes','2023-07-26 03:16:28','2023-07-31 15:38:37',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-08  4:58:41
