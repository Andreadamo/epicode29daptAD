-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: serie_a_7_sorelle
-- ------------------------------------------------------
-- Server version	5.7.43-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `partita`
--

DROP TABLE IF EXISTS `partita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partita` (
  `Id_partita` int(11) NOT NULL,
  `Data_partita` date DEFAULT NULL,
  `squadra_casa_id` int(11) DEFAULT NULL,
  `squadra_ospite_id` int(11) DEFAULT NULL,
  `punteggio_casa` int(11) DEFAULT NULL,
  `punteggio_ospite` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_partita`),
  KEY `squadra_casa_id` (`squadra_casa_id`),
  KEY `squadra_ospite_id` (`squadra_ospite_id`),
  CONSTRAINT `partita_ibfk_1` FOREIGN KEY (`squadra_casa_id`) REFERENCES `squadra` (`ID_Squadra`),
  CONSTRAINT `partita_ibfk_2` FOREIGN KEY (`squadra_ospite_id`) REFERENCES `squadra` (`ID_Squadra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partita`
--

LOCK TABLES `partita` WRITE;
/*!40000 ALTER TABLE `partita` DISABLE KEYS */;
INSERT INTO `partita` VALUES (601,'2021-01-06',2,1,3,0),(603,'2021-03-06',1,6,3,0),(902,'2021-02-09',7,1,1,1),(1001,'2021-01-06',5,3,2,2),(1203,'2020-12-19',3,7,4,3),(2401,'2021-01-24',6,2,3,0),(2802,'2021-02-28',2,5,2,1);
/*!40000 ALTER TABLE `partita` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-04  0:00:38
