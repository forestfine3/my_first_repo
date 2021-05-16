-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `uid` varchar(20) NOT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `upasswd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('test1234','김무성','1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `no` int NOT NULL,
  `title` varchar(40) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `register_date` date NOT NULL,
  `hits` int NOT NULL,
  `attach` varchar(30) DEFAULT NULL,
  `category` varchar(10) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `postid_UNIQUE` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='게시물 DB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'첫번째 게시물입니다.','김무성','2021-04-10',1,'test1.txt','서식'),(2,'두번째 게시물입니다.','김무성','2021-04-11',0,NULL,'서식'),(3,'공지사항1','관리자','2021-04-13',3,'test2.txt','공지사항'),(4,'공지사항2','관리자','2021-04-13',2,NULL,'공지사항'),(5,'aaaaaaaaaaaaaaaaaa','test','2021-04-15',1,'test3.txt','공지사항'),(6,'과제1','관리자','2021-04-15',5,NULL,'과제 계획서'),(7,'과제2','관리자','2021-04-18',3,'test.png','과제 계획서'),(8,'신청내용1','관리자','2021-04-18',0,NULL,'기업/기관 수요'),(9,'신청내용2','관리자','2021-04-18',1,'test.zip','기업/기관 수요'),(10,'오늘날짜 테스트 공지사항','test','2021-05-11',3,NULL,'공지사항'),(11,'오늘날짜 테스트 서식','test','2021-05-11',6,NULL,'서식'),(12,'오늘날짜 테스트2 서식','test','2021-05-11',2,NULL,'서식'),(13,'totay cnt test','김무성','2021-05-11',0,'a.txt','공지사항'),(14,'글쓰기 기능 테스트1 - 첨부파일 포함','김무성','2021-05-15',1,'test.txt','공지사항'),(15,'글쓰기 기능 테스트2 - 첨부파일 미포함','김무성','2021-05-15',0,'','공지사항');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posttext`
--

DROP TABLE IF EXISTS `posttext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posttext` (
  `textno` int NOT NULL,
  `no` int NOT NULL,
  `text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`textno`),
  KEY `no` (`no`),
  CONSTRAINT `FK_B_1` FOREIGN KEY (`no`) REFERENCES `post` (`no`) ON DELETE CASCADE,
  CONSTRAINT `posttext_ibfk_1` FOREIGN KEY (`no`) REFERENCES `post` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posttext`
--

LOCK TABLES `posttext` WRITE;
/*!40000 ALTER TABLE `posttext` DISABLE KEYS */;
INSERT INTO `posttext` VALUES (1,1,'외래키 제약조건은 한 마디로 말해서 두 테이블간의 관계를 선언하여 데이터간의 무결성을 보장해주는 역할을 합니다. 즉 외래키 관계를 설정하면 하나의 테이블이 다른 테이블에 의존하는 형태입니다.'),(2,2,'내용2'),(3,3,'공지사항3'),(4,4,'공지사항4'),(5,5,'공지사항 내용'),(6,6,'내용'),(7,7,'내용1'),(8,8,'내용2'),(9,9,'내용3'),(10,10,'내용4'),(11,11,'내용5'),(12,12,'내용6'),(13,13,'내용7'),(14,14,'글쓰기 테스트입니다.'),(15,15,'글쓰기 테스트입니다. (2)');
/*!40000 ALTER TABLE `posttext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `upasswd` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('hong','홍길동','1234'),('kim','김개똥','2345');
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

-- Dump completed on 2021-05-16 16:44:53
