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
-- Table structure for table `tb_stuff`
--

DROP TABLE IF EXISTS `tb_stuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_stuff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_stuff`
--

LOCK TABLES `tb_stuff` WRITE;
/*!40000 ALTER TABLE `tb_stuff` DISABLE KEYS */;
INSERT INTO `tb_stuff` VALUES (25,'ALUMÍNIO','A cada 1 kg de Alumínio você acumula',12,'images/upload_09b70627e6e28b717d9b501224241319.jpeg','2021-10-13 00:14:16'),(26,'COBRE','A cada 1 kg de Cobre você acumula',25,'images/upload_cf04179d9a1c727ab0fd7e34545c8803.jpeg','2021-10-13 00:15:20'),(27,'ELETRÔNICOS','A cada 1 kg de Eletrônicos você ganha',4,'images/upload_00ab8852c9c17d4213e79bbd587dab84.jpeg','2021-10-13 00:16:49'),(28,'METAL','A cada 1 kg de Metal você ganha',17,'images/upload_7c0b27a27944f229923d0d066fd47a7c.jfif','2021-10-13 00:17:16'),(29,'PAPELÃO','A cada 1 kg de Papelão você ganha',5,'images/upload_6183356017604104cc2e0735c842b8cd.jpeg','2021-10-13 00:17:44'),(30,'GARRAFAS PET','A cada 1 kg de Garrafas Pet você ganha',5,'images/upload_588a593e0df0dfa24da893d88648a613.jpeg','2021-10-13 00:18:09'),(31,'VIDROS','A cada 1 Kg de vidro você acumula ',3,'images/upload_6924ac65708d9a279d8b4d48add04b36.jpeg','2021-10-20 01:22:57');
/*!40000 ALTER TABLE `tb_stuff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 11:37:49
