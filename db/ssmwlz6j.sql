-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmwlz6j
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmwlz6j`
--

/*!40000 DROP DATABASE IF EXISTS `ssmwlz6j`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmwlz6j` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmwlz6j`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `gonggaotupian` longtext COMMENT '公告图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2023-05-06 03:13:11','公告标题1','资讯','upload/gonggaoxinxi_gonggaotupian1.jpg,upload/gonggaoxinxi_gonggaotupian2.jpg,upload/gonggaoxinxi_gonggaotupian3.jpg','公告内容1','2023-05-06'),(12,'2023-05-06 03:13:11','公告标题2','资讯','upload/gonggaoxinxi_gonggaotupian2.jpg,upload/gonggaoxinxi_gonggaotupian3.jpg,upload/gonggaoxinxi_gonggaotupian4.jpg','公告内容2','2023-05-06'),(13,'2023-05-06 03:13:11','公告标题3','资讯','upload/gonggaoxinxi_gonggaotupian3.jpg,upload/gonggaoxinxi_gonggaotupian4.jpg,upload/gonggaoxinxi_gonggaotupian5.jpg','公告内容3','2023-05-06'),(14,'2023-05-06 03:13:11','公告标题4','资讯','upload/gonggaoxinxi_gonggaotupian4.jpg,upload/gonggaoxinxi_gonggaotupian5.jpg,upload/gonggaoxinxi_gonggaotupian6.jpg','公告内容4','2023-05-06'),(15,'2023-05-06 03:13:11','公告标题5','资讯','upload/gonggaoxinxi_gonggaotupian5.jpg,upload/gonggaoxinxi_gonggaotupian6.jpg,upload/gonggaoxinxi_gonggaotupian7.jpg','公告内容5','2023-05-06'),(16,'2023-05-06 03:13:11','公告标题6','资讯','upload/gonggaoxinxi_gonggaotupian6.jpg,upload/gonggaoxinxi_gonggaotupian7.jpg,upload/gonggaoxinxi_gonggaotupian8.jpg','公告内容6','2023-05-06'),(17,'2023-05-06 03:13:11','公告标题7','资讯','upload/gonggaoxinxi_gonggaotupian7.jpg,upload/gonggaoxinxi_gonggaotupian8.jpg,upload/gonggaoxinxi_gonggaotupian9.jpg','公告内容7','2023-05-06'),(18,'2023-05-06 03:13:11','公告标题8','资讯','upload/gonggaoxinxi_gonggaotupian8.jpg,upload/gonggaoxinxi_gonggaotupian9.jpg,upload/gonggaoxinxi_gonggaotupian10.jpg','公告内容8','2023-05-06');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lajifenlei`
--

DROP TABLE IF EXISTS `lajifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lajifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajifenlei` varchar(200) NOT NULL COMMENT '垃圾分类',
  `chulifangshi` varchar(200) DEFAULT NULL COMMENT '处理方式',
  `lajishuoming` varchar(200) DEFAULT NULL COMMENT '垃圾说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lajifenlei` (`lajifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='垃圾分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lajifenlei`
--

LOCK TABLES `lajifenlei` WRITE;
/*!40000 ALTER TABLE `lajifenlei` DISABLE KEYS */;
INSERT INTO `lajifenlei` VALUES (31,'2023-05-06 03:13:11','垃圾分类1','处理方式1','垃圾说明1'),(32,'2023-05-06 03:13:11','垃圾分类2','处理方式2','垃圾说明2'),(33,'2023-05-06 03:13:11','垃圾分类3','处理方式3','垃圾说明3'),(34,'2023-05-06 03:13:11','垃圾分类4','处理方式4','垃圾说明4'),(35,'2023-05-06 03:13:11','垃圾分类5','处理方式5','垃圾说明5'),(36,'2023-05-06 03:13:11','垃圾分类6','处理方式6','垃圾说明6'),(37,'2023-05-06 03:13:11','垃圾分类7','处理方式7','垃圾说明7'),(38,'2023-05-06 03:13:11','垃圾分类8','处理方式8','垃圾说明8');
/*!40000 ALTER TABLE `lajifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanfankui`
--

DROP TABLE IF EXISTS `liuyanfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fankuitupian` longtext COMMENT '反馈图片',
  `fankuineirong` longtext COMMENT '反馈内容',
  `fankuiriqi` date DEFAULT NULL COMMENT '反馈日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683343099900 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanfankui`
--

