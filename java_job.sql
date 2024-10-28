/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : java_job

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 27/10/2024 21:36:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `def` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '默认',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comment_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `like_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------

-- ----------------------------
-- Table structure for b_company
-- ----------------------------
DROP TABLE IF EXISTS `b_company`;
CREATE TABLE `b_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `guimo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hangye` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_company
-- ----------------------------

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `log_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `re_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `re_ua` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `re_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `re_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `re_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `access_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '0:0:0:0:0:0:0:1', '2024-10-27 19:08:20.912', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (2, '0:0:0:0:0:0:0:1', '2024-10-27 19:08:21.063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '/api/error', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (3, '0:0:0:0:0:0:0:1', '2024-10-27 19:08:42.617', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '294');
INSERT INTO `b_op_log` VALUES (4, '0:0:0:0:0:0:0:1', '2024-10-27 19:15:58.442', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (5, '0:0:0:0:0:0:0:1', '2024-10-27 19:16:22.095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-10-27 19:29:06.154', 'Apifox/1.0.0 (https://apifox.com)', '/api/user/userRegister', 'POST', NULL, '734');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-10-27 19:29:06.358', 'Apifox/1.0.0 (https://apifox.com)', '/api/error', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-10-27 19:40:29.293', 'Apifox/1.0.0 (https://apifox.com)', '/api/user/userRegister', 'POST', NULL, '379');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-10-27 21:27:15.334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/notice/list', 'OPTIONS', NULL, '13');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-10-27 21:27:15.334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'OPTIONS', NULL, '13');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-10-27 21:27:15.334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'OPTIONS', NULL, '13');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-10-27 21:27:15.334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '13');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-10-27 21:27:15.759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/notice/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-10-27 21:27:15.759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-10-27 21:27:15.759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-10-27 21:27:15.759', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-10-27 21:27:18.522', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-10-27 21:27:18.578', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-10-27 21:27:19.043', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-10-27 21:27:19.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-10-27 21:27:19.491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-10-27 21:27:19.562', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-10-27 21:27:32.655', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/userLogin', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-10-27 21:27:32.902', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/notice/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-10-27 21:27:32.905', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-10-27 21:27:32.906', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'OPTIONS', NULL, '2');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-10-27 21:27:32.914', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-10-27 21:27:33.036', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-10-27 21:27:33.062', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-10-27 21:27:33.064', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-10-27 21:27:33.065', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-10-27 21:27:36.375', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-10-27 21:27:36.518', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-10-27 21:27:37.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-10-27 21:27:37.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-10-27 21:27:37.843', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-10-27 21:27:37.980', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-10-27 21:29:02.088', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-10-27 21:29:03.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-10-27 21:29:04.456', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-10-27 21:29:04.915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-10-27 21:30:10.695', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/login', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-10-27 21:30:11.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/login', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-10-27 21:30:30.523', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/login', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-10-27 21:31:31.956', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/login', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-10-27 21:31:33.327', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-10-27 21:31:33.331', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-10-27 21:31:33.332', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-10-27 21:31:33.391', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-10-27 21:31:33.450', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-10-27 21:31:33.450', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-10-27 21:32:06.415', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-10-27 21:32:06.468', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-10-27 21:32:07.810', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-10-27 21:32:07.845', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-10-27 21:32:09.000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-10-27 21:32:14.290', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-10-27 21:32:15.434', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-10-27 21:32:15.469', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-10-27 21:32:17.865', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-10-27 21:32:17.865', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-10-27 21:32:17.867', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-10-27 21:32:18.530', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/resume/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-10-27 21:32:18.600', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/resume/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-10-27 21:32:18.739', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-10-27 21:32:19.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-10-27 21:32:19.805', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-10-27 21:32:21.431', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/opLog/loginLogList', 'OPTIONS', NULL, '1');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-10-27 21:32:21.510', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/opLog/loginLogList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-10-27 21:32:38.981', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-10-27 21:32:39.003', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-10-27 21:32:39.008', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '/api/tag/list', 'GET', NULL, '3');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `receiver_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `receiver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------

-- ----------------------------
-- Table structure for b_post
-- ----------------------------
DROP TABLE IF EXISTS `b_post`;
CREATE TABLE `b_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resume_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_post
-- ----------------------------

-- ----------------------------
-- Table structure for b_resume
-- ----------------------------
DROP TABLE IF EXISTS `b_resume`;
CREATE TABLE `b_resume`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `raw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_resume
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `work_expe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `recommend_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wish_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `collect_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `company_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `push_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `push_switch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', 'e6e77e6e48623b9506c0c53ecbc2ef49', 'smallD', '13785426972', '156851@qq.com', '我是管理员', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (2, '16465798@qq.com', 'e6e77e6e48623b9506c0c53ecbc2ef49', NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, 'a6905d92c21ed1cfe8243c55146a9c04', '1730029229201', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
