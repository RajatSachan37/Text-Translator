-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
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
-- Table structure for table `new_translation_table`
--

DROP TABLE IF EXISTS `new_translation_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_translation_table` (
  `from` varchar(45) NOT NULL,
  `inputText` varchar(45) NOT NULL,
  `to` varchar(45) NOT NULL,
  `outputText` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Translated text will be stored along with input text, source and target laguages.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_translation_table`
--

LOCK TABLES `new_translation_table` WRITE;
/*!40000 ALTER TABLE `new_translation_table` DISABLE KEYS */;
INSERT INTO `new_translation_table` VALUES ('en','Hello world','hi','हेलो वर्ल्ड'),('en','Great','hi','महान'),('en','Hello, World','hi','हेलो, वर्ल्ड'),('en','Hello, how?','hi','हैलो, कैसे?'),('en','Hello, How are you?','hi','नमस्कार, तुम कैसे हो?'),('hi','नमस्कार, तुम कैसे हो?','en','Hello, how are you?'),('en','Hello, World!','hi','हेलो, वर्ल्ड!'),('hi','हेलो, वर्ल्ड!','en','Hello, World!'),('en','Great Going','hi','महान'),('en','Translate This!','hi','इसका अनुवाद करो!'),('hi','इसका अनुवाद करो!','en','Translate it!'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Welcome','hi','स्वागतयोग्य'),('hi','स्वागतयोग्य','en','Welcome'),('en','Hello work','hi','नमस्कार कार्य'),('en','namaste','hi','नमस्ते'),('en','Hello hero','hi','हेलो हीरो'),('en','Hello, world','hi','हेलो, दुनिया'),('en','Hello, world','hi','हेलो, दुनिया'),('en','world is here','hi','दुनिया यहाँ है'),('en','world','ro','lume'),('ro','Lume','en','World'),('ro','Lume','en','World'),('en','world','pl','świat'),('pl','świat','en','world'),('en','hello','hi','नमस्कार'),('en','InputText','hi','InputtText'),('en','InputText','hi','InputtText'),('en','Hello, world','te','హలో, ప్రపంచ'),('en','Hello','hi','नमस्कार'),('en','namaste','hi','नमस्ते'),('en','hello world','hi','हेलो वर्ल्ड'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','namaste','hi','नमस्ते'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','text','hi','पाठ'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','नमस्कार','hi','शामिल हो'),('hi','नमस्कार','en','Namaskar'),('hi','नमस्कार','en','Namaskar'),('hi','नमस्कार','en','Namaskar'),('en','H','hi','एच'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','gu','હેલોવ'),('en','Hello','ne','हेलो'),('en','Hello','fr','Bonjour'),('en','Hello','hi','नमस्कार'),('en','Hello','ta','ஹலோ'),('en','Hello','ta','ஹலோ'),('en','Hello','te','హలో'),('en','Hello','te','హలో'),('en','Hello','te','హలో'),('en','Hello','te','హలో'),('en','Hello','te','హలో'),('en','Hello','te','హలో'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','hi','नमस्कार'),('en','Hello','bn','হ্যালো'),('en','Hello','gu','હેલોવ'),('en','Hello','ne','हेलो'),('en','Hello','ta','ஹலோ'),('en','Hello','te','హలో'),('en','Hello','ur','سلام'),('en','Hello','ur','سلام'),('en','Hello','es','Hello'),('en','Hello','ur','سلام'),('en','Hello','ar','مرحبا'),('en','Hello','fr','Bonjour'),('en','Hello','fr','Bonjour'),('en','Hello','ru','Здравствуйте.'),('en','Hello','pt','Olá'),('en','Hello','pt','Olá'),('en','Hello','pt','Olá'),('en','Hello','pt','Olá'),('en','Hello','id','Halo.'),('en','Hello','zh','你好啊'),('en','Hello','vi','Xin chào'),('en','Hello','vi','Xin chào'),('en','Hello','it','Ciao'),('en','Hello','ja','ハロー'),('en','Hello','ko','안녕하세요'),('en','Hello','tr','Merhaba.'),('en','Hello','tr','Merhaba.'),('en','Hello','tr','Merhaba.'),('en','Hello','ro','Salut'),('en','Hello','ro','Salut'),('en','Hello','pl','Witaj');
/*!40000 ALTER TABLE `new_translation_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-21 15:59:09
