-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: gikart
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prodid` int NOT NULL AUTO_INCREMENT,
  `createdOn` datetime(6) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  PRIMARY KEY (`prodid`),
  KEY `FKf6jqtf7fbsr0gil5ofrnbme0e` (`cat_id`),
  KEY `FKgf3xpxhjcicwl10q22x28h1tl` (`seller_id`),
  CONSTRAINT `FKf6jqtf7fbsr0gil5ofrnbme0e` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FKgf3xpxhjcicwl10q22x28h1tl` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (14,'2022-09-23 11:35:21.746000','Kolhapur Jaggery Block – 1Kg','a1c8a7a027cf43f1b7f0f1aae65c25c8.jpg','Kolhapuri jaggery',208,0,6,1),(15,'2022-09-23 11:39:35.686000','Sindhudurg & Ratnagiri Kokum CONCENTRATE – 200ml','99469b52a743463589f755b60fe5e568.jpg','Kokum',235,0,6,1),(16,'2022-09-23 11:47:58.796000','Maharashtra’s Waigaon Pure Turmeric (Powder) –  500gms','c4a2c284bf104ee986f4b3337c1bb184.jpg','Maharashtra’s Waigaon Pure Turmeric ',189,0,6,1),(17,'2022-09-23 12:03:19.147000','Kashmir Saffron Mongra Kesar A++ Grade 1gm ','0dc27a33557a432b9d392f3af6a668e2.jpg','Safron',304,0,6,4),(18,'2022-09-23 12:14:09.639000',' Khatputli Raja Rani Lively Pink','e5c2f9bc537c4a60af31157c5d91d6c7.jpg','Kathputli',1056,0,8,5),(19,'2022-09-23 12:24:31.892000','Bathroom Accessories Set  ','954e6fb6434847c6bd6e1c109d80deb2.jpg','Jaipur Blue Pottery Bathroom Accessories Set – Deep Blue',2753,0,8,6),(20,'2022-09-23 12:36:14.426000','Traditional Hand Block Printed Cotton Saree','d9675820fb8d4e4b907d52578790c0e8.jpg','Bagru Hand Block Print Cotton Saree',2500,0,14,7),(21,'2022-09-23 22:42:20.514000','Material-Coconut Shell','d4906751207742cfba2f6a1bf26408b4.jpg',' Coconut Shell Craft Glass',340,0,8,8),(22,'2022-09-23 22:50:22.302000','Premium Darjeeling Tea Whole Leaf (Green) – 200 Gms','6b4d4e41c0fe42dfa1dc05888757fd8b.jpg',' Darjeeling Tea ',450,0,6,9),(23,'2022-09-23 22:56:56.319000',' Kalighat Painting Shiva Tandava (17*25 Inches)','5b37b10b95a7481fad44b3bec13ee230.jpg','Bengal Patachitra',5000,0,8,10),(24,'2022-09-23 22:58:24.928000','Kalighat Paintings Village Theme (30*24 Inches)','a8b1b4fc0aea4a0c8289b5a6104368fb.jpg','Bengal Patachitra',4000,0,8,10),(25,'2022-09-23 23:04:21.505000','Sangli Golden Dry Raisins (Kishmish) – 500 Gm','beecfe9af56741589c1cee34e2e075a6.jpeg','Golden Dry Raisins ',150,0,6,1),(26,'2022-09-23 23:10:52.925000','Pure Leather Kapashi kolhapuri chappal for Men ','789ce2d5474346289696d5301e9b67b9.jpg','kolhapuri chappal',1500,0,11,11),(27,'2022-09-23 23:18:10.285000','','8d10868054194aeeacee3217c7c91e64.webp','Alphonso',3000,-1,7,12),(28,'2022-09-23 23:25:10.552000','Traditional Puneri Pheta Also Known as pagadi, Marathi safa (Turban), A Free Size Orange Colour and jari Tilak Topi','aed89974867047a7b26097192a7b3b86.jpeg','puneri pagadi',1500,0,14,13),(29,'2022-09-23 23:32:14.912000','Mithila Makhana (Premium 6+ Grade) – 200gms','20c29bb856494352963cb5aa59bcd14c.jpg','Mithila Makhana',300,0,6,14);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26  9:42:00
