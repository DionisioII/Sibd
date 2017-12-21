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
-- Table structure for table `tipologia_cliente`
--

DROP TABLE IF EXISTS `tipologia_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipologia_cliente` (
  `tipo_cliente` set('A rischio','Normale','Sicuro') NOT NULL,
  `cliente_cod` varchar(15) NOT NULL,
  `margine` set('0.1','0.15','0.2','0.25') NOT NULL,
  `categoria` set('Azienda','Privato') NOT NULL,
  PRIMARY KEY (`tipo_cliente`,`cliente_cod`),
  KEY `cliente telefono_idx` (`cliente_cod`),
  KEY `tipo_cliente_idx` (`cliente_cod`),
  CONSTRAINT `tipo_cliente` FOREIGN KEY (`cliente_cod`) REFERENCES `cliente` (`codice`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `cliente telefono` FOREIGN KEY (`cliente_cod`) REFERENCES `cliente` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_cliente`
--

LOCK TABLES `tipologia_cliente` WRITE;
/*!40000 ALTER TABLE `tipologia_cliente` DISABLE KEYS */;
INSERT INTO `tipologia_cliente` VALUES ('A rischio','cmngmp92f04e65f','0.1','Privato'),('A rischio','dlflcu92s11i89j','0.25','Privato'),('Normale','rspgrg92c22r42v','0.2','Azienda'),('Normale','zzzlgu91m30f55e','0.25','Privato'),('Sicuro','dntmtt92a24e43n','0.15','Azienda');
/*!40000 ALTER TABLE `tipologia_cliente` ENABLE KEYS */;
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
