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
-- Table structure for table `componente`
--

DROP TABLE IF EXISTS `componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componente` (
  `codice` varchar(10) NOT NULL,
  `colore` varchar(20) DEFAULT NULL,
  `note` text NOT NULL,
  `unità_misura` varchar(20) NOT NULL,
  `numero_disegno` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`codice`),
  UNIQUE KEY `numero_disegno` (`numero_disegno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente`
--

LOCK TABLES `componente` WRITE;
/*!40000 ALTER TABLE `componente` DISABLE KEYS */;
INSERT INTO `componente` VALUES ('zzzww1','verde scuro','eucalipto e ginseng','ml',1),('zzzww2','verde chiaro','rhodiola','ml',2),('zzzww3','bianco','candida e achillea','ml',3),('zzzww4','verde scuro','achillea e rhodiola','ml',4),('zzzww5','verde','achillea','ml',5),('zzzww6','bianco','ortica e eucalipto','ml',6),('zzzww7','verdechiaro','ginseng e rodiola','ml',7),('zzzww8','scuro','assenzio','ml',8),('zzzww9','verde','alloro e aglio','ml',9),('zzzwy1','verde','amaranto','ml',10),('zzzwy2','bianco','berdana e biancospino','ml',11),('zzzwy3','verde chiaro','braggine e alloro','ml',12),('zzzwy4','bianco','biancospino e ginseng','ml',13),('zzzwy5','verde','amaranto e ortica','ml',14),('zzzwy6','verde','amaranto e gineng','ml',15),('zzzwy7','verde','achillea e eucalipto','ml',16);
/*!40000 ALTER TABLE `componente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-31 10:51:03
