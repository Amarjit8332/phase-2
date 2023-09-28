create database fly;
use  fly;

CREATE TABLE `airlines` (
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ;
INSERT INTO `airlines` VALUES ('INDG','Indigo'),('KING','Kingfisher'),('SPIC','SpiceJet'),('AIRN','AirIndia'),('TRUJ','TrueJet');


CREATE TABLE `flights` (
  `NAME` varchar(10) DEFAULT NULL,
  `AIRLINE` varchar(20) DEFAULT NULL,
  `WAY` varchar(20) DEFAULT NULL,
  `PRICE` varchar(10) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL
);
INSERT INTO `flights` VALUES ('INDG1','INDIGO','HYD-DEL','5000','Hyderabad','Delhi'),('INDG2','INDIGO','HYD-KOL','5000','Hyderabad','Kolkata'),('INDG3','INDIGO','HYD-MUM','5000','Hyderabad','Mumbai'),('INDG4','INDIGO','HYD-BAN','5000','Hyderabad','Bangalore'),('KING1','KINGFISHER','DEL-KOL','5000','Delhi','Kolkata'),('KING2','KINGFISHER','DEL-MUM','5000','Delhi','Mumbai'),('KING3','KINGFISHER','DEL-BAN','5000','Delhi','Bangalore'),('KING4','KINGFISHER','DEL-HYD','5000','Delhi','Hyderabad'),('SPIC1','SPICE JET','KOL-MUM','5000','Kolkata','Mumbai'),('SPIC2','SPICE JET','KOL-BAN','5000','Kolkata','Bangalore'),('SPIC3','SPICE JET','KOL-HYD','5000','Kolkata','Hyderabad'),('SPIC4','SPICE JET','KOL-DEL','5000','Kolkata','Delhi'),('AIRN1','AIR INDIA','MUM-BAN','5000','Mumbai','Bangalore'),('AIRN2','AIR INDIA','MUM-HYD','5000','Mumbai','Hyderabad'),('AIRN3','AIR INDIA','MUM-DEL','5000','Mumbai','Delhi'),('AIRN4','AIR INDIA','MUM-KOL','5000','Mumbai','Kolkata'),('TRUJ1','TRUE JET','BAN-HYD','5000','Bangalore','Hyderabad'),('TRUJ2','TRUE JET','BAN-DEL','5000','Bangalore','Delhi'),('TRUJ3','TRUE JET','BAN-KOL','5000','Bangalore','Kolkata'),('TRUJ4','TRUE JET','BAN-MUM','5000','Bangalore','Mumbai');
;

CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ;

INSERT INTO `login` VALUES ('amarjit','1234');
CREATE TABLE `places` (
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ;
INSERT INTO `places` VALUES ('HYD','Hyderabad'),('DEL','Delhi'),('KOL','Kolkata'),('MUM','Mumbai'),('BAN','Bangalore');
