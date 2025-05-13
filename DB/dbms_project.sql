-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `Attendance_ID` int NOT NULL AUTO_INCREMENT,
  `Student_ID` int DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('Present','Absent') DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  PRIMARY KEY (`Attendance_ID`),
  UNIQUE KEY `idx_unique_attendance` (`Student_ID`,`Course_ID`,`attendance_date`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`),
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `courses` (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,2201,'2024-05-31 17:03:56','Present','2024-05-31'),(2,2,2201,'2024-05-31 17:03:56','Present','2024-05-31'),(3,3,2201,'2024-05-31 17:03:56','Absent','2024-05-31'),(4,4,2201,'2024-05-31 17:03:56','Absent','2024-05-31'),(5,5,2201,'2024-05-31 17:03:56','Present','2024-05-31'),(6,6,1109,'2024-05-31 17:25:31','Absent','2024-05-31'),(7,7,1109,'2024-05-31 17:25:31','Absent','2024-05-31'),(8,8,1109,'2024-05-31 17:25:31','Absent','2024-05-31'),(9,9,1109,'2024-05-31 17:25:31','Absent','2024-05-31'),(10,10,1109,'2024-05-31 17:25:31','Absent','2024-05-31'),(11,1,2202,'2024-05-31 18:11:46','Present','2024-05-31'),(12,2,2202,'2024-05-31 18:11:46','Present','2024-05-31'),(13,3,2202,'2024-05-31 18:11:46','Present','2024-05-31'),(14,4,2202,'2024-05-31 18:11:46','Present','2024-05-31'),(15,5,2202,'2024-05-31 18:11:46','Present','2024-05-31'),(16,1,2201,'2024-05-31 18:31:57','Present','2024-05-30'),(17,2,2201,'2024-05-31 18:31:57','Present','2024-05-30'),(18,3,2201,'2024-05-31 18:31:57','Present','2024-05-30'),(19,4,2201,'2024-05-31 18:31:57','Present','2024-05-30'),(20,5,2201,'2024-05-31 18:31:57','Present','2024-05-30'),(21,1,2201,'2024-05-31 18:32:06','Absent','2024-05-20'),(22,2,2201,'2024-05-31 18:32:06','Absent','2024-05-20'),(23,3,2201,'2024-05-31 18:32:06','Absent','2024-05-20'),(24,4,2201,'2024-05-31 18:32:06','Absent','2024-05-20'),(25,5,2201,'2024-05-31 18:32:06','Absent','2024-05-20'),(31,6,1110,'2024-05-31 18:34:48','Present','2024-05-31'),(32,7,1110,'2024-05-31 18:34:48','Present','2024-05-31'),(33,8,1110,'2024-05-31 18:34:48','Present','2024-05-31'),(34,9,1110,'2024-05-31 18:34:48','Present','2024-05-31'),(35,10,1110,'2024-05-31 18:34:48','Present','2024-05-31'),(36,6,1110,'2024-05-31 18:35:39','Absent','2024-05-30'),(37,7,1110,'2024-05-31 18:35:39','Absent','2024-05-30'),(38,8,1110,'2024-05-31 18:35:39','Absent','2024-05-30'),(39,9,1110,'2024-05-31 18:35:39','Absent','2024-05-30'),(40,10,1110,'2024-05-31 18:35:39','Absent','2024-05-30'),(41,11,3306,'2024-05-31 18:47:13','Present','2024-05-31'),(42,12,3306,'2024-05-31 18:47:14','Present','2024-05-31'),(43,13,3306,'2024-05-31 18:47:14','Present','2024-05-31'),(44,11,3304,'2024-05-31 18:47:51','Absent','2024-05-31'),(45,12,3304,'2024-05-31 18:47:51','Absent','2024-05-31'),(46,1,2203,'2024-05-31 18:50:24','Present','2024-05-31'),(47,2,2203,'2024-05-31 18:50:24','Present','2024-05-31'),(48,3,2203,'2024-05-31 18:50:24','Present','2024-05-31'),(49,4,2203,'2024-05-31 18:50:24','Present','2024-05-31'),(50,5,2203,'2024-05-31 18:50:24','Present','2024-05-31'),(51,14,8909,'2024-05-31 20:29:37','Present','2024-05-31'),(52,14,8909,'2024-05-31 20:29:50','Absent','2024-05-25'),(53,1,2211,'2024-06-01 23:13:26','Present','2024-06-01'),(54,2,2211,'2024-06-01 23:13:26','Present','2024-06-01'),(55,3,2211,'2024-06-01 23:13:26','Present','2024-06-01'),(56,4,2211,'2024-06-01 23:13:26','Present','2024-06-01'),(57,5,2211,'2024-06-01 23:13:26','Present','2024-06-01'),(58,14,201,'2024-06-02 13:54:15','Absent','2024-06-02'),(59,16,201,'2024-06-02 13:54:15','Absent','2024-06-02'),(62,1,2201,'2024-06-02 14:28:44','Absent','2024-06-02'),(63,2,2201,'2024-06-02 14:28:44','Absent','2024-06-02'),(64,3,2201,'2024-06-02 14:28:44','Absent','2024-06-02'),(65,4,2201,'2024-06-02 14:28:44','Present','2024-06-02'),(66,5,2201,'2024-06-02 14:28:44','Present','2024-06-02'),(67,17,2201,'2024-06-02 14:28:44','Present','2024-06-02');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `Course_ID` int NOT NULL AUTO_INCREMENT,
  `Course_Name` varchar(255) NOT NULL,
  `Course_Details` text,
  `Department` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `course_faculty_id` int DEFAULT NULL,
  PRIMARY KEY (`Course_ID`),
  KEY `fk_course_department` (`department_id`),
  KEY `course_faculty_id` (`course_faculty_id`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`course_faculty_id`) REFERENCES `faculties` (`Faculty_ID`),
  CONSTRAINT `fk_course_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (201,'Management','aa','Finance & Banking',9909,13),(1108,'Object Oriented Programming','To learn the concept of OOP with a pure object-oriented programming language (Java)\r\nTo learn how to use advance programming features such as GUI design, exception handling and multithreading.\r\nTo learn how to design and develop a complete real-world software solution.','Computer Science and Engineering',2,8),(1109,'Digital Electronics and Pulse Technique','To acquire the basic knowledge of digital logic levels and application of knowledge to understand digital electronic circuits.\r\nTo prepare students to perform the analysis and design of various combinational and sequential circuits using gates','Computer Science and Engineering',2,6),(1110,'Digital Electronics and Pulse Technique Laboratory','To acquaint the students with the fundamental concepts in classical manual digital design\r\nTo familiarize the students clearly with the way in which digital circuits are designed today using CAD tools like Schematic Capture and Verilog HDL.\r\nTo develop students’ analytical skills to build complex digital circuit and impart the knowledge about ‘Green Technology’ to integrate it in their projects','Computer Science and Engineering',2,6),(1111,'Statistics','To discuss the theories of applied statistics\r\nTo select the practical applications in the field of Information Technology and explain the real-life application of statistics.','Computer Science and Engineering',2,7),(2201,'Data Structure','Objectives\r\n\r\n1. To develop a general understanding of basic data structures and algorithms 2. To develop Programming skills for advanced data structures and algorithms\r\nOutcomes\r\n\r\n1. Express the fundamentals of static and dynamic data structures and relevant standard algorithms. 2. Demonstrate advantages and disadvantages of specific algorithms and data structures. 3. Analyze basic data structures and algorithms for autonomous realization of simple programs or program parts. 4. Determine and demonstrate bugs in the program, recognize needed basic operations with algorithms and data structures.\r\nReferences\r\n\r\n1. Introduction to Algorithms (CLRS) 3rd Edition Sep 2009 2. Data Structures and Algorithm Analysis in C++ 2014','Information Communication and Technology',1,1),(2202,'Data Structure Lab','Objectives\r\n\r\n1. To develop a general understanding of basic data structures and algorithms 2. To develop programming skills for advanced data Structures and algorithms\r\nOutcomes\r\n\r\n1. Identify advantages and disadvantages of specific algorithms and data structures. 2. Select basic data structures and algorithms for autonomous realization of simple programs or program parts. 3. Initiate practical knowledge to determine and demonstrate bugs in programs. 4. Formulate new solutions for problems or improve existing code using learned algorithms and data structures.\r\nReferences\r\n\r\n1. Introduction to Algorithms (CLRS) 3rd Edition Sep 2009 2. Data Structures and Algorithm Analysis in C++ 2014','Information Communication and Technology',1,1),(2203,'Database Managament System ','1. Understand the basic concepts and appreciate the applications of database systems. 2. Know the basics of SQL and construct queries using SQL. 3. Be familiar with a commercial relational database system (Oracle) by writing SQL using the system. 4. Be familiar with the relational database theory and be able to write relational algebra expressions for queries.','Information Communication and Technology',1,2),(2204,'Database Managament System Laboratory','1. To introduce the basic concepts of database. 2. Developing a real-world database application. 3. To learn the design of a database starting from the conceptual design to the implementation of database schemas and user interfaces to a database.\r\n','Information Communication and Technology',1,2),(2207,'Mathematics-IV (Linear Algebra and Statistics)','1. To provide a physical interpretation of the Differential Equations and Laplace Transform. 2. To explain the characteristics of Ordinary Differential Equations and Laplace Transform. 3. To apply Laplace and Fourier Transform in solving complex problems. 4. To use differential operations for simplification of complex engineering expressions','Information Communication and Technology',1,3),(2209,'Discrete Math and Probability','1. To introduce Discrete Mathematics and its applications. 2. To introduce some of the problems of Discrete Mathematics. To develop knowledge of a variety of mathematical tools applicable in computer science. 3. To discuss the theories of probability','Information Communication and Technology',1,4),(2211,'Professional Ethics and Environmental Protection','1. To develop a firm ethical base. 2. To develop better understanding of the rightness and wrongness when behaving as individual, family member, society member and citizen of country. 3. To gain the ability to continue professional development with an understanding of the legal issues, and to critically assess the codes of professional conduct for computer professionals. 4. To identify and analyze practical legal problems commonly encountered in the computing industry.','Information Communication and Technology',1,5),(3301,'Environmental Microbiology','To familiarize students with basic knowledge of environmental microbiology.\r\nTo develop the knowledge of various microbial pollution and role of microbes in biogeochemical cycling in different environmental components.\r\nTo familiarize with different microbial interactions, diseases caused by microbes and prevention mechanisms.','Environmental Science',3,10),(3303,'Ecology and Biodiversity','The course is designed for the 2nd year students of B.Sc. Program of Environmental Science to provide them an extensive knowledge on both ecology and biodiversity. In doing so, this course identifies specific objectives:\r\ni) To develop a theoretical knowledge on the fields of ecology, ecosystem, autecology, gene-ecology, population ecology, energy in ecological system, biodiversity and conservation of biodiversity;\r\nii) To have an understanding of the ecological interactions between members of an ecological community and ecological factors;\r\niii) To learn and develop a range of theoretical skills required to undertake microbiological, botanical and zoological investigations as well as to know the threats on biodiversity along with to know the policy and legislation regarding biodiversity.','Environmental Science',3,10),(3304,'Analytical Chemistry','The course is designed to provide an introductory idea about analytical chemistry which is necessary for quantitative chemical analysis of the environmental samples.\r\nTo familiarize students with basic knowledge of analytical chemistry.\r\nTo develop an understanding of the range and uses of analytical methods in chemistry.\r\nTo provide an understanding of chemical methods employed for environmental sample analysis.\r\nTo evaluate the accuracy of and sources of errors for a given quantitative or instrument analytical method.','Environmental Science',3,10),(3306,'Sociology for Environment','Developing an understanding of major theoretical perspectives in Environmental Sociology, their applications in real life by discussing recent issues.\r\nDemonstrating the steps of conducting a scientific research, collecting and analyzing data and writing a research paper.\r\nIllustrating the process of personality development, self-development and Socialization\r\nIntroducing basic techniques of analyzing economic, cultural, social and religious institution of society by taking assignments\r\nMaking sense about the sociological theories that account for deviance, conformity and social control.','Environmental Science',3,9),(8909,'Basic Finance','Basic finance knowledge','Finance & Banking',9909,11),(22109,'Presentation Skills','To develop the presentation output of a student for his future professional career development','Information Communication and Technology',1,5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Information Communication and Technology'),(2,'Computer Science and Engineering'),(3,'Environmental Science'),(9909,'Finance & Banking');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment_status`
--

DROP TABLE IF EXISTS `enrollment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_status` (
  `Enrollment_ID` int NOT NULL AUTO_INCREMENT,
  `Student_ID` int DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Enrollment_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `Course_ID` (`Course_ID`),
  CONSTRAINT `enrollment_status_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`),
  CONSTRAINT `enrollment_status_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `courses` (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_status`
--

LOCK TABLES `enrollment_status` WRITE;
/*!40000 ALTER TABLE `enrollment_status` DISABLE KEYS */;
INSERT INTO `enrollment_status` VALUES (1,1,2201,'2-2'),(2,1,2202,'2-2'),(3,1,2203,'2-2'),(4,1,2204,'2-2'),(5,1,2207,'2-2'),(6,1,2209,'2-2'),(7,1,2211,'2-2'),(8,2,2201,'1'),(9,2,2202,'1'),(10,2,2203,'1'),(11,2,2204,'1'),(12,2,2207,'1'),(13,2,2209,'1'),(14,2,2211,'1'),(15,3,2201,'1'),(16,3,2202,'1'),(17,3,2203,'1'),(18,3,2204,'1'),(19,3,2207,'1'),(20,3,2209,'1'),(21,3,2211,'1'),(22,4,2201,'1'),(23,4,2202,'1'),(24,4,2203,'1'),(25,4,2204,'1'),(26,4,2207,'1'),(27,4,2209,'1'),(28,4,2211,'1'),(29,5,2201,'1'),(30,5,2202,'1'),(31,5,2203,'1'),(32,5,2204,'1'),(33,5,2207,'1'),(34,5,2209,'1'),(35,5,2211,'1'),(36,1,1109,'2-2'),(37,2,1109,'2-2'),(38,3,1109,'2-2'),(39,4,1109,'2-2'),(40,5,1109,'2-2'),(41,1,1111,'2-2'),(42,2,1111,'2-2'),(43,3,1111,'2-2'),(44,4,1111,'2-2'),(45,5,1111,'2-2'),(46,1,1110,'2-2'),(47,2,1110,'2-2'),(48,3,1110,'2-2'),(49,4,1110,'2-2'),(50,5,1110,'2-2'),(51,1,1108,'2-2'),(52,2,1108,'2-2'),(53,3,1108,'2-2'),(54,4,1108,'2-2'),(55,5,1108,'2-2'),(56,6,2201,'1'),(57,6,2202,'1'),(58,6,2203,'1'),(59,6,2204,'1'),(60,6,2207,'1'),(61,6,2209,'1'),(62,6,2211,'1'),(63,6,1108,'1'),(64,6,1109,'1'),(65,6,1110,'1'),(66,6,1111,'1'),(67,7,2201,'1'),(68,7,2202,'1'),(69,7,2203,'1'),(70,7,2204,'1'),(71,7,2207,'1'),(72,7,2209,'1'),(73,7,2211,'1'),(74,7,1108,'1'),(75,7,1109,'1'),(76,7,1110,'1'),(77,7,1111,'1'),(78,8,2201,'1'),(79,8,2202,'1'),(80,8,2203,'1'),(81,8,2204,'1'),(82,8,2207,'1'),(83,8,2209,'1'),(84,8,2211,'1'),(85,8,1108,'1'),(86,8,1109,'1'),(87,8,1110,'1'),(88,8,1111,'1'),(89,9,2201,'1'),(90,9,2202,'1'),(91,9,2203,'1'),(92,9,2204,'1'),(93,9,2207,'1'),(94,9,2209,'1'),(95,9,2211,'1'),(96,9,1108,'1'),(97,9,1109,'1'),(98,9,1110,'1'),(99,9,1111,'1'),(100,10,2201,'1'),(101,10,2202,'1'),(102,10,2203,'1'),(103,10,2204,'1'),(104,10,2207,'1'),(105,10,2209,'1'),(106,10,2211,'1'),(107,10,1108,'1'),(108,10,1109,'1'),(109,10,1110,'1'),(110,10,1111,'1'),(111,1,3306,'2-2'),(112,2,3306,'2-2'),(113,3,3306,'2-2'),(114,4,3306,'2-2'),(115,5,3306,'2-2'),(116,6,3306,'2-2'),(117,7,3306,'2-2'),(118,8,3306,'2-2'),(119,9,3306,'2-2'),(120,10,3306,'2-2'),(121,1,3301,'2-2'),(122,2,3301,'2-2'),(123,3,3301,'2-2'),(124,4,3301,'2-2'),(125,5,3301,'2-2'),(126,6,3301,'2-2'),(127,7,3301,'2-2'),(128,8,3301,'2-2'),(129,9,3301,'2-2'),(130,10,3301,'2-2'),(131,1,3303,'2-2'),(132,2,3303,'2-2'),(133,3,3303,'2-2'),(134,4,3303,'2-2'),(135,5,3303,'2-2'),(136,6,3303,'2-2'),(137,7,3303,'2-2'),(138,8,3303,'2-2'),(139,9,3303,'2-2'),(140,10,3303,'2-2'),(141,1,3304,'2-2'),(142,2,3304,'2-2'),(143,3,3304,'2-2'),(144,4,3304,'2-2'),(145,5,3304,'2-2'),(146,6,3304,'2-2'),(147,7,3304,'2-2'),(148,8,3304,'2-2'),(149,9,3304,'2-2'),(150,10,3304,'2-2'),(151,11,2201,'1'),(152,11,2202,'1'),(153,11,2203,'1'),(154,11,2204,'1'),(155,11,2207,'1'),(156,11,2209,'1'),(157,11,2211,'1'),(158,11,1108,'1'),(159,11,1109,'1'),(160,11,1110,'1'),(161,11,1111,'1'),(162,11,3301,'1'),(163,11,3303,'1'),(164,11,3304,'1'),(165,11,3306,'1'),(166,12,2201,'1'),(167,12,2202,'1'),(168,12,2203,'1'),(169,12,2204,'1'),(170,12,2207,'1'),(171,12,2209,'1'),(172,12,2211,'1'),(173,12,1108,'1'),(174,12,1109,'1'),(175,12,1110,'1'),(176,12,1111,'1'),(177,12,3301,'1'),(178,12,3303,'1'),(179,12,3304,'1'),(180,12,3306,'1'),(181,13,2201,'1'),(182,13,2202,'1'),(183,13,2203,'1'),(184,13,2204,'1'),(185,13,2207,'1'),(186,13,2209,'1'),(187,13,2211,'1'),(188,13,1108,'1'),(189,13,1109,'1'),(190,13,1110,'1'),(191,13,1111,'1'),(192,13,3301,'1'),(193,13,3303,'1'),(194,13,3304,'1'),(195,13,3306,'1'),(196,1,22109,'2-2'),(197,2,22109,'2-2'),(198,3,22109,'2-2'),(199,4,22109,'2-2'),(200,5,22109,'2-2'),(201,6,22109,'2-2'),(202,7,22109,'2-2'),(203,8,22109,'2-2'),(204,9,22109,'2-2'),(205,10,22109,'2-2'),(206,11,22109,'2-2'),(207,12,22109,'2-2'),(208,13,22109,'2-2'),(209,14,2201,'1'),(210,14,2202,'1'),(211,14,2203,'1'),(212,14,2204,'1'),(213,14,2207,'1'),(214,14,2209,'1'),(215,14,2211,'1'),(216,14,22109,'1'),(217,14,1108,'1'),(218,14,1109,'1'),(219,14,1110,'1'),(220,14,1111,'1'),(221,14,3301,'1'),(222,14,3303,'1'),(223,14,3304,'1'),(224,14,3306,'1'),(225,1,8909,'3-1'),(226,2,8909,'3-1'),(227,3,8909,'3-1'),(228,4,8909,'3-1'),(229,5,8909,'3-1'),(230,6,8909,'3-1'),(231,7,8909,'3-1'),(232,8,8909,'3-1'),(233,9,8909,'3-1'),(234,10,8909,'3-1'),(235,11,8909,'3-1'),(236,12,8909,'3-1'),(237,13,8909,'3-1'),(238,14,8909,'3-1'),(239,15,2201,'1'),(240,15,2202,'1'),(241,15,2203,'1'),(242,15,2204,'1'),(243,15,2207,'1'),(244,15,2209,'1'),(245,15,2211,'1'),(246,15,22109,'1'),(247,15,1108,'1'),(248,15,1109,'1'),(249,15,1110,'1'),(250,15,1111,'1'),(251,15,3301,'1'),(252,15,3303,'1'),(253,15,3304,'1'),(254,15,3306,'1'),(255,15,8909,'1'),(256,16,2201,'1'),(257,16,2202,'1'),(258,16,2203,'1'),(259,16,2204,'1'),(260,16,2207,'1'),(261,16,2209,'1'),(262,16,2211,'1'),(263,16,22109,'1'),(264,16,1108,'1'),(265,16,1109,'1'),(266,16,1110,'1'),(267,16,1111,'1'),(268,16,3301,'1'),(269,16,3303,'1'),(270,16,3304,'1'),(271,16,3306,'1'),(272,16,8909,'1'),(273,1,201,'2-2'),(274,2,201,'2-2'),(275,3,201,'2-2'),(276,4,201,'2-2'),(277,5,201,'2-2'),(278,6,201,'2-2'),(279,7,201,'2-2'),(280,8,201,'2-2'),(281,9,201,'2-2'),(282,10,201,'2-2'),(283,15,201,'2-2'),(284,11,201,'2-2'),(285,12,201,'2-2'),(286,13,201,'2-2'),(287,14,201,'2-2'),(288,16,201,'2-2'),(289,17,2201,'1'),(290,17,2202,'1'),(291,17,2203,'1'),(292,17,2204,'1'),(293,17,2207,'1'),(294,17,2209,'1'),(295,17,2211,'1'),(296,17,22109,'1'),(297,17,1108,'1'),(298,17,1109,'1'),(299,17,1110,'1'),(300,17,1111,'1'),(301,17,3301,'1'),(302,17,3303,'1'),(303,17,3304,'1'),(304,17,3306,'1'),(305,17,201,'1'),(306,17,8909,'1');
/*!40000 ALTER TABLE `enrollment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_types`
--

DROP TABLE IF EXISTS `exam_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_types` (
  `Exam_Type_ID` int NOT NULL AUTO_INCREMENT,
  `Exam_Type_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Exam_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_types`
--

LOCK TABLES `exam_types` WRITE;
/*!40000 ALTER TABLE `exam_types` DISABLE KEYS */;
INSERT INTO `exam_types` VALUES (1,'Class test-1'),(2,'Class test-2'),(3,'Class test-3'),(4,'Class test-4'),(5,'Assignment/Presentation/Term paper'),(6,'Mid Term'),(7,'Attendance');
/*!40000 ALTER TABLE `exam_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examinations`
--

DROP TABLE IF EXISTS `examinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examinations` (
  `Exam_ID` int NOT NULL AUTO_INCREMENT,
  `Semester` varchar(255) DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  `Schedule` datetime DEFAULT NULL,
  `Exam_Type_ID` int DEFAULT NULL,
  PRIMARY KEY (`Exam_ID`),
  KEY `Course_ID` (`Course_ID`),
  KEY `Exam_Type_ID` (`Exam_Type_ID`),
  CONSTRAINT `examinations_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `courses` (`Course_ID`),
  CONSTRAINT `examinations_ibfk_2` FOREIGN KEY (`Exam_Type_ID`) REFERENCES `exam_types` (`Exam_Type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinations`
--

LOCK TABLES `examinations` WRITE;
/*!40000 ALTER TABLE `examinations` DISABLE KEYS */;
INSERT INTO `examinations` VALUES (1,'2-2',2201,'2024-05-31 14:03:20',3),(2,'2-2',2202,'2024-05-31 14:32:44',5),(3,'2-2',1109,'2024-05-31 14:35:07',3),(4,'2-2',3306,'2024-05-31 14:47:33',4),(5,'2-2',3304,'2024-05-31 14:48:12',1),(6,'2-2',2203,'2024-05-31 14:50:38',1),(7,'3-1',8909,'2024-05-31 16:30:05',6),(8,'2-2',2211,'2024-06-01 19:15:18',4),(9,'2-2',201,'2024-06-02 09:55:19',2),(10,'2-2',2201,'2024-06-02 10:29:15',1);
/*!40000 ALTER TABLE `examinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculties` (
  `Faculty_ID` int NOT NULL AUTO_INCREMENT,
  `Faculty_Name` varchar(255) NOT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Email_ID` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Faculty_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'ict_faculty1','Information Communication and Technology','ict_faculty1@gmail.com','1234567890'),(2,'ict_faculty2','Information Communication and Technology','ict_faculty2@gmail.com','1234567890'),(3,'ict_faculty3','Information Communication and Technology','ict_faculty3@gmail.com','1234567890'),(4,'ict_faculty4','Information Communication and Technology','ict_faculty4@yahoo.com','01234567890'),(5,'ict_faculty5','Information Communication and Technology','ict_faculty5@hotmail.com','1234567890'),(6,'cse_faculty1','Computer Science and Engineering','cse@gmail.com','1234567890'),(7,'cse_faculty2','Computer Science and Engineering','cse@gmail.com','1234567890'),(8,'cse_faculty3','Computer Science and Engineering','cse@gmail.com','1234567890'),(9,'es_faculty1','Environmental Science','es@gmail.com','1234567890'),(10,'es_faculty2','Environmental Science','es@gmail.com','1234567890'),(11,'fin_faculty','Finance & Banking','fin@gmail.com','1234567890'),(12,'es_faculty3','Information Communication and Technology','es@gmail.com','1234567890'),(13,'new','Finance & Banking','new@gmail.com','01234567890');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `Marks_ID` int NOT NULL AUTO_INCREMENT,
  `Exam_ID` int DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  `Total_Marks` int DEFAULT NULL,
  `Obtained_Marks` int DEFAULT NULL,
  `Student_ID` int DEFAULT NULL,
  PRIMARY KEY (`Marks_ID`),
  KEY `Course_ID` (`Course_ID`),
  KEY `Student_ID` (`Student_ID`),
  KEY `fk_exam_id` (`Exam_ID`),
  CONSTRAINT `fk_exam_id` FOREIGN KEY (`Exam_ID`) REFERENCES `examinations` (`Exam_ID`),
  CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `courses` (`Course_ID`),
  CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,1,2201,10,9,1),(2,1,2201,10,8,2),(3,1,2201,10,7,3),(4,1,2201,10,10,4),(5,1,2201,10,9,5),(6,2,2202,10,5,1),(7,2,2202,10,5,2),(8,2,2202,10,5,3),(9,2,2202,10,5,4),(10,2,2202,10,5,5),(11,3,1109,10,10,6),(12,3,1109,10,10,7),(13,3,1109,10,10,8),(14,3,1109,10,10,9),(15,3,1109,10,10,10),(16,4,3306,10,10,11),(17,4,3306,10,10,12),(18,4,3306,10,10,13),(19,5,3304,10,2,11),(20,5,3304,10,7,12),(21,5,3304,10,3,13),(22,6,2203,10,10,1),(23,6,2203,10,10,2),(24,6,2203,10,10,3),(25,6,2203,10,10,4),(26,6,2203,10,10,5),(27,7,8909,40,35,14),(28,8,2211,10,8,1),(29,8,2211,10,8,2),(30,8,2211,10,8,3),(31,8,2211,10,8,4),(32,8,2211,10,8,5),(33,9,201,10,10,14),(34,9,201,10,10,16),(35,10,2201,10,8,1),(36,10,2201,10,8,2),(37,10,2201,10,8,3),(38,10,2201,10,8,4),(39,10,2201,10,8,5),(40,10,2201,10,7,17);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `notice_date` date DEFAULT NULL,
  `notice_details` text,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'2024-05-31','Tomorrow all classes are cancelled!'),(2,'2024-06-02','Bhalo hoise');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `parent_id` int NOT NULL AUTO_INCREMENT,
  `parent_name` varchar(255) NOT NULL,
  `student_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`parent_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,'Nafees_parent',4,'omi@gmail.com','232323'),(2,'Tahsin_parent',1,'omi@gmail.com','232323');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_ID` int NOT NULL AUTO_INCREMENT,
  `Student_Name` varchar(255) NOT NULL,
  `Enrollment_Status` varchar(100) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`Student_ID`),
  KEY `fk_department` (`department_id`),
  CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Omi ','Enrolled','Information Communication and Technology',1),(2,'Zawad','Enrolled','Information Communication and Technology',1),(3,'Asif','Enrolled','Information Communication and Technology',1),(4,'Nafees','Enrolled','Information Communication and Technology',1),(5,'Tahsin','Enrolled','Information Communication and Technology',1),(6,'Nibir','Enrolled','Computer Science and Engineering',2),(7,'Rafsan','Enrolled','Computer Science and Engineering',2),(8,'Ramisa','Enrolled','Computer Science and Engineering',2),(9,'Lamia','Enrolled','Computer Science and Engineering',2),(10,'Paromita','Enrolled','Computer Science and Engineering',2),(11,'Joshua','Enrolled','Environmental Science',3),(12,'Shafin','Enrolled','Environmental Science',3),(13,'Maliha','Enrolled','Environmental Science',3),(14,'Niloy','Enrolled','Finance & Banking',9909),(15,'Imran','Enrolled','Computer Science and Engineering',2),(16,'kamal','enrolled','Finance & Banking',9909),(17,'aa','aa','Information Communication and Technology',1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','student','parent','faculty') DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','123','admin','images/admin.jpg'),(2,'Omi','123','student','images/Omi.jpg'),(3,'ict_faculty1','123','faculty','images/ict_faculty1.jpg'),(4,'ict_faculty2','123','faculty','images/ict_faculty2.jpg'),(5,'ict_faculty3','123','faculty','images/ict_faculty3.jpg'),(6,'ict_faculty4','123','faculty','images/ict_faculty4.jpg'),(7,'ict_faculty5','123','faculty','images/ict_faculty5.jpg'),(8,'Zawad','123','student','images/Zawad.jpg'),(9,'Asif','123','student','images/Asif.jpg'),(10,'Nafees','123','student','images/Nafees.jpg'),(11,'Tahsin','123','student','images/Tahsin.jpg'),(12,'cse_faculty1','123','faculty','images/cse_faculty1.jpg'),(13,'cse_faculty2','123','faculty','images/cse_faculty2.jpg'),(14,'cse_faculty3','123','faculty','images/cse_faculty3.jpg'),(15,'Nibir','123','student','images/Nibir.jpg'),(16,'Rafsan','123','student','images/Rafsan.jpg'),(17,'Ramisa','123','student','images/Ramisa.jpg'),(18,'Lamia','123','student','images/Lamia.jpg'),(19,'Paromita','123','student','images/Paromita.jpg'),(20,'es_faculty1','123','faculty','images/es_faculty1.jpg'),(21,'es_faculty2','123','faculty','images/es_faculty2.jpg'),(22,'Joshua','123','student','images/Joshua.jpg'),(23,'Shafin','123','student','images/Shafin.jpg'),(24,'Maliha','123','student','images/Maliha.jpg'),(25,'Nafees_parent','123','parent','images/Nafees_parent.jpg'),(26,'Tahsin_parent','123','parent','images/Tahsin_parent.jpg'),(27,'fin_faculty','123','faculty','images/fin_faculty.jpg'),(28,'Niloy','123','student','images/Niloy.jpg'),(29,'Imran','123','student','images/Imran.jpg'),(30,'es_faculty3','123','faculty','images/es_faculty3.jpg'),(31,'newParent','123','parent','images/newParent.jpg'),(32,'new','123','faculty','images/new.jpg'),(33,'kamal','123','student','images/kamal.jpg'),(34,'aa','123','student','images/aa.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 23:26:17
