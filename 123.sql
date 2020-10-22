-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.21

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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add menu',8,'add_menu'),(30,'Can change menu',8,'change_menu'),(31,'Can delete menu',8,'delete_menu'),(32,'Can view menu',8,'view_menu');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$4wGjqmgUpqDD$tn631k0RYAnucW8cPn2NYDDITZv6Bcblw82cq53LTMk=','2020-10-09 04:07:10.751149',1,'chan','','','',1,1,'2020-10-09 01:39:51.112746');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawling_post`
--

DROP TABLE IF EXISTS `crawling_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crawling_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawling_post`
--

LOCK TABLES `crawling_post` WRITE;
/*!40000 ALTER TABLE `crawling_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawling_post` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'crawling','menu'),(7,'crawling','post'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-09 01:30:25.124944'),(2,'auth','0001_initial','2020-10-09 01:30:25.633889'),(3,'admin','0001_initial','2020-10-09 01:30:26.561583'),(4,'admin','0002_logentry_remove_auto_add','2020-10-09 01:30:26.839480'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-09 01:30:26.854969'),(6,'contenttypes','0002_remove_content_type_name','2020-10-09 01:30:27.021905'),(7,'auth','0002_alter_permission_name_max_length','2020-10-09 01:30:27.163971'),(8,'auth','0003_alter_user_email_max_length','2020-10-09 01:30:27.232250'),(9,'auth','0004_alter_user_username_opts','2020-10-09 01:30:27.247982'),(10,'auth','0005_alter_user_last_login_null','2020-10-09 01:30:27.358153'),(11,'auth','0006_require_contenttypes_0002','2020-10-09 01:30:27.362150'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-09 01:30:27.374749'),(13,'auth','0008_alter_user_username_max_length','2020-10-09 01:30:27.520252'),(14,'auth','0009_alter_user_last_name_max_length','2020-10-09 01:30:27.646807'),(15,'auth','0010_alter_group_name_max_length','2020-10-09 01:30:27.670221'),(16,'auth','0011_update_proxy_permissions','2020-10-09 01:30:27.681985'),(17,'crawling','0001_initial','2020-10-09 01:30:27.738542'),(18,'sessions','0001_initial','2020-10-09 01:30:27.800968'),(19,'crawling','0002_auto_20201009_1124','2020-10-09 02:25:01.744860'),(20,'crawling','0003_auto_20201009_1129','2020-10-09 02:30:55.097931'),(21,'crawling','0004_auto_20201009_1138','2020-10-09 02:40:26.680458'),(22,'crawling','0005_auto_20201009_1141','2020-10-09 02:42:06.229743'),(23,'crawling','0006_merge_20201009_1259','2020-10-09 03:59:24.880536'),(24,'crawling','0007_auto_20201009_1313','2020-10-09 04:14:06.694791'),(25,'crawling','0008_auto_20201009_1333','2020-10-09 04:33:48.773104'),(26,'crawling','0009_auto_20201009_1339','2020-10-09 04:40:16.585178'),(27,'crawling','0010_menu','2020-10-10 02:11:50.690804');
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
INSERT INTO `django_session` VALUES ('asrs0m06ot0187lpves0xhf63fmjugxl','MTY2NmFjMTVmODM0MDFjYWM3ZjE2ZDFjNTdhYTMyNDk3NmViNzAwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDZiODA0YTI5OTQ0MGJhZDU0ODVjMjRlOGFjNjk0ZWYyYmU2NDI1In0=','2020-10-23 01:40:20.945825'),('nt8ww49dc0fwy67whl8mg5eml5b6l5t0','MTY2NmFjMTVmODM0MDFjYWM3ZjE2ZDFjNTdhYTMyNDk3NmViNzAwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDZiODA0YTI5OTQ0MGJhZDU0ODVjMjRlOGFjNjk0ZWYyYmU2NDI1In0=','2020-10-23 04:07:10.758955');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'\n	김치만두전골\r\n스틱햄고추장범벅\r\n숙주나물무침\r\n얼갈이부추겉절이\r\n모듬장아찌무침\r\n잡곡밥&백미밥\r\n배추김치\r\n양상추샐러드\n','월요일'),(2,'\n	제육고추장불고기\r\n김치콩나물국\r\n마늘쫑어묵볶음\r\n두부야채두루치기\r\n콩나물아삭무침\r\n잡곡밥&백미밥\r\n배추김치\r\n그린샐러드\n','화요일'),(3,'\n	삼겹살왕소금구이\r\n두부야채된장찌개\r\n파채콩나물아삭새콤무침\r\n모듬쌈/쌈장\r\n감자채볶음\r\n잡곡밥/백미밥\r\n배추김치\r\n로제소스떡샐러드\n','수요일'),(4,'\n	교동짬뽕한그릇	\r\n추가밥	\r\n만두탕수육	\r\n양파&적양파/고추장	\r\n노란단무지	\r\n양배추당근샐러드	\r\n배추김치	\r\n요쿠르트	\n','목요일'),(5,'\n	한글날																','금요일'),(6,'\n','토요일'),(7,'\n	숯불향가득간장제육불고기\r\n건새우배추된장국\r\n모듬잡채\r\n참나물두부범벅\r\n상추양파새우젓겉절이\r\n잡곡밥&백미밥\r\n배추김치\r\n양상추샐러드																','월요일'),(8,'\n	간장닭순살볶음\r\n멸치김칫국\r\n팽이버섯맛살겨자냉채\r\n스팀두부/양념간장\r\n콩나물청경채굴소스볶음\r\n잡곡밥&백미밥\r\n배추김치\r\n그린샐러드\n','화요일'),(9,'\n	온도토리묵밥\r\n조치원파닭\r\n오이부추송송이\r\n학교앞떡볶기\r\n쫑쫑이양념김치\r\n잡곡밥/백미밥\r\n따뜻한식혜한잔\r\n양배추당근샐러드\n','수요일'),(10,'\n	쇠고기카레라이스	\r\n계란후라이	\r\n직접만든수제탕수육	\r\n햄어묵간장조림	\r\n미나리무우생채	\r\n백미밥	\r\n배추김치	\r\n초록채소샐러드	\n','목요일'),(11,'\n	잔치국수\r\n김밥\n\r\n추억의꽈배기튀김\r\n푸르스름달콤~~귤\r\n양념김치\r\n얼갈이겉절이\r\n양상추샐러드\n','금요일'),(12,'\n','토요일');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'hongik','dddd'),(2,'hongik','dddd'),(3,'hongik','dddd'),(4,'2021.2.23(화) ~ 2.26(금)',' 2021학년도 1학기 수강신청(예정)'),(5,'2019. 12월 ~ 2020. 2월',' 2020학년도 신입생 정시 입학전형'),(6,'2019. 12월 ~ 2020. 2월',' 2020학년도 편입생 입학전형'),(7,'2020.1.28(화) ~ 2.3(월)',' 2020학년도 1학기 복학 신청'),(8,'2.4(화) ~ 2.5(수)',' 2020학년도 1학기 수강과목 사전선택'),(9,'2.21(금)',' 2019학년도 전기 학위 수여식(제70회)'),(10,'2.21(금) ~ 2.28(금)',' 2020학년도 1학기 등록 '),(11,'2.22(토) ~ 2.28(금)',' 2020학년도 1학기 휴학 신청'),(12,'2.24(월)',' 2020학년도 신입생 입학식'),(13,'2.24(월) ~ 2.27(목)',' 2020학년도 1학기 수강신청'),(14,'3.16(월)',' 2020학년도 1학기 개강'),(15,'3.16(월) ~ 3.20(금)',' 2020학년도 1학기 수강신청 정정 '),(16,'5월 ~ 7월',' 2020학년도 후기 신입생 (외국인) 입학전형'),(17,'5월 ~ 6월',' 2020학년도 2학기 교내장학금 신청(기간 별도 공지)'),(18,'6.26(금)',' 2020학년도 1학기 종강'),(19,'6.19(금) ~ 7.7(화) ',' 2020학년도 1학기 성적입력 및 정정(예정)'),(20,'6.29(월) ~ 7.17(금)',' 2020학년도 하계 계절학기(예정)'),(21,'6.27(토)',' 개교기념일'),(22,'7월 ~ 10월',' 2021학년도 신입생 재외국민 특별전형 '),(23,'7월 ~ 11월',' 2021학년도 전기 신입생(외국인) 입학전형 '),(24,'7.27(금) ~ 8.2(일)',' 2020학년도 2학기 복학 신청'),(25,'8.4(화) ~ 8.5(수)',' 2020학년도 2학기 수강과목 사전선택(예정)'),(26,'8.21(금)',' 2019학년도 후기 학위수여식(제70회)'),(27,'8.24(월) ~ 8.27(목) ',' 2020학년도 2학기 수강신청'),(28,'8.24(월) ~ 8.28(금)',' 2020학년도 2학기 등록 및 휴학 신청'),(29,'9.1(화)',' 2020학년도 2학기 개강'),(30,'9.1(화) ~ 9.7(월)',' 2020학년도 2학기 수강신청 정정'),(31,'9월 ~ 12월',' 2021학년도 신입생 수시모집 입학전형'),(32,'11월 ~ 12월',' 2021학년도 1학기 교내장학금 신청(기간 별도 공지)'),(33,'12.14(월)',' 2020학년도 2학기 종강'),(34,'12.14(월) ~ 2021.1.4(월)',' 2020학년도 2학기 성적입력 및 정정(예정)'),(35,'12.15(화) ~ 12.18(금)',' 2020학년도 2학기 공휴일로 인한 수업보강기간'),(36,'12.28(월) ~ 2021.1.20(수)',' 2020학년도 동계 계절학기(예정)'),(37,'12월 ~ 2021. 2월',' 2021학년도 신입생 정시 입학전형'),(38,'12월 ~ 2021. 2월',' 2021학년도 편입생 입학전형'),(39,'2021.1.27(수) ~ 2.2(화)',' 2021학년도 1학기 복학 신청'),(40,'2021.2.4(목) ~ 2.5(금)',' 2021학년도 1학기 수강과목 사전선택(예정)'),(41,'2021.2.22(월)',' 2020학년도 전기 학위 수여식(제71회)'),(42,'2021.2.23(화)',' 2021학년도 신입생 입학식'),(43,'2021.2.19(금) ~ 2.25(목)',' 2021학년도 1학기 등록 (예정)'),(44,'2021.2.23(화) ~ 2.28(일)',' 2021학년도 1학기 휴학 신청(예정)'),(45,'2021.2.23(화) ~ 2.26(금)',' 2021학년도 1학기 수강신청(예정)'),(46,'2019. 12월 ~ 2020. 2월',' 2020학년도 신입생 정시 입학전형'),(47,'2019. 12월 ~ 2020. 2월',' 2020학년도 편입생 입학전형'),(48,'2020.1.28(화) ~ 2.3(월)',' 2020학년도 1학기 복학 신청'),(49,'2.4(화) ~ 2.5(수)',' 2020학년도 1학기 수강과목 사전선택'),(50,'2.21(금)',' 2019학년도 전기 학위 수여식(제70회)'),(51,'2.21(금) ~ 2.28(금)',' 2020학년도 1학기 등록 '),(52,'2.22(토) ~ 2.28(금)',' 2020학년도 1학기 휴학 신청'),(53,'2.24(월)',' 2020학년도 신입생 입학식'),(54,'2.24(월) ~ 2.27(목)',' 2020학년도 1학기 수강신청'),(55,'3.16(월)',' 2020학년도 1학기 개강'),(56,'3.16(월) ~ 3.20(금)',' 2020학년도 1학기 수강신청 정정 '),(57,'5월 ~ 7월',' 2020학년도 후기 신입생 (외국인) 입학전형'),(58,'5월 ~ 6월',' 2020학년도 2학기 교내장학금 신청(기간 별도 공지)'),(59,'6.26(금)',' 2020학년도 1학기 종강'),(60,'6.19(금) ~ 7.7(화) ',' 2020학년도 1학기 성적입력 및 정정(예정)'),(61,'6.29(월) ~ 7.17(금)',' 2020학년도 하계 계절학기(예정)'),(62,'6.27(토)',' 개교기념일'),(63,'7월 ~ 10월',' 2021학년도 신입생 재외국민 특별전형 '),(64,'7월 ~ 11월',' 2021학년도 전기 신입생(외국인) 입학전형 '),(65,'7.27(금) ~ 8.2(일)',' 2020학년도 2학기 복학 신청'),(66,'8.4(화) ~ 8.5(수)',' 2020학년도 2학기 수강과목 사전선택(예정)'),(67,'8.21(금)',' 2019학년도 후기 학위수여식(제70회)'),(68,'8.24(월) ~ 8.27(목) ',' 2020학년도 2학기 수강신청'),(69,'8.24(월) ~ 8.28(금)',' 2020학년도 2학기 등록 및 휴학 신청'),(70,'9.1(화)',' 2020학년도 2학기 개강'),(71,'9.1(화) ~ 9.7(월)',' 2020학년도 2학기 수강신청 정정'),(72,'9월 ~ 12월',' 2021학년도 신입생 수시모집 입학전형'),(73,'11월 ~ 12월',' 2021학년도 1학기 교내장학금 신청(기간 별도 공지)'),(74,'12.14(월)',' 2020학년도 2학기 종강'),(75,'12.14(월) ~ 2021.1.4(월)',' 2020학년도 2학기 성적입력 및 정정(예정)'),(76,'12.15(화) ~ 12.18(금)',' 2020학년도 2학기 공휴일로 인한 수업보강기간'),(77,'12.28(월) ~ 2021.1.20(수)',' 2020학년도 동계 계절학기(예정)'),(78,'12월 ~ 2021. 2월',' 2021학년도 신입생 정시 입학전형'),(79,'12월 ~ 2021. 2월',' 2021학년도 편입생 입학전형'),(80,'2021.1.27(수) ~ 2.2(화)',' 2021학년도 1학기 복학 신청'),(81,'2021.2.4(목) ~ 2.5(금)',' 2021학년도 1학기 수강과목 사전선택(예정)'),(82,'2021.2.22(월)',' 2020학년도 전기 학위 수여식(제71회)'),(83,'2021.2.23(화)',' 2021학년도 신입생 입학식'),(84,'2021.2.19(금) ~ 2.25(목)',' 2021학년도 1학기 등록 (예정)'),(85,'2021.2.23(화) ~ 2.28(일)',' 2021학년도 1학기 휴학 신청(예정)');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testdb`
--

DROP TABLE IF EXISTS `testdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testdb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testdb`
--

LOCK TABLES `testdb` WRITE;
/*!40000 ALTER TABLE `testdb` DISABLE KEYS */;
INSERT INTO `testdb` VALUES (1,'hongik','dddd'),(2,'hongik','dddd'),(3,'hongik','dddd');
/*!40000 ALTER TABLE `testdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-22 10:29:43
