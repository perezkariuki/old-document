Create database `Lost&Found`;

use `Lost&Found`;

CREATE TABLE `User`(
  `user_id` int(100) NOT NULL auto_increment,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Usertype` varchar(100) NOT NULL,
  `Phoneno` varchar(100) NOT NULL,  
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB;

CREATE TABLE `post`(
`postid` int(100) NOT NULL auto_increment,
`ItemName` varchar(100) NOT NULL,
`Category` varchar(100) NOT NULL,
`Brand` varchar(100) NOT NULL,
`SerialCode` varchar(100) NOT NULL,
`Location` varchar(100) NOT NULL,
`Date` Datetime NOT NULL,
`PrimaryColor` varchar(100) NOT NULL,
`Secondary color` varchar(100) NOT NULL,
`Description` text(255) NOT NULL,
`picture` varchar(100) NOT NULL,
`userid` int(15) NOT NULL,
PRIMARY KEY  (`postid`),
CONSTRAINT FK_post_1
FOREIGN KEY (userid) REFERENCES User(user_id)
ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE `chat`(
`chatid` int(100) NOT NULL auto_increment,
`FromUser` int(100) NOT NULL,
`DateTimeSent` Datetime NOT NULL,
`Message` text(255) NOT NULL,
PRIMARY KEY  (`chatid`),
CONSTRAINT FK_chat_1
FOREIGN KEY (FromUser) REFERENCES User(user_id)
ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;