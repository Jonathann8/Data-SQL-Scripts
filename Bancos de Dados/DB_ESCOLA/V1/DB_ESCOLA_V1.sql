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
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João da Costa','2010-02-15','M',NULL,'Brasil',3,'2025-10-17'),(2,'Pedro Henrique','2010-05-20','M',NULL,'Brasil',3,'2025-10-17'),(3,'Lucas Ferreira','2010-09-08','M',NULL,'Brasil',3,'2025-10-17'),(4,'Gustavo Lopes','2010-01-22','M',NULL,'Brasil',3,'2025-10-17'),(5,'Felipe Mendes','2010-11-03','M',NULL,'Brasil',3,'2025-10-17'),(6,'Daniel Alves','2010-04-18','M',NULL,'Brasil',3,'2025-10-17'),(7,'Ricardo Vieira','2010-07-29','M',NULL,'Brasil',3,'2025-10-17'),(8,'Ana Luiza Lima','2010-03-01','F',NULL,'Brasil',3,'2025-10-17'),(9,'Julia Costa','2010-06-14','F',NULL,'Brasil',3,'2025-10-17'),(10,'Mariana Rocha','2010-08-19','F',NULL,'Brasil',3,'2025-10-17'),(11,'Camila Borges','2010-10-25','F',NULL,'Brasil',3,'2025-10-17'),(12,'Isabella Reis','2010-12-07','F',NULL,'Brasil',3,'2025-10-17'),(13,'Giovanna Prado','2010-04-05','F',NULL,'Brasil',3,'2025-10-17'),(14,'Luiza Barbosa','2010-09-12','F',NULL,'Brasil',3,'2025-10-17'),(15,'Rafael Sousa','2009-02-04','M',NULL,'Brasil',4,'2025-10-17'),(16,'Gabriel Neves','2009-05-16','M',NULL,'Brasil',4,'2025-10-17'),(17,'Bruno Aguiar','2009-09-03','M',NULL,'Brasil',4,'2025-10-17'),(18,'Enzo Teixeira','2009-01-20','M',NULL,'Brasil',4,'2025-10-17'),(19,'Arthur Gomes','2009-11-11','M',NULL,'Brasil',4,'2025-10-17'),(20,'Vitor Pires','2009-07-27','M',NULL,'Brasil',4,'2025-10-17'),(21,'Larissa Dias','2009-03-09','F',NULL,'Brasil',4,'2025-10-17'),(22,'Manuela Lima','2009-06-19','F',NULL,'Brasil',4,'2025-10-17'),(23,'Beatriz Mendes','2009-08-24','F',NULL,'Brasil',4,'2025-10-17'),(24,'Letícia Nogueira','2009-10-31','F',NULL,'Brasil',4,'2025-10-17'),(25,'Nicole Santos','2009-12-19','F',NULL,'Brasil',4,'2025-10-17'),(26,'Amanda Bastos','2009-04-08','F',NULL,'Brasil',4,'2025-10-17'),(27,'Sofia Queiroz','2009-09-17','F',NULL,'Brasil',4,'2025-10-17'),(28,'Marcelo Cruz','2008-02-01','M',NULL,'Brasil',5,'2025-10-17'),(29,'Eduardo Castro','2008-05-13','M',NULL,'Brasil',5,'2025-10-17'),(30,'Thiago Pereira','2008-09-06','M',NULL,'Brasil',5,'2025-10-17'),(31,'Hugo Rocha','2008-01-25','M',NULL,'Brasil',5,'2025-10-17'),(32,'Diego Campos','2008-11-19','M',NULL,'Brasil',5,'2025-10-17'),(33,'Alex Silva','2008-04-21','M',NULL,'Brasil',5,'2025-10-17'),(34,'Cauã Almeida','2008-07-02','M',NULL,'Brasil',5,'2025-10-17'),(35,'Carolina Vaz','2008-03-05','F',NULL,'Brasil',5,'2025-10-17'),(36,'Juliana Melo','2008-06-10','F',NULL,'Brasil',5,'2025-10-17'),(37,'Lívia Ribeiro','2008-08-29','F',NULL,'Brasil',5,'2025-10-17'),(38,'Clara Mendes','2008-10-14','F',NULL,'Brasil',5,'2025-10-17'),(39,'Helena Soares','2008-12-23','F',NULL,'Brasil',5,'2025-10-17'),(40,'Alice Pires','2008-04-01','F',NULL,'Brasil',5,'2025-10-17');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (9,'Artes'),(5,'Biologia'),(10,'Educação Física'),(11,'Filosofia'),(3,'Física'),(7,'Geografia'),(6,'História'),(8,'Inglês'),(1,'Língua Portuguesa'),(2,'Matemática'),(4,'Química'),(12,'Sociologia');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `grade_aulas`
--

LOCK TABLES `grade_aulas` WRITE;
/*!40000 ALTER TABLE `grade_aulas` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'Profa. Língua Portuguesa - Helena','1982-03-10','F','2015-02-01',6800.00),(2,'Prof. Matemática - Otávio','1978-11-20','M','2010-08-15',7000.00),(3,'Prof. Física - Elias','1990-07-05','M','2022-03-01',5500.00),(4,'Profa. Química - Lígia','1988-04-12','F','2018-07-10',6200.00),(5,'Profa. Biologia - Fernanda','1985-09-25','F','2019-01-20',6000.00),(6,'Prof. História - César','1975-01-01','M','2011-05-05',7200.00),(7,'Profa. Geografia - Marta','1980-10-30','F','2014-06-18',6500.00),(8,'Prof. Inglês - Thomas','1992-06-18','M','2023-01-01',4800.00),(9,'Profa. Artes - Rebeca','1995-12-03','F','2024-03-15',4500.00),(10,'Prof. Educação Física - Rodrigo','1984-02-29','M','2016-09-01',5800.00),(11,'Prof. Filosofia - Igor','1987-08-08','M','2021-11-20',5000.00),(12,'Profa. Sociologia - Patrícia','1979-04-22','F','2013-04-10',6400.00);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'1A_EM_2025',NULL,2025),(2,'2A_EM_2025',NULL,2025),(3,'3A_EM_2025',NULL,2025);
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-03 19:44:35
