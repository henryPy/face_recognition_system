CREATE DATABASE  IF NOT EXISTS `face_recognition` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_520_ci */;
USE `face_recognition`;
-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: face_recognition
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `floor` (`floor`),
  CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`floor`) REFERENCES `floor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'A1001',1,1),(2,'A1002',1,1),(3,'A1003',1,1),(4,'A1004',1,1),(5,'A1005',1,0),(6,'A2001',2,1),(7,'A2002',2,0),(8,'A2003',2,0),(9,'A2004',2,0),(10,'A2005',2,0),(11,'A3001',3,0),(12,'A3002',3,0),(13,'A3003',3,0),(14,'A3004',3,0),(15,'A3005',3,0),(16,'A6001',16,0),(17,'A6002',16,0),(18,'A6003',16,0),(19,'A6004',16,0),(20,'A6005',16,0),(21,'A7001',17,0),(22,'A7002',17,0),(23,'A7003',17,0),(24,'A7004',17,0),(25,'A7005',17,0),(26,'A8001',18,0),(27,'A8002',18,0),(28,'A8003',18,0),(29,'A8004',18,0),(30,'A8005',18,0),(31,'B1001',6,0),(32,'B1002',6,0),(33,'B1003',6,0),(34,'B1004',6,0),(35,'B1005',6,0),(36,'B2001',7,0),(37,'B2002',7,0),(38,'B2003',7,0),(39,'B2004',7,0),(40,'B2005',7,0),(41,'B3001',8,0),(42,'B3002',8,0),(43,'B3003',8,0),(44,'B3004',8,0),(45,'B3005',8,0),(46,'B6001',40,0),(47,'B6002',40,0),(48,'B6003',40,0),(49,'B6004',40,0),(50,'B6005',40,0),(51,'B7001',41,0),(52,'B7002',41,0),(53,'B7003',41,0),(54,'B7004',41,0),(55,'B7005',41,0),(56,'B8001',42,0),(57,'B8002',42,0),(58,'B8003',42,0),(59,'B8004',42,0),(60,'B8005',42,0),(61,'C1001',11,0),(62,'C1002',11,0),(63,'C1003',11,0),(64,'C1004',11,0),(65,'C1005',11,0),(66,'C2001',12,0),(67,'C2002',12,0),(68,'C2003',12,0),(69,'C2004',12,0),(70,'C2005',12,0),(71,'C3001',13,0),(72,'C3002',13,0),(73,'C3003',13,1),(74,'C3004',13,0),(75,'C3005',13,0),(76,'C6001',64,0),(77,'C6002',64,0),(78,'C6003',64,0),(79,'C6004',64,0),(80,'C6005',64,0),(81,'C7001',65,0),(82,'C7002',65,0),(83,'C7003',65,0),(84,'C7004',65,0),(85,'C7005',65,0),(86,'C8001',66,0),(87,'C8002',66,0),(88,'C8003',66,0),(89,'C8004',66,0),(90,'C8005',66,0),(96,'B1011',6,0),(97,'B1012',6,1),(98,'C1011',11,1),(99,'A2009',2,0),(101,'A5001',5,0);
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 22:13:30