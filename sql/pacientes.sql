-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: pacientes
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.47-MariaDB-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `consecutivo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documento` int(11) DEFAULT '0',
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `eps` varchar(50) DEFAULT NULL,
  `tp` float DEFAULT NULL,
  `ptt` float DEFAULT NULL,
  `at` float DEFAULT NULL,
  `tt` float DEFAULT NULL,
  `fibrinogeno` float DEFAULT NULL,
  PRIMARY KEY (`consecutivo`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (30,103664089,'Pepito','perez',25,'masculino','compensar',12.5,13.4,14.5,11.2,12.3),(31,1036651899,'David','Alvarez',23,'masculino','compensar',12.5,13.4,14.5,11.2,12.3),(32,1152462796,'JPIX','ROJAS',23,'masculino','nueva eps',25,20,35,45,280),(33,223456,'Prueba','prueba',20,'femenino','sura',15,34,20,45,200),(34,0,'','',0,'','',0,0,0,0,0),(35,1035679560,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,1035679560,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,1035679560,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,123141241,'algo','algo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,123141241,'algo','algo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,123141241,'algo','algo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,123141241,'pepito','perez',25,'masculino','sura',12.4,23.5,34.1,45.1,59.3);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pacientes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 22:59:38
