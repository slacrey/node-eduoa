-- MySQL dump 10.11
--
-- Host: localhost    Database: node_eduoa
-- ------------------------------------------------------
-- Server version	5.0.87-community-nt

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
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article` (
  `id` bigint(20) NOT NULL auto_increment,
  `channel_id` bigint(20) default NULL,
  `article_class_id` bigint(20) default NULL,
  `title` varchar(50) default NULL,
  `summary` varchar(50) default NULL,
  `content` text,
  `hits` int(11) default NULL,
  `create_time` datetime default NULL,
  `create_user_id` bigint(20) default NULL,
  `update_time` datetime default NULL,
  `update_user_id` bigint(20) default NULL,
  `article_state` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_32` (`channel_id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_teacher`
--

DROP TABLE IF EXISTS `cms_article_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_teacher` (
  `id` bigint(20) NOT NULL auto_increment,
  `article_id` bigint(20) default NULL,
  `teacher_name` varchar(10) default NULL,
  `photo_url` varchar(100) default NULL,
  `attachment_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_33` (`article_id`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_teacher`
--

LOCK TABLES `cms_article_teacher` WRITE;
/*!40000 ALTER TABLE `cms_article_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_article_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_channel`
--

DROP TABLE IF EXISTS `cms_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_channel` (
  `id` bigint(20) NOT NULL auto_increment,
  `channel_name` varchar(100) default NULL,
  `channel_sort` int(11) default NULL,
  `channel_url` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_channel`
--

LOCK TABLES `cms_channel` WRITE;
/*!40000 ALTER TABLE `cms_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_appraisal`
--

DROP TABLE IF EXISTS `oa_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_appraisal` (
  `id` bigint(20) NOT NULL auto_increment,
  `atype` int(11) default NULL,
  `start_month` datetime default NULL,
  `end_month` datetime default NULL,
  `teacher_id` bigint(20) default NULL,
  `create_time` datetime default NULL,
  `user_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_appraisal`
--

LOCK TABLES `oa_appraisal` WRITE;
/*!40000 ALTER TABLE `oa_appraisal` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_appraisal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_certificate`
--

DROP TABLE IF EXISTS `oa_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_certificate` (
  `id` bigint(20) NOT NULL auto_increment,
  `type_id` bigint(20) default NULL,
  `advanced` int(11) default NULL,
  `certificates_time` datetime default NULL,
  `description` varchar(200) default NULL,
  `teacher_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_31` (`type_id`),
  KEY `FK_Reference_30` (`teacher_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`teacher_id`) REFERENCES `oa_teacher_info` (`id`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`type_id`) REFERENCES `oa_certificate_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_certificate`
--

LOCK TABLES `oa_certificate` WRITE;
/*!40000 ALTER TABLE `oa_certificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_certificate_type`
--

DROP TABLE IF EXISTS `oa_certificate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_certificate_type` (
  `id` bigint(20) NOT NULL auto_increment,
  `type_name` varchar(50) default NULL,
  `description` varchar(200) default NULL,
  `type_level` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_certificate_type`
--

LOCK TABLES `oa_certificate_type` WRITE;
/*!40000 ALTER TABLE `oa_certificate_type` DISABLE KEYS */;
INSERT INTO `oa_certificate_type` VALUES (1,'阿斯达','123',23),(2,'12322231','123',222);
/*!40000 ALTER TABLE `oa_certificate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_class`
--

DROP TABLE IF EXISTS `oa_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_class` (
  `id` bigint(20) NOT NULL auto_increment,
  `grade_id` bigint(20) default NULL,
  `class_name` varchar(50) default NULL,
  `category` int(11) default NULL,
  `description` varchar(200) default NULL,
  `number_limit` int(11) default NULL,
  `create_time` datetime default NULL,
  `update_time` datetime default NULL,
  `create_user_id` bigint(20) default NULL,
  `update_user_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_grade_class` (`grade_id`),
  CONSTRAINT `FK_Reference_grade_class` FOREIGN KEY (`grade_id`) REFERENCES `oa_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_class`
--

LOCK TABLES `oa_class` WRITE;
/*!40000 ALTER TABLE `oa_class` DISABLE KEYS */;
INSERT INTO `oa_class` VALUES (7,13,'高一（1）班',1,'',50,'2013-07-13 22:24:19',NULL,NULL,NULL),(8,13,'高一（2）班',1,'',50,'2013-07-13 22:24:36',NULL,NULL,NULL),(9,13,'高一（3）班',1,'',50,'2013-07-13 22:24:50',NULL,NULL,NULL),(10,13,'高一（4）班',1,'',50,'2013-07-13 22:25:04',NULL,NULL,NULL),(11,14,'高一（1）班',1,'',50,'2013-07-13 22:25:28',NULL,NULL,NULL),(12,14,'高一（2）班',1,'',50,'2013-07-13 22:25:45',NULL,NULL,NULL),(13,14,'高一（3）班',1,'',50,'2013-07-13 22:25:59',NULL,NULL,NULL),(14,14,'高一（4）班',1,'',50,'2013-07-13 22:26:08',NULL,NULL,NULL),(15,15,'高二（1）班',2,'',50,'2013-07-13 22:26:28',NULL,NULL,NULL),(16,15,'高二（2）班',2,'',50,'2013-07-13 22:26:46',NULL,NULL,NULL),(17,15,'高二（3）班',3,'',50,'2013-07-13 22:27:02',NULL,NULL,NULL),(18,15,'高二（4）班',3,'',50,'2013-07-13 22:27:40',NULL,NULL,NULL),(19,16,'高二（1）班',2,'',50,'2013-07-13 22:29:09',NULL,NULL,NULL),(20,16,'高二（2）班',3,'',50,'2013-07-13 22:29:27',NULL,NULL,NULL),(21,16,'高二（3）班',2,'',50,'2013-07-13 22:29:38',NULL,NULL,NULL),(22,16,'高二（4）班',3,'',50,'2013-07-13 22:29:57',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oa_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_class_teacher`
--

DROP TABLE IF EXISTS `oa_class_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_class_teacher` (
  `id` bigint(20) NOT NULL auto_increment,
  `class_id` bigint(20) default NULL,
  `teacher_id` bigint(20) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `head_teacher` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_22` (`class_id`),
  KEY `FK_Reference_21` (`teacher_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`teacher_id`) REFERENCES `oa_teacher_info` (`id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`class_id`) REFERENCES `oa_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_class_teacher`
--

LOCK TABLES `oa_class_teacher` WRITE;
/*!40000 ALTER TABLE `oa_class_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_class_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_contact`
--

DROP TABLE IF EXISTS `oa_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_contact` (
  `id` bigint(20) NOT NULL auto_increment,
  `student_id` bigint(20) default NULL,
  `nexus` varchar(20) default NULL,
  `contact_name` varchar(50) default NULL,
  `job` varchar(50) default NULL,
  `phone` varchar(20) default NULL,
  `qq` varchar(20) default NULL,
  `email` varchar(20) default NULL,
  `address` varchar(200) default NULL,
  `home_phone` varchar(20) default NULL,
  `office_phone` varchar(20) default NULL,
  `create_time` datetime default NULL,
  `update_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_student_contact` (`student_id`),
  CONSTRAINT `FK_Reference_student_contact` FOREIGN KEY (`student_id`) REFERENCES `oa_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_contact`
--

LOCK TABLES `oa_contact` WRITE;
/*!40000 ALTER TABLE `oa_contact` DISABLE KEYS */;
INSERT INTO `oa_contact` VALUES (3,11,'34523432','234324','234324','23432432',NULL,NULL,NULL,NULL,NULL,'2013-07-14 00:00:00','2013-07-14 18:57:55'),(4,12,'123123','123123','','1231231',NULL,NULL,NULL,NULL,NULL,'2013-07-14 18:48:14',NULL);
/*!40000 ALTER TABLE `oa_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_dictionary`
--

DROP TABLE IF EXISTS `oa_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_dictionary` (
  `id` bigint(20) NOT NULL auto_increment,
  `dict_name` varchar(50) default NULL,
  `dict_key` varchar(50) default NULL,
  `parent_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_18` (`parent_id`),
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`parent_id`) REFERENCES `oa_dictionary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_dictionary`
--

LOCK TABLES `oa_dictionary` WRITE;
/*!40000 ALTER TABLE `oa_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_dictionary_value`
--

DROP TABLE IF EXISTS `oa_dictionary_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_dictionary_value` (
  `id` bigint(20) NOT NULL auto_increment,
  `dictionary_id` bigint(20) default NULL,
  `dict_label` varchar(50) default NULL,
  `dict_value` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_19` (`dictionary_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`dictionary_id`) REFERENCES `oa_dictionary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_dictionary_value`
--

LOCK TABLES `oa_dictionary_value` WRITE;
/*!40000 ALTER TABLE `oa_dictionary_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_dictionary_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_goods_apply`
--

DROP TABLE IF EXISTS `oa_goods_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_goods_apply` (
  `id` bigint(20) NOT NULL auto_increment,
  `leader_id` bigint(20) default NULL,
  `leader_name` varchar(30) default NULL,
  `leader_position` varchar(30) default NULL,
  `goods_id` bigint(20) default NULL,
  `goods_name` varchar(50) default NULL,
  `goods_unit` varchar(50) default NULL,
  `apply_teacher_id` bigint(20) default NULL,
  `apply_teacher_name` varchar(30) default NULL,
  `apply_organization_id` bigint(20) default NULL,
  `apply_organization_name` varchar(30) default NULL,
  `create_time` datetime default NULL,
  `apply_time` datetime default NULL,
  `apply_statue` int(11) default NULL,
  `statue` int(11) default NULL,
  `goods_count` int(11) default NULL,
  `goods_statue` int(11) default NULL,
  `sick_time` datetime default NULL,
  `commit_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_goods_apply`
--

LOCK TABLES `oa_goods_apply` WRITE;
/*!40000 ALTER TABLE `oa_goods_apply` DISABLE KEYS */;
INSERT INTO `oa_goods_apply` VALUES (3,3,'张惠妹','副校长',NULL,'笔记本','台',1,'admin',30,'办公室','2013-07-20 14:38:58',NULL,0,0,12,NULL,NULL,NULL),(4,3,'张惠妹','副校长',NULL,'电脑','21',1,'admin',30,'办公室','2013-07-20 13:50:47','2013-07-20 14:42:16',1,1,21,NULL,'2013-07-20 14:45:45',NULL),(5,3,'张惠妹','副校长',NULL,'123','123',1,'admin',30,'办公室','2013-07-20 14:38:53',NULL,0,0,123,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oa_goods_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_grade`
--

DROP TABLE IF EXISTS `oa_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_grade` (
  `id` bigint(20) NOT NULL auto_increment,
  `grade_name` varchar(50) default NULL,
  `description` varchar(255) default NULL,
  `create_time` datetime default NULL,
  `current_year` int(11) default NULL,
  `current_half` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_grade`
--

LOCK TABLES `oa_grade` WRITE;
/*!40000 ALTER TABLE `oa_grade` DISABLE KEYS */;
INSERT INTO `oa_grade` VALUES (13,'高一年级','','2013-07-13 22:20:14',2013,1,'2012-09-01 00:00:00','2013-02-01 00:00:00'),(14,'高一年级','','2013-07-13 22:21:08',2013,2,'2013-03-01 00:00:00','2013-06-26 00:00:00'),(15,'高二年级','','2013-07-13 22:22:41',2013,1,'2012-09-01 00:00:00','2013-02-01 00:00:00'),(16,'高二年级','','2013-07-13 22:23:08',2013,2,'2013-03-01 00:00:00','2013-06-26 00:00:00'),(17,'高三年级','','2013-07-13 22:23:28',2013,1,'2012-09-01 00:00:00','2013-02-01 00:00:00'),(18,'高三年级','','2013-07-13 22:23:44',2013,2,'2013-03-01 00:00:00','2013-06-26 00:00:00');
/*!40000 ALTER TABLE `oa_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave_attendance`
--

DROP TABLE IF EXISTS `oa_leave_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave_attendance` (
  `id` bigint(20) NOT NULL auto_increment,
  `teacher_id` bigint(20) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `organization_name` varchar(30) NOT NULL,
  `leave_start_time` datetime default NULL,
  `leave_end_time` datetime default NULL,
  `leave_time` bigint(20) default NULL,
  `create_time` datetime NOT NULL,
  `attendance_date` varchar(255) default NULL,
  `leave_end` int(11) default NULL,
  `leave_start` int(11) default NULL,
  `leave_time_cn` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave_attendance`
--

LOCK TABLES `oa_leave_attendance` WRITE;
/*!40000 ALTER TABLE `oa_leave_attendance` DISABLE KEYS */;
INSERT INTO `oa_leave_attendance` VALUES (1,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-22',NULL,NULL,NULL),(2,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-23',NULL,NULL,NULL),(3,13,'林锋',30,'办公室','2013-07-24 14:24:23','2013-07-24 14:28:36',NULL,'2013-07-24 13:29:41','2013-7-24',1,1,'00:04:13'),(4,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-25',NULL,NULL,NULL),(5,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-26',NULL,NULL,NULL),(6,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-27',NULL,NULL,NULL),(7,13,'林锋',30,'办公室',NULL,NULL,NULL,'2013-07-24 13:29:41','2013-7-28',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oa_leave_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave_permit`
--

DROP TABLE IF EXISTS `oa_leave_permit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave_permit` (
  `id` bigint(20) NOT NULL auto_increment,
  `leader_id` bigint(20) default NULL,
  `leader_name` varchar(30) default NULL,
  `leader_position` varchar(30) default NULL,
  `reason` varchar(200) default NULL,
  `remark` varchar(255) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `apply_time` datetime default NULL,
  `apply_teacher_id` bigint(20) default NULL,
  `apply_teacher_name` varchar(30) default NULL,
  `create_time` datetime default NULL,
  `statue` int(11) default NULL,
  `apply_statue` int(11) default NULL,
  `apply_day` int(11) default NULL,
  `real_day` int(11) default NULL,
  `sick_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave_permit`
--

LOCK TABLES `oa_leave_permit` WRITE;
/*!40000 ALTER TABLE `oa_leave_permit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_leave_permit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_organizational_structure`
--

DROP TABLE IF EXISTS `oa_organizational_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_organizational_structure` (
  `id` bigint(20) NOT NULL auto_increment,
  `structure_name` varchar(50) default NULL,
  `create_time` datetime default NULL,
  `user_id` bigint(20) default NULL,
  `attachment_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_organizational_structure`
--

LOCK TABLES `oa_organizational_structure` WRITE;
/*!40000 ALTER TABLE `oa_organizational_structure` DISABLE KEYS */;
INSERT INTO `oa_organizational_structure` VALUES (17,'组织机构','2013-07-07 14:46:52',1,17);
/*!40000 ALTER TABLE `oa_organizational_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_position`
--

DROP TABLE IF EXISTS `oa_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_position` (
  `id` bigint(20) NOT NULL auto_increment,
  `position_name` varchar(50) default NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_position`
--

LOCK TABLES `oa_position` WRITE;
/*!40000 ALTER TABLE `oa_position` DISABLE KEYS */;
INSERT INTO `oa_position` VALUES (7,'校长',''),(8,'副校长',''),(9,'年级主任',''),(10,'年级教学主任',''),(11,'年级纪律主任',''),(12,'年级组长',''),(13,'备科组长',''),(14,'学科教研组长',''),(15,'教务处主任',''),(16,'政教处主任',''),(17,'办公室主任','');
/*!40000 ALTER TABLE `oa_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_registration_attendance`
--

DROP TABLE IF EXISTS `oa_registration_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_registration_attendance` (
  `id` bigint(20) NOT NULL auto_increment,
  `attendance_date` bigint(20) NOT NULL,
  `teacher_id` bigint(20) default NULL,
  `teacher_name` varchar(30) default NULL,
  `organization_id` bigint(20) default NULL,
  `organization_name` varchar(30) default NULL,
  `morning_start` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `morning_start_time` datetime default NULL,
  `morning_end` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `morning_end_time` datetime default NULL,
  `afternoon_start` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `afternoon_start_time` datetime default NULL,
  `afternoon_end` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `afternoon_end_time` datetime default NULL,
  `night_start` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `night_start_time` datetime default NULL,
  `night_end` int(11) default NULL COMMENT '上班状态（0：早退；1：正常；2：迟到）',
  `night_end_time` datetime default NULL,
  `create_time` datetime default NULL,
  `attendance_date_cn` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='签到考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_registration_attendance`
--

LOCK TABLES `oa_registration_attendance` WRITE;
/*!40000 ALTER TABLE `oa_registration_attendance` DISABLE KEYS */;
INSERT INTO `oa_registration_attendance` VALUES (22,1374422400000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:31','2013-7-22'),(23,1374508800000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-23'),(24,1374595200000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-24'),(25,1374681600000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-25'),(26,1374768000000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-26'),(27,1374854400000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-27'),(28,1374940800000,13,'林锋',30,'办公室',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-24 17:03:33','2013-7-28');
/*!40000 ALTER TABLE `oa_registration_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_student`
--

DROP TABLE IF EXISTS `oa_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_student` (
  `id` bigint(20) NOT NULL auto_increment,
  `student_name` varchar(50) default NULL,
  `id_number` varchar(18) default NULL,
  `gender` int(11) default NULL,
  `student_number` int(11) default NULL,
  `birthday` datetime default NULL,
  `create_time` datetime default NULL,
  `update_time` datetime default NULL,
  `operator_id` bigint(20) default NULL,
  `grade_name` varchar(30) default NULL,
  `class_name` varchar(30) default NULL,
  `current_year` int(11) default NULL,
  `category_name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_student`
--

LOCK TABLES `oa_student` WRITE;
/*!40000 ALTER TABLE `oa_student` DISABLE KEYS */;
INSERT INTO `oa_student` VALUES (11,'林锋','3454214324',1,3,'2013-07-08 00:00:00','2013-07-14 18:57:55',NULL,NULL,'高一年级','高一（3）班',2013,'全科'),(12,'张三','76543',0,2,'2013-07-17 00:00:00','2013-07-14 18:48:14',NULL,NULL,'高一年级','高一（3）班',2013,'全科');
/*!40000 ALTER TABLE `oa_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_student_class`
--

DROP TABLE IF EXISTS `oa_student_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_student_class` (
  `id` bigint(20) NOT NULL auto_increment,
  `student_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `current_year` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_29` (`class_id`),
  KEY `FK_Reference_28` (`student_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`student_id`) REFERENCES `oa_student` (`id`),
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`class_id`) REFERENCES `oa_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_student_class`
--

LOCK TABLES `oa_student_class` WRITE;
/*!40000 ALTER TABLE `oa_student_class` DISABLE KEYS */;
INSERT INTO `oa_student_class` VALUES (3,11,9,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013),(4,12,9,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013),(5,11,9,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013);
/*!40000 ALTER TABLE `oa_student_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_student_grade`
--

DROP TABLE IF EXISTS `oa_student_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_student_grade` (
  `id` bigint(20) NOT NULL auto_increment,
  `grade_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `current_year` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_27` (`grade_id`),
  KEY `FK_Reference_26` (`student_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`student_id`) REFERENCES `oa_student` (`id`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`grade_id`) REFERENCES `oa_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_student_grade`
--

LOCK TABLES `oa_student_grade` WRITE;
/*!40000 ALTER TABLE `oa_student_grade` DISABLE KEYS */;
INSERT INTO `oa_student_grade` VALUES (3,13,11,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013),(4,13,12,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013),(5,13,11,'2012-09-01 00:00:00','2013-02-01 00:00:00',2013);
/*!40000 ALTER TABLE `oa_student_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_subject`
--

DROP TABLE IF EXISTS `oa_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_subject` (
  `id` bigint(20) NOT NULL auto_increment,
  `subject_name` varchar(50) default NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_subject`
--

LOCK TABLES `oa_subject` WRITE;
/*!40000 ALTER TABLE `oa_subject` DISABLE KEYS */;
INSERT INTO `oa_subject` VALUES (3,'语文',''),(4,'数学',''),(5,'英语',''),(6,'物理',''),(7,'化学',''),(8,'生物','');
/*!40000 ALTER TABLE `oa_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_teacher_info`
--

DROP TABLE IF EXISTS `oa_teacher_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_teacher_info` (
  `id` bigint(20) NOT NULL auto_increment,
  `teacher_name` varchar(50) default NULL,
  `teacher_number` varchar(20) default NULL,
  `grade_id` bigint(20) default NULL,
  `org_id` bigint(20) default NULL,
  `id_number` varchar(18) default NULL,
  `is_teacher` int(11) default NULL,
  `position_id` bigint(20) default NULL,
  `phone` varchar(20) default NULL,
  `head_teacher` int(11) default NULL,
  `email` varchar(50) default NULL,
  `subject_id` bigint(20) default NULL,
  `gender` int(11) default NULL,
  `birthday` datetime default NULL,
  `political_landscape` int(11) default NULL,
  `join_time` datetime default NULL,
  `working_time` datetime default NULL,
  `original_education` int(11) default NULL,
  `original_education_time` datetime default NULL,
  `special` varchar(50) default NULL,
  `new_education` int(11) default NULL,
  `new_education_time` datetime default NULL,
  `certificates_time` datetime default NULL,
  `establishment` int(11) default NULL,
  `create_time` datetime default NULL,
  `update_time` datetime default NULL,
  `certificates_type` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_6` (`grade_id`),
  KEY `FK_Reference_8` (`position_id`),
  KEY `FK_Reference_9` (`subject_id`),
  KEY `FK_Reference_14` (`org_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`org_id`) REFERENCES `security_organization` (`id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`grade_id`) REFERENCES `oa_grade` (`id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`position_id`) REFERENCES `oa_position` (`id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`subject_id`) REFERENCES `oa_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_teacher_info`
--

LOCK TABLES `oa_teacher_info` WRITE;
/*!40000 ALTER TABLE `oa_teacher_info` DISABLE KEYS */;
INSERT INTO `oa_teacher_info` VALUES (2,'张慧华','100001',NULL,47,'123123',0,13,'213123',NULL,'12312321',3,0,'2013-07-17 00:00:00',0,'2013-07-11 00:00:00','2013-07-17 00:00:00',1,'2013-07-30 00:00:00',NULL,1,'2013-07-25 00:00:00',NULL,1,NULL,NULL,NULL),(3,'林锋','100002',NULL,43,'123123123',0,NULL,'12312321',NULL,'12312321',5,0,'2013-07-18 00:00:00',0,'2013-07-10 00:00:00','2013-07-09 00:00:00',1,'2013-07-26 00:00:00',NULL,1,'2013-07-27 00:00:00',NULL,1,NULL,NULL,NULL),(6,'1231','100002',NULL,39,'3123213',0,NULL,'123123',NULL,'123213',4,0,'2013-07-01 00:00:00',0,'2013-07-02 00:00:00','2013-07-01 00:00:00',1,'2013-07-02 00:00:00',NULL,1,'2013-07-24 00:00:00',NULL,1,NULL,NULL,NULL),(7,'林锋','100010',13,38,'510231231233431432',0,8,'123455432',NULL,'23456@1243.com',NULL,1,'2013-07-16 00:00:00',0,'2013-07-10 00:00:00','2013-07-15 00:00:00',1,'2013-07-25 00:00:00',NULL,1,'2013-07-18 00:00:00',NULL,1,NULL,NULL,NULL),(8,'林峰','123213',13,38,'124123',0,7,'2134215',NULL,'4342432',NULL,1,'2013-06-30 00:00:00',0,'2013-07-24 00:00:00','2013-07-09 00:00:00',1,'2013-08-02 00:00:00',NULL,1,'2013-07-03 00:00:00','2013-07-09 00:00:00',1,NULL,NULL,1),(12,'张惠妹','12341234',NULL,30,'123123123',0,8,'123123',NULL,'123123',NULL,0,'2013-07-24 00:00:00',0,'2013-07-01 00:00:00','2013-07-03 00:00:00',5,'2013-07-23 00:00:00',NULL,1,NULL,NULL,1,NULL,NULL,1),(13,'林锋','10010',14,30,'521545854558455874',0,9,'123123123123123',NULL,'123123@312312.com',3,0,'2013-07-20 00:00:00',0,NULL,NULL,1,NULL,NULL,1,NULL,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `oa_teacher_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_worktime`
--

DROP TABLE IF EXISTS `oa_worktime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_worktime` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `commuting` int(11) NOT NULL COMMENT '是否上班：0：上班；1：下班',
  `work_time` varchar(30) NOT NULL,
  `work_time_long` bigint(20) default NULL,
  `time_order` int(11) default NULL COMMENT '排序',
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每天工作时间设定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_worktime`
--

LOCK TABLES `oa_worktime` WRITE;
/*!40000 ALTER TABLE `oa_worktime` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_worktime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_log_entity`
--

DROP TABLE IF EXISTS `security_log_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_log_entity` (
  `id` bigint(20) NOT NULL auto_increment,
  `create_time` datetime default NULL,
  `ip_address` varchar(16) default NULL,
  `log_level` varchar(16) default NULL,
  `message` varchar(255) default NULL,
  `username` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_log_entity`
--

LOCK TABLES `security_log_entity` WRITE;
/*!40000 ALTER TABLE `security_log_entity` DISABLE KEYS */;
INSERT INTO `security_log_entity` VALUES (1,'2013-07-16 13:47:49','127.0.0.1','TRACE','admin登录了系统。','admin'),(2,'2013-07-16 13:50:52','127.0.0.1','TRACE','添加了linfeng用户。','admin'),(3,'2013-07-16 13:51:33','127.0.0.1','TRACE','添加了林峰教师信息。','admin'),(4,'2013-07-16 13:53:12','127.0.0.1','TRACE','admin登录了系统。','admin'),(5,'2013-07-16 13:55:51','127.0.0.1','TRACE','admin登录了系统。','admin'),(6,'2013-07-16 14:11:31','127.0.0.1','TRACE','admin登录了系统。','admin'),(7,'2013-07-16 14:12:12','127.0.0.1','TRACE','添加了zhanghuimei用户。','admin'),(8,'2013-07-16 14:13:07','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(9,'2013-07-16 14:16:05','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(10,'2013-07-16 14:19:22','127.0.0.1','TRACE','admin登录了系统。','admin'),(11,'2013-07-16 14:20:18','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(12,'2013-07-16 14:21:53','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(13,'2013-07-16 14:28:41','127.0.0.1','TRACE','admin登录了系统。','admin'),(14,'2013-07-16 14:29:15','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(15,'2013-07-16 14:31:15','127.0.0.1','TRACE','admin登录了系统。','admin'),(16,'2013-07-16 14:31:49','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(17,'2013-07-16 15:21:29','127.0.0.1','TRACE','admin登录了系统。','admin'),(18,'2013-07-16 15:22:08','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(19,'2013-07-16 15:26:27','127.0.0.1','TRACE','添加了{0}教师信息。','admin'),(20,'2013-07-16 15:29:51','127.0.0.1','TRACE','添加了张惠妹教师信息。','admin'),(21,'2013-07-16 15:31:48','127.0.0.1','TRACE','添加了张惠妹教师信息。','admin'),(22,'2013-07-16 15:32:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(23,'2013-07-16 15:49:17','127.0.0.1','TRACE','admin登录了系统。','admin'),(24,'2013-07-16 15:53:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(25,'2013-07-17 10:06:08','127.0.0.1','TRACE','admin登录了系统。','admin'),(26,'2013-07-17 10:09:28','127.0.0.1','TRACE','添加了{0}请假申请。','admin'),(27,'2013-07-20 09:25:14','127.0.0.1','TRACE','admin登录了系统。','admin'),(28,'2013-07-20 09:25:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(29,'2013-07-20 09:26:38','127.0.0.1','TRACE','删除了请假申请模块。','admin'),(30,'2013-07-20 09:27:36','127.0.0.1','TRACE','添加了请假申请模块。','admin'),(31,'2013-07-20 09:29:41','127.0.0.1','TRACE','添加了已提交申请模块。','admin'),(32,'2013-07-20 09:31:39','127.0.0.1','TRACE','添加了请假审批模块。','admin'),(33,'2013-07-20 09:31:47','127.0.0.1','TRACE','修改了请假审批模块的信息。','admin'),(34,'2013-07-20 09:33:11','127.0.0.1','TRACE','添加了已处理模块。','admin'),(35,'2013-07-20 09:33:20','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(36,'2013-07-20 09:34:13','127.0.0.1','TRACE','admin登录了系统。','admin'),(37,'2013-07-20 09:34:51','127.0.0.1','TRACE','admin登录了系统。','admin'),(38,'2013-07-20 09:35:17','127.0.0.1','TRACE','修改了请假审批模块的信息。','admin'),(39,'2013-07-20 09:35:21','127.0.0.1','TRACE','admin登录了系统。','admin'),(40,'2013-07-20 09:36:07','127.0.0.1','TRACE','修改了已申请模块的信息。','admin'),(41,'2013-07-20 11:36:03','127.0.0.1','TRACE','会话超时， 该用户重新登录系统。','admin'),(42,'2013-07-20 11:36:54','127.0.0.1','TRACE','添加了申领物品模块。','admin'),(43,'2013-07-20 11:37:35','127.0.0.1','TRACE','添加了领物申请模块。','admin'),(44,'2013-07-20 11:37:44','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(45,'2013-07-20 11:37:47','127.0.0.1','TRACE','admin登录了系统。','admin'),(46,'2013-07-20 11:39:10','127.0.0.1','TRACE','admin登录了系统。','admin'),(47,'2013-07-20 11:44:49','127.0.0.1','TRACE','admin登录了系统。','admin'),(48,'2013-07-20 11:48:42','127.0.0.1','TRACE','添加了林锋教师信息。','admin'),(49,'2013-07-20 11:49:01','127.0.0.1','TRACE','admin登录了系统。','admin'),(50,'2013-07-20 11:49:02','127.0.0.1','TRACE','admin登录了系统。','admin'),(51,'2013-07-20 11:55:00','127.0.0.1','TRACE','admin登录了系统。','admin'),(52,'2013-07-20 11:56:08','127.0.0.1','TRACE','admin登录了系统。','admin'),(53,'2013-07-20 11:57:25','127.0.0.1','TRACE','admin登录了系统。','admin'),(54,'2013-07-20 11:57:44','127.0.0.1','TRACE','admin登录了系统。','admin'),(55,'2013-07-20 12:10:36','127.0.0.1','TRACE','admin登录了系统。','admin'),(56,'2013-07-20 12:11:43','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(57,'2013-07-20 12:17:30','127.0.0.1','TRACE','admin登录了系统。','admin'),(58,'2013-07-20 12:18:08','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(59,'2013-07-20 12:21:15','127.0.0.1','TRACE','admin登录了系统。','admin'),(60,'2013-07-20 12:21:34','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(61,'2013-07-20 12:23:09','127.0.0.1','TRACE','admin登录了系统。','admin'),(62,'2013-07-20 12:25:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(63,'2013-07-20 12:25:34','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(64,'2013-07-20 12:25:51','127.0.0.1','TRACE','admin登录了系统。','admin'),(65,'2013-07-20 12:25:57','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(66,'2013-07-20 12:26:26','127.0.0.1','TRACE','admin登录了系统。','admin'),(67,'2013-07-20 12:26:36','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(68,'2013-07-20 12:26:50','127.0.0.1','TRACE','admin登录了系统。','admin'),(69,'2013-07-20 13:37:33','127.0.0.1','TRACE','会话超时， 该用户重新登录系统。','admin'),(70,'2013-07-20 13:37:36','127.0.0.1','TRACE','删除了[admin]领物申请。','admin'),(71,'2013-07-20 13:38:10','127.0.0.1','TRACE','删除了[admin]领物申请。','admin'),(72,'2013-07-20 13:50:36','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(73,'2013-07-20 13:50:47','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(74,'2013-07-20 13:53:06','127.0.0.1','TRACE','添加了{0}模块。','admin'),(75,'2013-07-20 13:53:21','127.0.0.1','TRACE','添加了已申请模块。','admin'),(76,'2013-07-20 13:54:53','127.0.0.1','TRACE','添加了已办结模块。','admin'),(77,'2013-07-20 13:56:51','127.0.0.1','TRACE','添加了领物审批模块。','admin'),(78,'2013-07-20 13:57:03','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(79,'2013-07-20 13:57:06','127.0.0.1','TRACE','admin登录了系统。','admin'),(80,'2013-07-20 13:59:47','127.0.0.1','TRACE','修改了已申请模块的信息。','admin'),(81,'2013-07-20 13:59:55','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(82,'2013-07-20 13:59:57','127.0.0.1','TRACE','admin登录了系统。','admin'),(83,'2013-07-20 14:16:55','127.0.0.1','TRACE','admin登录了系统。','admin'),(84,'2013-07-20 14:17:24','127.0.0.1','TRACE','提交了[admin]领物申请。','admin'),(85,'2013-07-20 14:33:56','127.0.0.1','TRACE','admin登录了系统。','admin'),(86,'2013-07-20 14:34:30','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(87,'2013-07-20 14:34:36','127.0.0.1','TRACE','admin登录了系统。','admin'),(88,'2013-07-20 14:35:47','127.0.0.1','TRACE','admin登录了系统。','admin'),(89,'2013-07-20 14:36:14','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(90,'2013-07-20 14:36:55','127.0.0.1','TRACE','admin登录了系统。','admin'),(91,'2013-07-20 14:37:03','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(92,'2013-07-20 14:38:31','127.0.0.1','TRACE','admin登录了系统。','admin'),(93,'2013-07-20 14:38:48','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(94,'2013-07-20 14:38:53','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(95,'2013-07-20 14:38:59','127.0.0.1','TRACE','添加了admin领物申请。','admin'),(96,'2013-07-20 14:40:48','127.0.0.1','TRACE','zhanghuimei登录了系统。','zhanghuimei'),(97,'2013-07-20 14:40:58','127.0.0.1','TRACE','admin登录了系统。','admin'),(98,'2013-07-20 14:41:14','127.0.0.1','TRACE','向zhanghuimei用户分配了管理员的角色。','admin'),(99,'2013-07-20 14:41:36','127.0.0.1','TRACE','zhanghuimei登录了系统。','zhanghuimei'),(100,'2013-07-20 14:42:19','127.0.0.1','TRACE','同意了[admin]领物申请。','zhanghuimei'),(101,'2013-07-20 14:42:38','127.0.0.1','TRACE','admin登录了系统。','admin'),(102,'2013-07-20 14:42:49','127.0.0.1','TRACE','admin申领的物品进行了领取。','admin'),(103,'2013-07-20 14:44:51','127.0.0.1','TRACE','admin申领的物品进行了领取。','admin'),(104,'2013-07-20 14:46:03','127.0.0.1','TRACE','admin申领的物品进行了领取。','admin'),(105,'2013-07-22 09:53:04','127.0.0.1','TRACE','admin登录了系统。','admin'),(106,'2013-07-22 09:56:23','127.0.0.1','TRACE','添加了工作考勤模块。','admin'),(107,'2013-07-22 09:57:21','127.0.0.1','TRACE','添加了签到考勤模块。','admin'),(108,'2013-07-22 09:57:35','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(109,'2013-07-22 09:57:37','127.0.0.1','TRACE','admin登录了系统。','admin'),(110,'2013-07-22 09:59:32','127.0.0.1','TRACE','admin登录了系统。','admin'),(111,'2013-07-22 10:00:11','127.0.0.1','TRACE','admin登录了系统。','admin'),(112,'2013-07-22 10:00:50','127.0.0.1','TRACE','admin登录了系统。','admin'),(113,'2013-07-24 09:10:55','127.0.0.1','TRACE','admin登录了系统。','admin'),(114,'2013-07-24 09:21:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(115,'2013-07-24 09:22:38','127.0.0.1','TRACE','admin登录了系统。','admin'),(116,'2013-07-24 11:33:29','127.0.0.1','TRACE','admin登录了系统。','admin'),(117,'2013-07-24 11:34:30','127.0.0.1','TRACE','admin登录了系统。','admin'),(118,'2013-07-24 11:46:36','127.0.0.1','TRACE','admin登录了系统。','admin'),(119,'2013-07-24 11:47:17','127.0.0.1','TRACE','admin登录了系统。','admin'),(120,'2013-07-24 11:49:01','127.0.0.1','TRACE','admin登录了系统。','admin'),(121,'2013-07-24 11:49:08','127.0.0.1','TRACE','admin登录了系统。','admin'),(122,'2013-07-24 11:51:45','127.0.0.1','TRACE','admin登录了系统。','admin'),(123,'2013-07-24 11:52:17','127.0.0.1','INFO','林锋执行了签到。','admin'),(124,'2013-07-24 12:09:01','127.0.0.1','TRACE','admin登录了系统。','admin'),(125,'2013-07-24 12:09:38','127.0.0.1','INFO','林锋执行了签到。','admin'),(126,'2013-07-24 12:36:46','127.0.0.1','TRACE','admin登录了系统。','admin'),(127,'2013-07-24 12:38:11','127.0.0.1','TRACE','admin登录了系统。','admin'),(128,'2013-07-24 12:38:40','127.0.0.1','TRACE','admin登录了系统。','admin'),(129,'2013-07-24 13:27:22','127.0.0.1','TRACE','会话超时， 该用户重新登录系统。','admin'),(130,'2013-07-24 13:28:24','127.0.0.1','TRACE','添加了离校考勤模块。','admin'),(131,'2013-07-24 13:28:28','127.0.0.1','TRACE','修改了离校考勤模块的信息。','admin'),(132,'2013-07-24 13:28:36','127.0.0.1','TRACE','修改了管理员角色的信息。','admin'),(133,'2013-07-24 13:29:37','127.0.0.1','TRACE','admin登录了系统。','admin'),(134,'2013-07-24 14:22:06','127.0.0.1','TRACE','admin登录了系统。','admin'),(135,'2013-07-24 14:23:31','127.0.0.1','TRACE','admin登录了系统。','admin'),(136,'2013-07-24 14:24:12','127.0.0.1','TRACE','admin登录了系统。','admin'),(137,'2013-07-24 14:24:26','127.0.0.1','INFO','林锋执行了离校。','admin'),(138,'2013-07-24 14:29:02','127.0.0.1','INFO','林锋执行了返校。','admin'),(139,'2013-07-24 15:15:20','127.0.0.1','TRACE','会话超时， 该用户重新登录系统。','admin'),(140,'2013-07-24 15:19:25','127.0.0.1','TRACE','添加了签到考勤查询模块。','admin'),(141,'2013-07-24 15:20:18','127.0.0.1','TRACE','添加了{0}模块。','admin'),(142,'2013-07-24 15:20:30','127.0.0.1','TRACE','删除了签到考勤查询模块。','admin'),(143,'2013-07-24 15:20:46','127.0.0.1','TRACE','添加了签到考勤查询模块。','admin'),(144,'2013-07-24 15:22:11','127.0.0.1','TRACE','admin登录了系统。','admin'),(145,'2013-07-24 15:23:30','127.0.0.1','TRACE','admin登录了系统。','admin'),(146,'2013-07-24 15:24:37','127.0.0.1','TRACE','admin登录了系统。','admin'),(147,'2013-07-24 15:48:35','127.0.0.1','TRACE','admin登录了系统。','admin'),(148,'2013-07-24 15:50:32','127.0.0.1','TRACE','admin登录了系统。','admin'),(149,'2013-07-24 15:51:08','127.0.0.1','TRACE','admin登录了系统。','admin'),(150,'2013-07-24 15:52:13','127.0.0.1','TRACE','admin登录了系统。','admin'),(151,'2013-07-24 15:54:50','127.0.0.1','TRACE','admin登录了系统。','admin'),(152,'2013-07-24 16:10:35','127.0.0.1','TRACE','admin登录了系统。','admin'),(153,'2013-07-24 16:11:17','127.0.0.1','TRACE','admin登录了系统。','admin'),(154,'2013-07-24 16:16:00','127.0.0.1','TRACE','admin登录了系统。','admin'),(155,'2013-07-24 16:18:57','127.0.0.1','TRACE','admin登录了系统。','admin'),(156,'2013-07-24 16:20:16','127.0.0.1','TRACE','admin登录了系统。','admin'),(157,'2013-07-24 16:21:43','127.0.0.1','TRACE','admin登录了系统。','admin'),(158,'2013-07-24 16:26:41','127.0.0.1','TRACE','admin登录了系统。','admin'),(159,'2013-07-24 16:39:51','127.0.0.1','TRACE','admin登录了系统。','admin'),(160,'2013-07-24 16:52:24','127.0.0.1','TRACE','admin登录了系统。','admin'),(161,'2013-07-24 17:01:06','127.0.0.1','TRACE','admin登录了系统。','admin'),(162,'2013-07-24 17:43:46','127.0.0.1','TRACE','admin登录了系统。','admin'),(163,'2013-07-24 17:50:39','127.0.0.1','TRACE','admin登录了系统。','admin');
/*!40000 ALTER TABLE `security_log_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_module`
--

DROP TABLE IF EXISTS `security_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_module` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL,
  `sn` varchar(32) NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6510844BB3395F9` (`parent_id`),
  CONSTRAINT `FK6510844BB3395F9` FOREIGN KEY (`parent_id`) REFERENCES `security_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_module`
--

LOCK TABLES `security_module` WRITE;
/*!40000 ALTER TABLE `security_module` DISABLE KEYS */;
INSERT INTO `security_module` VALUES (1,'所有模块的根节点，不能删除。','根模块',1,'Root','#',NULL),(2,'安全管理:包含权限管理、模块管理等。','系统管理',99,'Security','#',1),(3,'','用户管理',99,'User','/management/security/user/list',2),(4,'','角色管理',99,'Role','/management/security/role/list',2),(5,'','模块管理',99,'Module','/management/security/module/tree_list',2),(10,'一个开发使用的简单示例。','开发实例',99,'Sample','#',1),(14,'','简单任务实例',99,'Task','/management/sample/task/list',10),(18,'','组织管理',99,'Organization','/management/security/organization/tree_list',2),(24,'','缓存管理',99,'CacheManage','/management/security/cacheManage/index',2),(38,'测试下','测试模块',99,'sdfs','测试下',1),(52,'','自定义权限测试',99,'ggg','/vv',38),(53,'','多级模块测试',99,'gg','/gg',52),(54,'','模块测试2',99,'多级模块测试2','/hh',53),(58,'','新模块26',99,'ff','/dd',53),(59,'','日志管理',99,'logEntity','/management/security/logEntity/list',2),(63,'','职务管理',99,'Position','/management/eduoa/position/list',2),(64,'','年级管理',99,'Grade','/management/eduoa/grade/list',2),(65,'','班级管理',99,'Class','/management/eduoa/class/tree_list',2),(66,'','人员组成分工',99,'Teacher','#',1),(67,'','组织结构',99,'Structure','/management/eduoa/structure/create',66),(68,'','组织机构查看',99,'StructureView','/management/eduoa/structure/view',66),(69,'','科目管理',99,'Subject','/management/eduoa/subject/list',2),(70,'','职称证书',99,'CertificateType','/management/eduoa/certificatetype/list',2),(72,'','教师信息管理',99,'TeacherInfo','/management/eduoa/teacher/list',66),(74,'','学生信息管理',99,'StudentInfo','/management/eduoa/student/list',66),(75,'','日常办公助手',99,'Work','#',1),(76,'','请销假管理',99,'Leave','#',75),(78,'','请假申请',99,'LeavePermit','/management/eduoa/leavepermit/listDraft',76),(79,'','已申请',99,'listApproval','/management/eduoa/leavepermit/listApproval',76),(80,'','请假审批',99,'Permit','/management/eduoa/leavepermit/list',76),(81,'','已处理',99,'listFinish','/management/eduoa/leavepermit/listFinish',76),(82,'','申领物品',99,'Goods','#',75),(83,'','领物申请',99,'GoodsApply','/management/eduoa/goods/listDraft',82),(84,'','已申请',99,'GoodsApproval','/management/eduoa/goods/listApproval',82),(85,'','已办结',99,'GoodsFinish','/management/eduoa/goods/listFinish',82),(86,'','领物审批',99,'GoodsPermit','/management/eduoa/goods/list',82),(87,'','工作考勤',99,'WorkAttendance','#',75),(88,'','签到考勤',99,'Registration','/management/eduoa/attendance/list',87),(89,'','离校考勤',99,'LeaveAttendance','/management/eduoa/attendance/leave',87),(91,'','签到考勤查询',99,'listRegistration','/management/eduoa/attendance/listRegistration',87);
/*!40000 ALTER TABLE `security_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_organization`
--

DROP TABLE IF EXISTS `security_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_organization` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(64) NOT NULL,
  `parent_id` bigint(20) default NULL,
  `org_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1DBDA7D2FCC01B00` (`parent_id`),
  CONSTRAINT `FK1DBDA7D2FCC01B00` FOREIGN KEY (`parent_id`) REFERENCES `security_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_organization`
--

LOCK TABLES `security_organization` WRITE;
/*!40000 ALTER TABLE `security_organization` DISABLE KEYS */;
INSERT INTO `security_organization` VALUES (1,'不能删除。','根组织',NULL,NULL),(24,'','香河县第一中学',1,NULL),(25,'','高一年级',24,NULL),(26,'','高二年级',24,NULL),(27,'','高三年级',24,NULL),(28,'','教务处',24,NULL),(29,'','政教处',24,NULL),(30,'','办公室',24,NULL),(31,'','三联办',24,NULL),(32,'','后勤',24,NULL),(33,'','财务室',24,NULL),(34,'','实验室',24,NULL),(35,'','图书馆',24,NULL),(36,'','团委',24,NULL),(37,'','资料室',24,NULL),(38,'','语文组',25,NULL),(39,'','化学组',25,NULL),(40,'','英语组',25,NULL),(41,'','物理组',25,NULL),(42,'','政治组',25,NULL),(43,'','生物组',25,NULL),(44,'','语文组',26,NULL),(45,'','数学组',26,NULL),(46,'','英语组',26,NULL),(47,'','物理组',26,NULL),(48,'','化学组',26,NULL),(49,'','生物组',26,NULL);
/*!40000 ALTER TABLE `security_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_organization_role`
--

DROP TABLE IF EXISTS `security_organization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_organization_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `priority` int(11) NOT NULL,
  `organization_id` bigint(20) default NULL,
  `role_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK557CA4C3D069FDD7` (`organization_id`),
  KEY `FK557CA4C3C592DFF7` (`role_id`),
  CONSTRAINT `FK557CA4C3C592DFF7` FOREIGN KEY (`role_id`) REFERENCES `security_role` (`id`),
  CONSTRAINT `FK557CA4C3D069FDD7` FOREIGN KEY (`organization_id`) REFERENCES `security_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_organization_role`
--

LOCK TABLES `security_organization_role` WRITE;
/*!40000 ALTER TABLE `security_organization_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_organization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_permission`
--

DROP TABLE IF EXISTS `security_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_permission` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(32) NOT NULL,
  `short_name` varchar(16) NOT NULL,
  `module_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKBA7A9C2E334A08F7` (`module_id`),
  CONSTRAINT `FKBA7A9C2E334A08F7` FOREIGN KEY (`module_id`) REFERENCES `security_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_permission`
--

LOCK TABLES `security_permission` WRITE;
/*!40000 ALTER TABLE `security_permission` DISABLE KEYS */;
INSERT INTO `security_permission` VALUES (25,'','增','save',2),(26,'','删','delete',2),(27,'','查','view',2),(28,'','改','edit',2),(31,'','查','view',10),(37,'','增','save',3),(38,'','删','delete',3),(39,'','查','view',3),(40,'','改','edit',3),(45,'','增','save',4),(46,'','删','delete',4),(47,'','查','view',4),(48,'','改','edit',4),(53,'','增','save',5),(54,'','删','delete',5),(55,'','查','view',5),(56,'','改','edit',5),(57,'','增','save',18),(58,'','删','delete',18),(59,'','查','view',18),(60,'','改','edit',18),(61,'','查','view',24),(62,'','改','edit',24),(76,'重置密码、更新状态','重置','reset',3),(77,'分配、撤销角色','授权','assign',3),(78,'分配、撤销角色','授权','assign',18),(100,NULL,'增','save',52),(101,NULL,'删','delete',52),(102,NULL,'查','view',52),(103,NULL,'改','edit',52),(104,NULL,'增','save',53),(105,NULL,'删','delete',53),(106,NULL,'查','view',53),(107,NULL,'改','edit',53),(108,NULL,'增','save',54),(109,NULL,'删','delete',54),(110,NULL,'查','view',54),(111,NULL,'改','edit',54),(124,'','晒','sai',52),(125,'','清除','clear',52),(126,'','增','save',14),(127,'','删','delete',14),(128,'','查','view',14),(129,'','改','edit',14),(130,'','看','look',14),(131,NULL,'增','save',58),(132,NULL,'删','delete',58),(133,NULL,'查','view',58),(134,NULL,'改','edit',58),(135,NULL,'增','save',59),(136,NULL,'删','delete',59),(137,NULL,'查','view',59),(138,NULL,'改','edit',59),(159,'','增','save',38),(160,'','删','delete',38),(161,'','查','view',38),(162,'','改','edit',38),(171,NULL,'增','save',63),(172,NULL,'删','delete',63),(173,NULL,'查','view',63),(174,NULL,'改','edit',63),(175,NULL,'增','save',64),(176,NULL,'删','delete',64),(177,NULL,'查','view',64),(178,NULL,'改','edit',64),(179,NULL,'增','save',65),(180,NULL,'删','delete',65),(181,NULL,'查','view',65),(182,NULL,'改','edit',65),(183,NULL,'增','save',66),(184,NULL,'删','delete',66),(185,NULL,'查','view',66),(186,NULL,'改','edit',66),(187,NULL,'增','save',67),(188,NULL,'查','view',67),(189,NULL,'增','save',68),(190,NULL,'删','delete',68),(191,NULL,'查','view',68),(192,NULL,'改','edit',68),(193,NULL,'增','save',69),(194,NULL,'删','delete',69),(195,NULL,'查','view',69),(196,NULL,'改','edit',69),(197,NULL,'增','save',70),(198,NULL,'删','delete',70),(199,NULL,'查','view',70),(200,NULL,'改','edit',70),(205,NULL,'增','save',72),(206,NULL,'删','delete',72),(207,NULL,'查','view',72),(208,NULL,'改','edit',72),(209,'','任课班级','teachClass',72),(210,'','带领班级','guideClass',72),(215,NULL,'增','save',74),(216,NULL,'删','delete',74),(217,NULL,'查','view',74),(218,NULL,'改','edit',74),(219,NULL,'增','save',75),(220,NULL,'删','delete',75),(221,NULL,'查','view',75),(222,NULL,'改','edit',75),(223,NULL,'增','save',76),(224,NULL,'删','delete',76),(225,NULL,'查','view',76),(226,NULL,'改','edit',76),(231,NULL,'增','save',78),(232,NULL,'删','delete',78),(233,NULL,'查','view',78),(234,NULL,'改','edit',78),(235,NULL,'查','view',79),(236,'','销假','sick',79),(237,NULL,'查','view',80),(238,'','通过','pass',80),(239,'','驳回','reject',80),(240,NULL,'查','view',81),(241,NULL,'增','save',82),(242,NULL,'删','delete',82),(243,NULL,'查','view',82),(244,NULL,'改','edit',82),(245,NULL,'增','save',83),(246,NULL,'删','delete',83),(247,NULL,'查','view',83),(248,NULL,'改','edit',83),(249,NULL,'查','view',84),(250,NULL,'查','view',85),(251,NULL,'查','view',86),(252,'','通过','pass',86),(253,'','驳回','reject',86),(254,'','领取','sick',84),(255,NULL,'增','save',87),(256,NULL,'删','delete',87),(257,NULL,'查','view',87),(258,NULL,'改','edit',87),(259,NULL,'增','save',88),(260,NULL,'查','view',88),(261,NULL,'查','view',89),(262,'','离校','leaveStart',89),(263,'','返校','leaveEnd',89),(265,NULL,'查','view',91);
/*!40000 ALTER TABLE `security_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role`
--

DROP TABLE IF EXISTS `security_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role`
--

LOCK TABLES `security_role` WRITE;
/*!40000 ALTER TABLE `security_role` DISABLE KEYS */;
INSERT INTO `security_role` VALUES (3,'','管理员'),(4,NULL,'财务人员'),(5,NULL,'营销人员'),(7,NULL,'任务实例角色'),(8,'仅仅是测试角色2','test');
/*!40000 ALTER TABLE `security_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_role_permission`
--

DROP TABLE IF EXISTS `security_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_role_permission` (
  `id` bigint(20) NOT NULL auto_increment,
  `permission_id` bigint(20) default NULL,
  `role_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK679E223926E70397` (`permission_id`),
  KEY `FK679E2239C592DFF7` (`role_id`),
  CONSTRAINT `FK679E223926E70397` FOREIGN KEY (`permission_id`) REFERENCES `security_permission` (`id`),
  CONSTRAINT `FK679E2239C592DFF7` FOREIGN KEY (`role_id`) REFERENCES `security_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_role_permission`
--

LOCK TABLES `security_role_permission` WRITE;
/*!40000 ALTER TABLE `security_role_permission` DISABLE KEYS */;
INSERT INTO `security_role_permission` VALUES (30,27,3),(31,37,3),(32,38,3),(33,39,3),(34,40,3),(35,47,3),(36,53,3),(37,54,3),(38,55,3),(39,56,3),(40,57,3),(41,58,3),(42,59,3),(43,60,3),(44,61,3),(45,62,3),(71,31,7),(72,126,7),(73,127,7),(74,128,7),(75,129,7),(76,130,7),(85,25,3),(86,26,3),(87,28,3),(88,76,3),(89,77,3),(90,45,3),(91,46,3),(92,48,3),(93,78,3),(94,135,3),(95,136,3),(96,137,3),(97,138,3),(98,171,3),(99,172,3),(100,173,3),(101,174,3),(102,31,3),(103,126,3),(104,127,3),(105,128,3),(106,129,3),(107,130,3),(108,159,3),(109,160,3),(110,161,3),(111,162,3),(112,100,3),(113,101,3),(114,102,3),(115,103,3),(116,124,3),(117,125,3),(118,104,3),(119,105,3),(120,106,3),(121,107,3),(122,108,3),(123,109,3),(124,110,3),(125,111,3),(126,131,3),(127,132,3),(128,133,3),(129,134,3),(130,175,3),(131,176,3),(132,177,3),(133,178,3),(134,179,3),(135,180,3),(136,181,3),(137,182,3),(138,183,3),(139,184,3),(140,185,3),(141,186,3),(142,187,3),(143,188,3),(144,189,3),(145,190,3),(146,191,3),(147,192,3),(148,193,3),(149,194,3),(150,195,3),(151,196,3),(152,197,3),(153,198,3),(154,199,3),(155,200,3),(160,205,3),(161,206,3),(162,207,3),(163,208,3),(164,209,3),(165,210,3),(166,215,3),(167,216,3),(168,217,3),(169,218,3),(170,219,3),(171,220,3),(172,221,3),(173,222,3),(174,223,3),(175,224,3),(176,225,3),(177,226,3),(182,231,3),(183,232,3),(184,233,3),(185,234,3),(186,235,3),(187,236,3),(188,237,3),(189,238,3),(190,239,3),(191,240,3),(192,241,3),(193,242,3),(194,243,3),(195,244,3),(196,245,3),(197,246,3),(198,247,3),(199,248,3),(200,249,3),(201,250,3),(202,251,3),(203,252,3),(204,253,3),(205,254,3),(206,255,3),(207,256,3),(208,257,3),(209,258,3),(210,259,3),(211,260,3),(212,261,3),(213,262,3),(214,263,3);
/*!40000 ALTER TABLE `security_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user`
--

DROP TABLE IF EXISTS `security_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `create_time` datetime default NULL,
  `email` varchar(128) default NULL,
  `password` varchar(64) NOT NULL,
  `phone` varchar(32) default NULL,
  `realname` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `status` varchar(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `org_id` bigint(20) default NULL,
  `teacher_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_35` (`teacher_id`),
  KEY `FKD607B56A453A1286` (`org_id`),
  CONSTRAINT `FKD607B56A453A1286` FOREIGN KEY (`org_id`) REFERENCES `security_organization` (`id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`teacher_id`) REFERENCES `oa_teacher_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user`
--

LOCK TABLES `security_user` WRITE;
/*!40000 ALTER TABLE `security_user` DISABLE KEYS */;
INSERT INTO `security_user` VALUES (1,'2012-08-03 14:58:38','scstlinfeng@gmail.com','7a8f27edd04296d1a2f484cca71c6834a87356b6','18001120497','林锋','9754469b0353a6a7','enabled','admin',24,13),(3,'2013-07-16 14:12:12','2143123213@123.sd','f03223120a94b6bf7956f3692014f0e479dca041','1413123','张惠妹','6edff6c4273a5513','enabled','zhanghuimei',30,12);
/*!40000 ALTER TABLE `security_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_user_role`
--

DROP TABLE IF EXISTS `security_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_user_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `priority` int(11) NOT NULL,
  `role_id` bigint(20) default NULL,
  `user_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6DD3562BC592DFF7` (`role_id`),
  KEY `FK6DD3562B6ABDA3D7` (`user_id`),
  CONSTRAINT `FK6DD3562B6ABDA3D7` FOREIGN KEY (`user_id`) REFERENCES `security_user` (`id`),
  CONSTRAINT `FK6DD3562BC592DFF7` FOREIGN KEY (`role_id`) REFERENCES `security_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_user_role`
--

LOCK TABLES `security_user_role` WRITE;
/*!40000 ALTER TABLE `security_user_role` DISABLE KEYS */;
INSERT INTO `security_user_role` VALUES (1,99,3,1),(2,99,3,3);
/*!40000 ALTER TABLE `security_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_task`
--

DROP TABLE IF EXISTS `ss_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_task` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_task`
--

LOCK TABLES `ss_task` WRITE;
/*!40000 ALTER TABLE `ss_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_attachment`
--

DROP TABLE IF EXISTS `sys_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_attachment` (
  `id` bigint(20) NOT NULL auto_increment,
  `file_name` varchar(100) default NULL,
  `file_ext` varchar(100) default NULL,
  `file_size` int(10) default NULL,
  `service_file` varchar(200) default NULL,
  `create_time` datetime default NULL,
  `user_id` bigint(20) default NULL,
  `attachment_type` int(11) default NULL,
  `url_path` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attachment`
--

LOCK TABLES `sys_attachment` WRITE;
/*!40000 ALTER TABLE `sys_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_type_rules`
--

DROP TABLE IF EXISTS `sys_type_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_type_rules` (
  `id` bigint(20) NOT NULL auto_increment,
  `applay_id` bigint(20) default NULL,
  `role_type` int(11) default NULL,
  `role_name` varchar(50) default NULL,
  `content` varchar(500) default NULL,
  `create_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_23` (`applay_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`applay_id`) REFERENCES `oa_appraisal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_type_rules`
--

LOCK TABLES `sys_type_rules` WRITE;
/*!40000 ALTER TABLE `sys_type_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_type_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-24 18:07:11
