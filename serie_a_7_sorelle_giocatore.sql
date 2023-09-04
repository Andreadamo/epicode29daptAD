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
-- Table structure for table `giocatore`
--

DROP TABLE IF EXISTS `giocatore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giocatore` (
  `ID_giocatore` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `Data_nascita` date DEFAULT NULL,
  `Ruolo` varchar(60) DEFAULT NULL,
  `squadra_id` int(11) DEFAULT NULL,
  `cognome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID_giocatore`),
  KEY `squadra_id` (`squadra_id`),
  CONSTRAINT `giocatore_ibfk_1` FOREIGN KEY (`squadra_id`) REFERENCES `squadra` (`ID_Squadra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giocatore`
--

LOCK TABLES `giocatore` WRITE;
/*!40000 ALTER TABLE `giocatore` DISABLE KEYS */;
INSERT INTO `giocatore` VALUES (19,'Alessandro','1999-04-13','Difensore',3,'Bastoni'),(20,'Stefano','1995-08-05','Centrocampista',3,'Sensi'),(21,'Matías','1991-08-24','Centrocampista',3,'Vecino'),(22,'Danilo','1988-09-09','Difensore',3,'D Ambrosio'),(23,'Alexis','1988-12-19','Attaccante',3,'Sanchez'),(24,'Andrea','1988-02-16','Difensore',3,'Ranocchia'),(25,'Roberto','1994-04-07','Centrocampista',3,'Gagliardini'),(26,'Matteo','1989-12-02','Difensore',3,'Darmian'),(27,'Ionut','1997-05-06','Portiere',3,'Radu'),(28,'Marcelo','1992-11-16','Centrocampista',3,'Brozovic'),(29,'Milan','1995-02-11','Difensore',3,'Skriniar'),(30,'Paulo','1993-11-15','Attaccante',1,'Dybala'),(31,'Weston','1998-08-28','Centrocampista',1,'McKennie'),(32,'Federico','1997-10-25','Attaccante',1,'Chiesa'),(33,'Álvaro','1992-10-23','Attaccante',1,'Morata'),(34,'Giorgio','1984-08-14','Difensore',1,'Chiellini'),(35,'Leonardo','1987-05-01','Difensore',1,'Bonucci'),(36,'Juan','1988-05-26','Centrocampista',1,'Cuadrado'),(37,'Rodrigo','1997-06-25','Centrocampista',1,'Bentancur'),(38,'Adrien','1995-04-03','Centrocampista',1,'Rabiot'),(39,'Dejan','2000-04-25','Attaccante',1,'Kulusevski'),(40,'Wojciech','1990-04-18','Portiere',1,'Szczesny'),(41,'Alessio','1995-01-12','Difensore',2,'Romagnoli'),(42,'Theo','1997-10-06','Difensore',2,'Hernandez'),(43,'Ismaël','1997-12-01','Centrocampista',2,'Bennacer'),(44,'Zlatan','1981-10-03','Attaccante',2,'Ibrahimovic'),(45,'Franck','1996-12-19','Centrocampista',2,'Kessie'),(46,'Hakan','1994-02-08','Centrocampista',2,'Calhanoglu'),(47,'Simon','1989-03-26','Difensore',2,'Kjaer'),(48,'Ante','1993-09-21','Attaccante',2,'Rebic'),(49,'Sandro','2000-05-08','Centrocampista',2,'Tonali'),(50,'Rafael','1999-06-10','Attaccante',2,'Leao'),(51,'Gianluigi','1999-02-25','Portiere',2,'Donnarumma'),(52,'Nikola','1997-10-12','Difensore',7,'Milenkovic'),(53,'Gaetano','1997-02-17','Centrocampista',7,'Castrovilli'),(54,'Federico','1997-10-25','Attaccante',7,'Chiesa'),(55,'Sofyan','1996-08-21','Centrocampista',7,'Amrabat'),(56,'Cristiano','1992-09-01','Difensore',7,'Biraghi'),(57,'Lucas','1996-05-10','Difensore',7,'Quarta'),(58,'Erick','1994-01-15','Centrocampista',7,'Pulgar'),(59,'Bartlomiej','1997-08-19','Portiere',7,'Dragowski'),(60,'Jose','1987-02-11','Attaccante',7,'Callejon'),(61,'Franck','1983-04-07','Centrocampista',7,'Ribery'),(62,'Lucas','1987-01-09','Centrocampista',7,'Leiva'),(63,'Lorenzo','1996-06-19','Centrocampista',5,'Pellegrini'),(64,'Jordan','1993-03-01','Centrocampista',5,'Veretout'),(65,'Henrikh','1989-01-21','Centrocampista',5,'Mkhitaryan'),(66,'Gianluca','1996-04-17','Difensore',5,'Mancini'),(67,'Rick','1995-02-11','Difensore',5,'Karsdorp'),(68,'Chris','1989-11-22','Difensore',5,'Smalling'),(69,'Leonardo','1993-03-25','Difensore',5,'Spinazzola'),(70,'Amadou','1997-07-17','Centrocampista',5,'Diawara'),(71,'Borja','1997-04-05','Attaccante',5,'Mayoral'),(72,'Bryan','1995-03-03','Centrocampista',5,'Cristante'),(73,'Federico','1987-03-17','Difensore',5,'Fazio'),(74,'Sergej','1995-02-27','Centrocampista',6,'Milinkovic-Savic'),(75,'Luis','1992-09-28','Centrocampista',6,'Alberto'),(76,'Manuel','1993-11-02','Centrocampista',6,'Lazzari'),(77,'Patric','1993-04-09','Difensore',6,'Gabarron'),(78,'Danilo','1994-08-06','Centrocampista',6,'Cataldi'),(79,'Pepe','1982-08-31','Portiere',6,'Reina'),(80,'Wesley','1994-03-06','Difensore',6,'Hoedt'),(81,'Joaquín','1994-08-13','Attaccante',6,'Correa'),(82,'Andreas','1996-01-01','Centrocampista',6,'Pereira'),(83,'Felipe','1988-09-05','Attaccante',6,'Caicedo'),(84,'Jony','1991-04-06','Centrocampista',6,'Rodriguez'),(85,'Lorenzo','1991-06-04','Attaccante',4,'Insigne'),(86,'Dries','1987-05-06','Attaccante',4,'Mertens'),(87,'Hirving','1995-07-30','Attaccante',4,'Lozano'),(88,'Kalidou','1991-06-20','Difensore',4,'Koulibaly'),(89,'Fabián','1996-04-03','Centrocampista',4,'Ruiz'),(90,'Mario','1991-05-27','Difensore',4,'Rui'),(91,'Andrea','1999-09-15','Portiere',4,'Petrarca'),(92,'Amir','1994-02-24','Difensore',4,'Rrahmani');
/*!40000 ALTER TABLE `giocatore` ENABLE KEYS */;
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
