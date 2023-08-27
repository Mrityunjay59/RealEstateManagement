-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: realdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `userid` int DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `area` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `furnished` tinyint(1) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `img_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Plot','Bangalore','Area 51, Bengaluru',3000,10000000,0,3,'https://files.propertywala.com/photos/95/P9551987.plot.18137237l.jpg'),(2,'Bungalow','Bombay','Santa Cruz, Mumbai',3000,15000700,1,4.5,'https://assets.architecturaldigest.in/photos/60084f101b516d492c3ab3ce/master/pass/Bangalore-interiors-homes-1366x768.jpg'),(3,'Independent House','Mangalore','Surathkal, Mangalore',500,2000000,1,4,'https://im.proptiger.com/1/667050/6/babbukatte-villas-elevation-9979438.jpeg'),(4,'Brigade Panorama','Mysore Road','Mysore Road, Bangalore',1500,6700000,1,4.1,'https://cdn.brigadegroup.com/properties/gallery/150657773859cc8d4a59dfa.jpg'),(5,'Prestige Villa','Juhu','Juhu, Mumbai',3000,26050000,1,4.9,'https://www.myistria.com/UserDocsImages/app/objekti/795/slika_hd/19082020034916_Villas-near-Rovinj-Villa-Prestige-2.jpg?preset=carousel-1-webp'),(6,'Stellaris','Delhi','Kualin, Delhi',2500,15908800,1,3.9,'https://thumb.cadbull.com/img/product_img/original/a0bef68553a13bf93b9e33dbb0be9fdd.png'),(7,'Ignis','Kolkata','Beoni,Kolkata',2780,19820600,0,4.1,'https://i.pinimg.com/originals/7a/ab/80/7aab806c73668fbee1e5ecb846640603.jpg'),(8,'Caolirity','Los Angeles','Paslies, LA',3100,30020500,1,3.8,'https://images.homify.com/c_fill,f_auto,q_0,w_740/v1581402626/p/photo/image/3344225/LR0006DSC_4108.jpg'),(9,'Prinata','Kuala Lumpur','Resnes, Kuala Lumpur',2800,21505100,1,4,'https://cdn.trendhunterstatic.com/thumbs/eichler-house.jpeg'),(10,'Empty Plot','Lahore','Thalia, Lahore',2200,9980240,1,3.5,'https://img.etimg.com/thumb/width-640,height-480,imgsize-281950,resizemode-1,msid-47597337/wealth/borrow/how-is-land-loan-different-from-home-loan/land.jpg'),(11,'Lucky Stars','Bangalore','Jayanagar, Bangalore',2400,23067000,1,3.4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDS0uKAYNKPQHIf7FyAYSe4QblU8e-2u4HlA&usqp=CAU'),(12,'Sholetimes','Chennai','Doucli, Chennai',900,5980000,1,2.8,'https://img.staticmb.com/mbphoto/property/cropped_images/2020/Sep/01/Photo_h180_w240/50726510_1_PropertyImage101-85398682922097_180_240.jpg'),(13,'Asyns','California','Soule, California',1700,17865000,1,3.3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0rMEkYN8dEvOE2_1ju0a8p4p_UPggjuDnCw&usqp=CAU'),(14,'Scenic Plate','Mumbai','Bandra, Mumbai',1200,17090000,0,3.7,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsCYgO2FwZDiSdEbet-XMLsamByRwfI3u4Zw&usqp=CAU'),(15,'Cranus Heal','Paris','Thetus, Paris',3100,30200000,1,3.5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMSNIJfPZZM3o8_W0OoV3-Fuct94aokqNjKQ&usqp=CAU'),(16,'Majesticia','Mysore','Lasoin, Mysore',1680,8200000,1,4.1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXkrqZl18IgEy74sxiNPnzRXWJ1ID8-C8Eg&usqp=CAU'),(17,'Freedom Villa','Bangalore','Electronic City, Bangalore',2800,20350000,1,4.6,'https://im.proptiger.com/1/1736517/6/global-villas-elevation-100666132.jpeg'),(18,'Joy Vaidhe','Hyderabad','Ahjaini, Hyderabad',1200,6050000,0,3.7,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2lYybjgoCN1Tl0yeNZ1tlWOSdBmaR7IrGZg&usqp=CAU'),(19,'Empty Plot','Raipur','Dhoovar, Raipur',1700,9785000,1,3.8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0rMEkYN8dEvOE2_1ju0a8p4p_UPggjuDnCw&usqp=CAU'),(20,'Sambhram','Delhi','Hansom, Delhi',1150,6750000,1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRpw7vC4WiCq2xt-keUzKa5y4bofah2PVpDA&usqp=CAU'),(21,'Skylark','Mangalore','Kottara, Mangalore',1600,10050000,1,4.3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKpeN2Tim2S3zA3ndZzrvL-Zx-rJPWg7kUxA&usqp=CAU'),(22,'Yellow Pond','Udupi','Manipal, Udupi',1800,15075000,1,4.8,'https://cdn.shortpixel.ai/client/q_lossy,ret_img,w_4000,h_2000/https://verdeh.com/wp-content/uploads/2018/09/La-Quinta-Piscina-noche-4000x2000.jpg'),(23,'Empty Plot','Bangalore','Break, Bangalore',1500,10050000,0,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsApRDY6eF9cDk4WJ6cvOIwUO_N3kzOMhiPw&usqp=CAU'),(24,'Kromatic','Ahmedabad','Highland, Ahmedabad',2500,21050000,1,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSq7mn3me2xgR-xkSqflnTxQoAY_EnehCLbQ&usqp=CAU'),(25,'Brave Shine','Delhi','Faridabad, Delhi',1900,20509000,0,3.6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Ro83n459S18FOUhP6-MmLFfH9UB9z_9lXw&usqp=CAU'),(26,'Royal Cliff','Bangalore','Coundas, Bangalore',2400,19500000,1,4.3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWJ2kZKwPrdIYC5GcfG3MQCtlt9hJIbC66qQ&usqp=CAU'),(27,'Rêver','Paris','Veria, Paris',3000,20450000,0,4.6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCHYGjMPiAx_6XT7NGBzSaaPHD4qb-cgyHew&usqp=CAU'),(28,'Nubibus','Mexico City','Geadile, Mexico',2800,18650000,1,4.8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl1gravXy1w6RTIuKQi2-74qWY0Yd6RPk7QA&usqp=CAU'),(29,'Paradise','Chennai','Hesouch, Chennai',2300,15500000,1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR250JwDVppxMeanSII0Xrinx7fODINf4TltQ&usqp=CAU'),(30,'Sýnnefa','Athens','Upfeel, Athens',1900,14050000,0,4.2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmjRO2bw8YTrLztVs-veW7gtSjXElRKiCnFA&usqp=CAU'),(31,'Kardiá','Jaipur','Ajmail, Jaipur',2000,18500000,0,3.8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhKLZsEQ0FEH-gcfzJr3DTzQWUrtgY0-5qDQ&usqp=CAU'),(32,'Apaiser','Goa','Panaji, Goa',1500,17605000,1,4.2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsCYgO2FwZDiSdEbet-XMLsamByRwfI3u4Zw&usqp=CAU'),(33,'Cessabit','Mysore','Chirag, Mysore',1950,18050000,0,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8XZO7qE_zopdw4Hp5YTQ_TwmgZXhMi8FFHA&usqp=CAU'),(34,'Tranquillum','Vizag','Nunitam, Vizag',2000,20500000,1,3.6,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBbvRJFTtWFhHs7ElseIchUjHvglNZEVB25A&usqp=CAU'),(35,'Malacia','Goa','Faigul, Goa',3200,28065000,1,4.8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4DrBpLOghjphfkUo5ZSYrU0Jzs13lyoVbFg&usqp=CAU'),(36,'Coronam','Kolata','Janari, Kolkata',1250,1505000,0,2.9,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS33Fknzc1IazVLS6ihr5dhkFFm6pNIlV8XNw&usqp=CAU'),(37,'Empty Plot','Manali','Dalsa, Manali',2000,19000000,1,3.8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfWd5yJ6M8-3lToH4jTzTJ0avq1LKhXZMiYg&usqp=CAU'),(38,'Orbis','New York','Gaould, NYC',3000,30050000,1,4.5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBPp6cQmjOiW2M8Ce_8--tkTpRRUdRfUr3Ug&usqp=CAU'),(39,'Varýtita','Abu Dhabi','Pealu, Abu Dhabi',2500,24500000,0,4.2,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3j18CIQOIh9fwkwGTDTZYkJAWfQrvbWQe6w&usqp=CAU'),(40,'Pluto','Seoul','Hwassi, Seoul',1750,19000000,1,4.4,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdne7MgxisUrW4UdNYxXEyH6kJ_MFTkf2Eaw&usqp=CAU');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `propertyid` int DEFAULT NULL,
  `costtag` varchar(15) DEFAULT NULL,
  `bhktag` varchar(15) DEFAULT NULL,
  `areatag` varchar(15) DEFAULT NULL,
  KEY `propertyid` (`propertyid`),
  CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`propertyid`) REFERENCES `property` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `preferred_area` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 21:41:10
