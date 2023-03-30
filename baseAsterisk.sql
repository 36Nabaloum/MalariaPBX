CREATE DATABASE  IF NOT EXISTS `asterisk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `asterisk`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 192.168.1.79    Database: asterisk
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version_cdr`
--

DROP TABLE IF EXISTS `alembic_version_cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version_cdr` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version_cdr`
--

LOCK TABLES `alembic_version_cdr` WRITE;
/*!40000 ALTER TABLE `alembic_version_cdr` DISABLE KEYS */;
INSERT INTO `alembic_version_cdr` VALUES ('54cde9847798');
/*!40000 ALTER TABLE `alembic_version_cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version_config`
--

DROP TABLE IF EXISTS `alembic_version_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version_config` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version_config`
--

LOCK TABLES `alembic_version_config` WRITE;
/*!40000 ALTER TABLE `alembic_version_config` DISABLE KEYS */;
INSERT INTO `alembic_version_config` VALUES ('5a2247c957d2');
/*!40000 ALTER TABLE `alembic_version_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version_queue_log`
--

DROP TABLE IF EXISTS `alembic_version_queue_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version_queue_log` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version_queue_log`
--

LOCK TABLES `alembic_version_queue_log` WRITE;
/*!40000 ALTER TABLE `alembic_version_queue_log` DISABLE KEYS */;
INSERT INTO `alembic_version_queue_log` VALUES ('4105ee839f58');
/*!40000 ALTER TABLE `alembic_version_queue_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdr` (
  `accountcode` varchar(80) DEFAULT NULL,
  `src` varchar(80) DEFAULT NULL,
  `dst` varchar(80) DEFAULT NULL,
  `dcontext` varchar(80) DEFAULT NULL,
  `clid` varchar(80) DEFAULT NULL,
  `channel` varchar(80) DEFAULT NULL,
  `dstchannel` varchar(80) DEFAULT NULL,
  `lastapp` varchar(80) DEFAULT NULL,
  `lastdata` varchar(80) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `billsec` int DEFAULT NULL,
  `disposition` varchar(45) DEFAULT NULL,
  `amaflags` varchar(45) DEFAULT NULL,
  `userfield` varchar(256) DEFAULT NULL,
  `uniqueid` varchar(150) DEFAULT NULL,
  `linkedid` varchar(150) DEFAULT NULL,
  `peeraccount` varchar(80) DEFAULT NULL,
  `sequence` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES (NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000000','PJSIP/400-00000001','Queue','Support,,,,20','2023-02-05 00:09:12','2023-02-05 00:09:12','2023-02-05 00:09:25',13,13,'ANSWERED','DOCUMENTATION',NULL,'1675555752.0','1675555752.0',NULL,0),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000000','PJSIP/400-00000001','Queue','Support,,,,20','2023-02-06 19:05:52','2023-02-06 19:05:52','2023-02-06 19:06:07',15,15,'NO ANSWER','DOCUMENTATION',NULL,'1675710352.0','1675710352.0',NULL,0),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000000',NULL,'Hangup',NULL,'2023-02-06 19:06:12','2023-02-06 19:06:12','2023-02-06 19:06:12',0,0,'ANSWERED','DOCUMENTATION',NULL,'1675710352.0','1675710352.0',NULL,2),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000002','PJSIP/400-00000003','Queue','Support,,,,20','2023-02-06 19:06:23','2023-02-06 19:06:23','2023-02-06 19:06:43',19,19,'ANSWERED','DOCUMENTATION',NULL,'1675710383.4','1675710383.4',NULL,3),(NULL,'200','200','internal','\"\" <200>','PJSIP/200-00000004','PJSIP/200-00000005','Dial','PJSIP/200,30,m(default)','2023-02-06 19:11:24',NULL,'2023-02-06 19:11:25',0,0,'BUSY','DOCUMENTATION',NULL,'1675710684.7','1675710684.7',NULL,5),(NULL,'200','300','internal','\"\" <200>','PJSIP/200-00000006','PJSIP/300-00000007','Dial','PJSIP/300,30,m(default)','2023-02-06 19:11:38','2023-02-06 19:11:51','2023-02-06 19:12:17',38,25,'ANSWERED','DOCUMENTATION',NULL,'1675710698.10','1675710698.10',NULL,8),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000008','PJSIP/400-00000009','Queue','Support,,,,20','2023-02-06 19:13:44','2023-02-06 19:13:44','2023-02-06 19:13:55',11,11,'NO ANSWER','DOCUMENTATION',NULL,'1675710824.13','1675710824.13',NULL,10),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000008','PJSIP/400-0000000a','Queue','Support,,,,20','2023-02-06 19:14:00','2023-02-06 19:14:00','2023-02-06 19:14:04',3,3,'NO ANSWER','DOCUMENTATION',NULL,'1675710824.13','1675710824.13',NULL,13),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000008',NULL,'Hangup',NULL,'2023-02-06 19:14:04','2023-02-06 19:14:04','2023-02-06 19:14:04',0,0,'ANSWERED','DOCUMENTATION',NULL,'1675710824.13','1675710824.13',NULL,14),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-0000000b','PJSIP/400-0000000c','Queue','Support,,,,20','2023-02-06 19:14:37','2023-02-06 19:14:38','2023-02-06 19:14:53',15,15,'NO ANSWER','DOCUMENTATION',NULL,'1675710877.19','1675710877.19',NULL,15),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-0000000b',NULL,'Hangup',NULL,'2023-02-06 19:14:58','2023-02-06 19:14:58','2023-02-06 19:14:58',0,0,'ANSWERED','DOCUMENTATION',NULL,'1675710877.19','1675710877.19',NULL,17),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000000','PJSIP/400-00000001','Queue','Support,,,,20','2023-02-06 22:02:02','2023-02-06 22:02:02','2023-02-06 22:02:18',15,15,'NO ANSWER','DOCUMENTATION',NULL,'1675720922.0','1675720922.0',NULL,0),(NULL,'200','1000','internal','\"\" <200>','PJSIP/200-00000002','PJSIP/400-00000003','Queue','Support,,,,20','2023-02-06 22:02:46','2023-02-06 22:02:46','2023-02-06 22:04:35',109,109,'ANSWERED','DOCUMENTATION',NULL,'1675720966.3','1675720966.3',NULL,2),(NULL,'200','400','internal','\"\" <200>','PJSIP/200-00000000','PJSIP/400-00000001','Dial','PJSIP/400,30,m(default)','2023-02-09 02:20:13','2023-02-09 02:20:19','2023-02-09 02:20:33',20,14,'ANSWERED','DOCUMENTATION',NULL,'1675909213.0','1675909213.0',NULL,0),(NULL,'300','1000','internal','\"Malariabot\" <300>','PJSIP/300-00000002','PJSIP/400-00000003','Queue','Support,,,,20','2023-02-09 02:24:08','2023-02-09 02:24:08','2023-02-09 02:24:19',11,11,'NO ANSWER','DOCUMENTATION',NULL,'1675909448.3','1675909448.3',NULL,2),(NULL,'300','1000','internal','\"Malariabot\" <300>','PJSIP/300-00000000','PJSIP/400-00000001','Queue','Support,,,,20','2023-02-12 03:05:42','2023-02-12 03:05:42','2023-02-12 03:05:55',12,12,'NO ANSWER','DOCUMENTATION',NULL,'1676171142.0','1676171142.0',NULL,0),(NULL,'300','300','internal','\"Malariabot\" <300>','PJSIP/300-00000000','PJSIP/300-00000001','Dial','PJSIP/300,30,m(default)','2023-02-16 01:44:16',NULL,'2023-02-16 01:44:17',0,0,'BUSY','DOCUMENTATION',NULL,'1676511856.0','1676511856.0',NULL,0),(NULL,'200','300','internal','\"\" <200>','PJSIP/200-00000002','PJSIP/300-00000003','Dial','PJSIP/300,30,m(default)','2023-02-16 01:46:34','2023-02-16 01:46:47','2023-02-16 01:47:16',41,28,'ANSWERED','DOCUMENTATION',NULL,'1676511994.3','1676511994.3',NULL,3),(NULL,'015158000','08064351467','internal','\"200\" <015158000>','PJSIP/400-00000001','PJSIP/015158000-00000002','Dial','PJSIP/08064351467@015158000','2023-02-21 21:55:58',NULL,'2023-02-21 21:55:58',0,0,'NO ANSWER','DOCUMENTATION',NULL,'1677016558.1','1677016558.1',NULL,1),(NULL,'015158000','08064351467','internal','\"200\" <015158000>','PJSIP/400-00000003','PJSIP/015158000-00000004','Dial','PJSIP/08064351467@015158000','2023-02-21 21:56:15',NULL,'2023-02-21 21:56:15',0,0,'NO ANSWER','DOCUMENTATION',NULL,'1677016575.4','1677016575.4',NULL,4),(NULL,'400','1000','internal','\"200\" <400>','PJSIP/400-00000005',NULL,'Queue','Support,,,,20','2023-02-21 22:42:40','2023-02-21 22:42:40','2023-02-21 22:43:00',20,20,'ANSWERED','DOCUMENTATION',NULL,'1677019360.7','1677019360.7',NULL,7),(NULL,'400','1000','internal','\"200\" <400>','PJSIP/400-00000006',NULL,'Hangup',NULL,'2023-02-21 22:43:21','2023-02-21 22:43:21','2023-02-21 22:43:42',20,20,'ANSWERED','DOCUMENTATION',NULL,'1677019401.9','1677019401.9',NULL,8),(NULL,'400','2000','internal','\"200\" <400>','PJSIP/400-00000007',NULL,'Queue','sales,,,,20','2023-02-21 22:44:48','2023-02-21 22:44:48','2023-02-21 22:44:57',8,8,'ANSWERED','DOCUMENTATION',NULL,'1677019488.11','1677019488.11',NULL,9);
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extensions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `context` varchar(40) NOT NULL,
  `exten` varchar(40) NOT NULL,
  `priority` int NOT NULL,
  `app` varchar(40) NOT NULL,
  `appdata` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `context` (`context`,`exten`,`priority`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions`
--

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iaxfriends`
--

DROP TABLE IF EXISTS `iaxfriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iaxfriends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `type` enum('friend','user','peer') DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `mailbox` varchar(40) DEFAULT NULL,
  `secret` varchar(40) DEFAULT NULL,
  `dbsecret` varchar(40) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  `regcontext` varchar(40) DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL,
  `ipaddr` varchar(40) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `defaultip` varchar(20) DEFAULT NULL,
  `sourceaddress` varchar(20) DEFAULT NULL,
  `mask` varchar(20) DEFAULT NULL,
  `regexten` varchar(40) DEFAULT NULL,
  `regseconds` int DEFAULT NULL,
  `accountcode` varchar(80) DEFAULT NULL,
  `mohinterpret` varchar(20) DEFAULT NULL,
  `mohsuggest` varchar(20) DEFAULT NULL,
  `inkeys` varchar(40) DEFAULT NULL,
  `outkeys` varchar(40) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `callerid` varchar(100) DEFAULT NULL,
  `cid_number` varchar(40) DEFAULT NULL,
  `sendani` enum('yes','no') DEFAULT NULL,
  `fullname` varchar(40) DEFAULT NULL,
  `trunk` enum('yes','no') DEFAULT NULL,
  `auth` varchar(20) DEFAULT NULL,
  `maxauthreq` int DEFAULT NULL,
  `requirecalltoken` enum('yes','no','auto') DEFAULT NULL,
  `encryption` enum('yes','no','aes128') DEFAULT NULL,
  `transfer` enum('yes','no','mediaonly') DEFAULT NULL,
  `jitterbuffer` enum('yes','no') DEFAULT NULL,
  `forcejitterbuffer` enum('yes','no') DEFAULT NULL,
  `disallow` varchar(200) DEFAULT NULL,
  `allow` varchar(200) DEFAULT NULL,
  `codecpriority` varchar(40) DEFAULT NULL,
  `qualify` varchar(10) DEFAULT NULL,
  `qualifysmoothing` enum('yes','no') DEFAULT NULL,
  `qualifyfreqok` varchar(10) DEFAULT NULL,
  `qualifyfreqnotok` varchar(10) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `adsi` enum('yes','no') DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `setvar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `iaxfriends_name` (`name`),
  KEY `iaxfriends_name_host` (`name`,`host`),
  KEY `iaxfriends_name_ipaddr_port` (`name`,`ipaddr`,`port`),
  KEY `iaxfriends_ipaddr_port` (`ipaddr`,`port`),
  KEY `iaxfriends_host_port` (`host`,`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iaxfriends`
--

LOCK TABLES `iaxfriends` WRITE;
/*!40000 ALTER TABLE `iaxfriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `iaxfriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetme`
--

DROP TABLE IF EXISTS `meetme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetme` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `confno` varchar(80) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `adminpin` varchar(20) DEFAULT NULL,
  `opts` varchar(20) DEFAULT NULL,
  `adminopts` varchar(20) DEFAULT NULL,
  `recordingfilename` varchar(80) DEFAULT NULL,
  `recordingformat` varchar(10) DEFAULT NULL,
  `maxusers` int DEFAULT NULL,
  `members` int NOT NULL,
  PRIMARY KEY (`bookid`),
  KEY `meetme_confno_start_end` (`confno`,`starttime`,`endtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetme`
--

LOCK TABLES `meetme` WRITE;
/*!40000 ALTER TABLE `meetme` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musiconhold`
--

DROP TABLE IF EXISTS `musiconhold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musiconhold` (
  `name` varchar(80) NOT NULL,
  `mode` enum('custom','files','mp3nb','quietmp3nb','quietmp3','playlist') DEFAULT NULL,
  `directory` varchar(255) DEFAULT NULL,
  `application` varchar(255) DEFAULT NULL,
  `digit` varchar(1) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `format` varchar(10) DEFAULT NULL,
  `stamp` datetime DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musiconhold`
--

LOCK TABLES `musiconhold` WRITE;
/*!40000 ALTER TABLE `musiconhold` DISABLE KEYS */;
INSERT INTO `musiconhold` VALUES ('sales','playlist',NULL,NULL,NULL,NULL,NULL,NULL),('support','playlist',NULL,NULL,NULL,NULL,NULL,NULL),('test','playlist','/var/lib/asterisk/moh/custom/general',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `musiconhold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musiconhold_entry`
--

DROP TABLE IF EXISTS `musiconhold_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musiconhold_entry` (
  `name` varchar(80) NOT NULL,
  `position` int NOT NULL,
  `entry` varchar(1024) NOT NULL,
  PRIMARY KEY (`name`,`position`),
  CONSTRAINT `fk_musiconhold_entry_name_musiconhold` FOREIGN KEY (`name`) REFERENCES `musiconhold` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musiconhold_entry`
--

LOCK TABLES `musiconhold_entry` WRITE;
/*!40000 ALTER TABLE `musiconhold_entry` DISABLE KEYS */;
INSERT INTO `musiconhold_entry` VALUES ('sales',1,'http://192.168.1.76/moh/welcome'),('sales',2,'http://192.168.1.76/moh/Question'),('support',2,'/var/lib/asterisk/moh/custom/support/macroform-cold_day'),('test',1,'/var/lib/asterisk/moh/macroform-cold_day'),('test',2,'/var/lib/asterisk/moh/custom/support/welcome'),('test',3,'/var/lib/asterisk/moh/custom/support/Question');
/*!40000 ALTER TABLE `musiconhold_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_aors`
--

DROP TABLE IF EXISTS `ps_aors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_aors` (
  `id` varchar(40) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `default_expiration` int DEFAULT NULL,
  `mailboxes` varchar(80) DEFAULT NULL,
  `max_contacts` int DEFAULT NULL,
  `minimum_expiration` int DEFAULT NULL,
  `remove_existing` enum('yes','no') DEFAULT NULL,
  `qualify_frequency` int DEFAULT NULL,
  `authenticate_qualify` enum('yes','no') DEFAULT NULL,
  `maximum_expiration` int DEFAULT NULL,
  `outbound_proxy` varchar(40) DEFAULT NULL,
  `support_path` enum('yes','no') DEFAULT NULL,
  `qualify_timeout` float DEFAULT NULL,
  `voicemail_extension` varchar(40) DEFAULT NULL,
  `remove_unavailable` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_aors_id` (`id`),
  KEY `ps_aors_qualifyfreq_contact` (`qualify_frequency`,`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_aors`
--

LOCK TABLES `ps_aors` WRITE;
/*!40000 ALTER TABLE `ps_aors` DISABLE KEYS */;
INSERT INTO `ps_aors` VALUES ('015158000','sip:41.138.163.34:5060',NULL,NULL,2,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('200',NULL,NULL,NULL,2,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('300',NULL,NULL,NULL,2,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('400',NULL,NULL,NULL,2,NULL,NULL,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ps_aors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_asterisk_publications`
--

DROP TABLE IF EXISTS `ps_asterisk_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_asterisk_publications` (
  `id` varchar(40) NOT NULL,
  `devicestate_publish` varchar(40) DEFAULT NULL,
  `mailboxstate_publish` varchar(40) DEFAULT NULL,
  `device_state` enum('yes','no') DEFAULT NULL,
  `device_state_filter` varchar(256) DEFAULT NULL,
  `mailbox_state` enum('yes','no') DEFAULT NULL,
  `mailbox_state_filter` varchar(256) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_asterisk_publications_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_asterisk_publications`
--

LOCK TABLES `ps_asterisk_publications` WRITE;
/*!40000 ALTER TABLE `ps_asterisk_publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_asterisk_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_auths`
--

DROP TABLE IF EXISTS `ps_auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_auths` (
  `id` varchar(40) NOT NULL,
  `auth_type` enum('md5','userpass','google_oauth') DEFAULT NULL,
  `nonce_lifetime` int DEFAULT NULL,
  `md5_cred` varchar(40) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `realm` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `oauth_clientid` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_auths_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_auths`
--

LOCK TABLES `ps_auths` WRITE;
/*!40000 ALTER TABLE `ps_auths` DISABLE KEYS */;
INSERT INTO `ps_auths` VALUES ('015158000','userpass',NULL,NULL,'IMjmX9',NULL,'015158000',NULL,NULL,NULL),('200','userpass',NULL,NULL,'test$098z','','200',NULL,NULL,NULL),('300','userpass',NULL,NULL,'test$098z',NULL,'300',NULL,NULL,NULL),('400','userpass',NULL,NULL,'test$098z',NULL,'400',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ps_auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contacts`
--

DROP TABLE IF EXISTS `ps_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_contacts` (
  `id` varchar(255) DEFAULT NULL,
  `uri` varchar(511) DEFAULT NULL,
  `expiration_time` bigint DEFAULT NULL,
  `qualify_frequency` int DEFAULT NULL,
  `outbound_proxy` varchar(40) DEFAULT NULL,
  `path` text,
  `user_agent` varchar(255) DEFAULT NULL,
  `qualify_timeout` float DEFAULT NULL,
  `reg_server` varchar(255) DEFAULT NULL,
  `authenticate_qualify` enum('yes','no') DEFAULT NULL,
  `via_addr` varchar(40) DEFAULT NULL,
  `via_port` int DEFAULT NULL,
  `call_id` varchar(255) DEFAULT NULL,
  `endpoint` varchar(40) DEFAULT NULL,
  `prune_on_boot` enum('yes','no') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `ps_contacts_uq` (`id`,`reg_server`),
  KEY `ps_contacts_id` (`id`),
  KEY `ps_contacts_qualifyfreq_exp` (`qualify_frequency`,`expiration_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contacts`
--

LOCK TABLES `ps_contacts` WRITE;
/*!40000 ALTER TABLE `ps_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_domain_aliases`
--

DROP TABLE IF EXISTS `ps_domain_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_domain_aliases` (
  `id` varchar(40) NOT NULL,
  `domain` varchar(80) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_domain_aliases_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_domain_aliases`
--

LOCK TABLES `ps_domain_aliases` WRITE;
/*!40000 ALTER TABLE `ps_domain_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_domain_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_endpoint_id_ips`
--

DROP TABLE IF EXISTS `ps_endpoint_id_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_endpoint_id_ips` (
  `id` varchar(40) NOT NULL,
  `endpoint` varchar(40) DEFAULT NULL,
  `match` varchar(80) DEFAULT NULL,
  `srv_lookups` enum('yes','no') DEFAULT NULL,
  `match_header` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_endpoint_id_ips_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_endpoint_id_ips`
--

LOCK TABLES `ps_endpoint_id_ips` WRITE;
/*!40000 ALTER TABLE `ps_endpoint_id_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_endpoint_id_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_endpoints`
--

DROP TABLE IF EXISTS `ps_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_endpoints` (
  `id` varchar(40) NOT NULL,
  `transport` varchar(40) DEFAULT NULL,
  `aors` varchar(200) DEFAULT NULL,
  `auth` varchar(40) DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  `disallow` varchar(200) DEFAULT NULL,
  `allow` varchar(200) DEFAULT NULL,
  `direct_media` enum('yes','no') DEFAULT NULL,
  `connected_line_method` enum('invite','reinvite','update') DEFAULT NULL,
  `direct_media_method` enum('invite','reinvite','update') DEFAULT NULL,
  `direct_media_glare_mitigation` enum('none','outgoing','incoming') DEFAULT NULL,
  `disable_direct_media_on_nat` enum('yes','no') DEFAULT NULL,
  `dtmf_mode` enum('rfc4733','inband','info','auto','auto_info') DEFAULT NULL,
  `external_media_address` varchar(40) DEFAULT NULL,
  `force_rport` enum('yes','no') DEFAULT NULL,
  `ice_support` enum('yes','no') DEFAULT NULL,
  `identify_by` varchar(80) DEFAULT NULL,
  `mailboxes` varchar(40) DEFAULT NULL,
  `moh_suggest` varchar(40) DEFAULT NULL,
  `outbound_auth` varchar(40) DEFAULT NULL,
  `outbound_proxy` varchar(40) DEFAULT NULL,
  `rewrite_contact` enum('yes','no') DEFAULT NULL,
  `rtp_ipv6` enum('yes','no') DEFAULT NULL,
  `rtp_symmetric` enum('yes','no') DEFAULT NULL,
  `send_diversion` enum('yes','no') DEFAULT NULL,
  `send_pai` enum('yes','no') DEFAULT NULL,
  `send_rpid` enum('yes','no') DEFAULT NULL,
  `timers_min_se` int DEFAULT NULL,
  `timers` enum('forced','no','required','yes') DEFAULT NULL,
  `timers_sess_expires` int DEFAULT NULL,
  `callerid` varchar(40) DEFAULT NULL,
  `callerid_privacy` enum('allowed_not_screened','allowed_passed_screened','allowed_failed_screened','allowed','prohib_not_screened','prohib_passed_screened','prohib_failed_screened','prohib','unavailable') DEFAULT NULL,
  `callerid_tag` varchar(40) DEFAULT NULL,
  `100rel` enum('no','required','peer_supported','yes') DEFAULT NULL,
  `aggregate_mwi` enum('yes','no') DEFAULT NULL,
  `trust_id_inbound` enum('yes','no') DEFAULT NULL,
  `trust_id_outbound` enum('yes','no') DEFAULT NULL,
  `use_ptime` enum('yes','no') DEFAULT NULL,
  `use_avpf` enum('yes','no') DEFAULT NULL,
  `media_encryption` enum('no','sdes','dtls') DEFAULT NULL,
  `inband_progress` enum('yes','no') DEFAULT NULL,
  `call_group` varchar(40) DEFAULT NULL,
  `pickup_group` varchar(40) DEFAULT NULL,
  `named_call_group` varchar(40) DEFAULT NULL,
  `named_pickup_group` varchar(40) DEFAULT NULL,
  `device_state_busy_at` int DEFAULT NULL,
  `fax_detect` enum('yes','no') DEFAULT NULL,
  `t38_udptl` enum('yes','no') DEFAULT NULL,
  `t38_udptl_ec` enum('none','fec','redundancy') DEFAULT NULL,
  `t38_udptl_maxdatagram` int DEFAULT NULL,
  `t38_udptl_nat` enum('yes','no') DEFAULT NULL,
  `t38_udptl_ipv6` enum('yes','no') DEFAULT NULL,
  `tone_zone` varchar(40) DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `one_touch_recording` enum('yes','no') DEFAULT NULL,
  `record_on_feature` varchar(40) DEFAULT NULL,
  `record_off_feature` varchar(40) DEFAULT NULL,
  `rtp_engine` varchar(40) DEFAULT NULL,
  `allow_transfer` enum('yes','no') DEFAULT NULL,
  `allow_subscribe` enum('yes','no') DEFAULT NULL,
  `sdp_owner` varchar(40) DEFAULT NULL,
  `sdp_session` varchar(40) DEFAULT NULL,
  `tos_audio` varchar(10) DEFAULT NULL,
  `tos_video` varchar(10) DEFAULT NULL,
  `sub_min_expiry` int DEFAULT NULL,
  `from_domain` varchar(40) DEFAULT NULL,
  `from_user` varchar(40) DEFAULT NULL,
  `mwi_from_user` varchar(40) DEFAULT NULL,
  `dtls_verify` varchar(40) DEFAULT NULL,
  `dtls_rekey` varchar(40) DEFAULT NULL,
  `dtls_cert_file` varchar(200) DEFAULT NULL,
  `dtls_private_key` varchar(200) DEFAULT NULL,
  `dtls_cipher` varchar(200) DEFAULT NULL,
  `dtls_ca_file` varchar(200) DEFAULT NULL,
  `dtls_ca_path` varchar(200) DEFAULT NULL,
  `dtls_setup` enum('active','passive','actpass') DEFAULT NULL,
  `srtp_tag_32` enum('yes','no') DEFAULT NULL,
  `media_address` varchar(40) DEFAULT NULL,
  `redirect_method` enum('user','uri_core','uri_pjsip') DEFAULT NULL,
  `set_var` text,
  `cos_audio` int DEFAULT NULL,
  `cos_video` int DEFAULT NULL,
  `message_context` varchar(40) DEFAULT NULL,
  `force_avp` enum('yes','no') DEFAULT NULL,
  `media_use_received_transport` enum('yes','no') DEFAULT NULL,
  `accountcode` varchar(80) DEFAULT NULL,
  `user_eq_phone` enum('yes','no') DEFAULT NULL,
  `moh_passthrough` enum('yes','no') DEFAULT NULL,
  `media_encryption_optimistic` enum('yes','no') DEFAULT NULL,
  `rpid_immediate` enum('yes','no') DEFAULT NULL,
  `g726_non_standard` enum('yes','no') DEFAULT NULL,
  `rtp_keepalive` int DEFAULT NULL,
  `rtp_timeout` int DEFAULT NULL,
  `rtp_timeout_hold` int DEFAULT NULL,
  `bind_rtp_to_media_address` enum('yes','no') DEFAULT NULL,
  `voicemail_extension` varchar(40) DEFAULT NULL,
  `mwi_subscribe_replaces_unsolicited` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `deny` varchar(95) DEFAULT NULL,
  `permit` varchar(95) DEFAULT NULL,
  `acl` varchar(40) DEFAULT NULL,
  `contact_deny` varchar(95) DEFAULT NULL,
  `contact_permit` varchar(95) DEFAULT NULL,
  `contact_acl` varchar(40) DEFAULT NULL,
  `subscribe_context` varchar(40) DEFAULT NULL,
  `fax_detect_timeout` int DEFAULT NULL,
  `contact_user` varchar(80) DEFAULT NULL,
  `preferred_codec_only` enum('yes','no') DEFAULT NULL,
  `asymmetric_rtp_codec` enum('yes','no') DEFAULT NULL,
  `rtcp_mux` enum('yes','no') DEFAULT NULL,
  `allow_overlap` enum('yes','no') DEFAULT NULL,
  `refer_blind_progress` enum('yes','no') DEFAULT NULL,
  `notify_early_inuse_ringing` enum('yes','no') DEFAULT NULL,
  `max_audio_streams` int DEFAULT NULL,
  `max_video_streams` int DEFAULT NULL,
  `webrtc` enum('yes','no') DEFAULT NULL,
  `dtls_fingerprint` enum('SHA-1','SHA-256') DEFAULT NULL,
  `incoming_mwi_mailbox` varchar(40) DEFAULT NULL,
  `bundle` enum('yes','no') DEFAULT NULL,
  `dtls_auto_generate_cert` enum('yes','no') DEFAULT NULL,
  `follow_early_media_fork` enum('yes','no') DEFAULT NULL,
  `accept_multiple_sdp_answers` enum('yes','no') DEFAULT NULL,
  `suppress_q850_reason_headers` enum('yes','no') DEFAULT NULL,
  `trust_connected_line` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `send_connected_line` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `ignore_183_without_sdp` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `codec_prefs_incoming_offer` varchar(128) DEFAULT NULL,
  `codec_prefs_outgoing_offer` varchar(128) DEFAULT NULL,
  `codec_prefs_incoming_answer` varchar(128) DEFAULT NULL,
  `codec_prefs_outgoing_answer` varchar(128) DEFAULT NULL,
  `stir_shaken` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `send_history_info` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `allow_unauthenticated_options` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `t38_bind_udptl_to_media_address` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `geoloc_incoming_call_profile` varchar(80) DEFAULT NULL,
  `geoloc_outgoing_call_profile` varchar(80) DEFAULT NULL,
  `incoming_call_offer_pref` enum('local','local_first','remote','remote_first') DEFAULT NULL,
  `outgoing_call_offer_pref` enum('local','local_merge','local_first','remote','remote_merge','remote_first') DEFAULT NULL,
  `stir_shaken_profile` varchar(80) DEFAULT NULL,
  `security_negotiation` enum('no','mediasec') DEFAULT NULL,
  `security_mechanisms` varchar(512) DEFAULT NULL,
  `send_aoc` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_endpoints_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_endpoints`
--

LOCK TABLES `ps_endpoints` WRITE;
/*!40000 ALTER TABLE `ps_endpoints` DISABLE KEYS */;
INSERT INTO `ps_endpoints` VALUES ('015158000','SIMPLETRANS','015158000',NULL,'external','all','ulaw,alaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IMjmX9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'015158000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('200','SIMPLETRANS','200','200','internal','all','ulaw,alaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('300','SIMPLETRANS','300','300','internal','all','ulaw,alaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('400','SIMPLETRANS','400','400','internal','all','ulaw,alaw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ps_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_globals`
--

DROP TABLE IF EXISTS `ps_globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_globals` (
  `id` varchar(40) NOT NULL,
  `max_forwards` int DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `default_outbound_endpoint` varchar(40) DEFAULT NULL,
  `debug` varchar(40) DEFAULT NULL,
  `endpoint_identifier_order` varchar(40) DEFAULT NULL,
  `max_initial_qualify_time` int DEFAULT NULL,
  `default_from_user` varchar(80) DEFAULT NULL,
  `keep_alive_interval` int DEFAULT NULL,
  `regcontext` varchar(80) DEFAULT NULL,
  `contact_expiration_check_interval` int DEFAULT NULL,
  `default_voicemail_extension` varchar(40) DEFAULT NULL,
  `disable_multi_domain` enum('yes','no') DEFAULT NULL,
  `unidentified_request_count` int DEFAULT NULL,
  `unidentified_request_period` int DEFAULT NULL,
  `unidentified_request_prune_interval` int DEFAULT NULL,
  `default_realm` varchar(40) DEFAULT NULL,
  `mwi_tps_queue_high` int DEFAULT NULL,
  `mwi_tps_queue_low` int DEFAULT NULL,
  `mwi_disable_initial_unsolicited` enum('yes','no') DEFAULT NULL,
  `ignore_uri_user_options` enum('yes','no') DEFAULT NULL,
  `use_callerid_contact` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `send_contact_status_on_update_registration` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `taskprocessor_overload_trigger` enum('none','global','pjsip_only') DEFAULT NULL,
  `norefersub` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `allow_sending_180_after_183` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `all_codecs_on_empty_reinvite` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_globals_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_globals`
--

LOCK TABLES `ps_globals` WRITE;
/*!40000 ALTER TABLE `ps_globals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_inbound_publications`
--

DROP TABLE IF EXISTS `ps_inbound_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_inbound_publications` (
  `id` varchar(40) NOT NULL,
  `endpoint` varchar(40) DEFAULT NULL,
  `event_asterisk-devicestate` varchar(40) DEFAULT NULL,
  `event_asterisk-mwi` varchar(40) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_inbound_publications_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_inbound_publications`
--

LOCK TABLES `ps_inbound_publications` WRITE;
/*!40000 ALTER TABLE `ps_inbound_publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_inbound_publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_outbound_publishes`
--

DROP TABLE IF EXISTS `ps_outbound_publishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_outbound_publishes` (
  `id` varchar(40) NOT NULL,
  `expiration` int DEFAULT NULL,
  `outbound_auth` varchar(40) DEFAULT NULL,
  `outbound_proxy` varchar(256) DEFAULT NULL,
  `server_uri` varchar(256) DEFAULT NULL,
  `from_uri` varchar(256) DEFAULT NULL,
  `to_uri` varchar(256) DEFAULT NULL,
  `event` varchar(40) DEFAULT NULL,
  `max_auth_attempts` int DEFAULT NULL,
  `transport` varchar(40) DEFAULT NULL,
  `multi_user` enum('yes','no') DEFAULT NULL,
  `@body` varchar(40) DEFAULT NULL,
  `@context` varchar(256) DEFAULT NULL,
  `@exten` varchar(256) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_outbound_publishes_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_outbound_publishes`
--

LOCK TABLES `ps_outbound_publishes` WRITE;
/*!40000 ALTER TABLE `ps_outbound_publishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_outbound_publishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_registrations`
--

DROP TABLE IF EXISTS `ps_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_registrations` (
  `id` varchar(40) NOT NULL,
  `auth_rejection_permanent` enum('yes','no') DEFAULT NULL,
  `client_uri` varchar(255) DEFAULT NULL,
  `contact_user` varchar(40) DEFAULT NULL,
  `expiration` int DEFAULT NULL,
  `max_retries` int DEFAULT NULL,
  `outbound_auth` varchar(40) DEFAULT NULL,
  `outbound_proxy` varchar(40) DEFAULT NULL,
  `retry_interval` int DEFAULT NULL,
  `forbidden_retry_interval` int DEFAULT NULL,
  `server_uri` varchar(255) DEFAULT NULL,
  `transport` varchar(40) DEFAULT NULL,
  `support_path` enum('yes','no') DEFAULT NULL,
  `fatal_retry_interval` int DEFAULT NULL,
  `line` enum('yes','no') DEFAULT NULL,
  `endpoint` varchar(40) DEFAULT NULL,
  `support_outbound` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  `contact_header_params` varchar(255) DEFAULT NULL,
  `max_random_initial_delay` int DEFAULT NULL,
  `security_negotiation` enum('no','mediasec') DEFAULT NULL,
  `security_mechanisms` varchar(512) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_registrations_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_registrations`
--

LOCK TABLES `ps_registrations` WRITE;
/*!40000 ALTER TABLE `ps_registrations` DISABLE KEYS */;
INSERT INTO `ps_registrations` VALUES ('015158000',NULL,'sip:015158000@41.138.163.34:5060','015158000',NULL,NULL,'015158000',NULL,60,NULL,'sip:192.168.1.79:5060','SIMPLETRANS',NULL,NULL,'yes','015158000',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ps_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_resource_list`
--

DROP TABLE IF EXISTS `ps_resource_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_resource_list` (
  `id` varchar(40) NOT NULL,
  `list_item` varchar(2048) DEFAULT NULL,
  `event` varchar(40) DEFAULT NULL,
  `full_state` enum('yes','no') DEFAULT NULL,
  `notification_batch_interval` int DEFAULT NULL,
  `resource_display_name` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_resource_list_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_resource_list`
--

LOCK TABLES `ps_resource_list` WRITE;
/*!40000 ALTER TABLE `ps_resource_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_resource_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_subscription_persistence`
--

DROP TABLE IF EXISTS `ps_subscription_persistence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_subscription_persistence` (
  `id` varchar(40) NOT NULL,
  `packet` varchar(2048) DEFAULT NULL,
  `src_name` varchar(128) DEFAULT NULL,
  `src_port` int DEFAULT NULL,
  `transport_key` varchar(64) DEFAULT NULL,
  `local_name` varchar(128) DEFAULT NULL,
  `local_port` int DEFAULT NULL,
  `cseq` int DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `endpoint` varchar(40) DEFAULT NULL,
  `expires` int DEFAULT NULL,
  `contact_uri` varchar(256) DEFAULT NULL,
  `prune_on_boot` enum('yes','no') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_subscription_persistence_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_subscription_persistence`
--

LOCK TABLES `ps_subscription_persistence` WRITE;
/*!40000 ALTER TABLE `ps_subscription_persistence` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_subscription_persistence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_systems`
--

DROP TABLE IF EXISTS `ps_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_systems` (
  `id` varchar(40) NOT NULL,
  `timer_t1` int DEFAULT NULL,
  `timer_b` int DEFAULT NULL,
  `compact_headers` enum('yes','no') DEFAULT NULL,
  `threadpool_initial_size` int DEFAULT NULL,
  `threadpool_auto_increment` int DEFAULT NULL,
  `threadpool_idle_timeout` int DEFAULT NULL,
  `threadpool_max_size` int DEFAULT NULL,
  `disable_tcp_switch` enum('yes','no') DEFAULT NULL,
  `follow_early_media_fork` enum('yes','no') DEFAULT NULL,
  `accept_multiple_sdp_answers` enum('yes','no') DEFAULT NULL,
  `disable_rport` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_systems_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_systems`
--

LOCK TABLES `ps_systems` WRITE;
/*!40000 ALTER TABLE `ps_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_transports`
--

DROP TABLE IF EXISTS `ps_transports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_transports` (
  `id` varchar(40) NOT NULL,
  `async_operations` int DEFAULT NULL,
  `bind` varchar(40) DEFAULT NULL,
  `ca_list_file` varchar(200) DEFAULT NULL,
  `cert_file` varchar(200) DEFAULT NULL,
  `cipher` varchar(200) DEFAULT NULL,
  `domain` varchar(40) DEFAULT NULL,
  `external_media_address` varchar(40) DEFAULT NULL,
  `external_signaling_address` varchar(40) DEFAULT NULL,
  `external_signaling_port` int DEFAULT NULL,
  `method` enum('default','unspecified','tlsv1','sslv2','sslv3','sslv23') DEFAULT NULL,
  `local_net` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `priv_key_file` varchar(200) DEFAULT NULL,
  `protocol` enum('udp','tcp','tls','ws','wss','flow') DEFAULT NULL,
  `require_client_cert` enum('yes','no') DEFAULT NULL,
  `verify_client` enum('yes','no') DEFAULT NULL,
  `verify_server` enum('yes','no') DEFAULT NULL,
  `tos` varchar(10) DEFAULT NULL,
  `cos` int DEFAULT NULL,
  `allow_reload` enum('yes','no') DEFAULT NULL,
  `symmetric_transport` enum('yes','no') DEFAULT NULL,
  `allow_wildcard_certs` enum('yes','no') DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ps_transports_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_transports`
--

LOCK TABLES `ps_transports` WRITE;
/*!40000 ALTER TABLE `ps_transports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_transports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_log`
--

DROP TABLE IF EXISTS `queue_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `callid` varchar(80) DEFAULT NULL,
  `queuename` varchar(256) DEFAULT NULL,
  `agent` varchar(80) DEFAULT NULL,
  `event` varchar(32) DEFAULT NULL,
  `data1` varchar(100) DEFAULT NULL,
  `data2` varchar(100) DEFAULT NULL,
  `data3` varchar(100) DEFAULT NULL,
  `data4` varchar(100) DEFAULT NULL,
  `data5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_log`
--

LOCK TABLES `queue_log` WRITE;
/*!40000 ALTER TABLE `queue_log` DISABLE KEYS */;
INSERT INTO `queue_log` VALUES (1,'2023-01-18 12:16:03','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(2,'2023-01-18 13:35:42','NONE','NONE','NONE','QUEUESTART','','','','',''),(3,'2023-01-18 13:54:34','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(4,'2023-01-18 14:34:40','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(5,'2023-01-26 13:50:40','NONE','NONE','NONE','QUEUESTART','','','','',''),(6,'2023-01-26 16:00:22','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(7,'2023-01-27 09:42:27','NONE','NONE','NONE','QUEUESTART','','','','',''),(8,'2023-01-27 12:11:43','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(9,'2023-02-04 23:30:10','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(10,'2023-02-05 00:09:13','1675555752.0','Support','NONE','ENTERQUEUE','','200','1','',''),(11,'2023-02-05 00:09:21','1675555752.0','Support','PJSIP/400','CONNECT','8','1675555753.1','7','',''),(12,'2023-02-05 00:09:26','1675555752.0','Support','PJSIP/400','COMPLETEAGENT','8','5','1','',''),(13,'2023-02-06 11:00:01','NONE','NONE','NONE','QUEUESTART','','','','',''),(14,'2023-02-06 18:12:47','NONE','NONE','NONE','QUEUESTART','','','','',''),(15,'2023-02-06 20:57:53','NONE','NONE','NONE','QUEUESTART','','','','',''),(16,'2023-02-06 22:02:03','1675720922.0','Support','NONE','ENTERQUEUE','','200','1','',''),(17,'2023-02-06 22:02:18','1675720922.0','Support','PJSIP/400','RINGNOANSWER','15000','','','',''),(18,'2023-02-06 22:02:23','1675720922.0','Support','NONE','ABANDON','1','1','20','',''),(19,'2023-02-06 22:02:47','1675720966.3','Support','NONE','ENTERQUEUE','','200','1','',''),(20,'2023-02-06 22:02:51','1675720966.3','Support','PJSIP/400','CONNECT','5','1675720966.4','4','',''),(21,'2023-02-06 22:04:35','1675720966.3','Support','PJSIP/400','COMPLETECALLER','5','104','1','',''),(22,'2023-02-09 01:50:30','NONE','NONE','NONE','QUEUESTART','','','','',''),(23,'2023-02-09 02:24:08','1675909448.3','Support','NONE','ENTERQUEUE','','300','1','',''),(24,'2023-02-09 02:24:20','1675909448.3','Support','PJSIP/400','RINGCANCELED','11193','','','',''),(25,'2023-02-09 02:24:20','1675909448.3','Support','NONE','ABANDON','1','1','11','',''),(26,'2023-02-12 01:15:46','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(27,'2023-02-12 03:05:42','1676171142.0','Support','NONE','ENTERQUEUE','','300','1','',''),(28,'2023-02-12 03:05:55','1676171142.0','Support','PJSIP/400','RINGNOANSWER','13000','','','',''),(29,'2023-02-12 03:05:59','1676171142.0','Support','NONE','ABANDON','1','1','17','',''),(30,'2023-02-12 03:28:31','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(31,'2023-02-12 22:16:08','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(32,'2023-02-12 23:06:52','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(33,'2023-02-12 23:10:36','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(34,'2023-02-12 23:13:06','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(35,'2023-02-12 23:14:22','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(36,'2023-02-12 23:25:43','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(37,'2023-02-12 23:38:50','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(38,'2023-02-12 23:41:16','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(39,'2023-02-12 23:56:55','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(40,'2023-02-13 00:00:41','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(41,'2023-02-13 00:19:55','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(42,'2023-02-13 00:21:56','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(43,'2023-02-13 00:26:11','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(44,'2023-02-13 00:55:55','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(45,'2023-02-14 01:19:34','NONE','NONE','NONE','QUEUESTART','','','','',''),(46,'2023-02-14 01:53:56','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(47,'2023-02-14 02:15:06','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(48,'2023-02-14 02:15:38','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(49,'2023-02-15 23:52:02','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(50,'2023-02-16 00:07:14','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(51,'2023-02-16 00:13:10','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(52,'2023-02-16 00:13:42','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(53,'2023-02-16 00:21:21','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(54,'2023-02-16 00:27:35','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(55,'2023-02-16 00:28:00','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(56,'2023-02-16 00:35:32','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(57,'2023-02-16 00:58:47','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(58,'2023-02-16 01:36:01','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(59,'2023-02-16 02:29:28','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(60,'2023-02-16 02:31:29','NONE','NONE','NONE','QUEUESTART','','','','',''),(61,'2023-02-16 02:32:43','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(62,'2023-02-16 02:33:45','NONE','NONE','NONE','QUEUESTART','','','','',''),(63,'2023-02-16 02:34:33','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(64,'2023-02-16 02:37:22','NONE','NONE','NONE','QUEUESTART','','','','',''),(65,'2023-02-16 02:39:36','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(66,'2023-02-16 18:31:57','NONE','NONE','NONE','QUEUESTART','','','','',''),(67,'2023-02-17 17:27:41','NONE','NONE','NONE','QUEUESTART','','','','',''),(68,'2023-02-19 17:48:22','NONE','NONE','NONE','QUEUESTART','','','','',''),(69,'2023-02-19 18:22:44','NONE','NONE','NONE','QUEUESTART','','','','',''),(70,'2023-02-19 18:26:10','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(71,'2023-02-19 18:33:43','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(72,'2023-02-19 18:35:02','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(73,'2023-02-21 01:08:00','NONE','NONE','NONE','QUEUESTART','','','','',''),(74,'2023-02-21 18:23:42','NONE','NONE','NONE','QUEUESTART','','','','',''),(75,'2023-02-21 21:51:29','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(76,'2023-02-21 21:54:01','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(77,'2023-02-21 21:55:17','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(78,'2023-02-21 22:42:40','1677019360.7','Support','NONE','ENTERQUEUE','','400','1','',''),(79,'2023-02-21 22:43:00','1677019360.7','Support','NONE','ABANDON','1','1','20','',''),(80,'2023-02-21 22:43:22','1677019401.9','Support','NONE','ENTERQUEUE','','400','1','',''),(81,'2023-02-21 22:43:42','1677019401.9','Support','NONE','EXITWITHTIMEOUT','1','1','20','',''),(82,'2023-02-21 22:44:49','1677019488.11','sales','NONE','ENTERQUEUE','','400','1','',''),(83,'2023-02-21 22:44:57','1677019488.11','sales','NONE','ABANDON','1','1','9','',''),(84,'2023-02-26 13:45:01','NONE','NONE','NONE','CONFIGRELOAD','','','','',''),(85,'2023-02-26 23:07:27','NONE','NONE','NONE','QUEUESTART','','','','','');
/*!40000 ALTER TABLE `queue_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_members`
--

DROP TABLE IF EXISTS `queue_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_members` (
  `queue_name` varchar(80) NOT NULL,
  `interface` varchar(80) NOT NULL,
  `membername` varchar(80) DEFAULT NULL,
  `state_interface` varchar(80) DEFAULT NULL,
  `penalty` int DEFAULT NULL,
  `paused` int DEFAULT NULL,
  `uniqueid` int NOT NULL AUTO_INCREMENT,
  `wrapuptime` int DEFAULT NULL,
  `ringinuse` enum('0','1','off','on','false','true','no','yes') DEFAULT NULL,
  PRIMARY KEY (`queue_name`,`interface`),
  UNIQUE KEY `uniqueid` (`uniqueid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_members`
--

LOCK TABLES `queue_members` WRITE;
/*!40000 ALTER TABLE `queue_members` DISABLE KEYS */;
INSERT INTO `queue_members` VALUES ('200','Support','PJSIP/200','PJSIP/200',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `queue_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_rules`
--

DROP TABLE IF EXISTS `queue_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_rules` (
  `rule_name` varchar(80) NOT NULL,
  `time` varchar(32) NOT NULL,
  `min_penalty` varchar(32) NOT NULL,
  `max_penalty` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_rules`
--

LOCK TABLES `queue_rules` WRITE;
/*!40000 ALTER TABLE `queue_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queues` (
  `name` varchar(128) NOT NULL,
  `musiconhold` varchar(128) DEFAULT NULL,
  `announce` varchar(128) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `timeout` int DEFAULT NULL,
  `ringinuse` enum('yes','no') DEFAULT NULL,
  `setinterfacevar` enum('yes','no') DEFAULT NULL,
  `setqueuevar` enum('yes','no') DEFAULT NULL,
  `setqueueentryvar` enum('yes','no') DEFAULT NULL,
  `monitor_format` varchar(8) DEFAULT NULL,
  `membermacro` varchar(512) DEFAULT NULL,
  `membergosub` varchar(512) DEFAULT NULL,
  `queue_youarenext` varchar(128) DEFAULT NULL,
  `queue_thereare` varchar(128) DEFAULT NULL,
  `queue_callswaiting` varchar(128) DEFAULT NULL,
  `queue_quantity1` varchar(128) DEFAULT NULL,
  `queue_quantity2` varchar(128) DEFAULT NULL,
  `queue_holdtime` varchar(128) DEFAULT NULL,
  `queue_minutes` varchar(128) DEFAULT NULL,
  `queue_minute` varchar(128) DEFAULT NULL,
  `queue_seconds` varchar(128) DEFAULT NULL,
  `queue_thankyou` varchar(128) DEFAULT NULL,
  `queue_callerannounce` varchar(128) DEFAULT NULL,
  `queue_reporthold` varchar(128) DEFAULT NULL,
  `announce_frequency` int DEFAULT NULL,
  `announce_to_first_user` enum('yes','no') DEFAULT NULL,
  `min_announce_frequency` int DEFAULT NULL,
  `announce_round_seconds` int DEFAULT NULL,
  `announce_holdtime` varchar(128) DEFAULT NULL,
  `announce_position` varchar(128) DEFAULT NULL,
  `announce_position_limit` int DEFAULT NULL,
  `periodic_announce` varchar(50) DEFAULT NULL,
  `periodic_announce_frequency` int DEFAULT NULL,
  `relative_periodic_announce` enum('yes','no') DEFAULT NULL,
  `random_periodic_announce` enum('yes','no') DEFAULT NULL,
  `retry` int DEFAULT NULL,
  `wrapuptime` int DEFAULT NULL,
  `penaltymemberslimit` int DEFAULT NULL,
  `autofill` enum('yes','no') DEFAULT NULL,
  `monitor_type` varchar(128) DEFAULT NULL,
  `autopause` enum('yes','no','all') DEFAULT NULL,
  `autopausedelay` int DEFAULT NULL,
  `autopausebusy` enum('yes','no') DEFAULT NULL,
  `autopauseunavail` enum('yes','no') DEFAULT NULL,
  `maxlen` int DEFAULT NULL,
  `servicelevel` int DEFAULT NULL,
  `strategy` enum('ringall','leastrecent','fewestcalls','random','rrmemory','linear','wrandom','rrordered') DEFAULT NULL,
  `joinempty` varchar(128) DEFAULT NULL,
  `leavewhenempty` varchar(128) DEFAULT NULL,
  `reportholdtime` enum('yes','no') DEFAULT NULL,
  `memberdelay` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `timeoutrestart` enum('yes','no') DEFAULT NULL,
  `defaultrule` varchar(128) DEFAULT NULL,
  `timeoutpriority` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
INSERT INTO `queues` VALUES ('support','default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sippeers`
--

DROP TABLE IF EXISTS `sippeers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sippeers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `ipaddr` varchar(45) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `regseconds` int DEFAULT NULL,
  `defaultuser` varchar(40) DEFAULT NULL,
  `fullcontact` varchar(80) DEFAULT NULL,
  `regserver` varchar(20) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `lastms` int DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL,
  `type` enum('friend','user','peer') DEFAULT NULL,
  `context` varchar(40) DEFAULT NULL,
  `permit` varchar(95) DEFAULT NULL,
  `deny` varchar(95) DEFAULT NULL,
  `secret` varchar(40) DEFAULT NULL,
  `md5secret` varchar(40) DEFAULT NULL,
  `remotesecret` varchar(40) DEFAULT NULL,
  `transport` enum('udp','tcp','tls','ws','wss','udp,tcp','tcp,udp') DEFAULT NULL,
  `dtmfmode` enum('rfc2833','info','shortinfo','inband','auto') DEFAULT NULL,
  `directmedia` enum('yes','no','nonat','update','outgoing') DEFAULT NULL,
  `nat` varchar(29) DEFAULT NULL,
  `callgroup` varchar(40) DEFAULT NULL,
  `pickupgroup` varchar(40) DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `disallow` varchar(200) DEFAULT NULL,
  `allow` varchar(200) DEFAULT NULL,
  `insecure` varchar(40) DEFAULT NULL,
  `trustrpid` enum('yes','no') DEFAULT NULL,
  `progressinband` enum('yes','no','never') DEFAULT NULL,
  `promiscredir` enum('yes','no') DEFAULT NULL,
  `useclientcode` enum('yes','no') DEFAULT NULL,
  `accountcode` varchar(80) DEFAULT NULL,
  `setvar` varchar(200) DEFAULT NULL,
  `callerid` varchar(40) DEFAULT NULL,
  `amaflags` varchar(40) DEFAULT NULL,
  `callcounter` enum('yes','no') DEFAULT NULL,
  `busylevel` int DEFAULT NULL,
  `allowoverlap` enum('yes','no') DEFAULT NULL,
  `allowsubscribe` enum('yes','no') DEFAULT NULL,
  `videosupport` enum('yes','no') DEFAULT NULL,
  `maxcallbitrate` int DEFAULT NULL,
  `rfc2833compensate` enum('yes','no') DEFAULT NULL,
  `mailbox` varchar(40) DEFAULT NULL,
  `session-timers` enum('accept','refuse','originate') DEFAULT NULL,
  `session-expires` int DEFAULT NULL,
  `session-minse` int DEFAULT NULL,
  `session-refresher` enum('uac','uas') DEFAULT NULL,
  `t38pt_usertpsource` varchar(40) DEFAULT NULL,
  `regexten` varchar(40) DEFAULT NULL,
  `fromdomain` varchar(40) DEFAULT NULL,
  `fromuser` varchar(40) DEFAULT NULL,
  `qualify` varchar(40) DEFAULT NULL,
  `defaultip` varchar(45) DEFAULT NULL,
  `rtptimeout` int DEFAULT NULL,
  `rtpholdtimeout` int DEFAULT NULL,
  `sendrpid` enum('yes','no') DEFAULT NULL,
  `outboundproxy` varchar(40) DEFAULT NULL,
  `callbackextension` varchar(40) DEFAULT NULL,
  `timert1` int DEFAULT NULL,
  `timerb` int DEFAULT NULL,
  `qualifyfreq` int DEFAULT NULL,
  `constantssrc` enum('yes','no') DEFAULT NULL,
  `contactpermit` varchar(95) DEFAULT NULL,
  `contactdeny` varchar(95) DEFAULT NULL,
  `usereqphone` enum('yes','no') DEFAULT NULL,
  `textsupport` enum('yes','no') DEFAULT NULL,
  `faxdetect` enum('yes','no') DEFAULT NULL,
  `buggymwi` enum('yes','no') DEFAULT NULL,
  `auth` varchar(40) DEFAULT NULL,
  `fullname` varchar(40) DEFAULT NULL,
  `trunkname` varchar(40) DEFAULT NULL,
  `cid_number` varchar(40) DEFAULT NULL,
  `callingpres` enum('allowed_not_screened','allowed_passed_screen','allowed_failed_screen','allowed','prohib_not_screened','prohib_passed_screen','prohib_failed_screen','prohib') DEFAULT NULL,
  `mohinterpret` varchar(40) DEFAULT NULL,
  `mohsuggest` varchar(40) DEFAULT NULL,
  `parkinglot` varchar(40) DEFAULT NULL,
  `hasvoicemail` enum('yes','no') DEFAULT NULL,
  `subscribemwi` enum('yes','no') DEFAULT NULL,
  `vmexten` varchar(40) DEFAULT NULL,
  `autoframing` enum('yes','no') DEFAULT NULL,
  `rtpkeepalive` int DEFAULT NULL,
  `call-limit` int DEFAULT NULL,
  `g726nonstandard` enum('yes','no') DEFAULT NULL,
  `ignoresdpversion` enum('yes','no') DEFAULT NULL,
  `allowtransfer` enum('yes','no') DEFAULT NULL,
  `dynamic` enum('yes','no') DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `supportpath` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `sippeers_name` (`name`),
  KEY `sippeers_name_host` (`name`,`host`),
  KEY `sippeers_ipaddr_port` (`ipaddr`,`port`),
  KEY `sippeers_host_port` (`host`,`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sippeers`
--

LOCK TABLES `sippeers` WRITE;
/*!40000 ALTER TABLE `sippeers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sippeers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voicemail`
--

DROP TABLE IF EXISTS `voicemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voicemail` (
  `uniqueid` int NOT NULL AUTO_INCREMENT,
  `context` varchar(80) NOT NULL,
  `mailbox` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `fullname` varchar(80) DEFAULT NULL,
  `alias` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `pager` varchar(80) DEFAULT NULL,
  `attach` enum('yes','no') DEFAULT NULL,
  `attachfmt` varchar(10) DEFAULT NULL,
  `serveremail` varchar(80) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `tz` varchar(30) DEFAULT NULL,
  `deletevoicemail` enum('yes','no') DEFAULT NULL,
  `saycid` enum('yes','no') DEFAULT NULL,
  `sendvoicemail` enum('yes','no') DEFAULT NULL,
  `review` enum('yes','no') DEFAULT NULL,
  `tempgreetwarn` enum('yes','no') DEFAULT NULL,
  `operator` enum('yes','no') DEFAULT NULL,
  `envelope` enum('yes','no') DEFAULT NULL,
  `sayduration` int DEFAULT NULL,
  `forcename` enum('yes','no') DEFAULT NULL,
  `forcegreetings` enum('yes','no') DEFAULT NULL,
  `callback` varchar(80) DEFAULT NULL,
  `dialout` varchar(80) DEFAULT NULL,
  `exitcontext` varchar(80) DEFAULT NULL,
  `maxmsg` int DEFAULT NULL,
  `volgain` decimal(5,2) DEFAULT NULL,
  `imapuser` varchar(80) DEFAULT NULL,
  `imappassword` varchar(80) DEFAULT NULL,
  `imapserver` varchar(80) DEFAULT NULL,
  `imapport` varchar(8) DEFAULT NULL,
  `imapflags` varchar(80) DEFAULT NULL,
  `stamp` datetime DEFAULT NULL,
  PRIMARY KEY (`uniqueid`),
  KEY `voicemail_mailbox` (`mailbox`),
  KEY `voicemail_context` (`context`),
  KEY `voicemail_mailbox_context` (`mailbox`,`context`),
  KEY `voicemail_imapuser` (`imapuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voicemail`
--

LOCK TABLES `voicemail` WRITE;
/*!40000 ALTER TABLE `voicemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `voicemail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-19 23:53:26
