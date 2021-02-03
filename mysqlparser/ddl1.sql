-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: ideamysql01.mysql.database.azure.com    Database: clouddatafoundation
-- ------------------------------------------------------
-- Server version	5.6.47.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `idea_service_registry`
--

DROP TABLE IF EXISTS `idea_service_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idea_service_registry` (
  `service_group_id` varchar(50) NOT NULL,
  `service_name` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `port` varchar(50) DEFAULT NULL,
  `api_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_instances`
--

DROP TABLE IF EXISTS `job_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_instances` (
  `job_instance_id` varchar(255) DEFAULT NULL,
  `job_registration_id` varchar(255) DEFAULT NULL,
  `source_params` text,
  `sink_params` text,
  `integration_params` varchar(255) DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  `job_metrics` varchar(255) DEFAULT NULL,
  `launch_dt` datetime DEFAULT NULL,
  `completion_dt` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) /*!50100 TABLESPACE `innodb_system` */ ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_registry`
--

DROP TABLE IF EXISTS `job_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_registry` (
  `job_id` varchar(255) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `source_type` varchar(30) DEFAULT NULL,
  `sink_type` varchar(30) DEFAULT NULL,
  `source_params` varchar(3255) DEFAULT NULL,
  `sink_params` varchar(3255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0'
) /*!50100 TABLESPACE `innodb_system` */ ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linked_service_registry`
--

DROP TABLE IF EXISTS `linked_service_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_service_registry` (
  `linked_service_id` varchar(50) NOT NULL,
  `service_type` varchar(30) DEFAULT NULL,
  `service_name` varchar(50) DEFAULT NULL,
  `system_type` varchar(20) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `modified_by` varchar(20) DEFAULT NULL,
  `creation_dt` timestamp NULL DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`linked_service_id`)
) /*!50100 TABLESPACE `innodb_system` */ ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_mapping`
--

DROP TABLE IF EXISTS `schema_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_mapping` (
  `source` varchar(10) DEFAULT NULL,
  `source_datatype` varchar(45) DEFAULT NULL,
  `avro_datatype` varchar(45) DEFAULT NULL,
  `upper_precision` int(11) DEFAULT NULL,
  `lower_precision` int(11) DEFAULT NULL,
  `decimal` varchar(45) DEFAULT NULL
) /*!50100 TABLESPACE `innodb_system` */ ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_registry`
--

DROP TABLE IF EXISTS `schema_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_registry` (
  `schema_id` varchar(50) NOT NULL,
  `schema_name` varchar(50) DEFAULT NULL,
  `source_type` varchar(30) DEFAULT NULL,
  `schema_location_ls_id` varchar(80) DEFAULT NULL,
  `schema` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`schema_id`)
) /*!50100 TABLESPACE `innodb_system` */ ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-02 19:40:29