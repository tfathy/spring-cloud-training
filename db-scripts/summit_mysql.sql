-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: summit
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `s_countries`
--

DROP TABLE IF EXISTS `s_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_countries` (
  `ID` int NOT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `REGION_ID` int DEFAULT NULL,
  `COUNTRY_CODE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_COUNTRIES_UK` (`COUNTRY`),
  KEY `S_COUNTRIES_FK` (`REGION_ID`),
  CONSTRAINT `S_COUNTRIES_FK` FOREIGN KEY (`REGION_ID`) REFERENCES `s_region` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_countries`
--

LOCK TABLES `s_countries` WRITE;
/*!40000 ALTER TABLE `s_countries` DISABLE KEYS */;
INSERT INTO `s_countries` VALUES (1,'Brazil',2,'BR'),(2,'Japan',4,'JP'),(3,'India',4,'IN'),(4,'USA',1,'US'),(5,'Hong Kong',4,'HK'),(6,'France',5,'FR'),(7,'Nigeria',3,'NG'),(8,'Germany',5,'DE'),(9,'Dominican Republic',1,'DO'),(10,'Columbia',2,'CO'),(11,'Czech Republic',5,'CZ'),(12,'Egypt',3,'EG'),(13,'Russian Federation',5,'RU'),(14,'Canada',1,'CA');
/*!40000 ALTER TABLE `s_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_credit_rating`
--

DROP TABLE IF EXISTS `s_credit_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_credit_rating` (
  `ID` int NOT NULL,
  `RATING` int NOT NULL,
  `CREDIT_RATING` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_CREDIT_RATING_UK` (`CREDIT_RATING`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_credit_rating`
--

LOCK TABLES `s_credit_rating` WRITE;
/*!40000 ALTER TABLE `s_credit_rating` DISABLE KEYS */;
INSERT INTO `s_credit_rating` VALUES (1,4,'Excellent','Always pays on time'),(2,3,'Good','Consistently pays on time'),(3,2,'Fair','Spotty payment record'),(4,1,'Poor','Never pays on time');
/*!40000 ALTER TABLE `s_credit_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_customer`
--

DROP TABLE IF EXISTS `s_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_customer` (
  `ID` int NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PHONE` varchar(25) DEFAULT NULL,
  `ADDRESS` varchar(400) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `COUNTRY_ID` int DEFAULT NULL,
  `ZIP_CODE` varchar(75) DEFAULT NULL,
  `CREDIT_RATING_ID` int DEFAULT NULL,
  `SALES_REP_ID` int DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_customer`
--

LOCK TABLES `s_customer` WRITE;
/*!40000 ALTER TABLE `s_customer` DISABLE KEYS */;
INSERT INTO `s_customer` VALUES (1,'ABC Company',NULL,'514 W Superior St','Kokomo','IN',4,'46901',1,11,NULL),(2,'Stuffz Sporting Goods',NULL,'615 N Sherman Ave','Madison','WI',4,'53704',3,12,NULL),(3,'Nexus',NULL,'100 N Peach St','Philadelphia','PA',4,'19139',1,14,NULL),(6,'Mercury Imports',NULL,'2627 Hudson St','Baltimore','MD',4,'21224',1,13,NULL),(7,'Games Galore',NULL,'3393 Peachtree Rd','Atlanta','GA',4,'30326',2,15,NULL),(8,'Zibbers',NULL,'800 Boylston St','Boston','MA',4,'02199',1,11,NULL),(11,'Perfect Purchase',NULL,'631 San Felipe Road','Hollister','CA',4,'95023-2803',1,12,NULL),(15,'Gifts-N-More',NULL,'2703 T P White Dr','Jacksonville','AR',4,'72076',3,11,NULL),(16,'The Sports Emporium',NULL,'222 E Nepessing St','Lapeer','MI',4,'48446',1,13,NULL),(17,'Value Valley',NULL,'1409 Potomac Ave','Pittsburgh','PA',4,'15216',1,14,'Excellent cusotmer'),(18,'Super Sports Stuff',NULL,'675 Merrimon Ave','Asheville','NC',4,'28804',2,15,NULL),(19,'Gobs of Goods',NULL,'21996 Highway 6','Keystone','CO',4,'80435',1,12,NULL),(20,'Sports Plus',NULL,'2100 S Casino Dr','Laughlin','NV',4,'89029',1,11,NULL),(21,'Shopster',NULL,'5415 W 11th St','Greeley','CO',4,'80634',3,14,NULL),(22,'Sportacular',NULL,'1101 S 119th St','Omaha','NE',4,'68144',1,13,NULL),(23,'Shop-a-lot',NULL,'1621 N 48th St','Lincoln','NE',4,'68504',1,12,NULL),(24,'Max Gear',NULL,'32 Spring St','New York','NY',4,'10012',2,11,NULL),(25,'Simply Sports',NULL,'260 W 44th St','New York','NY',4,'10036',1,14,NULL),(26,'Just Sports',NULL,'176 Perry St','New York','NY',4,'10014',3,15,NULL),(27,'All Sporting Goods',NULL,'9081 Snowden River Pkwy','Columbia','MD',4,'21046',1,13,NULL),(28,'Gatorland Gear',NULL,'12151 S Apopka Vineland Rd','Orlando','FL',4,'32836',1,12,'Largest store in the SE region'),(29,'Wally\'s Mart',NULL,'863 Washington Ave','Miami Beach','FL',4,'33139',3,11,NULL),(30,'Z-Mart',NULL,'501 College Ave','Clemson','SC',4,'29631',2,14,NULL),(31,'Your Choice Sporting Goods',NULL,'330 Mills Ave','Greenville','SC',4,'29605',3,13,'Customer orders small lots'),(32,'Everything Under the Sun',NULL,'1028 E 6th St','Tucson','AZ',4,'85719',1,11,NULL),(33,'Runner\'s World',NULL,'4654 E Speedway Blvd','Tucson','AZ',4,'85712',1,15,NULL),(34,'All Baseball',NULL,'249 E 400 S','Salt Lake City','UT',4,'84111',1,12,NULL),(35,'Football Fanatic',NULL,'712 Paseo Del Pueblo Norte','Taos','NM',4,'87571',1,14,NULL),(36,'Great Gear',NULL,'1500 Barton Springs Rd','Austin','TX',4,'78704',2,13,NULL),(37,'Acme Outfitters',NULL,'3500 Guadalupe St','Austin','TX',4,'78705',3,12,NULL),(38,'Athena\'s Closet',NULL,'1209 Red River St','Austin','TX',4,'78701',1,12,'Very nice to work with'),(39,'BuyMyJunk',NULL,'5610 E Mockingbird Ln','Dallas','TX',4,'75206',3,11,NULL),(40,'Zip City',NULL,'2104 Greenville Ave','Dallas','TX',4,'75206',1,14,NULL),(41,'MoreAndMoreStuffz',NULL,'3501 McKinney Ave','Dallas','TX',4,'75204',2,11,NULL),(42,'Field Importers',NULL,'2111 Norfolk St','Houston','TX',4,'77098',4,12,'Employee-owned'),(43,'Big Bad Sports',NULL,'2920 Hillcroft St','Houston','TX',4,'77057',1,13,NULL),(44,'Father Gym\'s',NULL,'7007 Friars Rd','San Diego','CA',4,'92108',1,14,NULL),(45,'Acme Sporting Goods',NULL,'770 4th Ave','San Diego','CA',4,'92101',3,11,NULL),(46,'Futbol Mundial',NULL,'11677 San Vicente Blvd','Los Angeles','CA',4,'90049',1,12,NULL),(47,'Bikes-n-More',NULL,'735 S Figueroa St','Los Angeles','CA',4,'90017',1,15,'Places very large orders'),(48,'Baxter Bike',NULL,'1001 Broxton Ave','Los Angeles','CA',4,'90024',2,13,NULL),(49,'Westwind Sports',NULL,'531 Cowper St','Palo Alto','CA',4,'94301',2,14,NULL),(50,'Athletes Anonymous',NULL,'5801 College Ave','Oakland','CA',4,'94618',4,12,'Inconsistent payments'),(51,'Hot Stuff',NULL,'25613 Dollar St','Hayward','CA',4,'94544',1,11,NULL),(52,'Madison Street Sports',NULL,'1401 E Madison St','Seattle','WA',4,'98122',4,13,NULL),(53,'Aubrey\'s Sporting Goods',NULL,'4918 Rainier Ave S','Seattle','WA',4,'98118',1,15,NULL),(54,'Duck Duck Goose',NULL,'226 NW Davis St','Portland','OR',4,'97209',1,12,NULL),(55,'Gavin Sporting Goods',NULL,'1935 SE Hawthorne Blvd','Portland','OR',4,'97214',1,11,NULL),(56,'Fish-for-fun',NULL,'1812 Hayes St','Nashville','TN',4,'37203',2,12,'High shipping cossts'),(57,'Matt\'s Market',NULL,'15 Arcade','Nashville','TN',4,'37219',1,12,NULL),(58,'Sport Traders',NULL,'334 Massachusetts Ave','Indianapolis','IN',4,'46204',1,13,NULL),(59,'Brickyard Bonanza',NULL,'1508 W 86th St','Indianapolis','IN',4,'46260',2,14,'Specializes in Accessories'),(60,'Barry\'s Basketball',NULL,'56 E Superior St','Chicago','IL',4,'60611',1,11,NULL),(61,'Buy Me Some Peanuts',NULL,'619 N Wabash Ave','Chicago','IL',4,'60611',4,12,'Has difficulty paying on time'),(62,'Schindler\'s Sports',NULL,'4479 Forest Park Ave','St Louis','MO',4,'63108',2,11,NULL),(63,'Olive Sports',NULL,'1107 Olive St','St Louis','MO',4,'63101',2,14,NULL),(64,'Blue Field Sports',NULL,'730 W Idaho St','Boise','ID',4,'83702',1,12,NULL),(65,'Wally\'s Weights',NULL,'4320 W State St','Boise','ID',4,'83703',1,13,NULL),(66,'Blue Bird Baseball',NULL,'1835 NW Topeka Blvd','Topeka','KS',4,'66608',1,15,'Under new management'),(67,'Bicycle World',NULL,'5300 SW 17th St','Topeka','KS',4,'66604',2,11,NULL),(68,'Buckeye Emporium',NULL,'265 W 11th Ave','Columbus','OH',4,'43201',1,12,NULL),(69,'Soccer-N-More',NULL,'1749 W 5th Ave','Columbus','OH',4,'43212',4,14,NULL),(70,'Ball and Glove',NULL,'14527 Madison Ave','Cleveland','OH',4,'44107',1,12,NULL),(71,'Superior Bicycle',NULL,'538 Superior Ave E','Cleveland','OH',4,'44114',1,11,NULL),(72,'The Sandlot',NULL,'4812 Rising Sun Ave','Philadelphia','PA',4,'19120',1,13,NULL),(73,'Philly Importers',NULL,'4812 Rising Sun Ave','Philadelphia','PA',4,'19120',2,12,NULL),(99,'Broad Street Baseball',NULL,'2617 W Broad St','Richmond','VA',4,'23220',1,15,NULL),(100,'Kidz Bikes',NULL,'3910 Colley Ave','Norfolk','VA',4,'23508',1,11,NULL),(101,'Smooth Ride',NULL,'1717 Harrison St','San Francisco','CA',4,'94103',1,12,NULL),(102,'Geary Blvd Store',NULL,'2675 Geary Blvd','San Francisco','CA',4,'94118',1,13,NULL),(103,'Colma Bicycle',NULL,'200 Colma Blvd','Colma','CA',4,'94014',1,14,'New Venture'),(104,'Ridearound',NULL,'3700 Mandela Pkwy','Oakland','CA',4,'94608',2,13,NULL),(105,'Saucy Bikes',NULL,'180 Donahue St','Sausalito','CA',4,'94965',1,13,NULL),(106,'Hooligans',NULL,'700 Du Bois St','San Rafael','CA',4,'94901',1,15,NULL),(201,'Unisports','55-2066101','72 Via Bahia','Sao Paulo',NULL,1,NULL,1,12,'Customer usually orders large amounts and has a high order total.  This is okay as long as the credit rating remains excellent.'),(202,'Simms Athletics','81-20101','Takashi','Osaka',NULL,2,NULL,4,14,'Customer should always pay by cash until his credit rating improves.'),(203,'Delhi Sports','91-10351','Chanakya','New Delhi',NULL,3,NULL,2,14,'Customer specializes in baseball equipment and is the largest retailer in India.'),(204,'Womansport','1-206-104-0103','281 King Street','Seattle','WA',4,'98101',3,11,NULL),(205,'Kam\'s Sporting Goods','852-3692888','95 Queensway','Hong Kong',NULL,5,NULL,1,15,NULL),(206,'Sportique','33-2257201','4 Rue Chabaud','Cannes',NULL,6,NULL,1,15,'Customer specializes in Soccer.  Likes to order accessories in bright colors.'),(207,'Sweet Rock Sports','234-6036201','6 Saint Antoine','Lagos',NULL,7,NULL,2,NULL,NULL),(208,'Muench Sports','49-527454','Marktplatz','Stuttgart',NULL,8,NULL,3,15,'Customer usually pays small orders by cash and large orders on credit.'),(209,'Beisbol Si!','809-352689',NULL,'San Pedro de Macon\'s',NULL,9,NULL,1,11,NULL),(210,'Futbol Sonora','52-404562','256 W Sage Street','Nogales',NULL,10,NULL,1,12,'Customer is difficult to reach by phone.  Try mail.'),(211,'Kuhn\'s Sports','42-111292','7 Modrany','Prague',NULL,11,NULL,2,15,NULL),(212,'Hamada Sport','20-1209211',NULL,'Alexandria',NULL,12,NULL,4,13,'Customer orders sea and water equipment.'),(213,'Big John\'s Sports Emporium','1-415-555-6281','4783 18th Street','San Francisco','CA',4,'94117',1,11,'Customer has a dependable credit record.'),(214,'Ojibway Retail','1-716-555-7171','415 Main Street','Buffalo','NY',4,'14202',3,11,NULL),(215,'Sporta Russia','7-3892456','100 Nevskiy prospekt','Saint Petersburg',NULL,13,NULL,4,15,'This customer is very friendly, but has difficulty paying bills.  Insist upon cash.');
/*!40000 ALTER TABLE `s_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_dept`
--

DROP TABLE IF EXISTS `s_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_dept` (
  `ID` int NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `REGION_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_DEPT_NAME_REGION_ID_UK` (`NAME`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_dept`
--

LOCK TABLES `s_dept` WRITE;
/*!40000 ALTER TABLE `s_dept` DISABLE KEYS */;
INSERT INTO `s_dept` VALUES (50,'Administration',1),(10,'Finance',1),(41,'Operations',1),(42,'Operations',2),(43,'Operations',3),(44,'Operations',4),(45,'Operations',5),(31,'Sales',1),(32,'Sales',2),(33,'Sales',3),(34,'Sales',4),(35,'Sales',5);
/*!40000 ALTER TABLE `s_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emp`
--

DROP TABLE IF EXISTS `s_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_emp` (
  `ID` int NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `FIRST_NAME` varchar(25) DEFAULT NULL,
  `USERID` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  `TITLE_ID` double DEFAULT NULL,
  `DEPT_ID` int DEFAULT NULL,
  `SALARY` decimal(11,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_EMP_USERID_UK` (`USERID`),
  KEY `S_EMP_DEPT_ID_FK` (`DEPT_ID`),
  KEY `S_EMP_MANAGER_ID_FK` (`MANAGER_ID`),
  CONSTRAINT `S_EMP_DEPT_ID_FK` FOREIGN KEY (`DEPT_ID`) REFERENCES `s_dept` (`ID`),
  CONSTRAINT `S_EMP_MANAGER_ID_FK` FOREIGN KEY (`MANAGER_ID`) REFERENCES `s_emp` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emp`
--

LOCK TABLES `s_emp` WRITE;
/*!40000 ALTER TABLE `s_emp` DISABLE KEYS */;
INSERT INTO `s_emp` VALUES (1,'Velasquez','Carmen','cvelasqu','cvelasqu@summit.com','2010-03-03 00:00:00',NULL,NULL,1,50,2500.00,NULL),(2,'Ngao','LaDoris','lngao','lngao@summit.com','2010-03-08 00:00:00',NULL,1,5,41,1450.00,NULL),(3,'Nagayama','Midori','mnagayam','mnagayam@summit.com','2010-06-17 00:00:00',NULL,1,6,31,1400.00,NULL),(4,'Quick-To-See','Mark','mquickto','mquickto@summit.com','2010-06-17 00:00:00',NULL,1,5,10,1450.00,NULL),(5,'Ropeburn','Audry','aropebur','aropebur@summit.com','2010-06-17 00:00:00',NULL,1,4,50,1550.00,NULL),(6,'Urguhart','Molly','murguhar','murguhar@summit.com','2011-01-18 00:00:00',NULL,2,8,41,1200.00,NULL),(7,'Menchu','Roberta','rmenchu','rmenchu@summit.com','2010-05-14 00:00:00',NULL,2,8,42,1250.00,NULL),(8,'Biri','Ben','bbiri','bbiri@summit.com','2011-04-07 00:00:00',NULL,2,8,43,1100.00,NULL),(9,'Catchpole','Antoinette','acatchpo','acatchpo@summit.com','2011-02-09 00:00:00',NULL,2,8,44,1300.00,NULL),(10,'Havel','Marta','mhavel','mhavel@summit.com','2011-02-27 00:00:00',NULL,2,8,45,1307.00,NULL),(11,'Magee','Colin','cmagee','cmagee@summit.com','2010-05-14 00:00:00',NULL,3,2,31,1400.00,10.00),(12,'Giljum','Henry','hgiljum','hgiljum@summit.com','2011-02-18 00:00:00',NULL,3,2,41,1490.00,12.50),(13,'Sedeghi','Yasmin','ysedeghi','ysedeghi@summit.com','2011-02-18 00:00:00',NULL,3,2,33,1515.00,10.00),(14,'Nguyen','Mai','mnguyen','mnguyen@summit.com','2012-01-22 00:00:00',NULL,3,2,34,1525.00,15.00),(15,'Dumas','Andre','adumas','adumas@summit.com','2010-10-09 00:00:00',NULL,3,2,35,1450.00,17.50),(16,'Maduro','Elena','emaduro','emaduro@summit.com','2011-02-18 00:00:00',NULL,6,3,41,1400.00,NULL),(17,'Smith','George','gsmith','gsmith@summit.com','2011-03-08 00:00:00',NULL,6,3,41,940.00,NULL),(18,'Nozaki','Akira','anozaki','anozaki@summit.com','2012-02-09 00:00:00',NULL,7,3,42,1200.00,NULL),(19,'Patel','Vikram','vpatel','vpatel@summit.com','2012-02-09 00:00:00',NULL,7,3,42,795.00,NULL),(20,'Newman','Chad','cnewman','cnewman@summit.com','2011-07-21 00:00:00',NULL,8,3,43,750.00,NULL),(21,'Markarian','Alexander','amarkari','amarkari@summit.com','2011-05-26 00:00:00',NULL,8,3,43,850.00,NULL),(22,'Chang','Eddie','echang','echang@summit.com','2011-11-30 00:00:00',NULL,9,3,44,800.00,NULL),(23,'Patel','Radha','rpatel','rpatel@summit.com','2011-10-17 00:00:00',NULL,9,3,34,795.00,NULL),(24,'Dancs','Bela','bdancs','bdancs@summit.com','2011-03-17 00:00:00',NULL,10,3,45,860.00,NULL),(25,'Schwartz','Sylvie','sschwart','sschwart@summit.com','2012-05-09 00:00:00',NULL,10,3,45,1100.00,NULL);
/*!40000 ALTER TABLE `s_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_image`
--

DROP TABLE IF EXISTS `s_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_image` (
  `ID` int NOT NULL,
  `FORMAT` varchar(25) DEFAULT NULL,
  `USE_FILENAME` varchar(1) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `IMAGE` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_image`
--

LOCK TABLES `s_image` WRITE;
/*!40000 ALTER TABLE `s_image` DISABLE KEYS */;
INSERT INTO `s_image` VALUES (1001,'JPG','Y','bunboot.jpg',NULL),(1002,'JPG','Y','aceboot.jpg',NULL),(1003,'JPG','Y','proboot.jpg',NULL),(1011,'JPG','Y','bunpole.jpg',NULL),(1012,'JPG','Y','acepole.jpg',NULL),(1013,'JPG','Y','propole.jpg',NULL),(1119,'JPG','Y','baseball.jpg',NULL),(1223,'JPG','Y','chaphelm.jpg',NULL),(1291,'JPG','Y','gpbike.jpg',NULL),(1296,'JPG','Y','himbike.jpg',NULL),(1367,'JPG','Y','grglove.jpg',NULL),(1368,'JPG','Y','alglove.jpg',NULL),(1369,'JPG','Y','stglove.jpg',NULL),(1381,'JPG','Y','probar.jpg',NULL),(1382,'JPG','Y','curlbar.jpg',NULL),(1480,'JPG','Y','cabbat.jpg',NULL),(1482,'JPG','Y','pucbat.jpg',NULL),(1486,'JPG','Y','winbat.jpg',NULL),(1829,'JPG','Y','safthelm.jpg',NULL),(2000,'JPG','Y','jrsoccerball.jpg',NULL),(2001,'JPG','Y','worldcupsoccerball.jpg',NULL),(2002,'JPG','Y','soccernet.jpg',NULL),(2003,'JPG','Y','kneepads.jpg',NULL),(2004,'JPG','Y','elbowpads.jpg',NULL),(2005,'JPG','Y','roadbiketire.jpg',NULL),(2006,'JPG','Y','mountainbiketire.jpg',NULL),(2007,'JPG','Y','tirepump.jpg',NULL),(2008,'JPG','Y','waterbottle.jpg',NULL),(2009,'JPG','Y','10lbweight.jpg',NULL);
/*!40000 ALTER TABLE `s_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_inventory`
--

DROP TABLE IF EXISTS `s_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_inventory` (
  `PRODUCT_ID` int NOT NULL,
  `WAREHOUSE_ID` int NOT NULL,
  `AMOUNT_IN_STOCK` bigint DEFAULT NULL,
  `REORDER_POINT` bigint DEFAULT NULL,
  `MAX_IN_STOCK` bigint DEFAULT NULL,
  `OUT_OF_STOCK_EXPLANATION` varchar(255) DEFAULT NULL,
  `RESTOCK_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`,`WAREHOUSE_ID`),
  KEY `S_INVENTORY_WAREHOUSE_ID_FK` (`WAREHOUSE_ID`),
  CONSTRAINT `S_INVENTORY_PRODUCT_ID_FK` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `s_product` (`ID`),
  CONSTRAINT `S_INVENTORY_WAREHOUSE_ID_FK` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `s_warehouse` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_inventory`
--

LOCK TABLES `s_inventory` WRITE;
/*!40000 ALTER TABLE `s_inventory` DISABLE KEYS */;
INSERT INTO `s_inventory` VALUES (10011,101,650,625,1100,NULL,NULL),(10011,106,180,75,125,NULL,NULL),(10011,111,55,20,75,NULL,NULL),(10011,112,379,100,350,NULL,NULL),(10012,101,600,560,1000,NULL,NULL),(10012,104,625,550,900,NULL,NULL),(10012,106,450,375,600,NULL,NULL),(10012,109,100,40,110,NULL,NULL),(10012,111,526,450,600,NULL,NULL),(10012,112,50,60,100,NULL,NULL),(10012,501,300,300,525,NULL,NULL),(10013,101,400,400,700,NULL,NULL),(10013,106,125,70,200,NULL,NULL),(10013,111,110,50,90,NULL,NULL),(10013,112,45,45,75,NULL,NULL),(10013,501,314,300,525,NULL,NULL),(10021,101,500,425,740,NULL,NULL),(10021,103,326,275,400,NULL,NULL),(10021,111,90,25,100,NULL,NULL),(10021,112,48,80,100,NULL,NULL),(10022,101,360,200,350,NULL,NULL),(10022,107,549,520,600,NULL,NULL),(10022,109,50,30,70,NULL,NULL),(10022,112,350,200,325,NULL,NULL),(10022,501,502,300,525,NULL,NULL),(10023,101,400,300,525,NULL,NULL),(10023,105,391,200,325,NULL,NULL),(10023,109,621,600,700,NULL,NULL),(10023,501,500,300,525,NULL,NULL),(20106,101,993,625,1000,NULL,NULL),(20106,102,125,70,150,NULL,NULL),(20106,104,33,50,100,NULL,NULL),(20106,201,220,150,260,NULL,NULL),(20106,501,150,100,175,NULL,NULL),(20108,101,700,700,1225,NULL,NULL),(20108,102,525,510,600,NULL,NULL),(20108,104,99,40,150,NULL,NULL),(20108,201,166,150,260,NULL,NULL),(20108,501,222,200,350,NULL,NULL),(20201,101,802,800,1400,NULL,NULL),(20201,102,222,150,250,NULL,NULL),(20201,103,333,300,375,NULL,NULL),(20201,107,25,10,50,NULL,NULL),(20201,108,360,300,400,NULL,NULL),(20201,201,320,200,350,NULL,NULL),(20201,501,275,200,350,NULL,NULL),(20510,101,1389,850,1400,NULL,NULL),(20510,107,400,500,600,NULL,NULL),(20510,108,110,100,150,NULL,NULL),(20510,201,175,100,175,NULL,NULL),(20510,301,69,40,100,NULL,NULL),(20510,401,88,50,100,NULL,NULL),(20510,501,57,50,87,NULL,NULL),(20512,101,850,850,1450,NULL,NULL),(20512,103,51,30,70,NULL,NULL),(20512,104,35,10,75,NULL,NULL),(20512,201,162,100,175,NULL,NULL),(20512,301,28,20,50,NULL,NULL),(20512,401,75,75,140,NULL,NULL),(20512,501,62,50,87,NULL,NULL),(30321,101,2000,1500,2500,NULL,NULL),(30321,201,96,80,140,NULL,NULL),(30321,301,85,80,140,NULL,NULL),(30321,401,102,80,140,NULL,NULL),(30321,501,194,150,275,NULL,NULL),(30326,101,2100,2000,3500,NULL,NULL),(30326,201,147,120,210,NULL,NULL),(30326,401,113,80,140,NULL,NULL),(30326,501,277,250,440,NULL,NULL),(30421,101,1822,1800,3150,NULL,NULL),(30421,102,335,200,300,NULL,NULL),(30421,108,200,120,220,NULL,NULL),(30421,111,25,26,80,NULL,NULL),(30421,201,102,80,140,NULL,NULL),(30421,301,102,80,140,NULL,NULL),(30421,401,85,80,140,NULL,NULL),(30421,501,190,150,275,NULL,NULL),(30426,101,2250,2000,3500,NULL,NULL),(30426,108,225,200,250,NULL,NULL),(30426,111,510,570,600,NULL,NULL),(30426,201,220,120,210,NULL,NULL),(30426,401,150,80,140,NULL,NULL),(30426,501,491,250,450,NULL,NULL),(30433,101,650,600,1050,NULL,NULL),(30433,104,920,875,950,NULL,NULL),(30433,108,240,250,300,NULL,NULL),(30433,201,130,130,230,NULL,NULL),(30433,301,37,20,35,NULL,NULL),(30433,501,273,200,350,NULL,NULL),(32779,101,2120,1250,2200,NULL,NULL),(32779,103,0,25,100,'Supplier missed shipment',NULL),(32779,109,350,200,275,NULL,NULL),(32779,110,275,220,300,NULL,NULL),(32779,201,180,150,260,NULL,NULL),(32779,301,102,95,175,NULL,NULL),(32779,401,135,100,175,NULL,NULL),(32779,501,280,200,350,NULL,NULL),(32861,101,505,500,875,NULL,NULL),(32861,104,126,75,150,NULL,NULL),(32861,109,550,620,700,NULL,NULL),(32861,110,320,320,350,NULL,NULL),(32861,201,132,80,140,NULL,NULL),(32861,301,57,50,100,NULL,NULL),(32861,401,250,150,250,NULL,NULL),(32861,501,288,200,350,NULL,NULL),(40421,101,578,350,600,NULL,NULL),(40421,102,126,80,175,NULL,NULL),(40421,110,150,100,175,NULL,NULL),(40421,301,70,40,70,NULL,NULL),(40421,401,47,40,70,NULL,NULL),(40421,501,97,80,140,NULL,NULL),(40422,102,1,10,50,NULL,NULL),(40422,105,925,850,950,NULL,NULL),(40422,110,0,30,50,'Supplier Issues',NULL),(40422,301,65,40,70,NULL,NULL),(40422,401,50,40,70,NULL,NULL),(40422,501,90,80,140,NULL,NULL),(41010,101,250,250,437,NULL,NULL),(41010,103,451,400,475,NULL,NULL),(41010,106,750,820,900,NULL,NULL),(41010,107,333,250,350,NULL,NULL),(41010,110,125,100,150,NULL,NULL),(41010,301,59,40,70,NULL,NULL),(41010,401,80,70,220,NULL,NULL),(41010,501,151,140,245,NULL,NULL),(41020,101,471,450,750,NULL,NULL),(41020,301,61,40,70,NULL,NULL),(41020,401,91,70,220,NULL,NULL),(41020,501,224,140,245,NULL,NULL),(41050,101,501,450,750,NULL,NULL),(41050,102,451,375,500,NULL,NULL),(41050,301,49,40,70,NULL,NULL),(41050,401,169,70,220,NULL,NULL),(41050,501,157,140,245,NULL,NULL),(41080,101,400,400,700,NULL,NULL),(41080,102,555,500,600,NULL,NULL),(41080,301,50,40,70,NULL,NULL),(41080,401,100,70,220,NULL,NULL),(41080,501,159,140,245,NULL,NULL),(41100,101,350,350,600,NULL,NULL),(41100,108,125,90,200,NULL,NULL),(41100,301,42,40,70,NULL,NULL),(41100,401,75,70,220,NULL,NULL),(41100,501,141,140,245,NULL,NULL),(50169,101,2530,1500,2600,NULL,NULL),(50169,104,321,275,350,NULL,NULL),(50169,201,225,220,385,NULL,NULL),(50169,401,240,200,350,NULL,NULL),(50273,105,55,20,100,NULL,NULL),(50273,107,444,360,600,NULL,NULL),(50273,109,521,460,700,NULL,NULL),(50273,113,233,200,350,NULL,NULL),(50273,201,75,60,100,NULL,NULL),(50273,401,224,150,280,NULL,NULL),(50417,103,930,850,940,NULL,NULL),(50417,113,518,500,875,NULL,NULL),(50417,201,82,60,100,NULL,NULL),(50417,401,130,120,210,NULL,NULL),(50418,103,110,80,150,NULL,NULL),(50418,107,125,60,200,NULL,NULL),(50418,109,169,140,200,NULL,NULL),(50418,113,244,100,275,NULL,NULL),(50418,201,98,60,100,NULL,NULL),(50418,401,156,100,175,NULL,NULL),(50419,103,126,70,150,NULL,NULL),(50419,106,720,700,900,NULL,NULL),(50419,113,230,120,310,NULL,NULL),(50419,201,77,60,100,NULL,NULL),(50419,401,151,150,280,NULL,NULL),(50530,103,33,50,100,NULL,NULL),(50530,105,137,80,140,NULL,NULL),(50530,113,669,400,700,NULL,NULL),(50530,201,62,60,100,NULL,NULL),(50530,401,119,100,175,NULL,NULL),(50532,105,100,40,110,NULL,NULL),(50532,106,325,290,400,NULL,NULL),(50532,112,50,15,75,NULL,NULL),(50532,201,67,60,100,NULL,NULL),(50532,401,233,200,350,NULL,NULL),(50536,105,70,90,150,NULL,NULL),(50536,107,150,99,175,NULL,NULL),(50536,112,120,50,150,NULL,NULL),(50536,113,180,100,175,NULL,NULL),(50536,201,97,60,100,NULL,NULL),(50536,401,138,100,175,NULL,NULL);
/*!40000 ALTER TABLE `s_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_item`
--

DROP TABLE IF EXISTS `s_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_item` (
  `ORD_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `PRICE` decimal(11,2) DEFAULT NULL,
  `QUANTITY` bigint DEFAULT NULL,
  `QUANTITY_SHIPPED` bigint DEFAULT NULL,
  PRIMARY KEY (`ORD_ID`,`ITEM_ID`),
  UNIQUE KEY `S_ITEM_ORDID_PRODID_UK` (`ORD_ID`,`PRODUCT_ID`),
  KEY `S_ITEM_PRODUCT_ID_FK` (`PRODUCT_ID`),
  CONSTRAINT `S_ITEM_ORD_ID_FK` FOREIGN KEY (`ORD_ID`) REFERENCES `s_ord` (`ID`),
  CONSTRAINT `S_ITEM_PRODUCT_ID_FK` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `s_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_item`
--

LOCK TABLES `s_item` WRITE;
/*!40000 ALTER TABLE `s_item` DISABLE KEYS */;
INSERT INTO `s_item` VALUES (97,0,20106,9.00,1000,1000),(97,1,30321,1500.00,50,50),(98,0,40421,85.00,7,7),(99,0,20512,8.00,25,25),(99,1,20510,9.00,18,18),(100,0,10011,135.00,50,50),(100,1,10021,14.00,500,500),(101,0,30421,16.00,15,15),(101,1,41010,8.00,20,20),(102,0,20108,28.00,100,100),(102,1,20201,123.00,45,45),(103,0,30433,20.00,15,15),(104,0,20510,9.00,7,7),(104,1,20512,8.00,12,12),(105,0,50273,22.89,16,16),(106,0,50419,80.00,27,27),(106,1,20108,28.00,46,46),(107,0,20106,11.00,50,50),(107,1,30421,16.00,55,55),(108,0,41080,35.00,50,50),(108,1,20510,9.00,9,9),(109,0,10011,140.00,150,150),(109,1,32861,60.00,50,50),(110,0,50273,22.89,17,17),(111,0,40421,65.00,27,27),(111,1,41080,35.00,29,29),(112,0,20106,11.00,50,50),(113,0,20510,9.00,53,53),(114,0,10023,40.95,17,17),(114,1,20108,28.00,80,80),(115,0,40421,65.00,49,49),(115,1,30433,20.00,30,30),(116,0,20106,11.00,16,16),(116,1,30421,16.00,21,21),(117,0,20106,11.00,45,45),(117,1,10022,21.95,18,18),(118,0,20108,28.00,19,19),(118,1,10023,40.95,20,20),(119,0,30326,582.00,19,19),(119,1,20106,11.00,15,15),(120,0,30426,18.25,94,94),(120,1,50532,47.00,16,16),(121,1,20512,8.00,27,27),(122,0,20108,28.00,18,18),(122,1,20106,11.00,54,54),(123,0,30321,1669.00,70,70),(123,1,20106,11.00,17,17),(124,0,41050,25.00,87,87),(124,1,30421,16.00,13,13),(125,1,40422,50.00,38,38),(126,0,20510,9.00,18,18),(126,1,10021,16.25,22,22),(127,1,30321,1669.00,20,20),(128,0,10023,40.95,36,36),(128,1,50419,80.00,22,22),(129,0,20106,11.00,92,92),(129,1,10023,40.95,19,19),(130,0,50273,22.89,20,20),(130,1,10023,40.95,18,18),(131,1,20106,11.00,12,12),(132,0,20512,8.00,13,13),(132,1,20106,11.00,18,18),(133,0,10022,21.95,22,22),(133,1,30326,582.00,62,62),(134,0,10022,21.95,15,15),(134,1,20106,11.00,20,20),(135,0,10021,16.25,94,94),(135,1,50419,80.00,20,20),(136,0,20108,28.00,22,22),(137,1,20106,11.00,20,20),(138,1,10021,16.25,20,20),(139,0,10022,21.95,16,16),(139,1,10023,40.95,16,16),(140,0,10022,21.95,58,58),(140,1,10021,16.25,20,20),(141,0,41100,45.00,34,34),(141,1,20106,11.00,58,58),(142,0,10023,40.95,21,21),(142,1,30426,18.25,12,12),(143,0,10022,21.95,20,20),(143,1,32861,60.00,12,12),(144,0,10023,40.95,19,19),(144,1,50273,22.89,22,22),(145,1,40422,50.00,77,77),(146,0,41010,8.00,13,13),(146,1,30426,18.25,23,23),(147,0,10022,21.95,96,96),(148,1,50273,22.89,17,17),(149,0,10021,16.25,11,11),(149,1,10022,21.95,49,49),(150,0,20106,11.00,14,14),(150,1,20201,123.00,14,14),(151,0,10023,40.95,20,20),(151,1,10022,21.95,21,21),(152,1,10022,21.95,22,22),(153,1,20106,11.00,32,32),(154,0,50169,4.29,12,12),(154,1,41050,25.00,78,78),(155,0,10022,21.95,40,40),(155,1,10023,40.95,19,19),(156,0,10022,21.95,36,36),(156,1,50169,4.29,18,18),(157,0,20106,11.00,11,11),(157,1,10022,21.95,16,16),(158,0,10023,40.95,40,40),(158,1,50418,75.00,92,92),(159,0,20108,28.00,83,83),(159,1,20510,9.00,70,70),(160,0,41020,12.00,22,22),(161,0,20106,11.00,18,18),(161,1,10021,16.25,20,20),(162,0,10023,40.95,18,18),(162,1,20106,11.00,100,100),(163,0,20512,8.00,17,17),(163,1,20106,11.00,12,12),(164,0,10021,16.25,15,15),(164,1,10022,21.95,16,16),(165,0,10022,21.95,17,17),(165,1,10021,16.25,16,16),(166,0,50169,4.29,96,96),(166,1,20510,9.00,16,16),(167,0,41010,8.00,95,95),(167,1,20106,11.00,14,14),(168,0,10023,40.95,16,16),(169,0,50419,80.00,19,19),(169,1,10022,21.95,22,22),(170,0,32779,7.00,14,14),(170,1,50532,47.00,18,18),(171,0,30433,20.00,13,13),(171,1,10023,40.95,82,82),(172,0,10021,16.25,77,77),(172,1,10022,21.95,83,83),(173,0,50530,45.00,11,11),(173,1,10023,40.95,15,15),(174,0,10023,40.95,95,95),(174,1,50530,45.00,16,16),(175,1,41010,8.00,19,19),(176,0,20106,11.00,14,14),(177,0,10021,16.25,16,16),(177,1,30421,16.00,16,16),(178,0,20106,11.00,13,13),(178,1,50417,80.00,22,22),(179,0,10023,40.95,18,18),(180,0,41080,35.00,22,22),(180,1,10023,40.95,14,14),(181,1,10023,40.95,58,58),(182,0,10021,16.25,17,17),(182,1,50273,22.89,95,95),(183,0,10022,21.95,29,29),(183,1,30321,1669.00,21,21),(184,0,30326,582.00,48,48),(184,1,20512,8.00,45,45),(185,0,30421,16.00,14,14),(186,0,41020,12.00,17,17),(186,1,30326,582.00,56,56),(187,0,10023,40.95,94,94),(187,1,10022,21.95,20,20),(188,0,20106,11.00,44,44),(188,1,10022,21.95,79,79),(189,0,30426,18.25,12,12),(189,1,10023,40.95,36,36),(190,0,30421,16.00,60,60),(190,1,20108,28.00,44,44),(240,0,41010,8.00,17,17),(240,1,20106,11.00,18,18);
/*!40000 ALTER TABLE `s_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_item_audit`
--

DROP TABLE IF EXISTS `s_item_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_item_audit` (
  `A` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_item_audit`
--

LOCK TABLES `s_item_audit` WRITE;
/*!40000 ALTER TABLE `s_item_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_item_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_longtext`
--

DROP TABLE IF EXISTS `s_longtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_longtext` (
  `ID` int NOT NULL,
  `USE_FILENAME` varchar(1) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `TEXT` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_longtext`
--

LOCK TABLES `s_longtext` WRITE;
/*!40000 ALTER TABLE `s_longtext` DISABLE KEYS */;
INSERT INTO `s_longtext` VALUES (517,NULL,NULL,NULL),(518,'N',NULL,'Perfect for the beginner.  Rear entry (easy to put on with only one buckle), weight control adjustment on side of boot for easy access, comes in a wide variety of colors to match every outfit.'),(519,'N',NULL,'If you have mastered the basic techniques you are ready for the Ace Ski Boot.  This intermediate boot comes as a package with self adjustable bindings that will adapt to your skill and speed. The boot is designed for extra grip on slopes and jumps.'),(520,'N',NULL,'The Pro ski boot is an advanced boot that combines high tech and comfort.  It\'s made of fibre that will mould to your foot with body heat.  If you\'re after perfection, don\'t look any further: this is it!'),(527,NULL,NULL,NULL),(528,'N',NULL,'Lightweight aluminum pole, comes in a variety of sizes and neon colors.  Comfortable adjustable straps.'),(529,NULL,NULL,NULL),(530,NULL,NULL,NULL),(557,NULL,NULL,NULL),(587,NULL,NULL,NULL),(607,NULL,NULL,NULL),(613,NULL,NULL,NULL),(615,NULL,NULL,NULL),(676,NULL,NULL,NULL),(708,NULL,NULL,NULL),(780,NULL,NULL,NULL),(828,NULL,NULL,NULL),(833,NULL,NULL,NULL),(924,NULL,NULL,NULL),(925,NULL,NULL,NULL),(926,NULL,NULL,NULL),(927,NULL,NULL,NULL),(928,NULL,NULL,NULL),(929,NULL,NULL,NULL),(933,'N',NULL,'The widest, strongest, and knobbiest tires for mountain bike enthusiasts.  Guaranteed to withstand pummelling that will reduce most bicycles (except for the Himalayan) to scrap iron.  These tires can carry you to places where nobody would want to bicycle.  Sizes to fit all makes of mountain bike including wide and super wide rims.  Steel-banded radial models are also available by direct factory order.'),(940,NULL,NULL,NULL),(1017,'N',NULL,'Protective knee pads for any number of physical activities including bicycling and skating (4-wheel, in-line, and ice).  Also provide support for stress activities such as weight-lifting.  Velcro belts allow easy adjustment for any size and snugness of fit.  Hardened plastic shell comes in a variety of colors, so you can buy a pair to match every outfit.  Can also be worn at the beach to cover particularly ugly knees.'),(1019,'N',NULL,'Protective elbow pads for any number of physical activities including bicycling and skating (4-wheel, in-line, and ice).  Also provide support for stress activities such as weight-lifting.  Velcro belts allow easy adjustment for any size and snugness of fit.  Hardened plastic shell comes in a variety of colors, so you can buy a pair to match every outfit.'),(1037,NULL,NULL,NULL),(1039,NULL,NULL,NULL),(1043,NULL,NULL,NULL),(1286,'N',NULL,'Don\'t slack off--try the Slaker Water Bottle.  With its 1 quart capacity, this is the only water bottle you\'ll need.  It\'s lightweight, durable, and guaranteed for life to be leak proof.  It comes with a convenient velcro strap so it can be conveniently attached to your bike or other sports equipment.'),(1368,NULL,NULL,NULL);
/*!40000 ALTER TABLE `s_longtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_ord`
--

DROP TABLE IF EXISTS `s_ord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_ord` (
  `ID` int NOT NULL,
  `CUSTOMER_ID` int NOT NULL,
  `DATE_ORDERED` datetime DEFAULT NULL,
  `DATE_SHIPPED` datetime DEFAULT NULL,
  `SALES_REP_ID` int DEFAULT NULL,
  `TOTAL` decimal(11,2) DEFAULT NULL,
  `PAYMENT_TYPE_ID` int DEFAULT NULL,
  `PAYMENT_OPTION_ID` int DEFAULT NULL,
  `ORDER_FILLED` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `S_ORD_CUSTOMER_ID_FK` (`CUSTOMER_ID`),
  KEY `S_ORD_SALES_REP_ID_FK` (`SALES_REP_ID`),
  KEY `S_ORD_PAYMENT_TYPE_FK` (`PAYMENT_TYPE_ID`),
  CONSTRAINT `S_ORD_CUSTOMER_ID_FK` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `s_customer` (`ID`),
  CONSTRAINT `S_ORD_PAYMENT_TYPE_FK` FOREIGN KEY (`PAYMENT_TYPE_ID`) REFERENCES `s_payment_type` (`ID`),
  CONSTRAINT `S_ORD_SALES_REP_ID_FK` FOREIGN KEY (`SALES_REP_ID`) REFERENCES `s_emp` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_ord`
--

LOCK TABLES `s_ord` WRITE;
/*!40000 ALTER TABLE `s_ord` DISABLE KEYS */;
INSERT INTO `s_ord` VALUES (97,201,'2023-12-29 13:29:22','2023-12-31 13:29:22',12,84000.00,2,1072,'Y'),(98,202,'2023-08-07 13:29:22','2023-08-27 13:29:22',14,595.00,1,NULL,'Y'),(99,203,'2023-12-20 13:29:22','2023-12-23 13:29:22',14,7707.00,2,1074,'Y'),(100,204,'2023-10-08 13:29:22','2023-10-12 13:29:22',11,601100.00,2,1075,'Y'),(101,205,'2023-12-29 13:29:22',NULL,14,8056.60,2,1076,'N'),(102,206,'2023-11-09 13:29:22','2023-11-13 13:29:22',15,8335.00,1,NULL,'Y'),(103,208,'2023-12-01 13:29:22','2023-12-15 13:29:22',15,377.00,1,NULL,'Y'),(104,208,'2023-12-08 13:29:22','2023-12-10 13:29:22',15,32430.00,2,1079,'Y'),(105,209,'2023-11-27 13:29:22','2023-12-02 13:29:22',11,2722.24,2,1080,'Y'),(106,210,'2023-12-03 13:29:22','2023-12-06 13:29:22',12,15634.00,2,1081,'Y'),(107,211,'2023-10-29 13:29:22','2023-10-30 13:29:22',15,142171.00,2,1082,'Y'),(108,212,'2023-11-20 13:29:22','2023-11-22 13:29:22',13,149570.00,2,1083,'Y'),(109,213,'2023-12-03 13:29:22','2023-12-05 13:29:22',11,1020935.00,2,1084,'Y'),(110,214,'2023-10-19 13:29:22','2023-10-21 13:29:22',11,1539.13,1,NULL,'Y'),(111,204,'2023-10-24 13:29:22','2023-10-26 13:29:22',11,2770.00,1,NULL,'Y'),(112,210,'2023-12-15 13:29:22','2023-12-17 13:29:22',12,550.00,2,1081,'Y'),(113,202,'2023-12-20 13:29:22','2023-12-23 13:29:22',12,4990.00,1,NULL,'Y'),(114,202,'2023-12-29 13:29:22','2023-12-31 13:29:22',12,567.00,1,NULL,'Y'),(115,202,'2023-11-18 13:29:22','2023-11-23 13:29:22',12,866.70,1,NULL,'Y'),(116,202,'2023-11-09 13:29:22','2023-11-11 13:29:22',12,3661.24,1,NULL,'Y'),(117,202,'2023-11-28 13:29:22','2023-12-02 13:29:22',12,17489.00,1,NULL,'Y'),(118,206,'2023-12-18 13:29:22','2023-12-21 13:29:22',13,4398.90,1,NULL,'Y'),(119,206,'2024-01-03 13:29:22','2024-01-05 13:29:22',14,1265.20,1,NULL,'Y'),(120,206,'2023-12-25 13:29:22','2023-12-31 13:29:22',15,2111.15,1,NULL,'Y'),(121,206,'2024-01-09 13:29:22','2024-01-12 13:29:22',12,2966.25,1,NULL,'Y'),(122,206,'2023-11-16 13:29:22','2023-12-01 13:29:22',12,2179.55,1,NULL,'Y'),(123,206,'2023-10-29 13:29:22','2023-11-02 13:29:22',12,46352.65,1,NULL,'Y'),(124,206,'2023-11-19 13:29:22','2023-11-26 13:29:22',13,668.60,1,NULL,'Y'),(125,207,'2023-11-03 13:29:22','2023-11-05 13:29:22',12,4007.55,1,NULL,'Y'),(126,207,'2023-11-13 13:29:22','2023-11-17 13:29:22',12,1217.25,1,NULL,'Y'),(127,207,'2023-10-14 13:29:22','2023-10-18 13:29:22',12,10923.46,1,NULL,'Y'),(128,207,'2023-10-03 13:29:22','2023-10-07 13:29:22',13,3446.55,1,NULL,'Y'),(129,207,'2023-05-16 13:29:22','2023-05-18 13:29:22',12,314.00,1,NULL,'Y'),(130,207,'2023-07-25 13:29:22','2023-07-28 13:29:22',12,2491.35,1,NULL,'Y'),(131,207,'2023-07-04 13:29:22','2023-07-09 13:29:22',12,2417.40,1,NULL,'Y'),(132,207,'2023-04-02 13:29:22','2023-04-04 13:29:22',12,11714.00,1,NULL,'Y'),(133,207,'2023-09-16 13:29:22','2023-09-22 13:29:22',13,3453.02,1,NULL,'Y'),(134,207,'2023-09-03 13:29:22','2023-09-08 13:29:22',12,2914.11,1,NULL,'Y'),(135,207,'2023-10-13 13:29:22','2023-10-17 13:29:22',12,19469.05,1,NULL,'Y'),(136,207,'2023-11-27 13:29:22','2023-12-01 13:29:22',12,2106.35,1,NULL,'Y'),(137,207,'2023-12-16 13:29:22','2023-12-19 13:29:22',12,10942.00,1,NULL,'Y'),(138,208,'2024-01-06 13:29:22','2024-01-10 13:29:22',12,5162.80,1,NULL,'Y'),(139,208,'2023-08-11 13:29:22','2023-08-12 13:29:22',13,1161.90,1,NULL,'Y'),(140,208,'2023-07-10 13:29:22','2023-07-14 13:29:22',12,39926.00,1,NULL,'Y'),(141,208,'2023-05-11 13:29:22','2023-05-16 13:29:22',12,2704.95,1,NULL,'Y'),(142,208,'2023-07-23 13:29:22','2023-08-02 13:29:22',12,6685.00,1,NULL,'Y'),(143,208,'2023-03-14 13:29:22','2023-03-20 13:29:22',12,384.45,1,NULL,'Y'),(144,208,'2023-02-19 13:29:22','2023-02-26 13:29:22',12,1943.70,1,NULL,'Y'),(145,208,'2023-01-19 13:29:22','2023-01-24 13:29:22',13,6229.88,1,NULL,'Y'),(146,208,'2023-03-15 13:29:22','2023-03-20 13:29:22',12,3548.10,1,NULL,'Y'),(147,208,'2023-04-12 13:29:22','2023-04-14 13:29:22',12,325.00,1,NULL,'Y'),(148,208,'2023-05-31 13:29:22','2023-06-06 13:29:22',12,1021.10,1,NULL,'Y'),(149,208,'2023-07-14 13:29:22','2023-07-18 13:29:22',12,1234.35,1,NULL,'Y'),(150,208,'2023-12-05 13:29:22','2023-12-09 13:29:22',12,1902.00,1,NULL,'Y'),(151,208,'2023-10-06 13:29:22','2023-10-12 13:29:22',13,2087.93,1,NULL,'Y'),(152,208,'2023-01-30 13:29:22','2023-02-03 13:29:22',12,156289.25,1,NULL,'Y'),(153,208,'2023-04-20 13:29:22','2023-04-22 13:29:22',12,1475.85,1,NULL,'Y'),(154,208,'2023-05-28 13:29:22','2023-05-29 13:29:22',12,8489.25,1,NULL,'Y'),(155,208,'2023-08-07 13:29:22','2023-08-12 13:29:22',12,14360.20,1,NULL,'Y'),(156,208,'2023-12-11 13:32:20','2023-12-13 13:32:20',12,1116.01,1,NULL,'Y'),(157,208,'2023-10-22 13:32:32','2023-10-26 13:32:32',12,1191.10,1,NULL,'Y'),(158,209,'2023-04-03 13:32:32','2023-04-09 13:32:32',12,10456.25,1,NULL,'Y'),(159,209,'2023-05-19 13:32:32','2023-05-20 13:32:32',12,9486.10,1,NULL,'Y'),(160,209,'2023-02-19 13:32:32','2023-02-21 13:32:32',13,1665.90,1,NULL,'Y'),(161,209,'2023-05-13 13:32:32','2023-05-15 13:32:32',12,2122.50,1,NULL,'Y'),(162,209,'2023-07-21 13:32:32','2023-07-23 13:32:32',12,27195.15,1,NULL,'Y'),(163,209,'2023-02-21 13:32:32','2023-02-23 13:32:32',13,1313.00,1,NULL,'Y'),(164,209,'2023-06-03 13:32:32','2023-06-08 13:32:32',12,1104.13,1,NULL,'Y'),(165,209,'2023-09-25 13:32:32','2023-09-27 13:32:32',12,659.45,1,NULL,'Y'),(166,209,'2023-10-01 13:32:32','2023-10-03 13:32:32',12,13324.65,1,NULL,'Y'),(167,209,'2023-06-28 13:32:32','2023-07-04 13:32:32',12,2604.00,1,NULL,'Y'),(168,209,'2023-03-13 13:32:32','2023-03-15 13:32:32',13,52009.25,1,NULL,'Y'),(169,209,'2023-12-12 13:32:32','2023-12-16 13:32:32',12,1284.35,1,NULL,'Y'),(170,209,'2023-10-31 13:32:32','2023-11-15 13:32:32',12,296.00,1,NULL,'Y'),(171,209,'2023-12-26 13:32:32','2023-12-31 13:32:32',12,955.40,1,NULL,'Y'),(172,210,'2023-10-31 13:32:32','2023-11-06 13:32:32',12,3737.40,1,NULL,'Y'),(173,210,'2024-01-05 13:32:32','2024-01-09 13:32:32',13,667.00,1,NULL,'Y'),(174,210,'2024-01-10 13:32:32','2024-01-13 13:32:32',12,4661.15,1,NULL,'Y'),(175,210,'2023-07-24 13:32:32','2023-07-30 13:32:32',12,63616.25,1,NULL,'Y'),(176,210,'2023-12-03 13:32:32','2023-12-07 13:32:32',12,830.00,1,NULL,'Y'),(177,210,'2023-12-15 13:32:32','2023-12-19 13:32:32',12,6221.70,1,NULL,'Y'),(178,210,'2023-10-17 13:32:32','2023-10-20 13:32:32',12,657.30,1,NULL,'Y'),(179,210,'2023-11-19 13:32:32','2023-11-22 13:32:32',12,12533.77,1,NULL,'Y'),(180,210,'2023-07-20 13:32:32','2023-07-23 13:32:32',12,792.35,1,NULL,'Y'),(181,210,'2023-03-31 13:32:32','2023-04-03 13:32:32',13,151067.75,1,NULL,'Y'),(182,210,'2024-01-12 13:32:32',NULL,12,6674.12,1,NULL,'N'),(183,211,'2024-01-10 13:32:32','2024-01-13 13:32:32',13,3742.00,1,NULL,'Y'),(184,211,'2023-10-05 13:32:32','2023-10-08 13:32:32',12,987.00,1,NULL,'Y'),(185,211,'2023-06-24 13:32:32','2023-06-28 13:32:32',12,2525.25,1,NULL,'Y'),(186,211,'2023-03-12 13:32:32','2023-03-16 13:32:32',12,307.25,1,NULL,'Y'),(187,211,'2023-11-08 13:33:45','2023-11-15 13:33:45',13,3872.90,1,NULL,'Y'),(188,211,'2023-11-30 13:33:45','2023-12-01 13:33:45',12,12492.00,1,NULL,'Y'),(189,211,'2023-10-08 13:33:45','2023-10-08 13:33:45',12,1656.20,1,NULL,'Y'),(190,211,'2023-10-12 13:33:45','2023-10-16 13:33:45',12,4170.10,1,NULL,'Y'),(240,214,'2023-02-23 13:40:56','2023-02-26 13:40:56',12,859.95,1,NULL,'Y');
/*!40000 ALTER TABLE `s_ord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_payment_options`
--

DROP TABLE IF EXISTS `s_payment_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_payment_options` (
  `ID` int NOT NULL,
  `CUSTOMER_ID` int NOT NULL,
  `PAYMENT_TYPE` varchar(30) NOT NULL,
  `ACCOUNT_NUMBER` decimal(19,0) NOT NULL,
  `CARD_TYPE` varchar(30) DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `CHECK_DIGITS` smallint DEFAULT NULL,
  `ROUTING_IDENTIFIER` varchar(15) DEFAULT NULL,
  `INSTITUTION_NAME` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_PAYMENT_TYPE_CUSTOMER_ID_UK` (`PAYMENT_TYPE`,`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_payment_options`
--

LOCK TABLES `s_payment_options` WRITE;
/*!40000 ALTER TABLE `s_payment_options` DISABLE KEYS */;
INSERT INTO `s_payment_options` VALUES (1001,1,'CC',4111111111111111,'VISA','2025-01-18 12:57:19',333,NULL,NULL),(1002,2,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1003,3,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1004,6,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1005,7,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1006,8,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1007,11,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1008,15,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1009,16,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1010,17,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1011,18,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1012,19,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1013,20,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1014,21,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1015,22,'CC',5555555555554444,'MSTR','2025-05-18 13:02:49',333,NULL,NULL),(1016,23,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1017,24,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1018,25,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1019,26,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1020,27,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1021,28,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1022,29,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1023,30,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1024,31,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1025,32,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1026,33,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1027,34,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1028,35,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1029,36,'CC',5555555555554444,'MSTR','2025-05-18 13:02:49',333,NULL,NULL),(1030,37,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1031,38,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1032,39,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1033,40,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1034,41,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1035,42,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1036,43,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1037,44,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1038,45,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1039,46,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1040,47,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1041,48,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1042,49,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1043,50,'CC',5555555555554444,'MSTR','2025-05-18 13:02:49',333,NULL,NULL),(1044,51,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1045,52,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1046,53,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1047,54,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1048,55,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1049,56,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1050,57,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1051,58,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1052,59,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1053,60,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1054,61,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1055,62,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1056,63,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1057,64,'CC',5555555555554444,'MSTR','2025-05-18 13:02:49',333,NULL,NULL),(1058,68,'CC',4111111111111111,'VISA','2025-01-18 13:02:49',333,NULL,NULL),(1059,69,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1060,70,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1061,71,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1062,72,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1063,73,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1064,99,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1065,100,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1066,101,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1067,102,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1068,103,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1069,104,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1070,105,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1071,106,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1072,201,'CC',5555555555554444,'MSTR','2025-05-18 13:02:49',333,NULL,NULL),(1073,202,'CC',4111111111111111,'VISA','2025-01-18 13:02:49',333,NULL,NULL),(1074,203,'CC',378282246310005,'AMEX','2024-11-29 13:02:49',333,NULL,NULL),(1075,204,'DD',123456765432,NULL,NULL,NULL,'789456124','Western States Bank'),(1076,205,'CC',4012888888881881,'VISA','2025-04-28 13:02:49',333,NULL,NULL),(1077,206,'DD',9876543219876,NULL,NULL,NULL,'9874321','Eastern Credit Union'),(1078,207,'CC',5555555555551111,'MSTR','2025-05-10 13:02:49',333,NULL,NULL),(1079,208,'PP',65432287,NULL,NULL,NULL,NULL,NULL),(1080,209,'CC',5500000000000004,'MSTR','2024-07-12 13:02:49',333,NULL,NULL),(1081,210,'CC',5105105105105100,'MSTR','2025-03-08 13:02:49',333,NULL,NULL),(1082,211,'PP',3498763,NULL,NULL,NULL,NULL,NULL),(1083,212,'CC',343434343434343,'AMEX','2024-08-23 13:02:49',333,NULL,NULL),(1084,213,'DD',4408041234567893,NULL,'2024-10-30 13:02:49',333,NULL,NULL),(1085,214,'IN',9531793216,NULL,NULL,NULL,NULL,NULL),(1086,215,'DD',7642096532,NULL,NULL,NULL,'43275983','First Southern Bank'),(1088,65,'CC',4111111111111111,'VISA','2025-01-18 13:02:49',333,NULL,NULL),(1089,66,'CC',4111111111111111,'VISA','2025-01-18 13:02:49',333,NULL,NULL),(1090,67,'CC',4111111111111111,'VISA','2025-01-18 13:02:49',333,NULL,NULL);
/*!40000 ALTER TABLE `s_payment_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_payment_type`
--

DROP TABLE IF EXISTS `s_payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_payment_type` (
  `ID` int NOT NULL,
  `PAYMENT_TYPE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_PAYMENT_TYPE_UK` (`PAYMENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_payment_type`
--

LOCK TABLES `s_payment_type` WRITE;
/*!40000 ALTER TABLE `s_payment_type` DISABLE KEYS */;
INSERT INTO `s_payment_type` VALUES (1,'CASH','Cash or Check'),(2,'CREDIT','On account');
/*!40000 ALTER TABLE `s_payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_product`
--

DROP TABLE IF EXISTS `s_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_product` (
  `ID` int NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SHORT_DESC` varchar(255) DEFAULT NULL,
  `LONGTEXT_ID` int DEFAULT NULL,
  `IMAGE_ID` int DEFAULT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `SUGGESTED_WHLSL_PRICE` decimal(11,2) DEFAULT NULL,
  `WHLSL_UNITS` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_PRODUCT_NAME_UK` (`NAME`),
  KEY `S_PRODUCT_IMAGE_ID_FK` (`IMAGE_ID`),
  KEY `S_PRODUCT_LONGTEXT_ID_FK` (`LONGTEXT_ID`),
  CONSTRAINT `S_PRODUCT_IMAGE_ID_FK` FOREIGN KEY (`IMAGE_ID`) REFERENCES `s_image` (`ID`),
  CONSTRAINT `S_PRODUCT_LONGTEXT_ID_FK` FOREIGN KEY (`LONGTEXT_ID`) REFERENCES `s_longtext` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_product`
--

LOCK TABLES `s_product` WRITE;
/*!40000 ALTER TABLE `s_product` DISABLE KEYS */;
INSERT INTO `s_product` VALUES (10011,'Bunny Boot','Beginners ski boot',518,1001,2,150.00,NULL),(10012,'Ace Ski Boot','Intermediate ski boot',519,1002,2,200.00,NULL),(10013,'Pro Ski Boot','Advanced ski boot',520,1003,2,410.00,NULL),(10021,'Bunny Ski Pole','Beginner\'s ski pole',528,1011,3,16.25,NULL),(10022,'Ace Ski Pole','Intermediate ski pole',529,1012,3,21.95,NULL),(10023,'Pro Ski Pole','Advanced ski pole',530,1013,3,40.95,NULL),(20106,'Junior Soccer Ball','Junior soccer ball',613,2000,4,11.00,NULL),(20108,'World Cup Soccer Ball','World cup soccer ball',615,2001,4,28.00,NULL),(20201,'World Cup Net','World cup net',708,2002,6,123.00,NULL),(20510,'Black Hawk Knee Pads','Knee pads, pair',1017,2003,8,9.00,NULL),(20512,'Black Hawk Elbow Pads','Elbow pads, pair',1019,2004,8,8.00,NULL),(30321,'Grand Prix Bicycle','Road bicycle',828,1291,9,1669.00,NULL),(30326,'Himalaya Bicycle','Mountain bicycle',833,1296,9,582.00,NULL),(30421,'Grand Prix Bicycle Tires','Road bicycle tires',927,2005,10,16.00,NULL),(30426,'Himalaya Tires','Mountain bicycle tires',933,2006,10,18.25,NULL),(30433,'New Air Pump','Tire pump',940,2007,11,20.00,NULL),(32779,'Slaker Water Bottle','Water bottle',1286,2008,11,7.00,NULL),(32861,'Safe-T Helmet','Bicycle helmet',1368,1829,11,60.00,NULL),(40421,'Alexeyer Pro Lifting Bar','Straight bar',928,1381,13,65.00,NULL),(40422,'Pro Curling Bar','Curling bar',929,1382,13,50.00,NULL),(41010,'Prostar 10 Pound Weight','Ten pound weight',517,2009,14,8.00,NULL),(41020,'Prostar 20 Pound Weight','Twenty pound weight',527,NULL,14,12.00,NULL),(41050,'Prostar 50 Pound Weight','Fifty pound weight',557,NULL,14,25.00,NULL),(41080,'Prostar 80 Pound Weight','Eighty pound weight',587,NULL,14,35.00,NULL),(41100,'Prostar 100 Pound Weight','One hundred pound weight',607,NULL,14,45.00,NULL),(50169,'Major League Baseball','Baseball',676,1119,17,4.29,NULL),(50273,'Chapman Helmet','Batting helmet',780,1223,17,22.89,NULL),(50417,'Griffey Glove','Outfielder\'s glove',924,1367,16,80.00,NULL),(50418,'Alomar Glove','Infielder\'s glove',925,1368,16,75.00,NULL),(50419,'Steinbach Glove','Catcher\'s glove',926,1369,16,80.00,NULL),(50530,'Cabrera Bat','Thirty inch bat',1037,1480,18,45.00,NULL),(50532,'Puckett Bat','Thirty-two inch bat',1039,1482,18,47.00,NULL),(50536,'Winfield Bat','Thirty-six inch bat',1043,1486,18,50.00,NULL);
/*!40000 ALTER TABLE `s_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_product_categories`
--

DROP TABLE IF EXISTS `s_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_product_categories` (
  `ID` int NOT NULL,
  `CATEGORY` varchar(50) DEFAULT NULL,
  `PARENT_CATEGORY_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_product_categories`
--

LOCK TABLES `s_product_categories` WRITE;
/*!40000 ALTER TABLE `s_product_categories` DISABLE KEYS */;
INSERT INTO `s_product_categories` VALUES (1,'Skiing',0),(2,'Boots',1),(3,'Poles',1),(4,'Soccer',0),(5,'Balls',4),(6,'Accessories',4),(7,'Cycling',0),(8,'Protective Gear',7),(9,'Bicycles',7),(10,'Tires',7),(11,'Accessories',7),(12,'Weightlifting',0),(13,'Bars',12),(14,'Weights',12),(15,'Baseball',0),(16,'Gloves',15),(17,'Accessories',15),(18,'Bats',15);
/*!40000 ALTER TABLE `s_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_region`
--

DROP TABLE IF EXISTS `s_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_region` (
  `ID` int NOT NULL,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `S_REGION_NAME_UK` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_region`
--

LOCK TABLES `s_region` WRITE;
/*!40000 ALTER TABLE `s_region` DISABLE KEYS */;
INSERT INTO `s_region` VALUES (3,'Africa / Middle East'),(4,'Asia'),(5,'Europe'),(1,'North America'),(2,'South America');
/*!40000 ALTER TABLE `s_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_title`
--

DROP TABLE IF EXISTS `s_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_title` (
  `TITLE_ID` int NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TITLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_title`
--

LOCK TABLES `s_title` WRITE;
/*!40000 ALTER TABLE `s_title` DISABLE KEYS */;
INSERT INTO `s_title` VALUES (1,'President'),(2,'Sales Representative'),(3,'Stock Clerk'),(4,'VP, Administration'),(5,'VP, Finance'),(6,'VP, Operations'),(7,'VP, Sales'),(8,'Warehouse Manager');
/*!40000 ALTER TABLE `s_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_warehouse`
--

DROP TABLE IF EXISTS `s_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_warehouse` (
  `ID` int NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `COUNTRY_ID` varchar(30) DEFAULT NULL,
  `ZIP_CODE` varchar(75) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `PHONE` varchar(25) DEFAULT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `S_WAREHOUSE_MANAGER_ID_FK` (`MANAGER_ID`),
  CONSTRAINT `S_WAREHOUSE_MANAGER_ID_FK` FOREIGN KEY (`MANAGER_ID`) REFERENCES `s_emp` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_warehouse`
--

LOCK TABLES `s_warehouse` WRITE;
/*!40000 ALTER TABLE `s_warehouse` DISABLE KEYS */;
INSERT INTO `s_warehouse` VALUES (101,'283 King Street','Seattle','WA','4',NULL,47.60621,-122.332071,NULL,6),(102,'457 120th Ave NE','Bellevue','WA','4','98005',47.614542,-122.179873,NULL,6),(103,'63455 North Highway 97','Bend','OR','4','97701',44.104404,-121.298073,NULL,6),(104,'8363 W Franklin Rd','Boise','ID','4','83709',43.604973,-116.280341,NULL,6),(105,'4080 Stevens Creek Blvd','San Jose','CA','4','95129',37.323042,-121.973525,NULL,6),(106,'2955 Mountain City Hwy','Elko','NV','4','89801',40.839251,-115.794816,NULL,6),(107,'100 E 400 St S','Richfield','UT','4','84701',38.762564,-112.083137,NULL,6),(108,'12645 N 48th St','Phoenix','AZ','4','85032',33.60148,-111.977912,NULL,6),(109,'1801 E Custer Avenue','Helena','MT','4','59602',46.616722,-112.004752,NULL,6),(110,'1105 E Boxelder Road','Gillette','WY','4','82718',44.276084,-105.487727,NULL,6),(111,'7120 N Academy Blvd','Colorado Springs','CO','4','80920',38.934817,-104.797193,NULL,6),(112,'2350 N Main','Roswell','NM','4','88202',33.393024,-104.522686,NULL,6),(113,'5826 Mariposa','Bogata',NULL,'10',NULL,4.598056,-74.075833,NULL,9),(201,'68 Via Centrale','Sao Paulo',NULL,'1',NULL,-23.548943,-46.638818,NULL,7),(301,'6921 King Way','Lagos',NULL,'7',NULL,6.453056,3.395833,NULL,8),(401,'86 Chu Street','Hong Kong',NULL,'5',NULL,22.24786,114.203384,NULL,9),(501,'5 Modrany','Bratislava',NULL,'11',NULL,48.135606,17.131805,NULL,10);
/*!40000 ALTER TABLE `s_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'summit'
--
/*!50003 DROP FUNCTION IF EXISTS `get_product_image` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_product_image`(product_number DOUBLE) RETURNS varchar(4000) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE v_filename VARCHAR(100);
 
       DECLARE EXIT HANDLER FOR not found BEGIN return('No file.jpg');
       END;
       SELECT s_image.filename INTO v_filename
       FROM   s_image, s_product
       WHERE  s_image.id = s_product.image_id
              AND
              s_product.id = product_number;
       if v_filename is null then
          SET v_filename = 'No file.jpg';
       end if;
       RETURN v_filename;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCTS_API_delete_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRODUCTS_API_delete_product`(p_id double)
begin
    DELETE FROM s_product
    WHERE id = p_id;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCTS_API_insert_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRODUCTS_API_insert_product`(p_id double,
                           p_name varchar(4000),
                           p_short_desc varchar(4000),
                           p_longtext_id double,
                           p_image_id double,
                           p_suggested_whlsl_price double,
                           p_whlsl_units varchar(4000))
begin
    -- SQLINES LICENSE FOR EVALUATION USE ONLY
    INSERT INTO s_product(id,   
                              name,   
                              short_desc,   
                              longtext_id,   
                              image_id,   
                              suggested_whlsl_price,   
                              whlsl_units)
    VALUES(p_id,   
           p_name,   
           p_short_desc,   
           p_longtext_id,   
           p_image_id,   
           p_suggested_whlsl_price,   
           p_whlsl_units);
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCTS_API_lock_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRODUCTS_API_lock_product`(p_id double,
                           out p_name varchar(4000),
                           out p_short_desc varchar(4000),
                           out p_longtext_id double,
                           out p_image_id double,
                           out p_suggested_whlsl_price double,
                           out p_whlsl_units varchar(4000))
begin
    SELECT name,
      short_desc,
      longtext_id,
      image_id,
      suggested_whlsl_price,
      whlsl_units
    INTO p_name,
      p_short_desc,
      p_longtext_id,
      p_image_id,
      p_suggested_whlsl_price,
      p_whlsl_units
    FROM s_product
    WHERE id = p_id FOR UPDATE NOWAIT;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCTS_API_select_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRODUCTS_API_select_product`(p_id double,
                           out p_name varchar(4000),
                           out p_short_desc varchar(4000),
                           out p_longtext_id double,
                           out p_image_id double,
                           out p_suggested_whlsl_price double,
                           out p_whlsl_units varchar(4000))
begin
    SELECT name,
      short_desc,
      longtext_id,
      image_id,
      suggested_whlsl_price,
      whlsl_units
    INTO p_name,
      p_short_desc,
      p_longtext_id,
      p_image_id,
      p_suggested_whlsl_price,
      p_whlsl_units
    FROM s_product
    WHERE id = p_id;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRODUCTS_API_update_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRODUCTS_API_update_product`(p_id double,
                           p_name varchar(4000),
                           p_short_desc varchar(4000),
                           p_longtext_id double,
                           p_image_id double,
                           p_suggested_whlsl_price double,
                           p_whlsl_units varchar(4000))
begin
    UPDATE s_product
    SET name = p_name,
      short_desc = p_short_desc,
      longtext_id = p_longtext_id,
      image_id = p_image_id,
      suggested_whlsl_price = p_suggested_whlsl_price,
      whlsl_units = p_whlsl_units
    WHERE id = p_id;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14 14:04:04
