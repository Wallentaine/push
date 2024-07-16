-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u4542786_user16274311_push
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_data`
--

DROP TABLE IF EXISTS `t_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apath` varchar(20) NOT NULL COMMENT 'Путь к админке',
  `pdomain` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `p_allusers` int(11) NOT NULL,
  `p_all_showed` int(14) NOT NULL,
  `p_all_clicks` int(11) NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `project_name` varchar(300) NOT NULL,
  `private_key` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_data`
--

LOCK TABLES `t_data` WRITE;
/*!40000 ALTER TABLE `t_data` DISABLE KEYS */;
INSERT INTO `t_data` VALUES (1,'admin','site.ru','https://t.me/crabs_channel - канал Мистера Крабса. Вход пока бесплатный.',0,0,0,'','','');
/*!40000 ALTER TABLE `t_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gosend`
--

DROP TABLE IF EXISTS `t_gosend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gosend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_msg` int(11) NOT NULL,
  `send_stream` int(11) NOT NULL,
  `send_device` int(3) NOT NULL,
  `send_cou` varchar(100) NOT NULL,
  `send_from` int(11) NOT NULL,
  `send_to` int(11) NOT NULL,
  `send_lastid` int(11) NOT NULL,
  `send_total` int(11) NOT NULL,
  `send_progress` int(11) NOT NULL,
  `dt` int(11) NOT NULL,
  `dtstart` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gosend`
--

LOCK TABLES `t_gosend` WRITE;
/*!40000 ALTER TABLE `t_gosend` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gosend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_messages`
--

DROP TABLE IF EXISTS `t_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ti` varchar(100) NOT NULL,
  `msg` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `img_sm` varchar(30) NOT NULL,
  `img_big` varchar(30) NOT NULL,
  `tags` varchar(500) NOT NULL,
  `dt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_stat`
--

DROP TABLE IF EXISTS `t_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lnd` int(3) NOT NULL,
  `stream` int(11) NOT NULL,
  `ymd` int(9) NOT NULL,
  `clk` int(11) NOT NULL,
  `subs` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lnd` (`lnd`),
  KEY `stream` (`stream`),
  KEY `ymd` (`ymd`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
--
-- Table structure for table `t_stat_ip`
--

DROP TABLE IF EXISTS `t_stat_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_stat_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream` int(11) NOT NULL,
  `ip` varchar(70) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stream` (`stream`)
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_stat_labels`
--

DROP TABLE IF EXISTS `t_stat_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_stat_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lbl` varchar(100) NOT NULL,
  `ymd` int(9) NOT NULL,
  `clk` int(11) NOT NULL,
  `subs` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lbl` (`lbl`),
  KEY `ymd` (`ymd`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_stat_sended`
--

DROP TABLE IF EXISTS `t_stat_sended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_stat_sended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` int(11) NOT NULL,
  `ymd` int(9) NOT NULL,
  `shows` int(11) NOT NULL,
  `clk` int(11) NOT NULL,
  `unsubs` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msg` (`msg`),
  KEY `ymd` (`ymd`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_streams`
--

DROP TABLE IF EXISTS `t_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ti` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ty` int(2) NOT NULL COMMENT '0-land,1-site',
  `landing` int(11) NOT NULL,
  `tb` varchar(200) NOT NULL COMMENT 'Трафбэк URL',
  `tb2` varchar(200) NOT NULL,
  `iget` int(2) NOT NULL,
  `dt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_tokens`
--

DROP TABLE IF EXISTS `t_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkn` varchar(300) NOT NULL,
  `stream` int(11) NOT NULL,
  `cou` varchar(3) NOT NULL,
  `device` int(2) NOT NULL,
  `dt` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `n` (`tkn`),
  KEY `cou` (`cou`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(50) DEFAULT NULL,
  `pas` varchar(50) NOT NULL,
  `ty` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `log` (`log`),
  KEY `pas` (`pas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES (1,'admin','crabs','1 2 3 4 5 6 7'),(4,'test','test','0');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 12:30:57
