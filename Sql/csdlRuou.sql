-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: db4free.net    Database: winestore
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sanpham` (
  `maSP` varchar(45) NOT NULL,
  `tenSP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `giaSP` int(11) DEFAULT NULL,
  `linkAnhSP` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`maSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('M001','Red martin',1700000,'Ruou-Ballantine-s-Finest-hop-qua-750x7500,38.jpg'),('M002','Remmy martin gift box',1850000,'camus-extra-750x7507,7.jpg'),('M003','Remy martin club ',2300000,'Ruou-Remy-Martin-Club-Hop-Qua-2018-2-750x750.jpg'),('M004','Ballentine',600000,'ballantine%2012-750x7500,6.jpg'),('M005','Ballantine s finest gift box',7700000,'1.jpg'),('M006','Chivas 18',1340000,'chivas18_blue_signature-1,34.jpg'),('M007','Joinhnnie walker goid label',1030000,'johnnie-walker-gold-label-2018-3-ruoungoaigiasi.vn-1,03.jpg'),('M008','Ballantine finest',300000,'Ruou-Ballantine-s-Finest-hop-qua-2018-0,3.jpg'),('M009','Ballantine s finest gift box',380000,'Ruou-Ballantine-s-Finest-hop-qua-750x7500,38.jpg'),('M010','Reny martin Vsop',1300000,'Ruou-Remy-Martin-VSOP-Hop-Qua-2018-1,3.jpg'),('M011','Camus extra',7700000,'camus-extra-750x7507,7.jpg'),('M012','Reny martin Vsop',1700000,'Ruou-Ballantine-s-Finest-hop-qua-750x7500,38.jpg'),('M013','Remy martin club',600000,'ballantine%2012-750x7500,6.jpg'),('M014','Joinhnnie walker goid label',1030000,'johnnie-walker-gold-label-2018-3-ruoungoaigiasi.vn-1,03.jpg'),('M015','Ballantine finest',300000,'Ruou-Ballantine-s-Finest-hop-qua-2018-0,3.jpg');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 11:13:41
