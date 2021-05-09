server.js

var mysql = require('mysql');
process.on('uncaughtException', (err) => {
 console.log(`Caught exception: ${err}`);
});
const express = require('express')
const app = express()
const port = 3000
app.get('/', (req, res) =>{
var con = mysql.createConnection({
 host: process.env.DB,
 user: "root",
 password: "",
 database:"test"
});
con.connect(function(err) {
 if (err) throw err;
 console.log("Connected!");
});
con.query('SELECT * from test2', function (err, rows, fields) {
 if (err) res.send(err)
 console.log('The solution is: ', rows)
 res.send(rows)
})
 })
app.listen(port, () => console.log(`Example app listening on port ${port}`))





Database


-- MySQL dump 10.13 Distrib 5.6.47, for Linux (x86_64)
--
-- Host: localhost   Database: test
-- ------------------------------------------------------
-- Server version      5.6.47
/*!40101 SET @old_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @old_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @old_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @old_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @old_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @old_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @old_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @old_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `test1`
--
DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client    = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1` (
 `Cloud` char(1) DEFAULT NULL,
 `Platform` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `test1`
--
LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `test2`
--
DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client    = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
 `Cloud` varchar(20) DEFAULT NULL,
 `Platform` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `test2`
--
LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES ('Red Hat','Openshift');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2020-02-11 4:21:33
