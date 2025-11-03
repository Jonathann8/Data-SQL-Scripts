CREATE DATABASE  IF NOT EXISTS `db_escola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_escola`;
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `turma` varchar(10) DEFAULT NULL,
  `nacionalidade` varchar(30) DEFAULT 'Brasil',
  `id_turma` int(11) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João da Costa','2010-02-15','M',NULL,'Brasil',3,'2025-10-17'),(2,'Pedro Henrique','2010-05-20','M',NULL,'Brasil',3,'2025-10-17'),(3,'Lucas Ferreira','2010-09-08','M',NULL,'Brasil',3,'2025-10-17'),(4,'Gustavo Lopes','2010-01-22','M',NULL,'Brasil',3,'2025-10-17'),(5,'Felipe Mendes','2010-11-03','M',NULL,'Brasil',3,'2025-10-17'),(6,'Daniel Alves','2010-04-18','M',NULL,'Brasil',3,'2025-10-17'),(7,'Ricardo Vieira','2010-07-29','M',NULL,'Brasil',3,'2025-10-17'),(8,'Ana Luiza Lima','2010-03-01','F',NULL,'Brasil',3,'2025-10-17'),(9,'Julia Costa','2010-06-14','F',NULL,'Brasil',3,'2025-10-17'),(10,'Mariana Rocha','2010-08-19','F',NULL,'Brasil',3,'2025-10-17'),(11,'Camila Borges','2010-10-25','F',NULL,'Brasil',3,'2025-10-17'),(12,'Isabella Reis','2010-12-07','F',NULL,'Brasil',3,'2025-10-17'),(13,'Giovanna Prado','2010-04-05','F',NULL,'Brasil',3,'2025-10-17'),(14,'Luiza Barbosa','2010-09-12','F',NULL,'Brasil',3,'2025-10-17'),(15,'Rafael Sousa','2009-02-04','M',NULL,'Brasil',4,'2025-10-17'),(16,'Gabriel Neves','2009-05-16','M',NULL,'Brasil',4,'2025-10-17'),(17,'Bruno Aguiar','2009-09-03','M',NULL,'Brasil',4,'2025-10-17'),(18,'Enzo Teixeira','2009-01-20','M',NULL,'Brasil',4,'2025-10-17'),(19,'Arthur Gomes','2009-11-11','M',NULL,'Brasil',4,'2025-10-17'),(20,'Vitor Pires','2009-07-27','M',NULL,'Brasil',4,'2025-10-17'),(21,'Larissa Dias','2009-03-09','F',NULL,'Brasil',4,'2025-10-17'),(22,'Manuela Lima','2009-06-19','F',NULL,'Brasil',4,'2025-10-17'),(23,'Beatriz Mendes','2009-08-24','F',NULL,'Brasil',4,'2025-10-17'),(24,'Letícia Nogueira','2009-10-31','F',NULL,'Brasil',4,'2025-10-17'),(25,'Nicole Santos','2009-12-19','F',NULL,'Brasil',4,'2025-10-17'),(26,'Amanda Bastos','2009-04-08','F',NULL,'Brasil',4,'2025-10-17'),(27,'Sofia Queiroz','2009-09-17','F',NULL,'Brasil',4,'2025-10-17'),(28,'Marcelo Cruz','2008-02-01','M',NULL,'Brasil',5,'2025-10-17'),(29,'Eduardo Castro','2008-05-13','M',NULL,'Brasil',5,'2025-10-17'),(30,'Thiago Pereira','2008-09-06','M',NULL,'Brasil',5,'2025-10-17'),(31,'Hugo Rocha','2008-01-25','M',NULL,'Brasil',5,'2025-10-17'),(32,'Diego Campos','2008-11-19','M',NULL,'Brasil',5,'2025-10-17'),(33,'Alex Silva','2008-04-21','M',NULL,'Brasil',5,'2025-10-17'),(34,'Cauã Almeida','2008-07-02','M',NULL,'Brasil',5,'2025-10-17'),(35,'Carolina Vaz','2008-03-05','F',NULL,'Brasil',5,'2025-10-17'),(36,'Juliana Melo','2008-06-10','F',NULL,'Brasil',5,'2025-10-17'),(37,'Lívia Ribeiro','2008-08-29','F',NULL,'Brasil',5,'2025-10-17'),(38,'Clara Mendes','2008-10-14','F',NULL,'Brasil',5,'2025-10-17'),(39,'Helena Soares','2008-12-23','F',NULL,'Brasil',5,'2025-10-17'),(40,'Alice Pires','2008-04-01','F',NULL,'Brasil',5,'2025-10-17');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-03 19:24:56
