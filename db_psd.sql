/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : db_psd

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 04/04/2023 15:00:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tblautonumbers
-- ----------------------------
DROP TABLE IF EXISTS `tblautonumbers`;
CREATE TABLE `tblautonumbers`  (
  `AUTOID` int NOT NULL AUTO_INCREMENT,
  `AUTOSTART` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AUTOEND` int NOT NULL,
  `AUTOINC` int NOT NULL,
  `AUTOKEY` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`AUTOID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblautonumbers
-- ----------------------------
INSERT INTO `tblautonumbers` VALUES (1, '000', 17, 1, 'BorrowerID');

-- ----------------------------
-- Table structure for tblbooknumber
-- ----------------------------
DROP TABLE IF EXISTS `tblbooknumber`;
CREATE TABLE `tblbooknumber`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BOOKTITLE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `QTY` int NOT NULL,
  `Desc` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Author` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PublishDate` date NOT NULL,
  `Publisher` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblbooknumber
-- ----------------------------
INSERT INTO `tblbooknumber` VALUES (5, 'life of juan', 4, 'life of juan', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (6, 'the computerizez system', 2, 'computer', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (7, 'language of us', 2, 'language', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (8, 'science', 2, 'invention of science', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (9, 'book', 4, 'book revised', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (10, 'the only book', 1, 'book', 'unknown', '2016-10-10', 'uknown');
INSERT INTO `tblbooknumber` VALUES (11, 'book  now', 2, 'book', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (12, 'the one', 1, 'book1', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (13, 'the life of june', 2, 'journey', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (14, 'title', 1, 'book', 'unknown', '2016-10-10', 'unknown');
INSERT INTO `tblbooknumber` VALUES (15, 'sad', 1, 's', 'da', '2018-03-25', 'as');
INSERT INTO `tblbooknumber` VALUES (16, '2wqe', 1, 'wqe', 'wqe', '2018-03-25', 'wqe');

-- ----------------------------
-- Table structure for tblbooks
-- ----------------------------
DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE `tblbooks`  (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `IBSN` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BookTitle` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BookDesc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Author` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PublishDate` date NOT NULL,
  `BookPublisher` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Category` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BookPrice` double NOT NULL,
  `BookQuantity` int NOT NULL,
  `Status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BookType` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DeweyDecimal` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `OverAllQty` int NOT NULL,
  `Donate` tinyint(1) NOT NULL,
  `Remarks` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`BookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblbooks
-- ----------------------------
INSERT INTO `tblbooks` VALUES (1, '12345678', 'life of juan', 'life of jose and maria', 'unknown', '2016-10-10', 'unknown', 'History and Geography', 175, 1, 'Not Available', 'Fiction', '900', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (2, '12345671', 'the computerizez system', 'computer', 'unknown', '2016-10-10', 'unknown', 'Technology', 200, 1, 'Not Available', 'Fiction', '600', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (3, '12345672', 'languages', 'language', 'unknown', '0000-00-00', 'unknown', 'Language', 180, 1, 'Not Available', 'Non-Fiction', '400', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (4, '12345673', 'Living Things', 'invention of science', 'unknown', '2016-10-10', 'unknown', 'Science', 185, 1, 'Not Available', 'Non-Fiction', '500', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (6, '1345673', 'life of juan', 'life of juan', 'unknown', '2016-10-10', 'unknown', 'History and Geography', 185, 1, 'Not Available', 'Fiction', '900', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (7, '14256372', 'Mother Nature', 'invention of science', 'unknown', '2016-10-10', 'unknown', 'Science', 185, 1, 'Not Available', 'Fiction', '500', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (8, '15243678', 'book', 'book revised', 'unknown', '2016-10-10', 'unknown', 'Technology', 109, 1, 'Available', 'Fiction', '600', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (9, '15263712', 'language of us', 'language', 'unknown', '2016-10-10', 'unknown', 'Language', 100, 1, 'Available', 'Fiction', '400', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (10, '19872634', 'book', 'book revised', 'unknown', '2016-10-10', 'unknown', 'Technology', 190, 1, 'Available', 'Fiction', '600', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (11, '18293746', 'the only book', 'book', 'unknown', '2016-10-10', 'uknown', 'Arts and Recreation', 120, 1, 'Available', 'Unknown', '700', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (12, '11726354', 'book  now', 'book', 'unknown', '2016-10-10', 'unknown', 'Arts and Recreation', 150, 1, 'Not Available', 'Unknown', '700', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (13, '10928273', 'the one', 'book1', 'unknown', '2016-10-10', 'unknown', 'Social Science', 210, 1, 'Available', 'Unknown', '300', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (14, '10987654', 'book', 'book3', 'unknown', '2016-10-16', 'unknown', 'Technology', 125, 1, 'Available', 'Unknown', '600', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (15, '98172634', 'the life of june', 'journey', 'unknown', '2016-10-10', 'unknown', 'Science', 100, 1, 'Available', 'Fiction', '500', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (16, '19282736', 'the life of june', 'journey', 'unknown', '2016-10-16', 'unknown', 'Science', 100, 1, 'Available', 'Non-Fiction', '500', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (17, '9812345', 'book', 'one', 'unkwon', '2016-11-14', 'unkown', 'Language', 90, 1, 'Available', 'Fiction', '400', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (18, '12345670', 'the computerizez system', 'computer', 'un', '2016-10-10', 'unknown', 'Computers, Information and General Reference', 200, 1, 'Available', 'Fiction', '000', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (19, '12345677', 'life of juan', 'life of juan and jose', 'unknown', '2016-10-10', 'unknown', 'History and Geography', 900, 1, 'Available', 'Fiction', '900', 1, 0, 'Donate');
INSERT INTO `tblbooks` VALUES (21, '9876547', 'title', 'book', 'unknown', '2016-10-10', 'unknown', 'Technology', 370, 1, 'Available', 'Fiction', '600', 1, 0, 'Purchased');
INSERT INTO `tblbooks` VALUES (23, '117263548', 'book  now', 'book one', 'unknown', '0000-00-00', 'unknown', 'ALL', 23, 1, 'Available', '', '', 1, 0, 'Purchased');

-- ----------------------------
-- Table structure for tblborrower
-- ----------------------------
DROP TABLE IF EXISTS `tblborrower`;
CREATE TABLE `tblborrower`  (
  `IDNO` int NOT NULL AUTO_INCREMENT,
  `BorrowerId` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Firstname` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Lastname` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MiddleName` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Sex` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ContactNo` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CourseYear` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BorrowerPhoto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BorrowerType` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Stats` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BUsername` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BPassword` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`IDNO`) USING BTREE,
  UNIQUE INDEX `BorrowerId`(`BorrowerId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblborrower
-- ----------------------------
INSERT INTO `tblborrower` VALUES (1, '119', 'jom', 'lozada', 'baron', 'ilog', 'Female', '0920', 'BEED', 'photos/02052020123045077db70b-ab84-46c4-bbaa-a5dd6b7332a4_200x200.png', 'Students', 'Active', 'jom', '');
INSERT INTO `tblborrower` VALUES (2, '213', 'Janno', 'Palacios', 'E', 'kabankalan City', 'Male', '0192836383', 'BSIT-2', 'Chrysanthemum.jpg', 'Student', 'Active', '', '');
INSERT INTO `tblborrower` VALUES (3, '912', 'lou', 'gotera', 'velez', 'rizal', 'Female', '0930', 'BSIT', 'bhl-logo.jpg', 'Student', 'Active', '', '');
INSERT INTO `tblborrower` VALUES (4, '921', 'joma', 'baron', 'lozada', 'dancalan', 'Female', '0921', '', 'Desert.jpg', 'Student', '', '', '');
INSERT INTO `tblborrower` VALUES (5, '1234', 'ambot', 'sure', 'guess', 'unknown', 'Male', '0907', 'ELECTRONICS', 'Koala.jpg', 'Student', 'NotActive', '', '');
INSERT INTO `tblborrower` VALUES (6, '4321', 'John Craig', 'Nillos', 'Palacios', 'Dancalan Ilog', 'Male', '1233213123', 'BSIT-1', 'Wonderful-Room-King.jpg', 'Student', 'Active', '', '');
INSERT INTO `tblborrower` VALUES (7, '9213', 'lou', 'velez', 'gotera', 'rizal', 'Female', '0930', 'BSIT', 'Lighthouse.jpg', 'Student', 'NotActive', '', '');
INSERT INTO `tblborrower` VALUES (8, '54321', 'virgel', 'tem', 'brevilla', 'unknown', 'Female', '0930', 'BEED', 'ARIEL 6.jpg', 'Student', 'Active', '', '');
INSERT INTO `tblborrower` VALUES (9, '123432', 'Mark', 'Palacios', 'E', 'Galicia Ilog', 'Male', '09291918272', 'HRM-1', 'Chrysanthemum.jpg', 'Student', 'Active', '', '');
INSERT INTO `tblborrower` VALUES (22, '202000015', 'sad', 'sad', 'sad', 'asd', 'Female', 'asd', '213', 'photos/', 'Students', 'Active', 'asd', 'f10e2821bbbea527ea02200352313bc059445190');
INSERT INTO `tblborrower` VALUES (23, '202000016', 'Jean', 'Sy', 'Ong', 'Philippines', 'Female', '0923564521', 'AB-English', 'photos/04052020042948110218.jpg', 'Students', 'Active', 'Jean', '8c34f90c4d920b3126a0a0bf4aecf2a820fce8a7');

-- ----------------------------
-- Table structure for tblcategory
-- ----------------------------
DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory`  (
  `CategoryId` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DDecimal` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CategoryId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblcategory
-- ----------------------------
INSERT INTO `tblcategory` VALUES (1, 'Computers, Information and General Reference', '000');
INSERT INTO `tblcategory` VALUES (2, 'Philosophy and Psychology', '100');
INSERT INTO `tblcategory` VALUES (3, 'Religion', '200');
INSERT INTO `tblcategory` VALUES (4, 'Social Science', '300');
INSERT INTO `tblcategory` VALUES (5, 'Language', '400');
INSERT INTO `tblcategory` VALUES (6, 'Science', '500');
INSERT INTO `tblcategory` VALUES (7, 'Technology', '600');
INSERT INTO `tblcategory` VALUES (8, 'Arts and Recreation', '700');
INSERT INTO `tblcategory` VALUES (9, 'Literature', '800');
INSERT INTO `tblcategory` VALUES (10, 'History and Geography', '900');
INSERT INTO `tblcategory` VALUES (12, 'ALL', 'ALL');

-- ----------------------------
-- Table structure for tbllogs
-- ----------------------------
DROP TABLE IF EXISTS `tbllogs`;
CREATE TABLE `tbllogs`  (
  `LogId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `LogDate` datetime NOT NULL,
  `LogMode` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`LogId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 483 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbllogs
-- ----------------------------
INSERT INTO `tbllogs` VALUES (1, 3, '2016-08-22 14:30:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (2, 3, '2016-08-22 14:38:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (3, 3, '2016-08-22 14:39:03', 'Logged out');
INSERT INTO `tbllogs` VALUES (4, 3, '2016-08-22 14:47:10', 'Logged in');
INSERT INTO `tbllogs` VALUES (5, 3, '2016-08-22 14:48:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (6, 3, '2016-08-22 14:49:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (7, 3, '2016-08-22 14:57:43', 'Logged in');
INSERT INTO `tbllogs` VALUES (8, 3, '2016-08-22 14:59:12', 'Logged in');
INSERT INTO `tbllogs` VALUES (9, 3, '2016-08-22 15:05:27', 'Logged in');
INSERT INTO `tbllogs` VALUES (10, 3, '2016-08-22 15:23:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (11, 3, '2016-08-22 15:23:47', 'Logged out');
INSERT INTO `tbllogs` VALUES (12, 3, '2016-08-22 15:25:00', 'Logged in');
INSERT INTO `tbllogs` VALUES (13, 3, '2016-08-22 15:25:32', 'Logged out');
INSERT INTO `tbllogs` VALUES (14, 3, '2016-08-22 15:26:38', 'Logged in');
INSERT INTO `tbllogs` VALUES (15, 3, '2016-08-22 15:26:45', 'Logged out');
INSERT INTO `tbllogs` VALUES (16, 3, '2016-08-22 15:27:30', 'Logged in');
INSERT INTO `tbllogs` VALUES (17, 3, '2016-08-22 15:27:57', 'Logged out');
INSERT INTO `tbllogs` VALUES (18, 3, '2016-08-22 15:30:28', 'Logged in');
INSERT INTO `tbllogs` VALUES (19, 3, '2016-08-22 15:31:16', 'Logged out');
INSERT INTO `tbllogs` VALUES (20, 3, '2016-08-22 15:32:22', 'Logged in');
INSERT INTO `tbllogs` VALUES (21, 3, '2016-08-22 15:32:54', 'Logged out');
INSERT INTO `tbllogs` VALUES (22, 3, '2016-08-22 15:34:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (23, 3, '2016-08-22 15:35:06', 'Logged out');
INSERT INTO `tbllogs` VALUES (24, 3, '2016-08-22 15:58:47', 'Logged in');
INSERT INTO `tbllogs` VALUES (25, 3, '2016-08-22 16:02:41', 'Logged out');
INSERT INTO `tbllogs` VALUES (26, 7, '2016-08-22 16:06:52', 'Logged in');
INSERT INTO `tbllogs` VALUES (27, 7, '2016-08-24 16:33:38', 'Logged out');
INSERT INTO `tbllogs` VALUES (28, 3, '2016-08-24 16:33:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (29, 3, '2016-08-24 16:37:57', 'Logged out');
INSERT INTO `tbllogs` VALUES (30, 8, '2016-08-24 16:38:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (31, 8, '2016-08-24 16:40:07', 'Logged out');
INSERT INTO `tbllogs` VALUES (32, 3, '2016-08-24 16:40:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (33, 3, '2016-08-24 16:46:31', 'Logged out');
INSERT INTO `tbllogs` VALUES (34, 3, '2016-08-24 16:48:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (35, 8, '2016-08-24 16:55:05', 'Logged in');
INSERT INTO `tbllogs` VALUES (36, 8, '2016-08-24 16:55:11', 'Logged out');
INSERT INTO `tbllogs` VALUES (37, 8, '2016-08-24 16:55:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (38, 8, '2016-08-24 17:11:26', 'Logged out');
INSERT INTO `tbllogs` VALUES (39, 4, '2016-08-24 19:09:55', 'Logged in');
INSERT INTO `tbllogs` VALUES (40, 3, '2016-08-24 19:18:02', 'Logged in');
INSERT INTO `tbllogs` VALUES (41, 3, '2016-08-24 19:23:46', 'Logged in');
INSERT INTO `tbllogs` VALUES (42, 3, '2016-08-24 19:26:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (43, 3, '2016-08-22 19:28:32', 'Logged out');
INSERT INTO `tbllogs` VALUES (44, 3, '2016-08-22 19:29:28', 'Logged in');
INSERT INTO `tbllogs` VALUES (45, 3, '2016-08-22 19:49:21', 'Logged out');
INSERT INTO `tbllogs` VALUES (46, 3, '2016-08-22 19:52:51', 'Logged in');
INSERT INTO `tbllogs` VALUES (47, 3, '2016-08-22 19:54:52', 'Logged out');
INSERT INTO `tbllogs` VALUES (48, 3, '2016-08-22 20:00:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (49, 3, '2016-08-22 20:01:40', 'Logged out');
INSERT INTO `tbllogs` VALUES (50, 3, '2016-08-22 20:02:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (51, 3, '2016-08-22 20:04:21', 'Logged out');
INSERT INTO `tbllogs` VALUES (52, 3, '2016-08-22 20:06:14', 'Logged in');
INSERT INTO `tbllogs` VALUES (53, 3, '2016-08-22 20:06:42', 'Logged out');
INSERT INTO `tbllogs` VALUES (54, 3, '2016-08-22 20:47:41', 'Logged in');
INSERT INTO `tbllogs` VALUES (55, 3, '2016-08-22 20:48:31', 'Logged out');
INSERT INTO `tbllogs` VALUES (56, 3, '2016-08-22 20:49:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (57, 3, '2016-08-22 20:50:50', 'Logged out');
INSERT INTO `tbllogs` VALUES (58, 3, '2016-08-22 21:00:01', 'Logged in');
INSERT INTO `tbllogs` VALUES (59, 3, '2016-08-22 21:00:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (60, 3, '2016-08-22 21:08:06', 'Logged in');
INSERT INTO `tbllogs` VALUES (61, 3, '2016-08-22 21:08:53', 'Logged out');
INSERT INTO `tbllogs` VALUES (62, 3, '2016-08-22 21:10:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (63, 3, '2016-08-22 21:11:26', 'Logged in');
INSERT INTO `tbllogs` VALUES (64, 3, '2016-08-22 21:12:52', 'Logged out');
INSERT INTO `tbllogs` VALUES (65, 3, '2016-08-22 21:15:07', 'Logged in');
INSERT INTO `tbllogs` VALUES (66, 3, '2016-08-22 21:20:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (67, 3, '2016-08-22 21:23:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (68, 3, '2016-08-22 22:06:06', 'Logged in');
INSERT INTO `tbllogs` VALUES (69, 3, '2016-08-22 22:30:16', 'Logged out');
INSERT INTO `tbllogs` VALUES (70, 3, '2016-08-24 10:23:30', 'Logged in');
INSERT INTO `tbllogs` VALUES (71, 3, '2016-08-24 10:25:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (72, 3, '2016-08-24 10:34:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (73, 3, '2016-08-24 10:51:46', 'Logged out');
INSERT INTO `tbllogs` VALUES (74, 3, '2016-08-24 12:59:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (75, 3, '2016-08-24 13:11:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (76, 3, '2016-08-24 13:15:06', 'Logged in');
INSERT INTO `tbllogs` VALUES (77, 3, '2016-08-24 13:38:36', 'Logged out');
INSERT INTO `tbllogs` VALUES (78, 9, '2016-08-24 13:39:02', 'Logged in');
INSERT INTO `tbllogs` VALUES (79, 9, '2016-08-24 13:41:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (80, 3, '2016-08-24 13:42:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (81, 3, '2016-08-24 13:44:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (82, 3, '2016-08-25 10:22:43', 'Logged in');
INSERT INTO `tbllogs` VALUES (83, 3, '2016-08-25 10:23:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (84, 3, '2016-08-30 14:16:22', 'Logged in');
INSERT INTO `tbllogs` VALUES (85, 3, '2016-08-30 14:16:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (86, 3, '2016-08-30 14:18:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (87, 3, '2016-08-30 14:19:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (88, 3, '2016-08-30 14:22:55', 'Logged in');
INSERT INTO `tbllogs` VALUES (89, 3, '2016-08-30 14:24:26', 'Logged out');
INSERT INTO `tbllogs` VALUES (90, 3, '2016-08-30 14:25:22', 'Logged in');
INSERT INTO `tbllogs` VALUES (91, 3, '2016-08-30 14:26:11', 'Logged out');
INSERT INTO `tbllogs` VALUES (92, 3, '2016-08-30 14:36:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (93, 3, '2016-08-30 14:36:32', 'Logged out');
INSERT INTO `tbllogs` VALUES (94, 3, '2016-08-30 14:38:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (95, 3, '2016-08-30 14:38:45', 'Logged out');
INSERT INTO `tbllogs` VALUES (96, 3, '2016-08-30 14:40:48', 'Logged in');
INSERT INTO `tbllogs` VALUES (97, 3, '2016-08-30 14:43:06', 'Logged out');
INSERT INTO `tbllogs` VALUES (98, 3, '2016-08-30 14:46:35', 'Logged in');
INSERT INTO `tbllogs` VALUES (99, 3, '2016-08-30 14:48:53', 'Logged in');
INSERT INTO `tbllogs` VALUES (100, 3, '2016-08-30 14:49:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (101, 3, '2016-08-30 14:51:34', 'Logged in');
INSERT INTO `tbllogs` VALUES (102, 3, '2016-08-30 14:51:54', 'Logged out');
INSERT INTO `tbllogs` VALUES (103, 3, '2016-08-30 14:52:33', 'Logged in');
INSERT INTO `tbllogs` VALUES (104, 3, '2016-08-30 14:54:24', 'Logged out');
INSERT INTO `tbllogs` VALUES (105, 3, '2016-08-30 14:58:10', 'Logged in');
INSERT INTO `tbllogs` VALUES (106, 3, '2016-08-30 15:05:33', 'Logged out');
INSERT INTO `tbllogs` VALUES (107, 3, '2016-08-30 15:09:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (108, 3, '2016-08-30 15:14:43', 'Logged out');
INSERT INTO `tbllogs` VALUES (109, 3, '2016-08-30 15:15:41', 'Logged in');
INSERT INTO `tbllogs` VALUES (110, 3, '2016-08-30 15:17:55', 'Logged out');
INSERT INTO `tbllogs` VALUES (111, 3, '2016-08-30 15:27:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (112, 3, '2016-08-30 15:29:59', 'Logged out');
INSERT INTO `tbllogs` VALUES (113, 3, '2016-08-30 15:30:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (114, 3, '2016-08-30 15:32:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (115, 3, '2016-09-01 10:46:31', 'Logged in');
INSERT INTO `tbllogs` VALUES (116, 3, '2016-09-01 11:13:31', 'Logged in');
INSERT INTO `tbllogs` VALUES (117, 3, '2016-08-30 11:36:16', 'Logged out');
INSERT INTO `tbllogs` VALUES (118, 3, '2016-09-01 11:40:35', 'Logged in');
INSERT INTO `tbllogs` VALUES (119, 3, '2016-09-01 11:55:36', 'Logged out');
INSERT INTO `tbllogs` VALUES (120, 9, '2016-09-01 11:55:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (121, 9, '2016-09-01 12:00:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (122, 3, '2016-09-01 12:00:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (123, 3, '2016-09-01 12:09:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (124, 3, '2016-09-01 12:09:34', 'Logged out');
INSERT INTO `tbllogs` VALUES (125, 9, '2016-09-01 12:09:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (126, 9, '2016-09-01 12:17:04', 'Logged out');
INSERT INTO `tbllogs` VALUES (127, 3, '2016-09-01 12:17:38', 'Logged out');
INSERT INTO `tbllogs` VALUES (128, 3, '2016-09-01 12:28:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (129, 3, '2016-09-01 12:29:27', 'Logged in');
INSERT INTO `tbllogs` VALUES (130, 3, '2016-09-01 12:36:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (131, 9, '2016-09-01 12:37:10', 'Logged in');
INSERT INTO `tbllogs` VALUES (132, 9, '2016-09-01 12:38:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (133, 3, '2016-09-01 12:39:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (134, 3, '2016-09-01 12:40:18', 'Logged out');
INSERT INTO `tbllogs` VALUES (135, 3, '2016-09-01 12:40:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (136, 3, '2016-09-01 12:44:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (137, 3, '2016-09-01 12:45:35', 'Logged out');
INSERT INTO `tbllogs` VALUES (138, 3, '2016-09-01 13:29:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (139, 3, '2016-09-01 13:30:25', 'Logged out');
INSERT INTO `tbllogs` VALUES (140, 3, '2016-09-01 14:23:41', 'Logged in');
INSERT INTO `tbllogs` VALUES (141, 3, '2016-09-01 16:02:46', 'Logged out');
INSERT INTO `tbllogs` VALUES (142, 3, '2016-09-01 16:32:46', 'Logged in');
INSERT INTO `tbllogs` VALUES (143, 9, '2016-09-01 16:55:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (144, 3, '2016-09-01 17:14:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (145, 3, '2016-09-01 17:26:45', 'Logged in');
INSERT INTO `tbllogs` VALUES (146, 3, '2016-09-01 17:43:03', 'Logged out');
INSERT INTO `tbllogs` VALUES (147, 9, '2016-09-01 18:04:33', 'Logged in');
INSERT INTO `tbllogs` VALUES (148, 9, '2016-09-01 18:06:00', 'Logged out');
INSERT INTO `tbllogs` VALUES (149, 3, '2016-09-01 18:12:26', 'Logged in');
INSERT INTO `tbllogs` VALUES (150, 3, '2016-09-01 18:13:08', 'Logged out');
INSERT INTO `tbllogs` VALUES (151, 3, '2016-09-02 00:03:45', 'Logged in');
INSERT INTO `tbllogs` VALUES (152, 9, '2016-09-02 00:04:34', 'Logged in');
INSERT INTO `tbllogs` VALUES (153, 9, '2016-09-02 00:05:36', 'Logged out');
INSERT INTO `tbllogs` VALUES (154, 3, '2016-09-02 00:05:50', 'Logged in');
INSERT INTO `tbllogs` VALUES (155, 3, '2016-09-02 00:06:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (156, 3, '2016-09-02 00:06:27', 'Logged out');
INSERT INTO `tbllogs` VALUES (157, 3, '2016-09-02 00:50:25', 'Logged in');
INSERT INTO `tbllogs` VALUES (158, 3, '2016-09-02 01:00:34', 'Logged out');
INSERT INTO `tbllogs` VALUES (159, 3, '2016-09-02 09:02:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (160, 3, '2016-09-02 09:06:24', 'Logged out');
INSERT INTO `tbllogs` VALUES (161, 3, '2016-09-02 09:23:28', 'Logged in');
INSERT INTO `tbllogs` VALUES (162, 3, '2016-09-02 09:24:33', 'Logged out');
INSERT INTO `tbllogs` VALUES (163, 9, '2016-09-02 09:35:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (164, 9, '2016-09-02 09:36:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (165, 3, '2016-09-02 10:13:53', 'Logged in');
INSERT INTO `tbllogs` VALUES (166, 3, '2016-09-02 10:14:40', 'Logged out');
INSERT INTO `tbllogs` VALUES (167, 3, '2016-09-02 15:51:38', 'Logged in');
INSERT INTO `tbllogs` VALUES (168, 3, '2016-09-02 15:51:53', 'Logged in');
INSERT INTO `tbllogs` VALUES (169, 3, '2016-09-02 15:52:18', 'Logged out');
INSERT INTO `tbllogs` VALUES (170, 3, '2016-09-02 15:52:42', 'Logged in');
INSERT INTO `tbllogs` VALUES (171, 3, '2016-09-02 15:53:03', 'Logged out');
INSERT INTO `tbllogs` VALUES (172, 3, '2016-09-02 15:55:30', 'Logged in');
INSERT INTO `tbllogs` VALUES (173, 9, '2016-09-02 15:56:55', 'Logged in');
INSERT INTO `tbllogs` VALUES (174, 3, '2016-09-02 15:57:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (175, 9, '2016-09-02 16:10:43', 'Logged in');
INSERT INTO `tbllogs` VALUES (176, 3, '2016-09-02 16:11:23', 'Logged in');
INSERT INTO `tbllogs` VALUES (177, 9, '2016-09-02 16:12:52', 'Logged out');
INSERT INTO `tbllogs` VALUES (178, 3, '2016-09-02 16:13:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (179, 9, '2016-09-02 16:27:11', 'Logged in');
INSERT INTO `tbllogs` VALUES (180, 3, '2016-09-02 16:27:27', 'Logged in');
INSERT INTO `tbllogs` VALUES (181, 9, '2016-09-02 17:14:07', 'Logged out');
INSERT INTO `tbllogs` VALUES (182, 3, '2016-09-02 17:14:14', 'Logged out');
INSERT INTO `tbllogs` VALUES (183, 3, '2016-09-02 17:16:50', 'Logged in');
INSERT INTO `tbllogs` VALUES (184, 3, '2016-09-02 17:20:42', 'Logged out');
INSERT INTO `tbllogs` VALUES (185, 3, '2016-09-02 17:23:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (186, 9, '2016-09-02 17:24:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (187, 9, '2016-09-02 17:37:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (188, 9, '2016-09-02 17:38:24', 'Logged in');
INSERT INTO `tbllogs` VALUES (189, 9, '2016-09-02 17:40:07', 'Logged out');
INSERT INTO `tbllogs` VALUES (190, 3, '2016-09-02 17:40:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (191, 3, '2016-09-02 14:41:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (192, 9, '2016-09-02 14:41:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (193, 3, '2016-09-02 15:58:06', 'Logged out');
INSERT INTO `tbllogs` VALUES (194, 3, '2016-09-02 20:00:25', 'Logged in');
INSERT INTO `tbllogs` VALUES (195, 3, '2016-09-02 20:30:22', 'Logged out');
INSERT INTO `tbllogs` VALUES (196, 3, '2016-09-02 20:38:33', 'Logged in');
INSERT INTO `tbllogs` VALUES (197, 3, '2016-09-02 20:40:54', 'Logged out');
INSERT INTO `tbllogs` VALUES (198, 3, '2016-09-06 11:04:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (199, 3, '2016-09-06 11:04:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (200, 3, '2016-09-06 11:07:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (201, 3, '2016-09-06 09:29:19', 'Logged out');
INSERT INTO `tbllogs` VALUES (202, 3, '2016-09-06 09:29:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (203, 3, '2016-09-06 09:40:24', 'Logged out');
INSERT INTO `tbllogs` VALUES (204, 3, '2016-09-06 09:45:58', 'Logged in');
INSERT INTO `tbllogs` VALUES (205, 3, '2016-09-06 09:46:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (206, 3, '2016-09-06 09:48:45', 'Logged in');
INSERT INTO `tbllogs` VALUES (207, 3, '2016-09-06 09:51:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (208, 3, '2016-09-06 10:02:04', 'Logged out');
INSERT INTO `tbllogs` VALUES (209, 3, '2016-09-06 10:02:12', 'Logged in');
INSERT INTO `tbllogs` VALUES (210, 3, '2016-09-06 13:04:41', 'Logged out');
INSERT INTO `tbllogs` VALUES (211, 9, '2016-09-06 13:04:51', 'Logged in');
INSERT INTO `tbllogs` VALUES (212, 9, '2016-09-06 10:13:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (213, 3, '2016-09-06 10:13:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (214, 3, '2016-09-06 10:03:35', 'Logged out');
INSERT INTO `tbllogs` VALUES (215, 3, '2016-09-06 10:05:57', 'Logged in');
INSERT INTO `tbllogs` VALUES (216, 3, '2016-09-06 10:06:15', 'Logged out');
INSERT INTO `tbllogs` VALUES (217, 3, '2016-09-06 10:07:24', 'Logged in');
INSERT INTO `tbllogs` VALUES (218, 3, '2016-09-06 10:07:35', 'Logged out');
INSERT INTO `tbllogs` VALUES (219, 3, '2016-09-06 10:09:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (220, 3, '2016-09-06 14:10:39', 'Logged out');
INSERT INTO `tbllogs` VALUES (221, 3, '2016-09-06 14:13:53', 'Logged in');
INSERT INTO `tbllogs` VALUES (222, 3, '2016-09-06 10:08:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (223, 3, '2016-09-06 10:09:13', 'Logged in');
INSERT INTO `tbllogs` VALUES (224, 3, '2016-09-06 10:09:22', 'Logged out');
INSERT INTO `tbllogs` VALUES (225, 3, '2016-09-06 10:10:52', 'Logged in');
INSERT INTO `tbllogs` VALUES (226, 3, '2016-09-06 10:11:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (227, 3, '2016-09-06 10:13:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (228, 3, '2016-09-06 10:14:06', 'Logged out');
INSERT INTO `tbllogs` VALUES (229, 3, '2016-09-06 10:11:38', 'Logged in');
INSERT INTO `tbllogs` VALUES (230, 9, '2016-09-06 10:21:05', 'Logged in');
INSERT INTO `tbllogs` VALUES (231, 9, '2016-09-06 10:24:00', 'Logged out');
INSERT INTO `tbllogs` VALUES (232, 9, '2016-09-06 10:24:09', 'Logged in');
INSERT INTO `tbllogs` VALUES (233, 9, '2016-09-06 10:24:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (234, 3, '2016-09-06 10:24:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (235, 3, '2016-09-06 10:24:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (236, 3, '2016-09-06 10:27:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (237, 3, '2016-09-06 10:30:57', 'Logged in');
INSERT INTO `tbllogs` VALUES (238, 3, '2016-09-06 10:40:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (239, 3, '2016-09-06 10:40:40', 'Logged out');
INSERT INTO `tbllogs` VALUES (240, 3, '2016-09-06 14:35:45', 'Logged in');
INSERT INTO `tbllogs` VALUES (241, 9, '2016-09-06 14:43:39', 'Logged in');
INSERT INTO `tbllogs` VALUES (242, 9, '2016-09-06 14:45:12', 'Logged out');
INSERT INTO `tbllogs` VALUES (243, 3, '2016-09-06 14:46:59', 'Logged out');
INSERT INTO `tbllogs` VALUES (244, 3, '2016-09-08 13:19:40', 'Logged in');
INSERT INTO `tbllogs` VALUES (245, 3, '2016-09-08 13:29:09', 'Logged out');
INSERT INTO `tbllogs` VALUES (246, 9, '2016-09-09 13:24:41', 'Logged in');
INSERT INTO `tbllogs` VALUES (247, 9, '2016-09-09 13:25:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (248, 9, '2016-09-09 13:26:11', 'Logged in');
INSERT INTO `tbllogs` VALUES (249, 9, '2016-09-09 13:26:19', 'Logged out');
INSERT INTO `tbllogs` VALUES (250, 3, '2016-09-09 13:26:27', 'Logged in');
INSERT INTO `tbllogs` VALUES (251, 3, '2016-09-09 13:29:42', 'Logged out');
INSERT INTO `tbllogs` VALUES (252, 3, '2016-09-09 13:59:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (253, 3, '2016-09-09 13:59:22', 'Logged out');
INSERT INTO `tbllogs` VALUES (254, 9, '2016-09-09 14:02:50', 'Logged in');
INSERT INTO `tbllogs` VALUES (255, 9, '2016-09-09 14:03:05', 'Logged out');
INSERT INTO `tbllogs` VALUES (256, 3, '2016-09-09 14:03:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (257, 3, '2016-09-09 14:03:23', 'Logged out');
INSERT INTO `tbllogs` VALUES (258, 9, '2016-09-09 14:03:36', 'Logged in');
INSERT INTO `tbllogs` VALUES (259, 3, '2016-09-09 14:03:52', 'Logged in');
INSERT INTO `tbllogs` VALUES (260, 3, '2016-09-09 14:25:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (261, 3, '2016-09-10 14:26:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (262, 9, '2016-09-10 14:26:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (263, 3, '2016-09-10 14:27:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (264, 3, '2016-09-10 14:28:14', 'Logged in');
INSERT INTO `tbllogs` VALUES (265, 3, '2016-09-10 14:28:19', 'Logged out');
INSERT INTO `tbllogs` VALUES (266, 9, '2016-09-10 14:29:07', 'Logged in');
INSERT INTO `tbllogs` VALUES (267, 3, '2016-09-10 14:29:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (268, 3, '2016-09-09 14:32:23', 'Logged out');
INSERT INTO `tbllogs` VALUES (269, 9, '2016-09-09 14:32:55', 'Logged out');
INSERT INTO `tbllogs` VALUES (270, 3, '2016-09-09 14:33:34', 'Logged in');
INSERT INTO `tbllogs` VALUES (271, 3, '2016-09-07 14:37:41', 'Logged out');
INSERT INTO `tbllogs` VALUES (272, 3, '2016-09-07 14:37:53', 'Logged in');
INSERT INTO `tbllogs` VALUES (273, 3, '2016-09-12 14:39:38', 'Logged out');
INSERT INTO `tbllogs` VALUES (274, 3, '2016-09-12 14:39:46', 'Logged in');
INSERT INTO `tbllogs` VALUES (275, 3, '2016-09-12 14:42:55', 'Logged out');
INSERT INTO `tbllogs` VALUES (276, 3, '2016-09-12 18:43:28', 'Logged in');
INSERT INTO `tbllogs` VALUES (277, 3, '2016-09-12 18:43:58', 'Logged out');
INSERT INTO `tbllogs` VALUES (278, 3, '2016-09-12 16:44:26', 'Logged in');
INSERT INTO `tbllogs` VALUES (279, 9, '2016-09-12 16:48:40', 'Logged in');
INSERT INTO `tbllogs` VALUES (280, 3, '2016-09-15 17:14:34', 'Logged out');
INSERT INTO `tbllogs` VALUES (281, 9, '2016-09-10 17:14:53', 'Logged out');
INSERT INTO `tbllogs` VALUES (282, 3, '2016-09-10 17:14:58', 'Logged in');
INSERT INTO `tbllogs` VALUES (283, 9, '2016-09-10 17:15:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (284, 3, '2016-09-10 17:15:39', 'Logged out');
INSERT INTO `tbllogs` VALUES (285, 3, '2016-09-15 17:16:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (286, 3, '2016-09-15 17:25:07', 'Logged out');
INSERT INTO `tbllogs` VALUES (287, 3, '2016-09-15 17:53:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (288, 3, '2016-09-15 17:54:07', 'Logged out');
INSERT INTO `tbllogs` VALUES (289, 10, '2016-09-15 17:54:17', 'Logged in');
INSERT INTO `tbllogs` VALUES (290, 10, '2016-09-15 18:03:49', 'Logged out');
INSERT INTO `tbllogs` VALUES (291, 10, '2016-09-15 18:05:26', 'Logged in');
INSERT INTO `tbllogs` VALUES (292, 10, '2016-09-15 18:07:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (293, 10, '2016-09-09 18:07:25', 'Logged in');
INSERT INTO `tbllogs` VALUES (294, 10, '2016-09-09 16:09:43', 'Logged out');
INSERT INTO `tbllogs` VALUES (295, 10, '2016-09-09 16:09:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (296, 10, '2016-09-09 16:12:59', 'Logged out');
INSERT INTO `tbllogs` VALUES (297, 10, '2016-09-09 18:05:39', 'Logged in');
INSERT INTO `tbllogs` VALUES (298, 10, '2016-09-09 18:05:45', 'Logged out');
INSERT INTO `tbllogs` VALUES (299, 10, '2016-09-29 12:23:03', 'Logged in');
INSERT INTO `tbllogs` VALUES (300, 10, '2016-09-29 12:25:05', 'Logged out');
INSERT INTO `tbllogs` VALUES (301, 10, '2016-09-29 15:13:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (302, 10, '2016-09-29 15:15:16', 'Logged out');
INSERT INTO `tbllogs` VALUES (303, 10, '2016-10-10 13:11:06', 'Logged in');
INSERT INTO `tbllogs` VALUES (304, 10, '2016-10-10 13:14:33', 'Logged in');
INSERT INTO `tbllogs` VALUES (305, 10, '2016-10-10 13:29:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (306, 10, '2016-10-10 13:43:37', 'Logged out');
INSERT INTO `tbllogs` VALUES (307, 3, '2016-10-10 13:44:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (308, 3, '2016-10-10 13:45:45', 'Logged out');
INSERT INTO `tbllogs` VALUES (309, 3, '2016-10-10 13:46:05', 'Logged in');
INSERT INTO `tbllogs` VALUES (310, 3, '2016-10-10 14:00:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (311, 3, '2016-10-10 14:00:58', 'Logged in');
INSERT INTO `tbllogs` VALUES (312, 3, '2016-10-10 14:02:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (313, 10, '2016-10-10 15:29:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (314, 3, '2016-10-10 15:31:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (315, 10, '2016-10-10 15:39:15', 'Logged out');
INSERT INTO `tbllogs` VALUES (316, 3, '2016-10-10 15:41:21', 'Logged out');
INSERT INTO `tbllogs` VALUES (317, 10, '2016-10-10 15:43:36', 'Logged in');
INSERT INTO `tbllogs` VALUES (318, 3, '2016-10-10 15:46:09', 'Logged in');
INSERT INTO `tbllogs` VALUES (319, 10, '2016-10-10 15:50:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (320, 3, '2016-10-10 15:51:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (321, 10, '2016-11-07 06:52:09', 'Logged in');
INSERT INTO `tbllogs` VALUES (322, 10, '2016-11-07 06:53:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (323, 10, '2016-11-07 06:54:35', 'Logged out');
INSERT INTO `tbllogs` VALUES (324, 10, '2016-11-07 06:56:53', 'Logged out');
INSERT INTO `tbllogs` VALUES (325, 10, '2016-11-08 08:35:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (326, 10, '2016-11-08 08:36:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (327, 10, '2016-11-08 08:36:17', 'Logged in');
INSERT INTO `tbllogs` VALUES (328, 9, '2016-11-08 08:38:42', 'Logged in');
INSERT INTO `tbllogs` VALUES (329, 10, '2016-11-08 08:49:36', 'Logged out');
INSERT INTO `tbllogs` VALUES (330, 10, '2016-11-08 08:49:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (331, 10, '2016-11-08 08:58:21', 'Logged out');
INSERT INTO `tbllogs` VALUES (332, 9, '2016-11-08 08:58:26', 'Logged out');
INSERT INTO `tbllogs` VALUES (333, 10, '2016-11-25 08:59:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (334, 9, '2016-11-25 08:59:40', 'Logged in');
INSERT INTO `tbllogs` VALUES (335, 9, '2016-11-25 09:04:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (336, 10, '2016-11-25 09:07:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (337, 10, '2016-11-25 14:36:52', 'Logged in');
INSERT INTO `tbllogs` VALUES (338, 10, '2016-11-25 14:51:40', 'Logged out');
INSERT INTO `tbllogs` VALUES (339, 9, '2016-11-25 14:52:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (340, 9, '2016-11-08 15:05:54', 'Logged out');
INSERT INTO `tbllogs` VALUES (341, 10, '2016-11-08 15:06:11', 'Logged in');
INSERT INTO `tbllogs` VALUES (342, 10, '2016-11-08 15:10:05', 'Logged out');
INSERT INTO `tbllogs` VALUES (343, 10, '2016-11-25 15:10:41', 'Logged in');
INSERT INTO `tbllogs` VALUES (344, 10, '2016-11-25 15:16:49', 'Logged out');
INSERT INTO `tbllogs` VALUES (345, 10, '2016-11-08 15:19:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (346, 10, '2016-11-08 15:21:44', 'Logged out');
INSERT INTO `tbllogs` VALUES (347, 10, '2016-11-16 15:22:12', 'Logged in');
INSERT INTO `tbllogs` VALUES (348, 10, '2016-11-16 15:32:09', 'Logged out');
INSERT INTO `tbllogs` VALUES (349, 3, '2016-11-17 13:56:35', 'Logged in');
INSERT INTO `tbllogs` VALUES (350, 3, '2016-11-17 14:01:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (351, 3, '2016-11-22 14:10:38', 'Logged in');
INSERT INTO `tbllogs` VALUES (352, 3, '2016-11-25 14:24:33', 'Logged in');
INSERT INTO `tbllogs` VALUES (353, 3, '2016-11-25 14:25:57', 'Logged in');
INSERT INTO `tbllogs` VALUES (354, 3, '2016-11-26 14:23:38', 'Logged out');
INSERT INTO `tbllogs` VALUES (355, 3, '2016-11-26 14:24:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (356, 3, '2016-11-26 14:25:23', 'Logged out');
INSERT INTO `tbllogs` VALUES (357, 10, '2016-11-29 09:29:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (358, 10, '2016-11-29 09:41:32', 'Logged out');
INSERT INTO `tbllogs` VALUES (359, 10, '2016-12-02 11:48:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (360, 10, '2016-12-02 11:51:56', 'Logged out');
INSERT INTO `tbllogs` VALUES (361, 3, '2016-12-07 13:11:07', 'Logged in');
INSERT INTO `tbllogs` VALUES (362, 3, '2016-12-07 13:11:50', 'Logged out');
INSERT INTO `tbllogs` VALUES (363, 3, '2016-12-07 13:16:26', 'Logged in');
INSERT INTO `tbllogs` VALUES (364, 3, '2016-12-07 13:16:45', 'Logged out');
INSERT INTO `tbllogs` VALUES (365, 3, '2016-12-07 13:19:18', 'Logged in');
INSERT INTO `tbllogs` VALUES (366, 3, '2016-12-07 13:21:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (367, 10, '2016-12-07 13:22:11', 'Logged in');
INSERT INTO `tbllogs` VALUES (368, 10, '2016-12-07 13:22:44', 'Logged out');
INSERT INTO `tbllogs` VALUES (369, 10, '2016-12-10 14:18:57', 'Logged in');
INSERT INTO `tbllogs` VALUES (370, 10, '2016-12-10 14:42:26', 'Logged out');
INSERT INTO `tbllogs` VALUES (371, 10, '2016-12-16 08:35:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (372, 10, '2016-12-16 08:44:55', 'Logged in');
INSERT INTO `tbllogs` VALUES (373, 10, '2016-12-16 08:46:08', 'Logged in');
INSERT INTO `tbllogs` VALUES (374, 10, '2016-12-16 08:46:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (375, 10, '2016-11-29 08:48:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (376, 10, '2016-11-29 08:48:48', 'Logged in');
INSERT INTO `tbllogs` VALUES (377, 10, '2016-11-29 12:07:40', 'Logged in');
INSERT INTO `tbllogs` VALUES (378, 10, '2016-11-29 12:14:48', 'Logged out');
INSERT INTO `tbllogs` VALUES (379, 3, '2016-11-29 13:07:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (380, 3, '2016-11-29 14:11:28', 'Logged in');
INSERT INTO `tbllogs` VALUES (381, 3, '2016-11-29 14:18:12', 'Logged in');
INSERT INTO `tbllogs` VALUES (382, 3, '2016-11-29 14:19:07', 'Logged in');
INSERT INTO `tbllogs` VALUES (383, 3, '2018-01-08 00:47:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (384, 3, '2018-01-08 00:47:55', 'Logged out');
INSERT INTO `tbllogs` VALUES (385, 10, '2018-01-08 00:47:59', 'Logged in');
INSERT INTO `tbllogs` VALUES (386, 10, '2018-01-08 00:49:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (387, 3, '2018-01-08 00:56:40', 'Logged in');
INSERT INTO `tbllogs` VALUES (388, 3, '2018-01-08 00:56:49', 'Logged out');
INSERT INTO `tbllogs` VALUES (389, 3, '2018-01-08 01:12:50', 'Logged in');
INSERT INTO `tbllogs` VALUES (390, 3, '2018-01-08 01:13:47', 'Logged out');
INSERT INTO `tbllogs` VALUES (391, 3, '2018-01-08 01:18:09', 'Logged in');
INSERT INTO `tbllogs` VALUES (392, 3, '2018-01-08 01:19:08', 'Logged out');
INSERT INTO `tbllogs` VALUES (393, 3, '2018-01-18 14:53:05', 'Logged in');
INSERT INTO `tbllogs` VALUES (394, 3, '2018-01-18 14:56:34', 'Logged out');
INSERT INTO `tbllogs` VALUES (395, 3, '2018-01-22 08:56:09', 'Logged in');
INSERT INTO `tbllogs` VALUES (396, 3, '2018-01-22 08:58:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (397, 3, '2018-01-22 09:01:05', 'Logged in');
INSERT INTO `tbllogs` VALUES (398, 3, '2018-01-22 09:06:32', 'Logged out');
INSERT INTO `tbllogs` VALUES (399, 3, '2018-01-22 09:08:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (400, 3, '2018-01-22 09:08:51', 'Logged out');
INSERT INTO `tbllogs` VALUES (401, 3, '2018-01-22 09:11:16', 'Logged in');
INSERT INTO `tbllogs` VALUES (402, 3, '2018-01-22 09:11:22', 'Logged out');
INSERT INTO `tbllogs` VALUES (403, 3, '2018-01-22 09:13:02', 'Logged in');
INSERT INTO `tbllogs` VALUES (404, 3, '2018-01-22 12:24:10', 'Logged out');
INSERT INTO `tbllogs` VALUES (405, 3, '2018-01-22 12:33:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (406, 3, '2018-01-22 12:34:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (407, 3, '2018-01-22 12:37:17', 'Logged in');
INSERT INTO `tbllogs` VALUES (408, 3, '2018-01-22 12:38:16', 'Logged out');
INSERT INTO `tbllogs` VALUES (409, 3, '2018-01-22 12:43:24', 'Logged in');
INSERT INTO `tbllogs` VALUES (410, 3, '2018-01-22 12:43:54', 'Logged out');
INSERT INTO `tbllogs` VALUES (411, 3, '2018-02-10 02:11:24', 'Logged in');
INSERT INTO `tbllogs` VALUES (412, 3, '2018-02-10 02:11:47', 'Logged out');
INSERT INTO `tbllogs` VALUES (413, 3, '2018-02-10 02:17:35', 'Logged in');
INSERT INTO `tbllogs` VALUES (414, 3, '2018-02-10 02:17:58', 'Logged out');
INSERT INTO `tbllogs` VALUES (415, 3, '2018-02-09 01:02:55', 'Logged in');
INSERT INTO `tbllogs` VALUES (416, 3, '2018-02-09 03:28:49', 'Logged in');
INSERT INTO `tbllogs` VALUES (417, 3, '2018-02-09 03:49:52', 'Logged out');
INSERT INTO `tbllogs` VALUES (418, 3, '2018-02-09 03:54:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (419, 3, '2018-02-09 03:54:41', 'Logged out');
INSERT INTO `tbllogs` VALUES (420, 3, '2018-02-09 03:55:19', 'Logged in');
INSERT INTO `tbllogs` VALUES (421, 3, '2018-02-09 03:55:51', 'Logged out');
INSERT INTO `tbllogs` VALUES (422, 3, '2018-02-09 04:03:36', 'Logged in');
INSERT INTO `tbllogs` VALUES (423, 3, '2018-02-09 04:11:19', 'Logged out');
INSERT INTO `tbllogs` VALUES (424, 3, '2018-02-09 04:14:07', 'Logged in');
INSERT INTO `tbllogs` VALUES (425, 3, '2018-02-09 04:14:11', 'Logged out');
INSERT INTO `tbllogs` VALUES (426, 3, '2018-03-03 07:05:32', 'Logged in');
INSERT INTO `tbllogs` VALUES (427, 3, '2018-03-03 17:35:29', 'Logged out');
INSERT INTO `tbllogs` VALUES (428, 3, '2018-03-12 01:13:46', 'Logged in');
INSERT INTO `tbllogs` VALUES (429, 3, '2018-03-12 01:27:30', 'Logged out');
INSERT INTO `tbllogs` VALUES (430, 3, '2018-03-25 15:18:12', 'Logged in');
INSERT INTO `tbllogs` VALUES (431, 3, '2018-03-25 15:21:08', 'Logged out');
INSERT INTO `tbllogs` VALUES (432, 3, '2018-03-25 15:30:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (433, 3, '2018-03-25 15:31:00', 'Logged out');
INSERT INTO `tbllogs` VALUES (434, 3, '2018-03-25 15:58:25', 'Logged in');
INSERT INTO `tbllogs` VALUES (435, 3, '2018-03-25 16:00:33', 'Logged out');
INSERT INTO `tbllogs` VALUES (436, 3, '2018-03-25 19:01:34', 'Logged in');
INSERT INTO `tbllogs` VALUES (437, 3, '2018-03-25 19:02:33', 'Logged out');
INSERT INTO `tbllogs` VALUES (438, 3, '2018-03-26 19:05:17', 'Logged in');
INSERT INTO `tbllogs` VALUES (439, 3, '2018-03-26 19:07:29', 'Logged out');
INSERT INTO `tbllogs` VALUES (440, 3, '2018-03-26 19:48:22', 'Logged in');
INSERT INTO `tbllogs` VALUES (441, 3, '2018-03-26 19:49:39', 'Logged out');
INSERT INTO `tbllogs` VALUES (442, 3, '2018-03-27 00:52:06', 'Logged in');
INSERT INTO `tbllogs` VALUES (443, 3, '2018-03-27 00:52:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (444, 3, '2018-03-27 01:02:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (445, 3, '2018-03-27 01:05:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (446, 3, '2018-03-27 01:07:21', 'Logged in');
INSERT INTO `tbllogs` VALUES (447, 3, '2018-03-27 01:07:24', 'Logged out');
INSERT INTO `tbllogs` VALUES (448, 3, '2018-03-27 01:07:37', 'Logged in');
INSERT INTO `tbllogs` VALUES (449, 3, '2018-03-27 01:08:24', 'Logged out');
INSERT INTO `tbllogs` VALUES (450, 3, '2018-03-27 01:44:54', 'Logged in');
INSERT INTO `tbllogs` VALUES (451, 3, '2018-03-27 01:50:51', 'Logged in');
INSERT INTO `tbllogs` VALUES (452, 3, '2018-03-27 01:52:13', 'Logged out');
INSERT INTO `tbllogs` VALUES (453, 3, '2018-03-27 01:53:50', 'Logged in');
INSERT INTO `tbllogs` VALUES (454, 3, '2018-03-27 01:54:33', 'Logged out');
INSERT INTO `tbllogs` VALUES (455, 3, '2018-03-27 01:57:04', 'Logged in');
INSERT INTO `tbllogs` VALUES (456, 3, '2018-03-27 01:57:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (457, 3, '2018-08-06 11:27:17', 'Logged in');
INSERT INTO `tbllogs` VALUES (458, 3, '2018-08-06 11:30:20', 'Logged out');
INSERT INTO `tbllogs` VALUES (459, 3, '2018-08-06 12:05:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (460, 3, '2018-08-06 12:06:17', 'Logged out');
INSERT INTO `tbllogs` VALUES (461, 3, '2018-08-07 10:46:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (462, 3, '2018-08-07 10:46:57', 'Logged out');
INSERT INTO `tbllogs` VALUES (463, 3, '2018-08-07 10:51:18', 'Logged in');
INSERT INTO `tbllogs` VALUES (464, 3, '2018-08-07 10:51:36', 'Logged out');
INSERT INTO `tbllogs` VALUES (465, 3, '2018-08-07 10:53:23', 'Logged in');
INSERT INTO `tbllogs` VALUES (466, 3, '2018-08-07 10:54:00', 'Logged out');
INSERT INTO `tbllogs` VALUES (467, 3, '2018-08-11 06:54:34', 'Logged in');
INSERT INTO `tbllogs` VALUES (468, 3, '2018-08-11 06:54:49', 'Logged out');
INSERT INTO `tbllogs` VALUES (469, 3, '2018-08-11 07:07:29', 'Logged in');
INSERT INTO `tbllogs` VALUES (470, 3, '2018-08-11 07:08:38', 'Logged out');
INSERT INTO `tbllogs` VALUES (471, 3, '2018-08-11 07:13:23', 'Logged in');
INSERT INTO `tbllogs` VALUES (472, 3, '2018-08-11 07:15:28', 'Logged out');
INSERT INTO `tbllogs` VALUES (473, 3, '2018-08-11 08:20:20', 'Logged in');
INSERT INTO `tbllogs` VALUES (474, 3, '2018-08-11 08:23:37', 'Logged out');
INSERT INTO `tbllogs` VALUES (475, 3, '2018-08-11 08:37:44', 'Logged in');
INSERT INTO `tbllogs` VALUES (476, 3, '2018-08-11 08:38:27', 'Logged out');
INSERT INTO `tbllogs` VALUES (477, 3, '2018-08-11 08:43:38', 'Logged in');
INSERT INTO `tbllogs` VALUES (478, 3, '2018-08-11 08:44:00', 'Logged out');
INSERT INTO `tbllogs` VALUES (479, 3, '2018-08-11 08:45:00', 'Logged in');
INSERT INTO `tbllogs` VALUES (480, 3, '2018-08-11 08:46:02', 'Logged out');
INSERT INTO `tbllogs` VALUES (481, 3, '2018-08-11 08:52:56', 'Logged in');
INSERT INTO `tbllogs` VALUES (482, 3, '2018-08-11 08:54:31', 'Logged out');

-- ----------------------------
-- Table structure for tblpayment
-- ----------------------------
DROP TABLE IF EXISTS `tblpayment`;
CREATE TABLE `tblpayment`  (
  `PaymentId` int NOT NULL AUTO_INCREMENT,
  `BorrowId` int NOT NULL,
  `Payment` double NOT NULL,
  `Change` double NOT NULL,
  `DatePayed` date NOT NULL,
  `BorrowerId` int NOT NULL,
  `Remarks` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`PaymentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblpayment
-- ----------------------------
INSERT INTO `tblpayment` VALUES (1, 12345673, 130, 0, '2016-11-22', 912, 'Settled');
INSERT INTO `tblpayment` VALUES (2, 12345673, 4, 0, '2016-11-22', 912, 'Settled');
INSERT INTO `tblpayment` VALUES (3, 12345671, 4, 0, '2016-11-22', 912, 'Settled');
INSERT INTO `tblpayment` VALUES (4, 18293746, 37, 13, '2018-02-09', 912, 'Settled');
INSERT INTO `tblpayment` VALUES (5, 1345672, 37, 3, '2018-02-09', 912, 'Settled');
INSERT INTO `tblpayment` VALUES (6, 1345673, 1200, 100, '2018-03-26', 1234, 'Settled');

-- ----------------------------
-- Table structure for tbltransaction
-- ----------------------------
DROP TABLE IF EXISTS `tbltransaction`;
CREATE TABLE `tbltransaction`  (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `IBSN` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NoCopies` int NOT NULL,
  `DateBorrowed` datetime NOT NULL,
  `Purpose` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DueDate` datetime NOT NULL,
  `BorrowerId` int NOT NULL,
  `Borrowed` tinyint(1) NOT NULL,
  `Due` tinyint(1) NOT NULL,
  `Returned` tinyint(1) NOT NULL,
  `DateReturned` datetime NOT NULL,
  `Remarks` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`TransactionID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbltransaction
-- ----------------------------
INSERT INTO `tbltransaction` VALUES (1, '15263712', 1, '2016-10-10 13:32:12', 'Borrowed for 3days', 'Returned', '2016-10-13 13:32:12', 4321, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (2, '12345671', 1, '2016-10-10 13:32:38', 'Borrowed for 3days', 'Returned', '2016-10-13 13:32:38', 912, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (3, '18293746', 1, '2016-10-10 13:37:13', 'Overnight', 'Returned', '2016-10-11 13:37:13', 921, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (4, '11726354', 1, '2016-10-10 13:37:36', 'Photocopy', 'Returned', '2016-10-10 14:07:36', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (5, '12345678', 1, '2016-10-10 13:50:29', 'Borrowed for 3days', 'Returned', '2016-10-13 13:50:29', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (6, '12345673', 1, '2016-10-10 13:50:47', 'Overnight', 'Returned', '2016-10-11 13:50:47', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (7, '1345672', 1, '2016-10-10 13:51:07', 'Borrowed for 3days', 'Returned', '2016-10-13 13:51:07', 4321, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (8, '15243678', 1, '2016-10-10 13:51:27', 'Borrowed for 3days', 'Returned', '2016-10-13 13:51:27', 4321, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (9, '18293746', 1, '2016-10-10 13:55:23', 'Photocopy', 'Returned', '2016-10-10 14:25:23', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (10, '11726354', 1, '2016-10-10 13:55:51', 'Photocopy', 'Returned', '2016-10-10 14:25:51', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (11, '10928273', 1, '2016-10-10 13:57:44', 'Research', 'Returned', '2016-10-10 17:30:00', 9213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (12, '12345678', 1, '2016-10-10 15:34:20', 'Borrowed for 3days', 'Returned', '2016-10-19 15:33:31', 912, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (13, '98172634', 1, '2016-10-10 15:34:41', 'Borrowed for 3days', 'Returned', '2016-10-19 15:33:53', 912, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (14, '9812345', 1, '2016-11-08 08:42:09', 'Borrowed for 3days', 'Returned', '2016-11-17 08:40:38', 912, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (15, '12345673', 1, '2016-11-08 08:46:40', 'Overnight', 'Returned', '2016-11-15 08:45:08', 912, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (16, '12345673', 1, '2016-11-08 08:53:53', 'Overnight', 'Returned', '2016-11-09 08:52:21', 912, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (17, '19872634', 1, '2016-11-08 15:09:46', 'Borrowed for 3days', 'Returned', '2016-11-11 15:09:46', 213, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (18, '12345673', 1, '2016-11-17 13:58:29', 'Overnight', 'Returned', '2016-11-18 13:58:29', 912, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (19, '12345671', 1, '2016-11-17 13:58:59', 'Borrowed for 3days', 'Returned', '2016-11-20 13:58:59', 912, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (20, '1345672', 1, '2016-11-22 14:16:03', 'Borrowed for 3days', 'Returned', '2016-11-25 14:16:03', 912, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (21, '18293746', 1, '2016-11-22 14:16:24', 'Research', 'Returned', '2016-11-22 17:30:00', 912, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (22, '12345678', 1, '2016-11-29 14:19:24', 'Borrowed for 3days', 'Returned', '2016-12-02 14:19:24', 1234, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (23, '12345673', 1, '2018-02-09 04:03:56', 'Photocopy', 'Returned', '2018-02-09 04:33:56', 123432, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (24, '12345673', 1, '2018-03-03 07:13:36', 'Research', 'Returned', '2018-03-03 11:30:00', 921, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (25, '1345673', 1, '2018-03-23 19:01:51', 'Overnight', 'Returned', '2018-03-24 19:01:51', 1234, 0, 0, 0, '0000-00-00 00:00:00', 'Overdue');
INSERT INTO `tbltransaction` VALUES (26, '1345673', 1, '2018-03-27 01:51:19', 'Research', 'Returned', '2018-03-27 11:30:00', 123432, 0, 0, 0, '0000-00-00 00:00:00', 'On Time');
INSERT INTO `tbltransaction` VALUES (27, '1345672', 1, '2020-04-09 05:38:53', 'Research', 'Borrowed', '2020-04-09 11:30:00', 1234, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `tbltransaction` VALUES (28, '12345672', 1, '2020-05-03 07:52:00', '1 week', 'Returned', '2020-05-03 07:52:00', 213, 0, 0, 1, '2020-05-03 00:00:00', 'Ontime');
INSERT INTO `tbltransaction` VALUES (29, '12345678', 1, '2020-05-03 08:09:00', '1 week', 'Cancelled', '2020-05-03 08:09:00', 213, 0, 0, 0, '2020-05-03 00:00:00', 'Cancelled');
INSERT INTO `tbltransaction` VALUES (30, '12345677', 1, '2020-05-03 08:09:00', '1 week', 'Cancelled', '2020-05-03 08:09:00', 1234, 0, 0, 0, '2020-05-03 00:00:00', 'Cancelled');
INSERT INTO `tbltransaction` VALUES (31, '1345673', 1, '2020-05-03 08:38:00', '1 week', 'Returned', '2020-05-03 08:38:00', 4321, 0, 0, 1, '2020-05-03 00:00:00', 'Ontime');
INSERT INTO `tbltransaction` VALUES (32, '12345671', 1, '2020-05-03 08:41:00', '1 week', 'Returned', '2020-05-10 08:41:00', 123432, 0, 0, 1, '2020-05-03 00:00:00', 'Ontime');
INSERT INTO `tbltransaction` VALUES (35, '12345678', 1, '2020-05-03 10:34:00', '1 week', 'Returned', '2020-05-10 10:34:00', 213, 0, 0, 1, '2020-05-03 10:34:00', 'Ontime');
INSERT INTO `tbltransaction` VALUES (36, '12345678', 1, '2020-05-03 11:07:00', '1 week', 'Confirmed', '2020-05-10 11:07:00', 213, 1, 0, 0, '2020-05-10 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (37, '12345671', 1, '2020-05-03 01:17:00', '1 week', 'Confirmed', '2020-05-10 01:17:00', 213, 1, 0, 0, '2020-05-10 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (38, '1345673', 1, '2020-05-03 01:18:00', '1 week', 'Confirmed', '2020-05-10 01:18:00', 4321, 1, 0, 0, '2020-05-10 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (39, '12345670', 1, '2020-05-04 01:31:00', '1 week', 'Cancelled', '2020-05-11 01:31:00', 20200003, 0, 0, 0, '2020-05-11 00:00:00', 'Cancelled');
INSERT INTO `tbltransaction` VALUES (42, '12345672', 1, '2020-05-04 00:00:00', '1 week', 'Confirmed', '2020-05-11 01:37:00', 20200003, 1, 0, 0, '2020-05-11 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (43, '12345673', 1, '2020-05-04 00:00:00', '1 week', 'Confirmed', '2020-05-11 01:38:00', 20200003, 1, 0, 0, '2020-05-11 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (44, '14256372', 1, '2020-05-04 04:28:00', '1 week', 'Pending', '2020-05-11 04:28:00', 202000015, 1, 0, 0, '2020-05-11 00:00:00', 'Borrowed for on Week');
INSERT INTO `tbltransaction` VALUES (45, '11726354', 1, '2020-05-04 04:29:00', '1 week', 'Pending', '2020-05-11 04:29:00', 202000016, 1, 0, 0, '2020-05-11 00:00:00', 'Borrowed for on Week');

-- ----------------------------
-- Table structure for tblusers
-- ----------------------------
DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers`  (
  `USERID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(124) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `UEMAIL` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PASS` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TYPE` varchar(125) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Status` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PicLoc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`USERID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblusers
-- ----------------------------
INSERT INTO `tblusers` VALUES (1, 'Janno Palacios', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'Active', 'img/bhl-logo.jpg');
INSERT INTO `tblusers` VALUES (2, 'Sakarin Habusaya', 'sakarin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Administrator', '', 'img/????????????.jpg');

SET FOREIGN_KEY_CHECKS = 1;
