CREATE DATABASE  IF NOT EXISTS `bdgamaxp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdgamaxp`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bdgamaxp
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
-- Table structure for table `cidadesestados`
--

DROP TABLE IF EXISTS `cidadesestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidadesestados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(70) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidadesestados`
--

LOCK TABLES `cidadesestados` WRITE;
/*!40000 ALTER TABLE `cidadesestados` DISABLE KEYS */;
INSERT INTO `cidadesestados` VALUES (1,'Bauru','SP'),(2,'Mogi das Cruzes','SP'),(3,'Guarulhos','SP'),(4,'Montes Claros','MG'),(5,'Aparecida de Goiânia','GO'),(6,'Paranamirim','RN'),(7,'Lagoa dos Velhos','RN'),(8,'Niterói','RJ'),(9,'Tês Rios','RJ'),(10,'Barra do Pirai','RJ');
/*!40000 ALTER TABLE `cidadesestados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Marcia Nunes','marcianunes@gmail.com','93584-6082','A32847'),(2,'Angelica Souza Lima','angelicalima@gmail.com','88404','angel2'),(3,'Rogerio Campos Souza','rogeriocampos@hotmail.com','91573','847510'),(4,'Marcelo Farias Feijo','marcelofeijo@yahoo.com.br','92281','Fm9615'),(5,'Adailton Lira','adailtonlira@yahoo.com.br','96725','851232'),(6,'Ana Alice Magalhãess Santos','alicesantos@gmail.com','92184','ana123'),(7,'Heitor Ferreira dos Santos','heitorsantos@gmail.com','88554','991020'),(8,'Henrique Guimaraes Felix','henriquefelix@gmail.com','86670','hgf2535'),(9,'Maria Eduarda Cardoso Santos','duda1234@hotmail.com','95273','045963'),(10,'José Rodrigo Santos Silva','rodrigosantos@gmail.com','85072','jr5658');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Adaptadores'),(2,'Ferramentas'),(3,'Eletronicos'),(4,'Casa'),(5,'Acessorios'),(6,'Moveis'),(7,'Tablets e Celulares'),(8,'Games'),(9,'Informatica');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipologradouro` varchar(30) DEFAULT NULL,
  `logradouro` varchar(30) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `bairro` varchar(70) DEFAULT NULL,
  `clientes_ID` int NOT NULL,
  `cidadesEstados_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enderecos_clientes_idx` (`clientes_ID`),
  KEY `fk_enderecos_cidadesEstados1_idx` (`cidadesEstados_id`),
  CONSTRAINT `fk_enderecos_cidadesEstados1` FOREIGN KEY (`cidadesEstados_id`) REFERENCES `cidadesestados` (`id`),
  CONSTRAINT `fk_enderecos_clientes` FOREIGN KEY (`clientes_ID`) REFERENCES `clientes` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Av.','Nova cumbica',1260,'Proximo Mota','7021','Jardim Nova Cumbica',10,3),(2,'Rua','Manoel Rodrigues',180,'Proximo Cras','9021','Centro',9,1),(3,'Av.','Francisco Matarazzo',3250,'Fundos','2910','Vila Assis',3,2),(4,'Rua','Santana do Parnaiba',18,'casa 1','9630','Cidade Nova',5,4),(5,'Viela','Guilherme Polidorio',89,'Casa3','3210','Vila Guarani',7,5),(6,'Trav.','Cardeal Arcoverde',3000,'Fundos','4608','Jardim Zaira',1,6),(7,'Rua','Sete de Setembro',501,'casa 3','2422','Capim Dourado',4,8),(8,'Av.','Presidente Castelo Branco',901,'Prox. Extra','78912','Centro',2,10),(9,'Rua','Augusto Tolle',29,'Padaria Dallas','7221','Bonsucesso',8,7),(10,'Av.','Tiradentes',401,'casa 2','31640','Arapongas',6,9);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoques`
--

DROP TABLE IF EXISTS `estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoques`
--

LOCK TABLES `estoques` WRITE;
/*!40000 ALTER TABLE `estoques` DISABLE KEYS */;
INSERT INTO `estoques` VALUES (1,25678,0),(2,27707,29),(3,27642,20),(4,26322,64),(5,27232,6),(6,19757,72),(7,19277,0),(8,20526,8),(9,27133,18),(10,27131,34),(11,24672,16),(12,22125,66),(13,27691,0),(14,27207,8),(15,27206,9),(16,25759,23),(17,13168,63),(18,27787,41),(19,26013,0),(20,23553,7),(21,26468,3),(22,22941,2),(23,26333,7),(24,19141,0),(25,50251,76),(26,12263,27),(27,21849,6),(28,15883,2),(29,11719,16),(30,17791,0),(31,65300,413),(32,26948,3),(33,13449,2);
/*!40000 ALTER TABLE `estoques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `codigoproduto` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `clientes_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_status1_idx` (`status_id`),
  KEY `fk_pedidos_clientes1_idx` (`clientes_ID`),
  CONSTRAINT `fk_pedidos_clientes1` FOREIGN KEY (`clientes_ID`) REFERENCES `clientes` (`ID`),
  CONSTRAINT `fk_pedidos_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2021-07-19',22941,3,10),(2,'2021-05-11',17791,6,6),(3,'2021-05-13',27232,7,2),(4,'2021-05-01',25759,3,5),(5,'2021-05-03',19141,1,9),(6,'2021-05-05',24672,7,7),(7,'2021-05-15',27232,4,1),(8,'2021-05-20',26013,2,3),(9,'2021-05-17',27131,7,4),(10,'2021-05-04',23553,1,8);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosprodutos`
--

DROP TABLE IF EXISTS `pedidosprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosprodutos` (
  `pedidos_id` int NOT NULL,
  `produtos_id` int NOT NULL,
  `valortotal` float DEFAULT NULL,
  PRIMARY KEY (`pedidos_id`,`produtos_id`),
  KEY `fk_pedidos_has_produtos_produtos1_idx` (`produtos_id`),
  KEY `fk_pedidos_has_produtos_pedidos1_idx` (`pedidos_id`),
  CONSTRAINT `fk_pedidos_has_produtos_pedidos1` FOREIGN KEY (`pedidos_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fk_pedidos_has_produtos_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosprodutos`
--

LOCK TABLES `pedidosprodutos` WRITE;
/*!40000 ALTER TABLE `pedidosprodutos` DISABLE KEYS */;
INSERT INTO `pedidosprodutos` VALUES (1,21,55),(2,29,13.8),(3,33,412),(4,15,25),(5,23,91),(6,10,204.5),(7,33,412),(8,18,112),(9,9,99),(10,19,23.75);
/*!40000 ALTER TABLE `pedidosprodutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` int DEFAULT NULL,
  `descricao` varchar(150) NOT NULL,
  `valor` float NOT NULL,
  `disponivel` tinyint(1) DEFAULT NULL,
  `emdestaque` tinyint(1) DEFAULT NULL,
  `departamentos_id` int NOT NULL,
  `estoques_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produtos_departamentos1_idx` (`departamentos_id`),
  KEY `fk_produtos_estoques1_idx` (`estoques_id`),
  CONSTRAINT `fk_produtos_departamentos1` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `fk_produtos_estoques1` FOREIGN KEY (`estoques_id`) REFERENCES `estoques` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,25678,'DESKTOP ACER C24-963-UA91 I3-1005G1 1.2GHz/8GB/512GB SSD/23.8FHD IPS/W10/INGLES PRETO',750,0,0,9,1),(2,27707,'FONE C/ MICROFONE JBL C50HI PRETO',7,1,1,9,2),(3,27642,'MONIT. LED 15.6 HYE HY16WLNC HD/VGA/HDMI PRETO',68,1,0,9,3),(4,26322,'MOUSE GAME COOLER MASTER MM110 RGB PRETO MM-110-GKOM1',17,1,0,9,4),(5,19757,'GAME CONTROLE REDRAGON HARROW G808 VIBRATION PC/PS3',21.5,1,1,8,6),(6,19277,'GAME CONTROLE HAVIT 2X1 HV-G61 USB P/PC PRETO',10,0,0,8,7),(7,20526,'TABLET AMAZON FIRE 7 1GB/16GB PRETO WIFI/QUAD CORE 7',50,1,0,7,8),(8,27133,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB ROSA WIFI/QUAD CORE 8u0027u0027',99,1,1,7,9),(9,27131,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB AZUL WIFI/QUAD CORE 8u0027u0027',99,1,0,7,10),(10,24672,'CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4',204.5,1,1,7,11),(11,22125,'MESA GAMER MTEK GM01 LED RGB PRETO',170,1,1,6,12),(12,27691,'CADEIRA GAMER UP UP0917 PRETO/VERDE',145,0,0,6,13),(13,27207,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-BW PRETO/BRANCO',185,1,0,6,14),(14,27206,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-B PRETO',185,1,1,6,15),(15,25759,'TECLADO + MOUSE + MOUSEPAD + FONE GAME HAVIT KB501CM GAMENOTE ESPANHOL PRETO',25,1,1,5,16),(16,13168,'MONIT. LCD  4 EVERSUN WD-2030 USB',49,1,0,5,17),(17,27787,'MICROFONE ELGATO WAVE1 10MAA9901 DIGITAL PRETO',149,1,1,5,18),(18,26013,'MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100WL/K0-AA BLUETOOTH  PRETO',112,0,0,5,19),(19,23553,'BARBEADOR PANASONIC ER-389 RECARREGAVEL 110 VOLT',24.75,1,1,4,20),(20,26468,'BALANCA DIGITAL BLULORY DSY03 BODY FAST SCALE BRANCO',19,1,1,4,21),(21,22941,'BABA ELETRONICA MOTOROLA MBP87CNCT BRANCO/DOURADO',55,1,1,4,22),(22,26333,'BABA ELETRONICA MOTOROLA MBP161TIMER BRANCO',36.5,1,1,4,23),(23,19141,'CAMERA WEBCAM RAZER  RZ19-02320100-R3U1 KIYO 720P',91,0,0,3,24),(24,50251,'CAMERA WEBCAM MICROSOFT LIFE CAM CINEMA HD 720p H5D-00013 -PROMOCAO',46.5,1,1,3,25),(25,12263,'CAMERA WEBCAM LOGITECH C270 HD 960-000694',41,1,1,3,26),(26,21849,'CAMERA GOPRO HERO 8 CHDHX-801-RW PRETO',340,1,1,3,27),(27,15883,'CADEADO SEGURANCA PARA NOTEBOOK HLD Fu0026K LLAVE',6.5,1,0,2,28),(28,11719,'ALICATE PARA CRIMPAR TL-315 3 EM 1',15,1,1,2,29),(29,17791,'CABO ADAPTADOR CONVERSOR VGA MACHO/HDMI FEMEA/USB/AUDIO HLD PRETO',13.8,0,0,1,30),(30,65300,'ADAPTADOR VGA MACHO / RJ45',6,1,1,1,31),(31,26948,'ADAPTADOR TYPE C/ MICRO USB',3.2,1,1,1,32),(32,13449,'ADAPTADOR TYPE C MACHO/ USB 3.0 FEMEA',2.9,1,1,1,33),(33,27232,'XBOX ONE S  512GB BIVOLT ALL DIGITAL 120FPS BRANCO',412,1,1,8,5);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Novo Pedido'),(2,'Cancelado'),(3,'Aguardando Pagamento'),(4,'Pagamento Autorizado'),(5,'Pagamento Negado'),(6,'Em Separação'),(7,'Em Tranporte'),(8,'Entregue');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-22  1:09:35
