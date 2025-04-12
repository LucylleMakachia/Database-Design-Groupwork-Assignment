CREATE DATABASE  IF NOT EXISTS `bookstoredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstoredb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoredb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 victoria St','Lagos',1),(2,'456 Manna St','Abuja',1),(3,'789 Elm St','Nairobi',2),(4,'41 Pepple St','Mombasa',2),(5,'2 Abdullahi St','Cairo',3),(6,'303 Noma St','Alexandria',3),(7,'94 Jadore St','Cotonou',4),(8,'5 Cherry St','Porto-Novo',4),(9,'96 Mensah St','Accra',5),(10,'7 Kwame St','Kumasi',5),(11,'80 Zulu St','Johannesburg',6),(12,'9 Johnson St','Cape Town',6),(13,'10 Redwood St','Maseru',7),(14,'111 Moonbeam St','Hlotse',7),(15,'32 Sunshine St','Kampala',8),(16,'13 Lova St','Entebbe',8),(17,'81 Somewhere St','Douala',9),(18,'15 William St','Yaoundé',9),(19,'11 Oakley St','Casablanca',10),(20,'171 Firmond St','Rabat',10),(21,'68 Cider St','Gaborone',11),(22,'19 Margaret St','Francistown',11),(23,'102 Pencil St','Kigali',12),(24,'121 Realty St','Butare',12),(25,'93 Ashley St','Lagos',1),(26,'23 Oakley St','Abuja',1),(27,'44 Elijah St','Nairobi',2),(28,'25 Beech St','Mombasa',2),(29,'62 Wilnard St','Cairo',3),(30,'27 Christopher St','Alexandria',3),(31,'82 Napoleon St','Cotonou',4),(32,'29 Charley St','Porto-Novo',4),(33,'33 Raymond St','Accra',5),(34,'11 Speedy St','Kumasi',5),(35,'30  St','Johannesburg',6),(36,'2 Greenwood St','Cape Town',6),(37,'32 Montley St','Maseru',7),(38,'35 Parley St','Hlotse',7),(39,'66 Church St','Kampala',8),(40,'37 Williamson St','Entebbe',8),(41,'83 Pak St','Douala',9),(42,'99 Carbon St','Yaoundé',9),(43,'40 Collins St','Casablanca',10),(44,'11 Wilderness St','Rabat',10),(45,'42 Hardwood St','Gaborone',11),(46,'34 Montana St','Francistown',11),(47,'43 Pier St','Kigali',12),(48,'54 Crave St','Butare',12),(49,'46 Willow St','Lagos',1),(50,'74 Blue St','Abuja',1),(51,'88 Elim St','Nairobi',2),(52,'49 Birch St','Mombasa',2),(53,'38 Maple St','Cairo',3),(54,'51 Christine St','Alexandria',3),(55,'32 Sunny St','Cotonou',4),(56,'72 Money St','Porto-Novo',4),(57,'44 Friend St','Accra',5),(58,'55 Redmoon St','Kumasi',5),(59,'26 Carl St','Johannesburg',6),(60,'57 Maple St','Cape Town',6),(61,'85 Pine St','Maseru',7),(62,'9 Willow St','Hlotse',7),(63,'60 Molly St','Kampala',8),(64,'1 Carl St','Entebbe',8),(65,'72 Lecole St','Douala',9),(66,'33 Moontown St','Yaoundé',9),(67,'74 Staple St','Casablanca',10),(68,'45 Red St','Rabat',10),(69,'66 Woody St','Gaborone',11),(70,'24 Pillar St','Francistown',11),(71,'88 Mead St','Kigali',12),(72,'69 Stealth St','Butare',12),(73,'11 Brock St','Johannesburg',6),(74,'20 Supersaver St','Ikeja',1),(75,'6 Newdrive St','Port-Harcourt',12),(76,'119 Bentley St','Accra',3),(77,'72 Rocky St','Casablanca',10),(78,'69 Selene St','Yaounde',9),(79,'33 Firewall St','Kigali',12),(80,'24 Soul St','Butare',12),(81,'72 dolly St','Capetown',6),(82,'45 Fire St','Owerri',1),(83,'35 Orvhubu St','Warri',1),(84,'80 safeway St','Rabat',10),(85,'116 Renegade St','Douala',9),(86,'98 Hardrock St','Maseru',7),(87,'23 Firefly St','Cotono',4),(88,'119 Mustapha St','Cairo ',3),(89,'72 Coleen St','Porto-Novo',4),(90,'89 Raymond St','Hlotse',7),(91,'12 Sage St','Butare',12),(92,'16 Ace St','Butare',12),(93,'59 Alpha St','Gaborone',11),(94,'78 Omega St','Butare',12),(95,'99 Phi St','Francistown',11),(96,'10 Gwagalada St','Abuja',1),(97,'19 Rala St','Kumasi',5),(98,'229 Stolly St','Accra',5),(99,'9 Ola St','Lagos',1),(100,'20 Sally St','Nairobi',2),(101,'16 Alex St','Accra',5);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_status`
--

