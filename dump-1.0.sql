-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: schedule_db
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `audiences`
--

DROP TABLE IF EXISTS `audiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audiences` (
  `audience_id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `suffix` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`audience_id`),
  UNIQUE KEY `a_k` (`number`,`suffix`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audiences`
--

LOCK TABLES `audiences` WRITE;
/*!40000 ALTER TABLE `audiences` DISABLE KEYS */;
INSERT INTO `audiences` VALUES (32,207,NULL),(10,303,NULL),(9,306,NULL),(5,307,NULL),(36,307,'a'),(6,308,NULL),(4,309,NULL),(35,310,NULL),(33,314,NULL),(7,318,NULL),(1,320,NULL),(2,320,'a'),(3,320,'b'),(8,322,NULL),(34,325,NULL);
/*!40000 ALTER TABLE `audiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `name` (`name`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Кафедра фінансів',1),(2,'Кафедра обліку і аудиту',1),(3,'Кафедра менеджменту і маркетингу',1),(4,'Кафедра економічної кібернетики',1),(5,'Кафедра теоретичної та прикладної економіки',1),(6,'Кафедра педагогіки імені Б. Ступарика',2),(7,'Кафедра теорії та методики дошкільної і спеціальної освіти',2),(8,'Кафедра соціальної педагогіки та соціальної роботи',2),(9,'Кафедра фахових методик і технологій початкової освіти',2),(10,'Кафедра педагогіки початкової освіти',2),(11,'Кафедра англійської філології',3),(12,'Кафедра німецької філології',3),(13,'Кафедра французької філології',3),(14,'Кафедра загальної та клінічної психології',4),(15,'Кафедра соціальної психології та психології розвитку',4),(16,'Кафедра філософії, соціології та релігієзнавства',4),(17,'Кафедра диференціальних рівнянь і прикладної математики',5),(18,'Кафедра математичного і функціонального аналізу',5),(19,'Кафедра комп’ютерних наук та інформаційних систем',5),(20,'Кафедра алгебри та геометрії',5),(21,'Кафедра інформаційних технологій',5),(22,'Кафедра української мови',6),(23,'Кафедра української літератури',6),(24,'Кафедра світової літератури і порівняльного літературознавства',6),(25,'Кафедра слов’янських мов',6),(26,'Кафедра загального та германського мовознавства',6),(27,'Кафедра журналістики',6),(28,'Кафедра організації туризму та управління соціокультурною діяльністю',7),(29,'Кафедра туризмознавства і краєзнавства',7),(30,'Кафедра іноземних мов та країнознавства',7),(31,'Кафедра готельно-ресторанної та курортної справи',7),(32,'Кафедра комп’ютерної інженерії та електроніки',8),(33,'Кафедра теоретичної та експериментальної фізики',8),(34,'Кафедра матеріалознавства і новітніх технологій',8),(35,'Кафедра фізики і хімії твердого тіла',8),(36,'Кафедра історії України',9),(37,'Кафедра історії слов’ян',9),(38,'Кафедра iсторіографії і джерелознавства',9),(39,'Кафедра етнології і археології',9),(40,'Кафедра міжнародних відносин',9),(41,'Кафедра всесвітньої історії',9),(42,'Кафедра іноземних мов і перекладу',9),(43,'Кафедра політології',9),(44,'Кафедра політичних інститутів та процесів',9),(45,'Кафедра міжнародних економічних відносин',9),(46,'Кафедра анатомії і фізіології людини і тварин',10),(47,'Кафедра хімії',10),(48,'Кафедра хімії середовища та хімічної освіти',10),(49,'Кафедра біології та екології',10),(50,'Кафедра лісознавства',10),(51,'Кафедра біохімії та біотехнології',10),(52,'Кафедра агрохімії і грунтознавства',10),(53,'Кафедра географії та природознавства',10),(54,'Кафедра теорії та методики фізичної культури і спорту',11),(55,'Кафедра спортивно-педагогічних дисциплін',11),(56,'Кафедра фізичної терапії,ерготерапії',11),(57,'Кафедра статистики і вищої математики',5);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculties` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculties`
--

LOCK TABLES `faculties` WRITE;
/*!40000 ALTER TABLE `faculties` DISABLE KEYS */;
INSERT INTO `faculties` VALUES (1,'Економічний факультет'),(2,'Педагогічний факультет'),(3,'Факультет іноземних мов'),(9,'Факультет історії, політології і міжнародних відносин'),(5,'Факультет математики та інформатики'),(10,'Факультет природничих наук'),(7,'Факультет туризму'),(11,'Факультет фізичного виховання і спорту'),(6,'Факультет філології'),(8,'Фізико-технічний факультет'),(4,'Філософський факультет');
/*!40000 ALTER TABLE `faculties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name_id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `g_k` (`group_name_id`,`course`,`faculty_id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`group_name_id`) REFERENCES `groups_name` (`group_name_id`),
  CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,1,1,NULL,5),(2,1,2,NULL,5),(3,1,3,NULL,5),(7,2,1,NULL,5),(8,2,2,NULL,5),(9,6,1,NULL,1),(10,7,2,NULL,1),(11,8,4,NULL,5);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_name`
--

DROP TABLE IF EXISTS `groups_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_name` (
  `group_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_name_id`),
  UNIQUE KEY `gn_k` (`short_name`,`full_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_name`
--

LOCK TABLES `groups_name` WRITE;
/*!40000 ALTER TABLE `groups_name` DISABLE KEYS */;
INSERT INTO `groups_name` VALUES (7,'ЕК','Економічна кібернетика'),(4,'Ж','Журналістика'),(1,'ІПЗ','Інженерія програмного забезпечення'),(2,'КН','Комп’ютерні науки'),(6,'ОП','Облік і оподаткування'),(8,'ПІ','Програмна інженерія'),(3,'ПМ','Прикладна математика'),(5,'ФС','Фізична культура і спорт');
/*!40000 ALTER TABLE `groups_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_lessons`
--

DROP TABLE IF EXISTS `schedule_lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_lessons` (
  `schedule_lesson_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time_range_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `audience_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `is_lecture` tinyint(1) NOT NULL,
  PRIMARY KEY (`schedule_lesson_id`),
  KEY `time_range_id` (`time_range_id`),
  KEY `audience_id` (`audience_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `schedule_lessons_ibfk_1` FOREIGN KEY (`time_range_id`) REFERENCES `time_ranges` (`time_range_id`),
  CONSTRAINT `schedule_lessons_ibfk_2` FOREIGN KEY (`audience_id`) REFERENCES `audiences` (`audience_id`),
  CONSTRAINT `schedule_lessons_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_lessons`
--

LOCK TABLES `schedule_lessons` WRITE;
/*!40000 ALTER TABLE `schedule_lessons` DISABLE KEYS */;
INSERT INTO `schedule_lessons` VALUES (1,'2018-11-12',1,1,8,3,1),(2,'2018-11-12',2,2,8,3,1),(3,'2018-11-12',3,3,8,3,1),(10,'2018-11-13',1,1,9,4,0),(11,'2018-11-13',2,2,2,4,0),(12,'2018-11-13',3,3,32,4,0),(40,'2018-11-14',1,1,4,8,0),(41,'2018-11-14',2,2,33,11,1),(42,'2018-11-14',3,3,7,9,0),(43,'2018-11-14',4,4,34,10,1),(44,'2018-11-14',5,5,1,1,0),(45,'2018-11-15',1,1,1,4,1),(46,'2018-11-15',3,3,35,6,0),(47,'2018-11-15',4,4,1,1,0),(48,'2018-11-15',5,5,1,1,1),(49,'2018-11-15',6,6,1,1,1),(55,'2018-11-16',1,1,1,4,1),(56,'2018-11-16',2,2,35,4,0),(89,'2018-12-10',3,3,8,16,0),(90,'2018-12-10',4,4,8,16,0),(91,'2018-12-10',5,5,8,16,1),(92,'2018-12-11',1,1,5,12,1),(93,'2018-12-11',2,2,2,12,1),(94,'2018-12-11',2,2,3,13,0),(95,'2018-12-11',3,3,5,12,0),(97,'2018-12-11',4,4,4,12,0),(98,'2018-12-12',1,1,1,12,1),(100,'2018-12-12',2,2,2,12,0),(101,'2018-12-12',4,4,7,14,1),(102,'2018-12-12',5,5,36,14,0),(106,'2018-12-13',2,2,1,17,0),(107,'2018-12-13',3,3,1,17,0),(108,'2018-12-13',4,4,2,17,0);
/*!40000 ALTER TABLE `schedule_lessons` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rost`@`localhost`*/ /*!50003 trigger `INSERT_INTO_BUSY_AUDIENCE`
  before insert on schedule_lessons
  for each row
begin
  declare msg varchar(128);
  if (select count(*) from schedule_lessons sl
      where sl.audience_id = new.audience_id
       and sl.date = new.date
       and sl.time_range_id = new.time_range_id) != 0 then
    set msg = concat(
        'INSERT_INTO_BUSY_AUDIENCE_ERROR: Trying to insert a lessons in the audience that\'s busy in that time: ',
        cast(new.audience_id as char)
    );
    signal sqlstate '45000' set message_text = msg;
  end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `schedule_view`
--

DROP TABLE IF EXISTS `schedule_view`;
/*!50001 DROP VIEW IF EXISTS `schedule_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `schedule_view` (
  `date` tinyint NOT NULL,
  `time_start` tinyint NOT NULL,
  `time_end` tinyint NOT NULL,
  `audience` tinyint NOT NULL,
  `lesson_number` tinyint NOT NULL,
  `group_name` tinyint NOT NULL,
  `teacher_name` tinyint NOT NULL,
  `subject_title` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_subject_id` int(11) NOT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`),
  UNIQUE KEY `s_k` (`title_subject_id`,`group_id`,`teacher_id`),
  KEY `group_id` (`group_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`title_subject_id`) REFERENCES `title_subjects` (`title_subject_id`),
  CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  CONSTRAINT `subjects_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,16,NULL,3,2),(3,10,'веб.',3,1),(4,11,'моб.',3,3),(6,17,NULL,3,12),(8,12,NULL,3,12),(9,14,NULL,3,14),(10,15,NULL,3,13),(11,13,NULL,3,15),(12,5,'веб.',11,1),(13,4,'моб.',11,17),(14,6,NULL,11,12),(15,3,NULL,11,12),(16,2,NULL,11,1),(17,7,NULL,11,3);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Козленко М.І.','Козленко Микола Іванович',21),(2,'Козич О.В.','Козич Олег Васильович',21),(3,'Лазарович І.М.','Лазарович Ігор Миколайович',21),(4,'Соломко А.В.','Соломко Андрій Васильович',17),(10,'Заторський Р.А.','Заторський Роман Андрійович',17),(11,'Філевич П.В.','Філевич Петро Васильович',18),(12,'Кузь М.В.','Кузь Микола Васильович',21),(13,'Кашуба Г.І.','Кашуба Грирорій Іванович',57),(14,'Міщук М.Б.','Міщук Мар\'яна Богданівна',44),(15,'Танчук Н.О.','Танчук Надія Олександрівна',11),(16,'Іщеряков С.М.','Іщеряков Сергій Михайлович',21),(17,'Яновський Ю.М.','Яновський Юрій Миколайович',21);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_ranges`
--

DROP TABLE IF EXISTS `time_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_ranges` (
  `time_range_id` int(11) NOT NULL AUTO_INCREMENT,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `start_winter` time NOT NULL,
  `end_winter` time NOT NULL,
  PRIMARY KEY (`time_range_id`),
  UNIQUE KEY `tr_k` (`start`,`end`,`start_winter`,`end_winter`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_ranges`
--

LOCK TABLES `time_ranges` WRITE;
/*!40000 ALTER TABLE `time_ranges` DISABLE KEYS */;
INSERT INTO `time_ranges` VALUES (1,'08:30:00','09:50:00','09:00:00','10:20:00'),(2,'10:05:00','11:25:00','10:30:00','11:50:00'),(3,'11:55:00','13:15:00','12:15:00','13:35:00'),(4,'13:30:00','14:50:00','13:50:00','15:10:00'),(5,'15:05:00','16:25:00','15:25:00','16:45:00'),(6,'16:40:00','18:00:00','16:55:00','18:15:00');
/*!40000 ALTER TABLE `time_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_subjects`
--

DROP TABLE IF EXISTS `title_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_subjects` (
  `title_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`title_subject_id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_subjects`
--

LOCK TABLES `title_subjects` WRITE;
/*!40000 ALTER TABLE `title_subjects` DISABLE KEYS */;
INSERT INTO `title_subjects` VALUES (16,'Бази даних'),(12,'Економіка програмного забезпечення'),(17,'Емпіричні методи програмної інженерії'),(13,'Іноземна мова (англійська)'),(7,'Інтелектуальний аналіз даних'),(1,'Історія української культури'),(9,'Нормативне забезпечення програмних продуктів'),(8,'Обробка зображень'),(14,'Політологія'),(4,'Програмування для ОС Android'),(11,'Програмування мікроконтролерів'),(10,'Програмування мовою Python'),(5,'Програмування на frameworks Python'),(6,'Професійна практика програмної інженерії'),(3,'Стандартизація програмного забезпечення'),(15,'Теорія ймовірностей'),(2,'Теорія управління');
/*!40000 ALTER TABLE `title_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `schedule_view`
--

/*!50001 DROP TABLE IF EXISTS `schedule_view`*/;
/*!50001 DROP VIEW IF EXISTS `schedule_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rost`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schedule_view` AS select `l`.`date` AS `date`,if(`IS_WINTER_PERIOD`(`l`.`date`),`tr`.`start_winter`,`tr`.`start`) AS `time_start`,if(`IS_WINTER_PERIOD`(`l`.`date`),`tr`.`end_winter`,`tr`.`end`) AS `time_end`,concat(`a`.`number`,ifnull(concat('(',`a`.`suffix`,')'),'')) AS `audience`,`l`.`number` AS `lesson_number`,concat(`gn`.`short_name`,'-',`gr`.`course`) AS `group_name`,`tch`.`short_name` AS `teacher_name`,concat(`ts`.`title`,'(',if(`l`.`is_lecture`,'Л','П'),') ',ifnull(concat('(',`s`.`specialization`,')'),'')) AS `subject_title` from (((((((`schedule_lessons` `l` join `time_ranges` `tr` on((`l`.`time_range_id` = `tr`.`time_range_id`))) join `audiences` `a` on((`l`.`audience_id` = `a`.`audience_id`))) join `subjects` `s` on((`l`.`subject_id` = `s`.`subject_id`))) join `title_subjects` `ts` on((`s`.`title_subject_id` = `ts`.`title_subject_id`))) join `groups` `gr` on((`s`.`group_id` = `gr`.`group_id`))) join `teachers` `tch` on((`s`.`teacher_id` = `tch`.`teacher_id`))) join `groups_name` `gn` on((`gr`.`group_name_id` = `gn`.`group_name_id`))) order by `l`.`date`,`l`.`number` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-19 20:28:43
