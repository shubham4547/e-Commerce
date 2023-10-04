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
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `certificate` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `createdOn` datetime(6) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'9210d450e9e942cc820b8757e8c80809.jpg','satara','2022-09-11 17:17:56.685000',_binary '','pra','123456789','pra','101'),(4,'3f141e2fd0a14f26bb70170079a75fd6.jpg','shrinagar','2022-09-23 11:57:50.090000',_binary '','rohit yadav','9935354400','pra','102'),(5,'6c030c301d9f4d1da5deb69b0056e823.jpg','jaipur','2022-09-23 12:11:28.816000',_binary '','Avinash','8899112200','pra','103'),(6,'a7baabac74c44f48a00101620e54fed6.jpg','jaipur','2022-09-23 12:21:22.526000',_binary '','Avinash autade','1122334455','pra','104'),(7,'0426ec302ba14a7991d50ec0ab3ad3ae.jpg','kota','2022-09-23 12:32:26.083000',_binary '','pooja verma','1122332445','pra','105'),(8,'8edaeb94b52a447aa81f69b91821714e.jpg','kochi','2022-09-23 22:39:35.847000',_binary '','ram singh','4112361591','pra','106'),(9,'9210d450e9e942cc820b8757e8c80809.jpg','darjeeling','2022-09-23 22:48:03.615000',_binary '','sushant mane','9988774455','pra','107'),(10,'c4cdd91e0f364a4e844008ec87e9b8c4.jpg','kolkata','2022-09-23 22:55:29.462000',_binary '','arjun','1122334455','pra','108'),(11,'08100e37772347dd8d388d0440cbe87e.jpg','kolhapur','2022-09-23 23:08:38.537000',_binary '','shubham patil','1122334455','pra','109'),(12,'bbe8a1f274f74facb51c6e4dd8977e58.jpg','ratnagiri','2022-09-23 23:16:30.685000',_binary '','sujay kadam','1122335599','pra','110'),(13,'67919d1461d942d1b2f54ba00e8bb9c0.jpg','pune','2022-09-23 23:22:25.444000',_binary '','vivek joshi','1122559987','pra','111'),(14,'e7b1e906e03444ea8a0df8e6388eef7b.jpg','patna','2022-09-23 23:29:45.575000',_binary '','lalu yadav','9955664853','pra','112');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
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
