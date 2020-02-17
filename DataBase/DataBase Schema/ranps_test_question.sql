-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ranps
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `test_question`
--

DROP TABLE IF EXISTS `test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_question` (
  `test_qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_desc` varchar(1000) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) DEFAULT NULL,
  `optionD` varchar(100) DEFAULT NULL,
  `correct_ans` varchar(100) NOT NULL,
  `marks` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`test_qid`),
  KEY `testId_idx` (`test_id`),
  KEY `tqemail_idx` (`email`),
  CONSTRAINT `FK8xhv08dx0bsbuytsnnuecy3vg` FOREIGN KEY (`email`) REFERENCES `admin` (`email`),
  CONSTRAINT `FKk2sfq1wyx19uvwn7pkgk1bc9n` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`),
  CONSTRAINT `testId` FOREIGN KEY (`test_id`) REFERENCES `test` (`test_id`),
  CONSTRAINT `tqemail` FOREIGN KEY (`email`) REFERENCES `admin` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_question`
--

LOCK TABLES `test_question` WRITE;
/*!40000 ALTER TABLE `test_question` DISABLE KEYS */;
INSERT INTO `test_question` VALUES (145,'What Is C++?','Programming Language','Scripting Language','English Language','None Of These','Programming Language',2,138,'shubhsaxena105@gmail.com'),(146,'demo','demo','demo','demo','demo','demo',2,138,'shubhsaxena105@gmail.com');
/*!40000 ALTER TABLE `test_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-23  7:44:35