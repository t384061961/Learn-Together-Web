-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ssh_forum
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `id` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `anstime` varchar(255) DEFAULT NULL,
  `agree` int(11) DEFAULT NULL,
  `solve` int(11) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `pasteid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa2s4b4ocuv691bu91fmbdbwqi` (`userid`),
  KEY `FKdwa6jatecy0p87xp4p0qsplws` (`pasteid`),
  CONSTRAINT `FKa2s4b4ocuv691bu91fmbdbwqi` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `FKdwa6jatecy0p87xp4p0qsplws` FOREIGN KEY (`pasteid`) REFERENCES `paste` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('2bd8cc6c6b4b9e36016b4ba0362d0002','嘻嘻嘻','2019-06-12 08:18:39',0,0,'2bd8cc6c6b4b9e36016b4b9f0dc20000','2bd8ce5b6b3fa85a016b405e94f20002'),('2bd8cc6c6b4b9e36016b4ba171430004','cc哈哈','2019-06-12 08:19:59',0,0,'2bd8cc6c6b4b9e36016b4b9f0dc20000','2bd8cc6c6b4b9e36016b4ba0e85d0003'),('2bd8ce5b6b3fa85a016b405efa550003','现在没有什么CC哈哈了啊','2019-06-10 03:51:34',1,0,'2bd8ce5b6b3f684c016b3f69217a0000','2bd8ce5b6b3fa85a016b405e94f20002'),('2bd8ce5b6b4062d7016b411c6ecb0004','进程是资源分配的基本单位，线程是调度单位.\r\n多个线程共享一个进程的资源.\r\n进程切换代价大，线程切换代价小','2019-06-10 07:18:30',0,0,'2bd8ce5b6b3f684c016b3f69217a0000','2bd8ce5b6b4062d7016b41167fd60003');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paste`
--

DROP TABLE IF EXISTS `paste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paste` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `offer` int(11) DEFAULT NULL,
  `ansnum` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `glanceover` int(11) DEFAULT NULL,
  `solve` int(11) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `answerid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe9ac2ar66unva2o3rtqjy3bhg` (`userid`),
  CONSTRAINT `FKe9ac2ar66unva2o3rtqjy3bhg` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paste`
--

LOCK TABLES `paste` WRITE;
/*!40000 ALTER TABLE `paste` DISABLE KEYS */;
INSERT INTO `paste` VALUES ('2bd8cc6c6b4b9e36016b4ba0e85d0003','我佛了真的','奥术大师大所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所所',100,1,'2019-06-12 08:19:24',8,1,0,'2bd8cc6c6b4b9e36016b4ba171430004','2bd8cc6c6b4b9e36016b4b9f0dc20000'),('2bd8ce5b6b3fa85a016b405e94f20002','我哭了','55555',100,2,'2019-06-10 03:51:08',9,0,0,NULL,'2bd8ce5b6b3f684c016b3f69217a0000'),('2bd8ce5b6b4062d7016b41167fd60003','进程和线程的区别','请问大家进程和线程的区别是什么呢？',200,1,'2019-06-10 07:12:02',7,0,0,NULL,'2bd8ce5b6b3f684c016b3f69217a0000');
/*!40000 ALTER TABLE `paste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praise`
--

DROP TABLE IF EXISTS `praise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `praise` (
  `userid` varchar(255) NOT NULL,
  `answerid` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`,`answerid`),
  KEY `FK5y56bv61n3217hitipvkbah56` (`answerid`),
  CONSTRAINT `FK5y56bv61n3217hitipvkbah56` FOREIGN KEY (`answerid`) REFERENCES `answer` (`id`),
  CONSTRAINT `FK9vua51f6gl5uk8bepum5jq0r2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praise`
--

LOCK TABLES `praise` WRITE;
/*!40000 ALTER TABLE `praise` DISABLE KEYS */;
INSERT INTO `praise` VALUES ('2bd8cc6c6b4b9e36016b4b9f0dc20000','2bd8ce5b6b3fa85a016b405efa550003');
/*!40000 ALTER TABLE `praise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `state` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `coin` int(11) NOT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2bd8cc6c6b4b97c4016b4b98603f0000','xxx','111','xxx','384061961@qq.com','111',0,'fd1874e3-e3e6-408a-985b-7c9fa4efada5','/images/3.gif',1,1000,NULL,NULL),('2bd8cc6c6b4b9e36016b4b9f0dc20000','ddd','123','ddd','tyx18982506915@aliyun.com','111',1,'d3a02143-3f45-4bcd-a351-82855eac9bce','/images/9.gif',1,1100,NULL,NULL),('2bd8ce5b6b3f684c016b3f69217a0000','tyx','123','tyx','384061961@qq.com','666',1,'ab14e6e0-3dd8-4e6b-aaee-fd9eac6a5f8b','/images/2.gif',1,1000,NULL,NULL),('2bd8ce5b6b3f96cd016b3f9784bb0000','ps','123','ps','tyx18982506915@aliyun.com','123',0,'044ab4db-65bd-4c1a-bdfa-448d5868fe6a','/images/3.gif',1,1000,NULL,NULL),('2bd8ce5b6b3fa85a016b3fa9c2ed0000','hzl','123','hzl','tyx18982506915@aliyun.com','111',0,'4aeb02ea-b3c2-4214-9fe5-dbdccea533a1','/images/4.gif',1,1000,NULL,NULL),('2bd8ce5b6b4062d7016b406402380000','tom','123','tom','tyx18982506915@aliyun.com','111',0,'fa437c17-7e5f-4fb0-a5f0-e3c593f58569','/images/0.gif',1,1000,NULL,NULL),('2bd8ce5b6b4062d7016b40692bb60001','xxl','123','xxl','tyx18982506915@aliyun.com','111',0,'6327cde9-70f1-4aae-bc92-40ced9ca99b7','/images/2.gif',1,1000,NULL,NULL);
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

-- Dump completed on 2019-06-14 20:35:34
