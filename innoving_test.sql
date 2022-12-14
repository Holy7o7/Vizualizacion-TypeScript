-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: innoving_test
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `indicador`
--

DROP TABLE IF EXISTS `indicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicador` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `N┬░Indicador` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `formula` varchar(30) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `mision` varchar(30) DEFAULT NULL,
  `responsable` varchar(30) DEFAULT NULL,
  `CalificacionCORFO` varchar(30) DEFAULT NULL,
  `frecuencia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador`
--

LOCK TABLES `indicador` WRITE;
/*!40000 ALTER TABLE `indicador` DISABLE KEYS */;
INSERT INTO `indicador` VALUES
(1,1,'indicador1','2x+1','estudiantes','2da','Juan','Criticos','trimestral'),
(2,2,'indicador2','250x+6','profesores','2da','Jose','Criticos','trimestral'),
(3,3,'indicador3','3x+1','academicos','2da','Nicolas','Minimos','semestral'),
(4,4,'indicador4','(2x+1)/2','funcionarios','2da','Anibal','Criticos','semestral'),
(5,5,'indicador5','2x+6','publicaciones','2da','Sonia','Minimos','semestral'),
(6,6,'indicador6','2x+42','$','3da','Joaquin','Criticos','trimestral'),
(7,7,'indicador7','2x+50','academicos','1da','Nicolas','Criticos','trimestral'),
(8,8,'indicador8','2x+100','academicos','1da','Juan','Criticos','trimestral'),
(9,9,'indicador9','200x+1','estudiantes','3da','Joaquin','Minimos','trimestral'),
(10,10,'indicador10','40x+1','publicaciones','2da','Juan','Minimos','trimestral'),
(11,11,'indicador11','3x+64','estudiantes','2da','Nicolas','Criticos','semestral'),
(12,12,'indicador12','2x+69','$','3da','Juan','Criticos','semestral'),
(13,13,'indicador13','50x+200','funcionarios','1da','Anibal','Criticos','trimestral'),
(14,14,'indicador14','(42+x)/4','estudiantes','2da','Juan','Criticos','trimestral'),
(15,15,'indicador15','2x+160','profesores','2da','Juan','Minimos','trimestral'),
(16,16,'indicador16','6x+52','estudiantes','2da','Anibal','Minimos','trimestral'),
(17,17,'indicador17','7x+10','funcionarios','2da','Juan','Criticos','semestral'),
(18,18,'indicador18','10x+90','profesores','3da','Nicolas','Minimos','semestral'),
(19,19,'indicador19','77x+7','estudiantes','2da','Sonia','Criticos','trimestral'),
(20,20,'indicador20','20x+1000','funcionarios','4da','Juan','Minimos','trimestral'),
(21,21,'indicador21','2x+90','profesores','2da','Juan','Criticos','trimestral'),
(22,22,'indicador22','3x+150','estudiantes','4da','Anibal','Criticos','trimestral'),
(23,23,'indicador23','4x+62','academicos','3da','Nicolas','Minimos','semestral'),
(24,24,'indicador24','8x+10','$','1da','Juan','Criticos','trimestral'),
(25,25,'indicador25','72x+6','academicos','3da','Juan','Criticos','trimestral'),
(26,26,'indicador26','11x+1','estudiantes','2da','Sonia','Minimos','trimestral'),
(27,27,'indicador27','13x+13','funcionarios','1da','Anibal','Criticos','semestral');
/*!40000 ALTER TABLE `indicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id_meta` bigint(20) unsigned NOT NULL,
  `valor` bigint(20) DEFAULT NULL,
  `fecha` varchar(30) DEFAULT NULL,
  KEY `id_meta` (`id_meta`),
  CONSTRAINT `metas_ibfk_1` FOREIGN KEY (`id_meta`) REFERENCES `indicador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES
(1,10,'2015'),
(1,15,'2016'),
(1,20,'2017'),
(1,22,'2018'),
(1,24,'2019'),
(1,25,'2020'),
(1,26,'2021'),
(1,27,'2022'),
(1,30,'2023'),
(2,60,'2015'),
(2,65,'2016'),
(2,67,'2017'),
(2,68,'2018'),
(2,70,'2019'),
(2,71,'2020'),
(2,74,'2021'),
(2,75,'2022'),
(2,78,'2023'),
(3,40,'2015'),
(3,45,'2016'),
(3,50,'2017'),
(3,55,'2018'),
(3,57,'2019'),
(3,59,'2020'),
(3,60,'2021'),
(3,65,'2022'),
(3,69,'2023'),
(4,40,'2015'),
(4,45,'2016'),
(4,50,'2017'),
(4,55,'2018'),
(4,57,'2019'),
(4,59,'2020'),
(4,60,'2021'),
(4,65,'2022'),
(4,69,'2023'),
(5,40,'2015'),
(5,45,'2016'),
(5,50,'2017'),
(5,55,'2018'),
(5,57,'2019'),
(5,59,'2020'),
(5,60,'2021'),
(5,65,'2022'),
(5,69,'2023'),
(6,40,'2015'),
(6,45,'2016'),
(6,50,'2017'),
(6,55,'2018'),
(6,57,'2019'),
(6,59,'2020'),
(6,60,'2021'),
(6,65,'2022'),
(6,69,'2023'),
(7,40,'2015'),
(7,45,'2016'),
(7,50,'2017'),
(7,55,'2018'),
(7,57,'2019'),
(7,59,'2020'),
(7,60,'2021'),
(7,65,'2022'),
(7,69,'2023'),
(8,40,'2015'),
(8,45,'2016'),
(8,50,'2017'),
(8,55,'2018'),
(8,57,'2019'),
(8,59,'2020'),
(8,60,'2021'),
(8,65,'2022'),
(8,69,'2023'),
(9,40,'2015'),
(9,45,'2016'),
(9,50,'2017'),
(9,55,'2018'),
(9,57,'2019'),
(9,59,'2020'),
(9,60,'2021'),
(9,65,'2022'),
(9,69,'2023'),
(10,40,'2015'),
(10,45,'2016'),
(10,50,'2017'),
(10,55,'2018'),
(10,57,'2019'),
(10,59,'2020'),
(10,60,'2021'),
(10,65,'2022'),
(10,69,'2023'),
(11,40,'2015'),
(11,45,'2016'),
(11,50,'2017'),
(11,55,'2018'),
(11,57,'2019'),
(11,59,'2020'),
(11,60,'2021'),
(11,65,'2022'),
(11,69,'2023'),
(12,40,'2015'),
(12,45,'2016'),
(12,50,'2017'),
(12,55,'2018'),
(12,57,'2019'),
(12,59,'2020'),
(12,60,'2021'),
(12,65,'2022'),
(12,69,'2023'),
(13,40,'2015'),
(13,45,'2016'),
(13,50,'2017'),
(13,55,'2018'),
(13,57,'2019'),
(13,59,'2020'),
(13,60,'2021'),
(13,65,'2022'),
(13,69,'2023'),
(14,40,'2015'),
(14,45,'2016'),
(14,50,'2017'),
(14,55,'2018'),
(14,57,'2019'),
(14,59,'2020'),
(14,60,'2021'),
(14,65,'2022'),
(14,69,'2023'),
(15,40,'2015'),
(15,45,'2016'),
(15,50,'2017'),
(15,55,'2018'),
(15,57,'2019'),
(15,59,'2020'),
(15,60,'2021'),
(15,65,'2022'),
(15,69,'2023'),
(16,40,'2015'),
(16,45,'2016'),
(16,50,'2017'),
(16,55,'2018'),
(16,57,'2019'),
(16,59,'2020'),
(16,60,'2021'),
(16,65,'2022'),
(16,69,'2023'),
(17,40,'2015'),
(17,45,'2016'),
(17,50,'2017'),
(17,55,'2018'),
(17,57,'2019'),
(17,59,'2020'),
(17,60,'2021'),
(17,65,'2022'),
(17,69,'2023'),
(18,40,'2015'),
(18,45,'2016'),
(18,50,'2017'),
(18,55,'2018'),
(18,57,'2019'),
(18,59,'2020'),
(18,60,'2021'),
(18,65,'2022'),
(18,69,'2023'),
(19,40,'2015'),
(19,45,'2016'),
(19,50,'2017'),
(19,55,'2018'),
(19,57,'2019'),
(19,59,'2020'),
(19,60,'2021'),
(19,65,'2022'),
(19,69,'2023'),
(20,40,'2015'),
(20,45,'2016'),
(20,50,'2017'),
(20,55,'2018'),
(20,57,'2019'),
(20,59,'2020'),
(20,60,'2021'),
(20,65,'2022'),
(20,69,'2023'),
(21,40,'2015'),
(21,45,'2016'),
(21,50,'2017'),
(21,55,'2018'),
(21,57,'2019'),
(21,59,'2020'),
(21,60,'2021'),
(21,65,'2022'),
(21,69,'2023'),
(22,40,'2015'),
(22,45,'2016'),
(22,50,'2017'),
(22,55,'2018'),
(22,57,'2019'),
(22,59,'2020'),
(22,60,'2021'),
(22,65,'2022'),
(22,69,'2023'),
(23,40,'2015'),
(23,45,'2016'),
(23,50,'2017'),
(23,55,'2018'),
(23,57,'2019'),
(23,59,'2020'),
(23,60,'2021'),
(23,65,'2022'),
(23,69,'2023'),
(24,40,'2015'),
(24,45,'2016'),
(24,50,'2017'),
(24,55,'2018'),
(24,57,'2019'),
(24,59,'2020'),
(24,60,'2021'),
(24,65,'2022'),
(24,69,'2023'),
(25,40,'2015'),
(25,45,'2016'),
(25,50,'2017'),
(25,55,'2018'),
(25,57,'2019'),
(25,59,'2020'),
(25,60,'2021'),
(25,65,'2022'),
(25,69,'2023'),
(26,40,'2015'),
(26,45,'2016'),
(26,50,'2017'),
(26,55,'2018'),
(26,57,'2019'),
(26,59,'2020'),
(26,60,'2021'),
(26,65,'2022'),
(26,69,'2023'),
(27,40,'2015'),
(27,45,'2016'),
(27,50,'2017'),
(27,55,'2018'),
(27,57,'2019'),
(27,59,'2020'),
(27,60,'2021'),
(27,65,'2022'),
(27,69,'2023');
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 10:16:25
