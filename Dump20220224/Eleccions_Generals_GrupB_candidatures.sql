-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 192.168.56.101    Database: Eleccions_Generals_GrupB
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
-- Table structure for table `candidatures`
--

DROP TABLE IF EXISTS `candidatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatures` (
  `candidatura_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eleccio_id` tinyint(3) unsigned NOT NULL,
  `codi_candidatura` char(6) DEFAULT NULL,
  `nom_curt` varchar(50) DEFAULT NULL COMMENT 'Sigles de la candidatura',
  `nom_llarg` varchar(150) DEFAULT NULL COMMENT 'Nom llarg de la candidatura (denominació)',
  `codi_acumulacio_provincia` char(6) DEFAULT NULL COMMENT 'Codi de la candidatura d''acumulació a nivell provincial.',
  `codi_acumulacio_ca` char(6) DEFAULT NULL COMMENT 'Codi de la candidatura d''acumulació a nivell de comunitat autònoma',
  `codi_acumulario_nacional` char(6) DEFAULT NULL,
  PRIMARY KEY (`candidatura_id`),
  UNIQUE KEY `uk_eleccions_partits` (`eleccio_id`,`codi_candidatura`),
  KEY `idx_fk_eleccions_partits_eleccions` (`eleccio_id`),
  CONSTRAINT `fk_eleccions_partits_eleccions` FOREIGN KEY (`eleccio_id`) REFERENCES `eleccions` (`eleccio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatures`
--

LOCK TABLES `candidatures` WRITE;
/*!40000 ALTER TABLE `candidatures` DISABLE KEYS */;
INSERT INTO `candidatures` VALUES (1,1,'000003','AHORA CANAR','AHORA CANARIAS: Alternativa Nacionalista Canaria A',NULL,NULL,NULL),(2,1,'000004','ANDECHA AST','ANDECHA ASTUR','000003','000003','000003'),(3,1,'000006','ARA-MES-ESQ','Veus PROGRESSISTES','000004','000004','000004'),(4,1,'000009','AVANT ADELA','AVANT ADELANTE LOS VERDES','000006','000006','000006'),(5,1,'000010','AVANT-LOS V','LOS VERDES ECOPACIFISTAS ADELANTE','000009','000009','000009'),(6,1,'000011','AxSI','ANDALUCÍA POR SÍ','000010','000009','000009'),(7,1,'000012','BNG','BLOQUE NACIONALISTA GALEGO','000011','000011','000011'),(8,1,'000013','C 21','CONVERXENCIA 21','000012','000012','000012'),(9,1,'000015','CCa-PNC','COALICION CANARIA-PARTIDO NACIONALISTA CANARIO','000013','000013','000013'),(10,1,'000016','centrados','CENTRADOS','000015','000015','000015'),(11,1,'000017','C.Ex-C.R.Ex','EXTREMEÑOS PREX CREX','000016','000016','000016'),(12,1,'000018','CILU-LINARE','CIUDADANOS INDEPENDIENTES DE LINARES UNIDOS','000017','000017','000017'),(13,1,'000019','CNV','CONVERGENTS','000018','000018','000018'),(14,1,'000020','COMPROMÍS 2','COMPROMÍS: BLOC-INICIATIVA-VERDSEQUO','000019','000019','000019'),(15,1,'000021','CpM','COALICION POR MELILLA','000020','000020','000020'),(16,1,'000022','Cs','CIUDADANOS-PARTIDO DE LA CIUDADANÍA','000021','000021','000021'),(17,1,'000023','Cs','CIUTADANS-PARTIDO DE LA CIUDADANÍA','000022','000022','000022'),(18,1,'000024','CxG','COMPROMISO POR GALICIA','000023','000022','000022'),(19,1,'000025','DP','DEFENSA DE LO PÚBLICO','000024','000024','000024'),(20,1,'000026','DPL','DEMOCRACIA PLURAL','000025','000025','000025'),(21,1,'000027','EAJ-PNV','EUZKO ALDERDI JELTZALEA-PARTIDO NACIONALISTA VASCO','000026','000026','000026'),(22,1,'000028','EB','ESCAÑOS EN BLANCO','000027','000027','000027'),(23,1,'000029','EB','ESCAÑOS EN BLANCO-AULKI ZURIAK','000028','000028','000028'),(24,1,'000030','EB','ESCANOS EN BRANCO','000029','000029','000028'),(25,1,'000032','ECP-GUANYEM','EN COMÚ PODEM - GUANYEM EL CANVI','000030','000030','000028'),(26,1,'000033','EH Bildu','EUSKAL HERRIA BILDU','000032','000032','000032'),(27,1,'000034','ELAK/PCTE','EUSKADIKO LANGILEEN ALDERDI KOMUNISTA/PARTIDO COMU','000033','000033','000033'),(28,1,'000035','EL PI','EL PI - PROPOSTA PER LES ILLES BALEARS','000034','000067','000066'),(29,1,'000036','EN MAREA','EN MAREA','000035','000035','000035'),(30,1,'000037','ERC-SOBIRAN','ESQUERRA REPUBLICANA DE CATALUNYA-SOBIRANISTES','000036','000036','000036'),(31,1,'000038','ERPV','ESQUERRA REPUBLICANA DEL PAÍS VALENCIÀ','000037','000037','000037'),(32,1,'000039','F8','FEMINISM8','000038','000038','000038'),(33,1,'000040','FE de las J','FALANGE ESPAÑOLA DE LAS JONS','000039','000039','000039'),(34,1,'000041','FIA','FEDERACION DE LOS INDEPENDIENTES DE ARAGON','000040','000040','000040'),(35,1,'000042','FRONT REPUB','POBLE LLIURE - SOM ALTERNATIVA - PIRATES DE CATALU','000041','000041','000041'),(36,1,'000043','GBAI','GEROA BAI','000042','000042','000042'),(37,1,'000044','IZAR','IZQUIERDA ANTICAPITALISTA REVOLUCIONARIA','000043','000043','000043'),(38,1,'000045','IZQP','IZQUIERDA EN POSITIVO','000044','000044','000044'),(39,1,'000047','\"JF\"','PARTIDO DE JUBILADOS POR EL FUTURO. DIGNIDAD Y DEM','000045','000045','000045'),(40,1,'000049','JxCAT-JUNTS','JUNTS PER CATALUNYA-JUNTS','000047','000047','000047'),(41,1,'000050','+MAS+','MUERTE AL SISTEMA','000049','000049','000049'),(42,1,'000052','NA+','NAVARRA SUMA','000050','000050','000050'),(43,1,'000053','NCa','NUEVA CANARIAS','000052','000052','000052'),(44,1,'000054','PACMA','PARTIDO ANIMALISTA CONTRA EL MALTRATO ANIMAL','000053','000053','000053'),(45,1,'000055','PACMA','PARTIT ANIMALISTA CONTRA EL MALTRACTAMENT ANIMAL','000054','000054','000054'),(46,1,'000056','PACT','ACTÚA','000055','000054','000054'),(47,1,'000057','PCOE','PARTIDO COMUNISTA OBRERO ESPAÑOL','000056','000056','000056'),(48,1,'000058','PCPA','PARTIDO COMUNISTA DEL PUEBLO ANDALUZ','000057','000057','000057'),(49,1,'000060','PCPC','PARTIDO COMUNISTA DEL PUEBLO CANARIO','000058','000058','000058'),(50,1,'000061','PCPC','PARTIT COMUNISTA DEL POBLE DE CATALUNYA','000060','000060','000063'),(51,1,'000063','PCPE','PARTIDO COMUNISTA DE LOS PUEBLOS DE ESPAÑA','000061','000061','000061'),(52,1,'000064','PCPE','PARTIT COMUNISTA DELS POBLES D\'ESPANYA','000063','000063','000063'),(53,1,'000065','PCTC','PARTIT COMUNISTA DELS TREBALLADORS DE CATALUNYA','000064','000063','000063'),(54,1,'000066','PCTE','PARTIDO COMUNISTA DE LOS TRABAJADORES DE ESPAÑA','000065','000065','000066'),(55,1,'000067','PCTE/ELAK','PARTIDO COMUNISTA DE LOS TRABAJADORES DE EUSKADI/E','000066','000066','000066'),(56,1,'000068','PCTG','PARTIDO COMUNISTA DOS TRABALLADORES DE GALIZA','000067','000067','000066'),(57,1,'000069','PDSJE-UDEC','PARTIDO DEMÓCRATA SOCIAL JUBILADOS EUROPEOS - UNID','000068','000068','000066'),(58,1,'000072','PH','PARTIDO HUMANISTA','000069','000069','000069'),(59,1,'000073','P-LIB','PARTIDO LIBERTARIO','000072','000072','000072'),(60,1,'000074','PODEMOS-EUI','UNIDAS PODEMOS-UNIDES PODEM','000073','000073','000073'),(61,1,'000075','PODEMOS-EU-','EN COMÚN-UNIDAS PODEMOS','000074','000074','000077'),(62,1,'000076','PODEMOS-EUP','UNIDAS PODEMOS','000075','000075','000075'),(63,1,'000077','PODEMOS-IU-','UNIDAS PODEMOS','000076','000076','000077'),(64,1,'000078','PODEMOS-IU-','UNIDAS PODEMOS-ALTOARAGÓN EN COMÚN','000077','000077','000077'),(65,1,'000079','PODEMOS-IU-','UNIDAS PODEMOS','000078','000077','000077'),(66,1,'000080','PODEMOS-IU-','ELKARREKIN PODEMOS-UNIDAS PODEMOS','000079','000079','000077'),(67,1,'000081','PODEMOS-IU','UNIDAS PODEMOS','000080','000080','000077'),(68,1,'000082','PODEMOS-IX-','UNIDAS PODEMOS-XUNIES PODEMOS','000081','000081','000077'),(69,1,'000083','PP','PARTIDO POPULAR','000082','000082','000077'),(70,1,'000084','PP','PARTIDO POPULAR/PARTIT POPULAR','000083','000083','000083'),(71,1,'000085','PP','PARTIT POPULAR-PARTIDO POPULAR','000084','000083','000083'),(72,1,'000086','PP-FORO','PARTIDO POPULAR - FORO','000085','000083','000083'),(73,1,'000088','PPSO','PLATAFORMA DEL PUEBLO SORIANO','000086','000086','000083'),(74,1,'000089','PR+','PARTIDO RIOJANO','000088','000088','000088'),(75,1,'000090','PRC','PARTIDO REGIONALISTA DE CANTABRIA','000089','000089','000089'),(76,1,'000091','PREPAL','PARTIDO REGIONALISTA DEL PAIS LEONES','000090','000090','000090'),(77,1,'000092','PSC','PARTIT DELS SOCIALISTES DE CATALUNYA (PSC-PSOE)','000091','000091','000091'),(78,1,'000093','PSdeG-PSOE','PARTIDO DOS SOCIALISTAS DE GALICIA-PARTIDO SOCIALI','000092','000092','000096'),(79,1,'000094','PSE-EE (PSO','PARTIDO SOCIALISTA DE EUSKADI-EUSKADIKO EZKERRA (P','000093','000093','000096'),(80,1,'000096','PSOE','PARTIDO SOCIALISTA OBRERO ESPAÑOL','000094','000094','000096'),(81,1,'000097','PSOE','PARTIT SOCIALISTA OBRER ESPANYOL','000096','000096','000096'),(82,1,'000098','PUM+J','PER UN MÓN MÉS JUST','000097','000097','000096'),(83,1,'000100','PUM+J','POR UN MUNDO MÁS JUSTO','000098','000098','000100'),(84,1,'000101','PUM+J','POR UN MUNDO MÁS JUSTO (BIDEZKO MUNDURANTZ)','000100','000100','000100'),(85,1,'000103','PYLN','PUYALON','000101','000100','000100'),(86,1,'000104','RECORTES CE','RECORTES CERO-GRUPO VERDE','000103','000103','000103'),(87,1,'000105','RECORTES CE','RECORTES CERO-GRUPO VERDE-PARTIDO CASTELLANO-TIERR','000104','000104','000104'),(88,1,'000106','RISA','PARTIDO REPUBLICANO INDEPENDIENTE SOLIDARIO ANDALU','000105','000105','000104'),(89,1,'000107','SOLIDARIA','PARTIDO DE ACCIÓN SOLIDARIA EUROPEA','000106','000106','000106'),(90,1,'000108','SOMOS REGIÓ','SOMOS REGIÓN','000107','000107','000107'),(91,1,'000109','UDT','UNIÓN DE TODOS','000108','000108','000108'),(92,1,'000110','UIG-SOM-CUI','SOM VALENCIANS EN MOVIMENT','000109','000109','000109'),(93,1,'000112','UNIÓN REGIO','UNIÓN REGIONALISTA DE CASTILLA Y LEÓN','000110','000110','000110'),(94,1,'000116','VOU','VIVIR OURENSE','000112','000112','000112'),(95,1,'000117','VOX','VOX','000116','000116','000116');
/*!40000 ALTER TABLE `candidatures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-24 13:08:34