LOCK TABLES `liuyanfankui` WRITE;
/*!40000 ALTER TABLE `liuyanfankui` DISABLE KEYS */;
INSERT INTO `liuyanfankui` VALUES (51,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian1.jpg,upload/liuyanfankui_fankuitupian2.jpg,upload/liuyanfankui_fankuitupian3.jpg','反馈内容1','2023-05-06','用户名1',''),(52,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian2.jpg,upload/liuyanfankui_fankuitupian3.jpg,upload/liuyanfankui_fankuitupian4.jpg','反馈内容2','2023-05-06','用户名2',''),(53,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian3.jpg,upload/liuyanfankui_fankuitupian4.jpg,upload/liuyanfankui_fankuitupian5.jpg','反馈内容3','2023-05-06','用户名3',''),(54,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian4.jpg,upload/liuyanfankui_fankuitupian5.jpg,upload/liuyanfankui_fankuitupian6.jpg','反馈内容4','2023-05-06','用户名4',''),(55,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian5.jpg,upload/liuyanfankui_fankuitupian6.jpg,upload/liuyanfankui_fankuitupian7.jpg','反馈内容5','2023-05-06','用户名5',''),(56,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian6.jpg,upload/liuyanfankui_fankuitupian7.jpg,upload/liuyanfankui_fankuitupian8.jpg','反馈内容6','2023-05-06','用户名6',''),(57,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian7.jpg,upload/liuyanfankui_fankuitupian8.jpg,upload/liuyanfankui_fankuitupian9.jpg','反馈内容7','2023-05-06','用户名7',''),(58,'2023-05-06 03:13:11','upload/liuyanfankui_fankuitupian8.jpg,upload/liuyanfankui_fankuitupian9.jpg,upload/liuyanfankui_fankuitupian10.jpg','反馈内容8','2023-05-06','用户名8',''),(1683343099899,'2023-05-06 03:18:19','upload/1683343098576.jpeg','22','2023-05-06','用户名1','');
/*!40000 ALTER TABLE `liuyanfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'用户名1','yonghu','用户','nbd642c4hbzehb6elds2x28mn3ettwd6','2023-05-06 03:17:59','2023-05-06 04:18:00'),(2,1,'admin','users','管理员','9jpi685misk7itn7jg80fic8rrpzexfr','2023-05-06 03:18:43','2023-05-06 04:18:47'),(3,1,'admin','users','管理员','eqf10uwfw5m0bdbtprr1o2kzjk8tmtrd','2023-05-06 03:18:43','2023-05-06 04:18:43'),(4,1,'admin','users','管理员','838h9copz88147s9uo04yhv62cmfldar','2023-05-06 03:18:43','2023-05-06 04:18:43'),(5,1,'admin','users','管理员','7bals8izuceapkqkq9mvu5vl9ngs5gp5','2023-05-06 03:18:43','2023-05-06 04:18:43'),(6,1,'admin','users','管理员','sssaitdl52kytq2xqw1v117av2i7xp2v','2023-05-06 03:18:43','2023-05-06 04:18:43');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-05-06 03:13:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanlajixinxi`
--

DROP TABLE IF EXISTS `yiyuanlajixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanlajixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajimingcheng` varchar(200) NOT NULL COMMENT '垃圾名称',
  `lajifenlei` varchar(200) DEFAULT NULL COMMENT '垃圾分类',
  `lajishuoming` longtext COMMENT '垃圾说明',
  `chulifangshi` longtext COMMENT '处理方式',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1683343094004 DEFAULT CHARSET=utf8 COMMENT='医院垃圾信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanlajixinxi`
--

LOCK TABLES `yiyuanlajixinxi` WRITE;
/*!40000 ALTER TABLE `yiyuanlajixinxi` DISABLE KEYS */;
INSERT INTO `yiyuanlajixinxi` VALUES (41,'2023-05-06 03:13:11','垃圾名称1','垃圾分类1','垃圾说明1','处理方式1','2023-05-06','用户名1',''),(42,'2023-05-06 03:13:11','垃圾名称2','垃圾分类2','垃圾说明2','处理方式2','2023-05-06','用户名2',''),(43,'2023-05-06 03:13:11','垃圾名称3','垃圾分类3','垃圾说明3','处理方式3','2023-05-06','用户名3',''),(44,'2023-05-06 03:13:11','垃圾名称4','垃圾分类4','垃圾说明4','处理方式4','2023-05-06','用户名4',''),(45,'2023-05-06 03:13:11','垃圾名称5','垃圾分类5','垃圾说明5','处理方式5','2023-05-06','用户名5',''),(46,'2023-05-06 03:13:11','垃圾名称6','垃圾分类6','垃圾说明6','处理方式6','2023-05-06','用户名6',''),(47,'2023-05-06 03:13:11','垃圾名称7','垃圾分类7','垃圾说明7','处理方式7','2023-05-06','用户名7',''),(48,'2023-05-06 03:13:11','垃圾名称8','垃圾分类8','垃圾说明8','处理方式8','2023-05-06','用户名8',''),(1683343094003,'2023-05-06 03:18:13','12','垃圾分类2','1','1','2023-05-06','用户名1','');
/*!40000 ALTER TABLE `yiyuanlajixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2023-05-06 03:13:11','用户名1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','upload/yonghu_touxiang1.jpg','13823888881'),(22,'2023-05-06 03:13:11','用户名2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/yonghu_touxiang2.jpg','13823888882'),(23,'2023-05-06 03:13:11','用户名3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/yonghu_touxiang3.jpg','13823888883'),(24,'2023-05-06 03:13:11','用户名4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/yonghu_touxiang4.jpg','13823888884'),(25,'2023-05-06 03:13:11','用户名5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/yonghu_touxiang5.jpg','13823888885'),(26,'2023-05-06 03:13:11','用户名6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/yonghu_touxiang6.jpg','13823888886'),(27,'2023-05-06 03:13:11','用户名7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/yonghu_touxiang7.jpg','13823888887'),(28,'2023-05-06 03:13:11','用户名8','e10adc3949ba59abbe56e057f20f883e','姓名8','男','upload/yonghu_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 11:24:14
