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
-- Table structure for table `ingrediente`
--

DROP TABLE IF EXISTS `ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingrediente` (
  `codice` varchar(10) NOT NULL,
  `nome_scientifico` varchar(50) NOT NULL,
  `unità_misura` varchar(20) NOT NULL,
  `provenienza` varchar(20) DEFAULT NULL,
  `note` text,
  `selettore_estratto` binary(1) DEFAULT '0',
  `colore` varchar(20) DEFAULT NULL,
  `aspetto` varchar(20) DEFAULT NULL,
  `viscosità` float unsigned DEFAULT '0',
  `densità` float unsigned DEFAULT '0',
  `ph` float unsigned DEFAULT '0',
  `carica_microbica` float unsigned DEFAULT '0',
  `solubilità` float unsigned DEFAULT '0',
  `gradazione_alcolica` float unsigned DEFAULT '0',
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES `ingrediente` WRITE;
/*!40000 ALTER TABLE `ingrediente` DISABLE KEYS */;
INSERT INTO `ingrediente` VALUES ('aaabb1','rhodiola','ml','ursss',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb2','ginseng','ml','cina',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb3','eucalipto','ml','cina',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb4','candida','ml','jackarta',NULL,'0','bianco',NULL,0,0,0,0,0,0),('aaabb5','achillea','ml','francia',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb6','ortica','ml','italia',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb7','amaranto','ml','polonia',NULL,'0','bianco',NULL,0,0,0,0,0,0),('aaabb8','alloro','ml','italia',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabb9','aglio','ml','italia',NULL,'0','giallo',NULL,0,0,0,0,0,0),('aaabc1','assenzio','ml','francia',NULL,'0','verde',NULL,0,0,0,0,0,0),('aaabc2','berdana','ml','italia',NULL,'0','nero',NULL,0,0,0,0,0,0),('aaabc3','biancospino','ml','italia',NULL,'0','bianco',NULL,0,0,0,0,0,0),('aaabc4','braggine','ml','italia',NULL,'0','verde',NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ingrediente` ENABLE KEYS */;
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
