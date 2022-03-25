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
-- Table structure for table `tb_users2`
--

DROP TABLE IF EXISTS `tb_users2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(256) DEFAULT 'images/user.jpg',
  `score` int DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users2`
--

LOCK TABLES `tb_users2` WRITE;
/*!40000 ALTER TABLE `tb_users2` DISABLE KEYS */;
INSERT INTO `tb_users2` VALUES (1,'Ricardo','ricardo@gmail.com','123','2021-10-16 22:50:19','images/Users/h1.jpg',200),(2,'Marcelo','marcelo@gmail.com','123','2021-10-17 00:31:25','images/Users/h2.jpg',350),(3,'Marcos','marcos@gmail.com','123','2021-10-17 20:34:10','images/Users/h3.jpg',10),(4,'Andre','andre@gmail.com','123','2021-10-17 20:37:44','images/Users/h4.jpg',10),(5,'Moises','moises@gmail.com','123','2021-10-30 21:53:34','images/Users/h5.jpg',10),(6,'Antares','antares@gmail.com','123','2021-10-30 21:53:42','images/Users/h6.jpg',10),(7,'Antonio','antonio@gmail.com','123','2021-10-30 21:55:28','images/Users/h7.jpg',10),(8,'Jonathan','jhonatan@gmail.com','123','2021-10-30 21:59:59','images/Users/h8.jpg',10),(9,'Marina','marina@gmail.com','123','2021-10-30 22:08:30','images/Users/m1.jpg',10),(10,'Marcela','marcela@gmail.com','123','2021-10-30 22:09:23','images/Users/m2.jpg',10),(12,'Angela','angela@gmail.com','123','2021-10-30 23:15:48','images/Users/m4.jpg',10),(13,'Cristiane Almeida','cristiane@gmail.com','1234','2021-10-30 23:16:08','images/Users/m5.jpg',10),(14,'Dayane','dayane@gmail.com','123','2021-10-31 00:03:10','images/Users/m6.jpg',10),(15,'India Marilene','indiamarilene111@gmail.com','123','2021-11-02 01:50:37','images/Users/m7.jpg',10),(17,'Ananias','ananias@gmail.com','123','2021-11-03 12:01:36','images/user.jpg',10),(18,'Mariana Ribeiro','marianaribeiro21@gmail.com','123','2021-11-19 00:00:09','images/user.jpg',10),(19,'India Marilene','indiamarilene1111@gmail.com','123456','2021-11-19 00:09:38','images/user.jpg',10);
/*!40000 ALTER TABLE `tb_users2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 11:37:52
