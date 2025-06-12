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
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `id` varchar(10) NOT NULL,
  `seat_row` varchar(5) NOT NULL,
  `seat_column` varchar(5) NOT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `seat_type_id` int DEFAULT NULL,
  `cinema_room_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a8ffc17dea7290cae79ca2b90cd` (`seat_type_id`),
  KEY `FK_d27e87ff59d36c99ccf1438088b` (`cinema_room_id`),
  CONSTRAINT `FK_a8ffc17dea7290cae79ca2b90cd` FOREIGN KEY (`seat_type_id`) REFERENCES `seat_type` (`id`),
  CONSTRAINT `FK_d27e87ff59d36c99ccf1438088b` FOREIGN KEY (`cinema_room_id`) REFERENCES `cinema_room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('A1','A','1',0,1,1),('A10','A','10',0,1,1),('A2','A','2',0,1,1),('A3','A','3',0,1,1),('A4','A','4',0,1,1),('A5','A','5',0,1,1),('A6','A','6',0,1,1),('A7','A','7',0,1,1),('A8','A','8',0,1,1),('A9','A','9',0,1,1),('B1','B','1',0,1,1),('B10','B','10',0,1,1),('B2','B','2',0,1,1),('B3','B','3',0,1,1),('B4','B','4',0,1,1),('B5','B','5',0,1,1),('B6','B','6',0,1,1),('B7','B','7',0,1,1),('B8','B','8',0,1,1),('B9','B','9',0,1,1),('C1','C','1',0,1,2),('C10','C','10',0,1,2),('C2','C','2',0,1,2),('C3','C','3',0,1,2),('C4','C','4',0,1,2),('C5','C','5',0,1,2),('C6','C','6',0,1,2),('C7','C','7',0,1,2),('C8','C','8',0,1,2),('C9','C','9',0,1,2),('D1','D','1',0,1,2),('D10','D','10',0,1,2),('D2','D','2',0,1,2),('D3','D','3',0,1,2),('D4','D','4',0,1,2),('D5','D','5',0,1,2),('D6','D','6',0,1,2),('D7','D','7',0,1,2),('D8','D','8',0,1,2),('D9','D','9',0,1,2),('E1','E','1',0,1,3),('E10','E','10',0,1,3),('E2','E','2',0,1,3),('E3','E','3',0,1,3),('E4','E','4',0,1,3),('E5','E','5',0,1,3),('E6','E','6',0,1,3),('E7','E','7',0,1,3),('E8','E','8',0,1,3),('E9','E','9',0,1,3),('F1','F','1',0,1,3),('F10','F','10',0,1,3),('F2','F','2',0,1,3),('F3','F','3',0,1,3),('F4','F','4',0,1,3),('F5','F','5',0,1,3),('F6','F','6',0,1,3),('F7','F','7',0,1,3),('F8','F','8',0,1,3),('F9','F','9',0,1,3);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 21:15:45