DROP TABLE IF EXISTS `address_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_status`
--

LOCK TABLES `address_status` WRITE;
/*!40000 ALTER TABLE `address_status` DISABLE KEYS */;
INSERT INTO `address_status` VALUES (1,'Current'),(2,'Old');
/*!40000 ALTER TABLE `address_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Ngũgĩ Wa Thiongo'),(2,'Ngũgĩ Wa Thiongo'),(3,'Ngũgĩ Wa Thiongo'),(4,'Tendai Huchu'),(5,'Chinua Achebe'),(6,'Chinua Achebe'),(7,'Chinua Achebe'),(8,'Chinua Achebe'),(9,'Chinua Achebe'),(10,'Chinua Achebe'),(11,'Yaa Gyasi'),(12,'Mariama Bâ'),(13,'Lola Shoneyin'),(14,'Lauren Beukes'),(15,'Lauren Beukes'),(16,'Ousmane Sembene'),(17,'Nelson Mandela'),(18,'Ayi Kwei Armah'),(19,'Chimamanda Ngozi Adichie'),(20,'Chimamanda Ngozi Adichie'),(21,'Chimamanda Ngozi Adichie'),(22,'Katama G.C. Mkang'),(23,'Laila Lalami'),(24,'Ben Okri'),(25,'Lauen Beukes'),(26,'Ishmael Beah'),(27,'NoViolet Bulawayo'),(28,'Chigozie Obioma'),(29,'Buchi Emecheta'),(30,'Buchi Emecheta'),(31,'Buchi Emecheta'),(32,'Nadine Gordimer'),(33,'Nadine Gordimer'),(34,'Ken Walibora'),(35,'Assumpta K. Matei'),(36,'Yusuf M. kingala'),(37,'Alain Mabanckou'),(38,'Alain Mabanckou'),(39,'Alain Mabanckou'),(40,'Fatou Doime'),(41,'Djaili Amadou Amal'),(42,'Kamel Daoud'),(43,'Mongo Beti'),(44,'Michael Crichton'),(45,'George Orwell'),(46,'J.R.R Tolkien'),(47,'Mary Higgins Clark'),(48,'Khaled Hosseini'),(49,'Yann Martel'),(50,'Mary Higgins Clark'),(51,'Mary Higgins Clark');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `publisher_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `book_language` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Petals of Blood',1,1),(2,'A Grain of Wheat',2,1),(3,'Shetani Msalabani',3,3),(4,'The Hairdresser of Harare',4,1),(5,'Things Fall Apart',5,1),(6,'Anthills of the Savannah',6,1),(7,'Arrow of God',7,1),(8,'No Longer at Ease',8,1),(9,'A Man of The People',9,1),(10,'There was a Country',10,1),(11,'Homegoing',11,1),(12,'So Long a Letter',12,2),(13,'The Secret Lives of Baba Segis Wives',13,1),(14,'Zoo City',14,1),(15,'The Shining Girls',15,1),(16,'God’s Bits of Wood',16,2),(17,'Long Walk To Freedom',17,1),(18,'The Beautyful Ones Are Not Yet Born',18,1),(19,'Purple Hibiscus',19,1),(20,'Half of a Yellow Sun',20,1),(21,'Americanah',21,1),(22,'Walenisi',22,3),(23,'Secret Son',23,1),(24,'The Famished Road',24,1),(25,'Afterland',25,1),(26,'A Long Way Gone',26,1),(27,'We Need New Names',27,1),(28,'The Fishermen',28,1),(29,'The Joys of Motherhood',29,1),(30,'The Bride Price',30,1),(31,'The Slave Girl',31,1),(32,'The Conservationist',32,1),(33,'Julys People',33,1),(34,'Siku Njema',34,3),(35,'Chozi La Heri',35,3),(36,'Anasa',36,3),(37,'Black Moses',37,2),(38,'Memoirs of a Porcupine',38,2),(39,'Broken Glass',39,2),(40,'The belly of the Atlantic',40,2),(41,'The Impatient',41,2),(42,'The Meursault Investigation',42,2),(43,'Mission to kala',43,2),(44,'Jurassic park',44,1),(45,'Animal Farm',45,1),(46,'The Lord of the Rings',46,1),(47,'While My Pretty One Sleeps',47,1),(48,'The Kite Runner',48,1),(49,'Life of Pi',49,1),(50,'A Stranger is Watching',50,1),(51,'Where are the Children',51,1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_author` (
  `book_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_language`
--

DROP TABLE IF EXISTS `book_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_language`
--

LOCK TABLES `book_language` WRITE;
/*!40000 ALTER TABLE `book_language` DISABLE KEYS */;
INSERT INTO `book_language` VALUES (1,'English'),(2,'French'),(3,'Swahili');
/*!40000 ALTER TABLE `book_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Nigeria'),(2,'Kenya'),(3,'Egypt'),(4,'Benin Republic'),(5,'Ghana'),(6,'South Africa'),(7,'Lesotho'),(8,'Uganda'),(9,'Cameroun'),(10,'Morroco'),(11,'Botswana'),(12,'Rwanda');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_order`
--

DROP TABLE IF EXISTS `cust_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cust_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `method_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `shipping_method_id` (`method_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `cust_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `cust_order_ibfk_2` FOREIGN KEY (`method_id`) REFERENCES `shipping_method` (`method_id`),
  CONSTRAINT `cust_order_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_order`
--

LOCK TABLES `cust_order` WRITE;
/*!40000 ALTER TABLE `cust_order` DISABLE KEYS */;
INSERT INTO `cust_order` VALUES (101,1,'2025-01-01',1,1),(102,2,'2025-01-02',2,2),(103,3,'2025-01-03',3,3),(104,4,'2025-01-04',4,4),(105,5,'2025-01-05',1,1),(106,6,'2025-01-06',2,2),(107,7,'2025-01-07',3,3),(108,8,'2025-01-08',4,4),(109,9,'2025-01-09',1,1),(110,10,'2025-01-10',2,2),(111,11,'2025-01-11',3,3),(112,12,'2025-01-12',4,4),(113,13,'2025-01-13',1,1),(114,14,'2025-01-14',2,2),(115,15,'2025-01-15',3,3),(116,16,'2025-01-16',4,4),(117,17,'2025-01-17',1,1),(118,18,'2025-01-18',2,2),(119,19,'2025-01-19',3,3),(120,20,'2025-01-20',4,4),(121,21,'2025-01-21',1,1),(122,22,'2025-01-22',2,2),(123,23,'2025-01-23',3,3),(124,24,'2025-01-24',4,4),(125,25,'2025-01-25',1,1),(126,26,'2025-01-26',2,2),(127,27,'2025-01-27',3,3),(128,28,'2025-01-28',4,4),(129,29,'2025-01-29',1,1),(130,30,'2025-01-30',2,2),(131,31,'2025-01-31',3,3),(132,32,'2025-02-01',4,4),(133,33,'2025-02-02',1,1),(134,34,'2025-02-03',2,2),(135,35,'2025-02-04',3,3),(136,36,'2025-02-05',4,4),(137,37,'2025-02-06',1,1),(138,38,'2025-02-07',2,2),(139,39,'2025-02-08',3,3),(140,40,'2025-02-09',4,4),(141,41,'2025-02-10',1,1),(142,42,'2025-02-11',2,2),(143,43,'2025-02-12',3,3),(144,44,'2025-02-13',4,4),(145,45,'2025-02-14',1,1),(146,46,'2025-02-15',2,2),(147,47,'2025-02-16',3,3),(148,48,'2025-02-17',4,4),(149,49,'2025-02-18',1,1),(150,50,'2025-02-19',2,2),(151,51,'2025-02-20',3,3),(152,52,'2025-02-21',4,4),(153,53,'2025-02-22',1,1),(154,54,'2025-02-23',2,2),(155,55,'2025-02-24',3,3),(156,56,'2025-02-25',4,4),(157,57,'2025-02-26',1,1),(158,58,'2025-02-27',2,2),(159,59,'2025-02-28',3,3),(160,60,'2025-03-01',4,4),(161,61,'2025-03-02',1,1),(162,62,'2025-03-03',2,2),(163,63,'2025-03-04',3,3),(164,64,'2025-03-05',4,4),(165,65,'2025-03-06',1,1),(166,66,'2025-03-07',2,2),(167,67,'2025-03-08',3,3),(168,68,'2025-03-09',4,4),(169,69,'2025-03-10',1,1),(170,70,'2025-03-11',2,2),(171,71,'2025-03-12',3,3),(172,72,'2025-03-13',4,4),(173,73,'2025-03-14',1,1),(174,74,'2025-03-15',2,2),(175,75,'2025-03-16',3,3),(176,76,'2025-03-17',4,4),(177,77,'2025-03-18',1,1),(178,78,'2025-03-19',2,2),(179,79,'2025-03-20',3,3),(180,80,'2025-03-21',4,4),(181,81,'2025-03-22',1,1),(182,82,'2025-03-23',2,2),(183,83,'2025-03-24',3,3),(184,84,'2025-03-25',4,4),(185,85,'2025-03-26',1,1),(186,86,'2025-03-27',2,2),(187,87,'2025-03-28',3,3),(188,88,'2025-03-29',4,4),(189,89,'2025-03-30',1,1),(190,90,'2025-03-31',2,2),(191,91,'2025-04-01',3,3),(192,92,'2025-04-02',4,4),(193,93,'2025-04-03',1,1),(194,94,'2025-04-04',2,2),(195,95,'2025-04-05',3,3),(196,96,'2025-04-06',4,4),(197,97,'2025-04-07',1,1),(198,98,'2025-04-08',2,2),(199,99,'2025-04-09',3,3),(200,100,'2025-04-10',4,4);
/*!40000 ALTER TABLE `cust_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Liam','Turner','liam.turner@example.com'),(2,'Olivia','Carter','olivia.carter@example.com'),(3,'Noah','Reynolds','noah.reynolds@example.com'),(4,'Emma','Gray','emma.gray@example.com'),(5,'Elijah','Stewart','elijah.stewart@example.com'),(6,'Ava','Collins','ava.collins@example.com'),(7,'William','Sullivan','william.sullivan@example.com'),(8,'Sophia','Barnes','sophia.barnes@example.com'),(9,'James','Foster','james.foster@example.com'),(10,'Isabella','Gonzalez','isabella.gonzalez@example.com'),(11,'Benjamin','Howard','benjamin.howard@example.com'),(12,'Mia','Bell','mia.bell@example.com'),(13,'Lucas','Hughes','lucas.hughes@example.com'),(14,'Charlotte','Murray','charlotte.murray@example.com'),(15,'Henry','Perry','henry.perry@example.com'),(16,'Amelia','Price','amelia.price@example.com'),(17,'Alexander','Kim','alexander.kim@example.com'),(18,'Harper','Watson','harper.watson@example.com'),(19,'Daniel','Henderson','daniel.henderson@example.com'),(20,'Evelyn','Cole','evelyn.cole@example.com'),(21,'Matthew','Graham','matthew.graham@example.com'),(22,'Abigail','Brooks','abigail.brooks@example.com'),(23,'Joseph','Ortiz','joseph.ortiz@example.com'),(24,'Emily','Ferguson','emily.ferguson@example.com'),(25,'David','Simmons','david.simmons@example.com'),(26,'Elizabeth','Harrison','elizabeth.harrison@example.com'),(27,'Jackson','Wells','jackson.wells@example.com'),(28,'Scarlett','Hunter','scarlett.hunter@example.com'),(29,'Sebastian','Warren','sebastian.warren@example.com'),(30,'Victoria','Ford','victoria.ford@example.com'),(31,'Jack','Freeman','jack.freeman@example.com'),(32,'Grace','Bishop','grace.bishop@example.com'),(33,'Owen','Black','owen.black@example.com'),(34,'Lily','Fletcher','lily.fletcher@example.com'),(35,'Samuel','Richards','samuel.richards@example.com'),(36,'Chloe','Dean','chloe.dean@example.com'),(37,'Carter','Griffin','carter.griffin@example.com'),(38,'Aria','Ellis','aria.ellis@example.com'),(39,'Wyatt','Stone','wyatt.stone@example.com'),(40,'Penelope','Hart','penelope.hart@example.com'),(41,'John','Dixon','john.dixon@example.com'),(42,'Riley','Boyd','riley.boyd@example.com'),(43,'Luke','George','luke.george@example.com'),(44,'Layla','Wallace','layla.wallace@example.com'),(45,'Grayson','West','grayson.west@example.com'),(46,'Nora','Coleman','nora.coleman@example.com'),(47,'Levi','Jennings','levi.jennings@example.com'),(48,'Hazel','Holland','hazel.holland@example.com'),(49,'Isaac','Banks','isaac.banks@example.com'),(50,'Ellie','Fleming','ellie.fleming@example.com'),(51,'Jayden','Harvey','jayden.harvey@example.com'),(52,'Lillian','Greer','lillian.greer@example.com'),(53,'Theodore','Cobb','theodore.cobb@example.com'),(54,'Zoey','Parks','zoey.parks@example.com'),(55,'Gabriel','Becker','gabriel.becker@example.com'),(56,'Hannah','Frost','hannah.frost@example.com'),(57,'Anthony','Baldwin','anthony.baldwin@example.com'),(58,'Stella','Manning','stella.manning@example.com'),(59,'Isaiah','Sharp','isaiah.sharp@example.com'),(60,'Natalie','Harmon','natalie.harmon@example.com'),(61,'Andrew','Logan','andrew.logan@example.com'),(62,'Zoe','Cross','zoe.cross@example.com'),(63,'Lincoln','Barrett','lincoln.barrett@example.com'),(64,'Violet','Page','violet.page@example.com'),(65,'Joshua','Day','joshua.day@example.com'),(66,'Aurora','Pena','aurora.pena@example.com'),(67,'Christopher','Nash','christopher.nash@example.com'),(68,'Savannah','Love','savannah.love@example.com'),(69,'Nathan','Steele','nathan.steele@example.com'),(70,'Brooklyn','Potter','brooklyn.potter@example.com'),(71,'Caleb','Hammond','caleb.hammond@example.com'),(72,'Leah','Thornton','leah.thornton@example.com'),(73,'Ryan','Rhodes','ryan.rhodes@example.com'),(74,'Audrey','Dennis','audrey.dennis@example.com'),(75,'Asher','Klein','asher.klein@example.com'),(76,'Skylar','Park','skylar.park@example.com'),(77,'Thomas','Jensen','thomas.jensen@example.com'),(78,'Claire','Paul','claire.paul@example.com'),(79,'Leo','Dennis','leo.dennis@example.com'),(80,'Anna','Fitzgerald','anna.fitzgerald@example.com'),(81,'Julian','Bates','julian.bates@example.com'),(82,'Camila','Harper','camila.harper@example.com'),(83,'Aaron','Bradley','aaron.bradley@example.com'),(84,'Paisley','Johnston','paisley.johnston@example.com'),(85,'Hudson','Norman','hudson.norman@example.com'),(86,'Genesis','Little','genesis.little@example.com'),(87,'Christian','Vaughn','christian.vaughn@example.com'),(88,'Elena','Larson','elena.larson@example.com'),(89,'Hunter','Miles','hunter.miles@example.com'),(90,'Kennedy','Craig','kennedy.craig@example.com'),(91,'Connor','Peters','connor.peters@example.com'),(92,'Samantha','Reid','samantha.reid@example.com'),(93,'Eli','Fields','eli.fields@example.com'),(94,'Caroline','Douglas','caroline.douglas@example.com'),(95,'Jeremiah','Arnold','jeremiah.arnold@example.com'),(96,'Autumn','Carroll','autumn.carroll@example.com'),(97,'Jonathan','Hudson','jonathan.hudson@example.com'),(98,'Naomi','Ray','naomi.ray@example.com'),(99,'Easton','Lane','easton.lane@example.com'),(100,'Sarah','Graves','sarah.graves@example.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_address` (
  `customer_id` int NOT NULL,
  `address_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`address_id`),
  KEY `address_id` (`address_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `customer_address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `customer_address_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `address_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `change_date` datetime DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `order_id` (`order_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `order_history_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `cust_order` (`order_id`),
  CONSTRAINT `order_history_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (201,101,2,'2024-01-05 00:00:00'),(202,102,4,'2024-02-10 00:00:00'),(203,103,1,'2024-03-15 00:00:00'),(204,104,3,'2024-04-20 00:00:00'),(205,105,1,'2024-05-25 00:00:00'),(206,106,2,'2024-06-30 00:00:00'),(207,107,4,'2024-07-05 00:00:00'),(208,108,3,'2024-08-10 00:00:00'),(209,109,1,'2024-09-15 00:00:00'),(210,110,2,'2024-10-20 00:00:00'),(211,111,3,'2024-11-25 00:00:00'),(212,112,4,'2024-12-05 00:00:00'),(213,113,1,'2024-01-20 00:00:00'),(214,114,3,'2024-02-28 00:00:00'),(215,115,4,'2024-03-10 00:00:00'),(216,116,2,'2024-04-12 00:00:00'),(217,117,1,'2024-05-18 00:00:00'),(218,118,4,'2024-06-22 00:00:00'),(219,119,2,'2024-07-17 00:00:00'),(220,120,3,'2024-08-25 00:00:00'),(221,121,4,'2024-09-30 00:00:00'),(222,122,1,'2024-10-15 00:00:00'),(223,123,3,'2024-11-05 00:00:00'),(224,124,2,'2024-12-12 00:00:00'),(225,125,1,'2024-01-25 00:00:00'),(226,126,4,'2024-02-05 00:00:00'),(227,127,3,'2024-03-18 00:00:00'),(228,128,1,'2024-04-10 00:00:00'),(229,129,4,'2024-05-20 00:00:00'),(230,130,2,'2024-06-05 00:00:00'),(231,131,3,'2024-07-07 00:00:00'),(232,132,1,'2024-08-20 00:00:00'),(233,133,4,'2024-09-12 00:00:00'),(234,134,2,'2024-10-02 00:00:00'),(235,135,3,'2024-11-18 00:00:00'),(236,136,1,'2024-12-01 00:00:00'),(237,137,2,'2024-01-30 00:00:00'),(238,138,4,'2024-02-18 00:00:00'),(239,139,3,'2024-03-08 00:00:00'),(240,140,1,'2024-04-25 00:00:00'),(241,141,2,'2024-05-30 00:00:00'),(242,142,3,'2024-06-10 00:00:00'),(243,143,1,'2024-07-12 00:00:00'),(244,144,4,'2024-08-28 00:00:00'),(245,145,2,'2024-09-03 00:00:00'),(246,146,1,'2024-10-10 00:00:00'),(247,147,4,'2024-11-22 00:00:00'),(248,148,3,'2024-12-15 00:00:00'),(249,149,1,'2024-01-18 00:00:00'),(250,150,2,'2024-02-25 00:00:00'),(251,151,4,'2024-03-12 00:00:00'),(252,152,3,'2024-04-05 00:00:00'),(253,153,1,'2024-05-15 00:00:00'),(254,154,2,'2024-06-01 00:00:00'),(255,155,3,'2024-07-25 00:00:00'),(256,156,1,'2024-08-17 00:00:00'),(257,157,4,'2024-09-10 00:00:00'),(258,158,2,'2024-10-22 00:00:00'),(259,159,3,'2024-11-07 00:00:00'),(260,160,1,'2024-12-05 00:00:00'),(261,161,4,'2024-01-12 00:00:00'),(262,162,2,'2024-02-03 00:00:00'),(263,163,1,'2024-03-22 00:00:00'),(264,164,3,'2024-04-15 00:00:00'),(265,165,2,'2024-05-28 00:00:00'),(266,166,1,'2024-06-18 00:00:00'),(267,167,4,'2024-07-09 00:00:00'),(268,168,3,'2024-08-12 00:00:00'),(269,169,2,'2024-09-20 00:00:00'),(270,170,1,'2024-10-28 00:00:00'),(271,171,4,'2024-11-14 00:00:00'),(272,172,3,'2024-12-22 00:00:00'),(273,173,1,'2024-01-09 00:00:00'),(274,174,4,'2024-02-12 00:00:00'),(275,175,2,'2024-03-29 00:00:00'),(276,176,3,'2024-04-19 00:00:00'),(277,177,1,'2024-05-09 00:00:00'),(278,178,4,'2024-06-06 00:00:00'),(279,179,2,'2024-07-03 00:00:00'),(280,180,1,'2024-08-14 00:00:00'),(281,181,4,'2024-09-05 00:00:00'),(282,182,2,'2024-10-17 00:00:00'),(283,183,3,'2024-11-28 00:00:00'),(284,184,1,'2024-12-21 00:00:00'),(285,185,4,'2024-01-02 00:00:00'),(286,186,2,'2024-02-07 00:00:00'),(287,187,1,'2024-03-25 00:00:00'),(288,188,4,'2024-04-30 00:00:00'),(289,189,2,'2024-05-21 00:00:00'),(290,190,3,'2024-06-04 00:00:00'),(291,191,1,'2024-07-19 00:00:00'),(292,192,4,'2024-08-01 00:00:00'),(293,193,2,'2024-09-13 00:00:00'),(294,194,3,'2024-10-19 00:00:00'),(295,195,1,'2024-11-04 00:00:00'),(296,196,4,'2024-12-02 00:00:00'),(297,197,2,'2024-01-08 00:00:00'),(298,198,3,'2024-02-23 00:00:00'),(299,199,1,'2024-03-03 00:00:00'),(300,200,4,'2024-04-14 00:00:00');
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line` (
  `order_id` int NOT NULL,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `order_line_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `cust_order` (`order_id`),
  CONSTRAINT `order_line_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (101,12,5),(102,7,3),(103,25,1),(104,3,6),(105,41,2),(106,8,7),(107,30,4),(108,1,2),(109,22,8),(110,17,3),(111,45,6),(112,26,1),(113,5,7),(114,19,5),(115,38,3),(116,4,2),(117,49,6),(118,14,8),(119,33,4),(120,2,3),(121,24,5),(122,11,1),(123,43,7),(124,27,6),(125,10,4),(126,35,2),(127,6,8),(128,21,5),(129,32,3),(130,13,6),(131,48,7),(132,15,4),(133,29,2),(134,16,3),(135,36,1),(136,18,5),(137,23,8),(138,39,4),(139,9,6),(140,40,7),(141,20,3),(142,46,5),(143,28,2),(144,34,4),(145,44,1),(146,31,8),(147,47,3),(148,42,6),(149,50,7),(150,37,2),(151,12,3),(152,7,4),(153,25,6),(154,3,5),(155,41,2),(156,8,1),(157,30,7),(158,1,6),(159,22,3),(160,17,5),(161,45,2),(162,26,8),(163,5,4),(164,19,3),(165,38,1),(166,4,7),(167,49,2),(168,14,6),(169,33,5),(170,2,4),(171,24,8),(172,11,3),(173,43,2),(174,27,6),(175,10,7),(176,35,1),(177,6,5),(178,21,4),(179,32,8),(180,13,2),(181,48,3),(182,15,6),(183,29,7),(184,16,5),(185,36,4),(186,18,2),(187,23,8),(188,39,3),(189,9,1),(190,40,7),(191,20,5),(192,46,4),(193,28,6),(194,34,2),(195,44,8),(196,31,3),(197,47,5),(198,42,6),(199,50,7),(200,37,1);
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Pending'),(2,'Shipping'),(3,'Delivered'),(4,'Cancelled');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Heinemann'),(2,'Heinemann'),(3,'Heinemann'),(4,'Weaver Press'),(5,'Heinemann'),(6,'Heinemann'),(7,'Heinemann'),(8,'Heinemann'),(9,'Heinemann'),(10,'Allen Lane'),(11,'Knopf'),(12,'Heinemann'),(13,'Cassava Republic Press'),(14,'Jacana Media'),(15,'Mulholland Books'),(16,'Le Livre Contemporain'),(17,'Little, Brown and Company'),(18,'Houghton Mifflin'),(19,'Algonquin Books'),(20,'Knopf/Anchor'),(21,'Knopf/Anchor'),(22,'East African Educational Publishers'),(23,'Algonquin Books'),(24,'Jonathan Cape'),(25,'Penguin Books'),(26,'Sarah Crichton Books'),(27,'Reagan Arthur Books'),(28,'Little, Brown and Company'),(29,'Allison & Busby'),(30,'Allison & Busby'),(31,'George Braziller'),(32,'Jonathan Cape'),(33,'Jonathan Cape'),(34,'Longhorn Publishers'),(35,'One Planet Publishing'),(36,'East African Publishers'),(37,'Profile'),(38,'Serpents Tail Limited'),(39,'Serpents Tail Limited'),(40,'Serpents Tail Limited'),(41,'HarperCollins'),(42,'Barzakh editions'),(43,'Heinmann'),(44,'Alfred A. Knopf'),(45,'Secker and Warburg'),(46,'Allen & Uwin'),(47,'Simon & Schuster'),(48,'Riverhead Books'),(49,'Knopf Canada'),(50,'Simon & Schuster'),(51,'Simon & Schuster');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `method_id` int NOT NULL AUTO_INCREMENT,
  `method_name` varchar(100) NOT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES (1,'Standard Shipping'),(2,'Store Pickup'),(3,'Domestic Shipping'),(4,'International Shipping');
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12 23:25:43
