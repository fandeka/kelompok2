/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : elearning

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-08 13:07:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for history_student
-- ----------------------------
DROP TABLE IF EXISTS `history_student`;
CREATE TABLE `history_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_user_name` varchar(100) NOT NULL,
  `student_status` int(11) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_orgpassword` varchar(100) NOT NULL,
  `student_unique_no` varchar(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_birthdate` date NOT NULL,
  `student_roll_no` varchar(100) NOT NULL,
  `student_standard` int(11) NOT NULL,
  `student_address` varchar(100) NOT NULL,
  `student_city` varchar(100) NOT NULL,
  `student_phone` varchar(50) NOT NULL,
  `student_parent_phone` varchar(50) NOT NULL,
  `student_enr_no` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_photo` varchar(100) NOT NULL,
  `student_branch` varchar(100) NOT NULL,
  `student_semester` varchar(100) NOT NULL,
  `student_division` varchar(50) NOT NULL,
  `student_batch` varchar(50) NOT NULL,
  `gcm_code` longtext NOT NULL,
  `pangkat` varchar(150) NOT NULL,
  `korp` varchar(150) NOT NULL,
  `nrp` varchar(150) NOT NULL,
  `kesatuan` varchar(150) NOT NULL,
  `jabatan` varchar(150) NOT NULL,
  `matra` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
