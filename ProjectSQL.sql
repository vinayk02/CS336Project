CREATE DATABASE IF NOT EXISTS `cs336p1`;
USE `cs336p1`;


DROP TABLE IF EXISTS `userLogin`;
DROP TABLE IF EXISTS `auction`;
DROP TABLE IF EXISTS `alerts`;
DROP TABLE IF EXISTS `bid`;
DROP TABLE IF EXISTS `winningBid`;
DROP TABLE IF EXISTS `repLogin`;
DROP TABLE IF EXISTS `questions`;

CREATE TABLE `userLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', `first` varchar(50) DEFAULT NULL,
	`last` varchar(50) DEFAULT NULL, `userName` varchar(50) DEFAULT NULL, PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;
    DROP TABLE IF EXISTS `auction`;
    
CREATE TABLE `auction`(`id` int,`secretPrice` int DEFAULT NULL, `price` int DEFAULT NULL, `category` varchar(50) DEFAULT NULL, `itemName` varchar(50) NOT NULL DEFAULT '', `email` varchar(50) NOT NULL DEFAULT '', `auctionDate` datetime default null,  PRIMARY KEY(`id`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bid`(`email` varchar(50) NOT NULL DEFAULT '', `upperLimit` int DEFAULT NULL, `price` int DEFAULT NULL, `auctionEmail` varchar(50) NOT NULL DEFAULT '', `auctionName` varchar(50) NOT NULL DEFAULT '', PRIMARY KEY(`email`, `auctionName`, `auctionEmail`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `alerts`(`type` varchar(50) NOT NULL DEFAULT '', `name` varchar(50) DEFAULT NULL, `price` int, PRIMARY KEY(`type`, `price`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `winningBid`( `category` varchar(50) DEFAULT NULL, `auctionName` varchar(50) NOT NULL DEFAULT '', `price` int, `winnerEmail` varchar(50) NOT NULL DEFAULT '', `auctionEmail` varchar(50) NOT NULL DEFAULT '', PRIMARY KEY(`auctionEmail` , `auctionName`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `repLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', `userName` varchar(50) DEFAULT NULL, PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `questions`(`id` int, `email` varchar(50) NOT NULL DEFAULT '', `question` varchar(50) NOT NULL DEFAULT '', `answer` varchar(50), PRIMARY KEY(`id`))ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `adminLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

