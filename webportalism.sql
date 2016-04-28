-- MySQL dump 10.13  Distrib 5.5.45, for Win32 (x86)
--
-- Host: localhost    Database: webportalism
-- ------------------------------------------------------
-- Server version	5.5.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `EmailId` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `FatherName` varchar(45) NOT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `Batch` varchar(45) NOT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `MotherName` varchar(45) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `AddLine1` varchar(100) DEFAULT NULL,
  `AddLine2` varchar(100) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Pin` varchar(50) NOT NULL,
  `ImageLink` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EmailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES ('69saurabh18@gmail.com','saras','Saurabh','Saraswat','K P Saraswat','8797900357','2014-19','Male','Sudha Saraswat','06/01/1995','xyz','qbgfwd','kanpur','up','india','231458',NULL),('aashishkumar96.akr@gmail.com','qazwsxedc1','Aashish','Kumar','Rajesh Kumar','9572383417','2014-18','Male','Sangeeta','14\\12\\1996','3- C- 05','V.V. COLONY','SHAKTINAGAR','UTTAR PRADESH','INDIA','231222',NULL),('ayushckc@gmail.com','advancement2512','Ayush','Khare','Ashok Khare','8674806454','2016','Male','Archana Khare','','','','','','','',NULL),('prayank27mathur@gmail.com','ajaymanan1','Prayank','Mathur','Ajay Mathur','8674806463','2016','Male','','','','','','','','',NULL);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeed`
--

DROP TABLE IF EXISTS `newsfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeed` (
  `FeedNumber` int(11) NOT NULL AUTO_INCREMENT,
  `EmailId` varchar(50) DEFAULT NULL,
  `FeedText` text,
  `TimeStamp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FeedNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeed`
--

LOCK TABLES `newsfeed` WRITE;
/*!40000 ALTER TABLE `newsfeed` DISABLE KEYS */;
INSERT INTO `newsfeed` VALUES (15,'69saurabh18@gmail.com','I would love to inform you people that there is an opening in the company Microsoft India Development Center','4/28/2016 5:56:50 PM');
/*!40000 ALTER TABLE `newsfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeedcomments`
--

DROP TABLE IF EXISTS `newsfeedcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeedcomments` (
  `EmailId` varchar(50) NOT NULL,
  `CommentId` int(11) NOT NULL AUTO_INCREMENT,
  `nf_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`CommentId`,`EmailId`,`nf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeedcomments`
--

LOCK TABLES `newsfeedcomments` WRITE;
/*!40000 ALTER TABLE `newsfeedcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsfeedcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `qualificationId` int(11) NOT NULL AUTO_INCREMENT,
  `EmailId` varchar(50) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `fromDate` int(11) NOT NULL,
  `toDate` int(11) NOT NULL,
  PRIMARY KEY (`qualificationId`,`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (6,'aashishkumar96.akr@gmail.com','Facebook','developer',2013,2018),(7,'aashishkumar96.akr@gmail.com','google','Developer',2006,2012),(8,'69saurabh18@gmail.com','amazon','developer',2018,2019),(9,'69saurabh18@gmail.com','flipkart','Head developer',2006,2012);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-28 20:58:14
