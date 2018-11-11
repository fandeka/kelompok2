/*
 Navicat Premium Data Transfer

 Source Server         : koneksi_ke_sql_local
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : elearning

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 11/11/2018 23:36:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendence
-- ----------------------------
DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence`  (
  `attendence_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendence_date` date NOT NULL,
  `attended` int(11) NOT NULL,
  `attendence_reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendence_id`) USING BTREE,
  UNIQUE INDEX `standard_id`(`standard_id`, `student_id`, `attendence_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 788 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of attendence
-- ----------------------------
INSERT INTO `attendence` VALUES (1, 7, 13, 7, '2016-04-15', 1, '', '2016-04-17 20:24:10');
INSERT INTO `attendence` VALUES (2, 7, 13, 15, '2016-04-15', 1, '', '2016-04-17 20:24:10');
INSERT INTO `attendence` VALUES (3, 7, 13, 8, '2016-04-15', 1, '', '2016-04-17 20:24:10');
INSERT INTO `attendence` VALUES (4, 8, 8, 1, '2016-04-18', 1, '', '2016-04-18 13:04:27');
INSERT INTO `attendence` VALUES (5, 8, 8, 2, '2016-04-18', 1, '', '2016-04-18 13:04:27');
INSERT INTO `attendence` VALUES (6, 8, 8, 3, '2016-04-18', 0, 'not well', '2016-04-18 13:04:27');
INSERT INTO `attendence` VALUES (7, 8, 9, 4, '2016-04-25', 1, '', '2016-04-24 13:35:00');
INSERT INTO `attendence` VALUES (8, 8, 9, 20, '2016-04-25', 1, '', '2016-04-24 13:35:00');
INSERT INTO `attendence` VALUES (9, 7, 13, 7, '2016-04-25', 1, '', '2016-04-24 14:57:43');
INSERT INTO `attendence` VALUES (10, 7, 13, 8, '2016-04-25', 1, '', '2016-04-24 14:57:43');
INSERT INTO `attendence` VALUES (11, 7, 13, 15, '2016-04-25', 0, 'not well', '2016-04-24 14:57:43');
INSERT INTO `attendence` VALUES (12, 7, 14, 9, '2016-04-25', 1, '', '2016-04-24 14:58:02');
INSERT INTO `attendence` VALUES (13, 7, 14, 13, '2016-04-25', 0, 'not good', '2016-04-24 14:58:02');
INSERT INTO `attendence` VALUES (14, 7, 14, 16, '2016-04-25', 1, '', '2016-04-24 14:58:02');
INSERT INTO `attendence` VALUES (21, 7, 13, 7, '2016-04-26', 1, '', '2016-04-24 15:29:47');
INSERT INTO `attendence` VALUES (22, 7, 13, 8, '2016-04-26', 1, '', '2016-04-24 15:29:47');
INSERT INTO `attendence` VALUES (23, 7, 13, 15, '2016-04-26', 0, 'not well', '2016-04-24 15:29:47');
INSERT INTO `attendence` VALUES (24, 16, 18, 23, '2018-08-16', 1, 'Sudah Hadir', '2018-08-16 09:53:08');
INSERT INTO `attendence` VALUES (25, 7, 19, 22, '2018-08-17', 0, 'Iyaa', '2018-08-17 11:27:15');
INSERT INTO `attendence` VALUES (26, 7, 19, 25, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:08');
INSERT INTO `attendence` VALUES (27, 7, 19, 26, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:08');
INSERT INTO `attendence` VALUES (28, 7, 19, 27, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:08');
INSERT INTO `attendence` VALUES (29, 7, 19, 28, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:08');
INSERT INTO `attendence` VALUES (30, 7, 19, 29, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (31, 7, 19, 30, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (32, 7, 19, 31, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (33, 7, 19, 32, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (34, 7, 19, 33, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (35, 7, 19, 34, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (36, 7, 19, 35, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (37, 7, 19, 36, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (38, 7, 19, 37, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (39, 7, 19, 38, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (40, 7, 19, 39, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (41, 7, 19, 40, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (42, 7, 19, 41, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (43, 7, 19, 42, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (44, 7, 19, 43, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (45, 7, 19, 44, '2018-07-18', 1, 'Hadir', '2018-09-05 08:42:09');
INSERT INTO `attendence` VALUES (46, 7, 19, 25, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (47, 7, 19, 26, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (48, 7, 19, 27, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (49, 7, 19, 28, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (50, 7, 19, 29, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (51, 7, 19, 30, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (52, 7, 19, 31, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (53, 7, 19, 32, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (54, 7, 19, 33, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (55, 7, 19, 34, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (56, 7, 19, 35, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (57, 7, 19, 36, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (58, 7, 19, 37, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (59, 7, 19, 38, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (60, 7, 19, 39, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (61, 7, 19, 40, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (62, 7, 19, 41, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (63, 7, 19, 42, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (64, 7, 19, 43, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (65, 7, 19, 44, '2018-07-19', 1, 'Hadir', '2018-09-05 08:44:44');
INSERT INTO `attendence` VALUES (86, 7, 19, 25, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (87, 7, 19, 26, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (88, 7, 19, 27, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (89, 7, 19, 28, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (90, 7, 19, 29, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (91, 7, 19, 30, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (92, 7, 19, 31, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (93, 7, 19, 32, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (94, 7, 19, 33, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (95, 7, 19, 34, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (96, 7, 19, 35, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (97, 7, 19, 36, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (98, 7, 19, 37, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (99, 7, 19, 38, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (100, 7, 19, 39, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (101, 7, 19, 40, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (102, 7, 19, 41, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (103, 7, 19, 42, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (104, 7, 19, 43, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (105, 7, 19, 44, '2018-07-20', 1, 'Hadir', '2018-09-05 08:48:27');
INSERT INTO `attendence` VALUES (106, 7, 19, 25, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (107, 7, 19, 26, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (108, 7, 19, 27, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (109, 7, 19, 28, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (110, 7, 19, 29, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (111, 7, 19, 30, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (112, 7, 19, 31, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (113, 7, 19, 32, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (114, 7, 19, 33, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (115, 7, 19, 34, '2018-07-23', 0, 'Piket DIkantornya', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (116, 7, 19, 35, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (117, 7, 19, 36, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (118, 7, 19, 37, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (119, 7, 19, 38, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (120, 7, 19, 39, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (121, 7, 19, 40, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (122, 7, 19, 41, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (123, 7, 19, 42, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (124, 7, 19, 43, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (125, 7, 19, 44, '2018-07-23', 1, 'Hadir', '2018-09-05 08:49:58');
INSERT INTO `attendence` VALUES (126, 7, 19, 25, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (127, 7, 19, 26, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (128, 7, 19, 27, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (129, 7, 19, 28, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (130, 7, 19, 29, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (131, 7, 19, 30, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (132, 7, 19, 31, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (133, 7, 19, 32, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (134, 7, 19, 33, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (135, 7, 19, 34, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (136, 7, 19, 35, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (137, 7, 19, 36, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (138, 7, 19, 37, '2018-07-24', 0, 'Ijin', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (139, 7, 19, 38, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (140, 7, 19, 39, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (141, 7, 19, 40, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (142, 7, 19, 41, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (143, 7, 19, 42, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (144, 7, 19, 43, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (145, 7, 19, 44, '2018-07-24', 1, 'Hadir', '2018-09-05 08:52:29');
INSERT INTO `attendence` VALUES (146, 7, 19, 25, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (147, 7, 19, 26, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (148, 7, 19, 27, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (149, 7, 19, 28, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (150, 7, 19, 29, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (151, 7, 19, 30, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (152, 7, 19, 31, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (153, 7, 19, 32, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (154, 7, 19, 33, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (155, 7, 19, 34, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (156, 7, 19, 35, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (157, 7, 19, 36, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (158, 7, 19, 37, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (159, 7, 19, 38, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (160, 7, 19, 39, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (161, 7, 19, 40, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (162, 7, 19, 41, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (163, 7, 19, 42, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (164, 7, 19, 43, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (165, 7, 19, 44, '2018-07-25', 1, 'Hadir', '2018-09-05 08:53:43');
INSERT INTO `attendence` VALUES (166, 7, 19, 25, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (167, 7, 19, 26, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (168, 7, 19, 27, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (169, 7, 19, 28, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (170, 7, 19, 29, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (171, 7, 19, 30, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (172, 7, 19, 31, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (173, 7, 19, 32, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (174, 7, 19, 33, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (175, 7, 19, 34, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (176, 7, 19, 35, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (177, 7, 19, 36, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (178, 7, 19, 37, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (179, 7, 19, 38, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (180, 7, 19, 39, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (181, 7, 19, 40, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (182, 7, 19, 41, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (183, 7, 19, 42, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (184, 7, 19, 43, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (185, 7, 19, 44, '2018-07-26', 1, 'Hadir', '2018-09-05 08:55:43');
INSERT INTO `attendence` VALUES (206, 7, 19, 25, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (207, 7, 19, 26, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (208, 7, 19, 27, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (209, 7, 19, 28, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (210, 7, 19, 29, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (211, 7, 19, 30, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (212, 7, 19, 31, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (213, 7, 19, 32, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (214, 7, 19, 33, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (215, 7, 19, 34, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (216, 7, 19, 35, '2018-07-27', 0, 'Dinas Luar', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (217, 7, 19, 36, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (218, 7, 19, 37, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (219, 7, 19, 38, '2018-07-27', 0, 'Ijin Orang Tua Sakit', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (220, 7, 19, 39, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (221, 7, 19, 40, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (222, 7, 19, 41, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (223, 7, 19, 42, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (224, 7, 19, 43, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (225, 7, 19, 44, '2018-07-27', 1, 'Hadir', '2018-09-05 08:58:57');
INSERT INTO `attendence` VALUES (226, 7, 19, 25, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (227, 7, 19, 26, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (228, 7, 19, 27, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (229, 7, 19, 28, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (230, 7, 19, 29, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (231, 7, 19, 30, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (232, 7, 19, 31, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (233, 7, 19, 32, '2018-07-30', 0, 'Dinas Luar', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (234, 7, 19, 33, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (235, 7, 19, 34, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (236, 7, 19, 35, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (237, 7, 19, 36, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (238, 7, 19, 37, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (239, 7, 19, 38, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (240, 7, 19, 39, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (241, 7, 19, 40, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (242, 7, 19, 41, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (243, 7, 19, 42, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (244, 7, 19, 43, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (245, 7, 19, 44, '2018-07-30', 1, 'Hadir', '2018-09-05 09:00:56');
INSERT INTO `attendence` VALUES (246, 7, 19, 25, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (247, 7, 19, 26, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (248, 7, 19, 27, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (249, 7, 19, 28, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (250, 7, 19, 29, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (251, 7, 19, 30, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (252, 7, 19, 31, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (253, 7, 19, 32, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (254, 7, 19, 33, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (255, 7, 19, 34, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (256, 7, 19, 35, '2018-07-31', 0, 'Dinas Luar', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (257, 7, 19, 36, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (258, 7, 19, 37, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (259, 7, 19, 38, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (260, 7, 19, 39, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (261, 7, 19, 40, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (262, 7, 19, 41, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (263, 7, 19, 42, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (264, 7, 19, 43, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (265, 7, 19, 44, '2018-07-31', 1, 'Hadir', '2018-09-05 09:04:10');
INSERT INTO `attendence` VALUES (266, 7, 19, 25, '2018-08-01', 0, 'Sakit', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (267, 7, 19, 26, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (268, 7, 19, 27, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (269, 7, 19, 28, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (270, 7, 19, 29, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (271, 7, 19, 30, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (272, 7, 19, 31, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (273, 7, 19, 32, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (274, 7, 19, 33, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (275, 7, 19, 34, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (276, 7, 19, 35, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (277, 7, 19, 36, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (278, 7, 19, 37, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (279, 7, 19, 38, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (280, 7, 19, 39, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (281, 7, 19, 40, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (282, 7, 19, 41, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (283, 7, 19, 42, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (284, 7, 19, 43, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (285, 7, 19, 44, '2018-08-01', 1, 'Hadir', '2018-09-05 09:05:11');
INSERT INTO `attendence` VALUES (286, 7, 19, 25, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (287, 7, 19, 26, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (288, 7, 19, 27, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (289, 7, 19, 28, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (290, 7, 19, 29, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (291, 7, 19, 30, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (292, 7, 19, 31, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (293, 7, 19, 32, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (294, 7, 19, 33, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (295, 7, 19, 34, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (296, 7, 19, 35, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (297, 7, 19, 36, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (298, 7, 19, 37, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (299, 7, 19, 38, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (300, 7, 19, 39, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (301, 7, 19, 40, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (302, 7, 19, 41, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (303, 7, 19, 42, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (304, 7, 19, 43, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (305, 7, 19, 44, '2018-08-02', 1, 'Hadir', '2018-09-05 09:05:59');
INSERT INTO `attendence` VALUES (306, 7, 19, 25, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:56');
INSERT INTO `attendence` VALUES (307, 7, 19, 26, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:56');
INSERT INTO `attendence` VALUES (308, 7, 19, 27, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:56');
INSERT INTO `attendence` VALUES (309, 7, 19, 28, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:56');
INSERT INTO `attendence` VALUES (310, 7, 19, 29, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:56');
INSERT INTO `attendence` VALUES (311, 7, 19, 30, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (312, 7, 19, 31, '2018-08-03', 0, 'Ijin', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (313, 7, 19, 32, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (314, 7, 19, 33, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (315, 7, 19, 34, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (316, 7, 19, 35, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (317, 7, 19, 36, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (318, 7, 19, 37, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (319, 7, 19, 38, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (320, 7, 19, 39, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (321, 7, 19, 40, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (322, 7, 19, 41, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (323, 7, 19, 42, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (324, 7, 19, 43, '2018-08-03', 1, 'Hadir', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (325, 7, 19, 44, '2018-08-03', 0, 'Dinas Luar', '2018-09-05 09:11:57');
INSERT INTO `attendence` VALUES (326, 7, 19, 25, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (327, 7, 19, 26, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (328, 7, 19, 27, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (329, 7, 19, 28, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (330, 7, 19, 29, '2018-08-06', 0, 'Sakit', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (331, 7, 19, 30, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (332, 7, 19, 31, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (333, 7, 19, 32, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (334, 7, 19, 33, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (335, 7, 19, 34, '2018-08-06', 0, 'Sakit', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (336, 7, 19, 35, '2018-08-06', 0, 'Sakit', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (337, 7, 19, 36, '2018-08-06', 0, 'Ijin', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (338, 7, 19, 37, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (339, 7, 19, 38, '2018-08-06', 0, 'Sakit', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (340, 7, 19, 39, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (341, 7, 19, 40, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (342, 7, 19, 41, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (343, 7, 19, 42, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (344, 7, 19, 43, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (345, 7, 19, 44, '2018-08-06', 1, 'Hadir', '2018-09-05 09:41:54');
INSERT INTO `attendence` VALUES (346, 7, 19, 25, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (347, 7, 19, 26, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (348, 7, 19, 27, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (349, 7, 19, 28, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (350, 7, 19, 29, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (351, 7, 19, 30, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (352, 7, 19, 31, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (353, 7, 19, 32, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (354, 7, 19, 33, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (355, 7, 19, 34, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (356, 7, 19, 35, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (357, 7, 19, 36, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (358, 7, 19, 37, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (359, 7, 19, 38, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (360, 7, 19, 39, '2018-08-07', 0, 'Ijin', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (361, 7, 19, 40, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (362, 7, 19, 41, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (363, 7, 19, 42, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (364, 7, 19, 43, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (365, 7, 19, 44, '2018-08-07', 1, 'Hadir', '2018-09-05 09:42:47');
INSERT INTO `attendence` VALUES (366, 7, 19, 25, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (367, 7, 19, 26, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (368, 7, 19, 27, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (369, 7, 19, 28, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (370, 7, 19, 29, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (371, 7, 19, 30, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (372, 7, 19, 31, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (373, 7, 19, 32, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (374, 7, 19, 33, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (375, 7, 19, 34, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (376, 7, 19, 35, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (377, 7, 19, 36, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (378, 7, 19, 37, '2018-08-08', 0, 'Sakit', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (379, 7, 19, 38, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (380, 7, 19, 39, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (381, 7, 19, 40, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (382, 7, 19, 41, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (383, 7, 19, 42, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (384, 7, 19, 43, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (385, 7, 19, 44, '2018-08-08', 1, 'Hadir', '2018-09-05 09:43:33');
INSERT INTO `attendence` VALUES (386, 7, 19, 25, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (387, 7, 19, 26, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (388, 7, 19, 27, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (389, 7, 19, 28, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (390, 7, 19, 29, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (391, 7, 19, 30, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (392, 7, 19, 31, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (393, 7, 19, 32, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (394, 7, 19, 33, '2018-08-09', 0, 'Ijin', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (395, 7, 19, 34, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (396, 7, 19, 35, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (397, 7, 19, 36, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (398, 7, 19, 37, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (399, 7, 19, 38, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (400, 7, 19, 39, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (401, 7, 19, 40, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (402, 7, 19, 41, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (403, 7, 19, 42, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (404, 7, 19, 43, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (405, 7, 19, 44, '2018-08-09', 1, 'Hadir', '2018-09-05 09:44:28');
INSERT INTO `attendence` VALUES (406, 7, 19, 25, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (407, 7, 19, 26, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (408, 7, 19, 27, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (409, 7, 19, 28, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (410, 7, 19, 29, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (411, 7, 19, 30, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (412, 7, 19, 31, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (413, 7, 19, 32, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (414, 7, 19, 33, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (415, 7, 19, 34, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (416, 7, 19, 35, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (417, 7, 19, 36, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (418, 7, 19, 37, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (419, 7, 19, 38, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (420, 7, 19, 39, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (421, 7, 19, 40, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (422, 7, 19, 41, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (423, 7, 19, 42, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (424, 7, 19, 43, '2018-08-10', 0, 'Ijin', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (425, 7, 19, 44, '2018-08-10', 1, 'Hadir', '2018-09-05 09:45:27');
INSERT INTO `attendence` VALUES (426, 7, 19, 25, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (427, 7, 19, 26, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (428, 7, 19, 27, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (429, 7, 19, 28, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (430, 7, 19, 29, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (431, 7, 19, 30, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (432, 7, 19, 31, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (433, 7, 19, 32, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (434, 7, 19, 33, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (435, 7, 19, 34, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (436, 7, 19, 35, '2018-08-13', 0, 'Ijin', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (437, 7, 19, 36, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (438, 7, 19, 37, '2018-08-13', 0, 'Ijin', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (439, 7, 19, 38, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (440, 7, 19, 39, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (441, 7, 19, 40, '2018-08-13', 0, 'Dinas Luar', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (442, 7, 19, 41, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (443, 7, 19, 42, '2018-08-13', 0, 'Sakit', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (444, 7, 19, 43, '2018-08-13', 1, 'Hadir', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (445, 7, 19, 44, '2018-08-13', 0, 'Dinas Luar', '2018-09-05 09:47:46');
INSERT INTO `attendence` VALUES (446, 7, 19, 25, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (447, 7, 19, 26, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (448, 7, 19, 27, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (449, 7, 19, 28, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (450, 7, 19, 29, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (451, 7, 19, 30, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (452, 7, 19, 31, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (453, 7, 19, 32, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (454, 7, 19, 33, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (455, 7, 19, 34, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (456, 7, 19, 35, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (457, 7, 19, 36, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (458, 7, 19, 37, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (459, 7, 19, 38, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (460, 7, 19, 39, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (461, 7, 19, 40, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (462, 7, 19, 41, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (463, 7, 19, 42, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (464, 7, 19, 43, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (465, 7, 19, 44, '2018-08-14', 1, 'Hadir', '2018-09-05 09:48:20');
INSERT INTO `attendence` VALUES (466, 7, 19, 25, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:02');
INSERT INTO `attendence` VALUES (467, 7, 19, 26, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (468, 7, 19, 27, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (469, 7, 19, 28, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (470, 7, 19, 29, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (471, 7, 19, 30, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (472, 7, 19, 31, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (473, 7, 19, 32, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (474, 7, 19, 33, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (475, 7, 19, 34, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (476, 7, 19, 35, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (477, 7, 19, 36, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (478, 7, 19, 37, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (479, 7, 19, 38, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (480, 7, 19, 39, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (481, 7, 19, 40, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (482, 7, 19, 41, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (483, 7, 19, 42, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (484, 7, 19, 43, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (485, 7, 19, 44, '2018-08-15', 1, 'Hadir', '2018-09-05 09:49:03');
INSERT INTO `attendence` VALUES (486, 7, 19, 25, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:07');
INSERT INTO `attendence` VALUES (487, 7, 19, 26, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (488, 7, 19, 27, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (489, 7, 19, 28, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (490, 7, 19, 29, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (491, 7, 19, 30, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (492, 7, 19, 31, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (493, 7, 19, 32, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (494, 7, 19, 33, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (495, 7, 19, 34, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (496, 7, 19, 35, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (497, 7, 19, 36, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (498, 7, 19, 37, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (499, 7, 19, 38, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (500, 7, 19, 39, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (501, 7, 19, 40, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (502, 7, 19, 41, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (503, 7, 19, 42, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (504, 7, 19, 43, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (505, 7, 19, 44, '2018-08-16', 1, 'Hadir', '2018-09-05 09:50:08');
INSERT INTO `attendence` VALUES (506, 7, 19, 25, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (507, 7, 19, 26, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (508, 7, 19, 27, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (509, 7, 19, 28, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (510, 7, 19, 29, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (511, 7, 19, 30, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (512, 7, 19, 31, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (513, 7, 19, 32, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (514, 7, 19, 33, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (515, 7, 19, 34, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (516, 7, 19, 35, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (517, 7, 19, 36, '2018-08-20', 1, 'HadirHadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (518, 7, 19, 37, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (519, 7, 19, 38, '2018-08-20', 0, 'Ijin Orang Tua Sakit', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (520, 7, 19, 39, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (521, 7, 19, 40, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (522, 7, 19, 41, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (523, 7, 19, 42, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (524, 7, 19, 43, '2018-08-20', 0, 'Sakit', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (525, 7, 19, 44, '2018-08-20', 1, 'Hadir', '2018-09-05 09:51:35');
INSERT INTO `attendence` VALUES (526, 7, 19, 25, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (527, 7, 19, 26, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (528, 7, 19, 27, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (529, 7, 19, 28, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (530, 7, 19, 29, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (531, 7, 19, 30, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (532, 7, 19, 31, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (533, 7, 19, 32, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (534, 7, 19, 33, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (535, 7, 19, 34, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (536, 7, 19, 35, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (537, 7, 19, 36, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (538, 7, 19, 37, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (539, 7, 19, 38, '2018-08-21', 0, 'Ijin Orang Tua Sakit', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (540, 7, 19, 39, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (541, 7, 19, 40, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (542, 7, 19, 41, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (543, 7, 19, 42, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (544, 7, 19, 43, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (545, 7, 19, 44, '2018-08-21', 1, 'Hadir', '2018-09-05 09:52:15');
INSERT INTO `attendence` VALUES (546, 7, 19, 25, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (547, 7, 19, 26, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (548, 7, 19, 27, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (549, 7, 19, 28, '2018-08-23', 0, 'Ijin', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (550, 7, 19, 29, '2018-08-23', 0, 'Ijin', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (551, 7, 19, 30, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (552, 7, 19, 31, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (553, 7, 19, 32, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (554, 7, 19, 33, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (555, 7, 19, 34, '2018-08-23', 0, 'Sakit', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (556, 7, 19, 35, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (557, 7, 19, 36, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (558, 7, 19, 37, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (559, 7, 19, 38, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (560, 7, 19, 39, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (561, 7, 19, 40, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (562, 7, 19, 41, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (563, 7, 19, 42, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (564, 7, 19, 43, '2018-08-23', 1, '', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (565, 7, 19, 44, '2018-08-23', 0, 'Ijin Anak Sakit', '2018-09-05 09:54:06');
INSERT INTO `attendence` VALUES (566, 7, 19, 25, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (567, 7, 19, 26, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (568, 7, 19, 27, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (569, 7, 19, 28, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (570, 7, 19, 29, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (571, 7, 19, 30, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (572, 7, 19, 31, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (573, 7, 19, 32, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (574, 7, 19, 33, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (575, 7, 19, 34, '2018-08-24', 0, 'Ijin', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (576, 7, 19, 35, '2018-08-24', 0, 'Ijin', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (577, 7, 19, 36, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (578, 7, 19, 37, '2018-08-24', 0, 'Ijin', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (579, 7, 19, 38, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (580, 7, 19, 39, '2018-08-24', 0, 'Ijin', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (581, 7, 19, 40, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (582, 7, 19, 41, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (583, 7, 19, 42, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (584, 7, 19, 43, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (585, 7, 19, 44, '2018-08-24', 1, '', '2018-09-05 09:55:34');
INSERT INTO `attendence` VALUES (586, 7, 19, 25, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (587, 7, 19, 26, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (588, 7, 19, 27, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (589, 7, 19, 28, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (590, 7, 19, 29, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (591, 7, 19, 30, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (592, 7, 19, 31, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (593, 7, 19, 32, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (594, 7, 19, 33, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (595, 7, 19, 34, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (596, 7, 19, 35, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (597, 7, 19, 36, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (598, 7, 19, 37, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (599, 7, 19, 38, '2018-08-27', 0, 'Ijin Orang Tua Sakit', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (600, 7, 19, 39, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (601, 7, 19, 40, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (602, 7, 19, 41, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (603, 7, 19, 42, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (604, 7, 19, 43, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (605, 7, 19, 44, '2018-08-27', 1, '', '2018-09-05 09:56:15');
INSERT INTO `attendence` VALUES (606, 7, 19, 25, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (607, 7, 19, 26, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (608, 7, 19, 27, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (609, 7, 19, 28, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (610, 7, 19, 29, '2018-08-28', 0, 'Ijin', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (611, 7, 19, 30, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (612, 7, 19, 31, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (613, 7, 19, 32, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (614, 7, 19, 33, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (615, 7, 19, 34, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (616, 7, 19, 35, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (617, 7, 19, 36, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (618, 7, 19, 37, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (619, 7, 19, 38, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (620, 7, 19, 39, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (621, 7, 19, 40, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (622, 7, 19, 41, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (623, 7, 19, 42, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (624, 7, 19, 43, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (625, 7, 19, 44, '2018-08-28', 1, '', '2018-09-05 09:57:20');
INSERT INTO `attendence` VALUES (626, 7, 19, 25, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (627, 7, 19, 26, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (628, 7, 19, 27, '2018-08-29', 0, 'Ijin', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (629, 7, 19, 28, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (630, 7, 19, 29, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (631, 7, 19, 30, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (632, 7, 19, 31, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (633, 7, 19, 32, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (634, 7, 19, 33, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (635, 7, 19, 34, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (636, 7, 19, 35, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (637, 7, 19, 36, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (638, 7, 19, 37, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (639, 7, 19, 38, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (640, 7, 19, 39, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (641, 7, 19, 40, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (642, 7, 19, 41, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (643, 7, 19, 42, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (644, 7, 19, 43, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (645, 7, 19, 44, '2018-08-29', 1, '', '2018-09-05 09:58:32');
INSERT INTO `attendence` VALUES (646, 7, 19, 25, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (647, 7, 19, 26, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (648, 7, 19, 27, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (649, 7, 19, 28, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (650, 7, 19, 29, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (651, 7, 19, 30, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (652, 7, 19, 31, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (653, 7, 19, 32, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (654, 7, 19, 33, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (655, 7, 19, 34, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (656, 7, 19, 35, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (657, 7, 19, 36, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (658, 7, 19, 37, '2018-08-30', 0, 'Ijin', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (659, 7, 19, 38, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (660, 7, 19, 39, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (661, 7, 19, 40, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (662, 7, 19, 41, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (663, 7, 19, 42, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (664, 7, 19, 43, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (665, 7, 19, 44, '2018-08-30', 1, '', '2018-09-05 09:59:07');
INSERT INTO `attendence` VALUES (666, 7, 19, 25, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (667, 7, 19, 26, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (668, 7, 19, 27, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (669, 7, 19, 28, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (670, 7, 19, 29, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (671, 7, 19, 30, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (672, 7, 19, 31, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (673, 7, 19, 32, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (674, 7, 19, 33, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (675, 7, 19, 34, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (676, 7, 19, 35, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (677, 7, 19, 36, '2018-08-31', 0, 'Ijin', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (678, 7, 19, 37, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (679, 7, 19, 38, '2018-08-31', 0, 'Ijin Orang Tua Sakit', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (680, 7, 19, 39, '2018-08-31', 0, 'Sakit', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (681, 7, 19, 40, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (682, 7, 19, 41, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (683, 7, 19, 42, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (684, 7, 19, 43, '2018-08-31', 1, '', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (685, 7, 19, 44, '2018-08-31', 0, 'Ijin', '2018-09-05 10:00:36');
INSERT INTO `attendence` VALUES (686, 7, 19, 25, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (687, 7, 19, 26, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (688, 7, 19, 27, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (689, 7, 19, 28, '2018-09-03', 0, 'Ijin', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (690, 7, 19, 29, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (691, 7, 19, 30, '2018-09-03', 0, 'Ijin', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (692, 7, 19, 31, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (693, 7, 19, 32, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (694, 7, 19, 33, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (695, 7, 19, 34, '2018-09-03', 0, 'Ijin', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (696, 7, 19, 35, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (697, 7, 19, 36, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (698, 7, 19, 37, '2018-09-03', 0, 'Ijin', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (699, 7, 19, 38, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (700, 7, 19, 39, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (701, 7, 19, 40, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (702, 7, 19, 41, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (703, 7, 19, 42, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (704, 7, 19, 43, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (705, 7, 19, 44, '2018-09-03', 1, '', '2018-09-05 10:01:59');
INSERT INTO `attendence` VALUES (706, 7, 19, 25, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (707, 7, 19, 26, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (708, 7, 19, 27, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (709, 7, 19, 28, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (710, 7, 19, 29, '2018-09-04', 0, 'Ijin', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (711, 7, 19, 30, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (712, 7, 19, 31, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (713, 7, 19, 32, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (714, 7, 19, 33, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (715, 7, 19, 34, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (716, 7, 19, 35, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (717, 7, 19, 36, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (718, 7, 19, 37, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (719, 7, 19, 38, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (720, 7, 19, 39, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (721, 7, 19, 40, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (722, 7, 19, 41, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (723, 7, 19, 42, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (724, 7, 19, 43, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (725, 7, 19, 44, '2018-09-04', 1, '', '2018-09-05 10:02:52');
INSERT INTO `attendence` VALUES (726, 7, 19, 25, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (727, 7, 19, 26, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (728, 7, 19, 27, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (729, 7, 19, 28, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (730, 7, 19, 29, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (731, 7, 19, 30, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (732, 7, 19, 31, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (733, 7, 19, 32, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (734, 7, 19, 33, '2018-09-05', 0, 'Ijin', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (735, 7, 19, 34, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (736, 7, 19, 35, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (737, 7, 19, 36, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (738, 7, 19, 37, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (739, 7, 19, 38, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (740, 7, 19, 39, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (741, 7, 19, 40, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (742, 7, 19, 41, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (743, 7, 19, 42, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (744, 7, 19, 43, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (745, 7, 19, 44, '2018-09-05', 1, 'Hadir', '2018-09-05 10:04:37');
INSERT INTO `attendence` VALUES (746, 7, 19, 25, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (747, 7, 19, 26, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (748, 7, 19, 27, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (749, 7, 19, 28, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (750, 7, 19, 29, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (751, 7, 19, 30, '2018-09-06', 0, 'Sakit', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (752, 7, 19, 31, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (753, 7, 19, 32, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (754, 7, 19, 33, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (755, 7, 19, 34, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (756, 7, 19, 35, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (757, 7, 19, 36, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (758, 7, 19, 37, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (759, 7, 19, 38, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (760, 7, 19, 39, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (761, 7, 19, 40, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (762, 7, 19, 41, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (763, 7, 19, 42, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (764, 7, 19, 43, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (765, 7, 19, 44, '2018-09-06', 1, 'Hadir', '2018-09-06 08:33:55');
INSERT INTO `attendence` VALUES (766, 7, 19, 25, '2018-09-13', 1, '', '2018-09-13 08:49:03');
INSERT INTO `attendence` VALUES (767, 7, 19, 26, '2018-09-13', 0, 'SAKIT', '2018-09-13 08:49:03');
INSERT INTO `attendence` VALUES (770, 7, 19, 27, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (771, 7, 19, 28, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (772, 7, 19, 29, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (773, 7, 19, 30, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (774, 7, 19, 31, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (775, 7, 19, 32, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (776, 7, 19, 33, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (777, 7, 19, 34, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (778, 7, 19, 35, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (779, 7, 19, 36, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (780, 7, 19, 37, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (781, 7, 19, 38, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (782, 7, 19, 39, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (783, 7, 19, 40, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (784, 7, 19, 41, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (785, 7, 19, 42, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (786, 7, 19, 43, '2018-09-13', 1, '', '2018-09-13 08:50:07');
INSERT INTO `attendence` VALUES (787, 7, 19, 44, '2018-09-13', 1, '', '2018-09-13 08:50:07');

-- ----------------------------
-- Table structure for demo_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `demo_enquiry`;
CREATE TABLE `demo_enquiry`  (
  `demo_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`demo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `event_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_start` date NOT NULL,
  `event_end` date NOT NULL,
  `event_status` int(11) NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `teacher_id` int(11) NOT NULL,
  `teacher` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_attachment` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (4, 8, 'fairwell party', 'we organize annual function and fair well party for detained student . so please come to our school and attain all program.', '', '2016-04-20', '2016-04-21', 1, '2016-04-13 12:00:09', 0, '', '');
INSERT INTO `event` VALUES (5, 8, 'test', 'test event', '', '2016-04-20', '2016-04-23', 1, '2016-04-13 12:00:26', 0, '', '');
INSERT INTO `event` VALUES (11, 8, 'test today event', 'test today event', '', '2016-04-24', '2016-04-24', 1, '2016-04-24 18:32:03', 0, '', '');
INSERT INTO `event` VALUES (12, 8, 'test today  and tommoro', 'teoday and tomorrow', '', '2016-04-24', '2016-04-26', 1, '2016-04-24 18:38:37', 0, '', '');
INSERT INTO `event` VALUES (15, 16, 'Introduction', 'Notasi musik', '', '2018-08-16', '2018-08-16', 1, '2018-08-16 09:45:32', 0, '', '');
INSERT INTO `event` VALUES (16, 16, 'Pengenalan Assemble', 'Pengenalan Assemble', '', '2018-08-19', '2018-08-20', 1, '2018-08-16 09:46:34', 0, '', '');
INSERT INTO `event` VALUES (40, 7, 'Introduction', 'etetets', 'ab2a848d-f82e-4e88-8fcb-2500b423eeb02.png', '2011-11-11', '2011-11-11', 1, '2018-08-29 10:12:35', 1, 'Fandeka Aghfirlana', 'oop3.txt');
INSERT INTO `event` VALUES (41, 7, 'Pengenalan Andorid', 'Mengenal Android', 'Android-Security-Bug-Found-Hackers-Gain-System-Access.png', '2018-07-18', '2018-07-18', 1, '2018-08-29 11:14:38', 1, 'Fandeka Aghfirlana', 'Pengenalan_Android.pdf');
INSERT INTO `event` VALUES (42, 7, 'Tool Android Studio', 'Mengenal Tool Android Studio', 'android-studio.png', '2018-07-19', '2018-07-20', 1, '2018-08-29 11:17:33', 1, 'Fandeka Aghfirlana', 'Tool_Android_Studio1.pptx');
INSERT INTO `event` VALUES (43, 7, 'Mengenal Komponent-komponent', 'Mengenal Komponent-komponent', 'android-internet-of-things.png', '2018-07-20', '2018-07-20', 1, '2018-08-29 11:21:19', 1, 'Fandeka Aghfirlana', 'Android_Component2.pptx');
INSERT INTO `event` VALUES (44, 7, 'Menampilkan Image', 'Menampilkan Image', 'Mobile-App-development.jpg', '2018-07-23', '2018-07-23', 1, '2018-08-29 11:22:36', 1, 'Fandeka Aghfirlana', 'Menampilkan_Image.pptx');
INSERT INTO `event` VALUES (45, 7, 'Warna, Popup, Toast, Action Button', 'Warna, Popup, Toast, Action Button', '08344c92a362b35f0d6e92c5992771c5.jpg', '2018-07-23', '2018-07-23', 1, '2018-08-29 11:24:35', 1, 'Fandeka Aghfirlana', 'Warna,_Popup,_Toast,_Action_Button.pptx');
INSERT INTO `event` VALUES (46, 7, 'Latihan dengan Component', 'Latihan dengan Component', 'f4fb93ad444ed73a663beaae753340be_Components-of-Android1-863-430-c4.jpg', '2018-07-24', '2018-07-24', 1, '2018-08-29 11:31:14', 1, 'Fandeka Aghfirlana', 'Design');
INSERT INTO `event` VALUES (47, 7, 'Desain Layout Linear Layout', 'Desain Layout Linear Layout, Relative Layout dan Frame Layout', '468246-how-enterprise-app-stores-work.jpg', '2018-07-25', '2018-07-26', 1, '2018-08-29 11:36:44', 1, 'Fandeka Aghfirlana', 'Untitled_presentation.pptx');
INSERT INTO `event` VALUES (48, 7, 'Latihan dengan Desain', 'Latihan dengan Desain', 'hero_image_studio_2-2.png', '2018-07-26', '2018-07-26', 1, '2018-08-30 07:49:29', 1, 'Fandeka Aghfirlana', 'design.txt');
INSERT INTO `event` VALUES (49, 7, 'Navigasi Halaman dengan Intent', 'Navigasi Halaman dengan Intent', 'tampilanutamaandroidstudio.jpg', '2018-07-27', '2018-07-27', 1, '2018-08-30 07:55:14', 1, 'Fandeka Aghfirlana', 'Navigasi_Halaman_dengan_Intent.pptx');
INSERT INTO `event` VALUES (50, 7, 'Activity Lifecycle/Siklus Aplikasi', 'Activity Lifecycle/Siklus Aplikasi', 'maxresdefault_(1).jpg', '2018-07-27', '2018-07-28', 1, '2018-08-30 07:58:22', 1, 'Fandeka Aghfirlana', 'Siklus_Aplikasi.pptx');
INSERT INTO `event` VALUES (51, 7, 'Constant & Variable', 'Constant & Variable', '5.png', '2018-07-31', '2018-08-02', 1, '2018-08-30 08:06:52', 1, 'Fandeka Aghfirlana', 'Constant___Variable.pptx');
INSERT INTO `event` VALUES (52, 7, 'If Else Argument', 'If Else Argument', '21247187-글로브-세계화-개념의-블루-생생한-이미지1.jpg', '2018-07-31', '2018-08-02', 1, '2018-08-30 11:43:48', 1, 'Fandeka Aghfirlana', 'If_Then_Else_Argument.pptx');
INSERT INTO `event` VALUES (53, 7, 'Logging & Debugging', 'Logging & Debugging', 'logintutorial_10.png', '2018-08-03', '2018-08-03', 1, '2018-08-30 11:46:25', 1, 'Fandeka Aghfirlana', 'Logging_dan_Debuging.pptx');
INSERT INTO `event` VALUES (54, 7, 'Operator & String', 'Operator & String', 'operator_matematika.JPG', '2018-08-06', '2018-08-06', 1, '2018-08-30 11:48:06', 1, 'Fandeka Aghfirlana', 'Operator_dan_String.pptx');
INSERT INTO `event` VALUES (55, 7, 'Latihan Hitung Luas & Lingkaran', 'Latihan Hitung Luas & Lingkaran', 'maxresdefault_(2)1.jpg', '2018-08-07', '2018-08-07', 1, '2018-08-30 11:53:00', 1, 'Fandeka Aghfirlana', 'maxresdefault_(2)2.jpg');
INSERT INTO `event` VALUES (56, 7, 'OOP Property', 'OOP Property', 'android_studio_start_new_project_1.png', '2018-08-08', '2018-08-13', 1, '2018-08-30 11:57:40', 1, 'Fandeka Aghfirlana', 'OOP_Property.pptx');
INSERT INTO `event` VALUES (57, 7, 'OOP Generic Colection List', 'OOP Generic Colection List', 'ext.jpg', '2018-08-14', '2018-08-15', 1, '2018-08-30 12:01:16', 1, 'Fandeka Aghfirlana', 'OOP_Generic_Collection_List.pptx');
INSERT INTO `event` VALUES (58, 7, 'Latihan OOP & Quiz', 'Latihan OOP & Quiz', 'oop-petanikode.png', '2018-08-15', '2018-08-15', 1, '2018-08-31 07:40:10', 1, 'Fandeka Aghfirlana', 'oop.zip');
INSERT INTO `event` VALUES (59, 7, 'Slide Menu Navigation View Drawer', 'Slide Menu Navigation View Drawer', 'hqdefault.jpg', '2018-08-16', '2018-08-16', 1, '2018-08-31 07:43:57', 1, 'Fandeka Aghfirlana', 'SlideMenu_NavigationViewDrawer.pptx');
INSERT INTO `event` VALUES (60, 7, 'Mengenal Fragment, Konsep, Siklus', 'Mengenal Fragment, Konsep, Siklus', '687474703a2f2f646576656c6f7065722e616e64726f69642e636f6d2f696d616765732f66756e64616d656e74616c732f66', '2018-08-16', '2018-08-20', 1, '2018-08-31 07:45:57', 1, 'Fandeka Aghfirlana', 'SlideMenu_NavigationViewDrawer1.pptx');
INSERT INTO `event` VALUES (61, 7, 'RecycleView vs ListView', 'RecycleView vs ListView', 'Picture1.png', '2018-08-21', '2018-08-21', 1, '2018-08-31 07:51:10', 1, 'Fandeka Aghfirlana', 'RecycleView_vs_ListView.pptx');
INSERT INTO `event` VALUES (62, 7, 'AsyncTask', 'AsyncTask', 'Picture2.png', '2018-08-23', '2018-08-24', 1, '2018-08-31 07:53:10', 1, 'Fandeka Aghfirlana', 'AsyncTask.pptx');
INSERT INTO `event` VALUES (63, 7, 'Menggunakan Library Populer dan Implementasi JSON & GSON', 'Menggunakan Library Populer dan Implementasi JSON & GSON', 'Picture3.png', '2018-08-27', '2018-08-29', 1, '2018-08-31 07:56:43', 1, 'Fandeka Aghfirlana', 'Menggunakan_Library_Populer_dan_Implementasi.pptx');
INSERT INTO `event` VALUES (64, 7, 'Retrovit Library & Picasso Library', 'Retrovit Library & Picasso Library', '1_kF-kwIE5wfbu4a9yXH5AEA.png', '2018-08-30', '2018-08-30', 1, '2018-08-31 08:09:10', 1, 'Fandeka Aghfirlana', 'Menggunakan_Library_Populer_dan_Implementasi1.pptx');
INSERT INTO `event` VALUES (65, 7, 'Simpan Data Preferences & konsep Font awesome, slidemenu library', 'Simpan Data Preferences & konsep Font awesome, slidemenu library', 'Picture12.png', '2018-08-31', '2018-08-31', 1, '2018-08-31 08:12:02', 1, 'Fandeka Aghfirlana', 'Simpan_Data_Preferences_konsep_Font_awesome,_slidemenu_library.pptx');
INSERT INTO `event` VALUES (66, 7, 'Workshop Membuat Aplikasi', 'Workshop Membuat Aplikasi', 'app-android1.jpg', '2018-09-03', '2018-09-12', 1, '2018-08-31 08:23:14', 1, 'Fandeka Aghfirlana', 'Pengenalan_Android1.pdf');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `exam_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_status` int(11) NOT NULL,
  `exam_standard` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (8, 7, 'OOP', 'Membuat OPP dengan Android Studio', 0, 19, '2018-08-15', '2018-08-17 12:00:39');
INSERT INTO `exam` VALUES (9, 7, 'Desain', 'Desain', 0, 19, '2018-08-06', '2018-08-27 10:31:49');
INSERT INTO `exam` VALUES (10, 7, 'Membuat Alogaritma', 'Membuat Alogaritma membuat Indomi\r\nMembuat Alogaritma menghitung lingkaran', 0, 19, '2018-09-04', '2018-09-05 08:53:07');

-- ----------------------------
-- Table structure for exam_result
-- ----------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result`  (
  `exam_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mark_obtain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_mark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exam_result_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam_result
-- ----------------------------
INSERT INTO `exam_result` VALUES (17, 8, 25, 'Android', '80', '80', '2018-09-13 07:57:31');
INSERT INTO `exam_result` VALUES (18, 8, 26, 'Android', '80', '80', '2018-09-13 07:57:40');
INSERT INTO `exam_result` VALUES (19, 8, 27, 'Android', '80', '80', '2018-09-13 07:57:50');
INSERT INTO `exam_result` VALUES (20, 8, 28, 'Android', '70', '70', '2018-09-13 07:58:13');
INSERT INTO `exam_result` VALUES (21, 8, 29, 'Android', '80', '70', '2018-09-13 08:03:23');
INSERT INTO `exam_result` VALUES (22, 8, 30, 'Android', '80', '70', '2018-09-13 08:03:43');
INSERT INTO `exam_result` VALUES (23, 8, 31, 'Android', '80', '70', '2018-09-13 08:03:56');
INSERT INTO `exam_result` VALUES (24, 8, 32, 'Android', '70', '80', '2018-09-13 08:04:23');
INSERT INTO `exam_result` VALUES (25, 8, 33, 'Android', '70', '80', '2018-09-13 08:04:39');
INSERT INTO `exam_result` VALUES (26, 8, 34, 'Android', '70', '80', '2018-09-13 08:05:00');
INSERT INTO `exam_result` VALUES (27, 8, 34, 'Android', '70', '80', '2018-09-13 08:05:21');
INSERT INTO `exam_result` VALUES (28, 8, 34, 'Android', '70', '80', '2018-09-13 08:05:43');
INSERT INTO `exam_result` VALUES (29, 8, 35, 'Android', '80', '70', '2018-09-13 08:06:07');
INSERT INTO `exam_result` VALUES (30, 8, 36, 'Android', '80', '70', '2018-09-13 08:06:29');
INSERT INTO `exam_result` VALUES (31, 8, 37, 'Android', '80', '70', '2018-09-13 08:06:48');
INSERT INTO `exam_result` VALUES (32, 8, 38, 'Android', '80', '70', '2018-09-13 08:07:09');
INSERT INTO `exam_result` VALUES (33, 8, 39, 'Android', '80', '70', '2018-09-13 08:07:22');
INSERT INTO `exam_result` VALUES (34, 8, 40, 'Android', '70', '80', '2018-09-13 08:07:35');
INSERT INTO `exam_result` VALUES (35, 8, 41, 'Android', '80', '70', '2018-09-13 08:07:46');
INSERT INTO `exam_result` VALUES (36, 8, 42, 'Android', '80', '70', '2018-09-13 08:07:59');
INSERT INTO `exam_result` VALUES (37, 8, 43, 'Android', '70', '80', '2018-09-13 08:08:11');
INSERT INTO `exam_result` VALUES (38, 8, 44, 'Android', '80', '80', '2018-09-13 08:08:34');
INSERT INTO `exam_result` VALUES (47, 10, 56, 'Membuat Alogaritma', '', '100', '2018-11-11 21:02:50');
INSERT INTO `exam_result` VALUES (48, 8, 56, 'OOP', '', '90', '2018-11-11 21:05:12');

-- ----------------------------
-- Table structure for history_student
-- ----------------------------
DROP TABLE IF EXISTS `history_student`;
CREATE TABLE `history_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_user_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_status` int(11) NOT NULL,
  `student_password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_orgpassword` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_unique_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_birthdate` date NOT NULL,
  `student_roll_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_standard` int(11) NOT NULL,
  `student_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_parent_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_enr_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_photo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_branch` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_semester` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_division` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_batch` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gcm_code` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pangkat` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `korp` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nrp` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kesatuan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `matra` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history_student
-- ----------------------------
INSERT INTO `history_student` VALUES (68, 53, 7, 'catur', 0, '3a9e3a1e836c1ded01fa4d59323723eb', 'catur', '20180830_123456789', 'Catur Mei Riselasih', '1987-05-26', '', 19, 'Jl. Surtikanti No.6 Rt 6/3 Dirgantara III Halim Perdanakusuma, Jakarta', 'Jakarta', '4677656767', '12122312', '', '', 'Srk_Catur_Mei.jpg', '', '', '', '', '', 'Sersan Kepala', 'Sus/PDE', '535432', 'Lakesgilut', 'Ba Bmn Ur Bmn Setla', 'TNI AU');
INSERT INTO `history_student` VALUES (69, 54, 7, 'catur', 0, '3a9e3a1e836c1ded01fa4d59323723eb', 'catur', '20180830_123456789', 'Catur Mei Riselasih', '1987-05-26', '', 24, 'Jl. Surtikanti No.6 Rt 6/3 Dirgantara III Halim Perdanakusuma, Jakarta', 'Jakarta', '4677656767', '12122312', '', '', 'Srk_Catur_Mei.jpg', '', '', '', '', '', 'Sersan Kepala', 'Sus/PDE', '535432', 'Lakesgilut', 'Ba Bmn Ur Bmn Setla', 'TNI AU');
INSERT INTO `history_student` VALUES (70, 43, 7, 'triyadi', 0, '55b25128b7c0f86850335a53a765cf2e', 'triyadi', '20180830_5b87792d37267', 'Triyadi', '1979-02-25', '', 19, 'Jl. Tengki cipayung Jakarta', 'Jakarta', '6436665', '324554', '', '', 'PNS_TRIYADI.jpg', '', '', '', '', '', 'PNS  II/d', 'Teknik', '197902252008121003', 'Denma Mabes TNI AL', 'Ur data Satminpers', 'TNI AL');
INSERT INTO `history_student` VALUES (71, 42, 7, 'vicra', 0, '1e2a736a0ca7270fa63fc2cccb0386d0', 'vicra', '20180830_5b877840ec1ee', 'M. Nazharudin Vicra', '1996-07-26', '', 19, 'Yonhub Dithub', 'Jakarta', '3336663446', '766756', '', '', 'Prd_Vicra.jpg', '', '', '', '', '', 'Prajurit Dua', 'CHB (Perhubungan)', '31150073990796', 'Yonhub Dithub', 'Ta Mudi Ran Unit Ton 2 Kepernika Yonhub', 'TNI AD');
INSERT INTO `history_student` VALUES (72, 41, 7, 'suhadi', 0, '74107bf59217189319c8e59a7376c461', 'suhadi', '20180830_5b87774056ef9', 'Ahmad Sahudi, S.Sos', '1983-09-16', '', 19, 'Jl. Kapulaga II Blok B No.14 Cibubur Jakarta Timur', 'Jakarta', '890787676', '56656', '', '', 'Srk_Sahudi.jpg', '', '', '', '', '', 'Sersan Kepala', 'Czi (Zeni)', '21040199770983', 'Pusinfolahta TNI', 'Baur Prog dan Rekta Subbidsisfopers Bidinfomin', 'TNI AD');
INSERT INTO `history_student` VALUES (73, 40, 7, 'purwanti', 0, '67ceb1f7d8c67105d50a4a13618cee77', 'purwanti', '20180830_5b8776ba72b4a', 'Endah Purwantiningrum', '1967-05-25', '', 19, 'komplek Dwikora, Halim Perdanakusuma, Jakarta', 'Jakarta', '86566', '7887777', '', '', 'Kpt_Endah.jpg', '', '', '', '', '', 'Kapten', 'Sus/PDE', '511191', 'Kodiklatau', 'Ksbs Apldatabase Infolahta', 'TNI AL');
INSERT INTO `history_student` VALUES (74, 39, 7, 'ambar', 0, 'd51a22ed45c4da9bd0dc10044da8cf60', 'ambar', '20180830_5b8745ea772a7', 'Setiyadi Ambarwanto', '1989-08-25', '', 19, 'JL. Falcon IV F-2 Halim Perdana Kusuma Jakarta Timur', 'Jakarta', '089567', '989978788', '', '', 'Srt_Setiyadi.jpg', '', '', '', '', '', 'Sersan Satu', 'Elektronika', '537922', 'Kohanudnas', 'Ba Lek Mondar Popunas', 'TNI AU');
INSERT INTO `history_student` VALUES (75, 38, 7, 'ryan', 0, '10c7ccc7a4f0aff03c915c485565b9da', 'ryan', '20180830_5b87448e5667c', 'Ryan Gandari Mugiana Belo', '1992-05-07', '', 19, 'Cilangkap Jakarta Timur', 'Jakarta', '6547476766', '75765667', '', '', '', '', '', '', '', '', 'Sersan Dua', 'Peralatan (PAL)', '21140025590592', 'Satang Denma Mabes TNI', 'Ba Satang Denma Mabes TNI', 'TNI AD');
INSERT INTO `history_student` VALUES (76, 37, 7, 'dedi', 0, 'c5897fbcc14ddcf30dca31b2735c3d7e', 'dedi', '20180830_5b8743b0cb973', 'Dedi Kurniawan', '1990-03-14', '', 19, 'Jl. Matraman Raya no 92-94, Matraman, Jakarta Timur', 'Jakarta', '767676876', '4645767', '', '', 'Srt_Dedi.jpg', '', '', '', '', '', 'Sersan Satu', 'Infantri', '21100127190390', 'Pusintelad', 'BaOprasi Osnit Ur Data Pil', 'TNI AD');
INSERT INTO `history_student` VALUES (77, 36, 7, 'utama', 0, '88f32b5e07322da03c04231473635236', 'utama', '20180829_5b86c58347ecb', 'Utama Riandi', '1985-02-11', '', 19, 'Kp. Pajeleran no 48  Rt 7/Rw 6 Kel. Sukahati Kec. Cibinong  Kab. Bogor', 'Bogor', '45342424', '454656', '', '', 'Srk_Utama.jpg', '', '', '', '', '', 'Sersan Kepala', 'Infantri', '21060082590285', 'Sops TNI', 'Ba Oprator Komputer 2 Taud Sops TNI', 'TNI AD');
INSERT INTO `history_student` VALUES (78, 35, 7, 'hari', 0, 'a9bcf1e4d7b95a22e2975c812d938889', 'hari', '20180829_5b86c4e2553f3', 'Hariyanto', '1990-11-21', '', 19, 'Jl. falcon VIII no.2 Halim Perdana Kusuma', 'Jakarta', '343554', '213144', '', '', 'Srt_Hariyanto1.jpg', '', '', '', '', '', 'Sersan Satu', 'Pembekalan (KAL)', '540270', 'Kohanudnas', 'Ba Pembekalan Gudang Denma Kohanudnas', 'TNI AU');
INSERT INTO `history_student` VALUES (79, 34, 7, 'bambang', 0, 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'bambang', '20180829_5b86c37bd4691', 'Bambang Arianto', '1990-06-17', '', 19, 'Jl.Falcon VIII Blok N No.4 Halim Perdana Kusuma', 'Jakarta', '7676556', '6435343', '', '', 'Srt_Bambang.jpg', '', '', '', '', '', 'Sersan Satu', 'PDE', '540460', 'Kohanudnas', 'Ba Operator Komputer Infolahta', 'TNI AU');
INSERT INTO `history_student` VALUES (80, 33, 7, 'ainul', 0, '110a4fa5d91e3af9ec1c099f934e6d7d', 'ainul', '20180829_5b86c268a5b18', 'M. Ainul Afandi', '1988-08-28', '', 19, 'Rusunawa Mabes TNI Blok c Lantai 3 no. 305, Jatimakmur, Pondok Gede, Bekasi', 'Bekasi', '34534534', '65455665', '', '', 'Srk_Ainul.jpg', '', '', '', '', '', 'Sersan Kepala', 'Elektronika', '536707', 'Pusinfolahta TNI', 'Baurpam Aplikasi Bidpamsisfo', 'TNI AU');
INSERT INTO `history_student` VALUES (81, 32, 7, 'suseno', 0, '533c00a36999afb9fd83e9f0e603a461', 'suseno', '20180829_5b86c176d4e83', 'M. Suseno Priambodo', '1987-10-15', '', 19, 'Dusun Soka Rt 4/Rw 1 Desa Bungur kec. Kunur Kab. Bojonegoro', 'Bojonegoro', '563656', '45656', '', '', 'Klk_Seno.jpg', '', '', '', '', '', 'Kelasi Kepala', 'RDL', '111558', 'Sops TNI', 'Tamudi IKKT Tawal Sops TNI', 'TNI AL');
INSERT INTO `history_student` VALUES (82, 31, 7, 'kelasatas', 0, '628931812f4bf98a5135dc372499a934', 'kelasatas', '20180829_5b86c080e83b5', 'Nawana Supriyatna', '1969-11-23', '', 19, 'Jl. Nusa Indah 5 /2 no 88. Jakarta Timur', 'Jakarta', '435343', '332323', '', '', 'Pns_Nanang.jpg', '', '', '', '', '', 'PNS III/d', 'Teknik', '196911232003121005', 'Puskodal TNI AL', 'Kasubsi Lahta', 'TNI AL');
INSERT INTO `history_student` VALUES (83, 30, 7, 'arbi', 0, '9e4b7b4b8aee0e53dc7fe3bd7ceffdb7', 'arbi', '20180829_5b86bf897e4c6', 'Arbi', '1969-05-14', '', 19, 'Jl. Tipar Cakung Kp. Baru RT 017/ RW 007, Cakung Barat, Cakung, Jakata Timur', 'Jakarta', '434223', '4533', '', '', 'Peltu_Arbi.jpg', '', '', '', '', '', 'Peltu', 'Ede', '68922', 'Babek TNI', 'Baur Tu Subag Pullahta Bagbinum Babek TNI', 'TNI AL');
INSERT INTO `history_student` VALUES (84, 29, 7, 'mulyono', 0, 'a5c65fd5513d5467e312ae5243205bc3', 'mulyono', '20180829_5b86be7ddc239', 'Mulyono', '1974-05-16', '', 19, 'Komplek TWP TNI-AL Ciangsana Bogor', 'Bogor', '0978900', '42231', '', '', 'PNS_Mulyono.jpg', '', '', '', '', '', 'PNS II/d', 'PNS', '197405161994031003', 'Satharpal Denma Mabes TNI', 'Ba Montir Speda Motor Unit Bengram', 'Mabes TNI');
INSERT INTO `history_student` VALUES (85, 28, 7, 'ardhi', 0, '80d7ef1d6229aafa8de7385aa5a736a7', 'ardhi', '20180829_5b8628299f54c', 'Muhammad Ardhi', '1986-01-16', '', 19, 'Gg. Sadar II RT 01/ Rw 01 Jatiraden Jatisampurna', 'Bekasi', '12345', '1200', '', '', 'PNS_aRDI.jpg', '', '', '', '', '', 'PNS  II/d', 'PNS', '19850116 2005011002', 'Denma Mabes TNI', 'BA Gud Ran Sucad Satharpal', 'Mabes TNI');
INSERT INTO `history_student` VALUES (86, 27, 7, 'dendi', 0, '9d47cb51d31cc4adbdaa29cde5070c7c', 'dendi', '20180829_5b85feddac16e', 'Dendi Indra Pratama', '1994-12-19', '', 19, 'Jl. Komplek Perhubungan, Cimanggis Depok', 'Depok', '12345', '', '', '', 'Prt_Dendi.jpg', '', '', '', '', '', 'Pratu', 'CHB (Perhubungan)', '31140444671294', 'Yonhub', 'T.A. Mudi Run Unit Pernika', 'TNI AD');
INSERT INTO `history_student` VALUES (87, 26, 7, 'masAji', 0, 'cef1f8cc0d4f092c748db492156589b7', 'masAji', '20180824_5b7f87c9606de', 'Tri Aji', '1986-07-07', '', 19, 'Bandung', 'jakarta', '081298349225', '0000', '', 'tri471.cena@gmail.com', 'Kpt_Triaji.jpg', '', '', '', '', '', 'Kapten', 'Elektronika', '19238', 'Pushidrosal', 'Kaurnavsen Disveranautikas Pushidrosal', 'TNI AL');
INSERT INTO `history_student` VALUES (88, 25, 7, 'Mynhajoel', 0, 'd93fcb0a5ed9df95222f14e6982ba29c', 'mynhajoel', '20180824_5b7f6cb7c5f1c', 'Minhajul Affan', '1986-09-05', '', 19, 'Perum Grand Mutiara, Cileungsi', 'Jakarta', '081231231231', '', '', 'mynhajoel05@gmail.com', 'Srk_Affan.jpg', '', '', '', '', '', 'Serka', 'Infanteri', '21050175740986', 'Pusinfolahta TNI', 'Baur Persmil', 'AD');
INSERT INTO `history_student` VALUES (89, 75, 1, 'testadmin', 0, '9283a03246ef2dacdc21a9b137817ec1', 'testadmin', '20181021_5bcc43eca335d', 'test admin', '2022-02-22', '', 24, 'rewrewr', 'gfdg', 'dfgfd', 'sfds', '', 'dg@afdfdsf.com', '', '', '', '', '', '', 'sfsdsd', 'fdg', 'sfsd', 'dg', 'sdfsdf', 'dg');

-- ----------------------------
-- Table structure for holiday
-- ----------------------------
DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday`  (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `holiday_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `holiday_date` date NOT NULL,
  PRIMARY KEY (`holiday_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of holiday
-- ----------------------------
INSERT INTO `holiday` VALUES (13, 7, 'Hari Kemerdekaan RI', '2018-08-17');
INSERT INTO `holiday` VALUES (14, 7, 'Idul Adha', '2018-08-22');
INSERT INTO `holiday` VALUES (15, 7, 'Tahun Baru Islam', '2018-09-11');

-- ----------------------------
-- Table structure for notice_board
-- ----------------------------
DROP TABLE IF EXISTS `notice_board`;
CREATE TABLE `notice_board`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `notice_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_status` int(11) NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice_board
-- ----------------------------
INSERT INTO `notice_board` VALUES (5, 8, 'date: 25-04-2016 is holiday because that day is our school mainatin on server side and lab releted', 'holiday', 1, '2016-04-18 15:40:20');
INSERT INTO `notice_board` VALUES (7, 8, 'this is notice for only standard 10 student..plase present all standard student for next sunday itsw an surprice test held for any subject', 'other', 1, '2016-04-18 15:53:11');
INSERT INTO `notice_board` VALUES (8, 8, 'test other notice', 'other', 1, '2016-04-18 16:01:16');
INSERT INTO `notice_board` VALUES (10, 7, 'Masuk kelas pukul 09.00 WIB', 'Pertemuan', 1, '2017-09-04 00:00:00');
INSERT INTO `notice_board` VALUES (11, 7, 'Hari ini libur', 'Hari Libur', 1, '2018-09-10 00:00:00');
INSERT INTO `notice_board` VALUES (12, 7, 'Hari ini Libur ya', 'Hari Libur', 1, '2018-08-17 00:00:00');
INSERT INTO `notice_board` VALUES (13, 7, 'Masuk Kelas jam 09.00 WIB', 'Pertemuan', 1, '2018-08-31 00:00:00');

-- ----------------------------
-- Table structure for school_detail
-- ----------------------------
DROP TABLE IF EXISTS `school_detail`;
CREATE TABLE `school_detail`  (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `school_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_postal_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_phone1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_phone2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_person_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`school_id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of school_detail
-- ----------------------------
INSERT INTO `school_detail` VALUES (1, 7, 'Pemrograman Aplikasi Mobile', 'Pusinfolahta TNI, Gedung Jend. Besar A. H. Nasution, Mabes TNI, Cilangkap', 'Jakarta Timur', 'Jakarta', '13870', '021 84595943', '0218456709', 'test@gmail.com', '', '200px-Lambang_TNI_2013.png', 'Ign. Budiman, S. P., M.Sc.');

-- ----------------------------
-- Table structure for school_student_chat
-- ----------------------------
DROP TABLE IF EXISTS `school_student_chat`;
CREATE TABLE `school_student_chat`  (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of school_student_chat
-- ----------------------------
INSERT INTO `school_student_chat` VALUES (1, 5, 7, 'tomorrow is my birthday..so i celebrate my birthday in school..?', 'birthday', '', '2016-04-24 15:52:24');
INSERT INTO `school_student_chat` VALUES (2, 1, 8, 'hi this is my test message', 'test', '', '2016-04-24 15:54:48');
INSERT INTO `school_student_chat` VALUES (3, 6, 7, 'can we celabrate all event in next week..?', 'event week', '<p>yes we celebrate</p>', '2016-04-24 15:55:25');
INSERT INTO `school_student_chat` VALUES (5, 7, 7, 'i am not good today so i will not come to the school. please inform to my class teacher', 'not well today', '<p>okay, care your heath.</p>', '2016-04-24 16:20:01');
INSERT INTO `school_student_chat` VALUES (6, 9, 7, 'hi this is my firs birthday to celebrat in school..?', 'celebrate birthdat', '<p>okay you can celebrate your birthday in school</p>', '2016-04-25 16:24:38');
INSERT INTO `school_student_chat` VALUES (7, 20, 8, 'my school bus is not come to the time in morning can you help and solve my problem please...?', 'school bus', '<p>oky..your school bus will be come to the time to time on tomorrow.</p>', '2016-04-24 16:36:28');
INSERT INTO `school_student_chat` VALUES (8, 7, 7, 'exam time and date with subject name.', 'sir, final exam date?', '<p>Exam start Next Monday 9:30 To 11:00 Mathas paper.</p>', '2016-10-20 17:13:24');
INSERT INTO `school_student_chat` VALUES (9, 7, 7, 'my family plan to visit Singapore summer holiday.', 'summer holiday date.?', '<p>Summer holiday start Date : 02/02/2016 To 08/02/2016.</p>', '2016-10-20 17:17:34');
INSERT INTO `school_student_chat` VALUES (10, 22, 7, 'Ini Tes Pertanyaan', 'Hello', '<p>Kasian Deh Lu</p>', '2018-08-17 10:52:20');
INSERT INTO `school_student_chat` VALUES (11, 22, 7, 'WAW', 'WA', '<p>Iyaaa</p>', '2018-08-17 10:53:14');
INSERT INTO `school_student_chat` VALUES (12, 22, 7, 'ijin tidak masuk', 'tidak masuk', '', '2018-08-24 08:22:37');
INSERT INTO `school_student_chat` VALUES (13, 43, 7, 'test', 'test', 'ok', '2018-09-06 09:02:03');
INSERT INTO `school_student_chat` VALUES (14, 26, 7, 'terlambat kena macet', 'ijin', '', '2018-09-06 09:02:22');
INSERT INTO `school_student_chat` VALUES (15, 26, 7, 'ijin saya tidak masuk karena sakit', 'ijin', '', '2018-09-13 08:47:16');
INSERT INTO `school_student_chat` VALUES (16, 26, 7, 'ijin tidak masuk karena sakit', 'Sakit', '', '2018-09-13 09:44:54');

-- ----------------------------
-- Table structure for standard
-- ----------------------------
DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard`  (
  `standard_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `standard_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` year NOT NULL,
  `user_class_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`standard_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of standard
-- ----------------------------
INSERT INTO `standard` VALUES (19, 7, 'Android', 0000, '');
INSERT INTO `standard` VALUES (20, 7, 'Pemrograman Aplikasi Mobile', 0000, '');
INSERT INTO `standard` VALUES (21, 7, 'Programmer Komputer', 0000, '');
INSERT INTO `standard` VALUES (24, 18, 'Programmer Komputer', 2018, '');
INSERT INTO `standard` VALUES (25, 18, 'TEST', 2018, '');

-- ----------------------------
-- Table structure for student_detail
-- ----------------------------
DROP TABLE IF EXISTS `student_detail`;
CREATE TABLE `student_detail`  (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `student_user_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_status` int(11) NOT NULL,
  `student_password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_orgpassword` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_unique_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_birthdate` date NOT NULL,
  `student_roll_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_standard` int(11) NOT NULL,
  `student_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_parent_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_enr_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_photo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_branch` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_semester` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_division` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `student_batch` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gcm_code` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pangkat` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `korp` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nrp` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kesatuan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `matra` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`student_id`) USING BTREE,
  UNIQUE INDEX `student_user_name`(`student_user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_detail
-- ----------------------------
INSERT INTO `student_detail` VALUES (55, 7, 'catur', 0, '3a9e3a1e836c1ded01fa4d59323723eb', 'catur', '20180830_123456789', 'Catur Mei Riselasih', '1987-05-26', '', 24, 'Jl. Surtikanti No.6 Rt 6/3 Dirgantara III Halim Perdanakusuma, Jakarta', 'Jakarta', '4677656767', '12122312', '', '', 'Srk_Catur_Mei.jpg', '', '', '', '', '', 'Sersan Kepala', 'Sus/PDE', '535432', 'Lakesgilut', 'Ba Bmn Ur Bmn Setla', 'TNI AU');
INSERT INTO `student_detail` VALUES (56, 7, 'triyadi', 1, '55b25128b7c0f86850335a53a765cf2e', 'triyadi', '20180830_5b87792d37267', 'Triyadi', '1979-02-25', '', 19, 'Jl. Tengki cipayung Jakarta', 'Jakarta', '6436665', '324554', '', '', 'PNS_TRIYADI.jpg', '', '', '', '', 'eHJhmRBxtA8:APA91bFXYSyI2enDCws9CV9YfUwbEFB7JNO1HeCyvShBa4ovr8YSJuzoHYFBssKJzaOorPkjTlW4IYoaoAiuswWvfccB-CBXzVM89Dik5QH3o3dw68I1iTL3XBekZm3fzWOe9_HFfJ8G', 'PNS  II/d', 'Teknik', '197902252008121003', 'Denma Mabes TNI AL', 'Ur data Satminpers', 'TNI AL');
INSERT INTO `student_detail` VALUES (57, 7, 'vicra', 0, '1e2a736a0ca7270fa63fc2cccb0386d0', 'vicra', '20180830_5b877840ec1ee', 'M. Nazharudin Vicra', '1996-07-26', '', 19, 'Yonhub Dithub', 'Jakarta', '3336663446', '766756', '', '', 'Prd_Vicra.jpg', '', '', '', '', '', 'Prajurit Dua', 'CHB (Perhubungan)', '31150073990796', 'Yonhub Dithub', 'Ta Mudi Ran Unit Ton 2 Kepernika Yonhub', 'TNI AD');
INSERT INTO `student_detail` VALUES (58, 7, 'suhadi', 0, '74107bf59217189319c8e59a7376c461', 'suhadi', '20180830_5b87774056ef9', 'Ahmad Sahudi, S.Sos', '1983-09-16', '', 19, 'Jl. Kapulaga II Blok B No.14 Cibubur Jakarta Timur', 'Jakarta', '890787676', '56656', '', '', 'Srk_Sahudi.jpg', '', '', '', '', '', 'Sersan Kepala', 'Czi (Zeni)', '21040199770983', 'Pusinfolahta TNI', 'Baur Prog dan Rekta Subbidsisfopers Bidinfomin', 'TNI AD');
INSERT INTO `student_detail` VALUES (59, 7, 'purwanti', 0, '67ceb1f7d8c67105d50a4a13618cee77', 'purwanti', '20180830_5b8776ba72b4a', 'Endah Purwantiningrum', '1967-05-25', '', 19, 'komplek Dwikora, Halim Perdanakusuma, Jakarta', 'Jakarta', '86566', '7887777', '', '', 'Kpt_Endah.jpg', '', '', '', '', '', 'Kapten', 'Sus/PDE', '511191', 'Kodiklatau', 'Ksbs Apldatabase Infolahta', 'TNI AL');
INSERT INTO `student_detail` VALUES (60, 7, 'ambar', 0, 'd51a22ed45c4da9bd0dc10044da8cf60', 'ambar', '20180830_5b8745ea772a7', 'Setiyadi Ambarwanto', '1989-08-25', '', 19, 'JL. Falcon IV F-2 Halim Perdana Kusuma Jakarta Timur', 'Jakarta', '089567', '989978788', '', '', 'Srt_Setiyadi.jpg', '', '', '', '', '', 'Sersan Satu', 'Elektronika', '537922', 'Kohanudnas', 'Ba Lek Mondar Popunas', 'TNI AU');
INSERT INTO `student_detail` VALUES (61, 7, 'ryan', 0, '10c7ccc7a4f0aff03c915c485565b9da', 'ryan', '20180830_5b87448e5667c', 'Ryan Gandari Mugiana Belo', '1992-05-07', '', 19, 'Cilangkap Jakarta Timur', 'Jakarta', '6547476766', '75765667', '', '', '', '', '', '', '', '', 'Sersan Dua', 'Peralatan (PAL)', '21140025590592', 'Satang Denma Mabes TNI', 'Ba Satang Denma Mabes TNI', 'TNI AD');
INSERT INTO `student_detail` VALUES (62, 7, 'dedi', 0, 'c5897fbcc14ddcf30dca31b2735c3d7e', 'dedi', '20180830_5b8743b0cb973', 'Dedi Kurniawan', '1990-03-14', '', 19, 'Jl. Matraman Raya no 92-94, Matraman, Jakarta Timur', 'Jakarta', '767676876', '4645767', '', '', 'Srt_Dedi.jpg', '', '', '', '', '', 'Sersan Satu', 'Infantri', '21100127190390', 'Pusintelad', 'BaOprasi Osnit Ur Data Pil', 'TNI AD');
INSERT INTO `student_detail` VALUES (63, 7, 'utama', 0, '88f32b5e07322da03c04231473635236', 'utama', '20180829_5b86c58347ecb', 'Utama Riandi', '1985-02-11', '', 19, 'Kp. Pajeleran no 48  Rt 7/Rw 6 Kel. Sukahati Kec. Cibinong  Kab. Bogor', 'Bogor', '45342424', '454656', '', '', 'Srk_Utama.jpg', '', '', '', '', '', 'Sersan Kepala', 'Infantri', '21060082590285', 'Sops TNI', 'Ba Oprator Komputer 2 Taud Sops TNI', 'TNI AD');
INSERT INTO `student_detail` VALUES (64, 7, 'hari', 0, 'a9bcf1e4d7b95a22e2975c812d938889', 'hari', '20180829_5b86c4e2553f3', 'Hariyanto', '1990-11-21', '', 19, 'Jl. falcon VIII no.2 Halim Perdana Kusuma', 'Jakarta', '343554', '213144', '', '', 'Srt_Hariyanto1.jpg', '', '', '', '', '', 'Sersan Satu', 'Pembekalan (KAL)', '540270', 'Kohanudnas', 'Ba Pembekalan Gudang Denma Kohanudnas', 'TNI AU');
INSERT INTO `student_detail` VALUES (65, 7, 'bambang', 0, 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'bambang', '20180829_5b86c37bd4691', 'Bambang Arianto', '1990-06-17', '', 19, 'Jl.Falcon VIII Blok N No.4 Halim Perdana Kusuma', 'Jakarta', '7676556', '6435343', '', '', 'Srt_Bambang.jpg', '', '', '', '', '', 'Sersan Satu', 'PDE', '540460', 'Kohanudnas', 'Ba Operator Komputer Infolahta', 'TNI AU');
INSERT INTO `student_detail` VALUES (66, 7, 'ainul', 0, '110a4fa5d91e3af9ec1c099f934e6d7d', 'ainul', '20180829_5b86c268a5b18', 'M. Ainul Afandi', '1988-08-28', '', 19, 'Rusunawa Mabes TNI Blok c Lantai 3 no. 305, Jatimakmur, Pondok Gede, Bekasi', 'Bekasi', '34534534', '65455665', '', '', 'Srk_Ainul.jpg', '', '', '', '', '', 'Sersan Kepala', 'Elektronika', '536707', 'Pusinfolahta TNI', 'Baurpam Aplikasi Bidpamsisfo', 'TNI AU');
INSERT INTO `student_detail` VALUES (67, 7, 'suseno', 0, '533c00a36999afb9fd83e9f0e603a461', 'suseno', '20180829_5b86c176d4e83', 'M. Suseno Priambodo', '1987-10-15', '', 19, 'Dusun Soka Rt 4/Rw 1 Desa Bungur kec. Kunur Kab. Bojonegoro', 'Bojonegoro', '563656', '45656', '', '', 'Klk_Seno.jpg', '', '', '', '', '', 'Kelasi Kepala', 'RDL', '111558', 'Sops TNI', 'Tamudi IKKT Tawal Sops TNI', 'TNI AL');
INSERT INTO `student_detail` VALUES (68, 7, 'kelasatas', 0, '628931812f4bf98a5135dc372499a934', 'kelasatas', '20180829_5b86c080e83b5', 'Nawana Supriyatna', '1969-11-23', '', 19, 'Jl. Nusa Indah 5 /2 no 88. Jakarta Timur', 'Jakarta', '435343', '332323', '', '', 'Pns_Nanang.jpg', '', '', '', '', '', 'PNS III/d', 'Teknik', '196911232003121005', 'Puskodal TNI AL', 'Kasubsi Lahta', 'TNI AL');
INSERT INTO `student_detail` VALUES (69, 7, 'arbi', 0, '9e4b7b4b8aee0e53dc7fe3bd7ceffdb7', 'arbi', '20180829_5b86bf897e4c6', 'Arbi', '1969-05-14', '', 19, 'Jl. Tipar Cakung Kp. Baru RT 017/ RW 007, Cakung Barat, Cakung, Jakata Timur', 'Jakarta', '434223', '4533', '', '', 'Peltu_Arbi.jpg', '', '', '', '', '', 'Peltu', 'Ede', '68922', 'Babek TNI', 'Baur Tu Subag Pullahta Bagbinum Babek TNI', 'TNI AL');
INSERT INTO `student_detail` VALUES (70, 7, 'mulyono', 0, 'a5c65fd5513d5467e312ae5243205bc3', 'mulyono', '20180829_5b86be7ddc239', 'Mulyono', '1974-05-16', '', 19, 'Komplek TWP TNI-AL Ciangsana Bogor', 'Bogor', '0978900', '42231', '', '', 'PNS_Mulyono.jpg', '', '', '', '', '', 'PNS II/d', 'PNS', '197405161994031003', 'Satharpal Denma Mabes TNI', 'Ba Montir Speda Motor Unit Bengram', 'Mabes TNI');
INSERT INTO `student_detail` VALUES (71, 7, 'ardhi', 0, '80d7ef1d6229aafa8de7385aa5a736a7', 'ardhi', '20180829_5b8628299f54c', 'Muhammad Ardhi', '1986-01-16', '', 19, 'Gg. Sadar II RT 01/ Rw 01 Jatiraden Jatisampurna', 'Bekasi', '12345', '1200', '', '', 'PNS_aRDI.jpg', '', '', '', '', '', 'PNS  II/d', 'PNS', '19850116 2005011002', 'Denma Mabes TNI', 'BA Gud Ran Sucad Satharpal', 'Mabes TNI');
INSERT INTO `student_detail` VALUES (72, 7, 'dendi', 0, '9d47cb51d31cc4adbdaa29cde5070c7c', 'dendi', '20180829_5b85feddac16e', 'Dendi Indra Pratama', '1994-12-19', '', 19, 'Jl. Komplek Perhubungan, Cimanggis Depok', 'Depok', '12345', '', '', '', 'Prt_Dendi.jpg', '', '', '', '', '', 'Pratu', 'CHB (Perhubungan)', '31140444671294', 'Yonhub', 'T.A. Mudi Run Unit Pernika', 'TNI AD');
INSERT INTO `student_detail` VALUES (73, 7, 'masAji', 0, 'cef1f8cc0d4f092c748db492156589b7', 'masAji', '20180824_5b7f87c9606de', 'Tri Aji', '1986-07-07', '', 19, 'Bandung', 'jakarta', '081298349225', '0000', '', 'tri471.cena@gmail.com', 'Kpt_Triaji.jpg', '', '', '', '', '', 'Kapten', 'Elektronika', '19238', 'Pushidrosal', 'Kaurnavsen Disveranautikas Pushidrosal', 'TNI AL');
INSERT INTO `student_detail` VALUES (74, 18, 'Mynhajoel', 0, 'd93fcb0a5ed9df95222f14e6982ba29c', 'mynhajoel', '20180824_5b7f6cb7c5f1c', 'Minhajul Affan', '1986-09-05', '', 24, 'Perum Grand Mutiara, Cileungsi', 'Jakarta', '081231231231', '', '', 'mynhajoel05@gmail.com', 'Srk_Affan.jpg', '', '', '', '', '', 'Serka', 'Infanteri', '21050175740986', 'Pusinfolahta TNI', 'Baur Persmil', 'AD');
INSERT INTO `student_detail` VALUES (76, 1, 'testadmin', 0, '9283a03246ef2dacdc21a9b137817ec1', 'testadmin', '20181021_5bcc43eca335d', 'test admin', '2022-02-22', '', 24, 'rewrewr', 'gfdg', 'dfgfd', 'sfds', '', 'dg@afdfdsf.com', '', '', '', '', '', '', 'sfsdsd', 'fdg', 'sfsd', 'dg', 'sdfsdf', 'dg');

-- ----------------------------
-- Table structure for student_growth
-- ----------------------------
DROP TABLE IF EXISTS `student_growth`;
CREATE TABLE `student_growth`  (
  `growth_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `month` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `growth` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `percentage` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`growth_id`) USING BTREE,
  UNIQUE INDEX `student_id`(`student_id`, `month`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_growth
-- ----------------------------
INSERT INTO `student_growth` VALUES (1, 10, 7, 'January', 'average', '40', '2016-04-23 15:41:34');
INSERT INTO `student_growth` VALUES (9, 9, 14, 'February', 'good', '60', '2016-04-23 15:41:41');
INSERT INTO `student_growth` VALUES (11, 6, 1, 'February', 'average', '40', '2016-04-23 15:41:44');
INSERT INTO `student_growth` VALUES (12, 4, 9, 'January', 'excellent', '80', '2016-04-23 15:41:47');
INSERT INTO `student_growth` VALUES (13, 18, 8, 'January', 'everage', '40', '2016-04-23 15:41:50');
INSERT INTO `student_growth` VALUES (14, 18, 8, 'February', 'everage', '40', '2016-04-23 15:41:54');
INSERT INTO `student_growth` VALUES (17, 2, 8, 'April', 'everage', '40', '2016-04-23 15:41:57');
INSERT INTO `student_growth` VALUES (18, 2, 8, 'March', 'good', '60', '2016-04-23 15:42:00');
INSERT INTO `student_growth` VALUES (19, 1, 8, 'April', 'good', '60', '2016-04-23 15:42:03');
INSERT INTO `student_growth` VALUES (20, 1, 8, 'February', 'everage', '40', '2016-04-23 15:42:06');
INSERT INTO `student_growth` VALUES (21, 3, 8, 'April', 'good', '60', '2016-04-23 15:42:09');
INSERT INTO `student_growth` VALUES (23, 5, 1, 'April', 'best', '80', '2016-10-15 16:08:53');
INSERT INTO `student_growth` VALUES (24, 7, 13, 'January', 'good', '60', '2016-04-23 15:42:15');
INSERT INTO `student_growth` VALUES (26, 5, 1, 'January', 'Good', '60', '2016-10-15 16:08:11');
INSERT INTO `student_growth` VALUES (28, 8, 13, 'January', 'average', '40', '2016-04-23 15:50:12');
INSERT INTO `student_growth` VALUES (29, 16, 14, 'January', 'Bad', '15', '2016-04-25 17:18:50');
INSERT INTO `student_growth` VALUES (31, 16, 14, 'February', 'Medium', '28', '2016-04-25 17:14:46');
INSERT INTO `student_growth` VALUES (32, 16, 14, 'April', 'Good', '65', '2016-04-25 17:15:15');
INSERT INTO `student_growth` VALUES (33, 16, 14, 'May', 'Excellent', '85', '2016-04-25 17:16:02');
INSERT INTO `student_growth` VALUES (35, 5, 1, 'February', 'Average', '65', '2016-10-15 16:08:34');
INSERT INTO `student_growth` VALUES (37, 23, 18, 'August', 'Excellent', '90', '2018-08-16 09:53:45');
INSERT INTO `student_growth` VALUES (38, 26, 19, 'Agustus', 'Good', '70', '2018-09-07 08:25:27');
INSERT INTO `student_growth` VALUES (39, 26, 19, 'Juli', 'Good', '60', '2018-09-07 08:25:59');
INSERT INTO `student_growth` VALUES (40, 26, 19, 'September', 'Good', '65', '2018-09-07 08:26:09');
INSERT INTO `student_growth` VALUES (41, 56, 19, 'Januari', 'Bad', '20', '2018-11-04 23:53:22');

-- ----------------------------
-- Table structure for teacher_detail
-- ----------------------------
DROP TABLE IF EXISTS `teacher_detail`;
CREATE TABLE `teacher_detail`  (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `teacher_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `maritalstatus` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_birthdate` date NOT NULL,
  `teacher_detail` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_education` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_exp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teacher_notes` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_detail
-- ----------------------------
INSERT INTO `teacher_detail` VALUES (1, 7, 'Nofrialdi', 'male', 'single', '1992-11-03', '<p>Standar : 8,9,10</p>\r\n\r\n<p>Subject: Programming Mobile dengan Android</p>\r\n\r\n<p>Programming Mobile dengan Android adalah sebuat subject pembelajaran dimana audience dapat mempraktekan ilmunya menciptakan aplikasi berbasis mobile..</p>\r\n\r\n<p>&nbsp;</p>', 'Aldi1.jpg', '081212575197', 'aldi.fasive@gmail.com', 'S1, Sistem Informasi STMIK Jayakarta', 'Perumahan Park Place Cluster Navara Rt 02/Rw 06 blok D no 10 Burangkeng, Cilengsi, Kab. Bogor', '1 year 6 month', 'PHP, Android and MySql', '2016-04-23 17:22:36');
INSERT INTO `teacher_detail` VALUES (8, 7, 'Fandeka Aghfirlana', 'male', 'single', '1988-10-10', '<p>Standar : 8,9,10</p>\r\n\r\n<p>Subject: Programming Mobile dengan Android</p>\r\n\r\n<p>Programming Mobile dengan Android adalah sebuat subject pembelajaran dimana audience dapat mempraktekan ilmunya menciptakan aplikasi berbasis mobile..</p>', '-', '-', 'fandeka.aghfirlana@gmail.com', 'S1, Sarjan Komputer', '-', '', '', '2018-09-05 09:59:10');
INSERT INTO `teacher_detail` VALUES (9, 18, 'test', 'male', 'single', '2022-02-22', '<p>test</p>', '4a56af5098cf246d1143e73cd1923e6d.jpg', '2', 'teacher@gmail.com', 'M.A', 'test', '1', '12', '2018-10-05 17:42:16');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for top_student
-- ----------------------------
DROP TABLE IF EXISTS `top_student`;
CREATE TABLE `top_student`  (
  `top_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `student_rank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`top_id`) USING BTREE,
  UNIQUE INDEX `student_id`(`student_id`, `standard_id`, `school_id`, `student_rank`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of top_student
-- ----------------------------
INSERT INTO `top_student` VALUES (22, 9, 14, 7, '3', '2016-05-02 11:19:27');
INSERT INTO `top_student` VALUES (23, 13, 14, 7, '2', '2016-05-02 11:19:27');
INSERT INTO `top_student` VALUES (24, 16, 14, 7, '1', '2016-05-02 11:19:27');
INSERT INTO `top_student` VALUES (28, 7, 13, 7, '1', '2016-05-02 11:21:57');
INSERT INTO `top_student` VALUES (29, 8, 13, 7, '3', '2016-05-02 11:21:57');
INSERT INTO `top_student` VALUES (30, 15, 13, 7, '2', '2016-05-02 11:21:57');
INSERT INTO `top_student` VALUES (35, 1, 8, 8, '3', '2016-05-02 11:23:16');
INSERT INTO `top_student` VALUES (36, 2, 8, 8, '2', '2016-05-02 11:23:16');
INSERT INTO `top_student` VALUES (37, 3, 8, 8, '1', '2016-05-02 11:23:16');
INSERT INTO `top_student` VALUES (39, 25, 19, 7, '5', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (40, 26, 19, 7, '3', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (41, 27, 19, 7, '19', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (42, 28, 19, 7, '10', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (43, 29, 19, 7, '17', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (44, 30, 19, 7, '18', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (45, 31, 19, 7, '12', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (46, 32, 19, 7, '11', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (47, 33, 19, 7, '16', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (48, 34, 19, 7, '20', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (49, 35, 19, 7, '13', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (50, 36, 19, 7, '14', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (51, 37, 19, 7, '9', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (52, 38, 19, 7, '15', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (53, 39, 19, 7, '7', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (54, 40, 19, 7, '8', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (55, 41, 19, 7, '6', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (56, 42, 19, 7, '4', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (57, 43, 19, 7, '2', '2018-09-07 08:22:58');
INSERT INTO `top_student` VALUES (58, 44, 19, 7, '1', '2018-09-07 08:22:58');

-- ----------------------------
-- Table structure for user_type_access
-- ----------------------------
DROP TABLE IF EXISTS `user_type_access`;
CREATE TABLE `user_type_access`  (
  `user_type_id` int(11) NOT NULL,
  `class` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `method` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access` int(11) NOT NULL,
  UNIQUE INDEX `user_type_id`(`user_type_id`, `class`, `method`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_type_access
-- ----------------------------
INSERT INTO `user_type_access` VALUES (0, 'admin', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'masterstudent', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'requestdemo', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'standard', '*', 1);
INSERT INTO `user_type_access` VALUES (0, 'users', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'attendence', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'chat', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'event', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'exam', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'examresult', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'growth', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'holiday', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'noticeboard', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'school', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'student', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'teacher', '*', 1);
INSERT INTO `user_type_access` VALUES (1, 'topstudent', '*', 1);

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types`  (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_types
-- ----------------------------
INSERT INTO `user_types` VALUES (1, 'School');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_image` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `on_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_class_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 1, 'women_gym_workout_wallpaper1.jpg', '2016-04-11 19:04:28', '');
INSERT INTO `users` VALUES (7, 'kelasatas', '628931812f4bf98a5135dc372499a934', 1, 1, '', '2016-04-11 19:04:28', 'Pemrograman Mobile');
INSERT INTO `users` VALUES (18, 'pemrog2018', '1109cc507c9e9c3799b1884b82c172ae', 1, 1, '', '2018-10-05 17:11:06', 'Pemrograman 2018');
INSERT INTO `users` VALUES (19, 'kelasbawah', '86c9d2a3388a3863d652145b2c7c0b83', 1, 1, '', '2018-10-21 15:44:09', 'Pemrograman');

SET FOREIGN_KEY_CHECKS = 1;
