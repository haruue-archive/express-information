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
INSERT INTO `tb_CarMessage` VALUES (4,'重邮A 00001','重邮校车','高级侧敞篷跑车','1','5','张大爷','40','74110','A','短途','重邮校医院','120','时速高达 30km/h ，是重邮校内跑得最快的车（因为其它车都要遵守 20km/h 的限速）。','2018-07-03 00:00:00','test');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Customer`
--

LOCK TABLES `tb_Customer` WRITE;
/*!40000 ALTER TABLE `tb_Customer` DISABLE KEYS */;
INSERT INTO `tb_Customer` VALUES (1,'test','123456',NULL,'example@example.com','man','10086','test','test','2018-07-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Enterprise`
--

LOCK TABLES `tb_Enterprise` WRITE;
/*!40000 ALTER TABLE `tb_Enterprise` DISABLE KEYS */;
INSERT INTO `tb_Enterprise` VALUES (2,'学校','重庆邮电大学','教育，软件，硬件，通信','重庆','重庆市南岸区南山街道崇文路2号','023-62461003','李银国','023-62461003','023-62461003','mail.cqupt.edu.cn','cqupt.edu.cn','皇家大重邮是重庆市南山修仙养生区的最高学府','2018-07-03','test');
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
INSERT INTO `tb_GoodsMeg` VALUES (2,' 湿货','服务器专用土豆','233',' 千克','重庆','法国伊勒-维莱讷省','南岸','雷恩市','普通','2018-07-03','120','重庆邮电大学校医院','2018-07-03 00:00:00','为保证电竞学院彩虹六号比赛如期举行，请务必按时送达。','请使用波音公司飞机，不要用空客的。','test');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Knowledge`
--

LOCK TABLES `tb_Knowledge` WRITE;
/*!40000 ALTER TABLE `tb_Knowledge` DISABLE KEYS */;
INSERT INTO `tb_Knowledge` VALUES (1,'震惊！原来物流行业还有这种黑幕','行业黑幕','你知道吗？如果你的东西在物流追踪的过程中突然杳无音讯了，可以把锅推给卖家。',NULL,'2018-07-02 00:00:00'),(2,'发货小窍门，转起来让更多人知道','技巧','便宜+慢： 中国邮政\r\n便宜+快： 申通、圆通、中通、韵达、百世汇通\r\n贵+快：   申通\r\n贵+慢：   中国邮政EMS ',NULL,'2018-07-03 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_Placard`
--

LOCK TABLES `tb_Placard` WRITE;
/*!40000 ALTER TABLE `tb_Placard` DISABLE KEYS */;
INSERT INTO `tb_Placard` VALUES (1,'欢庆逞允物流信息后台管理系统成立10周时','   本台讯：欢庆逞允物流信息后台管理系统成立10周时，逞允物流信息后台管理系统董事长发表重大讲话。','逞允电视台','2018-07-03 00:00:00'),(2,'逞允物流信息网稳定运行11小时的秘诀','   当然是运行在 Arch Linux 上。要是使用 Windoge ，绝对分分钟被日。','运维人员','2018-07-03 00:00:00');
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
INSERT INTO `tb_logistics` VALUES (1,'重庆大雾将造成空运货物晚点抵达','由于重庆江北机场大雾，多次航班取消，部分空运货物将延迟 20-30s 抵达。\r\n\r\n我们一直致力于提升我们平台的服务，对此造成的不便我平台代表广大老司机向各位老板深表歉意。','运输管理员','2018-07-03 00:00:00');
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

-- Dump completed on 2018-07-03 20:22:10
