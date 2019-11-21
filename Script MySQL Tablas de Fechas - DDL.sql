-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.50.128    Database: dw_all_compartidos
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Table structure for table `lu_tie_anio`
--

DROP TABLE IF EXISTS `lu_tie_anio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_anio` (
  `id_tie_anio` int(11) NOT NULL DEFAULT '0',
  `id_tie_last_year` int(11) DEFAULT NULL,
  `id_tie_last_2years` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tie_anio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_dia`
--

DROP TABLE IF EXISTS `lu_tie_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_dia` (
  `id_tie_dia` date NOT NULL,
  `id_tie_dia_semana` int(11) NOT NULL,
  `id_tie_mes` int(11) NOT NULL,
  `id_tie_semana` int(11) NOT NULL,
  `desc_tie_dia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tie_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR HASH (month(id_tie_dia))
PARTITIONS 12 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_dia_semana`
--

DROP TABLE IF EXISTS `lu_tie_dia_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_dia_semana` (
  `id_tie_dia_semana` int(11) NOT NULL,
  `desc_tie_dia_semana` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tie_dia_semana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_dia_ytd`
--

DROP TABLE IF EXISTS `lu_tie_dia_ytd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_dia_ytd` (
  `id_tie_dia` date NOT NULL,
  `id_tie_ytd` date NOT NULL,
  PRIMARY KEY (`id_tie_dia`,`id_tie_ytd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (year(id_tie_dia))
(PARTITION p1980 VALUES LESS THAN (1981) ENGINE = InnoDB,
 PARTITION p1981 VALUES LESS THAN (1982) ENGINE = InnoDB,
 PARTITION p1982 VALUES LESS THAN (1983) ENGINE = InnoDB,
 PARTITION p1983 VALUES LESS THAN (1984) ENGINE = InnoDB,
 PARTITION p1984 VALUES LESS THAN (1985) ENGINE = InnoDB,
 PARTITION p1985 VALUES LESS THAN (1986) ENGINE = InnoDB,
 PARTITION p1986 VALUES LESS THAN (1987) ENGINE = InnoDB,
 PARTITION p1987 VALUES LESS THAN (1988) ENGINE = InnoDB,
 PARTITION p1988 VALUES LESS THAN (1989) ENGINE = InnoDB,
 PARTITION p1989 VALUES LESS THAN (1990) ENGINE = InnoDB,
 PARTITION p1990 VALUES LESS THAN (1991) ENGINE = InnoDB,
 PARTITION p1991 VALUES LESS THAN (1992) ENGINE = InnoDB,
 PARTITION p1992 VALUES LESS THAN (1993) ENGINE = InnoDB,
 PARTITION p1993 VALUES LESS THAN (1994) ENGINE = InnoDB,
 PARTITION p1994 VALUES LESS THAN (1995) ENGINE = InnoDB,
 PARTITION p1995 VALUES LESS THAN (1996) ENGINE = InnoDB,
 PARTITION p1996 VALUES LESS THAN (1997) ENGINE = InnoDB,
 PARTITION p1997 VALUES LESS THAN (1998) ENGINE = InnoDB,
 PARTITION p1998 VALUES LESS THAN (1999) ENGINE = InnoDB,
 PARTITION p1999 VALUES LESS THAN (2000) ENGINE = InnoDB,
 PARTITION p2000 VALUES LESS THAN (2001) ENGINE = InnoDB,
 PARTITION p2001 VALUES LESS THAN (2002) ENGINE = InnoDB,
 PARTITION p2002 VALUES LESS THAN (2003) ENGINE = InnoDB,
 PARTITION p2003 VALUES LESS THAN (2004) ENGINE = InnoDB,
 PARTITION p2004 VALUES LESS THAN (2005) ENGINE = InnoDB,
 PARTITION p2005 VALUES LESS THAN (2006) ENGINE = InnoDB,
 PARTITION p2006 VALUES LESS THAN (2007) ENGINE = InnoDB,
 PARTITION p2007 VALUES LESS THAN (2008) ENGINE = InnoDB,
 PARTITION p2008 VALUES LESS THAN (2009) ENGINE = InnoDB,
 PARTITION p2009 VALUES LESS THAN (2010) ENGINE = InnoDB,
 PARTITION p2010 VALUES LESS THAN (2011) ENGINE = InnoDB,
 PARTITION p2011 VALUES LESS THAN (2012) ENGINE = InnoDB,
 PARTITION p2012 VALUES LESS THAN (2013) ENGINE = InnoDB,
 PARTITION p2013 VALUES LESS THAN (2014) ENGINE = InnoDB,
 PARTITION p2014 VALUES LESS THAN (2015) ENGINE = InnoDB,
 PARTITION p2015 VALUES LESS THAN (2016) ENGINE = InnoDB,
 PARTITION p2016 VALUES LESS THAN (2017) ENGINE = InnoDB,
 PARTITION p2017 VALUES LESS THAN (2018) ENGINE = InnoDB,
 PARTITION p2018 VALUES LESS THAN (2019) ENGINE = InnoDB,
 PARTITION p2019 VALUES LESS THAN (2020) ENGINE = InnoDB,
 PARTITION p2020 VALUES LESS THAN (2021) ENGINE = InnoDB,
 PARTITION p2021 VALUES LESS THAN (2022) ENGINE = InnoDB,
 PARTITION p2022 VALUES LESS THAN (2023) ENGINE = InnoDB,
 PARTITION p2023 VALUES LESS THAN (2024) ENGINE = InnoDB,
 PARTITION p2024 VALUES LESS THAN (2025) ENGINE = InnoDB,
 PARTITION p2025 VALUES LESS THAN (2026) ENGINE = InnoDB,
 PARTITION pmax VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_last_3_months`
--

DROP TABLE IF EXISTS `lu_tie_last_3_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_last_3_months` (
  `id_tie_mes` int(11) NOT NULL DEFAULT '0',
  `id_tie_last_3_months` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tie_mes`,`id_tie_last_3_months`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes`
--

DROP TABLE IF EXISTS `lu_tie_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes` (
  `id_tie_mes` int(11) NOT NULL,
  `id_tie_mes_anio` int(11) NOT NULL,
  `id_tie_trimestre` int(11) NOT NULL,
  `desc_tie_mes` varchar(50) DEFAULT NULL,
  `id_tie_anio` int(11) NOT NULL,
  `id_tie_mes_contable` int(11) DEFAULT NULL,
  `id_tie_last_month` int(11) DEFAULT NULL,
  `id_tie_mes_last_year` int(11) DEFAULT NULL,
  `desc_tie_mes_anio` varchar(50) DEFAULT NULL,
  `desc_tie_mes_abrev` varchar(250) DEFAULT NULL,
  `id_tie_mes_2years_go` int(11) DEFAULT NULL,
  `id_tie_next_month` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tie_mes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_anio`
--

DROP TABLE IF EXISTS `lu_tie_mes_anio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_anio` (
  `id_tie_mes_anio` int(11) NOT NULL,
  `desc_tie_mes` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tie_mes_anio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_carga`
--

DROP TABLE IF EXISTS `lu_tie_mes_carga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_carga` (
  `id_tie_mes_carga` int(11) NOT NULL DEFAULT '0',
  `desc_tie_mes` varchar(50) DEFAULT NULL,
  `id_tie_trimestre` int(11) DEFAULT NULL,
  `id_tie_mes_anio` int(11) DEFAULT NULL,
  `id_tie_semestre` int(11) DEFAULT NULL,
  `id_tie_anio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tie_mes_carga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_contable`
--

DROP TABLE IF EXISTS `lu_tie_mes_contable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_contable` (
  `id_tie_mes_contable_anio` int(11) DEFAULT NULL,
  `id_tie_mes_contable` int(11) DEFAULT NULL,
  `desc_tie_mes_contable` varchar(50) DEFAULT NULL,
  `id_tie_anio` int(11) DEFAULT NULL,
  `id_tie_this_mes_last_ejercicio` int(11) DEFAULT NULL,
  `id_tie_prev_mes_contable` int(11) DEFAULT NULL,
  `id_tie_nro_ejercicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_last_12_months`
--

DROP TABLE IF EXISTS `lu_tie_mes_last_12_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_last_12_months` (
  `id_tie_mes` int(11) NOT NULL DEFAULT '0',
  `id_tie_last_12_months` int(11) NOT NULL DEFAULT '0',
  `id_tie_cur_and_last_11_months` int(11) NOT NULL,
  PRIMARY KEY (`id_tie_mes`,`id_tie_last_12_months`,`id_tie_cur_and_last_11_months`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_mtd`
--

DROP TABLE IF EXISTS `lu_tie_mes_mtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_mtd` (
  `id_tie_mes` int(11) NOT NULL DEFAULT '0',
  `id_tie_mes_mtd` int(11) NOT NULL DEFAULT '0',
  `id_tie_mes_mtd_last_year` int(11) NOT NULL,
  `id_tie_mes_mtd_last_2years` int(11) NOT NULL,
  PRIMARY KEY (`id_tie_mes`,`id_tie_mes_mtd`,`id_tie_mes_mtd_last_year`,`id_tie_mes_mtd_last_2years`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_mes_until_eoy`
--

DROP TABLE IF EXISTS `lu_tie_mes_until_eoy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_mes_until_eoy` (
  `id_tie_mes` int(11) NOT NULL DEFAULT '0',
  `id_tie_mes_until_eoy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tie_mes`,`id_tie_mes_until_eoy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_nro_ejercicio`
--

DROP TABLE IF EXISTS `lu_tie_nro_ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_nro_ejercicio` (
  `id_tie_nro_ejercicio` int(11) DEFAULT NULL,
  `id_tie_ant_nro_ejercicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_periodo_estado`
--

DROP TABLE IF EXISTS `lu_tie_periodo_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_periodo_estado` (
  `id_tie_periodo` int(11) DEFAULT NULL,
  `desc_periodo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Identifica los periodos de facturacion a evaluar para el tab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_semestre`
--

DROP TABLE IF EXISTS `lu_tie_semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_semestre` (
  `id_tie_semestre` int(11) NOT NULL,
  `id_tie_anio` int(11) DEFAULT NULL,
  `desc_tie_semestre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tie_semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lu_tie_trimestre`
--

DROP TABLE IF EXISTS `lu_tie_trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lu_tie_trimestre` (
  `id_tie_trimestre` int(11) NOT NULL,
  `id_tie_semestre` int(11) DEFAULT NULL,
  `desc_tie_trimestre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tie_trimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'dw_all_compartidos'
--

--
-- Dumping routines for database 'dw_all_compartidos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-18 10:42:30
