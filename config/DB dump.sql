-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: training_db
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progress` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (1,1,'50','2017-11-01 00:00:00'),(2,1,'51','2017-11-02 00:00:00'),(3,1,'55','2017-11-02 00:00:00'),(4,1,'40','2017-11-04 00:00:00'),(5,1,'70','2017-11-05 00:00:00'),(6,30,'90','2017-11-01 00:00:00'),(7,30,'100','2017-11-02 00:00:00');
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weight` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `goal` varchar(10) DEFAULT NULL,
  `trainingdescription` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,50,160,'man',20,'newcomer','gainWeight','uvybruvybe'),(2,70,179,'man',20,'newcomer','gainWeight','<p>Идеальный вес, не несущий опасности для здоровья. Худеть или полнеть не стоит, однако возможны небольшие корректировки веса в косметических целях. Все зависит от индивидуальных особенностей и веса мышечной ткани. Если обхват талии превышает рекомендованные показатели (80-94 см), появляется вероятность развития заболеваний, сопутствующих избыточному весу.</p><p><b>Программа тренеровок</b></p><p><br><em>1 день:</em><br><br>1. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/calf_raise/\" target=\"_blank\">Икры 3х15-20</a><br>2. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/squat/\" target=\"_blank\">Приседания 3х10-12</a><br>3. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/deadlift_stiff_leg/\" target=\"_blank\">Становая тяга на прямых ногах 3х6-10</a><br>4. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/chin-up_wide_grip/\" target=\"_blank\">Подтягивания широким хватом 2х8-12</a><br>5. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/bent_over_row/\" target=\"_blank\">Тяга штанги к поясу в наклоне 2х6-10</a><br>6. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/ez_curl_palm_down/\" target=\"_blank\">Подъем штанги на бицепс 2х8-10</a><br>7. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/ez_curl/\" target=\"_blank\">Подъем штанги на бицепс обратным хватом (или молот с гантелями) 2х8-12</a><br>8. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/crunch/\" target=\"_blank\">Пресс 2x15-20</a><br><br><em>2 день:</em><br><br>1. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/calf_raise/\" target=\"_blank\">Икры 3х15-20</a><br>2. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/dumbell_bench_press/\" target=\"_blank\">Жим, лежа горизонтальный 2х6-8</a><br>3. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/dumbell_bench_press_decline/\" target=\"_blank\">Жим гантелей на наклонной или разводки на наклонной доске 2х6-10</a><br>4. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/lateral_raise/\" target=\"_blank\">Подъем гантелей через стороны вверх 2х8-12</a><br>5. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/behind_head_press_seated/\" target=\"_blank\">Жим штанги из-за головы или с груди 2х6-10</a><br>6. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/skull_crusher/\" target=\"_blank\">Жим, лежа узким хватом 2х6-8 или французский жим лежа 2х8-10</a><br>7. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/shrug/\" target=\"_blank\">Шpаги 2х8-12</a><br>8. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/crunch/\" target=\"_blank\">Пресс 2x15-20</a><br><br>Отдых между подходами 1.5 минуты, заниматься 3 раза в неделю.1</p>'),(3,70,180,'man',20,'newcomer','gainWeight','<p>Идеальный вес, не несущий опасности для здоровья. Худеть или полнеть не стоит, однако возможны небольшие корректировки веса в косметических целях. Все зависит от индивидуальных особенностей и веса мышечной ткани. Если обхват талии превышает рекомендованные показатели (80-94 см), появляется вероятность развития заболеваний, сопутствующих избыточному весу.</p><p><b>Программа тренировок</b></p><p><br><em>1 день:</em><br><br>1. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/calf_raise/\" target=\"_blank\">Икры 3х15-20</a><br>2. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/squat/\" target=\"_blank\">Приседания 3х10-12</a><br>3. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/deadlift_stiff_leg/\" target=\"_blank\">Становая тяга на прямых ногах 3х6-10</a><br>4. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/chin-up_wide_grip/\" target=\"_blank\">Подтягивания широким хватом 2х8-12</a><br>5. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/bent_over_row/\" target=\"_blank\">Тяга штанги к поясу в наклоне 2х6-10</a><br>6. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/ez_curl_palm_down/\" target=\"_blank\">Подъем штанги на бицепс 2х8-10</a><br>7. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/ez_curl/\" target=\"_blank\">Подъем штанги на бицепс обратным хватом (или молот с гантелями) 2х8-12</a><br>8. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/crunch/\" target=\"_blank\">Пресс 2x15-20</a><br><br><em>2 день:</em><br><br>1. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/calf_raise/\" target=\"_blank\">Икры 3х15-20</a><br>2. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/dumbell_bench_press/\" target=\"_blank\">Жим, лежа горизонтальный 2х6-8</a><br>3. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/dumbell_bench_press_decline/\" target=\"_blank\">Жим гантелей на наклонной или разводки на наклонной доске 2х6-10</a><br>4. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/dumbells/lateral_raise/\" target=\"_blank\">Подъем гантелей через стороны вверх 2х8-12</a><br>5. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/behind_head_press_seated/\" target=\"_blank\">Жим штанги из-за головы или с груди 2х6-10</a><br>6. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/skull_crusher/\" target=\"_blank\">Жим, лежа узким хватом 2х6-8 или французский жим лежа 2х8-10</a><br>7. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/barbell/shrug/\" target=\"_blank\">Шpаги 2х8-12</a><br>8. <a href=\"http://www.fitness96.ru/encyclopaedia/exercises/body_weight/crunch/\" target=\"_blank\">Пресс 2x15-20</a><br><br>Отдых между подходами 1.5 минуты, заниматься 3 раза в неделю.</p>');
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(60) NOT NULL,
  `weight` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `goal` varchar(10) DEFAULT NULL,
  `training_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `trainingDesc_fk_idx` (`training_id`),
  CONSTRAINT `trainingDesc_fk` FOREIGN KEY (`training_id`) REFERENCES `training` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$XdhwhFTKMim7qMNV7HbR9eTGj3TBDoNMCF9m0ZqGwPDllNh4.EGwi',50,160,'woman',77,'newcomer','gainWeight',1),(25,'admin2','$2a$10$6p66OLzmM9p19aj/3ykRTe6gr2cj2IU3xXwNx0lL/G9JO2BtYm9BS',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'admin3','$2a$10$LHf2mVd3hZS7m5ic1CpqqeVMIWU6ftMvhHKKCZHkMmn86pdLWBgd6',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'admin4','$2a$10$f8Utfb6dt0Gwo1loEMKGZ.Vwbub3PRwJ2Au50vlOx9N/Js9uV9Mrm',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'admin5','$2a$10$L4jVE0IFF7cpK4wMG5yfu.OrY1kWeUzNWFL0MtbWc8phQ/iyypnVq',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'admin6','$2a$10$O8.09snGmkqdNlGC88RvneIamPC6nsEiry6Djzo62aLhtCX973i6O',70,179,'man',20,'newcomer','gainWeight',2),(30,'admin99','$2a$10$w9D3NI96Qfj6L58mCP.XKO.aaJJDNDDk/pwtdaav8UJFq.plMb0GO',70,179,'man',20,'newcomer','gainWeight',2),(31,'admin100','$2a$10$NCbntG2.CIuNc3TIjyemy.8L1DDNCxMwUaMSqGPqogholEXI4T5k2',70,179,'man',20,'newcomer','gainWeight',2);
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

-- Dump completed on 2017-11-01 21:21:54
