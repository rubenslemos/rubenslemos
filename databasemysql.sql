-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: projetoclinica
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Current Database: `projetoclinica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projetoclinica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `projetoclinica`;

--
-- Table structure for table `enfermeira`
--

DROP TABLE IF EXISTS `enfermeira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeira` (
  `cod_enfermeira` int NOT NULL AUTO_INCREMENT,
  `nome_enfermeira` varchar(50) NOT NULL,
  `Especialidade` varchar(50) NOT NULL,
  `CRM` int NOT NULL,
  `endereco` tinytext NOT NULL,
  `CPF` int NOT NULL,
  PRIMARY KEY (`cod_enfermeira`,`CRM`,`CPF`),
  UNIQUE KEY `cod_enfermeira_UNIQUE` (`cod_enfermeira`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeira`
--

LOCK TABLES `enfermeira` WRITE;
/*!40000 ALTER TABLE `enfermeira` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermeira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `cod_Medicos` int NOT NULL AUTO_INCREMENT,
  `nome_medico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_is_0900_ai_ci NOT NULL,
  `Especialidade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_is_0900_ai_ci NOT NULL,
  `CRM` int NOT NULL,
  `endereco` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_is_0900_ai_ci NOT NULL,
  `CPF` int NOT NULL,
  PRIMARY KEY (`cod_Medicos`,`CPF`,`CRM`),
  UNIQUE KEY `idnew_table_UNIQUE` (`cod_Medicos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_is_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'projetoclinica'
--

--
-- Dumping routines for database 'projetoclinica'
--

--
-- Current Database: `cadastro`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cadastro`;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','L??gica de Programa????o',20,15,2014),(3,'Photoshop5','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdu????o ?? Linguagem Java',40,29,2015),(6,'MySQL','Bancos de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'Python','Curso de Python',40,18,2017),(9,'POO','Curso de Programa????o Orientada a Objetos',60,35,2016),(10,'Excel','Curso completo de Excel',40,30,2017),(11,'Responsividade','Curso de Responsividade',30,15,2018),(12,'C++','Curso de C++ com Orienta????o a Objetos',40,25,2017),(13,'C#','Curso de C#',30,12,2017),(14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2018),(15,'JavaScript','Curso de JavaScript',35,18,2017),(16,'PowerPoint','Curso completo de PowerPoint',30,12,2018),(17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2019),(18,'Hardware','Curso de Montagem e Manuten????o de PCs',30,12,2017),(19,'Redes','Curso de Redes para Iniciantes',40,15,2016),(20,'Seguran??a','Curso de Seguran??a',15,8,2018),(21,'SEO','Curso de Otimiza????o de Sites',30,12,2017),(22,'Premiere','Curso de Edi????o de V??deos com Premiere',20,10,2017),(23,'After Effects','Curso de Efeitos em V??deos com After Effects',20,10,2018),(24,'WordPress','Curso de Cria????o de Sites com WordPress',60,30,2019),(25,'Joomla','Curso de Cria????o de Sites com Joomla',60,30,2019),(26,'Magento','Curso de Cria????o de Lojas Virtuais com Magento',50,25,2019),(27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),(28,'HTML4','Curso B??sico de HTML, vers??o 4.0',20,9,2010),(29,'PHP7','Curso de PHP, vers??o 7.0',40,20,2020),(30,'PHP4','Curso de PHP, vers??o 4.0',30,11,2010);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafanhoto_assiste_curso`
--

DROP TABLE IF EXISTS `gafanhoto_assiste_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhoto_assiste_curso` (
  `idassiste` int NOT NULL AUTO_INCREMENT,
  `datacurso` year DEFAULT NULL,
  `idgafanhoto` int DEFAULT NULL,
  `idcurso` int DEFAULT NULL,
  PRIMARY KEY (`idassiste`),
  KEY `idgafanhoto` (`idgafanhoto`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `gafanhoto_assiste_curso_ibfk_1` FOREIGN KEY (`idgafanhoto`) REFERENCES `gafanhotos` (`id`),
  CONSTRAINT `gafanhoto_assiste_curso_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhoto_assiste_curso`
--

LOCK TABLES `gafanhoto_assiste_curso` WRITE;
/*!40000 ALTER TABLE `gafanhoto_assiste_curso` DISABLE KEYS */;
INSERT INTO `gafanhoto_assiste_curso` VALUES (1,2015,1,1),(2,2015,1,2),(3,2016,1,3),(4,2016,2,4),(5,2017,2,5),(6,2017,2,6),(7,2018,3,7),(8,2018,3,8),(9,2019,3,9),(10,2019,4,10),(11,2020,4,11),(12,2020,4,12);
/*!40000 ALTER TABLE `gafanhoto_assiste_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Brasil',NULL),(2,'Talita Nascimento','Farmac??utico','1999-12-30','F',55.20,1.65,'Portugal',NULL),(3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Mo??ambique',NULL),(4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Irlanda',NULL),(5,'Leila Martins','Farmac??utico','1975-04-22','F',99.00,2.15,'Brasil',NULL),(6,'Let??cia Neves','Programador','1999-12-03','F',87.00,2.00,'Brasil',NULL),(7,'Jana??na Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'EUA',NULL),(8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Brasil',NULL),(9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Portugal',NULL),(10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'EUA',NULL),(11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Irlanda',NULL),(12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Brasil',NULL),(13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Brasil',NULL),(14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Brasil',NULL),(15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Portugal',NULL),(16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'EUA',NULL),(17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Brasil',NULL),(18,'Joade Assis','M??dico','1930-12-01','M',65.88,1.78,'Fran??a',NULL),(19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Brasil',NULL),(20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Portugal',NULL),(21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Brasil',NULL),(22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Mo??ambique',NULL),(23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Brasil',NULL),(24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Jap??o',NULL),(25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Brasil',NULL),(26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Portugal',NULL),(27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Brasil',NULL),(28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'EUA',NULL),(29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Brasil',NULL),(30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Irlanda',NULL),(31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Brasil',1),(32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Brasil',2),(33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Brasil',3),(34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Canad??',4),(35,'M??rcio Mello','Programador','2011-11-20','M',54.11,1.55,'EUA',5),(36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Brasil',6),(37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Brasil',7),(38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Portugal',8),(39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Brasil',9),(40,'Andr?? Schmidt','Programador','1993-07-26','M',55.37,1.22,'Angola',10),(41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Mo??ambique',11),(42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Brasil',12),(43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'EUA',13),(44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Portugal',14),(45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Brasil',15),(46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Angola',16),(47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Alemanha',17),(48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Canad??',18),(49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'EUA',19),(50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Brasil',NULL),(51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Portugal',NULL),(52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Canad??',NULL),(53,'Andr?? Vitebo','M??dico','1970-07-01','M',44.11,1.55,'Brasil',NULL),(54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'It??lia',NULL),(55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Canad??',NULL),(56,'Nailton Mauricio','M??dico','1992-04-25','M',86.01,1.43,'EUA',NULL),(57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Angola',NULL),(58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Brasil',NULL),(59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Brasil',NULL),(60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Angola',NULL),(61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Brasil',1);
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cadastro'
--

--
-- Dumping routines for database 'cadastro'
--

--
-- Current Database: `orcamentos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `orcamentos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `orcamentos`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `telefone` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamentos`
--

DROP TABLE IF EXISTS `orcamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `peca` text NOT NULL,
  `preco_compra` float DEFAULT NULL,
  `quantidade` int DEFAULT '1',
  `margem_lucro` float NOT NULL DEFAULT '30',
  `preco_venda` float DEFAULT NULL,
  `lucro` float DEFAULT NULL,
  `mao_de_obra` float DEFAULT '150',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamentos`
--

LOCK TABLES `orcamentos` WRITE;
/*!40000 ALTER TABLE `orcamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `orcamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL AUTO_INCREMENT,
  `usuarios` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `endereco` tinytext NOT NULL,
  `cep` int NOT NULL,
  `telefone` int NOT NULL,
  PRIMARY KEY (`idUsuarios`,`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'orcamentos'
--

--
-- Dumping routines for database 'orcamentos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08 21:48:46
