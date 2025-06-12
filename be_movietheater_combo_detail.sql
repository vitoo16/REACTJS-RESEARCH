-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: be_movietheater
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `combo_detail`
--

DROP TABLE IF EXISTS `combo_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combo_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prices` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `combo_id` int DEFAULT NULL,
  `drink_id` int DEFAULT NULL,
  `food_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e23e1c553476c45892dbfbf897e` (`combo_id`),
  KEY `FK_eee6934aadfaca812ac26b86d89` (`drink_id`),
  KEY `FK_d8e6bd807b0df69bc3dc6e1e92f` (`food_id`),
  CONSTRAINT `FK_d8e6bd807b0df69bc3dc6e1e92f` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `FK_e23e1c553476c45892dbfbf897e` FOREIGN KEY (`combo_id`) REFERENCES `combo` (`combo_id`),
  CONSTRAINT `FK_eee6934aadfaca812ac26b86d89` FOREIGN KEY (`drink_id`) REFERENCES `drink` (`drink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combo_detail`
--

LOCK TABLES `combo_detail` WRITE;
/*!40000 ALTER TABLE `combo_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `combo_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 21:15:44
