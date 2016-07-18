/*
SQLyog Community v11.31 (32 bit)
MySQL - 4.1.14-nt : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shopping`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `usern` char(20) default NULL,
  `passw` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`usern`,`passw`) values ('sa','sa');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category` char(50) default NULL,
  `type1` char(30) default NULL,
  `type2` char(30) default NULL,
  `type3` char(30) default NULL,
  `type4` char(30) default NULL,
  `type5` char(30) default NULL,
  `type6` char(30) default NULL,
  `type7` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category`,`type1`,`type2`,`type3`,`type4`,`type5`,`type6`,`type7`) values ('Mobiles and Accessories','Mobile','Nokia New','Motorola','Sony Ericson','Samsung','Mobile Holders','Nokia 3230'),('Jewellary and Watches','Rings','Earrings','Pendants','Real Diamond Ring','Dual Watches','Ladies Watch','Mens Watches'),('Electronics','Air Conditioner','Juicer Mixers','Laptops','Monitors','Computers','Televisions','Others'),('Home Appliances','Furnisher','Juicer Mixers','Decorative Material','Vessels','Air Conditioners','Micro Wave','Others'),('Other Popular Electronics','Laptop','Camera','DVDs','Pendrive','TV','Camcorder','Home Theater'),('Clothings','Men\'s Wears','Ladies Wears','Handlooms','Kid\'s Wears','..','..','Others'),('Furnitutes','Beds','Sofas','Tables','Office Chairs','Designer Chairs','Computer table','Dinning Table'),('Ladies Products','Cosmetics','Clothings',NULL,NULL,NULL,NULL,NULL),('Children','Toys','Kids Wears','Games','Comics','Playstation','Books','Accessories');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` char(30) default NULL,
  `email` char(30) default NULL,
  `phone` char(30) default NULL,
  `comment` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`name`,`email`,`phone`,`comment`) values ('Anu','gfh@yahoo.com','98456567','nil'),('Raj','raj@yahoo.com','9313565406','nil');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `category` char(30) default NULL,
  `type` char(30) default NULL,
  `id` char(30) default NULL,
  `amount` decimal(30,0) default NULL,
  `imag` char(200) default NULL,
  `tim` char(40) default NULL,
  `Desd` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`category`,`type`,`id`,`amount`,`imag`,`tim`,`Desd`) values ('Mobiles and Accessories','Mobile','IT001',700,'images/phonee.jpg','2 days',NULL),('Jewellary and Watches','Rings','IT002',7000,'images/ring2.jpg','3 days','Diamond Rings with pearl,Gold plated'),('Jewellary and Watches','Earrings','IT003',5000,'images/ear1.jpg','7 days','Diamond Earrings with pearls'),('Jewellary and Watches','Ladies Watch','IT004',3000,'images/pic15.gif','7 days','Men\' Wear with leather strap.'),('Used Electronics','DVD Player','IT005',8000,'images/ring4.jpg','4 days','DVD Player with Cover'),('Used Electronics','DVD Player','IT006',6900,'images/ring3.jpg','5 days','Sony DVD Player with 50 DVDs'),('Jewellary and Watches','Rings','IT007',6700,'images/ring4.jpg','3 days','Diamond Ring'),('Jewellary and Watches','Pendants','IT008',4500,'images/pendant1.jpg','2 days','White Gold,Diamond Pendant'),('Jewellary and Watches','Earrings','IT009',1200,'images/ear3.jpg','1 day','White Gold Earrings'),('Jewellary and Watches','Pendants','IT0010',3400,'images/pendent2.jpg','1 day','Gold Pendant'),('Mobiles and Accessories','Mobile','IT0011',2340,'images/sidepic1.jpg','1 day','LG Mobile Set'),('Mobiles and Accessories','Motorola','IT0012',2500,'images/phonee.jpg','1 day','Nokia Mobile'),('Mobiles and Accessories','Mobile','IT0013',2900,'images/pic8.gif','6 days','Deta/bvn nbkmj/'),('Mobiles and Accessories','Mobile','IT0014',678,'images/pic9.gif','3 days','Mobile...'),('Electronics','DVD Player','IT0015',678,'images/dvdplayer.jpg','5 days','Pen Drive'),('Electronics','DVD Player','IT0016',3500,'images/ele4.jpg','3 days','Sony DVD Player Model-908\r\n'),('Other Popular Electronics','Camera','IT0001',9000,'images/3.jpg',NULL,'5 Gb Memory,Free 6 DVDs'),('Other Popular Electronics','Camera','IT0001',9000,'images/3.jpg',NULL,'5 Gb Memory,Free 6 DVDs'),('Electonics','Juicer Mixer','IT0013',7800,'images/2.jpg',NULL,'Juicer,Mixer,Grinder'),('Electonics','Juicer Mixer','IT015',9000,'images/gr1.jpg',NULL,'Juicer,Mixer,Grinder'),('Electonics','Juicer Mixer','IT089',8966,'images/gr2.jpg',NULL,'Food Processor with Accessories'),('Electonics','Air Conditioner','IT07',22000,'images/ac2.jpg',NULL,NULL),('Electronics','Air Conditioner','IT06',29000,'images/ac3.jpg',NULL,NULL),('Electronics','Air Conditioner','IT06',29000,'images/ac3.jpg',NULL,NULL),('Electronics','Air Conditioner','IT06',29000,'images/ac3.jpg',NULL,NULL),('Mobiles and Accessories','Nokia New','IT98',3000,'images/p1.jpg',NULL,'Memory 5Gb,Camera'),('Jewellary and Watches','Ladies Watch','IT078',5600,'images/w3.jpg',NULL,'Ladies Watch'),('Jewellary and Watches','Ladies Watch','IT023',7900,'images/w2.jpg',NULL,'Ladies,Diamond Watch'),('Electronics','Juicer Mixers','IT0029',5900,'images/gr5.jpg','1','Jucer Mixer Grinder with 23 pieces(assessories)'),('Ladies Products','Clothings','IT045',4567,'images/h5.jpg','7','Bed Sheet....'),('Children','Playstation','IT0031',23000,'images/playstation.png','3','Playstation with one thousand games');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` char(30) default NULL,
  `usern` char(30) default NULL,
  `passw` char(30) default NULL,
  `email` char(30) default NULL,
  `ques` char(60) default NULL,
  `ans` char(100) default NULL,
  `phone` decimal(10,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`usern`,`passw`,`email`,`ques`,`ans`,`phone`) values ('M001','Sam','111','gvs@yahoo.com','what is this','test',9313565406),('M002','raj','raj123','gvsbaluja@yahoo.com','Favourite colour','red',9313565406),('M003','arun','123','arun@gmail.com','Favourite Fruit','Apple',9876655545),('M004','Bun','12345678','gvsbaluja@yahoo.com','Favourite colour','blue',954535435),('M005','amar','123','gvsbaluja@yahoo.com','Favourite Fruit','apple',984523980),('M006','Anu','123456','gvsbaluja@yahoo.com','what is this','test',9566556787),('M007','Anu','1234','anu@yahoo.com','what is this','test',95645456);

/*Table structure for table `shop_details` */

