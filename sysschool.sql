-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: sysschool
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `turno` varchar(25) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` int(20) DEFAULT NULL,
  `cpf` int(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Rafael guimaraes','M','1 informatica','tarde','rua da estreia n100',25489999,111233344,'exemplo1@exemplo.com.br','1234'),(2,'Rafael guimaraes','M','1 informatica','tarde','rua da estreia n100',25489999,111233344,'exemplo1@exemplo.com.br','1234'),(3,'Luana Pereira','F','2 informatica','tarde','rua da ajuda n50',25488888,54265768,'exemplo2@exemplo.com.br','1234'),(4,'Ana Paula Gomes','F','3 informatica','tarde','rua do socorro n7',25465779,11123344,'exemplo3@exemplo.com.br','1234'),(5,'Antônio Gilberto pereira','M','1 adm','manha','av brasil n11000',33556699,44454599,'exemplo4@exemplo.com.br','1234'),(6,'Maria Teresa Ramos','F','2 adm','manha','estrada do tindiba n1005',23445500,11122234,'exemplo5@exemplo.com.br','1234'),(7,'Robson Bustamante','M','3 adm','manha','rua beiramar n157',33445566,33366690,'exemplo6@exemplo.com.br','1234'),(8,'Pedro Sampaio','M','2 adm','tarde','rua das couves 100',3357675,98625288,'exemplo8@exemplo.com.br','1234'),(9,'Jonas Profeta','M','3 informatica','manha','rua do catete 777',7771777,7777777,'exemplo7@exemplo.com.br','7777'),(10,'Karolina Costa','F','1 adm','manha','av.nova holanda 12',20356062,1262288,'exemplo9@exemplo.com.br','1234'),(11,'Daniele Barreto','F','2 informatica','tarde','rua do vidigal',98627731,3277721,'exemplo10@exemplo.com.br','1234');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `turno` varchar(25) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` int(20) DEFAULT NULL,
  `cpf` int(50) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Robson pereira','Professor/redes','tarde','exemplo1@exemplo.com.br','rua da estreia n100',25489999,22233344,'1234'),(2,'Jessica campos','Professora/adm','tarde','exemplo2@exemplo.com.br','rua da ajuda n50',25488888,54712368,'1234'),(3,'Serena maria','professora/mkt','tarde','exemplo3@exemplo.com.br','rua do socorro n7',25465779,1112344,'1234'),(4,'Luiz melodia','Professor/bando de dados','manha','exemplo4@exemplo.com.br','av brasil n11000',33556699,77788899,'1234'),(5,'Bernardo gomes','professor/adm','manha','exemplo5@exemplo.com.br','estrada do tindiba n1005',23445500,1133344,'1234'),(6,'Vitor sekiguchi','professor/programação','manha','exemplo6@exemplo.com.br','rua beiramar n157',33445566,333490,'1234');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `professor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Administração','manha','1 adm','Bernardo gomes'),(2,'Programação','tarde','3 informatica','Vitor Sekiguchi'),(3,'Matemática Financeira','tarde','2 adm','Jessica Campos'),(4,'Redes','manha','1 informatica','Robson Pereira'),(5,'Marketing','tarde','3 adm','Serena Maria'),(6,'Banco de Dados','manha','2 informatica','Luiz Melodia'),(7,'Logistica','tarde','3 adm','Luciano Estrada');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` varchar(100) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `Periodo` year(4) DEFAULT NULL,
  `disciplina` varchar(100) DEFAULT NULL,
  `bim1` int(10) DEFAULT NULL,
  `bim2` int(10) DEFAULT NULL,
  `bim3` int(10) DEFAULT NULL,
  `bim4` int(10) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `aluno` (`aluno`),
  KEY `turma` (`turma`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Rafael guimaraes','1 informatica',2017,'banco de dados',5,10,7,8),(2,'Luana Pereira','2 informatica',2018,'redes',8,5,6,3),(3,'Ana Paula Gomes','3 informatica',2019,'Gestao de projetos',5,5,7,10),(4,'Antônio Gilberto pereira','1 adm',2020,'adm',8,8,4,3),(5,'Maria Teresa Ramos','2 adm',2021,'mkt',3,2,9,7);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabelanova`
--

DROP TABLE IF EXISTS `tabelanova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabelanova` (
  `matricula` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `turno` varchar(25) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` int(20) DEFAULT NULL,
  `cpf` int(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabelanova`
--

LOCK TABLES `tabelanova` WRITE;
/*!40000 ALTER TABLE `tabelanova` DISABLE KEYS */;
INSERT INTO `tabelanova` VALUES (1,'Rafael guimaraes','M','1 informatica','tarde','rua da estreia n100',25489999,111233344,'exemplo1@exemplo.com.br','1234'),(2,'Rafael guimaraes','M','1 informatica','tarde','rua da estreia n100',25489999,111233344,'exemplo1@exemplo.com.br','1234'),(3,'Luana Pereira','F','2 informatica','tarde','rua da ajuda n50',25488888,54265768,'exemplo2@exemplo.com.br','1234'),(4,'Ana Paula Gomes','F','3 informatica','tarde','rua do socorro n7',25465779,11123344,'exemplo3@exemplo.com.br','1234'),(5,'Antônio Gilberto pereira','M','1 adm','manha','av brasil n11000',33556699,44454599,'exemplo4@exemplo.com.br','1234'),(6,'Maria Teresa Ramos','F','2 adm','manha','estrada do tindiba n1005',23445500,11122234,'exemplo5@exemplo.com.br','1234'),(7,'Robson Bustamante','M','3 adm','manha','rua beiramar n157',33445566,33366690,'exemplo6@exemplo.com.br','1234'),(8,'Pedro Sampaio','M','2 adm','tarde','rua das couves 100',3357675,98625288,'exemplo8@exemplo.com.br','1234'),(9,'Jonas Profeta','M','3 informatica','manha','rua do catete 777',7771777,7777777,'exemplo7@exemplo.com.br','7777'),(10,'Karolina Costa','F','1 adm','manha','av.nova holanda 12',20356062,1262288,'exemplo9@exemplo.com.br','1234'),(11,'Daniele Barreto','F','2 informatica','tarde','rua do vidigal',98627731,3277721,'exemplo10@exemplo.com.br','1234');
/*!40000 ALTER TABLE `tabelanova` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 15:36:26
