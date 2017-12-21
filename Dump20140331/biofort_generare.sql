CREATE DATABASE  IF NOT EXISTS `biofort` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `biofort`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: biofort
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `generare`
--

DROP TABLE IF EXISTS `generare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generare` (
  `numero_ordine_produzione` int(11) NOT NULL,
  `numero_modulo_ordine` int(11) NOT NULL,
  PRIMARY KEY (`numero_ordine_produzione`,`numero_modulo_ordine`),
  KEY `numero_modulo_ordine` (`numero_modulo_ordine`),
  CONSTRAINT `ordineproduzione` FOREIGN KEY (`numero_ordine_produzione`) REFERENCES `ordine_produzione` (`numero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `modulo_ d'ordine` FOREIGN KEY (`numero_modulo_ordine`) REFERENCES `modulo_ordine` (`numero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generare`
--

LOCK TABLES `generare` WRITE;
/*!40000 ALTER TABLE `generare` DISABLE KEYS */;
INSERT INTO `generare` VALUES (1,1),(2,1),(5,1),(2,2),(3,2),(1,3),(3,3),(4,3),(3,4),(6,4);
/*!40000 ALTER TABLE `generare` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-31 10:51:05
