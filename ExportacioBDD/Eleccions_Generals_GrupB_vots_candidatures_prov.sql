-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.56.102    Database: Eleccions_Generals_GrupB
-- ------------------------------------------------------
-- Server version	8.0.17-8

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
-- Table structure for table `vots_candidatures_prov`
--

DROP TABLE IF EXISTS `vots_candidatures_prov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vots_candidatures_prov` (
  `provincia_id` tinyint(3) unsigned NOT NULL,
  `candidatura_id` int(10) unsigned NOT NULL,
  `vots` int(10) unsigned DEFAULT NULL COMMENT 'Número de vots obtinguts per la candidatura',
  `candidats_obtinguts` smallint(5) unsigned DEFAULT NULL COMMENT 'Número de candidats obtinguts per la candidatura',
  PRIMARY KEY (`provincia_id`,`candidatura_id`),
  KEY `fk_candidatures_provincies_candidatures1_idx` (`candidatura_id`),
  CONSTRAINT `fk_candidatures_provincies_candidatures1` FOREIGN KEY (`candidatura_id`) REFERENCES `candidatures` (`candidatura_id`),
  CONSTRAINT `fk_candidatures_provincies_provincies1` FOREIGN KEY (`provincia_id`) REFERENCES `provincies` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vots_candidatures_prov`
--

LOCK TABLES `vots_candidatures_prov` WRITE;
/*!40000 ALTER TABLE `vots_candidatures_prov` DISABLE KEYS */;
INSERT INTO `vots_candidatures_prov` VALUES (1,7,32132,0),(1,16,63867,1),(1,18,825,0),(1,24,886,0),(1,29,6705,0),(1,44,6859,0),(1,56,601,0),(1,61,100547,1),(1,69,144290,2),(1,78,185785,3),(1,86,1007,0),(1,95,27426,0),(2,4,586,0),(2,14,16713,0),(2,16,51017,1),(2,31,859,0),(2,33,222,0),(2,44,3381,0),(2,52,329,0),(2,62,43656,1),(2,69,63756,1),(2,80,92379,2),(2,83,302,0),(2,86,341,0),(2,95,37551,0),(3,16,56268,1),(3,22,536,0),(3,44,3452,0),(3,48,353,0),(3,67,28934,0),(3,69,73952,2),(3,80,98924,2),(3,83,335,0),(3,86,412,0),(3,95,62648,1),(4,1,1774,0),(4,9,102811,2),(4,16,71667,1),(4,32,571,0),(4,44,9157,0),(4,49,655,0),(4,63,75695,1),(4,69,76491,1),(4,80,141132,2),(4,83,582,0),(4,86,1212,0),(4,95,31385,0),(5,11,1230,0),(5,16,42452,1),(5,44,1724,0),(5,46,743,0),(5,63,24292,0),(5,69,57195,1),(5,80,93016,2),(5,86,407,0),(5,95,25903,0),(6,1,1263,0),(6,9,34853,0),(6,16,84015,1),(6,43,36225,0),(6,44,8669,0),(6,49,831,0),(6,58,559,0),(6,63,91216,2),(6,69,88313,2),(6,80,154342,3),(6,83,837,0),(6,86,1439,0),(6,95,38229,0),(7,17,19150,0),(7,25,18723,0),(7,30,75760,2),(7,35,6194,0),(7,38,138,0),(7,40,46781,1),(7,44,2089,0),(7,50,205,0),(7,71,11153,0),(7,77,37637,1),(7,82,137,0),(7,86,204,0),(7,95,6005,0),(8,6,4284,0),(8,16,131567,2),(8,44,11079,0),(8,47,2224,0),(8,48,812,0),(8,67,110807,2),(8,69,99394,1),(8,80,210131,3),(8,86,1620,0),(8,95,87438,1),(9,16,26817,1),(9,44,1816,0),(9,47,325,0),(9,63,17524,0),(9,69,28618,1),(9,80,42521,1),(9,83,254,0),(9,87,335,0),(9,95,23501,0),(10,16,43580,1),(10,44,1370,0),(10,54,265,0),(10,63,16575,0),(10,69,60154,2),(10,76,309,0),(10,80,59331,1),(10,83,322,0),(10,87,275,0),(10,95,26631,0),(11,16,11892,0),(11,21,119668,2),(11,23,678,0),(11,26,96364,2),(11,27,313,0),(11,44,3171,0),(11,66,71296,1),(11,69,20797,0),(11,79,77720,1),(11,83,429,0),(11,86,593,0),(11,95,6783,0),(12,6,856,0),(12,16,44842,1),(12,44,3182,0),(12,47,871,0),(12,48,272,0),(12,67,34396,1),(12,69,44909,1),(12,80,97766,2),(12,86,646,0),(12,95,33920,0),(13,5,3183,0),(13,14,31030,0),(13,16,177691,2),(13,31,1221,0),(13,44,12982,0),(13,51,1345,0),(13,59,973,0),(13,62,127615,2),(13,69,179056,3),(13,80,259404,4),(13,86,1527,0),(13,95,115249,1),(14,6,545,0),(14,12,1081,0),(14,16,61413,1),(14,44,3369,0),(14,48,437,0),(14,67,40880,0),(14,69,75885,1),(14,80,152932,3),(14,83,325,0),(14,86,401,0),(14,88,190,0),(14,95,46934,0),(15,16,24568,1),(15,22,474,0),(15,34,127,0),(15,44,1013,0),(15,51,216,0),(15,64,17151,0),(15,69,25149,1),(15,80,41354,1),(15,83,170,0),(15,85,148,0),(15,86,284,0),(15,95,13389,0),(16,16,18729,1),(16,44,585,0),(16,54,116,0),(16,63,9187,0),(16,69,32750,1),(16,76,405,0),(16,80,34628,1),(16,83,141,0),(16,87,147,0),(16,95,12887,0),(17,16,7082,0),(17,21,40300,1),(17,26,24747,1),(17,44,1869,0),(17,55,235,0),(17,66,31469,1),(17,69,24385,0),(17,79,39722,1),(17,84,338,0),(17,86,536,0),(17,95,5608,0),(18,16,4546,0),(18,63,1838,0),(18,69,8147,0),(18,80,13800,1),(18,83,87,0),(18,86,157,0),(18,95,9092,0),(19,6,779,0),(19,16,90935,1),(19,37,257,0),(19,39,876,0),(19,44,5804,0),(19,48,373,0),(19,54,391,0),(19,67,71466,1),(19,69,96588,1),(19,80,177478,3),(19,83,624,0),(19,86,630,0),(19,95,73914,1),(20,3,25191,0),(20,16,90340,1),(20,28,11692,0),(20,44,8864,0),(20,46,796,0),(20,60,92477,2),(20,69,87352,1),(20,81,136698,3),(20,83,686,0),(20,86,1197,0),(20,95,58567,1),(21,16,67775,1),(21,33,229,0),(21,44,2699,0),(21,51,313,0),(21,54,282,0),(21,63,39305,0),(21,69,78433,1),(21,80,97244,2),(21,83,473,0),(21,87,545,0),(21,93,490,0),(21,95,45965,1),(22,11,920,0),(22,16,75583,1),(22,19,308,0),(22,44,2938,0),(22,46,745,0),(22,63,38252,0),(22,69,83278,1),(22,80,157164,3),(22,83,442,0),(22,86,449,0),(22,95,44890,1),(23,26,46765,0),(23,36,22309,0),(23,42,107619,2),(23,44,3325,0),(23,65,68393,1),(23,80,94551,2),(23,83,1203,0),(23,86,1295,0),(23,95,17771,0),(24,16,150289,2),(24,20,504,0),(24,38,712,0),(24,44,10611,0),(24,47,1162,0),(24,51,663,0),(24,63,80053,1),(24,69,180163,2),(24,80,190540,3),(24,86,1406,0),(24,90,4976,0),(24,95,143234,2),(25,16,8501,0),(25,44,263,0),(25,54,81,0),(25,63,4481,0),(25,69,13887,1),(25,73,2663,0),(25,80,16513,1),(25,83,77,0),(25,87,103,0),(25,95,4866,0),(26,16,15357,1),(26,22,272,0),(26,41,47,0),(26,44,452,0),(26,51,96,0),(26,63,8224,0),(26,69,18566,1),(26,80,25629,1),(26,83,74,0),(26,85,66,0),(26,86,113,0),(26,91,28,0),(26,95,8336,0),(27,16,32181,1),(27,22,385,0),(27,44,1394,0),(27,63,21331,0),(27,69,47947,1),(27,74,2098,0),(27,80,57307,2),(27,83,199,0),(27,86,275,0),(27,95,16255,0),(28,6,3288,0),(28,16,187243,2),(28,44,15073,0),(28,46,3567,0),(28,47,1317,0),(28,48,799,0),(28,54,830,0),(28,67,179497,2),(28,69,162891,2),(28,80,416543,5),(28,83,1527,0),(28,86,1592,0),(28,95,136949,1),(29,16,16467,0),(29,44,776,0),(29,54,84,0),(29,59,56,0),(29,63,9482,0),(29,69,31997,1),(29,80,42654,2),(29,83,109,0),(29,87,135,0),(29,95,16755,0),(30,13,1793,0),(30,16,373820,4),(30,25,509016,6),(30,30,716714,8),(30,35,84945,0),(30,38,2213,0),(30,40,316904,3),(30,45,50505,0),(30,50,2555,0),(30,53,1882,0),(30,70,155935,1),(30,77,769548,9),(30,86,5845,0),(30,95,112019,1),(31,7,45095,0),(31,16,81677,1),(31,18,1272,0),(31,29,6806,0),(31,44,7176,0),(31,47,1814,0),(31,56,600,0),(31,61,100019,1),(31,69,172799,3),(31,78,212665,3),(31,86,1331,0),(31,95,38187,0),(32,16,792203,8),(32,44,50909,0),(32,46,19208,0),(32,51,2038,0),(32,54,2329,0),(32,58,3456,0),(32,63,613911,6),(32,69,705119,7),(32,80,1031534,11),(32,83,5221,0),(32,87,7512,0),(32,95,524176,5),(33,16,79978,1),(33,22,788,0),(33,44,4946,0),(33,47,1233,0),(33,48,816,0),(33,54,426,0),(33,67,70427,1),(33,69,89203,1),(33,80,163000,2),(33,83,469,0),(33,86,756,0),(33,95,56919,1),(34,16,115651,1),(34,22,2626,0),(34,34,658,0),(34,44,5469,0),(34,51,453,0),(34,54,589,0),(34,63,77555,1),(34,69,99527,1),(34,80,173557,3),(34,83,749,0),(34,85,621,0),(34,86,1428,0),(34,95,70663,1),(35,6,1655,0),(35,16,159316,2),(35,44,15122,0),(35,48,835,0),(35,54,631,0),(35,67,118537,2),(35,69,144562,2),(35,80,251908,4),(35,83,1046,0),(35,86,1769,0),(35,95,114199,1),(36,16,50733,1),(36,44,2360,0),(36,57,277,0),(36,63,26952,0),(36,69,69559,1),(36,80,100720,2),(36,87,529,0),(36,95,40313,1),(37,16,19102,1),(37,33,96,0),(37,44,673,0),(37,46,347,0),(37,63,7730,0),(37,69,32001,1),(37,80,26503,1),(37,83,113,0),(37,87,169,0),(37,95,14623,0),(38,7,7548,0),(38,16,20689,0),(38,18,272,0),(38,29,2220,0),(38,44,1576,0),(38,56,143,0),(38,61,17213,0),(38,69,67020,2),(38,78,63304,2),(38,83,213,0),(38,86,202,0),(38,94,335,0),(38,95,9984,0),(39,15,6857,0),(39,16,4351,0),(39,63,1292,0),(39,69,8087,1),(39,80,6989,0),(39,83,39,0),(39,86,99,0),(39,95,5807,0),(40,16,54361,1),(40,22,427,0),(40,44,3049,0),(40,51,286,0),(40,54,260,0),(40,59,187,0),(40,63,36784,0),(40,69,77902,1),(40,75,52266,1),(40,80,90534,2),(40,83,274,0),(40,86,332,0),(40,95,40139,0),(41,7,9658,0),(41,8,73,0),(41,16,17812,0),(41,18,391,0),(41,29,2168,0),(41,44,1602,0),(41,56,304,0),(41,61,20282,0),(41,69,67191,2),(41,78,66441,2),(41,86,306,0),(41,95,11450,0),(42,2,932,0),(42,16,104688,1),(42,44,6670,0),(42,46,4554,0),(42,54,1359,0),(42,58,480,0),(42,68,107426,1),(42,72,112180,1),(42,80,207586,3),(42,83,777,0),(42,86,1133,0),(42,95,72018,1),(43,10,459,0),(43,16,18460,1),(43,44,611,0),(43,46,276,0),(43,47,184,0),(43,54,89,0),(43,63,8931,0),(43,69,24853,1),(43,80,26088,1),(43,83,127,0),(43,87,183,0),(43,95,11468,0),(44,4,3563,0),(44,14,126078,1),(44,16,254360,3),(44,31,2156,0),(44,44,20923,0),(44,51,1542,0),(44,62,211527,2),(44,69,255868,3),(44,80,394703,4),(44,86,2108,0),(44,92,4473,0),(44,95,170070,2),(45,16,43533,1),(45,44,1981,0),(45,54,421,0),(45,63,27436,0),(45,69,53926,1),(45,80,64287,2),(45,83,597,0),(45,87,715,0),(45,95,24382,0),(46,16,21392,0),(46,21,235916,3),(46,26,91771,1),(46,44,6187,0),(46,55,603,0),(46,66,121740,2),(46,69,49859,0),(46,79,136547,2),(46,83,844,0),(46,86,1177,0),(46,89,528,0),(46,95,15839,0),(47,16,43835,1),(47,44,2205,0),(47,51,224,0),(47,54,182,0),(47,63,24855,0),(47,69,51817,1),(47,80,75005,2),(47,83,304,0),(47,87,324,0),(47,95,33948,0),(48,16,69678,1),(48,44,3931,0),(48,63,41934,0),(48,69,87134,2),(48,80,123561,2),(48,83,559,0),(48,87,703,0),(48,95,66927,1),(49,16,50945,1),(49,44,2338,0),(49,54,402,0),(49,63,35103,0),(49,69,68530,1),(49,76,1476,0),(49,80,95536,2),(49,83,419,0),(49,87,299,0),(49,95,33653,0),(50,16,16843,1),(50,33,99,0),(50,44,799,0),(50,54,133,0),(50,63,9787,0),(50,69,31332,1),(50,80,33209,1),(50,83,159,0),(50,87,265,0),(50,95,12407,0),(51,13,485,0),(51,17,34009,0),(51,25,36947,0),(51,30,114031,3),(51,35,14434,0),(51,38,240,0),(51,40,85863,2),(51,45,5112,0),(51,50,353,0),(51,70,12377,0),(51,77,65422,1),(51,86,433,0),(51,95,10715,0),(52,13,263,0),(52,17,52395,1),(52,25,50979,1),(52,30,113887,2),(52,35,8234,0),(52,38,200,0),(52,40,51239,1),(52,44,6189,0),(52,50,260,0),(52,53,471,0),(52,69,21376,0),(52,77,89650,1),(52,82,280,0),(52,86,462,0),(52,95,20105,0);
/*!40000 ALTER TABLE `vots_candidatures_prov` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-03 12:41:55