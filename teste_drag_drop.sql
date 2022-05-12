-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: teste_drag_drop
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `teste_drag_drop_status`
--

DROP TABLE IF EXISTS `teste_drag_drop_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teste_drag_drop_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste_drag_drop_status`
--

LOCK TABLES `teste_drag_drop_status` WRITE;
/*!40000 ALTER TABLE `teste_drag_drop_status` DISABLE KEYS */;
INSERT INTO `teste_drag_drop_status` VALUES (1,'A fazer','2022-05-12 22:42:18','0000-00-00 00:00:00'),(2,'Em execução','2022-05-12 22:42:36','0000-00-00 00:00:00'),(3,'Finalizado','2022-05-12 22:42:52','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `teste_drag_drop_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teste_drag_drop_tasks`
--

DROP TABLE IF EXISTS `teste_drag_drop_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teste_drag_drop_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `teste_drag_drop_status_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teste_drag_drop_status_id` (`teste_drag_drop_status_id`),
  CONSTRAINT `teste_drag_drop_tasks_ibfk_1` FOREIGN KEY (`teste_drag_drop_status_id`) REFERENCES `teste_drag_drop_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teste_drag_drop_tasks`
--

LOCK TABLES `teste_drag_drop_tasks` WRITE;
/*!40000 ALTER TABLE `teste_drag_drop_tasks` DISABLE KEYS */;
INSERT INTO `teste_drag_drop_tasks` VALUES (1,'Tarefa 01','Primeira tarefa',1,'2022-05-12 22:46:01','2022-05-13 01:46:01'),(2,'Tarefa 02','Segunda tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00'),(3,'Tarefa 03','Terceira tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00'),(4,'Tarefa 04','Quarta tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00'),(5,'Tarefa 05','Quinta tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00'),(6,'Tarefa 06','Sexta tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00'),(7,'Tarefa 07','Sétima tarefa',1,'2022-05-12 22:43:22','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `teste_drag_drop_tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 19:54:27
