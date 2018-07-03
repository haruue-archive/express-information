-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: express_information_db
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Current Database: `express_information_db`
--

/*!40000 DROP DATABASE IF EXISTS `express_information_db`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `express_information_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `express_information_db`;

--
-- Table structure for table `tb_CarMessage`
--

DROP TABLE IF EXISTS `tb_CarMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_CarMessage` (
  `Code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TradeMark` varchar(20) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Style` varchar(30) NOT NULL,
  `CarLoad` varchar(10) NOT NULL,
  `UsedTime` varchar(50) NOT NULL,
  `DriverName` varchar(50) NOT NULL,
  `DriverTime` varchar(10) NOT NULL,
  `LicenceNumber` varchar(50) NOT NULL,
  `LicenceStyle` varchar(20) NOT NULL,
  `TranspotStyle` varchar(20) NOT NULL,
  `LinkMan` varchar(20) NOT NULL,
  `LinkPhone` varchar(50) NOT NULL,
  `Remark` varchar(100) NOT NULL,
  `IssueDate` datetime NOT NULL,
  `UserName` varchar(20) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_CarMessage`
--

LOCK TABLES `tb_CarMessage` WRITE;
/*!40000 ALTER TABLE `tb_CarMessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_CarMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Customer`
--

DROP TABLE IF EXISTS `tb_Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Customer` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `pow` varchar(16) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Question` varchar(50) NOT NULL,
  `Result` varchar(50) NOT NULL,
  `IssueDate` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Customer`
--

LOCK TABLES `tb_Customer` WRITE;
/*!40000 ALTER TABLE `tb_Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Enterprise`
--

DROP TABLE IF EXISTS `tb_Enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Enterprise` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EnterpriseSort` varchar(50) NOT NULL,
  `EnterpriseName` varchar(100) NOT NULL,
  `Operation` varchar(100) DEFAULT NULL,
  `WorkArea` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `LinkMan` varchar(30) DEFAULT NULL,
  `HandSet` varchar(30) DEFAULT NULL,
  `Fax` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Http` varchar(50) DEFAULT NULL,
  `Intro` varchar(200) DEFAULT NULL,
  `IssueDate` varchar(80) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Enterprise`
--

LOCK TABLES `tb_Enterprise` WRITE;
/*!40000 ALTER TABLE `tb_Enterprise` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_Enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_GoodsMeg`
--

DROP TABLE IF EXISTS `tb_GoodsMeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_GoodsMeg` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GoodsStyle` varchar(50) NOT NULL,
  `GoodsName` varchar(100) NOT NULL,
  `GoodsNumber` varchar(50) NOT NULL,
  `GoodsUnit` varchar(50) NOT NULL,
  `StartProvince` varchar(30) NOT NULL,
  `EndProvince` varchar(30) NOT NULL,
  `StartCity` varchar(30) NOT NULL,
  `EndCity` varchar(30) NOT NULL,
  `Style` varchar(50) NOT NULL,
  `TransportTime` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `IssueDate` datetime NOT NULL,
  `Remark` varchar(800) NOT NULL,
  `Request` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_GoodsMeg`
--

LOCK TABLES `tb_GoodsMeg` WRITE;
/*!40000 ALTER TABLE `tb_GoodsMeg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_GoodsMeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Knowledge`
--

DROP TABLE IF EXISTS `tb_Knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Knowledge` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Reside` varchar(20) DEFAULT NULL,
  `Content` varchar(2000) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `IssueDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Knowledge`
--

LOCK TABLES `tb_Knowledge` WRITE;
/*!40000 ALTER TABLE `tb_Knowledge` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_Knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_Placard`
--

DROP TABLE IF EXISTS `tb_Placard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_Placard` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `Author` varchar(20) NOT NULL,
  `IssueDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Placard`
--

LOCK TABLES `tb_Placard` WRITE;
/*!40000 ALTER TABLE `tb_Placard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_Placard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_logistics`
--

DROP TABLE IF EXISTS `tb_logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_logistics` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Content` varchar(2000) DEFAULT NULL,
  `Author` varchar(50) NOT NULL,
  `IssueDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logistics`
--

LOCK TABLES `tb_logistics` WRITE;
/*!40000 ALTER TABLE `tb_logistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_logistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-04  0:41:33
