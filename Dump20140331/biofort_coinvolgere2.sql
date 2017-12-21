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
-- Table structure for table `coinvolgere2`
--

DROP TABLE IF EXISTS `coinvolgere2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coinvolgere2` (
  `codice_componente` varchar(20) NOT NULL,
  `codice_ingrediente` varchar(20) NOT NULL,
  `codice_metodo_produzione` varchar(20) NOT NULL DEFAULT '',
  `durata_metodo_produzione` int(11) NOT NULL DEFAULT '0',
  `coefficiente_impiego` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`codice_componente`,`codice_ingrediente`),
  KEY `codice_ingrediente` (`codice_ingrediente`),
  KEY `codice_metodo_produzione` (`codice_metodo_produzione`),
  CONSTRAINT `codice_componente` FOREIGN KEY (`codice_componente`) REFERENCES `componente` (`codice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `codice_ingrediente` FOREIGN KEY (`codice_ingrediente`) REFERENCES `ingrediente` (`codice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `metodo_produzione` FOREIGN KEY (`codice_metodo_produzione`) REFERENCES `metodo_produzione` (`codice`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coinvolgere2`
--

LOCK TABLES `coinvolgere2` WRITE;
/*!40000 ALTER TABLE `coinvolgere2` DISABLE KEYS */;
INSERT INTO `coinvolgere2` VALUES ('zzzww1','aaabb2','L003',45,75),('zzzww1','aaabb3','L003',21,25),('zzzww2','aaabb1','L001',53,100),('zzzww3','aaabb4','L002',15,50),('zzzww3','aaabb5','L004',30,50),('zzzww4','aaabb1','L001',32,10),('zzzww4','aaabb5','L002',75,90),('zzzww5','aaabb5','L004',50,100),('zzzww6','aaabb3','L003',45,80),('zzzww6','aaabb4','L002',75,20),('zzzww7','aaabb1','L001',45,45),('zzzww7','aaabb2','L002',90,55),('zzzww8','aaabc1','L002',25,100),('zzzww9','aaabb8','L006',30,60),('zzzww9','aaabb9','L002',30,40),('zzzwy1','aaabb7','L001',30,100),('zzzwy2','aaabc2','L004',25,25),('zzzwy2','aaabc3','L006',23,75),('zzzwy3','aaabb8','L004',10,50),('zzzwy3','aaabc4','L001',50,50),('zzzwy4','aaabb2','L001',25,60),('zzzwy4','aaabc3','L002',75,30),('zzzwy5','aaabb6','L002',65,70),('zzzwy5','aaabb7','L001',35,30),('zzzwy6','aaabb4','L001',60,10),('zzzwy6','aaabb7','L003',50,90),('zzzwy7','aaabb3','L006',45,32),('zzzwy7','aaabb5','L003',56,68);
/*!40000 ALTER TABLE `coinvolgere2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-31 10:51:02
