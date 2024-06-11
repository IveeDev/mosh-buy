-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: storefront3
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add session',2,'add_session'),(6,'Can change session',2,'change_session'),(7,'Can delete session',2,'delete_session'),(8,'Can view session',2,'view_session'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add cart',6,'add_cart'),(22,'Can change cart',6,'change_cart'),(23,'Can delete cart',6,'delete_cart'),(24,'Can view cart',6,'view_cart'),(25,'Can add collection',7,'add_collection'),(26,'Can change collection',7,'change_collection'),(27,'Can delete collection',7,'delete_collection'),(28,'Can view collection',7,'view_collection'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can view history',8,'view_history'),(34,'Can add order',9,'add_order'),(35,'Can change order',9,'change_order'),(36,'Can delete order',9,'delete_order'),(37,'Can view order',9,'view_order'),(38,'Can cancel order',9,'cancel_order'),(39,'Can add promotion',10,'add_promotion'),(40,'Can change promotion',10,'change_promotion'),(41,'Can delete promotion',10,'delete_promotion'),(42,'Can view promotion',10,'view_promotion'),(43,'Can add product',11,'add_product'),(44,'Can change product',11,'change_product'),(45,'Can delete product',11,'delete_product'),(46,'Can view product',11,'view_product'),(47,'Can add order item',12,'add_orderitem'),(48,'Can change order item',12,'change_orderitem'),(49,'Can delete order item',12,'delete_orderitem'),(50,'Can view order item',12,'view_orderitem'),(51,'Can add cart item',13,'add_cartitem'),(52,'Can change cart item',13,'change_cartitem'),(53,'Can delete cart item',13,'delete_cartitem'),(54,'Can view cart item',13,'view_cartitem'),(55,'Can add address',14,'add_address'),(56,'Can change address',14,'change_address'),(57,'Can delete address',14,'delete_address'),(58,'Can view address',14,'view_address'),(59,'Can add review',15,'add_review'),(60,'Can change review',15,'change_review'),(61,'Can delete review',15,'delete_review'),(62,'Can view review',15,'view_review'),(63,'Can add product image',16,'add_productimage'),(64,'Can change product image',16,'change_productimage'),(65,'Can delete product image',16,'delete_productimage'),(66,'Can view product image',16,'view_productimage'),(67,'Can add tag',17,'add_tag'),(68,'Can change tag',17,'change_tag'),(69,'Can delete tag',17,'delete_tag'),(70,'Can view tag',17,'view_tag'),(71,'Can add tagged item',18,'add_taggeditem'),(72,'Can change tagged item',18,'change_taggeditem'),(73,'Can delete tagged item',18,'delete_taggeditem'),(74,'Can view tagged item',18,'view_taggeditem'),(75,'Can add liked item',19,'add_likeditem'),(76,'Can change liked item',19,'change_likeditem'),(77,'Can delete liked item',19,'delete_likeditem'),(78,'Can view liked item',19,'view_likeditem'),(79,'Can add user',20,'add_user'),(80,'Can change user',20,'change_user'),(81,'Can delete user',20,'delete_user'),(82,'Can view user',20,'view_user'),(83,'Can add profile',21,'add_profile'),(84,'Can change profile',21,'change_profile'),(85,'Can delete profile',21,'delete_profile'),(86,'Can view profile',21,'view_profile'),(87,'Can add request',22,'add_request'),(88,'Can change request',22,'change_request'),(89,'Can delete request',22,'delete_request'),(90,'Can view request',22,'view_request'),(91,'Can add response',23,'add_response'),(92,'Can change response',23,'change_response'),(93,'Can delete response',23,'delete_response'),(94,'Can view response',23,'view_response'),(95,'Can add sql query',24,'add_sqlquery'),(96,'Can change sql query',24,'change_sqlquery'),(97,'Can delete sql query',24,'delete_sqlquery'),(98,'Can view sql query',24,'view_sqlquery');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,'pbkdf2_sha256$720000$hJerpgQtwDnpqwbcqWtSiF$vXRKRgLPd6sGW23XwJozbYfdXefXiWaTPSWP6D2ikRk=','2024-06-01 21:34:06.657102',1,'admin','','',1,1,'2024-06-01 21:32:59.181049','admin@email.com'),(2,'pbkdf2_sha256$720000$t5XHZQH6YQLTnFl1dAdj81$hDHBKx65sK8xBQIs4ZRZDWaMzauqGzv50F/0Xj6EPxc=',NULL,0,'john.smith','John','Smith',1,1,'2024-06-01 21:46:37.000000','john.smith@email.com');
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_groups`
--

DROP TABLE IF EXISTS `core_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`),
  CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_groups`
--

LOCK TABLES `core_user_groups` WRITE;
/*!40000 ALTER TABLE `core_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_user_permissions`
--

DROP TABLE IF EXISTS `core_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`),
  CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_user_permissions`
--

LOCK TABLES `core_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `core_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_user_permissions` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-01 21:46:39.202267','2','john.smith',1,'[{\"added\": {}}]',20,1),(2,'2024-06-01 21:46:57.986424','2','john.smith',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'contenttypes','contenttype'),(20,'core','user'),(19,'likes','likeditem'),(2,'sessions','session'),(21,'silk','profile'),(22,'silk','request'),(23,'silk','response'),(24,'silk','sqlquery'),(14,'store','address'),(6,'store','cart'),(13,'store','cartitem'),(7,'store','collection'),(8,'store','customer'),(9,'store','order'),(12,'store','orderitem'),(11,'store','product'),(16,'store','productimage'),(10,'store','promotion'),(15,'store','review'),(17,'tags','tag'),(18,'tags','taggeditem');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-31 21:30:38.739819'),(2,'contenttypes','0002_remove_content_type_name','2024-05-31 21:30:45.380205'),(3,'auth','0001_initial','2024-05-31 21:31:17.994742'),(4,'auth','0002_alter_permission_name_max_length','2024-05-31 21:31:24.995048'),(5,'auth','0003_alter_user_email_max_length','2024-05-31 21:31:25.298769'),(6,'auth','0004_alter_user_username_opts','2024-05-31 21:31:25.736177'),(7,'auth','0005_alter_user_last_login_null','2024-05-31 21:31:26.024180'),(8,'auth','0006_require_contenttypes_0002','2024-05-31 21:31:26.637468'),(9,'auth','0007_alter_validators_add_error_messages','2024-05-31 21:31:26.921916'),(10,'auth','0008_alter_user_username_max_length','2024-05-31 21:31:27.910632'),(11,'auth','0009_alter_user_last_name_max_length','2024-05-31 21:31:28.579921'),(12,'auth','0010_alter_group_name_max_length','2024-05-31 21:31:29.805600'),(13,'auth','0011_update_proxy_permissions','2024-05-31 21:31:30.245715'),(14,'auth','0012_alter_user_first_name_max_length','2024-05-31 21:31:30.610352'),(15,'core','0001_initial','2024-05-31 21:32:05.562595'),(16,'admin','0001_initial','2024-05-31 21:32:22.764685'),(17,'admin','0002_logentry_remove_auto_add','2024-05-31 21:32:23.183109'),(18,'admin','0003_logentry_add_action_flag_choices','2024-05-31 21:32:23.650399'),(19,'likes','0001_initial','2024-05-31 21:32:38.752368'),(20,'sessions','0001_initial','2024-05-31 21:32:44.629643'),(21,'store','0001_initial','2024-05-31 21:34:18.188788'),(22,'store','0002_rename_price_to_unit_price','2024-05-31 21:34:20.530879'),(23,'store','0003_add_slug_to_product','2024-05-31 21:34:25.910823'),(24,'store','0004_auto_20210610_1442','2024-05-31 21:34:26.309227'),(25,'store','0005_auto_20210625_1631','2024-05-31 21:34:33.394982'),(26,'store','0006_auto_20210903_1318','2024-05-31 21:34:42.678020'),(27,'store','0007_alter_cart_id','2024-05-31 21:35:07.423741'),(28,'store','0008_auto_20210907_1345','2024-05-31 21:35:10.188911'),(29,'store','0009_alter_cartitem_quantity','2024-05-31 21:35:10.526111'),(30,'store','0010_auto_20210913_1914','2024-05-31 21:35:31.001533'),(31,'store','0011_alter_order_options','2024-05-31 21:35:31.509194'),(32,'store','0012_alter_customer_options','2024-05-31 21:35:31.932801'),(33,'store','0013_alter_orderitem_order','2024-05-31 21:35:32.448827'),(34,'store','0014_productimage','2024-05-31 21:35:46.374881'),(35,'store','0015_alter_productimage_image','2024-05-31 21:35:46.969948'),(36,'tags','0001_initial','2024-05-31 21:36:31.763787'),(37,'silk','0001_initial','2024-06-08 07:50:09.479492'),(38,'silk','0002_auto_update_uuid4_id_field','2024-06-08 07:50:10.921643'),(39,'silk','0003_request_prof_file','2024-06-08 07:50:14.153222'),(40,'silk','0004_request_prof_file_storage','2024-06-08 07:50:14.660172'),(41,'silk','0005_increase_request_prof_file_length','2024-06-08 07:50:16.757456'),(42,'silk','0006_fix_request_prof_file_blank','2024-06-08 07:50:26.667907'),(43,'silk','0007_sqlquery_identifier','2024-06-08 07:50:30.279514'),(44,'silk','0008_sqlquery_analysis','2024-06-08 07:50:32.709630');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('aihhkqqlx13p4gugot5cwkl58cznp9d6','.eJw9jEEKgDAMBP-yZ0-Cl17VF_iAgBgxUC0mrSLFv5uTp51hYCuUz8KWaZWYWQ2h4hK-yfITGQGabjSwzSeg7ZyTLqw0P-5H2cnOSH6hwvbHRdTrME493vcDBjEisg:1sFrjP:RBtyeH3T34DhwKbPUMSkKzzn6CBJHPVD-ErdouGPcM4','2024-06-22 08:47:23.742497'),('nzcpnj2cb9ug4siip95i8yf7qovlcdrt','.eJxVjDsOwyAQRO9CHSHzWQwp0_sMiGUhOIlAMnYV5e6xJRdJM8W8N_NmPmxr8VtPi5-JXZlgl98OQ3ymegB6hHpvPLa6LjPyQ-En7XxqlF630_07KKGXfS1Jj9oiDdnSqCgmY2R2KIksSACnUTtwCfVgdDZSEpASJqs9RbYA7PMF3vk3Wg:1sDWMa:Pl837KDTq3whqeZakePqDLiBlkneQ7Axu0Z5xYMOOHA','2024-06-15 21:34:08.373258');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likeditem`
--

DROP TABLE IF EXISTS `likes_likeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likeditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likeditem_content_type_id_7ab8ca5f_fk_django_co` (`content_type_id`),
  KEY `likes_likeditem_user_id_0c3dca35_fk_core_user_id` (`user_id`),
  CONSTRAINT `likes_likeditem_content_type_id_7ab8ca5f_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likeditem_user_id_0c3dca35_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `likes_likeditem_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likeditem`
--

LOCK TABLES `likes_likeditem` WRITE;
/*!40000 ALTER TABLE `likes_likeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_likeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silk_profile`
--

DROP TABLE IF EXISTS `silk_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silk_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `file_path` varchar(300) NOT NULL,
  `line_num` int DEFAULT NULL,
  `end_line_num` int DEFAULT NULL,
  `func_name` varchar(300) NOT NULL,
  `exception_raised` tinyint(1) NOT NULL,
  `dynamic` tinyint(1) NOT NULL,
  `request_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `silk_profile_request_id_7b81bd69_fk_silk_request_id` (`request_id`),
  CONSTRAINT `silk_profile_request_id_7b81bd69_fk_silk_request_id` FOREIGN KEY (`request_id`) REFERENCES `silk_request` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silk_profile`
--

LOCK TABLES `silk_profile` WRITE;
/*!40000 ALTER TABLE `silk_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `silk_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silk_profile_queries`
--

DROP TABLE IF EXISTS `silk_profile_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silk_profile_queries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `sqlquery_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `silk_profile_queries_profile_id_sqlquery_id_b2403d9b_uniq` (`profile_id`,`sqlquery_id`),
  KEY `silk_profile_queries_sqlquery_id_155df455_fk_silk_sqlquery_id` (`sqlquery_id`),
  CONSTRAINT `silk_profile_queries_profile_id_a3d76db8_fk_silk_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `silk_profile` (`id`),
  CONSTRAINT `silk_profile_queries_sqlquery_id_155df455_fk_silk_sqlquery_id` FOREIGN KEY (`sqlquery_id`) REFERENCES `silk_sqlquery` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silk_profile_queries`
--

LOCK TABLES `silk_profile_queries` WRITE;
/*!40000 ALTER TABLE `silk_profile_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `silk_profile_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silk_request`
--

DROP TABLE IF EXISTS `silk_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silk_request` (
  `id` varchar(36) NOT NULL,
  `path` varchar(190) NOT NULL,
  `query_params` longtext NOT NULL,
  `raw_body` longtext NOT NULL,
  `body` longtext NOT NULL,
  `method` varchar(10) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `view_name` varchar(190) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `encoded_headers` longtext NOT NULL,
  `meta_time` double DEFAULT NULL,
  `meta_num_queries` int DEFAULT NULL,
  `meta_time_spent_queries` double DEFAULT NULL,
  `pyprofile` longtext NOT NULL,
  `num_sql_queries` int NOT NULL,
  `prof_file` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `silk_request_path_9f3d798e` (`path`),
  KEY `silk_request_start_time_1300bc58` (`start_time`),
  KEY `silk_request_view_name_68559f7b` (`view_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silk_request`
--

LOCK TABLES `silk_request` WRITE;
/*!40000 ALTER TABLE `silk_request` DISABLE KEYS */;
INSERT INTO `silk_request` VALUES ('008b6fd9-4dbb-47e0-8416-11ca9c226780','/store/products/','','','','GET','2024-06-08 08:53:52.706963','products-list','2024-06-08 08:53:55.274090',2567.127,'{\"content-length\": \"\", \"content-type\": \"text/plain\", \"host\": \"127.0.0.1:8000\", \"connection\": \"keep-alive\", \"cache-control\": \"max-age=0\", \"sec-ch-ua\": \"\\\"Google Chrome\\\";v=\\\"125\\\", \\\"Chromium\\\";v=\\\"125\\\", \\\"Not.A/Brand\\\";v=\\\"24\\\"\", \"sec-ch-ua-mobile\": \"?0\", \"sec-ch-ua-platform\": \"\\\"Windows\\\"\", \"upgrade-insecure-requests\": \"1\", \"user-agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\", \"accept\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\", \"sec-fetch-site\": \"same-origin\", \"sec-fetch-mode\": \"navigate\", \"sec-fetch-user\": \"?1\", \"sec-fetch-dest\": \"document\", \"referer\": \"http://127.0.0.1:8000/store/\", \"accept-encoding\": \"gzip, deflate, br, zstd\", \"accept-language\": \"en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7,fa;q=0.6\", \"cookie\": \"********************\"}',NULL,NULL,NULL,'',13,''),('417a0552-f1da-4958-8ef2-cce47834ef77','/store/products/','','','','GET','2024-06-08 08:56:52.961459','products-list','2024-06-08 08:56:56.180073',3218.614,'{\"content-length\": \"\", \"content-type\": \"text/plain\", \"host\": \"127.0.0.1:8000\", \"connection\": \"keep-alive\", \"cache-control\": \"max-age=0\", \"sec-ch-ua\": \"\\\"Google Chrome\\\";v=\\\"125\\\", \\\"Chromium\\\";v=\\\"125\\\", \\\"Not.A/Brand\\\";v=\\\"24\\\"\", \"sec-ch-ua-mobile\": \"?0\", \"sec-ch-ua-platform\": \"\\\"Windows\\\"\", \"upgrade-insecure-requests\": \"1\", \"user-agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\", \"accept\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\", \"sec-fetch-site\": \"same-origin\", \"sec-fetch-mode\": \"navigate\", \"sec-fetch-user\": \"?1\", \"sec-fetch-dest\": \"document\", \"referer\": \"http://127.0.0.1:8000/store/\", \"accept-encoding\": \"gzip, deflate, br, zstd\", \"accept-language\": \"en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7,fa;q=0.6\", \"cookie\": \"********************\"}',NULL,NULL,NULL,'',4,''),('a59e4f46-4bd7-4eb5-b7a3-1fc2dcc82ccd','/__debug__/render_panel/','{\"store_id\": \"35ab364588844cd992c8fdd3990afd80\", \"panel_id\": \"SQLPanel\"}','','','GET','2024-06-08 08:54:07.331783','djdt:render_panel','2024-06-08 08:54:17.810223',10478.44,'{\"content-length\": \"\", \"content-type\": \"text/plain\", \"host\": \"127.0.0.1:8000\", \"connection\": \"keep-alive\", \"sec-ch-ua\": \"\\\"Google Chrome\\\";v=\\\"125\\\", \\\"Chromium\\\";v=\\\"125\\\", \\\"Not.A/Brand\\\";v=\\\"24\\\"\", \"sec-ch-ua-mobile\": \"?0\", \"user-agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\", \"sec-ch-ua-platform\": \"\\\"Windows\\\"\", \"accept\": \"*/*\", \"sec-fetch-site\": \"same-origin\", \"sec-fetch-mode\": \"cors\", \"sec-fetch-dest\": \"empty\", \"referer\": \"http://127.0.0.1:8000/store/products/\", \"accept-encoding\": \"gzip, deflate, br, zstd\", \"accept-language\": \"en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7,fa;q=0.6\", \"cookie\": \"********************\"}',NULL,NULL,NULL,'',0,''),('ad80df86-5b9e-4aec-b71c-1604875ab81a','/playground/hello/','','','','GET','2024-06-09 05:32:09.992178','playground.views.HelloView','2024-06-09 05:32:15.064802',5072.624,'{\"content-length\": \"\", \"content-type\": \"text/plain\", \"host\": \"127.0.0.1:8000\", \"connection\": \"keep-alive\", \"cache-control\": \"max-age=0\", \"sec-ch-ua\": \"\\\"Google Chrome\\\";v=\\\"125\\\", \\\"Chromium\\\";v=\\\"125\\\", \\\"Not.A/Brand\\\";v=\\\"24\\\"\", \"sec-ch-ua-mobile\": \"?0\", \"sec-ch-ua-platform\": \"\\\"Windows\\\"\", \"upgrade-insecure-requests\": \"1\", \"user-agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\", \"accept\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\", \"sec-fetch-site\": \"none\", \"sec-fetch-mode\": \"navigate\", \"sec-fetch-user\": \"?1\", \"sec-fetch-dest\": \"document\", \"accept-encoding\": \"gzip, deflate, br, zstd\", \"accept-language\": \"en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7,fa;q=0.6\", \"cookie\": \"********************\"}',NULL,NULL,NULL,'',0,''),('d07609e4-8d56-45ec-9172-274cddcd5f73','/store/products/','','','','GET','2024-06-08 08:52:45.695406','products-list','2024-06-08 08:52:46.479846',784.44,'{\"content-length\": \"\", \"content-type\": \"text/plain\", \"host\": \"127.0.0.1:8000\", \"connection\": \"keep-alive\", \"sec-ch-ua\": \"\\\"Google Chrome\\\";v=\\\"125\\\", \\\"Chromium\\\";v=\\\"125\\\", \\\"Not.A/Brand\\\";v=\\\"24\\\"\", \"sec-ch-ua-mobile\": \"?0\", \"sec-ch-ua-platform\": \"\\\"Windows\\\"\", \"upgrade-insecure-requests\": \"1\", \"user-agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\", \"accept\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\", \"sec-fetch-site\": \"same-origin\", \"sec-fetch-mode\": \"navigate\", \"sec-fetch-user\": \"?1\", \"sec-fetch-dest\": \"document\", \"referer\": \"http://127.0.0.1:8000/store/\", \"accept-encoding\": \"gzip, deflate, br, zstd\", \"accept-language\": \"en-US,en;q=0.9,fr-FR;q=0.8,fr;q=0.7,fa;q=0.6\", \"cookie\": \"********************\"}',NULL,NULL,NULL,'',13,'');
/*!40000 ALTER TABLE `silk_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silk_response`
--

DROP TABLE IF EXISTS `silk_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silk_response` (
  `id` varchar(36) NOT NULL,
  `status_code` int NOT NULL,
  `raw_body` longtext NOT NULL,
  `body` longtext NOT NULL,
  `encoded_headers` longtext NOT NULL,
  `request_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `request_id` (`request_id`),
  CONSTRAINT `silk_response_request_id_1e8e2776_fk_silk_request_id` FOREIGN KEY (`request_id`) REFERENCES `silk_request` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silk_response`
--

LOCK TABLES `silk_response` WRITE;
/*!40000 ALTER TABLE `silk_response` DISABLE KEYS */;
INSERT INTO `silk_response` VALUES ('119766a4-eab5-41bd-bece-7b61edfcfe9e',200,'PGh0bWw+CiAgPGJvZHk+CiAgICAKICAgIDxoMT5IZWxsbyBNb3NoPC9oMT4KICAgIAogIDwvYm9keT4KPC9odG1sPgo=','','{\"Content-Type\": \"text/html; charset=utf-8\", \"Vary\": \"Accept\", \"Allow\": \"GET, HEAD, OPTIONS\"}','ad80df86-5b9e-4aec-b71c-1604875ab81a'),('3d051955-2286-4761-8c52-04d8b376c2e2',200,'CgoKCjwhRE9DVFlQRSBodG1sPgo8aHRtbD4KICA8aGVhZD4KICAgIAoKICAgICAgCiAgICAgICAgPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiLz4KICAgICAgICA8bWV0YSBuYW1lPSJyb2JvdHMiIGNvbnRlbnQ9Ik5PTkUsTk9BUkNISVZFIiAvPgogICAgICAKCiAgICAgIDx0aXRsZT5Qcm9kdWN0IExpc3Qg4oCTIERqYW5nbyBSRVNUIGZyYW1ld29yazwvdGl0bGU+CgogICAgICAKICAgICAgICAKICAgICAgICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIGhyZWY9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIi8+CiAgICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9ib290c3RyYXAtdHdlYWtzLmNzcyIvPgogICAgICAgIAoKICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9wcmV0dGlmeS5jc3MiLz4KICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9kZWZhdWx0LmNzcyIvPgogICAgICAgIAogICAgICAKCiAgICAKICA8L2hlYWQ+CgogIAogIDxib2R5IGNsYXNzPSIiPgoKICAgIDxkaXYgY2xhc3M9IndyYXBwZXIiPgogICAgICAKICAgICAgICA8ZGl2IGNsYXNzPSJuYXZiYXIgbmF2YmFyLXN0YXRpYy10b3AgbmF2YmFyLWludmVyc2UiCiAgICAgICAgICAgICByb2xlPSJuYXZpZ2F0aW9uIiBhcmlhLWxhYmVsPSJuYXZiYXIiPgogICAgICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAgICAgPHNwYW4+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICA8YSBjbGFzcz0nbmF2YmFyLWJyYW5kJyByZWw9Im5vZm9sbG93IiBocmVmPSdodHRwczovL3d3dy5kamFuZ28tcmVzdC1mcmFtZXdvcmsub3JnLyc+CiAgICAgICAgICAgICAgICAgICAgRGphbmdvIFJFU1QgZnJhbWV3b3JrCiAgICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgPHVsIGNsYXNzPSJuYXYgbmF2YmFyLW5hdiBwdWxsLXJpZ2h0Ij4KICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICA8L3VsPgogICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICAgIAoKICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAKICAgICAgICAgIDx1bCBjbGFzcz0iYnJlYWRjcnVtYiI+CiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii9zdG9yZS8iPkFwaSBSb290PC9hPjwvbGk+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPjxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iPlByb2R1Y3QgTGlzdDwvYT48L2xpPgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIDwvdWw+CiAgICAgICAgCgogICAgICAgIDwhLS0gQ29udGVudCAtLT4KICAgICAgICA8ZGl2IGlkPSJjb250ZW50IiByb2xlPSJtYWluIiBhcmlhLWxhYmVsPSJjb250ZW50Ij4KICAgICAgICAgIAoKICAgICAgICAgIDxkaXYgY2xhc3M9InJlZ2lvbiIgIGFyaWEtbGFiZWw9InJlcXVlc3QgZm9ybSI+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgICAgPGZvcm0gaWQ9ImdldC1mb3JtIiBjbGFzcz0icHVsbC1yaWdodCI+CiAgICAgICAgICAgICAgPGZpZWxkc2V0PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJ0bi1ncm91cCBmb3JtYXQtc2VsZWN0aW9uIj4KICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iIHJlbD0ibm9mb2xsb3ciIHRpdGxlPSJNYWtlIGEgR0VUIHJlcXVlc3Qgb24gdGhlIFByb2R1Y3QgTGlzdCByZXNvdXJjZSI+R0VUPC9hPgoKICAgICAgICAgICAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgZHJvcGRvd24tdG9nZ2xlIGpzLXRvb2x0aXAiIGRhdGEtdG9nZ2xlPSJkcm9wZG93biIgdGl0bGU9IlNwZWNpZnkgYSBmb3JtYXQgZm9yIHRoZSBHRVQgcmVxdWVzdCI+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0iY2FyZXQiPjwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICA8L2J1dHRvbj4KICAgICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9ImRyb3Bkb3duLW1lbnUiPgogICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIDxsaT4KICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0ianMtdG9vbHRpcCBmb3JtYXQtb3B0aW9uIiBocmVmPSIvc3RvcmUvcHJvZHVjdHMvP2Zvcm1hdD1qc29uIiByZWw9Im5vZm9sbG93IiB0aXRsZT0iTWFrZSBhIEdFVCByZXF1ZXN0IG9uIHRoZSBQcm9kdWN0IExpc3QgcmVzb3VyY2Ugd2l0aCB0aGUgZm9ybWF0IHNldCB0byBganNvbmAiPmpzb248L2E+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvbGk+CiAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgPGxpPgogICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGNsYXNzPSJqcy10b29sdGlwIGZvcm1hdC1vcHRpb24iIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/Zm9ybWF0PWFwaSIgcmVsPSJub2ZvbGxvdyIgdGl0bGU9Ik1ha2UgYSBHRVQgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIHdpdGggdGhlIGZvcm1hdCBzZXQgdG8gYGFwaWAiPmFwaTwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgPC9saT4KICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgIDwvdWw+CiAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgPC9maWVsZHNldD4KICAgICAgICAgICAgPC9mb3JtPgogICAgICAgICAgCgogICAgICAgICAgCiAgICAgICAgICAgIDxmb3JtIGNsYXNzPSJidXR0b24tZm9ybSIgYWN0aW9uPSIvc3RvcmUvcHJvZHVjdHMvIiBkYXRhLW1ldGhvZD0iT1BUSU9OUyI+CiAgICAgICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIHRpdGxlPSJNYWtlIGFuIE9QVElPTlMgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIj5PUFRJT05TPC9idXR0b24+CiAgICAgICAgICAgIDwvZm9ybT4KICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAogICAgICAgICAgICA8YnV0dG9uIHN0eWxlPSJmbG9hdDogcmlnaHQ7IG1hcmdpbi1yaWdodDogMTBweCIgZGF0YS10b2dnbGU9Im1vZGFsIiBkYXRhLXRhcmdldD0iI2ZpbHRlcnNNb2RhbCIgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCI+CiAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImdseXBoaWNvbiBnbHlwaGljb24td3JlbmNoIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9zcGFuPgogICAgICAgICAgICAgIEZpbHRlcnMKICAgICAgICAgICAgPC9idXR0b24+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29udGVudC1tYWluIiByb2xlPSJtYWluIiAgYXJpYS1sYWJlbD0ibWFpbiBjb250ZW50Ij4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYWdlLWhlYWRlciI+CiAgICAgICAgICAgICAgICA8aDE+UHJvZHVjdCBMaXN0PC9oMT4KICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwdWxsLWxlZnQiPgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxwPjwvcD4KICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIDxuYXYgY2xhc3M9InB1bGwtcmlnaHQiPgogICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9InBhZ2luYXRpb24iPgogIAogICAgPGxpIGNsYXNzPSJkaXNhYmxlZCI+CiAgICAgIDxhIGhyZWY9IiMiIGFyaWEtbGFiZWw9IlByZXZpb3VzIj4KICAgICAgICA8c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmxhcXVvOzwvc3Bhbj4KICAgICAgPC9hPgogICAgPC9saT4KICAKCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLyI+MTwvYT4KICAgICAgICA8L2xpPgogICAgICAKICAgIAogIAogICAgCiAgICAgIAogICAgICAgIDxsaT4KICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yZS9wcm9kdWN0cy8/cGFnZT0yIj4yPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTMiPjM8L2E+CiAgICAgICAgPC9saT4KICAgICAgCiAgICAKICAKICAgIAogICAgICA8bGkgY2xhc3M9ImRpc2FibGVkIj4KICAgICAgICA8YSBocmVmPSIjIj48c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmhlbGxpcDs8L3NwYW4+PC9hPgogICAgICA8L2xpPgogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTEwMCI+MTAwPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCgogIAogICAgPGxpPgogICAgICA8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgYXJpYS1sYWJlbD0iTmV4dCI+CiAgICAgICAgPHNwYW4gYXJpYS1oaWRkZW49InRydWUiPiZyYXF1bzs8L3NwYW4+CiAgICAgIDwvYT4KICAgIDwvbGk+CiAgCjwvdWw+CgogICAgICAgICAgICAgICAgPC9uYXY+CiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIDxkaXYgY2xhc3M9InJlcXVlc3QtaW5mbyIgYXJpYS1sYWJlbD0icmVxdWVzdCBpbmZvIj4KICAgICAgICAgICAgICAgIDxwcmUgY2xhc3M9InByZXR0eXByaW50Ij48Yj5HRVQ8L2I+IC9zdG9yZS9wcm9kdWN0cy88L3ByZT4KICAgICAgICAgICAgICA8L2Rpdj4KCiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icmVzcG9uc2UtaW5mbyIgYXJpYS1sYWJlbD0icmVzcG9uc2UgaW5mbyI+CiAgICAgICAgICAgICAgICA8cHJlIGNsYXNzPSJwcmV0dHlwcmludCI+PHNwYW4gY2xhc3M9Im1ldGEgbm9jb2RlIj48Yj5IVFRQIDIwMCBPSzwvYj4KPGI+QWxsb3c6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5HRVQsIFBPU1QsIEhFQUQsIE9QVElPTlM8L3NwYW4+CjxiPkNvbnRlbnQtVHlwZTo8L2I+IDxzcGFuIGNsYXNzPSJsaXQiPmFwcGxpY2F0aW9uL2pzb248L3NwYW4+CjxiPlZhcnk6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5BY2NlcHQ8L3NwYW4+Cgo8L3NwYW4+ewogICAgJnF1b3Q7Y291bnQmcXVvdDs6IDEwMDAsCiAgICAmcXVvdDtuZXh0JnF1b3Q7OiAmcXVvdDs8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgcmVsPSJub2ZvbGxvdyI+aHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTI8L2E+JnF1b3Q7LAogICAgJnF1b3Q7cHJldmlvdXMmcXVvdDs6IG51bGwsCiAgICAmcXVvdDtyZXN1bHRzJnF1b3Q7OiBbCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjQ4LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7N3VwIERpZXQsIDM1NSBNbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O3RpbmNpZHVudCBlZ2V0IHRlbXB1cyB2ZWwgcGVkZSBtb3JiaSBwb3J0dGl0b3IgbG9yZW0gaWQgbGlndWxhIHN1c3BlbmRpc3NlIG9ybmFyZSBjb25zZXF1YXQgbGVjdHVzIGluIGVzdCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA4MiwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzkuMDcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4Ni45NzcsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDkwNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0Fic29sdXQgQ2l0cm9uJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7ZGFwaWJ1cyBkb2xvciB2ZWwgZXN0IGRvbmVjIG9kaW8ganVzdG8gc29sbGljaXR1ZGluIHV0IHN1c2NpcGl0IGEgZmV1Z2lhdCBldCBlcm9zJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtzbHVnJnF1b3Q7OiAmcXVvdDstJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtpbnZlbnRvcnkmcXVvdDs6IDMyLAogICAgICAgICAgICAmcXVvdDt1bml0X3ByaWNlJnF1b3Q7OiA4OC4yLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogOTcuMDIwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDI4OCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FsbHNwaWNlIC0gSmFtYWljYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIGFsaXF1ZXQgcHVsdmluYXIgc2VkIG5pc2wgbnVuYyByaG9uY3VzIGR1aSB2ZWwgc2VtIHNlZCBzYWdpdHRpcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MSwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNDYuNTMsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA1MS4xODMwMDAwMDAwMDAwMSwKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNCwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjYwLAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QW1hcmV0dG8mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDt0ZW1wb3IgY29udmFsbGlzIG51bGxhIG5lcXVlIGxpYmVybyBjb252YWxsaXMgZWdldCBlbGVpZmVuZCBsdWN0dXMgdWx0cmljaWVzIGV1IG5pYmggcXVpc3F1ZSBpZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA1NywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTYuMzQsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDUuOTc0LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA0LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA3MzcsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBbmNob3Z5IFBhc3RlIC0gNTYgRyBUdWJlJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bGFjdXMgbW9yYmkgcXVpcyB0b3J0b3IgaWQgbnVsbGEgdWx0cmljZXMgYWxpcXVldCBtYWVjZW5hcyBsZW8gb2RpbyBjb25kaW1lbnR1bSBpZCBsdWN0dXMgbmVjIG1vbGVzdGllIHNlZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTEuMjcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDAuMzk3LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA1MjAsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBBc2lhbiBTaHJpbXAgUm9sbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O21hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogNDcsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkyLjU4LAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAxLjgzODAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA4NjQsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBDcmFiIEFuZCBCcmllJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bWV0dXMgc2FwaWVuIHV0IG51bmMgdmVzdGlidWx1bSBhbnRlIGlwc3VtIHByaW1pcyBpbiBmYXVjaWJ1cyBvcmNpIGx1Y3R1cyBldCB1bHRyaWNlcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA5NCwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzcuMjksCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4NS4wMTksCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYxNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIHNlZCB2ZXN0aWJ1bHVtIHNpdCBhbWV0IGN1cnN1cyBpZCB0dXJwaXMgaW50ZWdlciBhbGlxdWV0IG1hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogOTQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkzLjYsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDIuOTYwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYwNCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtsdWN0dXMgZXQgdWx0cmljZXMgcG9zdWVyZSBjdWJpbGlhIGN1cmFlIG1hdXJpcyB2aXZlcnJhIGRpYW0gdml0YWUmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogMTMsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkxLjYzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAwLjc5MywKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNiwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogMjU3LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QXBwZXRpemVyIC0gU2F1c2FnZSBSb2xscyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O2F0IHZlbGl0IGV1IGVzdCBjb25ndWUgZWxlbWVudHVtIGluIGhhYyBoYWJpdGFzc2UgcGxhdGVhIGRpY3R1bXN0IG1vcmJpIHZlc3RpYnVsdW0gdmVsaXQgaWQmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogODQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDk2LjQzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTA2LjA3MzAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA1LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfQogICAgXQp9PC9wcmU+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgCiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIAogICAgICAgIDwvZGl2PjwhLS0gLy5jb250ZW50IC0tPgogICAgICA8L2Rpdj48IS0tIC8uY29udGFpbmVyIC0tPgogICAgPC9kaXY+PCEtLSAuL3dyYXBwZXIgLS0+CgogICAgCiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsIGZhZGUiIGlkPSJmaWx0ZXJzTW9kYWwiIHRhYmluZGV4PSItMSIgcm9sZT0iZGlhbG9nIiBhcmlhLWxhYmVsbGVkYnk9ImZpbHRlcnMiIGFyaWEtaGlkZGVuPSJ0cnVlIj4KICA8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciPgogICAgPGRpdiBjbGFzcz0ibW9kYWwtY29udGVudCI+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CiAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCIgYXJpYS1sYWJlbD0iQ2xvc2UiPjxzcGFuIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9zcGFuPjwvYnV0dG9uPgogICAgICAgIDxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPkZpbHRlcnM8L2g0PgogICAgPC9kaXY+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgogICAgICAgICAgCiAgICAgICAgICAKICAgICAgICAgIAo8aDI+RmllbGQgZmlsdGVyczwvaDI+Cjxmb3JtIGNsYXNzPSJmb3JtIiBhY3Rpb249IiIgbWV0aG9kPSJnZXQiPgogICAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF9jb2xsZWN0aW9uX2lkIj5Db2xsZWN0aW9uOjwvbGFiZWw+CiAgICA8c2VsZWN0IG5hbWU9ImNvbGxlY3Rpb25faWQiIGlkPSJpZF9jb2xsZWN0aW9uX2lkIj4KICA8b3B0aW9uIHZhbHVlPSIiIHNlbGVjdGVkPi0tLS0tLS0tLTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSI3Ij5CYWtpbmc8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMyI+QmVhdXR5PC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjQiPkNsZWFuaW5nPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjEiPkZsb3dlcnM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMiI+R3JvY2VyeTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSIxMCI+TWFnYXppbmVzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjYiPlBldHM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOCI+U3BpY2VzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjUiPlN0YXRpb25hcnk8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOSI+VG95czwvb3B0aW9uPgoKPC9zZWxlY3Q+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19ndCI+VW5pdCBwcmljZSBpcyBncmVhdGVyIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2d0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19ndCI+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19sdCI+VW5pdCBwcmljZSBpcyBsZXNzIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2x0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19sdCI+CiAgICAKICAgIAogICAgICAKICAgIAogIDwvcD4KICAgIDxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5Ij5TdWJtaXQ8L2J1dHRvbj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAo8aDI+U2VhcmNoPC9oMj4KPGZvcm0gY2xhc3M9ImZvcm0taW5saW5lIj4KICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHN0eWxlPSJ3aWR0aDogMzUwcHgiIG5hbWU9InNlYXJjaCIgdmFsdWU9IiI+CiAgICAgIDxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgogICAgICAgIDxidXR0b24gY2xhc3M9ImJ0biBidG4tZGVmYXVsdCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZ2x5cGhpY29uIGdseXBoaWNvbi1zZWFyY2giIGFyaWEtaGlkZGVuPSJ0cnVlIj48L3NwYW4+IFNlYXJjaDwvYnV0dG9uPgogICAgICA8L3NwYW4+CiAgICA8L2Rpdj4KICA8L2Rpdj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAoKPGgyPk9yZGVyaW5nPC9oMj4KPGRpdiBjbGFzcz0ibGlzdC1ncm91cCI+CiAgICAKICAgICAgICAKICAgICAgICAgICAgPGEgaHJlZj0iL3N0b3JlL3Byb2R1Y3RzLz9vcmRlcmluZz11bml0X3ByaWNlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj51bml0X3ByaWNlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LXVuaXRfcHJpY2UiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPnVuaXRfcHJpY2UgLSBkZXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9bGFzdF91cGRhdGUiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPmxhc3RfdXBkYXRlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj5sYXN0X3VwZGF0ZSAtIGRlc2NlbmRpbmc8L2E+CiAgICAgICAgCiAgICAKPC9kaXY+CgogICAgICAgICAgCiAgICAgIDwvZGl2PgogICAgPC9kaXY+CiAgPC9kaXY+CjwvZGl2PgoKICAgIAoKICAgIAogICAgICA8c2NyaXB0IHR5cGU9ImFwcGxpY2F0aW9uL2pzb24iIGlkPSJkcmZfY3NyZiI+CiAgICAgICAgewogICAgICAgICAgImNzcmZIZWFkZXJOYW1lIjogIlgtQ1NSRlRPS0VOIiwKICAgICAgICAgICJjc3JmVG9rZW4iOiAicDdkcWdnZVVQUTJybXFIaXY5M2M0eEZnc1p1cDZXUEZ6SlFVRG9UNTl0ckRTVHVPeDljU0RwWk1pb3Q5RWVJWiIKICAgICAgICB9CiAgICAgIDwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9qcXVlcnktMy43LjEubWluLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvYWpheC1mb3JtLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvY3NyZi5qcyI+PC9zY3JpcHQ+CiAgICAgIDxzY3JpcHQgc3JjPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2pzL2Jvb3RzdHJhcC5taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9wcmV0dGlmeS1taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9kZWZhdWx0LmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvbG9hZC1hamF4LWZvcm0uanMiPjwvc2NyaXB0PgogICAgCgogIDwvYm9keT4KICAKPC9odG1sPgo=','','{\"Content-Type\": \"text/html; charset=utf-8\", \"Vary\": \"Accept\", \"Allow\": \"GET, POST, HEAD, OPTIONS\"}','d07609e4-8d56-45ec-9172-274cddcd5f73');
INSERT INTO `silk_response` VALUES ('e6d3195d-960b-4cc0-9d40-0cf7c32e3ae8',200,'CgoKCjwhRE9DVFlQRSBodG1sPgo8aHRtbD4KICA8aGVhZD4KICAgIAoKICAgICAgCiAgICAgICAgPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiLz4KICAgICAgICA8bWV0YSBuYW1lPSJyb2JvdHMiIGNvbnRlbnQ9Ik5PTkUsTk9BUkNISVZFIiAvPgogICAgICAKCiAgICAgIDx0aXRsZT5Qcm9kdWN0IExpc3Qg4oCTIERqYW5nbyBSRVNUIGZyYW1ld29yazwvdGl0bGU+CgogICAgICAKICAgICAgICAKICAgICAgICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIGhyZWY9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIi8+CiAgICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9ib290c3RyYXAtdHdlYWtzLmNzcyIvPgogICAgICAgIAoKICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9wcmV0dGlmeS5jc3MiLz4KICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9kZWZhdWx0LmNzcyIvPgogICAgICAgIAogICAgICAKCiAgICAKICA8L2hlYWQ+CgogIAogIDxib2R5IGNsYXNzPSIiPgoKICAgIDxkaXYgY2xhc3M9IndyYXBwZXIiPgogICAgICAKICAgICAgICA8ZGl2IGNsYXNzPSJuYXZiYXIgbmF2YmFyLXN0YXRpYy10b3AgbmF2YmFyLWludmVyc2UiCiAgICAgICAgICAgICByb2xlPSJuYXZpZ2F0aW9uIiBhcmlhLWxhYmVsPSJuYXZiYXIiPgogICAgICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAgICAgPHNwYW4+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICA8YSBjbGFzcz0nbmF2YmFyLWJyYW5kJyByZWw9Im5vZm9sbG93IiBocmVmPSdodHRwczovL3d3dy5kamFuZ28tcmVzdC1mcmFtZXdvcmsub3JnLyc+CiAgICAgICAgICAgICAgICAgICAgRGphbmdvIFJFU1QgZnJhbWV3b3JrCiAgICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgPHVsIGNsYXNzPSJuYXYgbmF2YmFyLW5hdiBwdWxsLXJpZ2h0Ij4KICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICA8L3VsPgogICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICAgIAoKICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAKICAgICAgICAgIDx1bCBjbGFzcz0iYnJlYWRjcnVtYiI+CiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii9zdG9yZS8iPkFwaSBSb290PC9hPjwvbGk+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPjxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iPlByb2R1Y3QgTGlzdDwvYT48L2xpPgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIDwvdWw+CiAgICAgICAgCgogICAgICAgIDwhLS0gQ29udGVudCAtLT4KICAgICAgICA8ZGl2IGlkPSJjb250ZW50IiByb2xlPSJtYWluIiBhcmlhLWxhYmVsPSJjb250ZW50Ij4KICAgICAgICAgIAoKICAgICAgICAgIDxkaXYgY2xhc3M9InJlZ2lvbiIgIGFyaWEtbGFiZWw9InJlcXVlc3QgZm9ybSI+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgICAgPGZvcm0gaWQ9ImdldC1mb3JtIiBjbGFzcz0icHVsbC1yaWdodCI+CiAgICAgICAgICAgICAgPGZpZWxkc2V0PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJ0bi1ncm91cCBmb3JtYXQtc2VsZWN0aW9uIj4KICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iIHJlbD0ibm9mb2xsb3ciIHRpdGxlPSJNYWtlIGEgR0VUIHJlcXVlc3Qgb24gdGhlIFByb2R1Y3QgTGlzdCByZXNvdXJjZSI+R0VUPC9hPgoKICAgICAgICAgICAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgZHJvcGRvd24tdG9nZ2xlIGpzLXRvb2x0aXAiIGRhdGEtdG9nZ2xlPSJkcm9wZG93biIgdGl0bGU9IlNwZWNpZnkgYSBmb3JtYXQgZm9yIHRoZSBHRVQgcmVxdWVzdCI+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0iY2FyZXQiPjwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICA8L2J1dHRvbj4KICAgICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9ImRyb3Bkb3duLW1lbnUiPgogICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIDxsaT4KICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0ianMtdG9vbHRpcCBmb3JtYXQtb3B0aW9uIiBocmVmPSIvc3RvcmUvcHJvZHVjdHMvP2Zvcm1hdD1qc29uIiByZWw9Im5vZm9sbG93IiB0aXRsZT0iTWFrZSBhIEdFVCByZXF1ZXN0IG9uIHRoZSBQcm9kdWN0IExpc3QgcmVzb3VyY2Ugd2l0aCB0aGUgZm9ybWF0IHNldCB0byBganNvbmAiPmpzb248L2E+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvbGk+CiAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgPGxpPgogICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGNsYXNzPSJqcy10b29sdGlwIGZvcm1hdC1vcHRpb24iIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/Zm9ybWF0PWFwaSIgcmVsPSJub2ZvbGxvdyIgdGl0bGU9Ik1ha2UgYSBHRVQgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIHdpdGggdGhlIGZvcm1hdCBzZXQgdG8gYGFwaWAiPmFwaTwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgPC9saT4KICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgIDwvdWw+CiAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgPC9maWVsZHNldD4KICAgICAgICAgICAgPC9mb3JtPgogICAgICAgICAgCgogICAgICAgICAgCiAgICAgICAgICAgIDxmb3JtIGNsYXNzPSJidXR0b24tZm9ybSIgYWN0aW9uPSIvc3RvcmUvcHJvZHVjdHMvIiBkYXRhLW1ldGhvZD0iT1BUSU9OUyI+CiAgICAgICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIHRpdGxlPSJNYWtlIGFuIE9QVElPTlMgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIj5PUFRJT05TPC9idXR0b24+CiAgICAgICAgICAgIDwvZm9ybT4KICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAogICAgICAgICAgICA8YnV0dG9uIHN0eWxlPSJmbG9hdDogcmlnaHQ7IG1hcmdpbi1yaWdodDogMTBweCIgZGF0YS10b2dnbGU9Im1vZGFsIiBkYXRhLXRhcmdldD0iI2ZpbHRlcnNNb2RhbCIgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCI+CiAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImdseXBoaWNvbiBnbHlwaGljb24td3JlbmNoIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9zcGFuPgogICAgICAgICAgICAgIEZpbHRlcnMKICAgICAgICAgICAgPC9idXR0b24+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29udGVudC1tYWluIiByb2xlPSJtYWluIiAgYXJpYS1sYWJlbD0ibWFpbiBjb250ZW50Ij4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYWdlLWhlYWRlciI+CiAgICAgICAgICAgICAgICA8aDE+UHJvZHVjdCBMaXN0PC9oMT4KICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwdWxsLWxlZnQiPgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxwPjwvcD4KICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIDxuYXYgY2xhc3M9InB1bGwtcmlnaHQiPgogICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9InBhZ2luYXRpb24iPgogIAogICAgPGxpIGNsYXNzPSJkaXNhYmxlZCI+CiAgICAgIDxhIGhyZWY9IiMiIGFyaWEtbGFiZWw9IlByZXZpb3VzIj4KICAgICAgICA8c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmxhcXVvOzwvc3Bhbj4KICAgICAgPC9hPgogICAgPC9saT4KICAKCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLyI+MTwvYT4KICAgICAgICA8L2xpPgogICAgICAKICAgIAogIAogICAgCiAgICAgIAogICAgICAgIDxsaT4KICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yZS9wcm9kdWN0cy8/cGFnZT0yIj4yPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTMiPjM8L2E+CiAgICAgICAgPC9saT4KICAgICAgCiAgICAKICAKICAgIAogICAgICA8bGkgY2xhc3M9ImRpc2FibGVkIj4KICAgICAgICA8YSBocmVmPSIjIj48c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmhlbGxpcDs8L3NwYW4+PC9hPgogICAgICA8L2xpPgogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTEwMCI+MTAwPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCgogIAogICAgPGxpPgogICAgICA8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgYXJpYS1sYWJlbD0iTmV4dCI+CiAgICAgICAgPHNwYW4gYXJpYS1oaWRkZW49InRydWUiPiZyYXF1bzs8L3NwYW4+CiAgICAgIDwvYT4KICAgIDwvbGk+CiAgCjwvdWw+CgogICAgICAgICAgICAgICAgPC9uYXY+CiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIDxkaXYgY2xhc3M9InJlcXVlc3QtaW5mbyIgYXJpYS1sYWJlbD0icmVxdWVzdCBpbmZvIj4KICAgICAgICAgICAgICAgIDxwcmUgY2xhc3M9InByZXR0eXByaW50Ij48Yj5HRVQ8L2I+IC9zdG9yZS9wcm9kdWN0cy88L3ByZT4KICAgICAgICAgICAgICA8L2Rpdj4KCiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icmVzcG9uc2UtaW5mbyIgYXJpYS1sYWJlbD0icmVzcG9uc2UgaW5mbyI+CiAgICAgICAgICAgICAgICA8cHJlIGNsYXNzPSJwcmV0dHlwcmludCI+PHNwYW4gY2xhc3M9Im1ldGEgbm9jb2RlIj48Yj5IVFRQIDIwMCBPSzwvYj4KPGI+QWxsb3c6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5HRVQsIFBPU1QsIEhFQUQsIE9QVElPTlM8L3NwYW4+CjxiPkNvbnRlbnQtVHlwZTo8L2I+IDxzcGFuIGNsYXNzPSJsaXQiPmFwcGxpY2F0aW9uL2pzb248L3NwYW4+CjxiPlZhcnk6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5BY2NlcHQ8L3NwYW4+Cgo8L3NwYW4+ewogICAgJnF1b3Q7Y291bnQmcXVvdDs6IDEwMDAsCiAgICAmcXVvdDtuZXh0JnF1b3Q7OiAmcXVvdDs8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgcmVsPSJub2ZvbGxvdyI+aHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTI8L2E+JnF1b3Q7LAogICAgJnF1b3Q7cHJldmlvdXMmcXVvdDs6IG51bGwsCiAgICAmcXVvdDtyZXN1bHRzJnF1b3Q7OiBbCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjQ4LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7N3VwIERpZXQsIDM1NSBNbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O3RpbmNpZHVudCBlZ2V0IHRlbXB1cyB2ZWwgcGVkZSBtb3JiaSBwb3J0dGl0b3IgbG9yZW0gaWQgbGlndWxhIHN1c3BlbmRpc3NlIG9ybmFyZSBjb25zZXF1YXQgbGVjdHVzIGluIGVzdCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA4MiwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzkuMDcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4Ni45NzcsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDkwNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0Fic29sdXQgQ2l0cm9uJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7ZGFwaWJ1cyBkb2xvciB2ZWwgZXN0IGRvbmVjIG9kaW8ganVzdG8gc29sbGljaXR1ZGluIHV0IHN1c2NpcGl0IGEgZmV1Z2lhdCBldCBlcm9zJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtzbHVnJnF1b3Q7OiAmcXVvdDstJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtpbnZlbnRvcnkmcXVvdDs6IDMyLAogICAgICAgICAgICAmcXVvdDt1bml0X3ByaWNlJnF1b3Q7OiA4OC4yLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogOTcuMDIwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDI4OCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FsbHNwaWNlIC0gSmFtYWljYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIGFsaXF1ZXQgcHVsdmluYXIgc2VkIG5pc2wgbnVuYyByaG9uY3VzIGR1aSB2ZWwgc2VtIHNlZCBzYWdpdHRpcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MSwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNDYuNTMsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA1MS4xODMwMDAwMDAwMDAwMSwKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNCwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjYwLAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QW1hcmV0dG8mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDt0ZW1wb3IgY29udmFsbGlzIG51bGxhIG5lcXVlIGxpYmVybyBjb252YWxsaXMgZWdldCBlbGVpZmVuZCBsdWN0dXMgdWx0cmljaWVzIGV1IG5pYmggcXVpc3F1ZSBpZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA1NywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTYuMzQsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDUuOTc0LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA0LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA3MzcsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBbmNob3Z5IFBhc3RlIC0gNTYgRyBUdWJlJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bGFjdXMgbW9yYmkgcXVpcyB0b3J0b3IgaWQgbnVsbGEgdWx0cmljZXMgYWxpcXVldCBtYWVjZW5hcyBsZW8gb2RpbyBjb25kaW1lbnR1bSBpZCBsdWN0dXMgbmVjIG1vbGVzdGllIHNlZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTEuMjcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDAuMzk3LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA1MjAsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBBc2lhbiBTaHJpbXAgUm9sbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O21hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogNDcsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkyLjU4LAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAxLjgzODAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA4NjQsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBDcmFiIEFuZCBCcmllJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bWV0dXMgc2FwaWVuIHV0IG51bmMgdmVzdGlidWx1bSBhbnRlIGlwc3VtIHByaW1pcyBpbiBmYXVjaWJ1cyBvcmNpIGx1Y3R1cyBldCB1bHRyaWNlcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA5NCwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzcuMjksCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4NS4wMTksCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYxNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIHNlZCB2ZXN0aWJ1bHVtIHNpdCBhbWV0IGN1cnN1cyBpZCB0dXJwaXMgaW50ZWdlciBhbGlxdWV0IG1hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogOTQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkzLjYsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDIuOTYwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYwNCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtsdWN0dXMgZXQgdWx0cmljZXMgcG9zdWVyZSBjdWJpbGlhIGN1cmFlIG1hdXJpcyB2aXZlcnJhIGRpYW0gdml0YWUmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogMTMsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkxLjYzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAwLjc5MywKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNiwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogMjU3LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QXBwZXRpemVyIC0gU2F1c2FnZSBSb2xscyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O2F0IHZlbGl0IGV1IGVzdCBjb25ndWUgZWxlbWVudHVtIGluIGhhYyBoYWJpdGFzc2UgcGxhdGVhIGRpY3R1bXN0IG1vcmJpIHZlc3RpYnVsdW0gdmVsaXQgaWQmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogODQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDk2LjQzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTA2LjA3MzAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA1LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfQogICAgXQp9PC9wcmU+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgCiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIAogICAgICAgIDwvZGl2PjwhLS0gLy5jb250ZW50IC0tPgogICAgICA8L2Rpdj48IS0tIC8uY29udGFpbmVyIC0tPgogICAgPC9kaXY+PCEtLSAuL3dyYXBwZXIgLS0+CgogICAgCiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsIGZhZGUiIGlkPSJmaWx0ZXJzTW9kYWwiIHRhYmluZGV4PSItMSIgcm9sZT0iZGlhbG9nIiBhcmlhLWxhYmVsbGVkYnk9ImZpbHRlcnMiIGFyaWEtaGlkZGVuPSJ0cnVlIj4KICA8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciPgogICAgPGRpdiBjbGFzcz0ibW9kYWwtY29udGVudCI+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CiAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCIgYXJpYS1sYWJlbD0iQ2xvc2UiPjxzcGFuIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9zcGFuPjwvYnV0dG9uPgogICAgICAgIDxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPkZpbHRlcnM8L2g0PgogICAgPC9kaXY+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgogICAgICAgICAgCiAgICAgICAgICAKICAgICAgICAgIAo8aDI+RmllbGQgZmlsdGVyczwvaDI+Cjxmb3JtIGNsYXNzPSJmb3JtIiBhY3Rpb249IiIgbWV0aG9kPSJnZXQiPgogICAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF9jb2xsZWN0aW9uX2lkIj5Db2xsZWN0aW9uOjwvbGFiZWw+CiAgICA8c2VsZWN0IG5hbWU9ImNvbGxlY3Rpb25faWQiIGlkPSJpZF9jb2xsZWN0aW9uX2lkIj4KICA8b3B0aW9uIHZhbHVlPSIiIHNlbGVjdGVkPi0tLS0tLS0tLTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSI3Ij5CYWtpbmc8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMyI+QmVhdXR5PC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjQiPkNsZWFuaW5nPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjEiPkZsb3dlcnM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMiI+R3JvY2VyeTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSIxMCI+TWFnYXppbmVzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjYiPlBldHM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOCI+U3BpY2VzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjUiPlN0YXRpb25hcnk8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOSI+VG95czwvb3B0aW9uPgoKPC9zZWxlY3Q+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19ndCI+VW5pdCBwcmljZSBpcyBncmVhdGVyIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2d0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19ndCI+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19sdCI+VW5pdCBwcmljZSBpcyBsZXNzIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2x0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19sdCI+CiAgICAKICAgIAogICAgICAKICAgIAogIDwvcD4KICAgIDxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5Ij5TdWJtaXQ8L2J1dHRvbj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAo8aDI+U2VhcmNoPC9oMj4KPGZvcm0gY2xhc3M9ImZvcm0taW5saW5lIj4KICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHN0eWxlPSJ3aWR0aDogMzUwcHgiIG5hbWU9InNlYXJjaCIgdmFsdWU9IiI+CiAgICAgIDxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgogICAgICAgIDxidXR0b24gY2xhc3M9ImJ0biBidG4tZGVmYXVsdCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZ2x5cGhpY29uIGdseXBoaWNvbi1zZWFyY2giIGFyaWEtaGlkZGVuPSJ0cnVlIj48L3NwYW4+IFNlYXJjaDwvYnV0dG9uPgogICAgICA8L3NwYW4+CiAgICA8L2Rpdj4KICA8L2Rpdj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAoKPGgyPk9yZGVyaW5nPC9oMj4KPGRpdiBjbGFzcz0ibGlzdC1ncm91cCI+CiAgICAKICAgICAgICAKICAgICAgICAgICAgPGEgaHJlZj0iL3N0b3JlL3Byb2R1Y3RzLz9vcmRlcmluZz11bml0X3ByaWNlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj51bml0X3ByaWNlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LXVuaXRfcHJpY2UiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPnVuaXRfcHJpY2UgLSBkZXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9bGFzdF91cGRhdGUiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPmxhc3RfdXBkYXRlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj5sYXN0X3VwZGF0ZSAtIGRlc2NlbmRpbmc8L2E+CiAgICAgICAgCiAgICAKPC9kaXY+CgogICAgICAgICAgCiAgICAgIDwvZGl2PgogICAgPC9kaXY+CiAgPC9kaXY+CjwvZGl2PgoKICAgIAoKICAgIAogICAgICA8c2NyaXB0IHR5cGU9ImFwcGxpY2F0aW9uL2pzb24iIGlkPSJkcmZfY3NyZiI+CiAgICAgICAgewogICAgICAgICAgImNzcmZIZWFkZXJOYW1lIjogIlgtQ1NSRlRPS0VOIiwKICAgICAgICAgICJjc3JmVG9rZW4iOiAiU2ZDTEZzNVFaRVFTZ3Btb2l6bmNLRzY1ajVZWGZ1VHQyUmZmMkFLMWpoZjRNUzlVa3p3U2p5cUI5dVhITk1NTiIKICAgICAgICB9CiAgICAgIDwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9qcXVlcnktMy43LjEubWluLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvYWpheC1mb3JtLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvY3NyZi5qcyI+PC9zY3JpcHQ+CiAgICAgIDxzY3JpcHQgc3JjPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2pzL2Jvb3RzdHJhcC5taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9wcmV0dGlmeS1taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9kZWZhdWx0LmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvbG9hZC1hamF4LWZvcm0uanMiPjwvc2NyaXB0PgogICAgCgogIDwvYm9keT4KICAKPC9odG1sPgo=','','{\"Content-Type\": \"text/html; charset=utf-8\", \"Vary\": \"Accept\", \"Allow\": \"GET, POST, HEAD, OPTIONS\"}','417a0552-f1da-4958-8ef2-cce47834ef77'),('e83ab729-4359-41d0-8ca9-2125395f8ec2',200,'CgoKCjwhRE9DVFlQRSBodG1sPgo8aHRtbD4KICA8aGVhZD4KICAgIAoKICAgICAgCiAgICAgICAgPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiLz4KICAgICAgICA8bWV0YSBuYW1lPSJyb2JvdHMiIGNvbnRlbnQ9Ik5PTkUsTk9BUkNISVZFIiAvPgogICAgICAKCiAgICAgIDx0aXRsZT5Qcm9kdWN0IExpc3Qg4oCTIERqYW5nbyBSRVNUIGZyYW1ld29yazwvdGl0bGU+CgogICAgICAKICAgICAgICAKICAgICAgICAgIDxsaW5rIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIGhyZWY9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIi8+CiAgICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9ib290c3RyYXAtdHdlYWtzLmNzcyIvPgogICAgICAgIAoKICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9wcmV0dGlmeS5jc3MiLz4KICAgICAgICA8bGluayByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiBocmVmPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2Nzcy9kZWZhdWx0LmNzcyIvPgogICAgICAgIAogICAgICAKCiAgICAKICA8L2hlYWQ+CgogIAogIDxib2R5IGNsYXNzPSIiPgoKICAgIDxkaXYgY2xhc3M9IndyYXBwZXIiPgogICAgICAKICAgICAgICA8ZGl2IGNsYXNzPSJuYXZiYXIgbmF2YmFyLXN0YXRpYy10b3AgbmF2YmFyLWludmVyc2UiCiAgICAgICAgICAgICByb2xlPSJuYXZpZ2F0aW9uIiBhcmlhLWxhYmVsPSJuYXZiYXIiPgogICAgICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAgICAgPHNwYW4+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICA8YSBjbGFzcz0nbmF2YmFyLWJyYW5kJyByZWw9Im5vZm9sbG93IiBocmVmPSdodHRwczovL3d3dy5kamFuZ28tcmVzdC1mcmFtZXdvcmsub3JnLyc+CiAgICAgICAgICAgICAgICAgICAgRGphbmdvIFJFU1QgZnJhbWV3b3JrCiAgICAgICAgICAgICAgICA8L2E+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIDwvc3Bhbj4KICAgICAgICAgICAgPHVsIGNsYXNzPSJuYXYgbmF2YmFyLW5hdiBwdWxsLXJpZ2h0Ij4KICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICA8L3VsPgogICAgICAgICAgPC9kaXY+CiAgICAgICAgPC9kaXY+CiAgICAgIAoKICAgICAgPGRpdiBjbGFzcz0iY29udGFpbmVyIj4KICAgICAgICAKICAgICAgICAgIDx1bCBjbGFzcz0iYnJlYWRjcnVtYiI+CiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpPjxhIGhyZWY9Ii9zdG9yZS8iPkFwaSBSb290PC9hPjwvbGk+CiAgICAgICAgICAgICAgCiAgICAgICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPjxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iPlByb2R1Y3QgTGlzdDwvYT48L2xpPgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIDwvdWw+CiAgICAgICAgCgogICAgICAgIDwhLS0gQ29udGVudCAtLT4KICAgICAgICA8ZGl2IGlkPSJjb250ZW50IiByb2xlPSJtYWluIiBhcmlhLWxhYmVsPSJjb250ZW50Ij4KICAgICAgICAgIAoKICAgICAgICAgIDxkaXYgY2xhc3M9InJlZ2lvbiIgIGFyaWEtbGFiZWw9InJlcXVlc3QgZm9ybSI+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgICAgPGZvcm0gaWQ9ImdldC1mb3JtIiBjbGFzcz0icHVsbC1yaWdodCI+CiAgICAgICAgICAgICAgPGZpZWxkc2V0PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxkaXYgY2xhc3M9ImJ0bi1ncm91cCBmb3JtYXQtc2VsZWN0aW9uIj4KICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8iIHJlbD0ibm9mb2xsb3ciIHRpdGxlPSJNYWtlIGEgR0VUIHJlcXVlc3Qgb24gdGhlIFByb2R1Y3QgTGlzdCByZXNvdXJjZSI+R0VUPC9hPgoKICAgICAgICAgICAgICAgICAgICA8YnV0dG9uIGNsYXNzPSJidG4gYnRuLXByaW1hcnkgZHJvcGRvd24tdG9nZ2xlIGpzLXRvb2x0aXAiIGRhdGEtdG9nZ2xlPSJkcm9wZG93biIgdGl0bGU9IlNwZWNpZnkgYSBmb3JtYXQgZm9yIHRoZSBHRVQgcmVxdWVzdCI+CiAgICAgICAgICAgICAgICAgICAgICA8c3BhbiBjbGFzcz0iY2FyZXQiPjwvc3Bhbj4KICAgICAgICAgICAgICAgICAgICA8L2J1dHRvbj4KICAgICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9ImRyb3Bkb3duLW1lbnUiPgogICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgIDxsaT4KICAgICAgICAgICAgICAgICAgICAgICAgICA8YSBjbGFzcz0ianMtdG9vbHRpcCBmb3JtYXQtb3B0aW9uIiBocmVmPSIvc3RvcmUvcHJvZHVjdHMvP2Zvcm1hdD1qc29uIiByZWw9Im5vZm9sbG93IiB0aXRsZT0iTWFrZSBhIEdFVCByZXF1ZXN0IG9uIHRoZSBQcm9kdWN0IExpc3QgcmVzb3VyY2Ugd2l0aCB0aGUgZm9ybWF0IHNldCB0byBganNvbmAiPmpzb248L2E+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvbGk+CiAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgPGxpPgogICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGNsYXNzPSJqcy10b29sdGlwIGZvcm1hdC1vcHRpb24iIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/Zm9ybWF0PWFwaSIgcmVsPSJub2ZvbGxvdyIgdGl0bGU9Ik1ha2UgYSBHRVQgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIHdpdGggdGhlIGZvcm1hdCBzZXQgdG8gYGFwaWAiPmFwaTwvYT4KICAgICAgICAgICAgICAgICAgICAgICAgPC9saT4KICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgIDwvdWw+CiAgICAgICAgICAgICAgICAgIDwvZGl2PgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgPC9maWVsZHNldD4KICAgICAgICAgICAgPC9mb3JtPgogICAgICAgICAgCgogICAgICAgICAgCiAgICAgICAgICAgIDxmb3JtIGNsYXNzPSJidXR0b24tZm9ybSIgYWN0aW9uPSIvc3RvcmUvcHJvZHVjdHMvIiBkYXRhLW1ldGhvZD0iT1BUSU9OUyI+CiAgICAgICAgICAgICAgPGJ1dHRvbiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5IGpzLXRvb2x0aXAiIHRpdGxlPSJNYWtlIGFuIE9QVElPTlMgcmVxdWVzdCBvbiB0aGUgUHJvZHVjdCBMaXN0IHJlc291cmNlIj5PUFRJT05TPC9idXR0b24+CiAgICAgICAgICAgIDwvZm9ybT4KICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAoKICAgICAgICAgIAogICAgICAgICAgICA8YnV0dG9uIHN0eWxlPSJmbG9hdDogcmlnaHQ7IG1hcmdpbi1yaWdodDogMTBweCIgZGF0YS10b2dnbGU9Im1vZGFsIiBkYXRhLXRhcmdldD0iI2ZpbHRlcnNNb2RhbCIgY2xhc3M9ImJ0biBidG4tZGVmYXVsdCI+CiAgICAgICAgICAgICAgPHNwYW4gY2xhc3M9ImdseXBoaWNvbiBnbHlwaGljb24td3JlbmNoIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9zcGFuPgogICAgICAgICAgICAgIEZpbHRlcnMKICAgICAgICAgICAgPC9idXR0b24+CiAgICAgICAgICAKCiAgICAgICAgICAKICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgPGRpdiBjbGFzcz0iY29udGVudC1tYWluIiByb2xlPSJtYWluIiAgYXJpYS1sYWJlbD0ibWFpbiBjb250ZW50Ij4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYWdlLWhlYWRlciI+CiAgICAgICAgICAgICAgICA8aDE+UHJvZHVjdCBMaXN0PC9oMT4KICAgICAgICAgICAgICA8L2Rpdj4KICAgICAgICAgICAgICA8ZGl2IGNsYXNzPSJwdWxsLWxlZnQiPgogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgIDxwPjwvcD4KICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIDxuYXYgY2xhc3M9InB1bGwtcmlnaHQiPgogICAgICAgICAgICAgICAgICA8dWwgY2xhc3M9InBhZ2luYXRpb24iPgogIAogICAgPGxpIGNsYXNzPSJkaXNhYmxlZCI+CiAgICAgIDxhIGhyZWY9IiMiIGFyaWEtbGFiZWw9IlByZXZpb3VzIj4KICAgICAgICA8c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmxhcXVvOzwvc3Bhbj4KICAgICAgPC9hPgogICAgPC9saT4KICAKCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpIGNsYXNzPSJhY3RpdmUiPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLyI+MTwvYT4KICAgICAgICA8L2xpPgogICAgICAKICAgIAogIAogICAgCiAgICAgIAogICAgICAgIDxsaT4KICAgICAgICAgIDxhIGhyZWY9Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yZS9wcm9kdWN0cy8/cGFnZT0yIj4yPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTMiPjM8L2E+CiAgICAgICAgPC9saT4KICAgICAgCiAgICAKICAKICAgIAogICAgICA8bGkgY2xhc3M9ImRpc2FibGVkIj4KICAgICAgICA8YSBocmVmPSIjIj48c3BhbiBhcmlhLWhpZGRlbj0idHJ1ZSI+JmhlbGxpcDs8L3NwYW4+PC9hPgogICAgICA8L2xpPgogICAgCiAgCiAgICAKICAgICAgCiAgICAgICAgPGxpPgogICAgICAgICAgPGEgaHJlZj0iaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTEwMCI+MTAwPC9hPgogICAgICAgIDwvbGk+CiAgICAgIAogICAgCiAgCgogIAogICAgPGxpPgogICAgICA8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgYXJpYS1sYWJlbD0iTmV4dCI+CiAgICAgICAgPHNwYW4gYXJpYS1oaWRkZW49InRydWUiPiZyYXF1bzs8L3NwYW4+CiAgICAgIDwvYT4KICAgIDwvbGk+CiAgCjwvdWw+CgogICAgICAgICAgICAgICAgPC9uYXY+CiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIDxkaXYgY2xhc3M9InJlcXVlc3QtaW5mbyIgYXJpYS1sYWJlbD0icmVxdWVzdCBpbmZvIj4KICAgICAgICAgICAgICAgIDxwcmUgY2xhc3M9InByZXR0eXByaW50Ij48Yj5HRVQ8L2I+IC9zdG9yZS9wcm9kdWN0cy88L3ByZT4KICAgICAgICAgICAgICA8L2Rpdj4KCiAgICAgICAgICAgICAgPGRpdiBjbGFzcz0icmVzcG9uc2UtaW5mbyIgYXJpYS1sYWJlbD0icmVzcG9uc2UgaW5mbyI+CiAgICAgICAgICAgICAgICA8cHJlIGNsYXNzPSJwcmV0dHlwcmludCI+PHNwYW4gY2xhc3M9Im1ldGEgbm9jb2RlIj48Yj5IVFRQIDIwMCBPSzwvYj4KPGI+QWxsb3c6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5HRVQsIFBPU1QsIEhFQUQsIE9QVElPTlM8L3NwYW4+CjxiPkNvbnRlbnQtVHlwZTo8L2I+IDxzcGFuIGNsYXNzPSJsaXQiPmFwcGxpY2F0aW9uL2pzb248L3NwYW4+CjxiPlZhcnk6PC9iPiA8c3BhbiBjbGFzcz0ibGl0Ij5BY2NlcHQ8L3NwYW4+Cgo8L3NwYW4+ewogICAgJnF1b3Q7Y291bnQmcXVvdDs6IDEwMDAsCiAgICAmcXVvdDtuZXh0JnF1b3Q7OiAmcXVvdDs8YSBocmVmPSJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmUvcHJvZHVjdHMvP3BhZ2U9MiIgcmVsPSJub2ZvbGxvdyI+aHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0b3JlL3Byb2R1Y3RzLz9wYWdlPTI8L2E+JnF1b3Q7LAogICAgJnF1b3Q7cHJldmlvdXMmcXVvdDs6IG51bGwsCiAgICAmcXVvdDtyZXN1bHRzJnF1b3Q7OiBbCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjQ4LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7N3VwIERpZXQsIDM1NSBNbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O3RpbmNpZHVudCBlZ2V0IHRlbXB1cyB2ZWwgcGVkZSBtb3JiaSBwb3J0dGl0b3IgbG9yZW0gaWQgbGlndWxhIHN1c3BlbmRpc3NlIG9ybmFyZSBjb25zZXF1YXQgbGVjdHVzIGluIGVzdCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA4MiwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzkuMDcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4Ni45NzcsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDkwNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0Fic29sdXQgQ2l0cm9uJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7ZGFwaWJ1cyBkb2xvciB2ZWwgZXN0IGRvbmVjIG9kaW8ganVzdG8gc29sbGljaXR1ZGluIHV0IHN1c2NpcGl0IGEgZmV1Z2lhdCBldCBlcm9zJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtzbHVnJnF1b3Q7OiAmcXVvdDstJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtpbnZlbnRvcnkmcXVvdDs6IDMyLAogICAgICAgICAgICAmcXVvdDt1bml0X3ByaWNlJnF1b3Q7OiA4OC4yLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogOTcuMDIwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDI4OCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FsbHNwaWNlIC0gSmFtYWljYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIGFsaXF1ZXQgcHVsdmluYXIgc2VkIG5pc2wgbnVuYyByaG9uY3VzIGR1aSB2ZWwgc2VtIHNlZCBzYWdpdHRpcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MSwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNDYuNTMsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA1MS4xODMwMDAwMDAwMDAwMSwKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNCwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogNjYwLAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QW1hcmV0dG8mcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDt0ZW1wb3IgY29udmFsbGlzIG51bGxhIG5lcXVlIGxpYmVybyBjb252YWxsaXMgZWdldCBlbGVpZmVuZCBsdWN0dXMgdWx0cmljaWVzIGV1IG5pYmggcXVpc3F1ZSBpZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA1NywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTYuMzQsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDUuOTc0LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA0LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA3MzcsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBbmNob3Z5IFBhc3RlIC0gNTYgRyBUdWJlJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bGFjdXMgbW9yYmkgcXVpcyB0b3J0b3IgaWQgbnVsbGEgdWx0cmljZXMgYWxpcXVldCBtYWVjZW5hcyBsZW8gb2RpbyBjb25kaW1lbnR1bSBpZCBsdWN0dXMgbmVjIG1vbGVzdGllIHNlZCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA3MywKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogOTEuMjcsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDAuMzk3LAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA1MjAsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBBc2lhbiBTaHJpbXAgUm9sbCZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O21hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogNDcsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkyLjU4LAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAxLjgzODAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA2LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfSwKICAgICAgICB7CiAgICAgICAgICAgICZxdW90O2lkJnF1b3Q7OiA4NjQsCiAgICAgICAgICAgICZxdW90O3RpdGxlJnF1b3Q7OiAmcXVvdDtBcHBldGl6ZXIgLSBDcmFiIEFuZCBCcmllJnF1b3Q7LAogICAgICAgICAgICAmcXVvdDtkZXNjcmlwdGlvbiZxdW90OzogJnF1b3Q7bWV0dXMgc2FwaWVuIHV0IG51bmMgdmVzdGlidWx1bSBhbnRlIGlwc3VtIHByaW1pcyBpbiBmYXVjaWJ1cyBvcmNpIGx1Y3R1cyBldCB1bHRyaWNlcyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7c2x1ZyZxdW90OzogJnF1b3Q7LSZxdW90OywKICAgICAgICAgICAgJnF1b3Q7aW52ZW50b3J5JnF1b3Q7OiA5NCwKICAgICAgICAgICAgJnF1b3Q7dW5pdF9wcmljZSZxdW90OzogNzcuMjksCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiA4NS4wMTksCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDUsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYxNSwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtyaG9uY3VzIHNlZCB2ZXN0aWJ1bHVtIHNpdCBhbWV0IGN1cnN1cyBpZCB0dXJwaXMgaW50ZWdlciBhbGlxdWV0IG1hc3NhIGlkIGxvYm9ydGlzIGNvbnZhbGxpcyB0b3J0b3IgcmlzdXMgZGFwaWJ1cyBhdWd1ZSB2ZWwgYWNjdW1zYW4mcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogOTQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkzLjYsCiAgICAgICAgICAgICZxdW90O3ByaWNlX3dpdGhfdGF4JnF1b3Q7OiAxMDIuOTYwMDAwMDAwMDAwMDEsCiAgICAgICAgICAgICZxdW90O2NvbGxlY3Rpb24mcXVvdDs6IDQsCiAgICAgICAgICAgICZxdW90O2ltYWdlcyZxdW90OzogW10KICAgICAgICB9LAogICAgICAgIHsKICAgICAgICAgICAgJnF1b3Q7aWQmcXVvdDs6IDYwNCwKICAgICAgICAgICAgJnF1b3Q7dGl0bGUmcXVvdDs6ICZxdW90O0FwcGV0aXplciAtIFNhdXNhZ2UgUm9sbHMmcXVvdDssCiAgICAgICAgICAgICZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7OiAmcXVvdDtsdWN0dXMgZXQgdWx0cmljZXMgcG9zdWVyZSBjdWJpbGlhIGN1cmFlIG1hdXJpcyB2aXZlcnJhIGRpYW0gdml0YWUmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogMTMsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDkxLjYzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTAwLjc5MywKICAgICAgICAgICAgJnF1b3Q7Y29sbGVjdGlvbiZxdW90OzogNiwKICAgICAgICAgICAgJnF1b3Q7aW1hZ2VzJnF1b3Q7OiBbXQogICAgICAgIH0sCiAgICAgICAgewogICAgICAgICAgICAmcXVvdDtpZCZxdW90OzogMjU3LAogICAgICAgICAgICAmcXVvdDt0aXRsZSZxdW90OzogJnF1b3Q7QXBwZXRpemVyIC0gU2F1c2FnZSBSb2xscyZxdW90OywKICAgICAgICAgICAgJnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDs6ICZxdW90O2F0IHZlbGl0IGV1IGVzdCBjb25ndWUgZWxlbWVudHVtIGluIGhhYyBoYWJpdGFzc2UgcGxhdGVhIGRpY3R1bXN0IG1vcmJpIHZlc3RpYnVsdW0gdmVsaXQgaWQmcXVvdDssCiAgICAgICAgICAgICZxdW90O3NsdWcmcXVvdDs6ICZxdW90Oy0mcXVvdDssCiAgICAgICAgICAgICZxdW90O2ludmVudG9yeSZxdW90OzogODQsCiAgICAgICAgICAgICZxdW90O3VuaXRfcHJpY2UmcXVvdDs6IDk2LjQzLAogICAgICAgICAgICAmcXVvdDtwcmljZV93aXRoX3RheCZxdW90OzogMTA2LjA3MzAwMDAwMDAwMDAxLAogICAgICAgICAgICAmcXVvdDtjb2xsZWN0aW9uJnF1b3Q7OiA1LAogICAgICAgICAgICAmcXVvdDtpbWFnZXMmcXVvdDs6IFtdCiAgICAgICAgfQogICAgXQp9PC9wcmU+CiAgICAgICAgICAgICAgPC9kaXY+CiAgICAgICAgICAgIDwvZGl2PgoKICAgICAgICAgICAgCiAgICAgICAgICAgICAgCgogICAgICAgICAgICAgIAogICAgICAgICAgICAKICAgICAgICAgIAogICAgICAgIDwvZGl2PjwhLS0gLy5jb250ZW50IC0tPgogICAgICA8L2Rpdj48IS0tIC8uY29udGFpbmVyIC0tPgogICAgPC9kaXY+PCEtLSAuL3dyYXBwZXIgLS0+CgogICAgCiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsIGZhZGUiIGlkPSJmaWx0ZXJzTW9kYWwiIHRhYmluZGV4PSItMSIgcm9sZT0iZGlhbG9nIiBhcmlhLWxhYmVsbGVkYnk9ImZpbHRlcnMiIGFyaWEtaGlkZGVuPSJ0cnVlIj4KICA8ZGl2IGNsYXNzPSJtb2RhbC1kaWFsb2ciPgogICAgPGRpdiBjbGFzcz0ibW9kYWwtY29udGVudCI+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWhlYWRlciI+CiAgICAgICAgPGJ1dHRvbiB0eXBlPSJidXR0b24iIGNsYXNzPSJjbG9zZSIgZGF0YS1kaXNtaXNzPSJtb2RhbCIgYXJpYS1sYWJlbD0iQ2xvc2UiPjxzcGFuIGFyaWEtaGlkZGVuPSJ0cnVlIj4mdGltZXM7PC9zcGFuPjwvYnV0dG9uPgogICAgICAgIDxoNCBjbGFzcz0ibW9kYWwtdGl0bGUiPkZpbHRlcnM8L2g0PgogICAgPC9kaXY+CiAgICAgIDxkaXYgY2xhc3M9Im1vZGFsLWJvZHkiPgogICAgICAgICAgCiAgICAgICAgICAKICAgICAgICAgIAo8aDI+RmllbGQgZmlsdGVyczwvaDI+Cjxmb3JtIGNsYXNzPSJmb3JtIiBhY3Rpb249IiIgbWV0aG9kPSJnZXQiPgogICAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF9jb2xsZWN0aW9uX2lkIj5Db2xsZWN0aW9uOjwvbGFiZWw+CiAgICA8c2VsZWN0IG5hbWU9ImNvbGxlY3Rpb25faWQiIGlkPSJpZF9jb2xsZWN0aW9uX2lkIj4KICA8b3B0aW9uIHZhbHVlPSIiIHNlbGVjdGVkPi0tLS0tLS0tLTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSI3Ij5CYWtpbmc8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMyI+QmVhdXR5PC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjQiPkNsZWFuaW5nPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjEiPkZsb3dlcnM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iMiI+R3JvY2VyeTwvb3B0aW9uPgoKICA8b3B0aW9uIHZhbHVlPSIxMCI+TWFnYXppbmVzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjYiPlBldHM8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOCI+U3BpY2VzPC9vcHRpb24+CgogIDxvcHRpb24gdmFsdWU9IjUiPlN0YXRpb25hcnk8L29wdGlvbj4KCiAgPG9wdGlvbiB2YWx1ZT0iOSI+VG95czwvb3B0aW9uPgoKPC9zZWxlY3Q+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19ndCI+VW5pdCBwcmljZSBpcyBncmVhdGVyIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2d0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19ndCI+CiAgICAKICAgIAogIDwvcD4KCiAgCiAgPHA+CiAgICA8bGFiZWwgZm9yPSJpZF91bml0X3ByaWNlX19sdCI+VW5pdCBwcmljZSBpcyBsZXNzIHRoYW46PC9sYWJlbD4KICAgIDxpbnB1dCB0eXBlPSJudW1iZXIiIG5hbWU9InVuaXRfcHJpY2VfX2x0IiBzdGVwPSJhbnkiIGlkPSJpZF91bml0X3ByaWNlX19sdCI+CiAgICAKICAgIAogICAgICAKICAgIAogIDwvcD4KICAgIDxidXR0b24gdHlwZT0ic3VibWl0IiBjbGFzcz0iYnRuIGJ0bi1wcmltYXJ5Ij5TdWJtaXQ8L2J1dHRvbj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAo8aDI+U2VhcmNoPC9oMj4KPGZvcm0gY2xhc3M9ImZvcm0taW5saW5lIj4KICA8ZGl2IGNsYXNzPSJmb3JtLWdyb3VwIj4KICAgIDxkaXYgY2xhc3M9ImlucHV0LWdyb3VwIj4KICAgICAgPGlucHV0IHR5cGU9InRleHQiIGNsYXNzPSJmb3JtLWNvbnRyb2wiIHN0eWxlPSJ3aWR0aDogMzUwcHgiIG5hbWU9InNlYXJjaCIgdmFsdWU9IiI+CiAgICAgIDxzcGFuIGNsYXNzPSJpbnB1dC1ncm91cC1idG4iPgogICAgICAgIDxidXR0b24gY2xhc3M9ImJ0biBidG4tZGVmYXVsdCIgdHlwZT0ic3VibWl0Ij48c3BhbiBjbGFzcz0iZ2x5cGhpY29uIGdseXBoaWNvbi1zZWFyY2giIGFyaWEtaGlkZGVuPSJ0cnVlIj48L3NwYW4+IFNlYXJjaDwvYnV0dG9uPgogICAgICA8L3NwYW4+CiAgICA8L2Rpdj4KICA8L2Rpdj4KPC9mb3JtPgoKICAgICAgICAgIAogICAgICAgICAgPGhyLz4KICAgICAgICAgIAoKPGgyPk9yZGVyaW5nPC9oMj4KPGRpdiBjbGFzcz0ibGlzdC1ncm91cCI+CiAgICAKICAgICAgICAKICAgICAgICAgICAgPGEgaHJlZj0iL3N0b3JlL3Byb2R1Y3RzLz9vcmRlcmluZz11bml0X3ByaWNlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj51bml0X3ByaWNlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LXVuaXRfcHJpY2UiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPnVuaXRfcHJpY2UgLSBkZXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9bGFzdF91cGRhdGUiIGNsYXNzPSJsaXN0LWdyb3VwLWl0ZW0iPmxhc3RfdXBkYXRlIC0gYXNjZW5kaW5nPC9hPgogICAgICAgIAogICAgCiAgICAgICAgCiAgICAgICAgICAgIDxhIGhyZWY9Ii9zdG9yZS9wcm9kdWN0cy8/b3JkZXJpbmc9LWxhc3RfdXBkYXRlIiBjbGFzcz0ibGlzdC1ncm91cC1pdGVtIj5sYXN0X3VwZGF0ZSAtIGRlc2NlbmRpbmc8L2E+CiAgICAgICAgCiAgICAKPC9kaXY+CgogICAgICAgICAgCiAgICAgIDwvZGl2PgogICAgPC9kaXY+CiAgPC9kaXY+CjwvZGl2PgoKICAgIAoKICAgIAogICAgICA8c2NyaXB0IHR5cGU9ImFwcGxpY2F0aW9uL2pzb24iIGlkPSJkcmZfY3NyZiI+CiAgICAgICAgewogICAgICAgICAgImNzcmZIZWFkZXJOYW1lIjogIlgtQ1NSRlRPS0VOIiwKICAgICAgICAgICJjc3JmVG9rZW4iOiAiSTFrVzFlN2xwcjRwenpJdGZMd0kxQjZiRHBLRTFLVEVTRFhxb21Nd0o0dEI1MnZaaExGb0F0cUh0T0pvejJNWSIKICAgICAgICB9CiAgICAgIDwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9qcXVlcnktMy43LjEubWluLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvYWpheC1mb3JtLmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvY3NyZi5qcyI+PC9zY3JpcHQ+CiAgICAgIDxzY3JpcHQgc3JjPSIvc3RhdGljL3Jlc3RfZnJhbWV3b3JrL2pzL2Jvb3RzdHJhcC5taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9wcmV0dGlmeS1taW4uanMiPjwvc2NyaXB0PgogICAgICA8c2NyaXB0IHNyYz0iL3N0YXRpYy9yZXN0X2ZyYW1ld29yay9qcy9kZWZhdWx0LmpzIj48L3NjcmlwdD4KICAgICAgPHNjcmlwdCBzcmM9Ii9zdGF0aWMvcmVzdF9mcmFtZXdvcmsvanMvbG9hZC1hamF4LWZvcm0uanMiPjwvc2NyaXB0PgogICAgCgogIDwvYm9keT4KICAKPC9odG1sPgo=','','{\"Content-Type\": \"text/html; charset=utf-8\", \"Vary\": \"Accept\", \"Allow\": \"GET, POST, HEAD, OPTIONS\"}','008b6fd9-4dbb-47e0-8416-11ca9c226780');
/*!40000 ALTER TABLE `silk_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silk_sqlquery`
--

DROP TABLE IF EXISTS `silk_sqlquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `silk_sqlquery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `query` longtext NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `time_taken` double DEFAULT NULL,
  `traceback` longtext NOT NULL,
  `request_id` varchar(36) DEFAULT NULL,
  `identifier` int NOT NULL,
  `analysis` longtext,
  PRIMARY KEY (`id`),
  KEY `silk_sqlquery_request_id_6f8f0527_fk_silk_request_id` (`request_id`),
  CONSTRAINT `silk_sqlquery_request_id_6f8f0527_fk_silk_request_id` FOREIGN KEY (`request_id`) REFERENCES `silk_request` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silk_sqlquery`
--

LOCK TABLES `silk_sqlquery` WRITE;
/*!40000 ALTER TABLE `silk_sqlquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `silk_sqlquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_address`
--

DROP TABLE IF EXISTS `store_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_address_customer_id_080cf871_fk_store_customer_id` (`customer_id`),
  CONSTRAINT `store_address_customer_id_080cf871_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_address`
--

LOCK TABLES `store_address` WRITE;
/*!40000 ALTER TABLE `store_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart` (
  `id` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cartitem`
--

DROP TABLE IF EXISTS `store_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint unsigned NOT NULL,
  `cart_id` char(32) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_cartitem_cart_id_product_id_bd38e607_uniq` (`cart_id`,`product_id`),
  KEY `store_cartitem_product_id_4238d443_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_cartitem_cart_id_4f60ac05_fk` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  CONSTRAINT `store_cartitem_product_id_4238d443_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cartitem`
--

LOCK TABLES `store_cartitem` WRITE;
/*!40000 ALTER TABLE `store_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_collection`
--

DROP TABLE IF EXISTS `store_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_collection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `featured_product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_collection_featured_product_id_001d6455_fk_store_pro` (`featured_product_id`),
  CONSTRAINT `store_collection_featured_product_id_001d6455_fk_store_pro` FOREIGN KEY (`featured_product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_collection`
--

LOCK TABLES `store_collection` WRITE;
/*!40000 ALTER TABLE `store_collection` DISABLE KEYS */;
INSERT INTO `store_collection` VALUES (1,'Flowers',NULL),(2,'Grocery',NULL),(3,'Beauty',NULL),(4,'Cleaning',NULL),(5,'Stationary',NULL),(6,'Pets',NULL),(7,'Baking',NULL),(8,'Spices',NULL),(9,'Toys',NULL),(10,'Magazines',NULL);
/*!40000 ALTER TABLE `store_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `membership` varchar(1) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_customer_user_id_04276401_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'',NULL,'B',1),(2,'',NULL,'B',2);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `placed_at` datetime(6) NOT NULL,
  `payment_status` varchar(1) NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint unsigned NOT NULL,
  `unit_price` decimal(6,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `unit_price` decimal(6,2) NOT NULL,
  `inventory` int NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `collection_id` bigint NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_collection_id_2914d2ba_fk_store_collection_id` (`collection_id`),
  KEY `store_product_slug_6de8ee4b` (`slug`),
  CONSTRAINT `store_product_collection_id_2914d2ba_fk_store_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `store_collection` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product_promotions`
--

DROP TABLE IF EXISTS `store_product_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product_promotions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `promotion_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_product_promotions_product_id_promotion_id_d02f5543_uniq` (`product_id`,`promotion_id`),
  KEY `store_product_promot_promotion_id_4bd05cf2_fk_store_pro` (`promotion_id`),
  CONSTRAINT `store_product_promot_promotion_id_4bd05cf2_fk_store_pro` FOREIGN KEY (`promotion_id`) REFERENCES `store_promotion` (`id`),
  CONSTRAINT `store_product_promotions_product_id_c302ec3a_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product_promotions`
--

LOCK TABLES `store_product_promotions` WRITE;
/*!40000 ALTER TABLE `store_product_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_product_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_productimage`
--

DROP TABLE IF EXISTS `store_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_productimage_product_id_e50e4046_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_productimage_product_id_e50e4046_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_productimage`
--

LOCK TABLES `store_productimage` WRITE;
/*!40000 ALTER TABLE `store_productimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_promotion`
--

DROP TABLE IF EXISTS `store_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_promotion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_promotion`
--

LOCK TABLES `store_promotion` WRITE;
/*!40000 ALTER TABLE `store_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_review`
--

DROP TABLE IF EXISTS `store_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_review_product_id_abc413b2_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_review_product_id_abc413b2_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_review`
--

LOCK TABLES `store_review` WRITE;
/*!40000 ALTER TABLE `store_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tag`
--

DROP TABLE IF EXISTS `tags_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tag`
--

LOCK TABLES `tags_tag` WRITE;
/*!40000 ALTER TABLE `tags_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_taggeditem`
--

DROP TABLE IF EXISTS `tags_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_taggeditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_taggeditem_content_type_id_03c84c71_fk_django_co` (`content_type_id`),
  KEY `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` (`tag_id`),
  CONSTRAINT `tags_taggeditem_content_type_id_03c84c71_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`),
  CONSTRAINT `tags_taggeditem_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_taggeditem`
--

LOCK TABLES `tags_taggeditem` WRITE;
/*!40000 ALTER TABLE `tags_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 11:20:07