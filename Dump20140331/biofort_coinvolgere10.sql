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
-- Table structure for table `coinvolgere1`
--

DROP TABLE IF EXISTS `coinvolgere1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coinvolgere1` (
  `codice_prodotto_finito` varchar(20) NOT NULL,
  `codice_componente` varchar(20) NOT NULL,
  `codice_lavorazione` varchar(20) NOT NULL,
  `durata_lavorazione` int(11) NOT NULL DEFAULT '0',
  `coefficiente_impiego` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`codice_prodotto_finito`,`codice_componente`),
  KEY `codice_componente` (`codice_componente`),
  KEY `codice_lavorazione` (`codice_lavorazione`),
  CONSTRAINT `codice_prodotto_finito2` FOREIGN KEY (`codice_prodotto_finito`) REFERENCES `prodotto_finito` (`codice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `codice_componente2` FOREIGN KEY (`codice_componente`) REFERENCES `componente` (`codice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `codice_lavorazione1` FOREIGN KEY (`codice_lavorazione`) REFERENCES `lavorazione` (`codice`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coinvolgere1`
--

LOCK TABLES `coinvolgere1` WRITE;
/*!40000 ALTER TABLE `coinvolgere1` DISABLE KEYS */;
INSERT INTO `coinvolgere1` VALUES ('prd1000','zzzww1','lav2',45,25),('prd1000','zzzww2','lav1',35,65),('prd1001','zzzwy1','lav3',56,30),('prd1001','zzzwy3','lav1',70,70),('prd1002','zzzww7','lav2',45,25),('prd1002','zzzww8','lav2',45,25),('prd1002','zzzwy1','lav4',45,50),('prd1003','zzzwy1','lav1',60,40),('prd1003','zzzwy4','lav3',50,60),('prd1004','zzzww2','lav2',45,50),('prd1004','zzzww3','lav3',45,50),('prd1005','zzzww6','lav1',30,100),('prd1006','zzzww5','lav4',30,50),('prd1006','zzzwy2','lav3',30,50),('prd1007','zzzww8','lav1',27,10),('prd1007','zzzwy1','lav2',23,90);
/*!40000 ALTER TABLE `coinvolgere1` ENABLE KEYS */;
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
