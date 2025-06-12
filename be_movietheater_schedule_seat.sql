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
-- Table structure for table `schedule_seat`
--

DROP TABLE IF EXISTS `schedule_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint NOT NULL DEFAULT '1',
  `schedule_id` int DEFAULT NULL,
  `seat_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9d8bd4df176ad49e2ae9e6997c0` (`schedule_id`),
  KEY `FK_f1127420a79d526d0556b4fceba` (`seat_id`),
  CONSTRAINT `FK_9d8bd4df176ad49e2ae9e6997c0` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  CONSTRAINT `FK_f1127420a79d526d0556b4fceba` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_seat`
--

LOCK TABLES `schedule_seat` WRITE;
/*!40000 ALTER TABLE `schedule_seat` DISABLE KEYS */;
INSERT INTO `schedule_seat` VALUES (1,3,5,'A1'),(2,1,5,'A10'),(3,3,5,'A2'),(4,3,5,'A3'),(5,3,5,'A4'),(6,3,5,'A5'),(7,3,5,'A6'),(8,3,5,'A7'),(9,3,5,'A8'),(10,3,5,'A9'),(11,1,5,'B1'),(12,1,5,'B10'),(13,1,5,'B2'),(14,1,5,'B3'),(15,1,5,'B4'),(16,1,5,'B5'),(17,1,5,'B6'),(18,1,5,'B7'),(19,1,5,'B8'),(20,1,5,'B9');
/*!40000 ALTER TABLE `schedule_seat` ENABLE KEYS */;
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
