SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=NO_AUTO_VALUE_ON_ZERO */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/ `perabeats`;
USE `perabeats`;
CREATE TABLE `pb_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_desc` mediumtext,
  `blog_topic` varchar(80) DEFAULT NULL,
  `blog_added_date` date DEFAULT NULL,
  `blog_added_time` time DEFAULT NULL,
  `blog_tail` varchar(150) DEFAULT NULL,
  `blog_main_img` varchar(20) DEFAULT NULL,
  `pb_log_user_lg_id` int(11) NOT NULL,
  `blog_content` text,
  `blog_hash` varchar(150) NOT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `fk_pb_blog_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_blog_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_blog` (`blog_id`,`blog_desc`,`blog_topic`,`blog_added_date`,`blog_added_time`,`blog_tail`,`blog_main_img`,`pb_log_user_lg_id`,`blog_content`,`blog_hash`) VALUES 
 (1,'Heloo dis is desc\n','MMy topic','2014-05-11','120:05:00','this is tail','1.jpg',1,'Hello big desc\n','my_blog');
CREATE TABLE `pb_blog_has_pb_university` (
  `pb_blog_blog_id` int(11) NOT NULL,
  `pb_university_u_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_blog_blog_id`,`pb_university_u_id`),
  KEY `fk_pb_blog_has_pb_university_pb_university1_idx` (`pb_university_u_id`),
  KEY `fk_pb_blog_has_pb_university_pb_blog1_idx` (`pb_blog_blog_id`),
  CONSTRAINT `fk_pb_blog_has_pb_university_pb_blog1` FOREIGN KEY (`pb_blog_blog_id`) REFERENCES `pb_blog` (`blog_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_blog_has_pb_university_pb_university1` FOREIGN KEY (`pb_university_u_id`) REFERENCES `pb_university` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_bop` (
  `bop_id` int(11) NOT NULL,
  `bop_topic` varchar(150) DEFAULT NULL,
  `bop_small_desc` mediumtext,
  `bop_content` text,
  `bop_added_date` date DEFAULT NULL,
  `bop_added_time` time DEFAULT NULL,
  `pb_log_user_lg_id` int(11) NOT NULL,
  `bop_tail` tinytext,
  `bop_main_img` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`bop_id`),
  KEY `fk_pb_bop_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_bop_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_bop` (`bop_id`,`bop_topic`,`bop_small_desc`,`bop_content`,`bop_added_date`,`bop_added_time`,`pb_log_user_lg_id`,`bop_tail`,`bop_main_img`) VALUES 
 (1,'I WILL NEVER STOP!','After two days of blistering and beautiful display of football, UOM and EUSL qualified for the final of Mora Cup organized by the University of Moratuwa. In a fiercely fought encounter, the spirited UOM outlasted EUSL at 1-0 where the stunning strike of Philip Fernando made the difference between the teams and the title.',NULL,'2014-07-09','23:19:00',1,'Mr. Thilanka Hirimuthugoda<br />\nCaptain of Baseball Team<br />\nUniversity of Peradeniya<br />','bop.jpg');
CREATE TABLE `pb_bop_has_pb_university` (
  `pb_bop_bop_id` int(11) NOT NULL,
  `pb_university_u_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_bop_bop_id`,`pb_university_u_id`),
  KEY `fk_pb_bop_has_pb_university_pb_university1_idx` (`pb_university_u_id`),
  KEY `fk_pb_bop_has_pb_university_pb_bop1_idx` (`pb_bop_bop_id`),
  CONSTRAINT `fk_pb_bop_has_pb_university_pb_bop1` FOREIGN KEY (`pb_bop_bop_id`) REFERENCES `pb_bop` (`bop_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_bop_has_pb_university_pb_university1` FOREIGN KEY (`pb_university_u_id`) REFERENCES `pb_university` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_event` (
  `event_id` int(11) NOT NULL,
  `event_topic` varchar(45) DEFAULT NULL,
  `event_small_desc` varchar(100) DEFAULT NULL,
  `event_desc` varchar(400) DEFAULT NULL,
  `event_content` text,
  `event_main_img` varchar(20) DEFAULT NULL,
  `event_date_added` date DEFAULT NULL,
  `event_time_added` time DEFAULT NULL,
  `pb_log_user_lg_id` int(11) NOT NULL,
  `event_hash` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_pb_event_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_event_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_event` (`event_id`,`event_topic`,`event_small_desc`,`event_desc`,`event_content`,`event_main_img`,`event_date_added`,`event_time_added`,`pb_log_user_lg_id`,`event_hash`) VALUES 
 (1,'Sehheasd','sdasdad','sdads',NULL,'1.jpg','2014-05-11','00:00:01',1,'my_news');
CREATE TABLE `pb_event_has_pb_university` (
  `pb_event_event_id` int(11) NOT NULL,
  `pb_university_u_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_event_event_id`,`pb_university_u_id`),
  KEY `fk_pb_event_has_pb_university_pb_university1_idx` (`pb_university_u_id`),
  KEY `fk_pb_event_has_pb_university_pb_event1_idx` (`pb_event_event_id`),
  CONSTRAINT `fk_pb_event_has_pb_university_pb_event1` FOREIGN KEY (`pb_event_event_id`) REFERENCES `pb_event` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_event_has_pb_university_pb_university1` FOREIGN KEY (`pb_university_u_id`) REFERENCES `pb_university` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_log_user` (
  `lg_id` int(11) NOT NULL,
  `lg_fname` varchar(100) DEFAULT NULL,
  `lg_username` varchar(45) DEFAULT NULL,
  `lg_password` varchar(80) DEFAULT NULL,
  `lg_email` varchar(100) DEFAULT NULL,
  `lg_date_added` date DEFAULT NULL,
  `lg_time_time` time DEFAULT NULL,
  `lg_main_img` varchar(20) DEFAULT NULL,
  `lg_lastname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_log_user` (`lg_id`,`lg_fname`,`lg_username`,`lg_password`,`lg_email`,`lg_date_added`,`lg_time_time`,`lg_main_img`,`lg_lastname`) VALUES 
 (1,'Sandaruwan','1','1',NULL,NULL,NULL,NULL,'Nanayakkara');
CREATE TABLE `pb_log_user_comment_pb_blog` (
  `pb_log_user_lg_id` int(11) NOT NULL,
  `pb_blog_blog_id` int(11) NOT NULL,
  `comment` text,
  PRIMARY KEY (`pb_log_user_lg_id`,`pb_blog_blog_id`),
  KEY `fk_pb_log_user_has_pb_blog1_pb_blog1_idx` (`pb_blog_blog_id`),
  KEY `fk_pb_log_user_has_pb_blog1_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_log_user_has_pb_blog1_pb_blog1` FOREIGN KEY (`pb_blog_blog_id`) REFERENCES `pb_blog` (`blog_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_log_user_has_pb_blog1_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_log_user_comment_pb_event` (
  `pb_log_user_lg_id` int(11) NOT NULL,
  `pb_event_event_id` int(11) NOT NULL,
  `lg_comment` text,
  PRIMARY KEY (`pb_log_user_lg_id`,`pb_event_event_id`),
  KEY `fk_pb_log_user_has_pb_event_pb_event1_idx` (`pb_event_event_id`),
  KEY `fk_pb_log_user_has_pb_event_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_log_user_has_pb_event_pb_event1` FOREIGN KEY (`pb_event_event_id`) REFERENCES `pb_event` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_log_user_has_pb_event_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_log_user_comment_pb_news` (
  `pb_log_user_lg_id` int(11) NOT NULL,
  `pb_news_news_id` int(11) NOT NULL,
  `lg_comment` text,
  PRIMARY KEY (`pb_log_user_lg_id`,`pb_news_news_id`),
  KEY `fk_pb_log_user_has_pb_news_pb_news1_idx` (`pb_news_news_id`),
  KEY `fk_pb_log_user_has_pb_news_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_log_user_has_pb_news_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_log_user_has_pb_news_pb_news1` FOREIGN KEY (`pb_news_news_id`) REFERENCES `pb_news` (`news_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_log_user_has_pb_university` (
  `pb_log_user_lg_id` int(11) NOT NULL,
  `pb_university_u_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_log_user_lg_id`,`pb_university_u_id`),
  KEY `fk_pb_log_user_has_pb_university_pb_university1_idx` (`pb_university_u_id`),
  KEY `fk_pb_log_user_has_pb_university_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_log_user_has_pb_university_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_log_user_has_pb_university_pb_university1` FOREIGN KEY (`pb_university_u_id`) REFERENCES `pb_university` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_log_user_like_pb_blog` (
  `pb_log_user_lg_id` int(11) NOT NULL,
  `pb_blog_blog_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_log_user_lg_id`,`pb_blog_blog_id`),
  KEY `fk_pb_log_user_has_pb_blog_pb_blog1_idx` (`pb_blog_blog_id`),
  KEY `fk_pb_log_user_has_pb_blog_pb_log_user1_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_log_user_has_pb_blog_pb_blog1` FOREIGN KEY (`pb_blog_blog_id`) REFERENCES `pb_blog` (`blog_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_log_user_has_pb_blog_pb_log_user1` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_news` (
  `news_id` int(11) NOT NULL,
  `news_topic` varchar(100) DEFAULT NULL,
  `news_small_desc` varchar(100) DEFAULT NULL,
  `news_desc` varchar(400) DEFAULT NULL,
  `news_content` text,
  `news_main_img` varchar(20) DEFAULT NULL,
  `news_date_added` date DEFAULT NULL,
  `news_time_added` time DEFAULT NULL,
  `pb_log_user_lg_id` int(11) NOT NULL,
  `news_hash` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `fk_pb_news_pb_log_user_idx` (`pb_log_user_lg_id`),
  CONSTRAINT `fk_pb_news_pb_log_user` FOREIGN KEY (`pb_log_user_lg_id`) REFERENCES `pb_log_user` (`lg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_news` (`news_id`,`news_topic`,`news_small_desc`,`news_desc`,`news_content`,`news_main_img`,`news_date_added`,`news_time_added`,`pb_log_user_lg_id`,`news_hash`) VALUES 
 (1,'Women’s Badminton On A Roll','desc','After two days of blistering and beautiful display of football, UOM and EUSL qualified for the final of Mora Cup organized by the University of Moratuwa.',NULL,'1.jpg','2014-06-02','17:34:00',1,'colors-night'),
 (2,'UNIVERSITY OF SRI JAYEWARDENEPURA COLOURS NIGHT',NULL,'After two days of blistering and beautiful display of football, UOM and EUSL qualified for the final of Mora Cup organized by the University of Moratuwa.',NULL,'carrom_0.jpg','2014-05-11','12:00:00',1,'news-two');
CREATE TABLE `pb_news_has_pb_university` (
  `pb_news_news_id` int(11) NOT NULL,
  `pb_university_u_id` int(11) NOT NULL,
  PRIMARY KEY (`pb_news_news_id`,`pb_university_u_id`),
  KEY `fk_pb_news_has_pb_university_pb_university1_idx` (`pb_university_u_id`),
  KEY `fk_pb_news_has_pb_university_pb_news1_idx` (`pb_news_news_id`),
  CONSTRAINT `fk_pb_news_has_pb_university_pb_news1` FOREIGN KEY (`pb_news_news_id`) REFERENCES `pb_news` (`news_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pb_news_has_pb_university_pb_university1` FOREIGN KEY (`pb_university_u_id`) REFERENCES `pb_university` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `pb_university` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(200) DEFAULT NULL,
  `u_address` varchar(400) DEFAULT NULL,
  `u_email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pb_university` (`u_id`,`u_name`,`u_address`,`u_email`) VALUES 
 (1,'University of Peradeniya',NULL,NULL);
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
