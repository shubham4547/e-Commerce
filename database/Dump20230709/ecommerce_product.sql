-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (30,'2023-07-09 13:42:49.706437','Camera: 12 MP + 12 MP + 12 MP Triple Rear & 10 MP | Memory: 12GB RAM, 256GB ROM |  Battery: 4400 mAh |','7e9e0095493847aca50ae69d95edf183.jpg','SAMSUNG Galaxy Z Fold 3 5G ',69999,0,21,15),(31,'2023-07-09 13:47:28.279731','Rear Camera: 12 MP + 12 MP + 12 MP Front Camera: 12 MP Memory: 6 GB RAM and 256 GB internal memory','db3a1ff070f64d438b4c3a4a4366dece.jpg','Apple iPhone 12 Pro',119900,0,21,15),(32,'2023-07-09 13:49:59.909197','Back Camera: 50 MP Main + 48 MP + 32 MP Front Camera: 16 MP Battery Capacity: 5000 mAh Internal Storage: 128 GB, RAM: 8 GB','9a0a839a82f340cb96d25b4ccc3b99d0.jpg','OnePlus 11 5G ',56999,0,21,15),(33,'2023-07-09 14:00:36.254551','Rear Camera: 50 MP + 12 MP + 48 MP Front Camera: 10.8 MP Memory: 12 GB RAM and 256 GB internal memory','8ba40455df6b46e081d51cac6828f08e.jpg','Google Pixel 7 Pro ',90800,0,21,15),(34,'2023-07-09 14:05:51.328363','Rear Camera: 64 MP + 13 MP + 5 MP Front Camera: 24 MP Memory: 8 GB RAM and 512 GB internal memory','475c2a72200149c09bb70cdfae031ec2.jpg','ROG Phone',46999,0,21,15),(35,'2023-07-09 14:35:34.931410','Processor / Memory and Storage / Graphics: 9th Gen Intel Core i7-9750H Processor base speed 2.6GHz (12M Cache, up to 4.5GHz, 6 Cores) / 16GB DDR4 2666MHz RAM upgradeable up to 32GB RAM with | Storage: 1TB HDD + 256GB M.2 SSD','0698882671994a98b8084617ae6b4c1f.jpg','ASUS ROG Strix G 9th Gen Intel Core i7-9750H',147000,0,20,17),(36,'2023-07-09 14:38:16.437044','HP Pavilion Plus, 12th Gen Intel Core i7 16GB RAM/1TB SSD 14 inch(35.6 cm)Creator Laptop with OLED,UWVA,Eye Safe Laptop/Intel Iris Xe Graphics/Backlit KB/B&O/FPR/Win 11/Alexa Built-in/MSO,14-eh0024TU','b1fdb862d0314ebe9c18cda36625535c.jpg','HP Pavilion Plus, 12th Gen Intel Core i7',93990,0,20,17),(37,'2023-07-09 14:42:33.286874','Apple 2020 MacBook Air Laptop M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Gold','83a27ec0e9f54764a12475a30d9eb62f.jpg','Apple 2020 MacBook Air Laptop M1 chip',81990,0,20,17),(38,'2023-07-09 14:46:04.016209','Durable materials on the upper are made to last. | Nike Air cushioning keeps you going all day. | Rubber outsole gives you the traction you need. | Colour Shown: White/Cool Grey/Medium Grey | Style: CT8529-100 | Country/Region of Origin: Vietnam','ed86417b74a949a89c0e73880a34b38b.jpg','Air Jordan 6 Retro Men\'s Shoes',18395,0,22,17),(39,'2023-07-09 14:50:15.590380','Reflective-design perforations and branding on the heel and toe | Not intended for use as Personal Protective Equipment (PPE) | TPU Swoosh | Colour Shown: White/Action Grape/Black | Style: CU4826-106 | Country/Region of Origin: Vietnam','83f71b84c3f945bcb72c3bbe164b05e3.jpg','Nike Air Max AP',8295,0,22,17),(40,'2023-07-09 14:57:23.983166','MAGGI 2-Minute Noodles','466714f62d8946288f45a8959d81b20e.jpg','Nestle-Maggi',14,0,19,17),(41,'2023-07-09 14:59:29.305860','A high protein spread: Get the most delectable experience of consuming your daily protein','5f72461f759a43fa811bc76e7958eb09.jpg','MuscleBlaze Chocolate Peanut Butter,',359,0,19,17),(42,'2023-07-09 15:01:11.914396','Happilo 100% Natural Premium Californian King Size Cashew 100% Real nuts- good for an active life style, It\'s High in Protein, Dietary Fiber, Gluten Free.','eb414e8f89964d6cb4a3b949892e0af2.jpg','Happilo 1kg Cashews',766,-2,19,17),(43,'2023-07-09 15:05:43.047054','Ladytone Men Slim Fit Plain Casual Shirt Ladytone presents to you a new range of stylish and cool new shirts yet which are affordable for everyone.','5ffff8cbb36a45228e247fef33648902.jpg','Men Regular Fit Solid Cut Away Collar Casual Shirt',380,0,23,17),(44,'2023-07-09 15:08:29.079881','Crafted in 100% Cotton , this White Check Casual Full Sleeves shirt from Peter England Casuals features a Regular Collar and is tailored in Slim Fit.','d6d2ceafbfc44a248c20f20b0a035f43.jpg','PETER ENGLAND  Men Slim Fit Checkered Spread Collar Casual Shirt',999,0,23,17),(45,'2023-07-09 15:21:28.801142','Processor: Intel Core i9-12900H 12th Generation (14-Core, 24MB, up to 5.00 GHz) // RAM & Storage: 16 GB, 2 x 8 GB, DDR5, 4800 MHz, dual-channel, (2 DIMM Slots, Expandable upto 32GB) & 1TB SSD','816a14b5bc69465cb24cc265d18aa6d8.jpg','Dell G15-5521 D560897WIN9S Gaming Laptop',138990,0,20,16),(46,'2023-07-09 15:27:00.538176','Acer Predator Triton 900 17.3\" 4K UHD touchscreen gaming notebook Computer - AC adapter - Acer 2 year limited Warranty Type: Intel Core i9-9980hk Octal-Core Base frequency: 2.40GHz Max Turbo Frequency: 5GHz','6f3f01801cf04a5aacc8bd66f1fcec42.jpg','Acer Predator Triton 900',149999,0,20,16),(48,'2023-07-09 15:31:57.759607',' Washing clothes in an efficient manner is hassle-free with the Samsung 7 kg Fully Automatic Top-loading Washing Machine. It uses Ecobubble and Digital Inverter Technology (DIT) to reduce water usage, thus saving water.','804e708b125f44a6bfbe3886095fb44e.jpg','SAMSUNG 7 kg Inverter 5 Star with Eco Bubble Technology Washing Machine ',17490,0,24,16),(49,'2023-07-09 15:34:45.189165','630 L : Good for large families | Normal Compressor | Frost Free : Auto fridge defrost to stop ice-build up | Convertible: Offers you more space for all the food you need to store','8ae3708511bc46bc91e58410030e7273.jpg','Haier 630 L Frost Free Side by Side Convertible Refrigerator',64990,0,24,16),(50,'2023-07-09 16:13:39.329232',' Dyson V8 Absolute comes with latest detangling technology and with a digital motor generating 110000 rpm with a powerful suction. It traps 99.99% of microscopic particles as small as 0.3 microns. The lightweight Dyson V8 vacuum ','9e6f6afca1bd4bbb8f4279d07d0a0e5f.png','Dyson V8 Absolute Cordless Vacuum Cleane',32900,0,24,16),(51,'2023-07-09 16:17:48.370307','Supported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube | Operating System: Android (Google Assistant & Chromecast in-built) Resolution: HD Ready 1366 x 768 Pixels | Sound Output: 24 W | Refresh Rate: 60 Hz','13c63eab484c46b29e5646b23fd5d794.jpg','Realme 80 cm (32 inch) HD Ready LED Smart Android TV  (TV 32)',11999,0,24,16),(52,'2023-07-09 16:22:43.692629','Color: Black | Outer material : Leather | Model name : Chantry | Lace : Black | Leather Ideal for Men Occasion Formal Leather type Napa Sole material EVA','841faa8dab384f0c8a5f6619767a84cd.jpg','Antonio Bruno 1824402 Black Leather Lace-up Shoes for Men',2599,0,22,16),(53,'2023-07-09 16:25:52.415917','Color: Black, Red, White | Outer material : Mesh | Model name : Scuderia Ferrari Race IMEVA X-Ray 2 | Ideal for Men Occasion : Casual | Sole material : Rubber | Closure : Lace-Ups','3283409018ca4097bc47c6ebe4eb392d.jpeg','PUMA  Scuderia Ferrari Race IMEVA X-Ray 2 Sneakers For Men',3999,0,22,16),(54,'2023-07-09 16:29:19.064620',' Brand : Too Yumm! | Model Name : Potato Stix Aloo Chat | Quantity :70 g | Type : Chips | Maximum Shelf Life : 6 Months | Flavor : Aloo Chat','e04a4942d6504e31bb4498bf18d79fb3.jpg','Too Yumm! Potato Stix Aloo Chat Chips ',50,0,19,16),(55,'2023-07-09 16:33:00.988290',' Brand : Lal | ModelName : Shahi Soan Papdi | Type : Soan Papdi | Quantity : 200 g | Maximum Shelf Life : 4 Months | Container Type : Box Pack of 1 | Food Preference : Vegetarian','63f343a0b32c4cb4b68aa674c98e480d.jpg','Lal Shahi Soan Papdi Box',130,0,19,16),(56,'2023-07-09 16:39:29.227547','Style Code : WMJNSM4405 | Ideal For : Men | Suitable For : Western Wear | Pack Of : 1 | Pocket Type : Coin Pocket, Curved Pocket, Patch Pocket | Pattern : Solid','36e7fe42e50447228f73c6d2b85e8c9e.jpg','Wrangler  Men Slim Low Rise Blue Jeans',1099,0,23,15),(57,'2023-07-09 16:42:32.888827','Style Code : 36087-0609 | Ideal For : Men | Suitable For : Western Wear | Pack Of :1 | Pocket Type : Coin Pocket, Curved Pocket, Patch Pocket | Pattern : Solid','1adb89292cdf4dce8e0e8d077ff97b2f.png','LEVI\'S  512 Men Tapered Fit Mid Rise Blue Jeans',2199,0,23,15),(58,'2023-07-09 16:45:22.939614','Color : Dark Blue | Fabric : Polyester | Pattern : Self Design | Style code : RMJS02395-B6 | Occasion : Formal | Type : Single Breasted','8b8e915f97cc41ffa432f892e7302af5.jpg','Raymond  Men Self Design Single Breasted Formal Blazer ',7499,0,23,15),(59,'2023-07-09 16:50:33.931329','You can add ease to your multiple cooking requirements with the Pigeon 25 L Oven Toaster Griller (OTG). It is designed for grilling and can also be used to bake cakes, pizzas, soft bread, or even grill veggies and meat.','b422551971f34754b086ecab84cd9dde.jpg','Pigeon 25-Litre 14347 Oven Toaster Grill ',5599,0,24,15),(60,'2023-07-09 16:59:01.623736','Material: Animal-free, Bio-based Materials | Hardware: None | Color: Multi Color | Outer Sole: Rubber Sole | Fabric Lining Insole | Made in Italy','a053e95ad43c48c4bbbb2446f12e84d3.jpg','GUCCI 661303 2SH90 1072 MEN\'S SHOES MULTI-COLOR BASKET SNEAKERS',83100,0,22,15);
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

-- Dump completed on 2023-07-09 22:44:05
