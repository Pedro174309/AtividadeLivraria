/*
SQLyog Community v9.33 GA
MySQL - 5.5.62 : Database - bdlivraria
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdlivraria` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bdlivraria`;

/*Table structure for table `tbcategorias` */

DROP TABLE IF EXISTS `tbcategorias`;

CREATE TABLE `tbcategorias` (
  `categoria` varchar(40) NOT NULL,
  PRIMARY KEY (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbcategorias` */

insert  into `tbcategorias`(`categoria`) values ('Arquitetura'),('Desgin'),('Informática'),('Literatura brasileira'),('Literatura infantil'),('Literatura universal'),('Música e arte');

/*Table structure for table `tblivros` */

DROP TABLE IF EXISTS `tblivros`;

CREATE TABLE `tblivros` (
  `codlivro` int(5) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(150) DEFAULT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`codlivro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblivros` */

insert  into `tblivros`(`codlivro`,`titulo`,`autor`,`categoria`,`valor`) values (1,'Java Como Programar','H. D. Deitel','Informática',125),(2,'Bancos de Dados','L. Date','Informática',95),(3,'Design de interiores','José Lopes Alencar','Arquitetura',234),(4,'A cidade e os cachorros','Jorge Mario Vargas Llosa','Literatura universal',57),(5,'As Mentiras que os Homens Contam','Luis Fernando Verissimo','Literatura brasileira',123),(6,'Desenho Arquitetônico','Gildo Aparecido Montenegro','Arquitetura',95),(7,'Algoritmos e estruturas de dados','Angelo Moura Guimaraes','Informática',65),(8,'Estruturas de Dados e seus Algoritmos','Jayme LuSzwarcfiter','Informática',45),(9,'Decoração de interiores','Luis Alves','Música e arte',345),(10,'Cem anos de solidão','Gabriel García Márques','Literatura universal',67),(11,'O menino e a espada','Pedro Silveira','Literatura brasileira',66);

/*Table structure for table `tbusuarios` */

DROP TABLE IF EXISTS `tbusuarios`;

CREATE TABLE `tbusuarios` (
  `login` int(9) NOT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `nome` varchar(129) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbusuarios` */

insert  into `tbusuarios`(`login`,`senha`,`nome`) values (232,'abc','Luisa Lopes'),(245,'dois','Luis Peres'),(567,'abcde','Ana Silva');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
