/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : course

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 28/09/2020 21:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_no` char(3) NOT NULL,
  `a_password` char(6) NOT NULL,
  PRIMARY KEY (`a_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('a', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_no` char(8) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_number` int(11) DEFAULT NULL,
  `c_time` time DEFAULT NULL,
  `c_comment` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk1` (`c_no`),
  CONSTRAINT `fk1` FOREIGN KEY (`c_no`) REFERENCES `create_course` (`c_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for create_course
-- ----------------------------
DROP TABLE IF EXISTS `create_course`;
CREATE TABLE `create_course` (
  `c_no` char(8) NOT NULL,
  `t_no` char(4) NOT NULL,
  `cc_time` date DEFAULT NULL,
  PRIMARY KEY (`c_no`),
  KEY `dafa` (`t_no`),
  CONSTRAINT `dafa` FOREIGN KEY (`t_no`) REFERENCES `teachter` (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of create_course
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` varchar(6) NOT NULL,
  `s_password` varchar(6) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `k1` (`s_no`),
  CONSTRAINT `k1` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for stu_course
-- ----------------------------
DROP TABLE IF EXISTS `stu_course`;
CREATE TABLE `stu_course` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `s_no` char(6) NOT NULL,
  `c_no` char(8) NOT NULL,
  PRIMARY KEY (`scid`),
  KEY `s1` (`s_no`),
  KEY `s2` (`c_no`),
  CONSTRAINT `s1` FOREIGN KEY (`s_no`) REFERENCES `student` (`s_no`),
  CONSTRAINT `s2` FOREIGN KEY (`c_no`) REFERENCES `create_course` (`c_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_course
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_no` char(6) NOT NULL,
  `s_name` varchar(10) NOT NULL,
  `s_birthday` date DEFAULT NULL,
  `s_grade` int(11) DEFAULT NULL,
  `s_address` varchar(50) DEFAULT NULL,
  `s_phone` char(11) DEFAULT NULL,
  `s_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t
-- ----------------------------
DROP TABLE IF EXISTS `t`;
CREATE TABLE `t` (
  `tid` int(11) NOT NULL,
  `t_password` char(6) NOT NULL,
  `t_no` char(4) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `hgj` (`t_no`),
  CONSTRAINT `hgj` FOREIGN KEY (`t_no`) REFERENCES `teachter` (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for teachter
-- ----------------------------
DROP TABLE IF EXISTS `teachter`;
CREATE TABLE `teachter` (
  `t_no` char(4) NOT NULL,
  `t_name` varchar(10) NOT NULL,
  `t_office` varchar(20) DEFAULT NULL,
  `t_phone` char(11) DEFAULT NULL,
  `depart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachter
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
