-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: blood_bank
-- ------------------------------------------------------
-- Server version	5.5.13

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
-- Current Database: `blood_bank`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blood_bank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blood_bank`;

--
-- Table structure for table `blood_bank`
--

DROP TABLE IF EXISTS `blood_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_count` int(11) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_bank`
--

LOCK TABLES `blood_bank` WRITE;
/*!40000 ALTER TABLE `blood_bank` DISABLE KEYS */;
INSERT INTO `blood_bank` VALUES (1,0,'A+'),(2,0,'A-'),(3,1,'B+'),(4,0,'B-'),(5,0,'O+'),(6,0,'O-'),(7,1,'AB+'),(8,0,'AB-');
/*!40000 ALTER TABLE `blood_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camp` (
  `camp_id` int(11) NOT NULL AUTO_INCREMENT,
  `camp_name` varchar(45) DEFAULT NULL,
  `camp_date` varchar(45) DEFAULT NULL,
  `camp_location` varchar(45) DEFAULT NULL,
  `camp_city` varchar(45) DEFAULT NULL,
  `camp_state` varchar(45) DEFAULT NULL,
  `camp_blood_collection` varchar(45) NOT NULL DEFAULT '0,0,0,0,0,0,0,0',
  `camp_total_amount` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp`
--

LOCK TABLES `camp` WRITE;
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
INSERT INTO `camp` VALUES (3,'Guru Ravidas camp','23/03/2015','ACET, Manawala','Amritsar','Punjab','0,0,2,0,0,0,0,0','2'),(4,'Amar Camp','23/03/2015','Khalsa college','Amritsar','Punjab','0,0,1,0,0,0,1,0','2');
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donor` (
  `donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(45) DEFAULT NULL,
  `donor_blood_group` varchar(45) DEFAULT NULL,
  `donor_dob` varchar(45) DEFAULT NULL,
  `donor_phone` varchar(45) DEFAULT NULL,
  `donor_email` varchar(45) DEFAULT NULL,
  `donor_address` varchar(300) DEFAULT NULL,
  `donor_total_donations` int(11) DEFAULT NULL,
  `donor_gender` varchar(45) DEFAULT NULL,
  `donor_last_donation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`donor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (1,'Navdeep Sharma','B+','14/10/1993','9988787999','navi@gmail.com','Islamabad, Amritsar',3,'Male','2015-03-23 12:27:48'),(2,'Siddhart Thukral','AB+','24/04/1992','9780809007','sidndis@hotmail.com','Putlighar',1,'Male','2015-03-23 12:26:49');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors_in_camp`
--

DROP TABLE IF EXISTS `donors_in_camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donors_in_camp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donor_id` int(11) DEFAULT NULL,
  `camp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors_in_camp`
--

LOCK TABLES `donors_in_camp` WRITE;
/*!40000 ALTER TABLE `donors_in_camp` DISABLE KEYS */;
INSERT INTO `donors_in_camp` VALUES (1,1,3),(2,1,3),(3,2,4),(4,1,4);
/*!40000 ALTER TABLE `donors_in_camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(45) DEFAULT NULL,
  `hospital_address` varchar(300) DEFAULT NULL,
  `hospital_city` varchar(45) DEFAULT NULL,
  `hospital_state` varchar(45) DEFAULT NULL,
  `hospital_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Amandeep Hospital','Near Rani ka Bagh','Amritsar','Punjab','1832228659');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','admin','sidharth_thukral@hotmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply` (
  `supply_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` varchar(45) DEFAULT NULL,
  `supply_date` varchar(45) DEFAULT NULL,
  `supply_blood_group` varchar(45) DEFAULT NULL,
  `supply_total_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,'1','23/03/2015','0,0,1,0,0,0,0,0',1),(2,'1','23/03/2015','0,0,1,0,0,0,0,0',1);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-10 20:54:38
