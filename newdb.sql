-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: DBMS
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add order',8,'add_order'),(30,'Can change order',8,'change_order'),(31,'Can delete order',8,'delete_order'),(32,'Can view order',8,'view_order'),(33,'Can add staff',9,'add_staff'),(34,'Can change staff',9,'change_staff'),(35,'Can delete staff',9,'delete_staff'),(36,'Can view staff',9,'view_staff'),(37,'Can add table',10,'add_table'),(38,'Can change table',10,'change_table'),(39,'Can delete table',10,'delete_table'),(40,'Can view table',10,'view_table'),(41,'Can add reservation',11,'add_reservation'),(42,'Can change reservation',11,'change_reservation'),(43,'Can delete reservation',11,'delete_reservation'),(44,'Can view reservation',11,'view_reservation'),(45,'Can add foods',12,'add_foods'),(46,'Can change foods',12,'change_foods'),(47,'Can delete foods',12,'delete_foods'),(48,'Can view foods',12,'view_foods'),(49,'Can add food_ order',13,'add_food_order'),(50,'Can change food_ order',13,'change_food_order'),(51,'Can delete food_ order',13,'delete_food_order'),(52,'Can view food_ order',13,'view_food_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$rItzIrb359CU2wFicxBKQz$ZXRZL0+HAydbvmt7hu8+I0smjrDCsNE6YQpnX7s8xBY=','2021-11-18 14:38:29.929380',1,'admin','','','admin@admin.com',1,1,'2021-11-18 14:36:38.674484');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-18 14:41:43.776855','1','Order object (1)',1,'[{\"added\": {}}]',8,1),(2,'2021-11-18 15:18:10.802446','1','Category object (1)',1,'[{\"added\": {}}]',7,1),(3,'2021-11-18 15:18:18.681612','1','Foods object (1)',1,'[{\"added\": {}}]',12,1),(4,'2021-11-18 15:18:53.959420','1','Foods object (1)',3,'',12,1),(5,'2021-11-18 15:19:14.591103','2','Category object (2)',1,'[{\"added\": {}}]',7,1),(6,'2021-11-18 15:21:12.131419','1','Category object (1)',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(7,'2021-11-18 15:30:06.324003','2','Foods object (2)',1,'[{\"added\": {}}]',12,1),(8,'2021-11-18 15:31:12.693097','3','Foods object (3)',1,'[{\"added\": {}}]',12,1),(9,'2021-11-18 15:31:44.208657','4','Foods object (4)',1,'[{\"added\": {}}]',12,1),(10,'2021-11-18 15:32:13.667037','5','Foods object (5)',1,'[{\"added\": {}}]',12,1),(11,'2021-11-18 15:32:57.585115','6','Foods object (6)',1,'[{\"added\": {}}]',12,1),(12,'2021-11-18 15:33:38.261153','7','Foods object (7)',1,'[{\"added\": {}}]',12,1),(13,'2021-11-18 15:34:08.072981','8','Foods object (8)',1,'[{\"added\": {}}]',12,1),(14,'2021-11-18 15:34:40.226867','9','Foods object (9)',1,'[{\"added\": {}}]',12,1),(15,'2021-11-18 15:35:20.810740','10','Foods object (10)',1,'[{\"added\": {}}]',12,1),(16,'2021-11-18 15:35:49.252383','11','Foods object (11)',1,'[{\"added\": {}}]',12,1),(17,'2021-11-18 15:36:18.444017','12','Foods object (12)',1,'[{\"added\": {}}]',12,1),(18,'2021-11-18 15:36:46.771319','13','Foods object (13)',1,'[{\"added\": {}}]',12,1),(19,'2021-11-18 15:37:23.270339','14','Foods object (14)',1,'[{\"added\": {}}]',12,1),(20,'2021-11-18 15:37:55.321558','15','Foods object (15)',1,'[{\"added\": {}}]',12,1),(21,'2021-11-18 15:39:08.040864','16','Foods object (16)',1,'[{\"added\": {}}]',12,1),(22,'2021-11-18 15:39:39.382857','17','Foods object (17)',1,'[{\"added\": {}}]',12,1),(23,'2021-11-18 15:40:12.211017','18','Foods object (18)',1,'[{\"added\": {}}]',12,1),(24,'2021-11-18 15:40:47.400867','19','Foods object (19)',1,'[{\"added\": {}}]',12,1),(25,'2021-11-18 15:41:26.131102','20','Foods object (20)',1,'[{\"added\": {}}]',12,1),(26,'2021-11-18 15:41:57.193587','21','Foods object (21)',1,'[{\"added\": {}}]',12,1),(27,'2021-11-18 15:42:25.961595','22','Foods object (22)',1,'[{\"added\": {}}]',12,1),(28,'2021-11-18 15:45:45.840351','23','Foods object (23)',1,'[{\"added\": {}}]',12,1),(29,'2021-11-18 15:46:38.018219','24','Foods object (24)',1,'[{\"added\": {}}]',12,1),(30,'2021-11-18 15:47:26.088684','25','Foods object (25)',1,'[{\"added\": {}}]',12,1),(31,'2021-11-18 15:48:33.728739','26','Foods object (26)',1,'[{\"added\": {}}]',12,1),(32,'2021-11-18 15:49:07.120025','27','Foods object (27)',1,'[{\"added\": {}}]',12,1),(33,'2021-11-18 15:49:49.832960','28','Foods object (28)',1,'[{\"added\": {}}]',12,1),(34,'2021-11-18 15:50:20.911739','29','Foods object (29)',1,'[{\"added\": {}}]',12,1),(35,'2021-11-18 15:50:52.381305','30','Foods object (30)',1,'[{\"added\": {}}]',12,1),(36,'2021-11-18 15:51:44.872867','31','Foods object (31)',1,'[{\"added\": {}}]',12,1),(37,'2021-11-18 15:53:27.673284','32','Foods object (32)',1,'[{\"added\": {}}]',12,1),(38,'2021-11-18 15:54:00.377631','33','Foods object (33)',1,'[{\"added\": {}}]',12,1),(39,'2021-11-18 16:02:25.368110','2','Order object (2)',1,'[{\"added\": {}}]',8,1),(40,'2021-11-18 16:02:40.246472','1','Order object (1)',3,'',8,1),(41,'2021-11-18 16:03:27.528158','3','Order object (3)',1,'[{\"added\": {}}]',8,1),(42,'2021-11-18 16:04:57.328010','4','Order object (4)',1,'[{\"added\": {}}]',8,1),(43,'2021-11-18 16:05:38.857362','5','Order object (5)',1,'[{\"added\": {}}]',8,1),(44,'2021-11-18 16:06:47.839393','6','Order object (6)',1,'[{\"added\": {}}]',8,1),(45,'2021-11-18 16:08:06.281360','7','Order object (7)',1,'[{\"added\": {}}]',8,1),(46,'2021-11-18 16:09:11.291532','8','Order object (8)',1,'[{\"added\": {}}]',8,1),(47,'2021-11-18 16:10:03.737274','9','Order object (9)',1,'[{\"added\": {}}]',8,1),(48,'2021-11-18 16:11:17.008411','10','Order object (10)',1,'[{\"added\": {}}]',8,1),(49,'2021-11-18 16:11:58.760432','11','Order object (11)',1,'[{\"added\": {}}]',8,1),(50,'2021-11-18 16:23:15.027326','1','Food_Order object (1)',1,'[{\"added\": {}}]',13,1),(51,'2021-11-18 16:23:28.543513','2','Food_Order object (2)',1,'[{\"added\": {}}]',13,1),(52,'2021-11-18 16:23:41.182500','3','Food_Order object (3)',1,'[{\"added\": {}}]',13,1),(53,'2021-11-18 16:23:51.582540','4','Food_Order object (4)',1,'[{\"added\": {}}]',13,1),(54,'2021-11-18 16:24:01.731063','5','Food_Order object (5)',1,'[{\"added\": {}}]',13,1),(55,'2021-11-18 16:24:13.862198','6','Food_Order object (6)',1,'[{\"added\": {}}]',13,1),(56,'2021-11-18 16:24:26.384107','7','Food_Order object (7)',1,'[{\"added\": {}}]',13,1),(57,'2021-11-18 16:24:42.724200','8','Food_Order object (8)',1,'[{\"added\": {}}]',13,1),(58,'2021-11-18 16:24:52.000965','9','Food_Order object (9)',1,'[{\"added\": {}}]',13,1),(59,'2021-11-18 16:25:01.708537','10','Food_Order object (10)',1,'[{\"added\": {}}]',13,1),(60,'2021-11-18 16:25:14.150057','11','Food_Order object (11)',1,'[{\"added\": {}}]',13,1),(61,'2021-11-18 16:25:21.830293','12','Food_Order object (12)',1,'[{\"added\": {}}]',13,1),(62,'2021-11-18 16:25:34.198896','13','Food_Order object (13)',1,'[{\"added\": {}}]',13,1),(63,'2021-11-18 16:25:46.905171','14','Food_Order object (14)',1,'[{\"added\": {}}]',13,1),(64,'2021-11-18 16:26:06.308580','15','Food_Order object (15)',1,'[{\"added\": {}}]',13,1),(65,'2021-11-18 16:26:15.795097','16','Food_Order object (16)',1,'[{\"added\": {}}]',13,1),(66,'2021-11-18 16:26:26.767020','17','Food_Order object (17)',1,'[{\"added\": {}}]',13,1),(67,'2021-11-18 16:26:47.170951','18','Food_Order object (18)',1,'[{\"added\": {}}]',13,1),(68,'2021-11-18 16:26:56.991571','19','Food_Order object (19)',1,'[{\"added\": {}}]',13,1),(69,'2021-11-18 16:27:06.526552','20','Food_Order object (20)',1,'[{\"added\": {}}]',13,1),(70,'2021-11-18 16:27:19.933591','21','Food_Order object (21)',1,'[{\"added\": {}}]',13,1),(71,'2021-11-18 16:27:27.443978','22','Food_Order object (22)',1,'[{\"added\": {}}]',13,1),(72,'2021-11-18 16:27:34.910534','23','Food_Order object (23)',1,'[{\"added\": {}}]',13,1),(73,'2021-11-18 16:27:44.650796','24','Food_Order object (24)',1,'[{\"added\": {}}]',13,1),(74,'2021-11-18 16:27:53.140377','25','Food_Order object (25)',1,'[{\"added\": {}}]',13,1),(75,'2021-11-18 16:28:03.466876','26','Food_Order object (26)',1,'[{\"added\": {}}]',13,1),(76,'2021-11-18 16:28:16.390586','27','Food_Order object (27)',1,'[{\"added\": {}}]',13,1),(77,'2021-11-18 16:28:27.139678','28','Food_Order object (28)',1,'[{\"added\": {}}]',13,1),(78,'2021-11-18 16:28:35.931463','29','Food_Order object (29)',1,'[{\"added\": {}}]',13,1),(79,'2021-11-18 16:28:45.733400','30','Food_Order object (30)',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'todo','category'),(13,'todo','food_order'),(12,'todo','foods'),(8,'todo','order'),(11,'todo','reservation'),(9,'todo','staff'),(10,'todo','table');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-18 14:30:45.216597'),(2,'auth','0001_initial','2021-11-18 14:30:45.631687'),(3,'admin','0001_initial','2021-11-18 14:30:45.755716'),(4,'admin','0002_logentry_remove_auto_add','2021-11-18 14:30:45.770718'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-18 14:30:45.779721'),(6,'contenttypes','0002_remove_content_type_name','2021-11-18 14:30:45.830730'),(7,'auth','0002_alter_permission_name_max_length','2021-11-18 14:30:45.869738'),(8,'auth','0003_alter_user_email_max_length','2021-11-18 14:30:45.892747'),(9,'auth','0004_alter_user_username_opts','2021-11-18 14:30:45.900746'),(10,'auth','0005_alter_user_last_login_null','2021-11-18 14:30:45.940756'),(11,'auth','0006_require_contenttypes_0002','2021-11-18 14:30:45.945759'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-18 14:30:45.953759'),(13,'auth','0008_alter_user_username_max_length','2021-11-18 14:30:45.973763'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-18 14:30:45.993766'),(15,'auth','0010_alter_group_name_max_length','2021-11-18 14:30:46.016773'),(16,'auth','0011_update_proxy_permissions','2021-11-18 14:30:46.025777'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-18 14:30:46.050781'),(18,'sessions','0001_initial','2021-11-18 14:30:46.088790'),(19,'todo','0001_initial','2021-11-18 14:30:46.404860');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fhifdmlnfmwzdyl11wocatpjbz2clctf','.eJxVjEEOwiAQRe_C2hBgpDAu3fcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIitDj9bkzxkesO0p3qrcnY6rrMLHdFHrTLsaX8vB7u30GhXr71YMGDUgomAEbjSaNx2SjWDNE7nLT1Fo1SDofkPVnGZKI5O3YUbQTx_gCeFDaF:1mniYX:kx88XqlFXQBYMoXhT_bwkj6FOrHUQLtV5FOEsj3O-J0','2021-12-02 14:38:29.932381');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_category`
--

DROP TABLE IF EXISTS `todo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_category`
--

LOCK TABLES `todo_category` WRITE;
/*!40000 ALTER TABLE `todo_category` DISABLE KEYS */;
INSERT INTO `todo_category` VALUES (1,'món chính'),(2,'món ăn vặt'),(3,'nước ép'),(4,'trà sữa'),(5,'trà'),(6,'chè');
/*!40000 ALTER TABLE `todo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_food_order`
--

DROP TABLE IF EXISTS `todo_food_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_food_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `food_id_id` int NOT NULL,
  `order_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo_food_order_food_id_id_d3a00f2d_fk_todo_foods_id` (`food_id_id`),
  KEY `todo_food_order_order_id_id_227ad983_fk_todo_order_id` (`order_id_id`),
  CONSTRAINT `todo_food_order_food_id_id_d3a00f2d_fk_todo_foods_id` FOREIGN KEY (`food_id_id`) REFERENCES `todo_foods` (`id`),
  CONSTRAINT `todo_food_order_order_id_id_227ad983_fk_todo_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `todo_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_food_order`
--

LOCK TABLES `todo_food_order` WRITE;
/*!40000 ALTER TABLE `todo_food_order` DISABLE KEYS */;
INSERT INTO `todo_food_order` VALUES (1,2,6,2),(2,1,25,2),(3,1,28,2),(4,4,19,3),(5,5,4,3),(6,4,12,3),(7,2,32,3),(8,2,15,4),(9,3,16,4),(10,3,18,4),(11,2,20,4),(12,1,9,4),(13,1,4,5),(14,1,27,5),(15,6,24,6),(16,4,12,6),(17,4,30,6),(18,5,10,7),(19,5,20,7),(20,1,30,7),(21,1,25,8),(22,4,19,9),(23,4,12,9),(24,4,32,9),(25,5,4,10),(26,5,27,10),(27,10,5,11),(28,10,13,11),(29,10,7,11),(30,10,26,11);
/*!40000 ALTER TABLE `todo_food_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_foods`
--

DROP TABLE IF EXISTS `todo_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_foods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `info` longtext,
  `qty_day` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` bigint NOT NULL,
  `cost` bigint NOT NULL,
  `category_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo_foods_category_id_id_4fdd5367_fk_todo_category_id` (`category_id_id`),
  CONSTRAINT `todo_foods_category_id_id_4fdd5367_fk_todo_category_id` FOREIGN KEY (`category_id_id`) REFERENCES `todo_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_foods`
--

LOCK TABLES `todo_foods` WRITE;
/*!40000 ALTER TABLE `todo_foods` DISABLE KEYS */;
INSERT INTO `todo_foods` VALUES (2,'Bánh tráng cuộn','Đây là thông tin món bánh tráng cuộn',10,'banh_trang_cuon.png',20000,15000,2),(3,'Bánh tráng nướng','info bánh tráng nướng',10,'banh_trang_nuong.png',25000,22000,2),(4,'Bánh tráng trộn','info bánh tráng trộn',10,'banh_trang_tron.png',30000,25000,2),(5,'Bắp xào','info bắp xào',12,'bap_xao.png',15000,13000,2),(6,'Chân gà xả tắc','info chân gà xả tắc',30,'chan_ga_xa_tac.png',25000,21000,2),(7,'Chuối chiên','info chuối chiên',50,'chuoi_chien.png',10000,7000,2),(8,'Gỏi cuốn','info gỏi cuốn',40,'goi_cuon.png',15000,11000,2),(9,'Hột vịt lộn','info hột vịt lộn',100,'hot_vit_lon.png',10000,8000,2),(10,'Bánh bèo','info bánh bèo',50,'banh_beo.png',20000,14000,2),(11,'Bánh canh cua','info bánh canh cua',35,'banh_canh_cua.png',20000,18000,1),(12,'Bánh cuốn','info bánh cuốn',45,'banh_cuon.png',25000,20000,1),(13,'Bánh đa','info bánh đa',30,'banh_da.png',10000,7000,1),(14,'Bánh đúc','info bánh đúc',50,'banh_duc.png',15000,12000,1),(15,'Bánh hỏi','info bánh hỏi',20,'banh_hoi.png',20000,18000,1),(16,'Bánh tằm','info bánh tằm',30,'banh_tam.png',20000,15000,1),(17,'Bánh xèo','info bánh xèo',25,'banh_xeo.png',15000,11000,1),(18,'Bún bò','info bún bò',50,'bun_bo.png',40000,30000,1),(19,'Bún chả Hà Nội','info bún chả Hà Nội',35,'bun_cha_ha_noi.png',50000,45000,1),(20,'Bún đậu mắm tôm','info bún đậu mắm tôm',45,'bun_dau_mam_tom.png',35000,31000,1),(21,'Bún mắm','info bún mắm',20,'bun_mam.png',30000,23000,1),(22,'Bún mộc','info bún mộc',15,'bun_moc.png',20000,16000,1),(23,'Bún ốc','info bún ốc',30,'bun_oc.png',30000,24000,1),(24,'Bún riêu','info bún riêu',35,'bun_rieu.png',25000,22000,1),(25,'Bún thịt nướng','info bún thịt nướng',23,'bun_thit_nuong.png',30000,25000,1),(26,'Chè thái','info chè thái',30,'che_thai.png',15000,11000,6),(27,'Dừa dằm','info dừa dằm',20000,'dua_dam.png',20000,14000,6),(28,'Milo dằm','info milo dằm',60,'milo_dam.png',20000,14000,6),(29,'Nước ép cam','info nước ép cam',40,'nuoc_ep_cam.png',15000,10000,3),(30,'Sữa tươi trân châu','info sữa tươi chân châu',30,'sua_tuoi_tran_chau_duong_den.png',30000,20000,4),(31,'Trà đào','info trà đào',30,'tra_dao.png',15000,10000,5),(32,'Trà sữa trân châu','info trà sữa trân châu',50,'tra_sua_tran_chau.png',25000,19000,4);
/*!40000 ALTER TABLE `todo_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_order`
--

DROP TABLE IF EXISTS `todo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) NOT NULL,
  `c_tele` varchar(10) NOT NULL,
  `c_email` varchar(254) NOT NULL,
  `formality` varchar(1) NOT NULL,
  `c_address` varchar(200) DEFAULT NULL,
  `total` bigint NOT NULL,
  `time` datetime(6) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_order`
--

LOCK TABLES `todo_order` WRITE;
/*!40000 ALTER TABLE `todo_order` DISABLE KEYS */;
INSERT INTO `todo_order` VALUES (2,'Bạch Phương Lan','0913115688','dieudan101@yahoo.com','E','D15/12C Võ Văn Vân, ấp 4, xã Vĩnh Lộc B, Bình Chánh, TPHCM',100000,'2021-11-18 16:02:25.366109','F'),(3,'Bùi Anh Dũng','0988386777','dungtoandung@gmail.com','T','12AB Khách sạn Dầu khí Thanh Đa, P27, Q Bình Thạnh TP HCM',500000,'2021-11-18 16:03:27.527157','F'),(4,'Bùi Hữu Chương','0983425681','chuong.bh@gmail.com','T','Công ty Công nghệ Tin học ISA - Chi nhánh TPHCM',300000,'2021-11-18 16:04:57.326577','D'),(5,'Bùi Mai Hữu Hà','0903945455','inkducquan@yahoo.com','T','Cty CP SX-TM-DV Đức Quân',50000,'2021-11-18 16:05:38.856362','C'),(6,'Bùi Quang Tùng','0909155218','tung.buiquang@bpro.com.vn','T','13/13 LẠC LONG QUÂN, P 9 , Q TÂN BÌNH',350000,'2021-11-18 16:06:47.837380','D'),(7,'Cổ Thị Minh Hảo','0908391542','co-thi-minh.hao@vietnamstar-auto.com','T','2 Trường Chinh, P. Tây Thạnh, Q. Tân Phú',300000,'2021-11-18 16:08:06.279359','F'),(8,'Đặng Văn Nhiên','0988200377','nhiendv@viettel.com.vn','E','H158/2A Hoàng Hoa Thám-P12-Q.Tân Bình-HCM',30000,'2021-11-18 16:09:11.289531','F'),(9,'Dương Minh Hùng','0903043146','hungdm63@yahoo.com.vn','T','2A Nguyễn Thị Minh Khai - P.Đa Kao - Quận 1 - Tp.HCM',400000,'2021-11-18 16:10:03.735270','F'),(10,'Lê Duy Bình','0903747911','bamboojnj@gmail.com','T','181 Điện Biên Phủ, Q1, TPHCM',250000,'2021-11-18 16:11:17.007409','F'),(11,'Trần Khánh Tân','0938991660','trankhanhtan@gmail.com','T','491/51 Nguyễn Đình Chiểu, p2, q3, tpHCM',500000,'2021-11-18 16:11:58.759432','F');
/*!40000 ALTER TABLE `todo_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_reservation`
--

DROP TABLE IF EXISTS `todo_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rtime` datetime(6) NOT NULL,
  `no_customer` int NOT NULL,
  `interval` int NOT NULL,
  `staff_name_id` int DEFAULT NULL,
  `table_id_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo_reservation_staff_name_id_275b539e_fk_todo_staff_id` (`staff_name_id`),
  KEY `todo_reservation_table_id_id_3de7a22e_fk_todo_table_id` (`table_id_id`),
  CONSTRAINT `todo_reservation_staff_name_id_275b539e_fk_todo_staff_id` FOREIGN KEY (`staff_name_id`) REFERENCES `todo_staff` (`id`),
  CONSTRAINT `todo_reservation_table_id_id_3de7a22e_fk_todo_table_id` FOREIGN KEY (`table_id_id`) REFERENCES `todo_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_reservation`
--

LOCK TABLES `todo_reservation` WRITE;
/*!40000 ALTER TABLE `todo_reservation` DISABLE KEYS */;
INSERT INTO `todo_reservation` VALUES (12,'2022-12-12 12:12:00.000000',3,3,NULL,1,'qweqwe'),(13,'2022-12-12 12:12:00.000000',3,3,NULL,1,'qweqwe'),(14,'2022-12-12 12:12:00.000000',3,3,NULL,1,'qweqwe'),(15,'2022-12-12 12:12:00.000000',3,3,NULL,1,'qweqwe'),(16,'2022-12-12 12:12:00.000000',3,3,NULL,1,'qweqwe'),(17,'2022-12-12 12:12:00.000000',3,2,NULL,3,'asdsad'),(18,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(19,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(20,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(21,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(22,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(23,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(24,'2022-12-12 12:12:00.000000',4,3,NULL,3,'1212'),(25,'2022-12-12 12:12:00.000000',4,2,NULL,1,'skxjfhsjsa');
/*!40000 ALTER TABLE `todo_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_staff`
--

DROP TABLE IF EXISTS `todo_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `staff_type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_staff`
--

LOCK TABLES `todo_staff` WRITE;
/*!40000 ALTER TABLE `todo_staff` DISABLE KEYS */;
INSERT INTO `todo_staff` VALUES (1,'minh','abc@123','123456','','M'),(2,'chu','chu@123','12321','','S');
/*!40000 ALTER TABLE `todo_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_table`
--

DROP TABLE IF EXISTS `todo_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_table`
--

LOCK TABLES `todo_table` WRITE;
/*!40000 ALTER TABLE `todo_table` DISABLE KEYS */;
INSERT INTO `todo_table` VALUES (1,'1'),(2,'1'),(3,'0');
/*!40000 ALTER TABLE `todo_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 20:23:23
