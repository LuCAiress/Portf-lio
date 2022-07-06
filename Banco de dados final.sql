CREATE DATABASE  IF NOT EXISTS `bd_examespfinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_examespfinal`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_examespfinal
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `convenio_log`
--

DROP TABLE IF EXISTS `convenio_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio_log` (
  `id_con_log` int NOT NULL AUTO_INCREMENT,
  `log_nomeC` char(30) DEFAULT NULL,
  `log_taxaC` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_con_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio_log`
--

LOCK TABLES `convenio_log` WRITE;
/*!40000 ALTER TABLE `convenio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `convenio_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exame_log`
--

DROP TABLE IF EXISTS `exame_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame_log` (
  `log_id_exam` int NOT NULL AUTO_INCREMENT,
  `log_nomeEx` char(30) DEFAULT NULL,
  `log_descEx` char(100) DEFAULT NULL,
  `log_valor` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`log_id_exam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame_log`
--

LOCK TABLES `exame_log` WRITE;
/*!40000 ALTER TABLE `exame_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exame_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_log`
--

DROP TABLE IF EXISTS `medico_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_log` (
  `id_med_log` int NOT NULL AUTO_INCREMENT,
  `log_CRM` int DEFAULT NULL,
  `log_nomeM` char(60) DEFAULT NULL,
  `log_telM` int DEFAULT NULL,
  `log_emailM` char(100) DEFAULT NULL,
  `log_especM` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_med_log`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_log`
--

LOCK TABLES `medico_log` WRITE;
/*!40000 ALTER TABLE `medico_log` DISABLE KEYS */;
INSERT INTO `medico_log` VALUES (3,200200296,'Florentina',983331272,'and_silva@gmail.com','Biomédico'),(4,200200296,'Florentina',983331272,'flor2022@gmail.com','Radiologia');
/*!40000 ALTER TABLE `medico_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operacoes_log`
--

DROP TABLE IF EXISTS `operacoes_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operacoes_log` (
  `id_op_log` int NOT NULL AUTO_INCREMENT,
  `log_pac` int DEFAULT NULL,
  `log_exame` int DEFAULT NULL,
  `log_datae` date DEFAULT NULL,
  `log_conv` int DEFAULT NULL,
  `log_med` int DEFAULT NULL,
  PRIMARY KEY (`id_op_log`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operacoes_log`
--

LOCK TABLES `operacoes_log` WRITE;
/*!40000 ALTER TABLE `operacoes_log` DISABLE KEYS */;
INSERT INTO `operacoes_log` VALUES (2,1,1,'2021-12-10',2,3),(9,4,4,'2022-05-03',2,2),(10,5,6,'2022-02-02',1,2);
/*!40000 ALTER TABLE `operacoes_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `opfaturamento`
--

DROP TABLE IF EXISTS `opfaturamento`;
/*!50001 DROP VIEW IF EXISTS `opfaturamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `opfaturamento` AS SELECT 
 1 AS `Soma`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paicente_log`
--

DROP TABLE IF EXISTS `paicente_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paicente_log` (
  `id_pc_log` int NOT NULL AUTO_INCREMENT,
  `log_nome` char(40) DEFAULT NULL,
  `log_cpf` bigint DEFAULT NULL,
  `log_email` char(60) DEFAULT NULL,
  `log_dnascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_pc_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paicente_log`
--

LOCK TABLES `paicente_log` WRITE;
/*!40000 ALTER TABLE `paicente_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `paicente_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_convenio`
--

DROP TABLE IF EXISTS `tb_convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_convenio` (
  `id_convenio` int NOT NULL,
  `nomeConevnio` char(30) DEFAULT NULL,
  `taxaCon` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_convenio`
--

LOCK TABLES `tb_convenio` WRITE;
/*!40000 ALTER TABLE `tb_convenio` DISABLE KEYS */;
INSERT INTO `tb_convenio` VALUES (1,'Amil',3500.00),(2,'MidSaúde',1000.00);
/*!40000 ALTER TABLE `tb_convenio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inslog_con` BEFORE INSERT ON `tb_convenio` FOR EACH ROW begin
Insert into convenio_log
    (id_con_log, log_nomeC, log_taxaC)
    Values 
    (new.id_convenio, new.nomeConevnio, new.taxaCon);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uplog_con` BEFORE UPDATE ON `tb_convenio` FOR EACH ROW begin
Insert into convenio_log
    (id_con_log, log_nomeC, log_taxaC)
    Values 
    (old.id_convenio, old.nomeConevnio, old.taxaCon);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_convenio` BEFORE DELETE ON `tb_convenio` FOR EACH ROW BEGIN
	INSERT INTO convenio_log (id_con_log, log_nomeC, log_taxaC)  
    VALUES(OLD.id_convenio, OLD.nomeConevnio, OLD.taxaCon); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_exames`
--

DROP TABLE IF EXISTS `tb_exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_exames` (
  `id_exame` int NOT NULL,
  `nomeExame` char(30) DEFAULT NULL,
  `descExame` char(100) DEFAULT NULL,
  `valor` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_exame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exames`
--

LOCK TABLES `tb_exames` WRITE;
/*!40000 ALTER TABLE `tb_exames` DISABLE KEYS */;
INSERT INTO `tb_exames` VALUES (1,'Tomografia','Espécie de radiografia com visão em 360 graus',500.00),(2,'Raio-X','Radiografia localizada comum',120.00),(3,'Ressonânica Magnética','Diagnóstico por imagem, que permite a captação de imagens detalhadas e tridimensionais.',700.00),(4,'Hemograma','Análise detelhada dos componentes do sangue',40.00),(5,'EAS','Análise detelhada dos componentes da urina.',20.00),(6,'Teste PCR-RT','Teste para detectar presença do Sars-CoV-2 (COVID-19)',125.00),(7,'EPF','Teste para detectar presença de parasitas nas fezes.',20.00),(8,'Teste de refração ocular','Teste para detectar o grau de desvio ocular.',100.00),(9,'Teste Ishihara','Teste para detectar daltonismo.',200.00),(10,'Teste OCT','Teste para detectar doenças oculares.',240.00);
/*!40000 ALTER TABLE `tb_exames` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inslog_exame` BEFORE INSERT ON `tb_exames` FOR EACH ROW begin
Insert into exame_log
    (log_id_exam, log_nomeEx, log_descEx, log_valor)
    Values 
    (new.id_exame, new.nomeExame, new.descExame, new.valor);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uplog_exame` BEFORE UPDATE ON `tb_exames` FOR EACH ROW begin
Insert into exame_log
    (log_id_exam, log_nomeEx, log_descEx, log_valor)
    Values 
    (old.id_exame, old.nomeExame, old.descExame, old.valor);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_exame` BEFORE DELETE ON `tb_exames` FOR EACH ROW BEGIN
	INSERT INTO exames_log (log_id_exam, log_nomeEx, log_descEx,log_valor)  
    VALUES(OLD.id_exame, OLD.nomeExame, OLD.descExame, OLD.valor); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_medicos`
--

DROP TABLE IF EXISTS `tb_medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_medicos` (
  `id_medico` int NOT NULL,
  `CRM` int DEFAULT NULL,
  `nomeMedico` char(60) DEFAULT NULL,
  `telefoneMedico` int DEFAULT NULL,
  `emailMedico` char(100) DEFAULT NULL,
  `especMedico` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_medicos`
--

LOCK TABLES `tb_medicos` WRITE;
/*!40000 ALTER TABLE `tb_medicos` DISABLE KEYS */;
INSERT INTO `tb_medicos` VALUES (1,193927172,'Michael Jackson',992871212,'mjackson@gmail.com','Radiografia'),(2,199201221,'Anderson Silva',99286667,'and_silva@gmail.com','Biomédico'),(3,200200296,'Florentina',983331272,'flor2022@gmail.com','Oftalmologista'),(4,200200296,'Florentina',983331272,'flor2022@gmail.com','Radiografia');
/*!40000 ALTER TABLE `tb_medicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inslog_medico` BEFORE INSERT ON `tb_medicos` FOR EACH ROW begin
Insert into medico_log
    (id_med_log, log_CRM, log_nomeM, log_telM, log_emailM, log_especM)
    Values 
    (new.id_medico, new.CRM, new.nomeMedico, new.telefoneMedico, new.emailMedico, new.especMedico);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uplog_medico` BEFORE UPDATE ON `tb_medicos` FOR EACH ROW begin
Insert into medico_log
    (id_med_log, log_CRM, log_nomeM, log_telM, log_emailM, log_especM)
    Values 
    (old.id_medico, old.CRM, old.nomeMedico, old.telefoneMedico, old.emailMedico, old.especMedico);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_medico` BEFORE DELETE ON `tb_medicos` FOR EACH ROW BEGIN
	INSERT INTO medico_log (id_med_log, log_CRM, log_nomeM, log_telM, log_emailM, log_especM)  
    VALUES(OLD.id_medico, OLD.CRM, OLD.nomeMedico, OLD.telefoneMedico, OLD.emailMedico, OLD.especMedico); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_operacoes`
--

DROP TABLE IF EXISTS `tb_operacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_operacoes` (
  `id_operacao` int NOT NULL,
  `paciente` int DEFAULT NULL,
  `exame` int DEFAULT NULL,
  `dataexame` date DEFAULT NULL,
  `convenio` int DEFAULT NULL,
  `medico` int DEFAULT NULL,
  PRIMARY KEY (`id_operacao`),
  KEY `fk_paciente` (`paciente`),
  KEY `fk_exame` (`exame`),
  KEY `fk_convenio` (`convenio`),
  KEY `fk_medico` (`medico`),
  CONSTRAINT `fk_convenio` FOREIGN KEY (`convenio`) REFERENCES `tb_convenio` (`id_convenio`),
  CONSTRAINT `fk_exame` FOREIGN KEY (`exame`) REFERENCES `tb_exames` (`id_exame`),
  CONSTRAINT `fk_medico` FOREIGN KEY (`medico`) REFERENCES `tb_medicos` (`id_medico`),
  CONSTRAINT `fk_paciente` FOREIGN KEY (`paciente`) REFERENCES `tb_pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_operacoes`
--

LOCK TABLES `tb_operacoes` WRITE;
/*!40000 ALTER TABLE `tb_operacoes` DISABLE KEYS */;
INSERT INTO `tb_operacoes` VALUES (1,1,2,'2022-03-29',2,4),(2,1,10,'2021-12-10',2,3),(3,3,2,'2022-03-21',2,4),(4,5,2,'2022-02-23',1,1),(5,4,7,'2021-11-12',2,2),(6,2,3,'2022-01-11',1,1),(7,2,9,'2022-03-29',1,3),(8,3,5,'2022-03-10',2,2);
/*!40000 ALTER TABLE `tb_operacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inslog_op` BEFORE INSERT ON `tb_operacoes` FOR EACH ROW begin
Insert into operacoes_log
    (id_op_log, log_pac, log_exame, lod_datae, log_conv, log_med)
    Values 
    (new.id_operacao, new.paciente, new.exame, new.dataexame, new.convenio, new.medico);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uplog_op` BEFORE UPDATE ON `tb_operacoes` FOR EACH ROW begin
Insert into operacoes_log
    (id_op_log, log_pac, log_exame, lod_datae, log_conv, log_med)
    Values 
    (old.id_operacao, old.paciente, old.exame, old.dataexame, old.convenio, old.medico);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_op` BEFORE DELETE ON `tb_operacoes` FOR EACH ROW BEGIN
	INSERT INTO operacoes_log (id_op_log, log_pac, log_exame, log_datae, log_conv, log_med)  
    VALUES(OLD.id_operacao, OLD.paciente, OLD.exame, OLD.dataexame, OLD.convenio, OLD.medico); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_pacientes`
--

DROP TABLE IF EXISTS `tb_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pacientes` (
  `id_paciente` int NOT NULL,
  `nome` char(40) DEFAULT NULL,
  `cpf` bigint DEFAULT NULL,
  `email` char(60) DEFAULT NULL,
  `dnascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pacientes`
--

LOCK TABLES `tb_pacientes` WRITE;
/*!40000 ALTER TABLE `tb_pacientes` DISABLE KEYS */;
INSERT INTO `tb_pacientes` VALUES (1,'Flávio',21278698538,'flavinsilva@hotmail.com','1992-03-10'),(2,'Bartolomeu',21987281728,'brttlomeu@gmail.com','1999-01-30'),(3,'Dionísio',78654786721,'dionizzz@gmail.com','1987-09-20'),(4,'Dante',2358976756,'daaante@gmail.com','2001-01-20'),(5,'Luísa',98271635271,'lui_zaa@gmail.com','2003-04-23'),(6,'Ana',2786765439,'aninha@hotmail.com','2002-10-09');
/*!40000 ALTER TABLE `tb_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inslog_paciente` BEFORE INSERT ON `tb_pacientes` FOR EACH ROW begin
Insert into paciente_log
    (id_pc_log, log_nome, log_cpf, log_email, log_dnascimento)
    Values 
    (new.id_paciente, new.nome, new.cpf, new.email, new.dnascimento);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `uplog_paciente` BEFORE UPDATE ON `tb_pacientes` FOR EACH ROW begin
Insert into paciente_log
    (id_pc_log, log_nome, log_cpf, log_email, log_dnascimento)
    Values 
    (old.id_paciente, old.nome, old.cpf, old.email, old.dnascimento);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `data_paciente` BEFORE DELETE ON `tb_pacientes` FOR EACH ROW BEGIN
	INSERT INTO paciente_log (id_pc_log, log_nome, log_cpf, log_email, log_dnascimento)  
    VALUES(OLD.id_paciente, OLD.nome, OLD.cpf, OLD.email, OLD.dnascimento); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `viewcon`
--

DROP TABLE IF EXISTS `viewcon`;
/*!50001 DROP VIEW IF EXISTS `viewcon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewcon` AS SELECT 
 1 AS `id_convenio`,
 1 AS `nomeConevnio`,
 1 AS `taxaCon`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewexam`
--

DROP TABLE IF EXISTS `viewexam`;
/*!50001 DROP VIEW IF EXISTS `viewexam`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewexam` AS SELECT 
 1 AS `id_exame`,
 1 AS `nomeExame`,
 1 AS `descExame`,
 1 AS `valor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewmed`
--

DROP TABLE IF EXISTS `viewmed`;
/*!50001 DROP VIEW IF EXISTS `viewmed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewmed` AS SELECT 
 1 AS `id_medico`,
 1 AS `CRM`,
 1 AS `nomeMedico`,
 1 AS `telefoneMedico`,
 1 AS `emailMedico`,
 1 AS `especMedico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewop`
--

DROP TABLE IF EXISTS `viewop`;
/*!50001 DROP VIEW IF EXISTS `viewop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewop` AS SELECT 
 1 AS `id_operacao`,
 1 AS `paciente`,
 1 AS `exame`,
 1 AS `dataexame`,
 1 AS `convenio`,
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewpac`
--

DROP TABLE IF EXISTS `viewpac`;
/*!50001 DROP VIEW IF EXISTS `viewpac`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewpac` AS SELECT 
 1 AS `id_paciente`,
 1 AS `nome`,
 1 AS `cpf`,
 1 AS `email`,
 1 AS `dnascimento`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_examespfinal'
--

--
-- Dumping routines for database 'bd_examespfinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `addconvenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addconvenio`(in add_id_convenio int, IN add_nomeConvenio char(30), IN add_taxaCon decimal(12,2))
BEGIN
    INSERT INTO tb_convenio (id_convenio, nomeConevnio, taxaCon) VALUES (add_id_convenio, add_nomeConvenio, add_taxaCon);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addexame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addexame`(in add_id_exame int,in add_CRM int, IN add_nomeExame char(30), IN add_descExame char(100), IN add_valor decimal)
BEGIN
    INSERT INTO tb_exames (id_exame, CRM, nomeExame, descExame, valor) values (add_id_exame, add_CRM, add_nomeExame, add_descExame, add_valor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addmedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addmedico`(in add_id_medico int,IN add_CRM int, IN add_nomeMedico char(60), IN add_telefoneMedico int, IN add_emailMedico char(100), IN add_especMedico char(30))
BEGIN
    INSERT INTO tb_medicos (id_medico,CRM, nomeMedico, telefoneMedico, emailMedico, especMedico) VALUES (add_id_medico, add_CRM, add_nomeMedico, add_telefoneMedico, add_emailMedico, add_especMedico);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addoperacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addoperacoes`(in add_id_operacao int, IN add_paciente int, IN add_exame int, IN add_dataexame date, IN add_convenio int, IN add_medico int)
BEGIN
    INSERT INTO tb_operacoes (id_operacao, paciente, exame, dataexame, convenio, medico) VALUES (add_id_operacao, add_paciente, add_exame, add_dataexame, add_convenio, add_medico);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addpaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addpaciente`(in add_id_paciente int, IN add_nome char(40), IN add_cpf bigint, IN add_email char(60), IN add_dnascimento date)
BEGIN
    INSERT INTO tb_pacientes (id_paciente, nome, cpf , email, dnascimento) VALUES ( add_id_paciente, add_nome, add_cpf, add_email, add_dnascimento);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `excconvenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `excconvenio`(IN exc_id_convenio int)
BEGIN
DELETE FROM tb_convenio
WHERE id_convenio=exc_id_convenio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `excexame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `excexame`(IN exc_id_exame int)
BEGIN
DELETE FROM tb_exames
WHERE id_exame=exc_id_exame;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `excmedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `excmedico`(IN exc_id_medico int)
BEGIN
DELETE FROM tb_medicos
WHERE id_medico=exc_id_medico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `excoperacoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `excoperacoes`(IN exc_id_operacoes int)
BEGIN
DELETE FROM tb_operacoes
WHERE id_operacao=exc_id_operacoes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `excpaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `excpaciente`(IN exc_id_paciente int)
BEGIN
DELETE FROM tb_pacientes
WHERE id_paciente=exc_id_paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upconvenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upconvenio`(IN up_id_convenio int, IN up_nomeC int, IN up_taxaCon decimal(12,2))
BEGIN
UPDATE tb_convenio
SET taxaCon=up_taxaCon, nomeConevnio=up_nomeC  where id_convenio=up_id_convenio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upexame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upexame`(IN up_id_exame int,IN up_nomeE char(30), IN up_descE char(100), IN up_valor decimal(12,2))
BEGIN
UPDATE tb_exames
SET valor=up_valor, descExame=up_descE, nomeExame=up_nomeE where id_exame=up_id_exame;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upmedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upmedico`(in up_id_medico int, in up_CRM int, in up_nomeM char(60), in up_telMedico int, in up_emailM char(100), in up_especM char(30))
BEGIN
update tb_medicos
set CRM=up_CRM, nomeM=up_nomeMedico, telefoneMedico=up_telMedico, emailMedico=up_emailM, especMedico=up_especM where id_medico=up_id_medico;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upop`(in up_id_operacao int, in up_paciente int, in up_exame int, in up_dexame date, in up_convenio int, in up_med int)
BEGIN
update tb_operacoes
set paciente=up_paciente, exame=up_exame, dataexame=up_dexame, convenio=up_convenio, medico=up_medico where id_operacao=up_id_operacao;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uppaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `uppaciente`(in up_id_paciente int, in up_nome char(30), in up_cpf bigint, in up_email char(60), in up_dnascimento date)
BEGIN
update tb_pacientes
set up_nome=nome, up_cpf=cpf, up_email=email, up_dnascimento=dnascimento where id_paciente=up_id_paciente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `opfaturamento`
--

/*!50001 DROP VIEW IF EXISTS `opfaturamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `opfaturamento` AS select sum(`tb_exames`.`valor`) AS `Soma` from (`tb_exames` join `tb_operacoes` on((`tb_exames`.`id_exame` = `tb_operacoes`.`exame`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewcon`
--

/*!50001 DROP VIEW IF EXISTS `viewcon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewcon` AS select `tb_convenio`.`id_convenio` AS `id_convenio`,`tb_convenio`.`nomeConevnio` AS `nomeConevnio`,`tb_convenio`.`taxaCon` AS `taxaCon` from `tb_convenio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewexam`
--

/*!50001 DROP VIEW IF EXISTS `viewexam`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewexam` AS select `tb_exames`.`id_exame` AS `id_exame`,`tb_exames`.`nomeExame` AS `nomeExame`,`tb_exames`.`descExame` AS `descExame`,`tb_exames`.`valor` AS `valor` from `tb_exames` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewmed`
--

/*!50001 DROP VIEW IF EXISTS `viewmed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewmed` AS select `tb_medicos`.`id_medico` AS `id_medico`,`tb_medicos`.`CRM` AS `CRM`,`tb_medicos`.`nomeMedico` AS `nomeMedico`,`tb_medicos`.`telefoneMedico` AS `telefoneMedico`,`tb_medicos`.`emailMedico` AS `emailMedico`,`tb_medicos`.`especMedico` AS `especMedico` from `tb_medicos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewop`
--

/*!50001 DROP VIEW IF EXISTS `viewop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewop` AS select `tb_operacoes`.`id_operacao` AS `id_operacao`,`tb_operacoes`.`paciente` AS `paciente`,`tb_operacoes`.`exame` AS `exame`,`tb_operacoes`.`dataexame` AS `dataexame`,`tb_operacoes`.`convenio` AS `convenio`,`tb_operacoes`.`medico` AS `medico` from `tb_operacoes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewpac`
--

/*!50001 DROP VIEW IF EXISTS `viewpac`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewpac` AS select `tb_pacientes`.`id_paciente` AS `id_paciente`,`tb_pacientes`.`nome` AS `nome`,`tb_pacientes`.`cpf` AS `cpf`,`tb_pacientes`.`email` AS `email`,`tb_pacientes`.`dnascimento` AS `dnascimento` from `tb_pacientes` */;
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

-- Dump completed on 2022-06-28 22:25:40
