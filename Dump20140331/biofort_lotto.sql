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
-- Table structure for table `lotto`
--

DROP TABLE IF EXISTS `lotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotto` (
  `codice` varchar(10) NOT NULL,
  `numero_progressivo` varchar(6) NOT NULL,
  `data_apertura` date DEFAULT NULL,
  `quantità_iniziale` int(11) unsigned DEFAULT '0',
  `data_analisi` date DEFAULT NULL,
  `data_scadenza` date DEFAULT NULL,
  `nome_analista` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotto`
--

LOCK TABLES `lotto` WRITE;
/*!40000 ALTER TABLE `lotto` DISABLE KEYS */;
INSERT INTO `lotto` VALUES ('l1','1','2010-01-25',10,'2012-01-25','2013-01-25','giampiero'),('l2','2','2011-06-30',15,'2012-06-30','2013-06-30','luca'),('l3','3','2011-05-06',20,'2012-05-06','2013-05-06','michele'),('l4','4','2011-12-01',20,'2012-12-01','2013-12-01','matteo'),('l5','5','2012-10-03',20,'2013-10-03','2014-10-03','gianmarco'),('l6','6','2013-01-07',20,'2014-01-07','2015-01-07','luigi'),('l7','7','2013-02-20',15,'2014-02-20','2016-02-20','pasquale');
/*!40000 ALTER TABLE `lotto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-31 10:51:04
