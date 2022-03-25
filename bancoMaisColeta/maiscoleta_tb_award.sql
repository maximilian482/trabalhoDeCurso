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
-- Table structure for table `tb_award`
--

DROP TABLE IF EXISTS `tb_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_award` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_award`
--

LOCK TABLES `tb_award` WRITE;
/*!40000 ALTER TABLE `tb_award` DISABLE KEYS */;
INSERT INTO `tb_award` VALUES (1,'Microondas','20 Litros Branco - PMO23MB 220 VOLTS',800,'images/upload_bee114cfe2df9d38df07f9c62264e860.jpeg','2021-10-12 00:22:56'),(4,'Batedeira',' Vermelha 400W  PREMIUM',520,'images/upload_db85eb8b2748457a4c6685eb388420fb.jpeg','2021-10-12 02:56:56'),(5,'Aspirador de Pó e Água ','250W - ACQUA - Power AQP20',250,'images/upload_9ee77ec2b0b346dc14fcec50f015aa4b.jpeg','2021-10-12 03:01:58'),(8,'Power Mixer','500W Preto e Inox M-07- 127 Volts',450,'images/upload_e1476a0b7820638eef17e5ee30e6e38b.jpeg','2021-10-12 03:03:20'),(9,'Vetilador de Mesa','Turbo Branco 30 Cm 4 Pás Oscilante - 127V',300,'images/upload_a2eb4ccda6c54b1275a3df3e8d103afa.jpeg','2021-10-12 03:03:23'),(12,'Liquidificador','Turbo L-900 FB Copo Vermelho - Com 5 Velocidades - 900W',500,'images/upload_29fe427e360a377878e397228102631f.jpeg','2021-10-12 14:32:39'),(17,'Panela de Pressão','Panela Elétrica 4L ',400,'images/upload_dc0dbad62d8fbb9b19633a77e8aa366d.jpeg','2021-10-12 16:51:18'),(18,'Parafusadeira / Furadeira','18V - Recarregável - 2 Baterias',600,'images/upload_cc9d613f73da45240073ebda10bb91f4.jpeg','2021-10-13 00:00:25'),(19,'Troca de Óleo','POSTO HOLDINS',100,'images/upload_cc4d91f9377563175d05cf0ed180ae57.jpeg','2021-10-13 00:01:13'),(20,'Serra Tico-Tico','500W - 220V - DEWALT DW300-B2',200,'images/upload_20f1cdf664bbffba855ff1d077e6b1c1.jpeg','2021-10-13 00:02:07'),(21,'Lavagem Carro - Ameriacana','POSTO HOLDINGS',100,'images/upload_d2ed095d1e97437cd690c5e3f05b988c.jpeg','2021-10-13 00:03:16'),(22,'10L Combustível','POSTO HOLDINGS',90,'images/upload_097fffe6abc9a055c6b2736941143289.jpeg','2021-10-13 00:04:08'),(23,'Barbeador Elétrico','Aquatouch S1121 - À prova d-água',200,'images/upload_0445987646dd59cbe2a066e67d3dce26.jpeg','2021-10-13 00:05:19'),(24,'Maleta de Ferramentas','Kit Com 129 pcs - Material reforçado',400,'images/upload_229831cc5b2abe0413f72aa5124504a9.jpeg','2021-10-13 00:06:54'),(25,'Air Fryer','Fritadeira Elétrica sem Óleo 3,5 L - Preta com Timer',750,'images/upload_29e4ba0378f7c66cc749b74b03176af8.jpeg','2021-10-13 00:07:51');
/*!40000 ALTER TABLE `tb_award` ENABLE KEYS */;
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