DROP TABLE IF EXISTS `shop_details`;

CREATE TABLE `shop_details` (
  `category` char(40) default NULL,
  `type` char(40) default NULL,
  `pid` char(40) default NULL,
  `amount` decimal(7,0) default NULL,
  `dat` char(50) default NULL,
  `username` char(40) default NULL,
  `email` char(40) default NULL,
  `phone` decimal(15,0) default NULL,
  `address` char(50) default NULL,
  `city` char(40) default NULL,
  `paymode` char(40) default NULL,
  `bankname` char(40) default NULL,
  `ddno` char(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shop_details` */

insert  into `shop_details`(`category`,`type`,`pid`,`amount`,`dat`,`username`,`email`,`phone`,`address`,`city`,`paymode`,`bankname`,`ddno`) values ('Home Appliances','Pots','A109',2300,'0002-02-09','Aruna','gvsbaluja@yahoo.com',9313565406,'g-90','Delhi','Chque',NULL,NULL),('Jewellary and Watches','Rings','IT002',4700,'Thu Aug 20 12:08:24 PDT 2009','Raj','gvsbaluja@yahoo.com',9856342267,'j-90','Dallas','Cash',NULL,NULL),('Jewellary and Watches','Rings','IT002',5780,'Thu Aug 20 12:21:00 PDT 2009','Seema Malik','gh$gmail.com',98235345234,'j-90','Cleaveland','Cash',NULL,NULL),('Jewellary and Watches','Rings','IT002',5780,'Thu Aug 20 12:21:00 PDT 2009','Seema Malik','gh$gmail.com',98235345234,'j-90','Cleaveland','Cash',NULL,NULL),('Jewellary and Watches','Rings','IT002',6000,'Thu Aug 20 12:22:22 PDT 2009','Sameer','sam@gmail.com',9857677778,'h-90','Cleaveland','Credit Card',NULL,NULL),('Jewellary and Watches','Rings','IT002',6500,'Thu Aug 20 12:24:27 PDT 2009','Sam','jk@nm.co.i.',98235345234,'j-34','Dallom','Cheque','HDFC Bank','765389'),('Jewellary and Watches','Rings','IT002',7000,'Thu Aug 20 23:26:15 PDT 2009','Sam','gvsbaluja@yahoo.com',9546567778,'d-90','Dallas','DD','ICICI Bank','6765545'),('Mobiles and Accessories','Mobile','IT0013',2900,'Tue Jan 05 17:43:09 IST 2010','Gurmeet','gvs@yahoo.com',76876899,'d-90','Delhi','Cheque',NULL,NULL),('Mobiles and Accessories','Mobile','IT001',23000,'Wed Jan 06 16:18:44 IST 2010','Sam','gvsbaluja@yahoo.com',98466772,'d-90','Delhi','Cheque','HDFC','45663'),('Mobiles and Accessories','Mobile','IT001',7000,'Fri Feb 20 15:08:25 IST 2015','sam','sam@yahoo.com',9845235609,'A-89','Delhi','Cheque','P&B Bank','67788'),('Jewellary and Watches','Rings','IT002',14000,'Mon Jul 18 16:54:51 IST 2016','Anu','anu@gmail.com',867847456,'Dwarka','Delhi','Draft','ICICI','3423432434');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
