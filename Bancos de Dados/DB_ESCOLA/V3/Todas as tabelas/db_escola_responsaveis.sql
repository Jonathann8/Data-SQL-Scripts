-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: db_escola
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsaveis` (
  `id_responsavel` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `parentesco` enum('Pai','Mãe','Tutor','Outro') DEFAULT NULL,
  PRIMARY KEY (`id_responsavel`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsaveis`
--

LOCK TABLES `responsaveis` WRITE;
/*!40000 ALTER TABLE `responsaveis` DISABLE KEYS */;
INSERT INTO `responsaveis` VALUES (1,'Maria Silva','111.111.111-11',NULL,NULL,'Mãe'),(2,'Paulo Santos','222.222.222-22',NULL,NULL,'Pai'),(3,'Carla Oliveira','333.333.333-33',NULL,NULL,'Mãe'),(4,'Roberto Souza','444.444.444-44',NULL,NULL,'Pai'),(5,'Juliana Mendes','555.555.555-55',NULL,NULL,'Mãe'),(6,'Fernando Alves','666.666.666-66',NULL,NULL,'Pai'),(7,'Lúcia Vieira','777.777.777-77',NULL,NULL,'Mãe'),(8,'André Lima','888.888.888-88',NULL,NULL,'Pai'),(9,'Tatiane Costa','999.999.999-99',NULL,NULL,'Mãe'),(10,'Sérgio Rocha','101.101.101-00',NULL,NULL,'Pai'),(11,'Marta Borges','112.112.112-11',NULL,NULL,'Mãe'),(12,'Marcelo Reis','123.123.123-22',NULL,NULL,'Pai'),(13,'Cristina Prado','134.134.134-33',NULL,NULL,'Mãe'),(14,'Alexandre Barbosa','145.145.145-44',NULL,NULL,'Pai'),(15,'Isabela Sousa','156.156.156-55',NULL,NULL,'Mãe'),(16,'Ricardo Neves','167.167.167-66',NULL,NULL,'Pai'),(17,'Patrícia Aguiar','178.178.178-77',NULL,NULL,'Mãe'),(18,'Gustavo Teixeira','189.189.189-88',NULL,NULL,'Pai'),(19,'Renata Gomes','190.190.190-99',NULL,NULL,'Mãe'),(20,'Fábio Pires','201.201.201-00',NULL,NULL,'Pai'),(21,'Heloísa Dias','212.212.212-11',NULL,NULL,'Mãe'),(22,'César Mendes','223.223.223-22',NULL,NULL,'Pai'),(23,'Viviane Nogueira','234.234.234-33',NULL,NULL,'Mãe'),(24,'Ronaldo Santos','245.245.245-44',NULL,NULL,'Pai'),(25,'Sofia Queiroz','256.256.256-55',NULL,NULL,'Mãe');
/*!40000 ALTER TABLE `responsaveis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-04 17:24:02
