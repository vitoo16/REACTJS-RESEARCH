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
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_each_ticket` decimal(10,2) NOT NULL,
  `order_id` int DEFAULT NULL,
  `ticket_id` varchar(36) DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_b211e48a66d82d6d0f1bcd33ab` (`ticket_id`),
  KEY `FK_a6ac5c99b8c02bd4ee53d3785be` (`order_id`),
  KEY `FK_ff9e196f203b11418a0e5af3f29` (`schedule_id`),
  CONSTRAINT `FK_a6ac5c99b8c02bd4ee53d3785be` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_b211e48a66d82d6d0f1bcd33ab1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`),
  CONSTRAINT `FK_ff9e196f203b11418a0e5af3f29` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,70000.00,1,'0d9acd35-38b5-4824-b27f-de0785003931',5),(2,63000.00,1,'01065475-8ae2-4550-a4ec-6a9091d2f389',5),(3,63000.00,1,'c4f9e68a-ffd3-48e1-b8e3-c7a2520d63e8',5),(4,70000.00,2,'e73a7535-5829-4fdf-866b-fe7d03003ecb',5),(5,63000.00,2,'83538f7e-319a-4538-9b02-4d27c0632d06',5),(6,63000.00,2,'1b537b38-b84f-4926-8cca-f5c9c3ab9a3c',5),(7,70000.00,3,'26e3a18e-8e49-4116-9427-286337515c95',5),(8,63000.00,3,'f3573e80-c517-4ad6-852a-5ac74d5fd634',5),(9,63000.00,3,'53487fb7-8f48-4ff0-8c90-27facfff939f',5),(10,70000.00,4,'5b169df1-1f66-48bf-afdb-5aec13952c4e',5);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 21:15:42
