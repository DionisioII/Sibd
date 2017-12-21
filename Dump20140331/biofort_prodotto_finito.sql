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
-- Table structure for table `prodotto_finito`
--

DROP TABLE IF EXISTS `prodotto_finito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodotto_finito` (
  `codice` varchar(10) NOT NULL,
  `quantità` int(11) unsigned NOT NULL DEFAULT '0',
  `unità_misura` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `categoria` set('Corpo','Capelli') DEFAULT NULL,
  `avvertenze` text,
  `indicazioni` text,
  `controindicazioni` text,
  `costo_listino` float unsigned NOT NULL DEFAULT '0',
  `costo_di_produzione` float unsigned DEFAULT '0',
  `modalità_uso` text,
  PRIMARY KEY (`codice`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto_finito`
--

LOCK TABLES `prodotto_finito` WRITE;
/*!40000 ALTER TABLE `prodotto_finito` DISABLE KEYS */;
INSERT INTO `prodotto_finito` VALUES ('prd1000',750,'ml','shampo rhodiola-eucalipto','Capelli','Il prodotto è solo per uso esterno.','IIpersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',2.5,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1001',500,'ml','balsamo amaranto-braggine-alloro','Corpo','Il prodotto è solo per uso esterno.','IIpersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',3.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1002',350,'ml','shampo ginseng-rhodiola-assenzio-amaranto','Capelli','Il prodotto è solo per uso esterno.','IIpersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',3.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1003',500,'ml','balsamo amaranto-biancospino-ginseng','Corpo','Il prodotto è solo per uso esterno.','IIpersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',2.5,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1004',750,'ml','shampo candia-achillea-rhodiola','Capelli','Il prodotto è solo per uso esterno.','Ipersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',2.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1005',320,'ml','shampo ortica-eucalipto','Capelli','Il prodotto è solo per uso esterno.','Ipersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento  ',1.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1006',500,'ml','balsamo achillea-berdana-biancospino','Corpo','Il prodotto è solo per uso esterno.','Ipersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento',2.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.'),('prd1007',250,'ml','balsamo assenzio-amaranto','Corpo','Il prodotto è solo per uso esterno.','Ipersensibilità nota verso i componenti.','In caso di sensazione di bruciore, arrossamento della cute, prurito, ecc., interrompere il trattamento ',1.99,0,'Prima della applicazione, detergere la cute ed asciugarla accuratamente.');
/*!40000 ALTER TABLE `prodotto_finito` ENABLE KEYS */;
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
