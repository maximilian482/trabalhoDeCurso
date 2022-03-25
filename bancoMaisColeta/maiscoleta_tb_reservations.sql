-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: maiscoleta
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `tb_reservations`
--

DROP TABLE IF EXISTS `tb_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(256) NOT NULL,
  `qtd_item` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` bigint NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `city` varchar(45) NOT NULL,
  `uf` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number` int NOT NULL,
  `zip` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reservations`
--

LOCK TABLES `tb_reservations` WRITE;
/*!40000 ALTER TABLE `tb_reservations` DISABLE KEYS */;
INSERT INTO `tb_reservations` VALUES (4,'2',2,'Maximilian Augusto de Souza Andrade',61983568372,'2021-10-09 21:40:42','Brasilia','DF','QR 117 Conjunto J',13,'72547-410','2021-11-12','18:40:00'),(8,'3',3,'alberto',6198659865,'2021-10-19 03:10:04','Guara','DF','Qe 38 conjunto c casa',250,'72541541','2021-11-24','10:00:00'),(9,'2',2,'Maximilian Augusto de Souza Andrade',61983568372,'2021-10-23 22:38:46','Taguatinga','DF','QR 117 Conjunto J',13,'72547-410','2021-10-29','19:25:00'),(10,'1',2,'Lucas',61985858596,'2021-10-28 23:01:38','Santa Maria','DF','Qr 212 Conjunto R',10,'72541541','2021-11-01','10:01:00');
/*!40000 ALTER TABLE `tb_reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 11:37:51
