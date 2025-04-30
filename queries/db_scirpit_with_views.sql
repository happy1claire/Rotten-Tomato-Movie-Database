-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.3.0

CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

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
-- Table structure for table `Actors`
--

DROP TABLE IF EXISTS `Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actors` (
  `Actor_ID` int unsigned NOT NULL,
  `Actor_First_Name` varchar(45) NOT NULL,
  `Actor_Last_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Actor_ID`),
  UNIQUE KEY `Actor_ID_UNIQUE` (`Actor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actors`
--

LOCK TABLES `Actors` WRITE;
/*!40000 ALTER TABLE `Actors` DISABLE KEYS */;
INSERT INTO `Actors` VALUES (1,'Logan','Lerman'),(2,'Brandon','Jackson'),(3,'Alexandra','Daddario'),(4,'Vincent','Pastore'),(5,'Vincent','Sassone'),(6,'Frank','Vincent'),(7,'Colin','Firth'),(8,'Leslie','Zemeckis'),(9,'Cary','Elwes'),(10,'John','Travolta'),(11,'Robin','Williams'),(12,'Seth','Green'),(13,'Collins','Pennie'),(14,'Kristy','Flores'),(15,'Asher','Book'),(16,'Maeve','Dermody'),(17,'Diana','Glenn'),(18,'Ben','Oxenbould'),(19,'David','Niven'),(20,'Shirley','MacLaine'),(21,'Robert','Newton'),(22,'Gregory','Peck'),(23,'Laurence','Olivier'),(24,'James','Mason'),(25,'Barbara','Stanwyck'),(26,'Dennis','Morgan'),(27,'Sydney','Greenstreet'),(28,'Humphrey','Bogart'),(29,'Rod','Steiger'),(30,'Jan','Sterling'),(31,'Ingrid','Bergman'),(32,'Claude','Rains'),(33,'Steve','Martin'),(34,'Lily','Tomlin'),(35,'Victoria','Tennant'),(36,'Errol','Flynn'),(37,'Basil','Rathbone'),(38,'Sigourney','Weaver'),(39,'Carrie','Henn'),(40,'Michael','Biehn'),(41,'Taylor','Kitsch'),(42,'Alexander','Skarsgard'),(43,'Robyn','Fenty'),(44,'Bob','Cummings'),(45,'Dorothy','Malone'),(46,'Annette','Funicello'),(47,'Marc','Anthony'),(48,'Jennifer','Lopez'),(49,'John','Ortiz'),(50,'Hilary','Duff'),(51,'Oliver','James'),(52,'Rita','Wilson'),(53,'Eric','Stoltz'),(54,'Kate','Connor'),(55,'Lyndsy','Fonseca'),(56,'Katsuhiko','Sasaki'),(57,'Hiroyuki','Kawase'),(58,'Yutaka','Hayashi'),(59,'Ned','Beatty'),(60,'Adrian','Dunbar'),(61,'David','McCallum'),(62,'Harrison','Ford'),(63,'Kristin','Thomas'),(64,'Charles','Dutton'),(65,'Timothy','Cavanaugh'),(66,'Luke','Benward'),(67,'Hallie','Eisenberg'),(68,'Jiseon','Kim'),(69,'Taegu','Kang'),(70,'Bok-ja','Kim'),(71,'Laura','Dern'),(72,'Robert','Duvall'),(73,'Diane','Ladd'),(74,'Natalie','Portman'),(75,'Peter','Sarsgaard'),(76,'Greta','Gerwig'),(77,'Viggo','Mortensen'),(78,'Ghita','Nørby'),(79,'Viilbjørk','Agger'),(80,'Meryl','Streep'),(81,'Diane','Keaton'),(82,'Leonardo','DiCaprio'),(83,'Daniel','Auteuil'),(84,'Dany','Boon'),(85,'Julie','Gayet');
/*!40000 ALTER TABLE `Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `adapted_movie_ratings`
--

DROP TABLE IF EXISTS `adapted_movie_ratings`;
/*!50001 DROP VIEW IF EXISTS `adapted_movie_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `adapted_movie_ratings` AS SELECT 
 1 AS `Has_Adaption`,
 1 AS `Average_Rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Adaptions`
--

DROP TABLE IF EXISTS `Adaptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adaptions` (
  `Adaption_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Adaption_Source_Type` varchar(45) NOT NULL,
  `Adaption_Source_Title` varchar(70) NOT NULL,
  `Adaption_Author_First_Name` varchar(45) NOT NULL,
  `Adaption_Author_Last_Name` varchar(45) NOT NULL,
  `Adaption_Publication_Year` int NOT NULL,
  `Movie_Movie_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Adaption_ID`),
  UNIQUE KEY `Adaption_ID_UNIQUE` (`Adaption_ID`),
  KEY `fk_Adaption_Movie1_idx` (`Movie_Movie_ID`),
  CONSTRAINT `fk_Adaption_Movie1` FOREIGN KEY (`Movie_Movie_ID`) REFERENCES `Movies` (`Movie_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adaptions`
--

LOCK TABLES `Adaptions` WRITE;
/*!40000 ALTER TABLE `Adaptions` DISABLE KEYS */;
INSERT INTO `Adaptions` VALUES (1,'novel','Percy Jackson & the Olympians: The Lightning Thief','Rick','Riordan',2005,17),(2,'novel','A Christmas Carol','Charles','Dickens',1843,20),(3,'novel','Around the World in 80 Days','Jules','Verne',1873,24),(4,'novel','The Boys from Brazil','Ira','Levin',1976,25),(5,'play','Everybody Comes to Rick\'s','Murray','Burnett',1940,27),(6,'novel','The Merry Adventures of Robin Hood','Howard','Pyle',1883,29),(7,'novel','Random Hearts','Warren','Adler',1984,8),(8,'children\'s book','How to Eat Fried Worms','Thomas','Rockwell',1973,9),(9,'novel','Rambling Rose','Calder','Willingham',1991,11),(10,'play','Marvin\'s Room','Scott','McPherson',1990,14),(11,'short story','Button, Button','Logan','Swanson',1986,15);
/*!40000 ALTER TABLE `Adaptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `average_movie_length_us`
--

DROP TABLE IF EXISTS `average_movie_length_us`;
/*!50001 DROP VIEW IF EXISTS `average_movie_length_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `average_movie_length_us` AS SELECT 
 1 AS `Nation_Name`,
 1 AS `Average_Movie_Length`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Awards`
--

DROP TABLE IF EXISTS `Awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Awards` (
  `Award_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Award_Name` varchar(70) NOT NULL,
  PRIMARY KEY (`Award_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Awards`
--

LOCK TABLES `Awards` WRITE;
/*!40000 ALTER TABLE `Awards` DISABLE KEYS */;
INSERT INTO `Awards` VALUES (1,'Academy Awards'),(2,'Golden Globe Awards'),(3,'BAFTA Awards'),(4,'Cannes Film Festival Awards'),(5,'Berlin International Film Festival Awards'),(6,'Venice Film Festival Awards'),(7,'Screen Actors Guild Awards'),(8,'Critics\' Choice Movie Awards'),(9,'Directors Guild of America Awards'),(10,'Producers Guild of America Awards'),(11,'Writers Guild of America Awards'),(12,'Independent Spirit Awards'),(13,'National Board of Review Awards'),(14,'Gotham Awards'),(15,'Satellite Awards'),(16,'American Film Institute Awards'),(17,'Toronto International Film Festival Awards'),(18,'Australian Academy of Cinema and Television Arts Awards'),(19,'European Film Awards'),(20,'Hong Kong Film Awards'),(21,'Hollywood Film Awards'),(22,'British Comedy Awards'),(23,'Film Independent Spirit Awards'),(24,'Boston Society of Film Critics Awards'),(25,'Christopher Awards');
/*!40000 ALTER TABLE `Awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `country_most_adpations`
--

DROP TABLE IF EXISTS `country_most_adpations`;
/*!50001 DROP VIEW IF EXISTS `country_most_adpations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `country_most_adpations` AS SELECT 
 1 AS `Nation_name`,
 1 AS `Adaption_Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Directors`
--

DROP TABLE IF EXISTS `Directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Directors` (
  `Director_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Director_First_Name` varchar(45) NOT NULL,
  `Director_Last_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Director_ID`),
  UNIQUE KEY `Director_ID_UNIQUE` (`Director_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Directors`
--

LOCK TABLES `Directors` WRITE;
/*!40000 ALTER TABLE `Directors` DISABLE KEYS */;
INSERT INTO `Directors` VALUES (1,'Chris','Columbus'),(2,'Vincent','Sassone'),(3,'Robert','Zemeckis'),(4,'Walt','Becker'),(5,'Kevin','Tancharoen'),(6,'David','Nerlich'),(7,'Andrew','Traucki'),(8,'Michael','Anderson'),(9,'Franklin','Schaffner'),(10,'Peter','Godfrey'),(11,'Mark','Robson'),(12,'Michael','Curtiz'),(13,'Carl','Reiner'),(14,'Michael','Curtiz'),(15,'William','Keighley'),(16,'James','Cameron'),(17,'Peter','Berg'),(18,'William','Asher'),(19,'Sean','McNamara'),(20,'Leon','Ichaso'),(21,'Michael','Worth'),(22,'Jun','Fukuda'),(23,'Peter','Chelsom'),(24,'Sydney','Pollack'),(25,'Bob','Dolman'),(26,'So Yong','Kim'),(27,'Martha','Coolidge'),(28,'Pablo','Larra'),(29,'Lisandro','Alonso'),(30,'Jerry','Zaks'),(31,'Richard','Kelly'),(32,'Jim','Jarmusch'),(33,'Kate','Connor');
/*!40000 ALTER TABLE `Directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `generes_box_office`
--

DROP TABLE IF EXISTS `generes_box_office`;
/*!50001 DROP VIEW IF EXISTS `generes_box_office`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `generes_box_office` AS SELECT 
 1 AS `Genre_Name`,
 1 AS `Genre_Box_Office`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Genres`
--

DROP TABLE IF EXISTS `Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genres` (
  `Genre_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Genre_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Genre_ID`),
  UNIQUE KEY `Genre_ID_UNIQUE` (`Genre_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genres`
--

LOCK TABLES `Genres` WRITE;
/*!40000 ALTER TABLE `Genres` DISABLE KEYS */;
INSERT INTO `Genres` VALUES (1,'Action & Adventure'),(2,'Comedy'),(3,'Drama'),(4,'Science Fiction & Fantasy'),(5,'Animation'),(6,'Kids & Family'),(7,'Musical & Performing Arts'),(8,'Romance'),(9,'Horror'),(10,'Mystery & Suspense'),(11,'Classics'),(12,'Art House & International'),(13,'Documentary'),(14,'Special Interest'),(15,'Sports & Fitness'),(16,'Western'),(17,'Cult Movies'),(18,'Television'),(19,'Faith & Spirituality'),(20,'Gay & Lesbian');
/*!40000 ALTER TABLE `Genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `most_common_genre_post2000`
--

DROP TABLE IF EXISTS `most_common_genre_post2000`;
/*!50001 DROP VIEW IF EXISTS `most_common_genre_post2000`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `most_common_genre_post2000` AS SELECT 
 1 AS `Genre_Name`,
 1 AS `Genre_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies` (
  `Movie_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Movie_Title` varchar(70) NOT NULL,
  `Movie_Release_Year` int NOT NULL,
  `Movie_Length` float unsigned NOT NULL,
  `Movie_Budget` float unsigned NOT NULL,
  `Movie_Box_Office` float unsigned NOT NULL,
  `Movie_Rating` float unsigned NOT NULL,
  `Producers_Producer_ID` int unsigned NOT NULL,
  `Nation_Nation_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Movie_ID`),
  UNIQUE KEY `Movie_ID_UNIQUE` (`Movie_ID`),
  KEY `fk_Movie_Publisher1_idx` (`Producers_Producer_ID`),
  KEY `fk_Movie_Nation1_idx` (`Nation_Nation_ID`),
  CONSTRAINT `fk_Movie_Nation1` FOREIGN KEY (`Nation_Nation_ID`) REFERENCES `Nations` (`Nation_ID`),
  CONSTRAINT `fk_Movie_Publisher1` FOREIGN KEY (`Producers_Producer_ID`) REFERENCES `Producers` (`Producer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'Battleship',2012,131,2.09,3.03,34,1,1),(2,'Beach Party',1963,101,0.3,0.23,43,2,1),(3,'Raise Your Voice',2004,106,15,14.8,15,3,1),(4,'El Cantante',2007,116,25,24.52,25,4,1),(5,'Fort McCoy',2014,101,3,0.012,50,5,1),(6,'Godzilla vs. Megalon',1973,80,1.2,20,38,6,7),(7,'Hear My Song',1991,104,2.64,4.4,90,7,2),(8,'Random Hearts',1999,133,64,74.6,15,15,1),(9,'How to Eat Fried Worms',2006,84,26,13.1,60,20,1),(10,'In Between Days',2007,82,0.06,0.15,86,8,10),(11,'Rambling Rose',1991,115,7.5,6.3,100,9,1),(12,'Jackie',2016,99,9,36.6,87,10,1),(13,'Jauja',2015,108,0.16,0.014,88,21,1),(14,'Marvin\'s Room',1996,98,23,30,84,7,1),(15,'The Box',2009,113,30,33.3,44,16,1),(16,'Paterson',2016,118,5,10.8,96,22,1),(17,'Percy Jackson & the Olympians: The Lightning Thief',2010,119,95,226.4,49,11,1),(18,'A Tale of Two Pizzas',2003,82,1,0.00148,38,12,1),(19,'Disney\'s A Christmas Carol',2009,95,200,325.3,52,13,1),(20,'Old Dogs',2009,88,35,96.8,5,13,1),(21,'Fame',2009,107,18,77.2,24,2,1),(22,'Black Water',2008,90,0.5,1.27,80,14,6),(23,'Around the World in 80 Days',1956,170,6,42,69,15,1),(24,'The Boys from Brazil',1978,123,12,19.4,69,11,1),(25,'Christmas in Connecticut',1945,88,0.864,3,101,16,1),(26,'The Harder They Fall',1956,109,90,0.0083,100,17,1),(27,'Casablanca',1942,102,1,3.7,99,16,1),(28,'All of Me',1984,93,10,36.4,85,18,1),(29,'The Adventures of Robin Hood',1938,102,2.033,3.98,100,16,1),(30,'Aliens',1986,137,18.5,131.1,97,11,1);
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_has_Actors`
--

DROP TABLE IF EXISTS `Movies_has_Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_has_Actors` (
  `Movies_Movie_ID` int unsigned NOT NULL,
  `Actors_Actor_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Movies_Movie_ID`,`Actors_Actor_ID`),
  KEY `fk_Movies_has_Actors_Actors1_idx` (`Actors_Actor_ID`),
  KEY `fk_Movies_has_Actors_Movies1_idx` (`Movies_Movie_ID`),
  CONSTRAINT `fk_Movies_has_Actors_Actors1` FOREIGN KEY (`Actors_Actor_ID`) REFERENCES `Actors` (`Actor_ID`),
  CONSTRAINT `fk_Movies_has_Actors_Movies1` FOREIGN KEY (`Movies_Movie_ID`) REFERENCES `Movies` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_has_Actors`
--

LOCK TABLES `Movies_has_Actors` WRITE;
/*!40000 ALTER TABLE `Movies_has_Actors` DISABLE KEYS */;
INSERT INTO `Movies_has_Actors` VALUES (17,1),(17,2),(17,3),(18,4),(18,5),(18,6),(19,7),(19,8),(19,9),(20,10),(20,11),(20,12),(21,13),(21,14),(21,15),(22,16),(22,17),(22,18),(23,19),(23,20),(23,21),(24,22),(24,23),(24,24),(25,25),(25,26),(25,27),(26,28),(26,29),(26,30),(27,31),(27,32),(27,33),(28,34),(28,35),(28,36),(29,37),(29,38),(29,39),(30,39),(30,40),(1,41),(1,42),(1,43),(2,44),(2,45),(2,46),(4,47),(4,48),(4,49),(3,50),(3,51),(3,52),(5,53),(5,54),(5,55),(6,56),(6,57),(6,58),(7,59),(7,60),(7,61),(8,62),(8,63),(8,64),(9,65),(9,66),(9,67),(10,68),(10,69),(10,70),(11,71),(11,72),(11,73),(12,74),(12,75),(12,76),(13,77),(13,78),(13,79),(14,80),(14,81),(14,82),(15,83),(15,84),(15,85);
/*!40000 ALTER TABLE `Movies_has_Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_has_Awards`
--

DROP TABLE IF EXISTS `Movies_has_Awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_has_Awards` (
  `Movies_Movie_ID` int unsigned NOT NULL,
  `Awards_Award_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Movies_Movie_ID`,`Awards_Award_ID`),
  KEY `fk_Awards_has_Movies_Movies1_idx` (`Movies_Movie_ID`),
  KEY `fk_Awards_has_Movies_Awards1_idx` (`Awards_Award_ID`),
  CONSTRAINT `fk_Awards_has_Movies_Awards1` FOREIGN KEY (`Awards_Award_ID`) REFERENCES `Awards` (`Award_ID`),
  CONSTRAINT `fk_Awards_has_Movies_Movies1` FOREIGN KEY (`Movies_Movie_ID`) REFERENCES `Movies` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_has_Awards`
--

LOCK TABLES `Movies_has_Awards` WRITE;
/*!40000 ALTER TABLE `Movies_has_Awards` DISABLE KEYS */;
INSERT INTO `Movies_has_Awards` VALUES (5,21),(7,22),(10,5),(11,23),(12,24),(13,4),(24,1),(28,1),(30,1);
/*!40000 ALTER TABLE `Movies_has_Awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_has_Directors`
--

DROP TABLE IF EXISTS `Movies_has_Directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_has_Directors` (
  `Movies_Movie_ID` int unsigned NOT NULL,
  `Directors_Director_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Movies_Movie_ID`,`Directors_Director_ID`),
  KEY `fk_Movies_has_Directors_Directors1_idx` (`Directors_Director_ID`),
  KEY `fk_Movies_has_Directors_Movies1_idx` (`Movies_Movie_ID`),
  CONSTRAINT `fk_Movies_has_Directors_Directors1` FOREIGN KEY (`Directors_Director_ID`) REFERENCES `Directors` (`Director_ID`),
  CONSTRAINT `fk_Movies_has_Directors_Movies1` FOREIGN KEY (`Movies_Movie_ID`) REFERENCES `Movies` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_has_Directors`
--

LOCK TABLES `Movies_has_Directors` WRITE;
/*!40000 ALTER TABLE `Movies_has_Directors` DISABLE KEYS */;
INSERT INTO `Movies_has_Directors` VALUES (17,1),(18,2),(19,3),(20,4),(21,5),(22,6),(22,7),(23,8),(24,9),(25,10),(26,11),(27,12),(28,13),(29,14),(29,15),(30,16),(1,17),(2,18),(3,19),(4,20),(5,21),(5,22),(6,23),(7,24),(8,25),(9,26),(10,27),(11,28),(12,29),(13,30),(14,31),(15,32),(16,33);
/*!40000 ALTER TABLE `Movies_has_Directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies_has_Genres`
--

DROP TABLE IF EXISTS `Movies_has_Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies_has_Genres` (
  `Genres_Genre_ID` int unsigned NOT NULL,
  `Movies_Movie_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Genres_Genre_ID`,`Movies_Movie_ID`),
  KEY `fk_Genres_has_Movies_Movies1_idx` (`Movies_Movie_ID`),
  KEY `fk_Genres_has_Movies_Genres1_idx` (`Genres_Genre_ID`),
  CONSTRAINT `fk_Genres_has_Movies_Genres1` FOREIGN KEY (`Genres_Genre_ID`) REFERENCES `Genres` (`Genre_ID`),
  CONSTRAINT `fk_Genres_has_Movies_Movies1` FOREIGN KEY (`Movies_Movie_ID`) REFERENCES `Movies` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies_has_Genres`
--

LOCK TABLES `Movies_has_Genres` WRITE;
/*!40000 ALTER TABLE `Movies_has_Genres` DISABLE KEYS */;
INSERT INTO `Movies_has_Genres` VALUES (1,1),(17,1),(2,2),(7,2),(9,2),(11,2),(13,2),(17,2),(18,2),(20,2),(2,3),(3,3),(4,3),(5,3),(7,3),(8,3),(10,3),(11,3),(12,3),(13,3),(14,3),(17,3),(19,3),(20,3),(1,4),(6,4),(15,4),(17,4),(19,4),(19,5),(19,6),(20,6),(2,7),(3,7),(4,7),(8,8),(6,9),(15,9),(8,10),(15,10),(2,11),(10,12),(10,13);
/*!40000 ALTER TABLE `Movies_has_Genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nations`
--

DROP TABLE IF EXISTS `Nations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nations` (
  `Nation_ID` int unsigned NOT NULL,
  `Nation_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Nation_ID`),
  UNIQUE KEY `Nation_Name_UNIQUE` (`Nation_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nations`
--

LOCK TABLES `Nations` WRITE;
/*!40000 ALTER TABLE `Nations` DISABLE KEYS */;
INSERT INTO `Nations` VALUES (16,'Argentina'),(6,'Australia'),(14,'Brazil'),(5,'Canada'),(8,'China'),(19,'Denmark'),(3,'France'),(4,'Germany'),(9,'India'),(11,'Italy'),(7,'Japan'),(13,'Mexico'),(18,'Netherlands'),(20,'Norway'),(15,'Russia'),(10,'South Korea'),(12,'Spain'),(17,'Sweden'),(2,'United Kingdom'),(1,'United States');
/*!40000 ALTER TABLE `Nations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producers`
--

DROP TABLE IF EXISTS `Producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producers` (
  `Producer_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Producer_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Producer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producers`
--

LOCK TABLES `Producers` WRITE;
/*!40000 ALTER TABLE `Producers` DISABLE KEYS */;
INSERT INTO `Producers` VALUES (1,'Universal'),(2,'MGM'),(3,'New Line Cinema'),(4,'Picturehouse'),(5,'Monterey Media'),(6,'Toho Company'),(7,'Miramax Films'),(8,'Kino International'),(9,'Live Home Video'),(10,'Fox Searchlight Pictures'),(11,'20th Century Fox'),(12,'Hot Pie LLC'),(13,'Walt Disney Studios'),(14,'GGrindstone Entertainment Group'),(15,'United Artists'),(16,'Warner Bros. Pictures'),(17,'Sony Pictures Entertainment'),(18,'HBO Video'),(19,'Columbia Pictures'),(20,'New Line Cinema'),(21,'Cinema Guild'),(22,'K5 International');
/*!40000 ALTER TABLE `Producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `adapted_movie_ratings`
--

/*!50001 DROP VIEW IF EXISTS `adapted_movie_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `adapted_movie_ratings` AS select `adaption_status`.`Has_Adaption` AS `Has_Adaption`,avg(`adaption_status`.`Movie_Rating`) AS `Average_Rating` from (select `m`.`Movie_ID` AS `Movie_ID`,`m`.`Movie_Rating` AS `Movie_Rating`,(case when (`a`.`Movie_Movie_ID` is null) then 'No' else 'Yes' end) AS `Has_Adaption` from (`movies` `m` left join `adaptions` `a` on((`m`.`Movie_ID` = `a`.`Movie_Movie_ID`)))) `Adaption_Status` group by `adaption_status`.`Has_Adaption` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `average_movie_length_us`
--

/*!50001 DROP VIEW IF EXISTS `average_movie_length_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_movie_length_us` AS select `n`.`Nation_Name` AS `Nation_Name`,round(avg(`m`.`Movie_Length`),2) AS `Average_Movie_Length` from (`movies` `m` join `nations` `n` on((`m`.`Nation_Nation_ID` = `n`.`Nation_ID`))) where (`n`.`Nation_Name` = 'United States') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `country_most_adpations`
--

/*!50001 DROP VIEW IF EXISTS `country_most_adpations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `country_most_adpations` AS select `n`.`Nation_Name` AS `Nation_name`,count(`a`.`Adaption_ID`) AS `Adaption_Amount` from ((`movies` `m` join `adaptions` `a` on((`m`.`Movie_ID` = `a`.`Movie_Movie_ID`))) join `nations` `n` on((`m`.`Nation_Nation_ID` = `n`.`Nation_ID`))) group by `n`.`Nation_ID` order by `Adaption_Amount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `generes_box_office`
--

/*!50001 DROP VIEW IF EXISTS `generes_box_office`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `generes_box_office` AS with `genres_box_office` as (select round(sum(`m`.`Movie_Box_Office`),2) AS `Genre_box_office`,`g`.`Genre_ID` AS `Genre_ID` from ((`movies_has_genres` `mg` join `movies` `m` on((`mg`.`Movies_Movie_ID` = `m`.`Movie_ID`))) join `genres` `g` on((`mg`.`Genres_Genre_ID` = `g`.`Genre_ID`))) group by `g`.`Genre_ID`) select `g`.`Genre_Name` AS `Genre_Name`,`gbo`.`Genre_box_office` AS `Genre_Box_Office` from (`genres` `g` join `genres_box_office` `gbo` on((`g`.`Genre_ID` = `gbo`.`Genre_ID`))) order by `gbo`.`Genre_box_office` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_common_genre_post2000`
--

/*!50001 DROP VIEW IF EXISTS `most_common_genre_post2000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_common_genre_post2000` AS select `g`.`Genre_Name` AS `Genre_Name`,count(0) AS `Genre_Count` from ((`movies` `m` join `movies_has_genres` `mhg` on((`m`.`Movie_ID` = `mhg`.`Movies_Movie_ID`))) join `genres` `g` on((`mhg`.`Genres_Genre_ID` = `g`.`Genre_ID`))) where (`m`.`Movie_Release_Year` > 2000) group by `g`.`Genre_Name` order by `Genre_Count` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 21:18:55
