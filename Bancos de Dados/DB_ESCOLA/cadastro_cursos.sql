CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT 2016,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'Python','Curso de Python',40,18,2017),(9,'POO','Curso de Programação Orientada a Objetos',60,35,2016),(11,'Responsividade','Curso de Responsividade',30,15,2018),(12,'C++','Curso de C++ com Orientação a Objetos',40,25,2017),(13,'C#','Curso de C#',30,12,2017),(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),(15,'JavaScript','Curso de JavaScript',35,18,2017),(16,'PowerPoint','Curso completo de PowerPoint',30,12,2018),(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),(18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2017),(19,'Redes','Curso de Redes para Iniciantes',40,15,2016),(20,'Segurança','Curso de Segurança',15,8,2018),(21,'SEO','Curso de Otimização de Sites',30,12,2017),(22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2017),(23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2018),(24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2019),(25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),(26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2019),(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),(28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2010),(29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),(30,'PHP4','Curso de PHP, versão 4.0',30,11,2010);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
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
