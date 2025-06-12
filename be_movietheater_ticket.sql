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
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` varchar(36) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `is_used` tinyint NOT NULL DEFAULT '0',
  `schedule_id` int DEFAULT NULL,
  `seat_id` varchar(10) DEFAULT NULL,
  `ticket_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_84511c90ef2f16a9ff644a75609` (`schedule_id`),
  KEY `FK_bc6a9497287b609dbd2806850c7` (`seat_id`),
  KEY `FK_af51af23249ad05ee17dc48019a` (`ticket_type_id`),
  CONSTRAINT `FK_84511c90ef2f16a9ff644a75609` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  CONSTRAINT `FK_af51af23249ad05ee17dc48019a` FOREIGN KEY (`ticket_type_id`) REFERENCES `ticket_type` (`id`),
  CONSTRAINT `FK_bc6a9497287b609dbd2806850c7` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('01065475-8ae2-4550-a4ec-6a9091d2f389',1,0,5,'A2',2),('0d9acd35-38b5-4824-b27f-de0785003931',1,0,5,'A1',1),('1b537b38-b84f-4926-8cca-f5c9c3ab9a3c',0,0,5,'A6',2),('26e3a18e-8e49-4116-9427-286337515c95',1,0,5,'A7',1),('53487fb7-8f48-4ff0-8c90-27facfff939f',1,0,5,'A9',2),('5b169df1-1f66-48bf-afdb-5aec13952c4e',1,0,5,'A10',1),('83538f7e-319a-4538-9b02-4d27c0632d06',0,0,5,'A5',2),('c4f9e68a-ffd3-48e1-b8e3-c7a2520d63e8',1,0,5,'A3',2),('e73a7535-5829-4fdf-866b-fe7d03003ecb',0,0,5,'A4',1),('f3573e80-c517-4ad6-852a-5ac74d5fd634',1,0,5,'A8',2);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
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
