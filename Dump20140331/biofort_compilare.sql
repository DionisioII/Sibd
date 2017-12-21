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
-- Table structure for table `compilare`
--

DROP TABLE IF EXISTS `compilare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compilare` (
  `numero_modulo_ordine` int(11) NOT NULL,
  `codice_cliente` varchar(20) NOT NULL,
  PRIMARY KEY (`numero_modulo_ordine`,`codice_cliente`),
  KEY `codice_cliente` (`codice_cliente`),
  CONSTRAINT `compilare_modulo` FOREIGN KEY (`numero_modulo_ordine`) REFERENCES `modulo_ordine` (`numero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cliente_compilazione` FOREIGN KEY (`codice_cliente`) REFERENCES `cliente` (`codice`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compilare`
--

LOCK TABLES `compilare` WRITE;
/*!40000 ALTER TABLE `compilare` DISABLE KEYS */;
INSERT INTO `compilare` VALUES (1,'cmngmp92f04e65f'),(3,'cmngmp92f04e65f'),(5,'cmngmp92f04e65f'),(2,'dlflcu92s11i89j'),(3,'dntmtt92a24e43n'),(4,'dntmtt92a24e43n'),(5,'rspgrg92c22r42v'),(1,'zzzlgu91m30f55e'),(2,'zzzlgu91m30f55e');
/*!40000 ALTER TABLE `compilare` ENABLE KEYS */;
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
